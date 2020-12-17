<?php

$cookiedata = json_encode(array( "showpassword"=>"yes", "bgcolor"=>"#000000"));


function xor_encrypt($in) {

    $key = "qw8J";
    $text = $in;
    $outText = '';

    // Iterate through each character
    for($i=0;$i<strlen($text);$i++) {
    $outText .= $text[$i] ^ $key[$i % strlen($key)];
    }

    return base64_encode($outText);
}

echo xor_encrypt($cookiedata)

?>