<?php
include 'conec.php';

$id=$_POST["id"];
$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$celular=$_POST["celular"];
$sexo=$_POST["sexo"];
$direccion=$_POST["direccion"];
$fecha=$_POST["fecha"];
$cargo=$_POST["cargo"];
$puesto=$_POST["puesto"];
$codigo=$_POST["codigo"];
$foto=$_POST["foto"];



$actualizar = "UPDATE vigilante SET cedula='$id', nombre='$nombre', apellido='$apellido',celular='$celular', sexo='$sexo', direccion='$direccion', ingreso='$fecha', cargo='$cargo', servicio='$puesto', codigo_instalacion='$codigo', foto='$foto' WHERE cedula='$id'";

$resultado = mysqli_query($conexion, $actualizar);

if (!$resultado) {
	echo '<script language=javascript>alert("Error al Modificar")</script>';
	header("Refresh:0; url=menu.html");
}else{
	echo '<script language=javascript>alert("Modificado con exito")</script>';
	header("Refresh:0; url=menu.html");
}

mysqli_close($conexion);
?>