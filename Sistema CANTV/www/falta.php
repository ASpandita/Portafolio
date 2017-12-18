<?php
	include 'conec.php';

	$cedula=$_POST['cedula'];
	$turno=$_POST['turno'];
	$fecha=$_POST['fecha'];
	$motivo=$_POST['motivo'];

	$insertar="INSERT INTO faltas VALUES(NULL,'$cedula', '$turno', '$fecha', '$motivo')";

	$resultado = mysqli_query($conexion, $insertar);

	if (!$resultado) {
		echo '<script language=javascript>alert("No se pudo registrar la falta")</script>';
		header("Refresh:0; url=menu.html");
	}else{
		echo '<script language=javascript>alert("Falta registrada")</script>';
		header("Refresh:0; url=menu.html");
	}

	mysqli_close($conexion);
	?>