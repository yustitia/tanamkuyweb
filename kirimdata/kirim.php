<?php
$konek = mysqli_connect("localhost","root","","hp_sistem");
$var9 = 1;
$var1 = $_GET['sensor1'];
$var2 = $_GET['sensor2'];
$var3 = $_GET['sensor3'];
$var4 = $_GET['sensor4'];
$var5 = $_GET['sensor5'];
$var6 = date("Y-m-d H:i:s");



mysqli_query($konek, "INSERT INTO tb_monitoring (ph,ldr,ppm,ec,suhu,waktu) VALUES('$var1','$var2','$var3','$var4','$var5','$var6')");
// mysqli_query($konek, "UPDATE monitoring SET ph='$var1', ldr='$var2', ppm='$var3', ec='$var4', suhu='$var5', waktu='$var6' where id_mr='$var9'");
?>