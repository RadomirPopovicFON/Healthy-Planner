<?php
require 'jsonindent2.php';
$mysql_server = "localhost";
$mysql_user = "root";
$mysql_password = "root";
$mysql_db = "projekatITEH";
$mysqli = new mysqli($mysql_server, $mysql_user, $mysql_password, $mysql_db);
if ($mysqli->connect_errno) {
    printf("Konekcija neuspešna: %s\n", $mysqli->connect_error);
    exit();
}
$mysqli->set_charset("utf8");
$parametar="";

$sqlSelect = "SELECT * FROM lokacija";
if (!$q=$mysqli->query($sqlSelect)){
	echo "<p>Nastala je greska pri izvodenju upita</p>" ;
	die();
}
//$json_podaci = "{\"gitare\"";
$json_podaci = "[";
while ($red=$q->fetch_object()){
	$json_podaci.=json_encode($red);
	$json_podaci.=",";
}
$json_podaci=substr($json_podaci, 0,-1);
$json_podaci.="]";

$json_podaci=indent2($json_podaci);

$fajl = fopen('podacici.json','w');
fwrite($fajl,$json_podaci);
fclose($fajl);

?>