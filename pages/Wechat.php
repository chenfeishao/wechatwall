<?php
include './http.php';
include './config.php';
$user = "";
$pass = md5('');
$wechat = new Wechat($user, $pass);
// $wechat->login();
ignore_user_abort ( TRUE );
set_time_limit ( 0 );
while(TRUE){
	$html =  $wechat->get_contents();
	$result = $wechat->handle_message($html);
	$wechat->insert_data($result);
	sleep (5);
}
class Wechat {
    private $http;
    private $cookieLog = 'cookie.log';
    private $tokenLog = 'token.log';
    private $user;
    private $pass;
    
 
    public function __construct($user, $pass) {
        $this->http = http::getInstance();
        $this->user = $user;
        $this->pass = $pass;
    }

 
    public  function login() {
        $url = "https://mp.weixin.qq.com/cgi-bin/login?lang=zh_CN";
        $post = array();
        $post["username"] = $this->user;
        $post["pwd"] = $this->pass;
        $post["imgcode"] = '';
        $post["f"] = "json";
 		$header = array();
 		$header['Host'] = 'mp.weixin.qq.com';
 		$header['Referer'] = 'https://mp.weixin.qq.com/';
 		$header['User-Agent'] = 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1612.2 Safari/537.36';
 		$header['X-Requested-With'] = 'XMLHttpRequest';
    	$this->http->setHeader($header);
        $this->http->sendRequest($url, $post);

        $data = json_decode($this->http->getResultData(), TRUE);
        if (!(isset($data['ErrCode']) && $data['ErrCode'] == 0)) {
            echo "登陆失败";
            exit;
        }
        $arr = parse_url($data['ErrMsg']);
        $qarr = explode('&', $arr['query']);
        $token = '';
        foreach ($qarr as $k=>$v) {
            $karr = explode("=", $v);
            if ($karr[0] == 'token') {
                $token = $karr[1];
            }
        }

        $this->write($this->tokenLog, $token);
        $cookie = '';
        if (preg_match_all("/set\-cookie: (.*) path/i", $this->http->getResultHeader(), $matches)) {
            if (isset ($matches[1])) {
                foreach ($matches[1] as $k=>$v) {
                    $cookie .= $v;
                }
            }            
        }
        $this->write($this->cookieLog, $cookie);
    }


    public function sendTextMsg($fakeId, $content) {
        $this->checkLogin();
        $cookie = $this->read($this->cookieLog);
        $token = $this->read($this->tokenLog);
        $header = array();
        $header['Referer'] = "https://mp.weixin.qq.com/cgi-bin/singlemsgpage?token={$token}&fromfakeid={$fakeId}&msgid=&source=&count=20&t=wxm-singlechat&lang=zh_CN";
        $header['Cookie'] = $cookie;
        $this->http->setHeader($header);
        $post = array();
        $post['token'] = $token;
        $post['tofakeid'] = $fakeId;
        $post['type'] = 1;
        $post['content'] = $content;
        $post['ajax'] = 1;
        $post['error'] = 'false';
        $url = "https://mp.weixin.qq.com/cgi-bin/singlesend?t=ajax-response&lang=zh_CN";
        $this->http->sendRequest($url, $post);
        $data = json_decode($this->http->getResultData(), TRUE);
        if (isset($data['ret']) && $data['ret'] == 0) {
            echo '发送成功';
        } else {
            echo '发送失败';
        }
    }

    private function write($filename, $content) {
        $fp = fopen($filename, 'w');
        fwrite($fp, $content);
        fclose($fp);
    }
    
  
    private function read($filename) {
        $data = '';
        if (file_exists($filename)) {
            $fp = fopen($filename, 'r');
            $data = fread($fp, filesize($filename));
            fclose($fp);            
        }
        return $data;
    }

 
    private function checkLogin() {
       
        $cookie = $this->read($this->cookieLog);
        $token = $this->read($this->tokenLog);
        $post = array();
        $post['token'] = $token;
        $post['t'] = 'ajax-getmsgnum';
        $post['lang'] = 'zh_CN';
        $post['lastmsgid'] = '100255941';
        $url = 'https://mp.weixin.qq.com/cgi-bin/getnewmsgnum';
        $header['Referer'] = "https://mp.weixin.qq.com/cgi-bin/message?t=message/list&count=20&day=7&token={$token}&lang=zh_CN"; 
        $header['Cookie'] = $cookie;
        $this->http->setHeader($header);
        $this->http->sendRequest($url, $post);
        $data = json_decode($this->http->getResultData(), TRUE);
        if (!(isset($data['ret']) && $data['ret'] == 0)) {
            $this->login();
        }
        return TRUE;
    }

    public function get_contents(){
        $this->checkLogin();
        $cookie = $this->read($this->cookieLog);
        $token = $this->read($this->tokenLog);  
        $url = "https://mp.weixin.qq.com/cgi-bin/message?t=message/list&count=20&day=7&token={$token}&lang=zh_CN"; 
        $header['Cookie'] = $cookie;
        $this->http->setHeader($header);
        $post=array();
        $this->http->sendRequest($url, $post,'GET');
        $result = $this->http->getResultData();
        return $result;
    }


    public function handle_message($html){
    	$match="/msg_item.*?msg_item/is";
    	preg_match_all($match, $html, $result);
    	$result = substr($result[0][0], 10);
    	$result = rtrim($result,"}).msg_item");   
    	$result = json_decode($result,TRUE);
    	return $result;
        }


        public function insert_data($msgList){
            /*pdo */
            $DSN = "mysql:host=".HOST.";dbname=".DBNAME; //连接配置
            $USER = USERNAME;  //账号
            $PASS = PASSWORD;  //密码

            try{    
                    $pdo  = new PDO($DSN,$USER,$PASS);
                    $pdo  -> query('set names utf8;');
                    $pdo  -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
                }catch(PDOException $e){
                    die("数据库连接失败！原因：".$e->getMessage());
                }
                $sql='';
            foreach ($msgList as $key => $value) {
                $id   = $msgList[$key]['id'];
                $type = $msgList[$key]['type'];
                $fakeId = $msgList[$key]['fakeid'];
                $imageFile = "images/".$fakeId.".jpg";
           //     echo $imageFile;
                if(!file_exists($imageFile)){
                    $this->getImage($fakeId);
                }
                $content = $msgList[$key]['content'];
                $nickName = $msgList[$key]['nick_name'];
                $time = date("Y-m-d H:i",$msgList[$key]['date_time']);
                $sql .= 'insert ignore into wechat(id,type,fakeId,nickName,content,time) values('.$id.','.$type.','.$fakeId.',"'.$nickName.'","'.$content.'","'.$time.'");'; 
                }
                $insert = $pdo -> prepare($sql);
                $insert -> execute();
        }

        public function getImage($fakeid){
                //创建保存目录
                $save_dir = 'images';
                $save_dir.= '/';
                $filename = $fakeid;
                if(!file_exists($save_dir)&&!mkdir($save_dir,0777,true)){
                    return array('file_name'=>'','save_path'=>'','error'=>1);
                } 
                $cookie = $this->read($this->cookieLog); 
                $token = $this->read($this->tokenLog);  
                $url = "https://mp.weixin.qq.com/cgi-bin/getheadimg?token={$token}&fakeid={$fakeid}"; 
                $header['Cookie'] = $cookie;
                $this->http->setHeader($header);
                $post=array();
                $this->http->sendRequest($url, $post,'GET');
                $img = $this->http->getResultData();
                echo $save_dir.$filename.'.jpg';
                $fp2=@fopen($save_dir.$filename.'.jpg','a');
                fwrite($fp2,$img);
                fclose($fp2);
                unset($img,$url);
                return array('file_name'=>$filename,'save_path'=>$save_dir.$filename,'error'=>0);
            }
}

?>