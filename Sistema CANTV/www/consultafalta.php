<!DOCTYPE html>
<html>
<head>
  <title>Consulta</title>
</head>
<body>
<form action="consultafalta.php" method="POST" id="cdr">
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
    $busqueda=mysqli_query($conexion,"SELECT vigilante.cedula, vigilante.nombre, vigilante.apellido, vigilante.cargo, vigilante.servicio, vigilante.codigo_instalacion, faltas.turno, faltas.fecha, faltas.motivo FROM vigilante INNER JOIN faltas ON vigilante.cedula=faltas.cedula1 WHERE cedula='$busca' OR nombre LIKE '%$busca'");
  }
  if ($delete!="") {
      $busqueda=mysqli_query($conexion,"DELETE FROM faltas WHERE cedula='$busca'");
      echo '<script language=javascript>alert("Eliminado con exito")</script>';
    }
    error_reporting(0);
?>
<table width="1130" border="1">
  <td width="60">Cedula</td>
  <td width="60">Nombre</td>
  <td width="60">Apellido</td>
  <td width="60">Cargo</td>
  <td width="60">Puesto de servicio</td>
  <td width="60">Codigo Instalacion</td>
  <td width="60">Turno</td>
  <td width="60">Fecha</td>
  <td width="60">Motivo</td>

<?php
  while ($muestra=mysqli_fetch_array($busqueda)) {
    echo '<tr>';
    echo '<td>'.$muestra['cedula'].'</td>';
    echo '<td>'.$muestra['nombre'].'</td>';
    echo '<td>'.$muestra['apellido'].'</td>';
    echo '<td>'.$muestra['cargo'].'</td>';
    echo '<td>'.$muestra['servicio'].'</td>';
    echo '<td>'.$muestra['codigo_instalacion'].'</td>';
    echo '<td>'.$muestra['turno'].'</td>';
    echo '<td>'.$muestra['fecha'].'</td>';
    echo '<td>'.$muestra['motivo'].'</td>';
  }
?>
</table>
</form>
</body>
</html>