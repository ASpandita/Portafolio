<?php

	include("conexionBD.php");

	$nombre = $_POST["nombreU"];
	$correo = $_POST["correoU"];
	$apellido = $_POST["apellidoU"];
	$pass = $_POST["passU"];
	$pregunta = $_POST["preguntaU"];
	$respuesta = $_POST["respuestaU"];
	$nacimiento = $_POST["nacimientoU"];

	$confirm = "SELECT email_user FROM user_1 WHERE email_user= '$correo' ";
	$rconfirm= pg_query($dbcon,$confirm);
	if (pg_num_rows($rconfirm)==0) {


$query = "INSERT INTO user_1 (nomb_user, ape_user, email_user, pass_user, respu_user, pregu_user,nacimiento_user) VALUES ('$nombre', '$apellido', '$correo', '$pass','$respuesta','$pregunta','$nacimiento')";

	$result = pg_query($dbcon,$query);		

	if (!$result) {
		echo '<script language=javascript>alert("No se pudo registrar");window.location.assign("registro_user.html");</script>';
	}else{
		echo '<script language=javascript>alert("Usuario registrado con exito");<script>';
		header('location: index.html');
		}

	}else{
		echo '<script language=javascript>alert("Ya hay un usuario registrado con ese correo, intente nuevamente");</script>';
		
	}

?>