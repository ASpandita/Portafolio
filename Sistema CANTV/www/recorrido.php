<?php
include 'conec.php';

$zona=$_POST["zona"];
$id=$_POST["id"];
$reco=$_POST["reco"];
$obse=$_POST["obse"];
$horai=$_POST["horai"];
$horaf=$_POST["horaf"];


$insertar="INSERT INTO recorrido VALUES('$zona', '$id', '$reco', '$obse', '$horai', '$horaf')";

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
