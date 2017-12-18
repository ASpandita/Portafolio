<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Registro</title>
</head>
<body>
<?php

	include("conexionBD.php");

	$nombre = $_POST["nombreA"];
	$pass = $_POST["passA"];
	$resp = "hola";
	$query = "SELECT * FROM admin WHERE nombre_adm = '$nombre' and pass_adm = '$pass'";
	

	$result = pg_query($dbcon,$query);		
	$result_array=pg_fetch_array($result);
	if (pg_num_rows($result)>0) {
		$resp = json_encode(array("login"=>true));

		
	}else{
		$resp = json_encode(array("login"=>false));
	}
	

?>
<script type="text/javascript">
	var log = <?php echo "'$resp'"; ?>;
	
	var json = JSON.parse(log);
	if (json.login==true) {
		window.location.assign("http://localhost/legal/nitro/index.html");
	}else{
		alert("nombre o contraseña incorrecta")
		window.location.assign("http://localhost/legal/administrador.html");
	}

</script>

</body>
</html>