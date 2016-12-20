<?php 

require_once "php_assets/env.php";

if ($env=="dev") {
	$user="root";
	$pass="";
	$dbname="academia_marcial";
}else{
	$user="";
	$pass="";
	$dbname="";
}


// Or if you just download the medoo.php into directory, and require it with the correct path.
require_once 'medoo.php';
 
// Initialize
$database = new medoo([
    'database_type' => 'mysql',
    'database_name' => $dbname,
    'server' => 'localhost',
    'username' => $user,
    'password' => $pass,
    'charset' => 'utf8'
]);

 ?>