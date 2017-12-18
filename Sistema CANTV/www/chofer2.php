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

$insertar = "UPDATE chofer SET id='$id', cedula_1='$ci', nombre='$nombre', apellido='$apellido', sexo='$sexo', fecha='$fecha', celular='$celular', marca='$marca', modelo='$modelo', placa='$placa', cedulaayudante='$ci2', nombreayudante='$nombreayu', apellidoayudante='$apellidoayu', celularayudante='$celularayu', foto='$foto' WHERE id='$id'";

$resultado = mysqli_query($conexion, $insertar);

if (!$resultado) {
	echo '<script language=javascript>alert("Error al Modificar")</script>';
	header("Refresh:0; url=menu.html");
}else{
	echo '<script language=javascript>alert("Modificado con exito")</script>';
	header("Refresh:0; url=menu.html");
}

mysqli_close($conexion);
?>