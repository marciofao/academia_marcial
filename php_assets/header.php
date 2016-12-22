<?php 	
/*
usage:

<?php 	
$title="Editar Usuário";
require_once 'php_assets/header.php';
 ?>
*/


 require_once "php_assets/verifica_sessao.php";
 require_once 'php_assets/conecta.php';
 ?>

 <!DOCTYPE html>
 <html lang="pt-br">
 <head>
 	<meta charset="utf-8">
 	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
 	<title><?php echo 	$title ?> - Instituto Hwarang</title>
 	<meta name="description" content="curso de bootstrap 3">
 	<meta name="viewport" content="width=device-width, initial-scale=1">
 	<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
 	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
 	<style>	
 		#freewha, frame, iframe{
 			display: none;
 		}
 		.skip{ /*recurso de acessibilidade*/
 			position:absolute;
 			text-indent:-9999em;
 			width:0;
 		}
 	</style>
 </head>
 <body>
 	<div class="content">	
 		<div class="navbar navbar-default non-printable">
 			<div class="navbar-header">
 				<a href="#" class="navbar-brand ">
 					<?php echo $title ?>
 				</a>
 			</div><!-- /.navbar-header -->
 			<!-- RECURSO DE ACESSIBILIDADE -->
 			<p class="skip"><a href="#maincontent" tabindex="1">Pular navegação e ir direto para o conteúdo</a></p>
 			<div class="btn-toolbar">
 				<div class="btn-group-lg btn-group">
 				<a href="inicio.php" class="btn btn-primary">Início</a>
 					<a href="edita_usuario.php" class="btn btn-primary">Edita Usuário</a>
 					<?php if ($_SESSION['graduacao_cod']>=11): //se for faixa preta?>
 						<a href="novo_usuario.php" class="btn btn-primary ">Novo Membro</a>
 						<a href="novo_curriculo.php" class="btn btn-primary ">Nova Faixa</a>
 					<?php endif ?>
 					<a href="php_assets/sair.php" class="btn btn-primary ">Sair</a>
 				</div><!-- /.btn-group-lg btn-group -->
 			</div><!-- /.btn-toolbar -->
	</div><!-- /.navbar navbar-default -->
	</div><!-- /.content -->
	<div class="content-fluid" id="maincontent">