<?php 	

if (!$_GET) { header("location:inicio.php"); //se não receber dados }

require_once "php_assets/conecta.php";

$datas=$database->select('curriculo', "*", ["cod_curriculo" => $_GET['c']]);


$title = $datas[0]['nome_faixa'];
require_once "php_assets/header.php";


?>



<?php 	require_once "php_assets/footer.php" ?>