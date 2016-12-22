<?php 	
$title="Nova Faixa";
require_once 'php_assets/header.php';

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
	
	

	?>

	<script>
		alert("Faixa Cadastrada!");
		window.location.href = "inicio.php";
	</script>

	<?php

	require_once "php_assets/footer.php";
	
	//header("location:inicio.php");
}



//var_dump($datas);
//die();
?>

<div class="row col-md-6">

	<h3>Nova Faixa</h3>
	<form action="" method="post">
		<label class="col-lg-6">Nome da faixa
			<input name="nome_faixa" id="nome" type="text" placeholder="Faixa Branca - 10º gub" class="form-control " required="required"  />
		</label>
		<label class="col-lg-6  " >Graduação
			<select name="graduacao_cod" class="form-control col-md-6" required="required">
				<option value="">...</option>
				<option value="0">0 - Branca</option>
				<?php 	for ($i=1; $i < 10; $i++) { ?>
						<option value="<?php echo $i; ?>"><?php echo $i; ?></option>

				<?php	} ?>
				<option value="11">11 - Preta 1º dan</option>
				<?php 	for ($i=12; $i < 20; $i++) { ?>
						<option value="<?php echo $i; ?>"><?php echo $i; ?></option>

				<?php	} ?>
			</select>
		</label>
		<div class="row">
			<input type="submit" class="btn-primary btn-md  form-control" value="Salvar" />

		</div><!-- /.row -->
	</form>

</div><!-- /.row -->

<?php 	require_once "php_assets/footer.php"; ?>