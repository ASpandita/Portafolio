<!DOCTYPE html>
<html>
<head>
  <title>Consulta</title>
</head>
<body>
<form action="consulta.php" method="POST" id="cdr">
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
    $busqueda=mysqli_query($conexion,"SELECT vigilante.cedula, vigilante.nombre, vigilante.apellido, vigilante.celular, vigilante.sexo,  vigilante.cargo, vigilante.servicio, vigilante.direccion, vigilante.ingreso, instalaciones.codigo, instalaciones.tipoinstalacion, instalaciones.instalacion FROM vigilante INNER JOIN instalaciones ON vigilante.codigo_instalacion=instalaciones.codigo WHERE nombre LIKE '%$busca%' OR tipoinstalacion LIKE '%$busca%' OR instalacion LIKE '%$busca%'");
  }
  if ($delete!="") {
      $busqueda=mysqli_query($conexion,"DELETE FROM vigilante WHERE cedula='$busca'");
      echo '<script language=javascript>alert("Eliminado con exito")</script>';
    }
    error_reporting(0);
?>
<table width="1200" border="1">
  <td width="50">Cedula</td>
  <td width="50">Nombre</td>
  <td width="50">Apellido</td>
  <td width="65">Telf. de contacto</td>
  <td width="50">Sexo</td>
  <td width="50">Direccion</td>
  <td width="70">Fecha de ingreso</td>
  <td width="50">Cargo</td>
  <td width="50">Puesto de servicio</td>
  <td width="50">Tipo de instalacion</td>
  <td width="50">Nombre instalacion</td>
<?php
  while ($muestra=mysqli_fetch_array($busqueda)) {
    echo '<tr>';
    echo '<td>'.$muestra['cedula'].'</td>';
    echo '<td>'.$muestra['nombre'].'</td>';
    echo '<td>'.$muestra['apellido'].'</td>';
    echo '<td>'.$muestra['celular'].'</td>';
    echo '<td>'.$muestra['sexo'].'</td>';
    echo '<td>'.$muestra['direccion'].'</td>';
    echo '<td>'.$muestra['ingreso'].'</td>';
    echo '<td>'.$muestra['cargo'].'</td>';
    echo '<td>'.$muestra['servicio'].'</td>';
    echo '<td>'.$muestra['tipoinstalacion'].'</td>';
    echo '<td>'.$muestra['instalacion'].'</td>';
  }
?>
</table>
</form>
</body>
</html>