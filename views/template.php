<html>
	<head>
		<title>Meu Site de notificações</title>
		<link rel="stylesheet" type="text/css" href="<?php echo BASE_URL; ?>/assets/css/style.css" />
		<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="<?php echo BASE_URL; ?>assets/js/javascript.js"></script>
	</head>
	
	<body>
		<a href="<?php echo BASE_URL; ?>">Home</a>
		<hr/>
		
		<?php $this->loadViewInTemplate($viewName, $viewData); ?>
		
	</body>
</html>