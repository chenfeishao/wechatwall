<?php
    header("Content-type: text/html; charset=utf-8"); 
	session_start();
	$username = $_POST["username"];
	$pwd = $_POST["pwd"];
	if($username==''&&$pwd==''){
		$_SESSION['userName'] = $username;
		header("Location:manage.php");
	}
	else{
		echo '<script>alert("登录失败，您输入的密码有误！");location.href = "admin.html";</script>';
	}


