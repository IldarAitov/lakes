<?php


	include './modules/DatabaseShell/DatabaseShell.php';
	include './config/config.php';


	return new DatabaseShell($SERVER, $USER, $PASSWORD, $DB); 

	
?>
