<!DOCTYPE html>
<html>
<head>
  <title>Consulta</title>
</head>
<body>
<form action="consultachofer.php" method="POST" id="cdr">
  Buscar vehiculo:<br>
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
    $busqueda=mysqli_query($conexion,"SELECT id, cedula_1, nombre, apellido, celular, marca, modelo, placa, cedulaayudante, nombreayudante, apellidoayudante FROM chofer WHERE nombre LIKE '%$busca%' OR id LIKE '%$busca%'");
  }
  if ($delete!="") {
      $busqueda=mysqli_query($conexion,"DELETE FROM chofer WHERE id='$busca'");
      echo '<script language=javascript>alert("Eliminado con exito")</script>';
    }
    error_reporting(0);
?>
<table width="1350" border="1">
  <td width="50">Id</td>
  <td width="50">Cedula</td>
  <td width="50">Nombre</td>
  <td width="50">Apellido</td>
  <td width="50">Celular</td>
  <td width="50">Marca</td>
  <td width="50">Modelo</td>
  <td width="50">Placa</td>
  <td width="50">Cedula Ayudante</td>
  <td width="50">Nombre Ayudante</td>
  <td width="50">Apellido Ayudante</td>

<?php
  while ($muestra=mysqli_fetch_array($busqueda)) {
    echo '<tr>';
    echo '<td>'.$muestra['id'].'</td>';
    echo '<td>'.$muestra['cedula_1'].'</td>';
    echo '<td>'.$muestra['nombre'].'</td>';
    echo '<td>'.$muestra['apellido'].'</td>';
    echo '<td>'.$muestra['celular'].'</td>';
    echo '<td>'.$muestra['marca'].'</td>';
    echo '<td>'.$muestra['modelo'].'</td>';
    echo '<td>'.$muestra['placa'].'</td>';
    echo '<td>'.$muestra['cedulaayudante'].'</td>';
    echo '<td>'.$muestra['nombreayudante'].'</td>';
    echo '<td>'.$muestra['apellidoayudante'].'</td>';
  }
?>
</table>
</form>
</body>
</html>