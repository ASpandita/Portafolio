<?php

	include("conexionDB.php");

	$paquete = $_POST["paqueteP"];
	$origen = $_POST["origenP"];
	$destino = $_POST["destinoP"];
	$mensaje = $_POST["mensajeP"];
	$fecha_salida = $_POST["fsalidaP"];
	$fecha_entrega = $_POST["fentregaP"];

	$query = "INSERT INTO post (msg_post, fechas_post, paquete_post, origen_post, fechae_post, destino_post) VALUES ('$mensaje', '$fecha_salida', '$paquete', '$origen', '$fecha_entrega', '$destino')";

	
?>