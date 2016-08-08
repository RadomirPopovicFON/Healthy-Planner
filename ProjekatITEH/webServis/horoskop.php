<?php

$private_key = "yqZaTTSSeXBaoZ+kscfVqVzJyXI=";
$sig = base64_encode(hash_hmac("sha1", $private_key, true)); 
echo $sig

?>