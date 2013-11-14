<?php
class http {
    private static $instance = NULL;
    private $host;
    private $port = 80;
    private $fp = NULL;
    private $timeout = 120; 
    private $header = array();
    private $httpVer = 'HTTP/1.0';
    private $crlf = "\r\n";
    private $accept = "*/*";
    private $agent = 'Mozilla/5.0 (Windows NT 6.1; rv:20.0) Gecko/20100101 Firefox/20.0';//伪装浏览器
    private $maxLineLength = 4096;
    private $maxLength = 1024;
    private $resultHeader;
    private $resultData;
   
    public static function getInstance() {
        if (is_null(self::$instance)) {
            self::$instance = new http();
        }
        return self::$instance;
    }
    
  
    private function __construct() {        
    }
    

    public function setHeader($header) {
        $this->header = $header;
    }
    

    public function sendRequest($url, $data=array(), $method='post') {
        $urlArr = parse_url($url);
        if (isset($urlArr['port'])) {
            $this->port = $urlArr['port'];
        }
        switch (strtolower($urlArr['scheme'])) {
            case 'http':
                $this->host = $urlArr['host'];
                break;
            case 'https':
                $this->host = 'ssl://' . $urlArr['host'];
                $this->port = 443;
                break;
            default:
                echo "Error: wrong url!";
                exit;
                break;
        }
        $this->connect();
        if (strtolower($method) == 'post') {
            $method = 'POST';
        } else {
            $method = 'GET';
        }
        $path = isset($urlArr['path']) ? $urlArr['path'] : '/';
        if (isset($urlArr['query'])) {
            $path .= '?' . $urlArr['query'];
        }
        $httpVer = isset($this->header['httpVer']) ? $this->header['httpVer'] : $this->httpVer;
        $headerStr = "{$method} {$path} {$httpVer}{$this->crlf}";
        $host = isset($urlArr['port']) ? $urlArr['host'] . ':' . $urlArr['port'] : $urlArr['host'];
        $headerStr .= "Host: {$host}{$this->crlf}";
        $accept = isset($this->header['Accept']) ? $this->header['Accept'] : $this->accept;
        $headerStr .= "Accept: {$accept}{$this->crlf}";
        if (isset($this->header['Referer'])) {
            $headerStr .= "Referer: {$this->header['Referer']}{$this->crlf}";
        }
        $agent = isset($this->header['User-Agent']) ? $this->header['User-Agent'] : $this->agent;
        $headerStr .= "User-Agent: {$agent}{$this->crlf}";
        if (isset($this->header['Cookie'])) {
            $headerStr .= "Cookie: {$this->header['Cookie']}{$this->crlf}";
        }
        $dataLength = 0;
        if ($method == 'POST') {            
            if (!empty($data)) {
                $dataStr = http_build_query($data);
                $dataLength = strlen($dataStr);
            }            
            $headerStr .= "Content-Type: application/x-www-form-urlencoded{$this->crlf}";
            $headerStr .= "Cache-Control: no-cache{$this->crlf}";
            $headerStr .= "Pragma: no-cache{$this->crlf}";
            $headerStr .= "Content-Length: {$dataLength}{$this->crlf}";
        }
        $headerStr .= $this->crlf;
        if ($dataLength > 0) {
            $headerStr .= $dataStr;
        }
        fwrite($this->fp, $headerStr, strlen($headerStr));
        $this->resultHeader = '';
        while ($curContent = fgets($this->fp, $this->maxLineLength)) {
            if ($curContent == $this->crlf) {
                break;
            }
            $this->resultHeader .= $curContent;
        }
        $this->resultData = '';
        do {
            $curContent = fread($this->fp, $this->maxLength);
            if (strlen($curContent) == 0) {
                break;
            }
            $this->resultData .= $curContent;
        } while(TRUE);
        $this->disconnect();
        unset($this->fp);
    }
    
  
    public function getResultHeader() {
        return $this->resultHeader;
    }
    
    
    public function getResultData() {
        return $this->resultData;
    }
    
   
    private function connect() {
        $this->fp = fsockopen($this->host, $this->port, $errno, $errstr, $this->timeout);
        if (!$this->fp) {
            echo "Error: {$errno}--{$errstr}";
            exit;
        }
    }
    
   
    private function disconnect() {
        return fclose($this->fp);
    }
}

?>