<?php 	
$title = "Novo Vídeo";
require_once 'php_assets/header.php';

//SE NAO FOR PRETA REDIRECIONA
if ($_SESSION["graduacao_cod"]<=10){ header("location:inicio.php"); die(); }

if ($_POST) {
	
		$database->insert('videos', [
			'nome' => $_POST['nome'],
			'link' => $_POST['link'],
			'cod_curriculo' => $_GET['c']
			]);

		//echo "sucesso!";

		?>
		<script>
		alert("Video cadastrado!");
		window.location.href = "ver_curriculo.php?c=<?php echo $_GET['c']; ?>";
	</script>
		<?php
		die();
	//	header("location:inicio.php");
	}



	?>


	
	

				<h3>Novo Vídeo</h3>
				
				<form class="form-group" method="post">
					<input type="text" class="form-control" placeholder="Nome do Vídeo" required="required" name="nome" />
					
					<input type="text" class="form-control" placeholder="https://www.youtube.com/watch?v=h_vvI26NnwE"  required="required" name="link" />
					
					<input type="submit" class="btn-md btn-primary form-control" value="cadastrar" />
				</form><!-- /.form-group -->



		

	<?php

require_once "php_assets/footer.php";
	?>