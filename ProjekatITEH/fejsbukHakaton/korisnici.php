<?php

	$ime = $_POST['data'];
	$fajl = fopen('korisnici.json','a');
	$hash = "{".md5($ime). "},\n" ;
	fwrite($fajl,$hash);
	fclose($fajl);

?>