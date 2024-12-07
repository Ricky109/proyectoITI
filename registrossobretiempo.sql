-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2024 a las 03:50:11
-- Versión del servidor: 10.4.32-MariaDB-log
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registrossobretiempo`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_equivalente_en_horas` (IN `p_dni` CHAR(8), IN `p_fecha` DATE, IN `p_horas` DECIMAL(4,2))   BEGIN
    -- Validar si el valor está fuera de los rangos permitidos
    IF p_horas <= 0 OR p_horas > 8 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Valor fuera de los rangos permitidos (0-8)';
    ELSE
        -- Decidir en qué columna insertar según el rango
        IF p_horas > 0 AND p_horas <= 3 THEN
            INSERT INTO equivalenteenhoras (dni, fecha, horasAl25, horasAl35, horasAl100)
            VALUES (p_dni, p_fecha, p_horas, NULL, NULL);
        ELSEIF p_horas > 3 AND p_horas <= 6 THEN
            INSERT INTO equivalenteenhoras (dni, fecha, horasAl25, horasAl35, horasAl100)
            VALUES (p_dni, p_fecha, NULL, p_horas, NULL);
        ELSEIF p_horas > 6 AND p_horas <= 8 THEN
            INSERT INTO equivalenteenhoras (dni, fecha, horasAl25, horasAl35, horasAl100)
            VALUES (p_dni, p_fecha, NULL, NULL, p_horas);
        END IF;
    END IF;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `dniAdministrador` char(8) NOT NULL,
  `area` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`dniAdministrador`, `area`) VALUES
('44395916', 'Recursos Humanos'),
('70766660', 'Recursos Humanos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleformatohorasextra`
--

CREATE TABLE `detalleformatohorasextra` (
  `idDetalleExtra` int(11) NOT NULL,
  `idFormatoHorasExtra` int(11) NOT NULL,
  `dni` char(8) NOT NULL,
  `fecha` date NOT NULL,
  `totalHorasExtra` decimal(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalleformatohorasextra`
--

INSERT INTO `detalleformatohorasextra` (`idDetalleExtra`, `idFormatoHorasExtra`, `dni`, `fecha`, `totalHorasExtra`) VALUES
(1, 1, '10815966', '2024-06-15', 12.00),
(2, 1, '41468992', '2024-06-15', 15.00),
(3, 1, '70514755', '2024-06-15', 14.00),
(4, 1, '20722235', '2024-06-15', 6.00),
(5, 1, '10207527', '2024-06-15', 3.00),
(6, 1, '45911219', '2024-06-15', 3.00),
(7, 1, '71347822', '2024-06-15', 3.00),
(8, 1, '41302895', '2024-06-15', 3.00),
(9, 1, '15742812', '2024-06-15', 2.00),
(10, 1, '72117546', '2024-06-15', 5.00),
(11, 1, '80248409', '2024-06-15', 2.00),
(12, 1, '74027508', '2024-06-15', 2.00),
(13, 1, '41196780', '2024-06-15', 2.00),
(14, 1, '70194113', '2024-06-15', 2.00),
(15, 1, '46968201', '2024-06-15', 3.00),
(16, 1, '44658546', '2024-06-15', 3.00),
(17, 1, '72122673', '2024-06-15', 2.00),
(18, 1, '45200520', '2024-06-15', 2.00),
(19, 1, '62137161', '2024-06-15', 2.00),
(20, 1, '71253657', '2024-06-15', 6.00),
(21, 1, '21557381', '2024-06-15', 6.00),
(22, 1, '42099652', '2024-06-15', 6.00),
(23, 2, '75567026', '2024-07-15', 8.00),
(24, 2, '10207527', '2024-07-15', 18.00),
(25, 2, '70514755', '2024-07-15', 18.00),
(26, 2, '72298904', '2024-07-15', 24.00),
(27, 2, '40485159', '2024-07-15', 14.00),
(28, 2, '41157842', '2024-07-15', 6.00),
(29, 2, '41196780', '2024-07-15', 2.00),
(30, 2, '46199251', '2024-07-15', 2.00),
(31, 2, '47380194', '2024-07-15', 6.00),
(32, 2, '46021319', '2024-07-15', 12.00),
(33, 2, '42762286', '2024-07-15', 6.00),
(34, 2, '95199731', '2024-07-15', 4.00),
(35, 2, '40124379', '2024-07-15', 4.00),
(36, 2, '74025610', '2024-07-15', 4.00),
(37, 2, '40239841', '2024-07-15', 4.00),
(38, 2, '45305469', '2024-07-15', 4.00),
(39, 2, '45700179', '2024-07-15', 4.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallereportediario`
--

CREATE TABLE `detallereportediario` (
  `idDetalleReporteDiario` int(11) NOT NULL,
  `idReporteDiario` int(11) NOT NULL,
  `dni` char(8) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaTermino` time NOT NULL,
  `horasLaboradas` decimal(4,2) NOT NULL,
  `horasRegulares` decimal(4,2) NOT NULL,
  `horasExtra` decimal(4,2) NOT NULL,
  `motivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detallereportediario`
--

INSERT INTO `detallereportediario` (`idDetalleReporteDiario`, `idReporteDiario`, `dni`, `horaInicio`, `horaTermino`, `horasLaboradas`, `horasRegulares`, `horasExtra`, `motivo`) VALUES
(1, 1, '10815966', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '01 Proyecto de voladura en tajo norte, 02 proyectos en tajo sur mas secundario'),
(2, 2, '41468992', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(3, 2, '45911219', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(4, 2, '71347822', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(5, 2, '41302895', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(6, 2, '20722235', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 proyecto de voladura en tajo sur'),
(7, 3, '41468992', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '01 proyecto de voladura en tajo sur'),
(8, 3, '10815966', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '01 proyecto de voladura en tajo sur'),
(9, 3, '15742812', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '01 proyecto de voladura en tajo sur'),
(10, 4, '70514755', '06:00:00', '23:00:00', 17.00, 12.00, 5.00, 'Carguio hasta 11:00pm'),
(11, 4, '72117546', '06:00:00', '23:00:00', 17.00, 12.00, 5.00, 'Carguio hasta 11:00pm'),
(12, 4, '41468992', '06:00:00', '23:00:00', 17.00, 12.00, 5.00, 'Carguio hasta 11:00pma'),
(13, 4, '10815966', '06:00:00', '23:00:00', 17.00, 12.00, 5.00, 'Carguio hasta 11:00pm'),
(14, 5, '80248409', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur'),
(15, 5, '74027508', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur'),
(16, 6, '41196780', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur(362 dt)'),
(17, 6, '70194113', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur(362 dt)'),
(18, 6, '41468992', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur(362 dt)'),
(19, 7, '70514755', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '02 Proyectos de voladura en tajo Sur y tajo norte (418 det)'),
(20, 7, '20722235', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '02 Proyectos de voladura en tajo Sur y tajo norte (418 det)'),
(21, 8, '41468992', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, 'Control nocturno'),
(22, 8, '10815966', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 Proyectos de voladura en tajo Sur  (100 det)'),
(23, 8, '10207527', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 Proyectos de voladura en tajo Sur  (100 det)'),
(24, 8, '46968201', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 Proyectos de voladura en tajo Sur  (100 det)'),
(25, 8, '44658546', '06:00:00', '21:00:00', 15.00, 12.00, 3.00, '01 Proyectos de voladura en tajo Sur  (100 det)'),
(26, 9, '72122673', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(27, 9, '45200520', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(28, 9, '62137161', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160a'),
(29, 10, '71253657', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B'),
(30, 10, '70514755', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B'),
(31, 10, '21557381', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B'),
(32, 10, '42099652', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B'),
(33, 11, '75567026', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(34, 11, '10207527', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(35, 11, '70514755', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(36, 11, '72298904', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(37, 11, '40485159', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(38, 12, '41157842', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '03 Proyectos en Tajo Sur'),
(39, 12, '41196780', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '03 Proyectos en Tajo Sur'),
(40, 12, '46199251', '06:00:00', '20:00:00', 14.00, 12.00, 2.00, '03 Proyectos en Tajo Sur'),
(41, 13, '10207527', '06:00:00', '19:00:00', 13.00, 12.00, 1.00, '01 Proyecto en tajo Norte y 02 proyectos en tajo sur'),
(42, 13, '70514755', '06:00:00', '19:00:00', 13.00, 12.00, 1.00, '01 Proyecto en tajo Norte y 02 proyectos en tajo sur'),
(43, 13, '72298904', '06:00:00', '19:00:00', 13.00, 12.00, 1.00, '01 Proyecto en tajo Norte y 02 proyectos en tajo sur'),
(44, 13, '40485159', '06:00:00', '19:00:00', 13.00, 12.00, 1.00, '01 Proyecto en tajo Norte y 02 proyectos en tajo sur'),
(45, 14, '47380194', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '02 proyectos en tajo sur 3765_186, tajo norte 3960_224 y adelanto de carguio'),
(46, 14, '46021319', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '02 proyectos en tajo sur 3765_186, tajo norte 3960_224 y adelanto de carguio'),
(47, 15, '42762286', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '02 proyectos en tajo sur 3765_186, tajo norte 3960_224 y adelanto de carguio'),
(48, 15, '46021319', '06:00:00', '24:00:00', 18.00, 12.00, 6.00, '02 proyectos en tajo sur 3765_186, tajo norte 3960_224 y adelanto de carguio'),
(49, 16, '95199731', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(50, 16, '41157842', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(51, 16, '70514755', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(52, 16, '40124379', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(53, 16, '74025610', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 proyectos en tajo sur 3570_066,3780_230,3585_062 y 01 tajo norte 3960_223'),
(54, 17, '10207527', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(55, 17, '70514755', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(56, 17, '72298904', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(57, 18, '40239841', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio'),
(58, 18, '45305469', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio'),
(59, 18, '45700179', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio'),
(60, 18, '72298904', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio'),
(61, 19, '75567026', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(62, 19, '10207527', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160'),
(63, 20, '70514755', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 voladuras en tajo Sur'),
(64, 20, '72298904', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 voladuras en tajo Sur'),
(65, 20, '40485159', '06:00:00', '22:00:00', 16.00, 12.00, 4.00, '03 voladuras en tajo Sur');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equivalenteenhoras`
--

CREATE TABLE `equivalenteenhoras` (
  `dni` char(8) NOT NULL,
  `fecha` date NOT NULL,
  `horasAl25` decimal(4,2) DEFAULT NULL,
  `horasAl35` decimal(4,2) DEFAULT NULL,
  `horasAl100` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equivalenteenhoras`
--

INSERT INTO `equivalenteenhoras` (`dni`, `fecha`, `horasAl25`, `horasAl35`, `horasAl100`) VALUES
('10207527', '2024-06-15', NULL, 3.00, NULL),
('10207527', '2024-07-15', NULL, NULL, 18.00),
('10815966', '2024-06-15', NULL, NULL, 12.00),
('15742812', '2024-06-15', 2.00, NULL, NULL),
('20722235', '2024-06-15', NULL, NULL, 6.00),
('21557381', '2024-06-15', NULL, NULL, 6.00),
('40124379', '2024-07-15', NULL, 4.00, NULL),
('40239841', '2024-07-15', NULL, 4.00, NULL),
('40485159', '2024-07-15', NULL, NULL, 14.00),
('41157842', '2024-07-15', NULL, NULL, 6.00),
('41196780', '2024-06-15', 2.00, NULL, NULL),
('41196780', '2024-07-15', 2.00, NULL, NULL),
('41302895', '2024-06-15', NULL, 3.00, NULL),
('41468992', '2024-06-15', NULL, NULL, 15.00),
('42099652', '2024-06-15', NULL, NULL, 6.00),
('42762286', '2024-07-15', NULL, NULL, 6.00),
('44658546', '2024-06-15', NULL, 3.00, NULL),
('45200520', '2024-06-15', 2.00, NULL, NULL),
('45305469', '2024-07-15', NULL, 4.00, NULL),
('45700179', '2024-07-15', NULL, 4.00, NULL),
('45911219', '2024-06-15', NULL, 3.00, NULL),
('46021319', '2024-07-15', NULL, NULL, 12.00),
('46199251', '2024-07-15', 2.00, NULL, NULL),
('46968201', '2024-06-15', NULL, 3.00, NULL),
('47380194', '2024-07-15', NULL, NULL, 6.00),
('62137161', '2024-06-15', 2.00, NULL, NULL),
('70194113', '2024-06-15', 2.00, NULL, NULL),
('70514755', '2024-06-15', NULL, NULL, 14.00),
('70514755', '2024-07-15', NULL, NULL, 18.00),
('71253657', '2024-06-15', NULL, NULL, 6.00),
('71347822', '2024-06-15', NULL, 3.00, NULL),
('72117546', '2024-06-15', NULL, 5.00, NULL),
('72122673', '2024-06-15', 2.00, NULL, NULL),
('72298904', '2024-07-15', NULL, NULL, 24.00),
('74025610', '2024-07-15', NULL, 4.00, NULL),
('74027508', '2024-06-15', 2.00, NULL, NULL),
('75567026', '2024-07-15', NULL, NULL, 8.00),
('80248409', '2024-06-15', 2.00, NULL, NULL),
('95199731', '2024-07-15', NULL, 4.00, NULL);

--
-- Disparadores `equivalenteenhoras`
--
DELIMITER $$
CREATE TRIGGER `verificar_dni_equivalenteHorasExtra` BEFORE INSERT ON `equivalenteenhoras` FOR EACH ROW BEGIN
    -- Verificar si el dni existe en la tabla Trabajador o en la tabla Funcionario
    IF NOT EXISTS (SELECT 1 FROM Trabajador WHERE dniTrabajador = NEW.dni) AND
       NOT EXISTS (SELECT 1 FROM funcionario WHERE dniFuncionario = NEW.dni) THEN
       
        -- Si no existe, se lanza un error y no se permite la inserción
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El DNI no pertenece a un trabajador registrado en la empresa.';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formatohorasextra`
--

CREATE TABLE `formatohorasextra` (
  `idFormatoHorasExtras` int(11) NOT NULL,
  `dniAdministrador` char(8) NOT NULL,
  `dniJefeOp` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formatohorasextra`
--

INSERT INTO `formatohorasextra` (`idFormatoHorasExtras`, `dniAdministrador`, `dniJefeOp`) VALUES
(1, '70766660', '42331849'),
(2, '44395916', '70327447');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funcionario`
--

CREATE TABLE `funcionario` (
  `dniFuncionario` char(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `funcionario`
--

INSERT INTO `funcionario` (`dniFuncionario`, `nombre`, `apellidos`, `correo`) VALUES
('10621292', 'jorge', 'luna leon', 'jorge.luna@enaex.com'),
('16716087', 'juan carlos', 'guzman montalvan', 'juan.guzman@enaex.com'),
('41469083', 'john ricardo', 'julca araujo', 'john.julca@enaex.com'),
('42331849', 'rolando david', 'held del carpio', 'roland.held@enaex.com'),
('44395916', 'liz margot', 'gomez perez', 'liz.gomez@enaex.com'),
('45922445', 'frank robert', 'aldave marrreros', 'frank.aldave@enaex.com'),
('46381129', 'melser', 'fuentes nuñonca', 'melser.fuentes@enaex.com'),
('70327447', 'manuel angel', 'huayas salvatiierra', 'manuel.huayas@enaex.com'),
('70766660', 'andrea milagros', 'cuno parari', 'andrea.cuno@enaex.com'),
('71560084', 'danny', 'tovar beccera', 'danny.tovar@enaex.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefeoperaciones`
--

CREATE TABLE `jefeoperaciones` (
  `dniJefeOp` char(8) NOT NULL,
  `operacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jefeoperaciones`
--

INSERT INTO `jefeoperaciones` (`dniJefeOp`, `operacion`) VALUES
('42331849', 'Voladura'),
('70327447', 'Voladura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `justificacion`
--

CREATE TABLE `justificacion` (
  `idJustificacion` int(11) NOT NULL,
  `dniAdministrador` char(8) NOT NULL,
  `dniTrabajador` char(8) NOT NULL,
  `fecha` date NOT NULL,
  `motivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `justificacion`
--

INSERT INTO `justificacion` (`idJustificacion`, `dniAdministrador`, `dniTrabajador`, `fecha`, `motivo`) VALUES
(1, '70766660', '80248409', '2024-06-05', 'Licencia médica por enfermedad respiratoria'),
(2, '70766660', '74027508', '2024-07-10', 'Permiso por asuntos familiares'),
(3, '44395916', '10815966', '2024-08-15', 'Licencia médica por enfermedad'),
(4, '44395916', '41468992', '2024-08-20', 'Permiso por asuntos familiares'),
(5, '70766660', '45911219', '2024-09-05', 'Licencia médica por enfermedad'),
(6, '44395916', '20722235', '2024-10-10', 'Licencia médica por enfermedad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportediario`
--

CREATE TABLE `reportediario` (
  `idReporteDiario` int(11) NOT NULL,
  `dniAdministrador` char(8) NOT NULL,
  `dniSupervisor` char(8) NOT NULL,
  `contratista` varchar(100) NOT NULL,
  `turno` char(1) NOT NULL,
  `horaLaboral` time NOT NULL,
  `clima` varchar(50) NOT NULL,
  `actividades` text NOT NULL,
  `revisadoPorJefe` varchar(100) NOT NULL,
  `revisadoPorSuperVC` varchar(100) NOT NULL,
  `revisadoPorSupervisor` varchar(100) NOT NULL,
  `comentariosSupervisor` text NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reportediario`
--

INSERT INTO `reportediario` (`idReporteDiario`, `dniAdministrador`, `dniSupervisor`, `contratista`, `turno`, `horaLaboral`, `clima`, `actividades`, `revisadoPorJefe`, `revisadoPorSuperVC`, `revisadoPorSupervisor`, `comentariosSupervisor`, `fecha`) VALUES
(1, '44395916', '45922445', 'Enaex', 'D', '06:00:00', 'Soleado', 'SE REALIZA PROGRAMACION', 'HELD DEL CARPIO ROLANDO DAVID', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-06-01'),
(2, '70766660', '46381129', 'Enaex', 'D', '06:00:00', 'Nublado', 'CONEXIÓN SUPERFICIAL DE DETONADORES CON CABLE M35', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'ALDAVE MARREROS FRANK ROBERT', 'TOVAR BECERRA DANNY', 'Cumplido según lo planeado', '2024-06-03'),
(3, '44395916', '16716087', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'TENDIDO DE LINEA', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'LUNA LEON JORGE', 'Pendiente de revisión', '2024-06-05'),
(4, '70766660', '41469083', 'Enaex', 'D', '06:00:00', 'Soleado', 'INSTALACION DE TRIPODE', 'HELD DEL CARPIO ROLANDO DAVID', 'FUENTES NUÑONCA MELSER', 'ALDAVE MARREROS FRANK ROBERT', 'Todo en orden', '2024-06-07'),
(5, '70766660', '10621292', 'Enaex', 'D', '06:00:00', 'Nublado', 'INSTALACION DE EQUIPO ELECRONICO DAVEYTRONIC DBD Y DETONACION DE MALLA DE VOLADURA ELECTONICA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'GUZMAN MONTALVAN JUAN CARLOS', 'JULCA ARAUJO JOHN RICARDO', 'Cumplido según lo planeado', '2024-06-10'),
(6, '44395916', '71560084', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'SE REALIZA PROGRAMACION', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'ALDAVE MARREROS FRANK ROBERT', 'GUZMAN MONTALVAN JUAN CARLOS', 'Pendiente de revisión', '2024-06-12'),
(7, '70766660', '45922445', 'Enaex', 'D', '06:00:00', 'Soleado', 'CONEXIÓN SUPERFICIAL DE DETONADORES CON CABLE M35', 'HELD DEL CARPIO ROLANDO DAVID', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-06-15'),
(8, '44395916', '46381129', 'Enaex', 'D', '06:00:00', 'Nublado', 'TENDIDO DE LINEA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'ALDAVE MARREROS FRANK ROBERT', 'TOVAR BECERRA DANNY', 'Cumplido según lo planeado', '2024-06-18'),
(9, '70766660', '16716087', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'INSTALACION DE TRIPODE', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'LUNA LEON JORGE', 'Pendiente de revisión', '2024-06-20'),
(10, '70766660', '41469083', 'Enaex', 'D', '06:00:00', 'Soleado', 'INSTALACION DE EQUIPO ELECRONICO DAVEYTRONIC DBD Y DETONACION DE MALLA DE VOLADURA ELECTONICA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'FUENTES NUÑONCA MELSER', 'ALDAVE MARREROS FRANK ROBERT', 'Todo en orden', '2024-06-25'),
(11, '44395916', '10621292', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'SE REALIZA PROGRAMACION', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'TOVAR BECERRA DANNY', 'Todo en orden', '2024-07-01'),
(12, '70766660', '46381129', 'Enaex', 'D', '06:00:00', 'Soleado', 'CONEXIÓN SUPERFICIAL DE DETONADORES CON CABLE M35', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'GUZMAN MONTALVAN JUAN CARLOS', 'Todo en orden', '2024-07-03'),
(13, '70766660', '45922445', 'Enaex', 'D', '06:00:00', 'Nublado', 'TENDIDO DE LINEA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-07-05'),
(14, '44395916', '45922445', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'INSTALACION DE TRIPODE', 'HELD DEL CARPIO ROLANDO DAVID', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-07-08'),
(15, '70766660', '46381129', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'INSTALACION DE EQUIPO ELECRONICO DAVEYTRONIC DBD Y DETONACION DE MALLA DE VOLADURA ELECTONICA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'JULCA ARAUJO JOHN RICARDO', 'GUZMAN MONTALVAN JUAN CARLOS', 'Todo en orden', '2024-07-10'),
(16, '44395916', '45922445', 'Enaex', 'D', '06:00:00', 'Soleado', 'SE REALIZA PROGRAMACION', 'HELD DEL CARPIO ROLANDO DAVID', 'GUZMAN MONTALVAN JUAN CARLOS', 'LUNA LEON JORGE', 'Todo en orden', '2024-07-12'),
(17, '44395916', '10621292', 'Enaex', 'D', '06:00:00', 'Nublado', 'CONEXIÓN SUPERFICIAL DE DETONADORES CON CABLE M35', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'JULCA ARAUJO JOHN RICARDO', 'TOVAR BECERRA DANNY', 'Todo en orden', '2024-07-14'),
(18, '70766660', '45922445', 'Enaex', 'D', '06:00:00', 'Soleado', 'TENDIDO DE LINEA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'GUZMAN MONTALVAN JUAN CARLOS', 'GUZMAN MONTALVAN JUAN CARLOS', 'Todo en orden', '2024-07-16'),
(19, '70766660', '46381129', 'Enaex', 'D', '06:00:00', 'Soleado', 'INSTALACION DE TRIPODE', 'HELD DEL CARPIO ROLANDO DAVID', 'JULCA ARAUJO JOHN RICARDO', 'GUZMAN MONTALVAN JUAN CARLOS', 'Todo en orden', '2024-07-20'),
(20, '70766660', '10621292', 'Enaex', 'D', '06:00:00', 'Lluvioso', 'INSTALACION DE EQUIPO ELECRONICO DAVEYTRONIC DBD Y DETONACION DE MALLA DE VOLADURA ELECTONICA', 'HUAYAS SALVATIERRA MANUEL ANGEL', 'JULCA ARAUJO JOHN RICARDO', 'TOVAR BECERRA DANNY', 'Todo en orden', '2024-07-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idSolicitud` int(11) NOT NULL,
  `dniJefeOp` char(8) NOT NULL,
  `dniSupervisor` char(8) NOT NULL,
  `motivo` text NOT NULL,
  `fecha` date NOT NULL,
  `cantTrabajadores` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idSolicitud`, `dniJefeOp`, `dniSupervisor`, `motivo`, `fecha`, `cantTrabajadores`) VALUES
(1, '42331849', '45922445', '01 Proyecto de voladura en tajo norte, 02 proyectos en tajo sur mas secundario', '2024-06-01', 1),
(2, '70327447', '46381129', '01 proyecto de voladura en tajo sur', '2024-06-03', 5),
(3, '42331849', '16716087', '01 proyecto de voladura en tajo sur', '2024-06-05', 3),
(4, '42331849', '41469083', 'Carguio hasta 7:00pm', '2024-06-07', 4),
(5, '70327447', '10621292', '02 Proyectos de voladura en tajo Sur', '2024-06-10', 2),
(6, '70327447', '71560084', '02 Proyectos de voladura en tajo Sur(362 dt)', '2024-06-12', 3),
(7, '70327447', '45922445', '02 Proyectos de voladura en tajo Sur y tajo norte (418 det)', '2024-06-15', 2),
(8, '42331849', '46381129', '01 Proyectos de voladura en tajo Sur  (100 det)', '2024-06-18', 5),
(9, '70327447', '16716087', '02 Proyectos de voladura en tajo Sur Py_3525_007 y Py_3720_160', '2024-06-20', 3),
(10, '42331849', '41469083', '01 Proyectos de voladura en tajo norte Py_3960_001 , secundarios y adelanto de carguio fase 8A y fase 8B ', '2024-06-25', 4),
(11, '70327447', '45922445', '02 proyectos en tajo sur 3555_84, secundario, tajo norte 3960_222B, secundario y adelanto de carguio', '2024-07-01', 5),
(12, '42331849', '46381129', '02 proyectos en tajo sur 3570_59, tajo norte 3960_225 y adelanto de carguio', '2024-07-03', 3),
(13, '42331849', '16716087', '01 proyectos en tajo sur 3570_59B, carguio para el cieere de malla y adelanto de carguio', '2024-07-05', 4),
(14, '70327447', '41469083', '01 proyectos en tajo sur 3765_187  proyecto con 80% de precencia de agua 278 det. Y adelanto de carguio', '2024-07-08', 2),
(15, '42331849', '10621292', '01 Proyecto en tajo Norte y 01 proyecto de tajo Sur', '2024-07-10', 2),
(16, '42331849', '71560084', '01 proyecto de voladura en tajo sur', '2024-07-12', 5),
(17, '70327447', '45922445', '02 Proyectos en Tajo Sur', '2024-07-14', 3),
(18, '70327447', '46381129', '01 Proyecto de voladura en tajo norte ', '2024-07-16', 4),
(19, '70327447', '16716087', '02 Proyectos en Tajo Sur', '2024-07-20', 2),
(20, '42331849', '41469083', '03 Proyectos en Tajo Sur', '2024-07-22', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `supervisor`
--

CREATE TABLE `supervisor` (
  `dniSupervisor` char(8) NOT NULL,
  `numAlmacen` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `supervisor`
--

INSERT INTO `supervisor` (`dniSupervisor`, `numAlmacen`) VALUES
('10621292', '2'),
('16716087', '4'),
('41469083', '6'),
('45922445', '5'),
('46381129', '7'),
('71560084', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `idTelefono` int(11) NOT NULL,
  `dniFuncionario` char(8) NOT NULL,
  `telefono` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`idTelefono`, `dniFuncionario`, `telefono`) VALUES
(1, '45922445', '991-1234'),
(2, '45922445', '992-5678'),
(3, '46381129', '993-9876'),
(4, '46381129', '994-1122'),
(5, '16716087', '995-4321'),
(6, '16716087', '996-9988'),
(7, '41469083', '997-8765'),
(8, '41469083', '998-3344'),
(9, '10621292', '999-6543'),
(10, '10621292', '911-2233'),
(11, '71560084', '912-0987'),
(12, '71560084', '913-5566'),
(13, '42331849', '914-2222'),
(14, '42331849', '915-7788'),
(15, '70327447', '916-3333'),
(16, '70327447', '917-1123'),
(17, '70766660', '918-4444'),
(18, '70766660', '919-2244'),
(19, '44395916', '920-5555'),
(20, '44395916', '921-6677');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `dniTrabajador` char(8) NOT NULL,
  `dniSupervisor` char(8) DEFAULT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `telefono` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`dniTrabajador`, `dniSupervisor`, `nombres`, `apellidos`, `cargo`, `telefono`) VALUES
('10207527', '46381129', 'espinoza', 'leyva', 'operador de camión fábrica', '906543210'),
('10815966', '16716087', 'amambal', 'infante', 'operador de camión fábrica', '989876543'),
('15742812', '16716087', 'davila', 'villarreal', 'operador de equipo auxiliar', '901098765'),
('20722235', '45922445', 'blas', 'nonalaya', 'operador de camión fábrica', '993210987'),
('21557381', '41469083', 'ramos', 'cruz', 'operador de camión fábrica', '932109876'),
('40066474', '46381129', 'corpus', 'rodriguez', 'operador de camión fábrica', '900987654'),
('40124379', '71560084', 'mantilla', 'murrugarra', 'operador de camión fábrica', '922109876'),
('40239841', '41469083', 'santander', 'salazar', 'operador de camión fábrica', '938765432'),
('40485159', '45922445', 'lazo', 'tafura', 'operario de piso', '917654321'),
('40714774', '45922445', 'manya', 'cusquisiban', 'operador de camión fábrica', '947654321'),
('41157842', '10621292', 'jaque', 'rodriguez', 'operador de camión fábrica', '915432109'),
('41196780', '45922445', 'corpus', 'rodriguez', 'operador de camión fábrica', '999876543'),
('41302895', '41469083', 'dominguez', 'roncal', 'operador de camión fábrica', '902109876'),
('41468992', '41469083', 'anaya', 'garay', 'operador de equipo auxiliar', '990987654'),
('41526090', '71560084', 'niquen', 'agapito', 'asistente de polvorines', '946543210'),
('42099652', '46381129', 'ruiz', 'maldonado', 'operador de camión fábrica', '936543210'),
('42762286', '41469083', 'mendoza', 'rodriguez', 'operador de equipo auxiliar', '926543210'),
('42897113', '10621292', 'martin', 'facundo', 'operario de piso', '951098765'),
('44658546', '16716087', 'espinoza', 'tadeo', 'operador de equipo auxiliar', '907654321'),
('45200520', '10621292', 'malaga', 'jove', 'lider de voladura', '921098765'),
('45201478', '46381129', 'leon', 'chavez', 'especialista de disparos electronicos', '918765432'),
('45305469', '10621292', 'solorzano', 'aguilar', 'operador de equipo auxiliar', '939876543'),
('45700179', '45922445', 'valdiviezo', 'rosas', 'operario de piso', '941098765'),
('45911219', '10621292', 'baldeon', 'sachahuaman', 'operario de piso', '991098765'),
('46021319', '41469083', 'illan', 'cochachin', 'operador de equipo auxiliar', '914321098'),
('46199251', '41469083', 'catire', 'gonzales', 'operador de equipo auxiliar', '996543210'),
('46433504', '16716087', 'rodriguez', 'caceres', 'operador equipo auxiliar', '949876543'),
('46715226', '16716087', 'camarena', 'cosme', 'especialista de disparos electronicos', '995432109'),
('46835577', '46381129', 'vargas', 'tejada', 'especialista de disparos electronicos', '942109876'),
('46915573', '71560084', 'galindo', 'fernandez', 'operador de equipo auxiliar', '910987654'),
('46968201', '10621292', 'figueroa', 'urbano', 'programador de disparos electronicos', '909876543'),
('47049638', '10621292', 'chicahuari', 'diaz', 'operario de piso', '997654321'),
('47256314', '46381129', 'rios', 'vilca', 'especialista de disparos electronicos', '948765432'),
('47380194', '16716087', 'huaman', 'alcantara', 'asistente tecnico', '913210987'),
('47629158', '16716087', 'ramirez', 'chuquitaype', 'operario de piso', '931098765'),
('47740448', '46381129', 'mascco', 'carhuas', 'operario de piso', '924321098'),
('49604553', '71560084', 'lara', 'negron', 'superintendente de operaciones', '916543210'),
('62137161', '45922445', 'martinez', 'caja', 'mecanico', '923210987'),
('70002010', '41469083', 'yuyali', 'quispe', 'programador de disparos electronicos', '944321098'),
('70037460', '10621292', 'olivera', 'cano', 'trainee de servicio', '927654321'),
('70194113', '71560084', 'chilon', 'mestanza', 'operador de equipo auxiliar', '998765432'),
('70479588', '45922445', 'giraldo', 'delgado', 'mecanico', '911098765'),
('70514755', '41469083', 'fernandez', 'carnero', 'asistente tecnico', '908765432'),
('70547081', '16716087', 'mauricio', 'ricaldi', 'asistente de polvorines', '925432109'),
('70568154', '71560084', 'urquia', 'rivera', 'programador de disparos electronicos', '940987654'),
('70662553', '16716087', 'sanchez', 'piña', 'mecanico', '937654321'),
('71253657', '46381129', 'quispe', 'luya', 'representante tecnico', '930987654'),
('71347822', '71560084', 'bastidas', 'meza', 'operario de piso', '992109876'),
('71968596', '10621292', 'ramos', 'surichaqui', 'operario de piso', '933210987'),
('72117546', '46381129', 'calapuja', 'quispe', 'asistente tecnico', '994321098'),
('72122673', '41469083', 'luna', 'malaga', 'asistente tecnico', '920987654'),
('72298904', '46381129', 'hinostroza', 'valenzuela', 'operador de camión fábrica', '912109876'),
('72706332', '10621292', 'escriba', 'chacon', 'asistente tecnico', '903210987'),
('72962229', '45922445', 'quispe', 'coaquira', 'operario de piso', '929876543'),
('73141461', '10621292', 'zela', 'chirinos', 'programador de disparos electronicos', '945432109'),
('74025610', '71560084', 'robles', 'escalante', 'programador de disparos electronicos', '934321098'),
('74027508', '46381129', 'aguirre', 'benavides', 'asistente ssoma', '988765432'),
('74361295', '45922445', 'rojas', 'chaico', 'operario de piso', '935432109'),
('74916301', '71560084', 'espinal', 'marquez', 'operario de piso', '904321098'),
('75184110', '16716087', 'vente', 'reyes', 'programador de disparos electronicos', '943210987'),
('75567026', '45922445', 'espinoza', 'bailon', 'trainee de servicio', '905432109'),
('76164832', '41469083', 'inocente', 'moreno', 'practicante', '950987654'),
('80248409', '45922445', 'aguedo', 'rosas', 'operador de camión fábrica', '987654321'),
('80617489', '16716087', 'lopez', 'tello', 'lider de voladura', '919876543'),
('95199731', '71560084', 'prado', 'bezada', 'mecanico', '928765432');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`dniAdministrador`);

--
-- Indices de la tabla `detalleformatohorasextra`
--
ALTER TABLE `detalleformatohorasextra`
  ADD PRIMARY KEY (`idDetalleExtra`),
  ADD KEY `idFormatoHorasExtra` (`idFormatoHorasExtra`),
  ADD KEY `dni` (`dni`,`fecha`);

--
-- Indices de la tabla `detallereportediario`
--
ALTER TABLE `detallereportediario`
  ADD PRIMARY KEY (`idDetalleReporteDiario`),
  ADD KEY `idReporteDiario` (`idReporteDiario`);

--
-- Indices de la tabla `equivalenteenhoras`
--
ALTER TABLE `equivalenteenhoras`
  ADD PRIMARY KEY (`dni`,`fecha`);

--
-- Indices de la tabla `formatohorasextra`
--
ALTER TABLE `formatohorasextra`
  ADD PRIMARY KEY (`idFormatoHorasExtras`),
  ADD KEY `dniAdministrador` (`dniAdministrador`),
  ADD KEY `dniJefeOp` (`dniJefeOp`);

--
-- Indices de la tabla `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`dniFuncionario`),
  ADD KEY `idx_nombre_apellido_funcionario` (`nombre`,`apellidos`);

--
-- Indices de la tabla `jefeoperaciones`
--
ALTER TABLE `jefeoperaciones`
  ADD PRIMARY KEY (`dniJefeOp`);

--
-- Indices de la tabla `justificacion`
--
ALTER TABLE `justificacion`
  ADD PRIMARY KEY (`idJustificacion`),
  ADD KEY `dniAdministrador` (`dniAdministrador`),
  ADD KEY `dniTrabajador` (`dniTrabajador`);

--
-- Indices de la tabla `reportediario`
--
ALTER TABLE `reportediario`
  ADD PRIMARY KEY (`idReporteDiario`),
  ADD KEY `dniAdministrador` (`dniAdministrador`),
  ADD KEY `dniSupervisor` (`dniSupervisor`),
  ADD KEY `idx_fecha_reporte_diario` (`fecha`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`idSolicitud`),
  ADD KEY `dniJefeOp` (`dniJefeOp`),
  ADD KEY `dniSupervisor` (`dniSupervisor`);

--
-- Indices de la tabla `supervisor`
--
ALTER TABLE `supervisor`
  ADD PRIMARY KEY (`dniSupervisor`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`idTelefono`),
  ADD KEY `dniFuncionario` (`dniFuncionario`),
  ADD KEY `idx_telefono` (`telefono`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`dniTrabajador`),
  ADD KEY `dniSupervisor` (`dniSupervisor`),
  ADD KEY `idx_cargo_trabajador` (`cargo`),
  ADD KEY `idx_nombre_apellido_trabajador` (`nombres`,`apellidos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `detalleformatohorasextra`
--
ALTER TABLE `detalleformatohorasextra`
  MODIFY `idDetalleExtra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `detallereportediario`
--
ALTER TABLE `detallereportediario`
  MODIFY `idDetalleReporteDiario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `formatohorasextra`
--
ALTER TABLE `formatohorasextra`
  MODIFY `idFormatoHorasExtras` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `justificacion`
--
ALTER TABLE `justificacion`
  MODIFY `idJustificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `reportediario`
--
ALTER TABLE `reportediario`
  MODIFY `idReporteDiario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `idTelefono` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleformatohorasextra`
--
ALTER TABLE `detalleformatohorasextra`
  ADD CONSTRAINT `detalleformatohorasextra_ibfk_1` FOREIGN KEY (`idFormatoHorasExtra`) REFERENCES `formatohorasextra` (`idFormatoHorasExtras`),
  ADD CONSTRAINT `detalleformatohorasextra_ibfk_2` FOREIGN KEY (`dni`,`fecha`) REFERENCES `equivalenteenhoras` (`dni`, `fecha`);

--
-- Filtros para la tabla `detallereportediario`
--
ALTER TABLE `detallereportediario`
  ADD CONSTRAINT `detallereportediario_ibfk_1` FOREIGN KEY (`idReporteDiario`) REFERENCES `reportediario` (`idReporteDiario`);

--
-- Filtros para la tabla `formatohorasextra`
--
ALTER TABLE `formatohorasextra`
  ADD CONSTRAINT `formatohorasextra_ibfk_1` FOREIGN KEY (`dniAdministrador`) REFERENCES `administrador` (`dniAdministrador`),
  ADD CONSTRAINT `formatohorasextra_ibfk_2` FOREIGN KEY (`dniJefeOp`) REFERENCES `jefeoperaciones` (`dniJefeOp`);

--
-- Filtros para la tabla `justificacion`
--
ALTER TABLE `justificacion`
  ADD CONSTRAINT `justificacion_ibfk_1` FOREIGN KEY (`dniAdministrador`) REFERENCES `administrador` (`dniAdministrador`),
  ADD CONSTRAINT `justificacion_ibfk_2` FOREIGN KEY (`dniTrabajador`) REFERENCES `trabajador` (`dniTrabajador`);

--
-- Filtros para la tabla `reportediario`
--
ALTER TABLE `reportediario`
  ADD CONSTRAINT `reportediario_ibfk_1` FOREIGN KEY (`dniAdministrador`) REFERENCES `administrador` (`dniAdministrador`),
  ADD CONSTRAINT `reportediario_ibfk_2` FOREIGN KEY (`dniSupervisor`) REFERENCES `supervisor` (`dniSupervisor`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `solicitud_ibfk_1` FOREIGN KEY (`dniJefeOp`) REFERENCES `jefeoperaciones` (`dniJefeOp`),
  ADD CONSTRAINT `solicitud_ibfk_2` FOREIGN KEY (`dniSupervisor`) REFERENCES `supervisor` (`dniSupervisor`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `telefono_ibfk_1` FOREIGN KEY (`dniFuncionario`) REFERENCES `funcionario` (`dniFuncionario`);

--
-- Filtros para la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD CONSTRAINT `trabajador_ibfk_1` FOREIGN KEY (`dniSupervisor`) REFERENCES `supervisor` (`dniSupervisor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
