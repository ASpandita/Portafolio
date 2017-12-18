<!DOCTYPE html>
<html>
<head>
  <title>Consulta</title>
</head>
<body>
<form action="consultarecorrido.php" method="POST" id="cdr">
  Buscar recorrido:<br>
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
    $busqueda=mysqli_query($conexion,"SELECT id, zona, recorrido, observacion, time, finalizacion FROM recorrido WHERE id LIKE '%$busca%' OR zona LIKE '%$busca%'");
  }
  if ($delete!="") {
      $busqueda=mysqli_query($conexion,"DELETE FROM recorrido WHERE id='$busca'");
      echo '<script language=javascript>alert("Eliminado con exito")</script>';
    }
    error_reporting(0);
?>
<table width="805" border="1">
  <td width="50">ID</td>
  <td width="50">Zona</td>
  <td width="50">Recorrido</td>
  <td width="50">Observacion</td>
  <td width="50">Hora de inicio</td>
  <td width="50">Hora de finalizacion</td>

<?php
  while ($muestra=mysqli_fetch_array($busqueda)) {
    echo '<tr>';
    echo '<td>'.$muestra['id'].'</td>';
    echo '<td>'.$muestra['zona'].'</td>';
    echo '<td>'.$muestra['recorrido'].'</td>';
    echo '<td>'.$muestra['observacion'].'</td>';
    echo '<td>'.$muestra['time'].'</td>';
    echo '<td>'.$muestra['finalizacion'].'</td>';
  }
?>
</table>
</form>
</body>
</html>