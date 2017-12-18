<?php

	include("conexionBD.php");

	$nombre = $_POST["nombreT"];
	$correo = $_POST["correoT"];
	$telefono = $_POST["telefonoT"];
	$apellido = $_POST["apellidoT"];
	$pass = $_POST["passT"];
	$marca= $_POST["marcaT"];
	$modelo = $_POST["modeloT"];
	$placa = $_POST["placaT"];
	$cedula= $_POST["cedulaT"];
	$ganancia = 0;
	$status = 0;

	$confirm = "SELECT correo_tran FROM transportista WHERE correo_tran= '$correo' ";
	$rconfirm= pg_query($dbcon,$confirm);
	if (pg_num_rows($rconfirm)==0) {
		

	$query = "INSERT INTO transportista (nom_tran, pass_tran, modelo_tran, correo_tran, placa_tran, ape_tran,telefono_tran,ganancia_tran, cedula_tran, marca_tran) VALUES ('$nombre', '$pass', '$modelo', '$correo','$placa','$apellido','$telefono','$ganancia', '$cedula', '$marca')";
	$result = pg_query($dbcon,$query);	


	if (!$result) {
		echo '<script language=javascript>alert("No se pudo registrar");window.location.assign("http://localhost/legal/registro.html");</script>';
	}else{
		echo '<script language=javascript>alert("Transportista registrado con exito");window.location.assign("http://localhost/legal/index.html");</script>';
		}

	}else{
		echo '<script language=javascript>alert("Ya hay un usuario registrado con ese correo, intente nuevamente");window.location.assign("http://localhost/legal/registro.html");</script>';
		
	}
?>

