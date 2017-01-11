<?php 
$title="Editar Currículo";
require_once 'php_assets/verifica_sessao.php';
require_once 'php_assets/conecta.php';




if ($_POST) {

	//die(var_dump($_POST));
	
		$database->update('curriculo', [
			"nome_faixa" => $_POST['nome_faixa'],
			"texto_curriculo" => $_POST['texto_curriculo']
			],["cod_curriculo" => $_GET["c"]]);

	
		//die(var_dump($database));

	$c = $_GET['c'];
		header("location:ver_curriculo.php?c=$c");
	//header("location:edita_usuario.php");
	}

if (!$_GET) { header("location:inicio.php"); die();} //se nada for enviado

//@session_start();
	//busca dados do usuário na sessão atual
	$curriculo=$database->select('curriculo', "*",["cod_curriculo" => $_GET["c"]]);

	#var_dump($data);
	#die();
	?>

	<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<title><?php echo 	$title ?></title>
		<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">
 	
	</head>
	<body>

<?php // 	die(var_dump($curriculo)); ?>

		<script src="js/ckeditor/ckeditor.js"></script>
		<form method="post" action="edita_curriculo.php?c=<?php echo $_GET['c'] ?>">
			<div class="">
				<input name="nome_faixa" type="text" class="form-control" placeholder="Nome da faixa" value="<?php echo $curriculo['0']['nome_faixa']  ?>" />
			</div><!-- /.row -->
			
			<div class="">
				<textarea name="texto_curriculo" id="editor1" rows="10" cols="80">
					<?php echo 	$curriculo['0']['texto_curriculo'] ?>
				</textarea>
			</div><!-- /. -->
			<script>
                // Replace the <textarea id="editor1"> with a CKEditor
                // instance, using default configuration.
                CKEDITOR.replace( 'editor1' );
            </script>
            <div class="">
            	<input type="submit" value="Salvar" class="btn-primary col-md-1 form-control" />
            </div>
        </form>

        <?php 	require_once "php_assets/footer.php"; ?>
    </body>
    </html>