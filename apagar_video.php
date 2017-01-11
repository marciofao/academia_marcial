<?php 	
require_once 'php_assets/verifica_sessao.php';
require_once 'php_assets/conecta.php';



if ($_GET) {
//	die(var_dump($_GET));
	$database->delete('videos', ["cod_video" => $_GET['c'] ]);
	header("location:ver_curriculo.php?c=".$_GET['cc']);

}else{
	header("location:inicio.php");
}



?>