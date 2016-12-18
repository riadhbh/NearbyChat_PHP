<?php
require "conn.php";
$id="1";//$_POST["id"];
$latitude="-34.373671666666674";//$_POST["latitude"];
$Longitude="150.89709499999998";//$_POST["Longitude"];
$sql_query = "select id,logo,latitude,Longitude from users where id <> '$id';";
$result = mysqli_query($conn,$sql_query);

if(mysqli_num_rows($result) >0 )
{
while ($row = mysqli_fetch_assoc($result)) {
    $idu=$row["id"];
    $logo=$row["logo"];
    $latitude =$row["latitude"];
    $Longitude = $row["Longitude"];
    echo $idu." ".$logo." ".$latitude." ".$Longitude." ";
}
}
else
{
echo "User or password incorrect!";
}
mysqli_close($conn);
?>
