<?php 	
$title="Início";
require_once 'php_assets/header.php';
?>

<?php 

$datas=$database->select('curriculo', ["cod_curriculo","nome_faixa", "graduacao_cod"], ["ORDER" => "graduacao_cod"]);

//die(var_dump($datas));
//die($_SESSION['graduacao_cod']);
?>




<?php foreach ($datas as $data => $value): 
	if ($_SESSION['graduacao_cod'] >= $value['graduacao_cod']) {
	# code...

		?>
		<div>
			<a href="ver_curriculo.php?c=<?php echo $value['cod_curriculo'] ?>" class="btn-primary btn-md form-control"><?php echo $value['nome_faixa'] ?></a>
		</div>
		<?php 
	}		
	endforeach ?>

	




	<?php 	require_once "php_assets/footer.php"; ?>