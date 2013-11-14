<?php
define(TIMES,3);				//抽奖次数
define(TABLE, "wechat");			//查询的表名
mysql_connect("localhost","root","root") or die("oops!");
mysql_query('set names utf8');
mysql_select_db(TABLE);

$sql    = "select distinct nickName from ".TABLE;
$return = mysql_query($sql);

$res  = array();
$nickNameArray = array();
while ($res = mysql_fetch_array($return)){
	$nickNameArray[] = $res;
}


//print_r($nickNameArray);
//防止offset,下标等于数组长度时会出错
$nickNameLength = count($nickNameArray) - 1;

//方法一：会出现抽到同一用户的情况
// //随机获取中奖用户
// $luckyBoy = array();
// for ($i=0; $i < TIMES ; $i++) { 
// 	$luckyBoy[] = rand(0,$nickNameLength);
// }
// //获得昵称，并输出
// for($j = 0;$j < TIMES;$j++){
// 	echo "第".($j+1).'位中奖者是：'.$nickNameArray[$luckyBoy[$j]]['nickName'];
// 	echo "<br />";
// }

//方法二，利用range()和array_rand()发法可以避免方法中的问题
$numbers = range(0, $nickNameLength); //range 是将0到$nickNameLength列成一个数组
$result = array_rand($numbers, TIMES); //array_rand顺序随机取出数组中的指定数目的单元

for ($i = 0; $i < TIMES; $i++)
	{
  		echo '第'.($i+1).'位中奖者是：'.$nickNameArray[$result[$i]][0].'<br />';
	}
	echo "恭喜你们！中奖的同学，领奖请联系活动主办方<br />";
?>
