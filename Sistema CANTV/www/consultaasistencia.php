<!DOCTYPE html>
<html>
<head>
  <title>Consulta</title>
</head>
<body>
<form action="consultaasistencia.php" method="POST" id="cdr">
  Buscar asistencia:<br>
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
    $busqueda=mysqli_query($conexion,"SELECT vigilante.cedula, vigilante.nombre, vigilante.apellido, asistencia.instalacion, asistencia.turno, asistencia.fecha FROM vigilante INNER JOIN asistencia ON vigilante.cedula=asistencia.cedula WHERE nombre LIKE '%$busca' OR fecha LIKE '%$busca'");
  }
  if ($delete!="") {
      $busqueda=mysqli_query($conexion,"DELETE FROM asistencia WHERE cedula='$busca'");
      echo '<script language=javascript>alert("Eliminado con exito")</script>';
    }
    error_reporting(0);
?>
<table width="900" border="1">
  <td width="50">Cedula</td>
  <td width="50">Nombre</td>
  <td width="50">Apellido</td>
  <td width="50">Instalacion</td>
  <td width="50">Turno</td>
  <td width="50">Fecha</td>

<?php
  while ($muestra=mysqli_fetch_array($busqueda)) {
    echo '<tr>';
    echo '<td>'.$muestra['cedula'].'</td>';
    echo '<td>'.$muestra['nombre'].'</td>';
    echo '<td>'.$muestra['apellido'].'</td>';
    echo '<td>'.$muestra['instalacion'].'</td>';
    echo '<td>'.$muestra['turno'].'</td>';
    echo '<td>'.$muestra['fecha'].'</td>';
  }
?>
</table>
</form>
</body>
</html>