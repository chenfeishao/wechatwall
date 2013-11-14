<?php
      include './config.php';
	  $id = $_GET["id"];
	  $connect = @mysql_connect(HOST,USERNAME,PASSWORD) or die ("Unable to connect database server!"); 
	  mysql_query('set names utf8');
	  $select = mysql_select_db(DBNAME , $connect); 
	  $sql="update wechat set status = '1' WHERE id = '".$id."'";
	  echo $sql;
	  mysql_query($sql);
	  mysql_close($connect);