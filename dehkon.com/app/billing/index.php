<?php

require_once 'Users.php';
require_once 'DemoBill.php';


$url = $_SERVER['REQUEST_URI'];
$urlPath = parse_url($url, PHP_URL_PATH);

$bill = new DemoBill();

$bill->salt = md5('salt'); // demo only

$result = '';

switch ($urlPath) {
    case '/do':
        header('Content-type:application/json;charset=utf-8');
        $result = json_encode($bill->billDo());
        break;
        
    default:
       // echo '<h1>Demo Bill2 in PHP</h1>';
       // echo "<p><b>salt: </b>{$bill->salt}</p>";
        $result = '{"status":"OK","balance":"9969.10","currency":"RUB"}';
        break;
}


if (!empty($result)) {
    echo $result;
}
