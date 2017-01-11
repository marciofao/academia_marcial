<?php 	

$title = "Reportar problema";
require_once "php_assets/header.php";


if ($_POST) {
	$data=$database->select('usuarios', "*",["cod_usuario" => $_SESSION["cod_usuario"]]);

	function envia_email($email){

//ENVIO DE EMAIL:


//die(var_dump($_SESSION));
//	die(var_dump($data));
		$headers = "From: {$_SESSION["nome"]} {$data['0']['email']}\r\n";
		$headers  .="MIME-Version: 1.0 \r\n";
		$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
	//echo $header;
	//die();
		$to = $data['0']['email_destino'];
		$subject = $_POST['titulo'];

		$body = $_POST['detalhes'];
		



		if (!mail($to, $subject, $body, $headers)) {

			echo "<h1>Houve um erro, o email não pode ser enviado.</h1>";
			die();
		}
	}// envia_email()

	//EFETUA ENVIO DE EMAIL
	envia_email('marcio.lopes.fao@gmail.com');

	?>
		<h1>Mensagem enviada, Obrigado!</h1>
		<a href="inicio.php">Clique para voltar</a>

	<?php

	require_once "php_assets/footer.php";
	die();
}

?>


<h2>Reporte um problema</h2>
<form method="post" >
	<div>
		<label>
		
			Título
	
		<input type="text" name="titulo" required="required" class="form-control" />
	</label>
	<label>
		
			Detalhes
	
		<textarea name="detalhes" class="form-control " required="required" cols="30" rows="10"></textarea>
	</label>
	</div>
	<div>
		<input type="submit" value="enviar" class="btn-primary col-md-6 form-control" />
	</div>
</form>


<?php 	require_once "php_assets/footer.php" ?>