<?php
$db_name="xprojectdb";
$mysql_user="root";
$mysql_pass="";
$server_name="localhost";
$conn=mysqli_connect($server_name,$mysql_user,$mysql_pass,$db_name);
/*
if(!$conn){
	echo "Connection failed !".mysqli_connect_error();	
}else{
	echo "<h3>Connected successfully</h3>";
}
*/
?>