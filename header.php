<!doctype html>
<html>
<head>
	<title><?php // the_title(); ?></title>
	<!--Stylesheet-->
	<?php // get_stylesheets(); ?>
	<link rel="stylesheet" type="text/css" href="assets/stylesheets/style.min.css">
	<!--JavaScript-->
	<?php // get_scripts(); ?>
	<script type="text/javascript" src="assets/javascript/jquery.min.js"></script>
	<script type="text/javascript" src="assets/javascript/custom.js"></script>
	<!-- <script type="text/javascript" src="assets/javascript/custom.min.js"></script> -->
</head>
<body>
	<header id="main" role="Main Header">
		<section class="group">
			<img src="assets/images/logo.png" id="logo" role="Logo" />
			<form action="search.php" method="GET" id="search-form" role="Search">
				<input type="text" name="search-term" placeholder="Pretraga...">
				<input type="submit" value=" ">
			</form>
			<section id="log-in" role="Log In or Register">
				<section class="avatar"></section>
			</section>
		</section>
	</header>