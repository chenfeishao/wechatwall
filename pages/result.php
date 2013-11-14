<?php
      include './config.php';
	  $connect = @mysql_connect(HOST,USERNAME,PASSWORD) or die ("Unable to connect database server!"); 
	  mysql_query('set names utf8');
	  $select = mysql_select_db(DBNAME , $connect); 
	  $sql="select * from wechat where status='0' order by id desc limit 0,3";
	  $result =mysql_query($sql);
	  $rs=array();
		while($row = mysql_fetch_array($result)) {
			array_push($rs,$row);
		}
	  mysql_close($connect);
	  $return ='';
		foreach ($rs as $key => $value){
			$content = $value['content'];
			$id = $value["id"];
			$return .= '<div class="post">'
					   .'<div id="head_img" style='
					   .'"background-image:url( pages/images/'
					   .$value['fakeId'].'.jpg);">
						<div id="post_name">
					    <div>'.$value["nickName"].'</div>
						</div>
						</div>
						<div id="post_container">
						<div id="post_content">'.$content.'	</div>
					    </div>
					    </div>';

			}
				echo $return;

?>