<?php
require "conn.php";
$sql_query = "select count(*) from users ;";
$result = mysqli_query($conn,$sql_query);  
 $count=mysqli_fetch_assoc($result);
echo $count["count(*)"];
?>