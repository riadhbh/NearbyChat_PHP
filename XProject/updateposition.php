<?php
require_once('conn.php');
$id=$_POST["user_id"];
$latitude=$_POST["latitude"];
$Longitude=$_POST["Longitude"];

$sql_query="select count(*) from users where id like '$id';";
$res=mysqli_query($conn,$sql_query);
$data=mysqli_fetch_assoc($res);

if($data['count(*)']>0){
$sql_query="update users set latitude='$latitude', Longitude='$Longitude' where id='$id';";
if(mysqli_query($conn,$sql_query))
echo "Account informations successfully updated";
else
	echo "Account Update failed, please retry";
}else
	echo "user don't exist";
mysqli_close($conn);
?>
