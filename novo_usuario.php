<?php 	
$title = "Novo Usuário";
require_once 'php_assets/header.php';

if ($_POST) {
	

	$data=$database->select('usuarios', 'usuario', ["usuario"=>$_POST['usuario']]);
	if ($data) {
		echo "<h1>	Usuário já cadastrado!</h1>";
	}else{
		$database->insert('usuarios', [
			'usuario' => $_POST['login_usuario'],
			'senha' => md5($_POST['senha_usuario']),
			'graguacao_cod' => $_POST['graduacao_cod'],
			'cod_professor' => $_SESSION['cod_usuario'],
			'obs' => $_POST['obs']
			]);

		//echo "sucesso!";

			?>
			<script>
				alert("Usuário cadastrado!");
				window.location.href = "inicio.php";
			</script>
			<?php
	//	header("location:inicio.php");
		}


	}else{
		?>



		<div class="container">
			<div class="row col-md-3">

				<h3>Cadastrar novo usuário no Sistema</h3>
				
				<form action="	" class="form-group" method="post">
					<input type="text" class="form-control" placeholder="nome de usuario" required="required" name="login_usuario" />
					
					<input type="password" class="form-control" placeholder="senha"  required="required" name="senha_usuario" />
					
					
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
					<label >
						<textarea name="obs" id="" cols="30" rows="10" class="form-control">Observações</textarea>
					</label>
					<input type="submit" class="btn-md btn-primary form-control" value="cadastrar" />
				</form><!-- /.form-group -->


			</div><!-- /.row -->
		</div><!-- /.content-fluid -->

		

		<?php 	} 

		require_once "php_assets/footer.php";
		?>