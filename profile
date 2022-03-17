<?php
$curl_data = [
    "api_key" => "Your Api Key",
];

$ch = curl_init();
curl_setopt_array($ch, array(
    CURLOPT_URL             => "https://domain.com/api/profile",
    CURLOPT_POST            => true,
    CURLOPT_RETURNTRANSFER  => true,
    CURLOPT_HEADER          => false,
    CURLOPT_POSTFIELDS      => $curl_data,
    CURLOPT_IPRESOLVE		=> CURL_IPRESOLVE_V4,
));
$result = curl_exec($ch);
curl_close($ch);

echo $result;
?>
