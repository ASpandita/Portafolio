<?php

	include("conexionBD.php");

	$email = $_POST["correoU"];
	$contra1 = $_POST["passU"];

	$query = "SELECT * FROM user_1 WHERE email_user = '$email' and pass_user = '$contra1'";
	

	$result = pg_query($dbcon,$query);		
	//$result_array=pg_fetch_array($result);

	if (pg_num_rows($result)>0) {
		$resp = json_encode(array("login"=>true));
		echo $resp;
	}else{
		$resp = json_encode(array("login"=>false));

	 	echo $resp;
	}

?>
