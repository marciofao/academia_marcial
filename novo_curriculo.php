<?php 	
$title="Nova Faixa";
 require_once "php_assets/verifica_sessao.php";
 require_once 'php_assets/conecta.php';

//EXIGE NOME DO AVALIADOR PARA REALIZAR O CADASTRO
if ($_SESSION['nome']=="") {
	?>
	<script>
		alert("Complete o seu cadastro de usuário antes de continuar!");
		window.location.href = "edita_usuario.php";
	</script>
	
	<?php


	require_once "php_assets/footer.php";
	die();
}





if ($_POST) { //ao submeter dados
	
	$database->insert('curriculo', [
			'nome_faixa' => $_POST['nome_faixa'],
			'graduacao_cod' => $_POST['graduacao_cod'],
			'texto_curriculo' => $_POST['texto_curriculo']
			]);


	?>

	<script>
		alert("Faixa Cadastrada!");
		window.location.href = "inicio.php";
	</script>

	<?php

	require_once "php_assets/footer.php";
	 
}



//var_dump($datas);
//die();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title> <?php echo 	$title ?> </title>
	<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
 	<style>	
</head>
<body>

<style>	
	label{
		display: block;
	}

</style>

<h3>Nova Faixa</h3>
	<form action="" method="post">
		<label class="col-lg-6">Nome da faixa
			<input name="nome_faixa" id="nome" type="text" placeholder="Faixa Branca - 10º gub" class="form-control " required="required"  />
		</label>
		<label class="col-lg-6  " >Graduação
			<select name="graduacao_cod" class="form-control col-md-6" required="required">
				<option value="">...</option>
				<option value="0">0 - Branca</option>
				<?php 	for ($i=1; $i <= 10; $i++) { ?>
				<option value="<?php echo $i; ?>"><?php echo $i; ?></option>

				<?php	} ?>
				<option value="11">11 - Preta 1º dan</option>
				<?php 	for ($i=12; $i < 20; $i++) { ?>
				<option value="<?php echo $i; ?>"><?php echo $i; ?></option>

				<?php	} ?>
			</select>
		</label>
		<script src="js/ckeditor/ckeditor.js"></script>
		<label class="col-lg-6  " >Conteúdo
			<textarea name="texto_curriculo" id="editor1" rows="10" cols="80">

			</textarea>
			
			<script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
        </label>

        <script>
        	
        </script>
        <div >
        	<input type="submit" class="btn-primary btn-md  form-control" value="Salvar" />

        </div><!-- /.row -->
    </form>
		
</body>
</html>




