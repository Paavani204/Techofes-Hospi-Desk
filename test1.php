<html>
<head><title>techofes</title></head>
<d
<form name="test1.php">
<center>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<b>
<font size="+100">
<?php 
$user='root';
$pass='';
$db='hospi';
$db=new mysqli('localhost',$user,$pass,$db) or die(" unable to connect");
$randomNumber = rand(); 
$randomNumber = "T";
$randomNumber .=rand(10000,99999);
echo $randomNumber; 
?>
</font>
</body>
</form>
</html>

</style>