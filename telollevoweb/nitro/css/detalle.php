<?php

	include("conexionBD.php");

	$resp = "hola";
	$query = "SELECT * FROM transportista";
	

	$result = pg_query($dbcon,$query);		
	$arr =  json_encode(pg_fetch_all($result));
		

	echo $arr;
		
	
?>
