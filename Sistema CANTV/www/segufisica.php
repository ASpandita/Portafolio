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



$insertar = "INSERT INTO seguridadfisica VALUES('$id', '$nombre', '$apellido','$celular', '$sexo', '$direccion', '$fecha', '$cargo', '$puesto', '$codigo', '$foto')";

$resultado = mysqli_query($conexion, $insertar);

if (!$resultado) {
	echo '<script language=javascript>alert("Error al registrar")</script>';
	header("Refresh:0; url=menu.html");
}else{
	echo '<script language=javascript>alert("Registrado con exito")</script>';
	header("Refresh:0; url=menu.html");
}

mysqli_close($conexion);
?>