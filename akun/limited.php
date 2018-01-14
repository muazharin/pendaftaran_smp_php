<?php
	if(!isset($_SESSION['user']))
	{
		?>
			<script type="text/javascript" language="javascript">
				alert('Anda harus login terlebih dahulu');
				window.location.href='akun.php';
			</script>
		<?php
		
		exit;
	}
?>