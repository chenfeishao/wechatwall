<?php 
include './config.php';
$database = new Database();
$rs = $database->get_result();
echo $database->handle_result($rs);
class Database{
	public function get_result(){
		$connect = @mysql_connect(HOST,USERNAME,PASSWORD) or die ("Unable to connect database server!"); 
		mysql_query('set names utf8');
		$select = mysql_select_db(DBNAME , $connect); 
		$sql='select * from wechat where status="0" order by id desc limit 0,50';
		$result=mysql_query($sql);
		$rs=array();
		while($row = mysql_fetch_array($result)) {
			array_push($rs,$row);
		}
		mysql_close($connect);
		return $rs;

	}
	public function handle_result($rs){
		$return ='';
		foreach ($rs as $key => $value){
			$content = $value['content'];
			$token = @file_get_contents('token.log');
			$id = $value["id"];
			$return .=   '<div class="w-line clearfix">
					<div class="w-avatar">
						<!--用户头像-->
						<img src="images/'.$value["fakeId"].'.jpg"'.' />
					</div>
					<div class="w-content">
						<div class="w-words">
						'.$content.'					
						</div>
						<div class="w-time">
						'.$value["time"].'		
						</div>
					</div>
					<div class="w-admin" id="'.$id.'">
						<a class="w-admin-d">删除</a>
					</div>
			</div>';

		}
		return  $return;

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


}

  
 
