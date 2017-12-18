-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2016 a las 14:01:21
-- Versión del servidor: 5.7.9
-- Versión de PHP: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cantv_seguridad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

DROP TABLE IF EXISTS `asistencia`;
CREATE TABLE IF NOT EXISTS `asistencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula` varchar(10) DEFAULT NULL,
  `instalacion` varchar(20) DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chofer`
--

DROP TABLE IF EXISTS `chofer`;
CREATE TABLE IF NOT EXISTS `chofer` (
  `id` varchar(10) NOT NULL,
  `cedula_1` int(11) DEFAULT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `apellido` varchar(15) DEFAULT NULL,
  `sexo` varchar(15) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `celular` bigint(20) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `modelo` varchar(20) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `cedulaayudante` int(11) DEFAULT NULL,
  `nombreayudante` varchar(20) DEFAULT NULL,
  `apellidoayudante` varchar(20) DEFAULT NULL,
  `celularayudante` bigint(20) DEFAULT NULL,
  `foto` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltas`
--

DROP TABLE IF EXISTS `faltas`;
CREATE TABLE IF NOT EXISTS `faltas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cedula1` varchar(11) DEFAULT NULL,
  `turno` varchar(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `motivo` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `falta_vigi`
--

DROP TABLE IF EXISTS `falta_vigi`;
CREATE TABLE IF NOT EXISTS `falta_vigi` (
  `cedula` double NOT NULL,
  `motivo` varchar(20) NOT NULL,
  PRIMARY KEY (`cedula`,`motivo`),
  KEY `faltas_falta_vigi_fk` (`motivo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instalaciones`
--

DROP TABLE IF EXISTS `instalaciones`;
CREATE TABLE IF NOT EXISTS `instalaciones` (
  `codigo` varchar(5) NOT NULL,
  `tipoinstalacion` varchar(25) DEFAULT NULL,
  `instalacion` varchar(25) NOT NULL,
  `telefono` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instalaciones`
--

INSERT INTO `instalaciones` (`codigo`, `tipoinstalacion`, `instalacion`, `telefono`) VALUES
('C01', 'Central', 'Urdaneta', '2617230887'),
('C14', 'Central', 'La Lago', '2617645100'),
('C03', 'Central', 'Bella Vista III', '2617939943'),
('C02', 'Central', 'Bella Vista I-II', '2617984626'),
('C11', 'Central', 'Delicias, Maracaibo', '2617511001'),
('C07', 'Central', 'Fronteras', '2617570905'),
('C04', 'Central', 'Coquivacoa', '2617421999'),
('C09', 'Central', 'Los Olivos', '2617533713'),
('C12', 'Central', 'San Miguel', '2617872428'),
('C10', 'Central', 'Industrias', '26173496'),
('C06', 'Central', 'San Francisco', '2617616111'),
('C13', 'Central', 'San Felipe', '2617313410'),
('C20', 'Central', 'La Villa', '2634511409'),
('C21', 'Central', 'Machiques', '2634734018'),
('C24', 'Central', 'Cabimas', NULL),
('C27', 'Central', 'Las Cabillas', '2643711664'),
('C26', 'Central', 'Delicias Nueva, Cabimas', '2642511159'),
('C25', 'Central', 'Ciudad Ojeda', '2656623889'),
('C41', 'Central', 'Paraguaipoa', NULL),
('C15', 'Movil', 'Los Haticos', '2617292903'),
('C17', 'Movil', 'Cuatricentenario', '2617556443'),
('C16', 'Movil', 'Panamericano', '2617550422'),
('C43', 'Movil', 'Amparo', '2617560037'),
('C08', 'Movil', 'El Trebol', '2617361259'),
('C19', 'Movil', 'La Cañada', '2622421002'),
('C28', 'Movil', 'Santa Cruz de Mara', '2628791453'),
('C05', 'Movil', 'Tamare de Mara', NULL),
('C18', 'Movil', 'El Mojan', NULL),
('C22', 'Movil', 'Santa Rita', NULL),
('C48', 'Centro Operativo', 'Sabaneta', '2617875967'),
('C60', 'O.E.P', 'Urdaneta', '2617298834'),
('C30', 'OAC Movilnet', 'Bella Vista', NULL),
('C53', 'OAC Movilnet', 'Salto Angel', NULL),
('C63', 'OAC Movilnet', 'Sambil', NULL),
('C66', 'OAC Movilnet', 'Cabimas Center', NULL),
('C31', 'MTX Movilnet', 'La Lago', NULL),
('C29', 'Oficina Administrativa', 'Tierra Negra', '2617985284'),
('C23', 'URL', 'Puertos de Altagracia', '266321837'),
('C68', 'URL', 'Tamare, Ciudad Ojeda', NULL),
('C46', 'Repetidora', 'Begote', NULL),
('C44', 'ERB', 'El Tablazo', NULL),
('C36', 'ERB', 'Lago MAR', '2617481060'),
('C35', 'ERB', 'La Concepcion', NULL),
('C67', 'ERB', 'Campo Boscan', '4263683304'),
('C39', 'ERB', 'Bachaquero', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `clave`) VALUES
('adrian', '123'),
('dnogue', 'cantvmay16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido`
--

DROP TABLE IF EXISTS `recorrido`;
CREATE TABLE IF NOT EXISTS `recorrido` (
  `zona` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  `recorrido` varchar(50) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  `time` varchar(10) NOT NULL DEFAULT '',
  `finalizacion` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`zona`,`id`),
  KEY `chofer_recorrido_fk` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reco_falta`
--

DROP TABLE IF EXISTS `reco_falta`;
CREATE TABLE IF NOT EXISTS `reco_falta` (
  `motivo` varchar(20) NOT NULL,
  `zona` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  PRIMARY KEY (`motivo`,`zona`,`id`),
  KEY `recorrido_reco_falta_fk` (`zona`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguridadfisica`
--

DROP TABLE IF EXISTS `seguridadfisica`;
CREATE TABLE IF NOT EXISTS `seguridadfisica` (
  `cedula` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(20) DEFAULT NULL,
  `celular` bigint(20) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `direccion` varchar(30) DEFAULT NULL,
  `ingreso` date DEFAULT NULL,
  `cargo_segu` varchar(20) DEFAULT NULL,
  `servicio_segu` varchar(20) DEFAULT NULL,
  `codigo_instalacion` varchar(6) DEFAULT NULL,
  `foto` text,
  PRIMARY KEY (`cedula`)
) ENGINE=MyISAM AUTO_INCREMENT=19747480 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `segu_insta`
--

DROP TABLE IF EXISTS `segu_insta`;
CREATE TABLE IF NOT EXISTS `segu_insta` (
  `codigo` varchar(5) NOT NULL,
  `cedula` double NOT NULL,
  PRIMARY KEY (`codigo`,`cedula`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vigilante`
--

DROP TABLE IF EXISTS `vigilante`;
CREATE TABLE IF NOT EXISTS `vigilante` (
  `cedula` varchar(8) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(25) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `direccion` varchar(120) DEFAULT NULL,
  `ingreso` date DEFAULT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `servicio` varchar(30) DEFAULT NULL,
  `codigo_instalacion` varchar(5) DEFAULT NULL,
  `foto` text,
  PRIMARY KEY (`cedula`)
) ENGINE=MyISAM AUTO_INCREMENT=24329741 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vigilante`
--

INSERT INTO `vigilante` (`cedula`, `nombre`, `apellido`, `celular`, `sexo`, `direccion`, `ingreso`, `cargo`, `servicio`, `codigo_instalacion`, `foto`) VALUES
('12406064', 'Ramiro Jose', 'Puentes Perozo', '2617564470', 'Masculino', 'BARRIO SAN RAFAEL CALLE 111a CASA 19B-21', '2016-02-01', 'Vigilante', 'Transporte', 'C48', 'ramirojose.png'),
('5162858', 'Gustavo Jose', 'Chacin Rodriguez', '4164686062', 'Masculino', 'SECTOR CUATRICENTENARIO, BARRIO DIA DE LAS MADRES, CALLE 95H, CASA 80-06', '2016-02-01', 'Vigilante Privado', '', 'C48', 'gustavochacin.png'),
('11875957', 'Luis Angel', 'Gonzalez', '4265605133', 'Masculino', 'BARRIO BRISA DE LA VANEGA, CALLE 99U-13 CON AV. 67A No 67A-27', '2016-02-01', 'Vigilante Privado', '', 'C48', 'luisangel.png'),
('20691098', 'Johan Ramon', 'Nava Becerra', '4266220575', 'Masculino', 'AV 17 LOS HATICOS POR ABAJO CALLE #118 CASA #17B-111 PARROQUIA CRISTO DE ARANZA', '2016-02-01', 'Vigilante Privado', '', 'C48', 'johanramon.png'),
('5837474', 'Eddy Jose', 'Romero Vergara', '2617344192', 'Masculino', 'URB LA PORTUARIA CALLE 3 CASA 11-53 SAN FRANCISCO EDO. ZULIA', '2016-02-01', 'Vigilante Privado', '', 'C48', 'eddyjose.png'),
('14630784', 'Edward Rolando', 'Perez Diaz', '4246000187', 'Masculino', 'SECTOR FRANCISCO DE MIRANDA, CALLE 79F No 67-50', '2016-02-01', 'Vigilante Privado', '', 'C48', 'edwardrolando.png'),
('5800523', 'Jose Antonio', 'Gutierrez Corzo', '4262620309', 'Masculino', 'B. ELOY PARRAGA VILLAMARIN, CALLE: 9A, No 10-18. SAN FCO', '2016-02-01', 'Vigilante Privado', '', 'C48', 'joseantonio.png'),
('12217032', 'Henry Daniel', 'Garcia', '4246312667', 'Masculino', 'B. SAN PEDRO SECTOR SABANETAAV.50C ENTRE CALLE 101A Y TAPON CASA#101A-23 MCBO', '2016-02-01', 'Vigilante Privado', '', 'C48', 'henrydaniel.png'),
('11875413', 'Andrium de Jesus', 'Castellano Montana', '2612118853', 'Masculino', 'BARRIO MERI SANCHEZ CALLE 791, CASA#131a-33', '2016-02-01', 'Vigilante Privado', '', 'C48', 'andrium.png'),
('12869890', 'Heberto Simon', 'Ontivero Oviedo', '4126604789', 'Masculino', 'SECTOR SABANETA BARRIO SAN PEDRO AV 50 #100-450', '2016-02-01', 'Vigilante Privado', '', 'C48', 'heberto.png'),
('21230775', 'Edinger Anibal', 'Sanchez Gonzalez', '4146615266', 'Masculino', 'SECTOR SABANETA BARRIO SAN PEDRO AV 50 #100-450', '2016-02-15', 'Vigilante Privado', 'Garita 2', 'C48', 'edinger.png'),
('7807519', 'Carlos Antonio', 'Bermudez Morillo', '2617869661', 'Masculino', 'BARRIO SIMON BOLIVAR CALLE 99B #61-50', '2016-02-29', 'Vigilante Privado', 'Garita', 'C48', 'carlosantonio.png'),
('18495040', 'Yorgelis Johana', 'Cardenas Fuenmayor', '4149687695', 'Femenino', 'Urb. Cuatricentenario, sector 1, Vereda 08 casa 08, Maracaibo.', '2016-03-23', 'Vigilante Privado', '', 'C48', 'yorgelis.png'),
('16624284', 'Levi Enrique', 'Castillo Guerra', '4122910578', 'Masculino', 'SIERRA MAESTRA AV.18, C/CALLE 23 CASA 18-0 SAN FRANCISCO. EDO ZULIA', '2016-03-24', 'Vigilante Privado', '', 'C48', 'leiver.png'),
('20835442', 'Eduardo Jesus', 'Rodriguez Olivetti', '4246124010', 'Masculino', 'BARRIO LA POLAR, AV. 48D, CASA 187-15 SAN FRANCISCO EDO. ZULIA', '2016-03-24', 'Vigilante Privado', '', 'C48', 'eduardojesus.png'),
('5833793', 'Rolando Enrique', 'Azuaje Mora', '2613271004', 'Masculino', 'AV. 19, CALLE 103, CALLEJON SAN SIMON, SECTOR POMONA. MARACAIBO EDO. ZULIA', '2016-03-28', 'Vigilante Privado', '', 'C48', 'rolandoenrique.png'),
('20779680', 'Hernan Alfonzo', 'Andrade Perez', '4246706085', 'Masculino', 'SECTOR POMONA, BARRIO LOS ANDES, AV. 19F, CALLE 109, CASA 109-08. MARACAIBO', '2016-03-28', 'Vigilante Privado', '', 'C48', 'hernanalfonzo.png'),
('16197342', 'Robert Xavier', 'Coello', '4269652592', 'Masculino', '', '2016-04-12', 'Vigilante Privado', '', 'C48', 'robertxavier.png'),
('24329740', 'Antohony Jhonson', 'Moreno Hernandez', '4244617590', 'Masculino', 'CALLE 89A CASA 10-53 SECTOR VERITAS', '2016-04-25', 'Vigilante Privado', '', 'C48', ''),
('22056788', 'Mauro Jesus', 'Moran Peley', '2617550146', 'Masculino', 'BARRIO MI ESPERANZA CALLE 76 CASA 107-119', '2016-02-01', 'Vigilante Privado', 'Garita', 'C15', 'mauro.png'),
('7978005', 'Manuel Ramon', 'Linares Bravo', '2613263541', 'Masculino', 'SECTOR ARISMENDIE. 98B CASA # 19B-1-37', '2016-02-01', 'Vigilante Privado', 'Garita', 'C15', 'manuelroman.png'),
('4143609', 'Rafael Angel', 'Galban Negretti', '1', 'Masculino', 'AV. LA LIMPIA CALLE BESARABÍA CASA # 19-894', '2016-02-01', 'Vigilante Privado', 'Garita', 'C15', 'rafaelangel.png'),
('5176343', 'Arleny de Jesus', 'Gelvez Puche', '4162414293', 'Masculino', 'URB. URDANETA VEREDA 30 CALLE 2 # 1', '2016-02-01', 'Vigilante Privado', 'Garita', 'C15', 'arleny.png'),
('25279361', 'Luis Carlos', 'Mejia Blanco', '2612119993', 'Masculino', 'BARRIO DIA DE LAS MADRES CALLE 95E,CASA #80-59', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C01', 'luiscarlos.png'),
('16708231', 'Kenny David', 'Morales Medina', '4161673266', 'Masculino', 'URB LAS PIRAMIDES CALLE 103 AV POMONA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C14', ''),
('3779005', 'Esdras Valentin', 'Gonzalez Ferrer', 'N/A', 'Masculino', 'CALLE 91-B #2-42 SANTA LUCIA', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C01', ''),
('7709014', 'Alfredo Antonio', 'Lopez Chavez', '04162270843', 'Masculino', 'CALLE 91 # 9-55 SECTOR VERITA', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C01', ''),
('4756339', 'Freddy Joel', 'Pirela Montiel', '04165953028', 'Masculino', 'BARRIO LOS ROBLES AV 63B# 113-29', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C01', ''),
('9748574', 'Jesus Enrique', 'Quintero', '04269233358', 'Masculino', 'BARRIO MI ESPERANZA CALLE # 76 CASA # 107-60', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C60', ''),
('8405631', 'Jose Manuel', 'Gonzalez Mejia', '02622054543', 'Masculino', 'Santa Cruz de Mara', '2016-02-01', 'Oficial de Seguridad', 'Area Tecnica', 'C60', ''),
('14631161', 'Hanover Dubine', 'Henrique Pirela', '04163651208', 'Masculino', 'Hasticos por abajo AV 17 sector gustavo sig', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C14', ''),
('11860129', 'Luis Domingo', 'Andrade', '04162637003', 'Masculino', 'Urb. cuatricentenario, sector 3 vereda 42 casa #18 maracaibo', '2016-02-01', 'Vigilante Privado', '', 'C14', ''),
('5817004', 'Maximo Antonio', 'Moran Ortega', '04168643338', 'Masculino', 'AV los haticos por arriba sector corito #23-27', '2016-02-05', 'Vigilante Privado', '', 'C14', ''),
('13610027', 'Nelio Enrique ', 'Quintero Nucette', '02618083834', 'Masculino', 'calle 92, casa #2B-32 sector, santa lucia', '2016-02-01', 'Vigilante Privado', '', 'C30', ''),
('5821098', 'Jorge Antonio', 'Soto Avila', '04146818435', 'Masculino', 'barrio maria concepcion palacios calle 106 av 33 casa#33b-30 sector pomona', '2016-02-01', 'Vigilante Privado', '', 'C30', ''),
('10318814', 'Jorge Luis', 'Ortega Marquez', '041696672278', 'Masculino', 'barrio altos de milagro norte calle 35-c casa#6g-118 mcbo edo zulia', '2016-02-01', 'Vigilante Privado', '', 'C30', ''),
('9798468', 'Olivia Coromoto', 'Chourio Leon', '04126621998', 'Masculino', 'sierra maestra av21 calle 9a casa 9a 38', '2016-03-08', 'Vigilante Privado', '', 'C30', ''),
('19695531', 'Yoendry Jose', 'Chirino Franco', '04246910816', 'Masculino', '', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C53', ''),
('10421533', 'Arturo Jose ', 'Diaz Valero', '04167644309', 'Masculino', 'av 3f #84-148 sector valle frio', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C53', ''),
('6802475', 'Oscar Jesus', 'Reinoza Flores', '04265631553', 'Masculino', 'circunvalacion#2 barrio simon bolivar av 99b-1 casa 59-65', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C03', ''),
('6833160', 'Eladio Jose', 'Reyes Mendez', '04269238312', 'Masculino', 'barrio cuatricentenario av 65b #95d-42', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C03', ''),
('11389944', 'Antonio Jose', 'Medina Fuenmayor', '04268610451', 'Masculino', 'b. santa rosa, calle34, casa 34-174. maracaibo', '2016-02-17', 'Vigilante Privado', 'Estacionamiento', 'C03', ''),
('13234008', 'Angel Alberto', 'Gonzalez Gomez', '0424762933', 'Masculino', 'barrio simon bolivar av 99b #61-24', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C31', ''),
('11884256', 'Victor Rafael', 'Rodriguez Bravo', '02617882574', 'Masculino', 'av circunvalacion 162 barrio tsora rojas av 99-a', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C31', ''),
('9182230', 'Pablo Emilio', 'Molina Hernandez', '04166684350', 'Masculino', 'Tariba Estado Tachira', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C31', ''),
('14833593', 'Joel Jose', 'Gil Conde', '0416232696', 'Masculino', 'barrio simon bolivar calle 998-1 casa #59-65 av circunvalacion #2', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C31', ''),
('7697371', 'Euro Enrique', 'Gonzalez Brice&#241;o', '02617494717', 'Masculino', 'barrio motocros av36 casa 16a 346 detras de casa italia', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C02', ''),
('17834912', 'Jean Carlos', 'Morillo Villalobos', '0424662340', 'Masculino', 'calle 89e #14-07 sector belloso', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C02', ''),
('14356364', 'Dervis Enrique', 'Rojas Luque', '04166621033', 'Masculino', 'calle 94b #72-98 barrio prc mcbo', '2016-02-01', 'Vigilante Privado', 'Estacionamiento', 'C02', ''),
('12047526', 'Armin Alexander', 'Gonzalez Escalona', '02617550433', 'Masculino', 'barrio raul leoni calle 76', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C02', ''),
('13975104', 'Jose de Jesus', 'Nu&#241;ez', '04265601561', 'Masculino', 'barrio integracion comunal', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C02', ''),
('7771566', 'Fabio Enrique', 'Baez', '04266181604', 'Masculino', 'urb. cuatricentenario sector #1 vereda 31 casa #02', '2016-02-01', 'Oficial de Seguridad', 'Estacionamiento', 'C02', ''),
('5169710', 'William Jose', 'Hernandez', '04166645802', 'Masculino', 'barrio panamericano, av. 84 casa #69-245 mcbo zulia', '2016-02-01', 'Vigilante Privado', '', 'C02', ''),
('14236778', 'Ana Kelimar de los Angeles', 'Soto Carrizo', '04268577534', 'Femenino', 'av 10 con calle j#10-67 monte bello', '2016-02-01', 'Vigilante Privado', 'Recepcion', 'C29', ''),
('11286409', 'Ewin Jose ', 'Ortega Blanco', '04267615773', 'Femenino', 'santa rosa de agua av 6 bella vista codigo postal 4002', '2016-02-01', 'Vigilante Privado', 'Recepcion', 'C29', ''),
('9788889', 'Luis Alberto', 'Maldonado Rodriguez', '04160683415', 'Masculino', 'barrio la vanega av 101 101#25 casa', '2016-02-01', 'Vigilante Privado', 'Estacionamiento', 'C29', ''),
('15410223', 'Ricardo Ramon', 'Ruiz Bellorin', '04262645457', 'Masculino', 'barrio la guajirita calle 13 casa#13-54', '2016-02-01', 'Oficial de Seguridad', 'Estacionamiento', 'C29', ''),
('7832997', 'Carlos Cherry', 'Nammour Diaz', '04269677950', 'Masculino', 'barrio las madres calles 95 N-80-70', '2016-02-01', 'Vigilante Privado', 'Garita', 'C11', ''),
('12870268', 'Jaime Eduardo', 'Urdaneta A&#241;ez', '04164685594', 'Masculino', 'centro socorro ca&#241;ada honda calle 96f casa 19c-42', '2016-02-01', 'Vigilante Privado', 'Garita', 'C11', ''),
('5796977', 'Julio Nolvis', 'Valencia Fonseca', '02617531200', 'Masculino', 'barrio panamericano', '2016-02-01', 'Vigilante Privado', 'Garita', 'C11', ''),
('19074877', 'Darwin Jesus', 'Sanchez Duque', '04261678515', 'Masculino', 'barrio jose casiano losada, calle 80 casa 108a-96 parroquia antonio borjas romero', '2016-02-01', 'Vigilante Privado', 'Garita', 'C11', ''),
('9737497', 'Ruperto', 'Pirela', '04165607392', 'Masculino', 'BARRIO LA ROSITA PARROQUIA VENANCIO PULGA AV 102-8 CASA # 53-56', '2016-02-01', 'Vigilante Privado', 'Garita', 'C07', ''),
('7757379', 'Tirso Aniceto', 'Trejo', '04269636837', 'Masculino', 'BARRIO RAUL LEONI AV 95A # 99E-27 PARROQUIA ANTONIO BORJAS ROMERO', '2016-02-01', 'Vigilante Privado', 'Garita', 'C07', ''),
('20945955', 'Victor Alfonzo', 'Castro Gonzalez', '0412666979', 'Masculino', '', '2016-02-01', 'Vigilante Privado', 'Garita', 'C07', ''),
('5817276', 'Francisco Jose', 'Perez Castro', '04160632428', 'Masculino', 'AV. 88 #79I - 108 URB. LA FLORESTA', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C07', ''),
('15069730', 'Renny Joel', 'Blanco Hernandez', '04269660179', 'Masculino', 'barrio la revancha calle 79 casa n-108e-71', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C63', ''),
('11284418', 'Juan Carlos', 'Valbuena', '04246174370', 'Masculino', 'Urb. udon perez, ciudad lossada, casa 2-17', '2016-02-16', 'Vigilante Privado', 'Garita', 'C63', ''),
('15887636', 'Luis Alberto', 'Ruiz Perozo', '04246192119', 'Masculino', 'Sector 18 de octubre av. 7 calle: S casa#s-45', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C63', ''),
('7824842', 'Jesus Emilio', 'Cegarra Faneite', '04246915808', 'Masculino', 'URB pomona calle A casa m-3', '2016-02-01', 'Vigilante Privado', 'Garita', 'C04', ''),
('18576038', 'Jose Luis', 'Garay Ocando', '04146529376', 'Masculino', 'barrio sur america av 54 calle 149 casa# 53-50', '2016-02-01', 'Vigilante Privado', 'Garita', 'C04', ''),
('12305886', 'Alvis Enrique', 'Arevalo Quero', '04147418401', 'Masculino', '18 DE OCTUBRE SECTOR EL VALLE ENTRE AV 6Y7 CALLE R # 7-38', '2016-02-01', 'Vigilante Privado', 'Garita', 'C04', ''),
('10451272', 'Americo Alonso', 'Morillo Bosca', '04261237654', 'Masculino', 'Barrio divino ni&#241;o calle 162 av 33', '2016-02-01', 'Vigilante de Seguridad', 'Estacionamiento', 'C04', ''),
('12098100', 'Nelson Enrique', 'Gonzalez Mejias', '04146073085', 'Masculino', 'Urb san jacinto sector 5 vereda 06 casa# 03 ', '2016-02-01', 'Vigilante Privado', 'Estacionamiento', 'C04', ''),
('5053621', 'Nestor Jesus ', 'Gonzalez', '04263613788', 'Masculino', 'av los haticos por arriba sector corito casa# 114-148', '2016-02-01', 'Vigilante Privado', 'Estacionamiento', 'C04', ''),
('1300361', 'Pedro Javier', 'Brice&#241;o Morillo', '04265600616', 'Masculino', 'Barrio jose felix rivas av 110 con calle 70 #70-118', '2016-02-01', 'Vigilante Privado', 'Estacionamiento', 'C04', ''),
('14356278', 'Johan Jose', 'Estrada Ferrer', '04160857343', 'Masculino', 'Barrio 18 de octubre, calle R, entre av 6 y 7, casa 161, Maracaibo', '2016-02-01', 'Vigilante Privado', 'Estacionamiento', 'C04', ''),
('18744190', 'Willian Antonio', 'Bracho Garcia', '04246091153', 'Masculino', 'Sector Panamericano calle 71 casa #51-127 frente al ince', '2016-02-01', 'Vigilante Privado', 'Garita', 'C36', ''),
('7611250', 'Jose Rafael', 'Salas Bermudez', '0261722521', 'Masculino', 'Detras del seguro de veritas, sector bella vista', '2016-03-18', 'Vigilante Privado', '', 'C36', ''),
('14475613', 'Gerry Anderson', 'Rodriguez Paz', '04246000863', 'Masculino', 'Barrio de 18 de octubre sector el valle, av 7 y 8, calle s casa 8-54', '2016-02-15', 'Vigilante Privado', 'Garita', 'C36', ''),
('11860508', 'Dagoberto Jose', 'Montiel Davila', '04160266423', 'Masculino', 'Barrio Raul Leoni Av 95a #79e-31', '2016-02-01', 'Vigilante Privado', 'Garita', 'C17', ''),
('9357114', 'Jose Encarnacion', 'Valbuena Trejo', '04268223988', 'Masculino', 'KM. 20 VIA CONCEPCIÓN LA PAZ, CASA N° 97-A74. MUNICIPIO JESUS ENRIQUE LOSADA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C17', ''),
('5713399', 'Alexis de Jesus', 'Gonzalez Rodriguez', '04266185191', 'Masculino', 'Barrio la pastora calle 95g casa 54-32 maracaibo', '2016-02-01', 'Vigilante Privado', 'Garita', 'C17', ''),
('17180024', 'Jimmy Ramon', 'Salas Aguirre', '04267324144', 'Masculino', '', '2016-04-13', 'Vigilante Privado', '', 'C17', ''),
('7767731', 'Hugo Ramon', 'Bohorquez Chourio', '04146742171', 'Masculino', 'Ziruma calle 59D casa 15c-78', '2016-02-01', 'Vigilante Privado', 'Garita', 'C09', ''),
('12759631', 'Alirio', 'Gonzalez', '04162240611', 'Masculino', 'BARRIO EL SAMIDE DE SECTOR MERY SANCHEZ DE UGA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C09', ''),
('9129495', 'Robinson Antonio', 'Duque', '04263636119', 'Masculino', 'BARRIO EL SAMIDE SECTOR JOSE PAEZ CASA # 131-184, CALLE 79A', '2016-02-01', 'Vigilante Privado', 'Garita', 'C09', ''),
('5826405', 'Larri Antonio', 'Gotopo Alcantara', '04169033129', 'Masculino', '', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C09', ''),
('7691924', 'Rafael Segundo', 'Molina Carmona', 'N/A', 'Masculino', 'Barrio modelo sector marite casa 78a-36', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C09', ''),
('7785142', 'Luis Felipe', 'Gonzalez Viloria', '04267010247', 'Masculino', 'Barrio Raul leoni 77# 92-35', '2016-02-01', 'Vigilante Privado', 'Garita', 'C09', ''),
('7831825', 'Gabriel Adolfo', 'Urdaneta Anciani', '02619968187', 'Masculino', 'URBANIZACION SAN FCO SECTOR 06 # 16 VEREDA 81', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C09', ''),
('19987201', 'Jony Jose', 'Lubo', '04121067873', 'Masculino', 'Sector francisco de miranda calle 80B casa 62-20', '2016-03-09', 'Vigilante Privado', 'Area Tecnica', 'C09', ''),
('14305124', 'Dixon Antonio', 'Pirela Azuaje', '04246890497', 'Masculino', 'Sector El muro del marite', '2016-02-01', 'Vigilante Privado', '', 'C09', ''),
('9728849', 'Jim ', 'Rangel Rangel', '04162221772', 'Masculino', 'Barrio modelo calle 109-74c #109-04', '2016-02-01', 'Vigilante Privado', 'Garita', 'C16', ''),
('16426560', 'Neudo Jose', 'Vivas', '04146871872', 'Masculino', 'BARRIO SANTA INES AV 143A CON CALLE 79D-1 # 143-A -85 MCBO', '2016-02-01', 'Vigilante Privado', 'Garita', 'C16', ''),
('16624429', 'Neiro Jesus ', 'Barrueta', '04146301441', 'Masculino', 'La rinconada calle 6 #1-90', '2016-02-01', 'Vigilante Privado', 'Garita', 'C16', ''),
('7932222', 'Melecio de Jesus', 'Pirela', '04162305846', 'Masculino', 'Barrio la rosita av 102c con calle 57', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C16', ''),
('14136406', 'Oswaldo Enrique', 'Moronta Bravo', '04260600669', 'Masculino', 'CALLE 89C #3-81 SECTOR BELLOSO ANTES MADUE&#209;O', '2016-02-01', 'Vigilante Privado', 'Garita', 'C43', ''),
('7603815', 'Douglas Coromoto', 'Mendoza Campos', '02617665188', 'Masculino', 'Barrio San jose av 37 92F #21A71', '2016-02-01', 'Vigilante Privado', 'Garita', 'C43', ''),
('19308363', 'Morgan Jesus', 'Boscan Fernandez', '02617311494', 'Masculino', 'B. 24 de Julio, calle 170 con 56, casa N° 170-56', '2016-02-29', 'Vigilante Privado', 'Garita', 'C43', ''),
('5592828', 'Juan Jose', 'Rivera Reyes', '02617884693', 'Masculino', 'Barrio el progreso calle 97D', '2016-02-01', 'Vigilante Privado', 'Garita', 'C12', ''),
('14006781', 'Darwin Jose', 'Medina Garcia', '04269258051', 'Masculino', 'BARRIO EL PROGRESO AV.84B CASA 120', '2016-02-01', 'Vigilante Privado', 'Garita', 'C12', ''),
('10444481', 'Jose Enrique', 'Saavedra Rincon', '04164619241', 'Masculino', 'SECTOR CA&#209;ADA HONDA AV.42 CASA 92-50 PARROQUIA CASIQUE MARA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C12', ''),
('5823341', 'Alexi Gregorio', 'Cueto Espinoza', '02615232449', 'Masculino', 'Urb el callao av 49H #175-24', '2016-02-01', 'Vigilante Privado', 'Garita', 'C08', ''),
('9788950', 'Alberto David', 'Araque Brice&#241;o', '04169108736', 'Masculino', 'Barrio integracion comunal brice&#241;o', '2016-02-01', 'Vigilante Privado', 'Garita', 'C08', ''),
('22082743', 'Jorge Luis', 'Garay', '04161142626', 'Masculino', 'Barrio integracion comunal', '2016-02-10', 'Vigilante Privado', 'Garita', 'C08', ''),
('6350824', 'Luis Crescencio', 'Rodriguez Parra', '04146061365', 'Masculino', 'Barrio 6 de enero av 59B-2 casa#117-87', '2016-02-01', 'Vigilante Privado', 'Garita', 'C08', ''),
('5805160', 'Marco Sergio', 'Aguirre Araujo', '04163624522', 'Masculino', 'BARRIO CORAZON DE JESUS, AV. 23, CASA # 3-111 SAN FRANCISCO EDO. ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C10', ''),
('13495968', 'Alexander Rafael', 'Reyes Ochoa', '04146427132', 'Masculino', 'BARRIO SANTA INES DEL SUR AV. 42C ENTRE CALLE 129 A-05', '2016-02-01', 'Vigilante Privado', 'Garita', 'C10', ''),
('4663436', 'Antonio Jose', 'Barazarte', '04261661283', 'Masculino', 'sierra maestra calle 4 av 9 sector los silos', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C10', ''),
('14207189', 'Jhon Enrique', 'Romero Torres', '04146918421', 'Masculino', 'BARRIO SAN SEBASTIAN AV PRINCIPAL CALLE 47 CASA #47-90', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C10', ''),
('9197998', 'Yuglis Enrique', 'Pirela Gonzalez', '04169610323', 'Masculino', 'BARRIO EL SAMIDE SECTOR JOSE PAEZ CASA # 131-184, CALLE 79A', '2016-02-01', 'Vigilante Privado', 'Garita', 'C10', ''),
('9745155', 'Daniel Abdias', 'Pe&#241;a Hernandez', '04269638122', 'Masculino', 'Urb san felipe calle 10 blq 6 edif 2', '2016-02-01', 'Vigilante Privado', 'Garita', 'C06', ''),
('10441668', 'Victor Jose ', 'Saez Colina', '04267675041', 'Masculino', 'SECTOR DIVINO NI&#209;O AV 34 CALLE 162 CASA #162-48', '2016-02-01', 'Vigilante Privado', 'Garita', 'C06', ''),
('12694827', 'Mauro Enrique', 'Rojas Rojas', '04167678287', 'Masculino', 'BARRIO CADONAL SUR CALLE 111# DE CASA 54B-07', '2016-02-01', 'Vigilante Privado', 'Garita', 'C06', ''),
('15052521', 'Marlene Elizabeth', 'Sanchez Manotas', '04241453572', 'Masculino', 'Comunidad primaveras del sol san fco zulia', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C06', ''),
('14562486', 'Edward Javier', 'Inciarte Pimentel', '04166667166', 'Masculino', 'URB SAN FRANCISCO SECTOR DIVINO NI&#209;O AV 32, CASA#162A-54 MCBO EDO.ZULIA', '2016-02-01', 'Vigilante Privado', '', 'C06', ''),
('11861094', 'Wilfredo Enrique', 'Sanchez Parra', '04169619975', 'Masculino', 'Urb san francisco sector 08 vereda 11 casa 03', '2016-02-01', 'Vigilante Privado', '', 'C06', ''),
('5813700', 'Luis Guillermo', 'Sanchez', '04266674858', 'Masculino', 'URB SAN FELIPE BLOQUE 43 EDIFICIO 02 APTO 01-04 MUNICIPIO SAN FCO', '2016-02-01', 'Vigilante Privado', 'Garita', 'C06', ''),
('10475674', 'Hugo Jose ', 'Valero Hidalgo', '04246143176', 'Masculino', 'BARRIO COLINA  BOLIVARIANA, AV. 42 B CASA 35C-77  PARROQUIA SAN FRANCISCO', '2016-02-01', 'Vigilante Privado', 'Garita', 'C13', ''),
('12873762', 'Jose Luis', 'Moreno Marquez', '0416638396', 'Masculino', 'SAN FRANCISCO, SECTOR DIVINO NI&#209;O AV. 33 CALLE 163 CASA # 163-71', '2016-02-01', 'Vigilante Privado', 'Garita', 'C13', ''),
('9792152', 'Yosnardi Jose', 'Pacheco Viloria', '04263006681', 'Masculino', 'PARCELAMIENTO VILLA RICA, CALLE 162 CASA 45a-32 SAN FRANCISCO', '2016-02-01', 'Vigilante Privado', '', 'C13', ''),
('17544180', 'Irwin Segundo', 'Romero Romero', '04166662692', 'Masculino', 'Barrio 24 de julio san francisco', '2016-02-01', 'Vigilante Privado', '', 'C13', ''),
('5040750', 'Asnaldo Antonio', 'Gonzalez Bermudez', '04164610412', 'Masculino', 'LA CA&#209;ADA DE URDANETA PARROQUIA CHINQUINQUIRA, SECTOR PALMAREJO', '2016-02-01', 'Vigilante Privado', 'Garita', 'C19', ''),
('10425333', 'Richard Antonio', 'Hernandez Perea', '04268004955', 'Masculino', 'LA CA&#209;ADA DE URDANETA SECTOR VILLA CAMELIA CASA M2-23', '2016-02-01', 'Vigilante Privado', 'Garita', 'C19', ''),
('13297493', 'Fernando Antonio', 'Cardozo Valero', '04260650389', 'Masculino', 'SECTOR LOS POZOS PALITO DE MIEL AV PRINCIPAL CASA # S/N MUNICIPIO LA CA&#209;ADA DE URDANETA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C19', ''),
('7891128', 'Nixo Jose', 'Montero Morales', '04246479628', 'Masculino', 'Parroquia Concepción, sector los pozos, municipio la Ca&#241;ada de Urdaneta Estado Zulia.', '2016-03-16', 'Vigilante Privado', '', 'C19', ''),
('10917024', 'Jose Benito', 'Carroz Villasmil', '04246573145', 'Masculino', '', '2016-04-16', 'Vigilante Privado', '', 'C19', ''),
('3969740', 'Efrain Ernesto', 'Ortiz Graterol', '04263615472', 'Masculino', 'SECTOR CUJIZAL VIA PALITO BLANCO PARCELA 24', '2016-02-01', 'Vigilante Privado', 'Garita', 'C35', ''),
('7480876', 'Arcadio', 'Gutierrez', '04246865953', 'Masculino', '', '2016-04-16', 'Vigilante Privado', '', 'C35', ''),
('12218139', 'Jose Luis', 'Palmar', '04262692928', 'Masculino', 'VIA CARRASQUERO A CAMPO MARA A SANTA LUCIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C28', ''),
('18201795', 'Jose Noe', 'Gonzalez', '04166602583', 'Masculino', '', '2016-02-01', 'Vigilante Privado', 'Garita', 'C28', ''),
('9764591', 'Almicar', 'Palmar', '04262692928', 'Masculino', 'SANTA LUCIA VIA CARRASQUERO SECTOR EL 40', '2016-02-01', 'Vigilante Privado', 'Garita', 'C28', ''),
('7762773', 'Yrwin Jose ', 'Morales', '04262692928', 'Masculino', '', '2016-04-05', 'Vigilante Privado', 'Garita', 'C28', ''),
('18284274', 'Edixon Enrique', 'Gonzalez Gonzalez', '04266007099', 'Masculino', 'AV 10 CON CALLE J # 10-67 MONTE BELLO', '2016-02-01', 'Vigilante Privado', 'Garita', 'C05', ''),
('18281493', 'Luis Angel', 'Gonzalez Gonzalez', '04162623886', 'Masculino', 'PARROQUIA TAMARE LOS MECOQUES SECTOR EL POZO', '2016-02-01', 'Vigilante Privado', 'Garita', 'C05', ''),
('17183765', 'Gilmar Jose', 'Hernandez Carrazo', '04261680053', 'Masculino', 'EL MOJAN PARROQUIA TAMARE', '2016-02-01', 'Vigilante Privado', 'Garita', 'C05', ''),
('15380188', 'Yuin Jose', 'Brice&#241;o', '04267678998', 'Masculino', 'Km. 28 VÍA EL MOJAN, CASA SIN NUMERO', '2016-02-16', 'Vigilante Privado', 'Garita', 'C18', ''),
('16352704', 'David Julio', 'Parra Navea', '04163615197', 'Masculino', 'EL MOJAN,  AV. 6, SECTOR CALLECITA, MUNICIPIO MARA DEL ESTADO ZULIA', '2016-03-31', 'Vigilante Privado', '', 'C18', ''),
('11282108', 'Ender Domingo', 'Hernandez Perozo', 'N/A', 'Masculino', 'sector varia blanca', '2016-02-01', 'Vigilante Privado', 'Garita', 'C41', ''),
('12218140', 'Jose Antonio', 'Gonzalez Palmar', '04161644705', 'Masculino', 'EL MOJAN, SECTOR GUAICUCO, MUNICIPIO MARA DEL EDO. ZULIA', '2016-03-14', 'Vigilante Privado', '', 'C41', ''),
('5047350', 'Luis Ernesto', 'Antunez Chavez', '04268348325', 'Masculino', 'PALITO BLANCO SECTOR LO DE DORIA CALLE LOS LOCOS CASA N-  B-225', '2016-02-01', 'Vigilante Privado', 'Garita', 'C67', ''),
('11662543', 'Manuel Javier', 'Montero Colina', '04269651755', 'Masculino', 'SECTOR SAN JOSE MUNICIPIO ROSARIO DE PERIJA EDO. ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C20', ''),
('20686076', 'Jose Daniel', 'Molina Navarro', '04262601037', 'Masculino', 'SECTOR 2 DE FEBRERO ENTRE CALLE 21-22 DE LA AV 09', '2016-02-01', 'Vigilante Privado', 'Garita', 'C20', ''),
('24950475', 'Carlos Luis ', 'Graterol Gonzalez', '04263865795', 'Masculino', 'AV PRINCIPAL ILAPECA CALLE#04 CASA S/N', '2016-02-01', 'Vigilante Privado', 'Garita', 'C20', ''),
('4991293', 'Carlos Luis', 'Graterol Sulbaran', '04263865798', 'Masculino', 'AV PRINCIPAL ILAPECA CALLE # 04 CASA S/N', '2016-02-01', 'Vigilante Privado', 'Garita', 'C20', ''),
('9523321', 'Jose Gregorio', 'Mosquera Arguelles', '04169671748', 'Masculino', 'SECTOR ANA CARLOTA DE MENDEZ', '2016-02-01', 'Vigilante Privado', 'Garita', 'C21', ''),
('11255624', 'Wilson Jose', 'Lisboa Sarcos', '02636922042', 'Masculino', 'SECTOR ANA CARLOTA DE MENDEZ CALLE AURORA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C21', ''),
('13957089', 'Erwin Jhoan', 'Castillo Bohorquez', '04246500021', 'Masculino', 'SECTOR SANTA ANA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C21', ''),
('16108884', 'Juan Carlos', 'Monte', 'N/A', 'Masculino', '', '2016-03-03', 'Vigilante Privado', 'Garita', 'C21', ''),
('12466925', 'Jacobo Enrique', 'Olivares', '04162286430', 'Masculino', 'Los Jobitos', '2016-02-01', 'Vigilante Privado', 'Garita', 'C44', ''),
('17544185', 'Joel Enrique', 'Paz', '04169617516', 'Masculino', 'LOS PUERTOS DE ALTAGRACIA SECTOR LOS JOBITOS CALLE PRINCIPAL', '2016-02-01', 'Vigilante Privado', 'Garita', 'C44', ''),
('15442378', 'Deivis Gregorio', 'Amaya Paz', '04263791547', 'Masculino', 'LOS PUERTOS DE ALTAGRACIA SECTOR LOS JOBITOS CALLE PRINCIPAL', '2016-02-01', 'Vigilante Privado', 'Garita', 'C44', ''),
('20725927', 'Jose Gabriel', 'Sandrea', '04246690434', 'Masculino', 'Sabaneta de palma', '2016-03-07', 'Vigilante Privado', 'Garita', 'C44', ''),
('20331946', 'Jose Alberto', 'Medina Raga', '04246831537', 'Masculino', 'LOS PUERTOS DE ALTAGRACIA, SECTOR LAS PLAYITAS, AV. 2 ENTRE CALLES 15 Y 16', '2016-02-01', 'Vigilante Privado', 'Garita', 'C23', ''),
('16469688', 'Jesus Eduardo', 'Medina Raga', '04165685890', 'Masculino', 'LOS PUERTOS DE ALTAGRACIA SECTOR LAS PLAYITAS AV. 2 ENTRE CALLES 15 Y 16 CASA #15-43', '2016-02-01', 'Vigilante Privado', 'Garita', 'C23', ''),
('14511022', 'Darwin Antonio', 'Ballesteros Prieto', '0414606929', 'Masculino', 'LOS PUERTOS DE ALTAGRACIA SECTOR BUENA VISTA II CALLE 16', '2016-02-01', 'Vigilante Privado', 'Garita', 'C23', ''),
('15727460', 'Luis Gerardo ', 'Nava Rodriguez', '04126450681', 'Masculino', 'AV. 4 ENTRE CALLE 7 Y 8 CASCO CENTRAL SECTOR EL CALVARIO CASA No 7-89', '2016-02-01', 'Vigilante Privado', 'Garita', 'C23', ''),
('3925864', 'Jacinto Verdaguer', 'Henriquez', '04269625789', 'Masculino', 'TERRAZA 19, CASA LL19, MUNCIPIO SANTA RITA EDO ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C22', ''),
('5713922', 'Uvencio Geronimo', 'Gutierrez', '04160198442', 'Masculino', 'CARRETERA L CON CALLE SAN FERNANDO BARRIO CORITO EDO ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C24', ''),
('7865121', 'Elias Eduardo', 'Velasquez Marin', '04162214715', 'Masculino', '', '2016-02-01', 'Vigilante Privado', 'Garita', 'C24', ''),
('10601012', 'Danny Luis', 'Cardozo Pauquez', 'N/A', 'Masculino', 'BARRIO LAS 40 CALLE 8 VEREDA 12-A CASA #E8-90', '2016-02-01', 'Vigilante Privado', '', 'C24', ''),
('7665148', 'Kilbert Jesus', 'Moron Moronta', 'N/A', 'Masculino', 'CALLE SAN FERNANDO SECTOR CORITO CASA #38', '2016-02-01', 'Vigilante Privado', 'Garita', 'C24', ''),
('12078635', 'Toni Jesus', 'Brice&#241;o Guevara', '04168634970', 'Masculino', 'CALLE VILLA NUEVA CABIMAS-ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C27', ''),
('10089063', 'Denys Jesus', 'Monta&#241;o Urribarri', '02642518025', 'Masculino', 'BARRIO LA PASTORA CALLE SAN MATEO # 25 CABIMAS ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C27', ''),
('22136328', 'Edwar Enrique', 'Pati&#241;o Gutierrez', '04246331937', 'Masculino', 'CALLE FALCON SECTOR SANTA CLARA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C27', ''),
('19327398', 'Ever Andres ', 'Sanchez Ranger', '04165686128', 'Masculino', 'CALLE DELICIAS SECTOR LA ROSA VIEJA CASA # 110', '2016-02-01', 'Vigilante Privado', 'Garita', 'C27', ''),
('21212929', 'Leomar Andres', 'Vicu&#241;a Romero', '04165614320', 'Masculino', 'CALLE DELICIAS CASA S/N SECTOR LA ROSA VIEJA CABIMAS EDO ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C66', ''),
('18342762', 'Deivis Jose', 'Pereira Bastidas', '04125466718', 'Masculino', 'CALLE DELICIAS CASA #97 SECTOR LA ROSA VIEJA', '2016-02-01', 'Vigilante Privado', 'Entrada Oficina', 'C66', ''),
('7730591', 'Victor Rafael', 'Gutierrez Pe&#241;a ', '04267220652', 'Masculino', 'CALLE PROGRESO CASA N- 11-B SECTOR LA MONTA&#209;ITA', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C26', ''),
('12412450', 'Darwin Jose', 'Munelo Pi&#241;a', '04169037534', 'Masculino', 'CALLE SAN RAFAEL CASA N-16 SECTOR LA ESTRELLA SUR', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C26', ''),
('7866627', 'Luis Alberto', 'Zerpa', 'N/A', 'Masculino', 'AV. PRINCIPAL LA VEREDA CASA #8', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C26', ''),
('7836647', 'Jose Antonio', 'Parra', '04124254798', 'Masculino', '', '2016-02-01', 'Vigilante Privado', 'Area Tecnica', 'C26', ''),
('16160154', 'Yoan Daniel', 'Isea Lopez', '6737528', 'Masculino', 'SECTOR EL GOLFITO CALLE SAN BENITO  CASA SIN NUMERO', '2016-02-01', 'Vigilante Privado', 'Area Comercial', 'C26', ''),
('12759918', 'Ricardo Antonio', 'Suarez Telleria', '0426368762', 'Masculino', 'SECTOR EL GOLFITO CALLE SAN BENITO  CASA SIN NUMERO', '2016-03-07', 'Vigilante Privado', 'Area Comercial', 'C26', ''),
('21429382', 'Antonio Ricardo', 'Godoy Nava', '04162264808', 'Masculino', 'BARRIO PUNTO FIJO II, CALLE LAS SANCHERAS, CASA S/N CABIMAS', '2016-02-01', 'Vigilante Privado', 'Garita', 'C26', ''),
('12091948', 'Nohel Antonio', 'Torbello Lopez', '04169629991', 'Masculino', 'SECTOR CURAZAITO CARRETERA PRINCIPAL CASA # 03 CABIMAS EDO. ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C46', ''),
('16847045', 'Cesar Augusto', 'Pineda Seco', '04266188475', 'Masculino', 'VIA LARA - ZULIA SECTOR CURAZAITO CASA SIN NUMERO', '2016-02-01', 'Vigilante Privado', 'Garita', 'C46', ''),
('5715045', 'Ysidro Segundo', 'Caraballo', '04162118042', 'Masculino', 'SECTOR MARIA AUXILIADORA CORREDOR VIAL 19 DE ABRIL, # 20-A EDO ZULIA CIUDAD OJEDA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C68', ''),
('16102984', 'Nohices Francisco', 'Chirino Manzanrez', '02684162071', 'Masculino', '', '2016-02-03', 'Vigilante Privado', 'Garita', 'C68', ''),
('13124421', 'Wilfredo Antonio', 'Centeno Saavedra', '02658938145', 'Masculino', 'CASA #10 ANDRES BELLO TAMARE.', '2016-03-16', 'Vigilante Privado', 'Garita', 'C68', ''),
('18808202', 'Walter Nicolas', 'Quintana Pi&#241;a', '04163652186', 'Masculino', 'CARRETERA G AV 21 TIA JUANA EDO ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C25', ''),
('14846077', 'Pablo Antonio', 'Chirinos Garcia', '04161670719', 'Masculino', 'TIA JUANA BARRIO ESEQUIEL ZAMORA MUNICIPIO SIMON BOLIVAR', '2016-02-01', 'Vigilante Privado', 'Garita', 'C25', ''),
('5713612', 'Miguel Angel', 'Pi&#241;ero Calderon', '04141688100', 'Masculino', 'URB TAMARE SECTOR CARABOBO CALLE 6 # 7', '2016-02-01', 'Vigilante Privado', 'Garita', 'C25', ''),
('6237191', 'Angel Jesus ', 'Romero Diaz', '04269643132', 'Masculino', 'CASCO CENTRAL CALLE BERMUDEZ CASA 226 CIUDAD OJEDA LAGUNILLAS, EDO ZULIA', '2016-02-01', 'Vigilante Privado', 'Garita', 'C25', ''),
('22170798', 'Glenis Enrique', 'Moran Torrealba', '04165636012', 'Masculino', '', '2016-02-01', 'Vigilante Privado', 'Garita', 'C39', ''),
('20214074', 'Yenrry Jesus', 'Garcia Laguna', 'N/A', 'Masculino', '', '2016-02-01', 'Vigilante Privado', 'Garita', 'C39', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vigi_insta`
--

DROP TABLE IF EXISTS `vigi_insta`;
CREATE TABLE IF NOT EXISTS `vigi_insta` (
  `codigo` varchar(5) NOT NULL,
  `cedula` double NOT NULL,
  PRIMARY KEY (`codigo`,`cedula`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
