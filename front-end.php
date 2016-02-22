<?php
	function get_header() {
		/*
		* @params: NONE
		* @desc: Includes the header.php file
		*/
		require_once('header.php');
	}
	function get_footer() {
		/*
		* @params: NONE
		* @desc: Includes the footer.php file
		*/
		require_once('footer.php');
	}
	function get_css() {
		/*
		* @params: NONE
		* @desc: Includes the external CSS file
		*/
		$path = "css/style.min.css";
		echo '<link rel="stylesheet" type="text/css" href="' . $path . '">';
	}
	function get_js() {
		/*
		* @params: NONE
		* @desc: Includes the external JS files
		*/
		$path = "js/jquery.min.js";
		echo '<script type="text/javascript" src="' . $path . '"></script>';
		$path = "js/custom.min.js";
		echo '<script type="text/javascript" src="' . $path . '"></script>';
	}
	function is_home() {
		/*
		* @params: NONE
		* @desc: Checks if the current location is the homepage
		*/
		$delimiter = "/telefonski_oglasi/";
		$currentPage = $_SERVER['PHP_SELF'];
		$result = explode($delimiter, $currentPage);
		if($result[1] == "index.php") {
			// Is Home
			return true;
		} else {
			return false;
		}
	}