<?php
	session_start();
	if(!isset($_SESSION['userName'])){
		echo '<script>alert("登录失败，请输入正确的帐号密码！");location.href = "admin.html";</script>';
		die();
	}

?>
<!DOCTYPE html>
<html>
<head>
<title>微信墙管理</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<link type="text/css" rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="../resources/css/wall.css" />
<script src="../resources/js/jquery-1.9.1.min.js"></script>
<script src="../resources/js/bootstrap.min.js"></script>
<script src="../resources/js/wall.js"></script>

</head>
<body onload ="GetData();">
<div class="navbar">
  <div class="navbar-inner">
    <div class="container">
		<a class="brand" href="#">
		  微信墙后台管理
		</a>
    </div>
  </div>
</div>﻿
<div class="container">


	<div class="clearfix"></div>
	<div class="tabbable">
		<ul class="nav nav-tabs" id="myTab">
			  <li class="active"><a href="#uncheck" data-toggle="tab">湖工大在线微信墙</a></li>
		</ul>
		<div class="tab-content">
			<div class="w-line clearfix" id ="wall">
			</div>
		</div>
		</div>
	</div>
</div>


</body>

</html>