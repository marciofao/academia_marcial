<?php 
$title = "Currículo";
require_once 'php_assets/header.php';

if (!$_GET) { header("location:inicio.php");} //se nada for enviado

$curriculo=$database->select('curriculo', "*",["cod_curriculo" => $_GET["c"]]);
$videos=$database->select('videos', "*",["cod_curriculo" => $_GET["c"]]);


?>
<?php if ($_SESSION["graduacao_cod"]>10): //SE FOR PRETA OU SUPERIOR?>
	<div>
		<a href="edita_curriculo.php?c=<?php echo 	$_GET['c'] ?>"  class="btn-primary btn-md form-control col-sm-1 col-md-3 tac" >Editar Currículo</a>
	</div>
<?php endif ?>


<h2>
	<?php echo $curriculo[0]['nome_faixa']; ?>
</h2>

<?php echo $curriculo[0]['texto_curriculo']; ?>

<?php if (sizeof($videos)>0	): ?>

	<h2>Vídeos</h2>

	<?php foreach ($videos as $key => $video): ?>
		<a href="<?php echo $video['link'] ?>">
			<h3><?php echo $video['nome'] ?></h3>
		</a>
		<?php if ($_SESSION["graduacao_cod"]>10): //SE FOR PRETA OU SUPERIOR?>
		<div>
			<a href="deleta_video.php?c=<?php echo 	$video['cod_video'] ?>"  class="btn-warning btn-md form-control col-sm-1 col-md-3 tac" >Remover Vídeo</a>
		</div>
	<?php endif ?>
		<br />	


	<?php endforeach ?>

	<?php if ($_SESSION["graduacao_cod"]>10): //SE FOR PRETA OU SUPERIOR?>
		<div>
			<a href="adiciona_video.php?c=<?php echo 	$_GET['c'] ?>"  class="btn-primary btn-md form-control col-sm-1 col-md-3 tac" >Adicionar Vídeo</a>
		</div>
	<?php endif ?>
	
<?php endif ?>


<?php
//die(var_dump($videos));

require_once 'php_assets/footer.php';
?>