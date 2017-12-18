<?php
include 'conec.php';

	$usuario=$_POST['usuario'];
	$clave=$_POST['clave'];


	$consulta="SELECT*FROM login WHERE usuario='$usuario' and clave='$clave'";

	$resultado=mysqli_query($conexion,$consulta);
	$filas=mysqli_num_rows($resultado);
	if ($filas>0) {
		header("location:menu.html"); 
	}else{
		echo'<script language=javascript>alert("Error de autenticacion")</script>';
		header("Refresh:0; url=index.html");
	}

	mysqli_free_result($resultado);
	mysqli_close($conexion);
?>