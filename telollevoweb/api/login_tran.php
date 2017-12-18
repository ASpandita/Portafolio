<?php
	include("conexionBD.php");

	$correo = $_POST["correoT"];
	$pass = $_POST["passT"];
	$resp = "hola";
	$query = "SELECT * FROM transportista WHERE correo_tran = '$correo' and pass_tran = '$pass'";
	

	$result = pg_query($dbcon,$query);		
	$result_array=pg_fetch_array($result);

	if (pg_num_rows($result)>0) {
		$resp = json_encode(array("login"=>true));

		
	}else{
		$resp = json_encode(array("login"=>false));
	}

?>