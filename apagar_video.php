<?php 	
require_once 'php_assets/verifica_sessao.php';
require_once 'php_assets/conecta.php';

//SE NÃO  FOR PRETA OU SUPERIOR
if (!$_SESSION["graduacao_cod"]<10){ header("location:inicio.php"); }

if ($_GET) {
	$database->delete('videos', ["cod_video" => $_GET['c']]);

}

header("location:inicio.php");
 ?>