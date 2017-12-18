<!DOCTYPE html>
<html>
<head>
  <title>Consulta</title>
</head>
<body>
<form action="consultasegu.php" method="POST" id="cdr">
  Buscar empleado:<br>
  <input type="text" name="busca" placeholder="Ingrese nombre"><br>
  <input type="submit" name="submit" value="Buscar">
  <input type="submit" name="delete" value="Eliminar">
  <input type="button" value="Salir" onClick=location.href='menu.html'></input>
  <?php
  error_reporting(E_ALL ^ E_NOTICE);
  include 'conec.php';

  $busca="";
  $busca=$_POST['busca'];

  $delete="";
  $delete=$_POST['delete'];

  if ($busca!="") {
    $busqueda=mysqli_query($conexion,"SELECT seguridadfisica.cedula, seguridadfisica.nombre, seguridadfisica.apellido, instalaciones.codigo, instalaciones.tipoinstalacion, instalaciones.instalacion FROM seguridadfisica INNER JOIN instalaciones ON seguridadfisica.codigo_instalacion=instalaciones.codigo WHERE nombre='$busca' OR tipoinstalacion='$busca' OR instalacion='$busca'");
  }
  if ($delete!="") {
      $busqueda=mysqli_query($conexion,"DELETE FROM seguridadfisica WHERE cedula='$busca'");
      echo '<script language=javascript>alert("Eliminado con exito")</script>';
    }
    error_reporting(0);
?>
<table width="805" border="1">
  <td width="50">Cedula</td>
  <td width="50">Nombre</td>
  <td width="50">Apellido</td>
  <td width="50">Codigo</td>
  <td width="50">Tipo de instalacion</td>
  <td width="50">Nombre Instalacion</td>

<?php
  while ($muestra=mysqli_fetch_array($busqueda)) {
    echo '<tr>';
    echo '<td>'.$muestra['cedula'].'</td>';
    echo '<td>'.$muestra['nombre'].'</td>';
    echo '<td>'.$muestra['apellido'].'</td>';
    echo '<td>'.$muestra['codigo'].'</td>';
    echo '<td>'.$muestra['tipoinstalacion'].'</td>';
    echo '<td>'.$muestra['instalacion'].'</td>';
  }
?>
</table>
</form>
</body>
</html>