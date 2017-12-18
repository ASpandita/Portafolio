<?php
include 'conec.php';

	$cedula=$_POST['cedula'];
	$instalacion=$_POST['instalacion'];
	$turno=$_POST['turno'];
	$fecha=$_POST['fecha'];

	$insertar="INSERT INTO asistencia VALUES(NULL,'$cedula', '$instalacion', '$turno', '$fecha')";

	$resultado = mysqli_query($conexion, $insertar);

	if (!$resultado) {
		echo '<script language=javascript>alert("No se pudo registrar la asistencia")</script>';
		header("Refresh:0; url=menu.html");
	}else{
		echo '<script language=javascript>alert("Asistencia Registrada")</script>';
		header("Refresh:0; url=menu.html");
	}

	mysqli_close($conexion);
	?>