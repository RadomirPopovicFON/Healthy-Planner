  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
  <style>
      body {
      background-image: url("wallpaper.jpg");
      background-color: #cccccc;
                    opacity: 0.90;
        filter: alpha(opacity=40); 
        color:white;
    }</style>
<?php

	

    function slanjeMejla($mejl,$rezultat){

  	$gost_email = $mejl;
  	$email = "radomir.popovic@ymail.com";
    $email_message = "Detalji forme su dole.\n\n";
 
    function clean_string($string) {
 
      $bad = array("content-type","bcc:","to:","cc:","href");
 
      return str_replace($bad,"",$string);
 
    }

    $email_message .= "Postovani: ".clean_string($subject)."\n";
 
    $email_message .= "Sadrzaj poruke: ".clean_string($comment)."\n";
 
    $email_message .= "Mejl osobe koja vam je poslala poruku: ".clean_string($email)."\n";
 
	// create email headers
	 
	$headers = 'From: '.$email."\r\n".
	 
	'Reply-To: '.$email."\r\n" .
	 
	'X-Mailer: PHP/' . phpversion();
	 
	@mail($gost_email, $subject, $email_message, $headers);

	}

	$vrednost = (int)$_GET['vrednost'];
	$stringic = "http://localhost:8888/treciDomaciIteh/gitare/";
	$instagramVr="";
	$instagramLink="";
	if($vrednost<10) {$stringic.="1.json"; $instagramVr="fenderguitar";}
	if($vrednost>9 && $vrednost<14) {$stringic.="2.json"; $instagramVr="gibsonguitar";}
	if($vrednost>13 && $vrednost<20) {$stringic.="3.json"; $instagramVr="schecterproducts";}
	if($vrednost>19 && $vrednost<24) {$stringic.="4.json"; $instagramVr="officialibanezguitars";}
	if($vrednost>23) {$stringic.="5.json"; $instagramVr="prsguitars";}
	$instagramLink = "https://www.instagram.com/".$instagramVr;
	$adresa = $_GET['mejl'];
	$stringRez = file($stringic);

	$rezultat = "<br/>[";
	$rezultat.= "<p style='text-indent: 2.5em'>{</p>";

	for($i=3;$i<count($stringRez)-2;$i++){
		if($i==4)continue;
		$rezultat.= "<p style='margin-left: 5em;font-family: Arial, Helvetica, sans-serif;'>".$stringRez[$i]."<br/></p>";
	}
	$rezultat.= "<p style='text-indent: 2.5em'>{</p>";
	$rezultat.= "]";

	echo "<p style='font-family: Arial, Helvetica, sans-serif;'>Postovani, uskoro bi trebalo da stigne detaljan opis Vaseg rezultata, na adresu: "
	.$adresa.". Do tada, ovo je uopsteni prikaz: ".$rezultat."<br.>";
	echo '<div class="jumbotron"><a href='.$instagramLink.'><h5 style="font-family: Arial, Helvetica, sans-serif";>Zvanicna instagram stranica proizvoda dobijene gitare</h5></a><br/>';
	echo '<iframe src="http://widget.websta.me/in/'.$instagramVr.'/?s=100&w=2&h=3&b=1&p=5" allowtransparency="true" frameborder="0" scrolling="no" style="width:500px; height: 345px" ></iframe> <!-- websta - websta.me -->';
	echo '<br/><a href="http://localhost:8888/prvifolder/4tiDomaciIteh/prikaz.php">Pogledajte kompletnu ponudu</a></div>'
?>