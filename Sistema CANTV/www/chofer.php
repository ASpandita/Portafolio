<?php
include 'conec.php';

$id=$_POST["id"];
$ci=$_POST["ci"];
$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$sexo=$_POST["sexo"];
$fecha=$_POST["fecha"];
$celular=$_POST["celular"];
$marca=$_POST["marca"];
$modelo=$_POST["modelo"];
$placa=$_POST["placa"];
$ci2=$_POST["ci2"];
$nombreayu=$_POST["nombreayu"];
$apellidoayu=$_POST["apellidoayu"];
$celularayu=$_POST["celularayu"];
$foto=$_POST["foto"];

$insertar = "INSERT INTO chofer VALUES('$id', '$ci', '$nombre','$apellido', '$sexo', '$fecha', '$celular', '$marca', '$modelo', '$placa', '$ci2', '$nombreayu', '$apellidoayu', '$celularayu', '$foto')";

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