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



$actualizar = "UPDATE seguridadfisica SET cedula='$id', nombre='$nombre', apellido='$apellido',celular='$celular', sexo='$sexo', direccion='$direccion', ingreso='$fecha', cargo_segu='$cargo', servicio_segu='$puesto', codigo_instalacion='$codigo', foto='$foto' WHERE cedula='$id'";

$resultado = mysqli_query($conexion, $actualizar);

if (!$resultado) {
	echo '<script language=javascript>alert("Error al registrar")</script>';
	header("Refresh:0; url=menu.html");
}else{
	echo '<script language=javascript>alert("Registrado con exito")</script>';
	header("Refresh:0; url=menu.html");
}

mysqli_close($conexion);
?>