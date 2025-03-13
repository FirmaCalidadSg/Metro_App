-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2025 a las 17:43:43
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `metrolink`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `departamento` int(11) NOT NULL,
  `codigo_postal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id`, `nombre`, `departamento`, `codigo_postal`) VALUES
(6, 'Ibagué', 1, '000'),
(7, 'Cali', 2, '760000'),
(8, 'Cúcuta', 3, '777000'),
(10, 'Buga', 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `control_capacidad`
--

CREATE TABLE `control_capacidad` (
  `id` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `planta_id` int(11) NOT NULL,
  `linea_id` int(11) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `turno_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `operario` varchar(100) NOT NULL,
  `horas_hombre` decimal(5,2) NOT NULL,
  `num_operarios` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tiempoPerdidoIdeales` int(11) NOT NULL,
  `produccionIdeal` int(11) NOT NULL,
  `produccionIdealHora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `control_capacidad`
--

INSERT INTO `control_capacidad` (`id`, `fecha_registro`, `planta_id`, `linea_id`, `proceso_id`, `turno_id`, `producto_id`, `operario`, `horas_hombre`, `num_operarios`, `created_at`, `updated_at`, `tiempoPerdidoIdeales`, `produccionIdeal`, `produccionIdealHora`) VALUES
(1, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-20 17:05:28', '2025-02-20 17:05:28', 22, 40000, 5500),
(2, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-20 17:07:11', '2025-02-20 17:07:11', 14, 40000, 5500),
(3, '2025-02-20', 1, 4, 1, 1, 2, 'juan lozano', 16.00, 2, '2025-02-20 17:13:53', '2025-02-20 17:13:53', 44, 40000, 5500),
(4, '2025-02-20', 1, 4, 1, 1, 2, 'juan lozano', 16.00, 2, '2025-02-20 17:16:25', '2025-02-20 17:16:25', 44, 40000, 5500),
(5, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-20 17:17:43', '2025-02-20 17:17:43', 55, 40000, 5500),
(6, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-20 17:21:02', '2025-02-20 17:21:02', 22, 40000, 5500),
(7, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-20 17:23:55', '2025-02-20 17:23:55', 22, 40000, 5500),
(8, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-20 17:26:00', '2025-02-20 17:26:00', 218, 40000, 5500),
(9, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-20 17:29:35', '2025-02-20 17:29:35', 44, 40000, 5500),
(10, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-20 17:30:39', '2025-02-20 17:30:39', 22, 40000, 5500),
(11, '2025-02-20', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-21 13:40:19', '2025-02-21 13:40:19', 22, 40000, 5500),
(12, '2025-02-21', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-02-21 16:21:22', '2025-02-21 16:21:22', 22, 40000, 5500),
(13, '2025-03-06', 1, 4, 1, 1, 2, 'pepito perez', 64.00, 8, '2025-03-06 23:15:20', '2025-03-06 23:15:20', 92, 40000, 5500),
(14, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:14:35', '2025-03-07 15:14:35', 0, 0, 0),
(15, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:17:10', '2025-03-07 15:17:10', 0, 0, 0),
(16, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:20:48', '2025-03-07 15:20:48', 0, 0, 0),
(17, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:22:21', '2025-03-07 15:22:21', 0, 0, 0),
(18, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:23:11', '2025-03-07 15:23:11', 0, 0, 0),
(19, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:28:03', '2025-03-07 15:28:03', 0, 0, 0),
(20, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 32.00, 4, '2025-03-07 15:29:04', '2025-03-07 15:29:04', 0, 0, 0),
(21, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:30:02', '2025-03-07 15:30:02', 0, 0, 0),
(22, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:40:00', '2025-03-07 15:40:00', 0, 0, 0),
(23, '2025-03-01', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:40:52', '2025-03-07 15:40:52', 0, 0, 0),
(24, '2025-03-01', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:43:00', '2025-03-07 15:43:00', 0, 0, 0),
(25, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 15:45:08', '2025-03-07 15:45:08', 0, 0, 0),
(26, '2025-03-07', 1, 4, 1, 1, 3, 'pepito perez', 64.00, 8, '2025-03-07 16:05:38', '2025-03-07 16:05:38', 115, 24000, 3125),
(27, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 16:08:16', '2025-03-07 16:08:16', 0, 0, 0),
(28, '2025-03-07', 1, 4, 1, 1, 3, 'pepito perez', 64.00, 8, '2025-03-07 17:30:41', '2025-03-07 17:30:41', 77, 24000, 3125),
(29, '2025-03-07', 1, 4, 1, 1, 0, 'pepito perez', 64.00, 8, '2025-03-07 17:33:10', '2025-03-07 17:33:10', 0, 0, 0),
(30, '2025-03-07', 1, 4, 1, 0, 0, 'pepito perez', 64.00, 8, '2025-03-07 17:36:13', '2025-03-07 17:36:13', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `danoequipo`
--

CREATE TABLE `danoequipo` (
  `id` int(11) NOT NULL,
  `equipo` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `estado` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `danoequipo`
--

INSERT INTO `danoequipo` (`id`, `equipo`, `descripcion`, `fecha`, `estado`) VALUES
(1, 1, 'Descripcion E1', '2024-11-29 22:50:00', 'OK'),
(3, 1, 'Falla en el termostato', '2025-02-17 15:53:47', 'Pendiente'),
(4, 1, 'Pérdida de calor excesiva', '2025-02-17 15:53:47', 'Reparado'),
(5, 1, 'Puerta con cierre defectuoso', '2025-02-17 15:53:47', 'En proceso'),
(6, 1, 'Ventilador no funciona', '2025-02-17 15:53:47', 'Pendiente'),
(7, 1, 'Resistencia quemada', '2025-02-17 15:53:47', 'Reparado'),
(8, 2, 'Quemadores no calientan', '2025-02-17 15:53:47', 'Pendiente'),
(9, 2, 'Ruido excesivo al funcionar', '2025-02-17 15:53:47', 'Reparado'),
(10, 2, 'Panel de control dañado', '2025-02-17 15:53:47', 'Pendiente'),
(11, 2, 'Sensor de temperatura falla', '2025-02-17 15:53:47', 'En proceso'),
(12, 2, 'Filtro de aire obstruido', '2025-02-17 15:53:47', 'Reparado'),
(13, 3, 'Fuga de gas detectada', '2025-02-17 15:53:47', 'Pendiente'),
(14, 3, 'Perilla de encendido atascada', '2025-02-17 15:53:47', 'Reparado'),
(15, 3, 'Desgaste en el cableado eléctrico', '2025-02-17 15:53:47', 'Pendiente'),
(16, 3, 'Problema en el encendido automático', '2025-02-17 15:53:47', 'Reparado'),
(17, 3, 'Llama inestable en los quemadores', '2025-02-17 15:53:47', 'En proceso'),
(18, 4, 'Motor emite sonido anormal', '2025-02-17 15:53:47', 'Pendiente'),
(19, 4, 'Piezas internas desgastadas', '2025-02-17 15:53:47', 'Reparado'),
(20, 4, 'Cable de alimentación roto', '2025-02-17 15:53:47', 'En proceso'),
(21, 4, 'Vibración excesiva al usar', '2025-02-17 15:53:47', 'Pendiente'),
(22, 4, 'Botón de encendido no responde', '2025-02-17 15:53:47', 'Reparado'),
(23, 5, 'Cuchillas desafiladas', '2025-02-17 15:53:47', 'Pendiente'),
(24, 5, 'Base con grietas visibles', '2025-02-17 15:53:47', 'Reparado'),
(25, 5, 'Falta de lubricación en engranajes', '2025-02-17 15:53:47', 'En proceso'),
(26, 5, 'Interruptor con falso contacto', '2025-02-17 15:53:47', 'Pendiente'),
(27, 5, 'Soporte suelto', '2025-02-17 15:53:47', 'Reparado'),
(28, 6, 'Motor con sobrecalentamiento', '2025-02-17 15:56:51', 'Pendiente'),
(29, 6, 'Correa de transmisión desgastada', '2025-02-17 15:56:51', 'Reparado'),
(30, 7, 'Pérdida de refrigeración', '2025-02-17 15:56:51', 'En proceso'),
(31, 7, 'Termostato con fallas', '2025-02-17 15:56:51', 'Pendiente'),
(32, 8, 'Panel de control no responde', '2025-02-17 15:56:51', 'Pendiente'),
(33, 8, 'Fuga de líquido refrigerante', '2025-02-17 15:56:51', 'Reparado'),
(34, 9, 'Vibraciones excesivas', '2025-02-17 15:56:51', 'En proceso'),
(35, 9, 'Interruptor de encendido defectuoso', '2025-02-17 15:56:51', 'Pendiente'),
(36, 10, 'Cableado en mal estado', '2025-02-17 15:56:51', 'Reparado'),
(37, 10, 'Ruido fuerte al operar', '2025-02-17 15:56:51', 'Pendiente'),
(38, 11, 'Cuchillas desafiladas', '2025-02-17 15:56:51', 'En proceso'),
(39, 11, 'Base con grietas visibles', '2025-02-17 15:56:51', 'Pendiente'),
(40, 12, 'Falla en resistencia térmica', '2025-02-17 15:56:51', 'Reparado'),
(41, 12, 'Pérdida de calor en la estructura', '2025-02-17 15:56:51', 'Pendiente'),
(42, 13, 'Botón de encendido no responde', '2025-02-17 15:56:51', 'En proceso'),
(43, 13, 'Engranajes desgastados', '2025-02-17 15:56:51', 'Reparado'),
(44, 14, 'Desgaste en las piezas internas', '2025-02-17 15:56:51', 'Pendiente'),
(45, 14, 'Fuga de gas detectada', '2025-02-17 15:56:51', 'Reparado'),
(46, 15, 'Puerta con cierre defectuoso', '2025-02-17 15:56:51', 'Pendiente'),
(47, 15, 'Sensor de temperatura no funciona', '2025-02-17 15:56:51', 'En proceso'),
(48, 16, 'Fugas de aceite en motor', '2025-02-17 15:56:51', 'Pendiente'),
(49, 16, 'Filtro obstruido', '2025-02-17 15:56:51', 'Reparado'),
(50, 17, 'Rodamientos dañados', '2025-02-17 15:56:51', 'En proceso'),
(51, 17, 'Correa de ventilador desgastada', '2025-02-17 15:56:51', 'Pendiente'),
(52, 18, 'Problema en el sistema de encendido', '2025-02-17 15:56:51', 'Pendiente'),
(53, 18, 'Perdida de eficiencia térmica', '2025-02-17 15:56:51', 'Reparado'),
(54, 19, 'Ventilador bloqueado por residuos', '2025-02-17 15:56:51', 'En proceso'),
(55, 19, 'Válvula de seguridad defectuosa', '2025-02-17 15:56:51', 'Pendiente'),
(56, 20, 'Sobrecalentamiento del motor', '2025-02-17 15:56:51', 'Reparado'),
(57, 20, 'Pérdida de presión en el sistema', '2025-02-17 15:56:51', 'Pendiente'),
(58, 21, 'Cable de alimentación suelto', '2025-02-17 15:56:51', 'En proceso'),
(59, 21, 'Problema en el sensor de humedad', '2025-02-17 15:56:51', 'Reparado'),
(60, 22, 'Válvula obstruida', '2025-02-17 15:56:51', 'Pendiente'),
(61, 22, 'Circuito eléctrico con fallas', '2025-02-17 15:56:51', 'Reparado'),
(62, 23, 'Sistema de enfriamiento ineficiente', '2025-02-17 15:56:51', 'Pendiente'),
(63, 23, 'Ruido anormal en el motor', '2025-02-17 15:56:51', 'En proceso'),
(64, 24, 'Cortocircuito en panel de control', '2025-02-17 15:56:51', 'Pendiente'),
(65, 24, 'Piezas internas desgastadas', '2025-02-17 15:56:51', 'Reparado'),
(66, 25, 'Problema en el compresor', '2025-02-17 15:56:51', 'En proceso'),
(67, 25, 'Ventilación insuficiente', '2025-02-17 15:56:51', 'Pendiente'),
(68, 26, 'Lubricación deficiente en engranajes', '2025-02-17 15:56:51', 'Reparado'),
(69, 26, 'Puerta con cierre defectuoso', '2025-02-17 15:56:51', 'Pendiente'),
(70, 27, 'Desgaste en rodillos', '2025-02-17 15:56:51', 'Pendiente'),
(71, 27, 'Pérdida de presión en pistones', '2025-02-17 15:56:51', 'En proceso'),
(72, 28, 'Lámparas de control quemadas', '2025-02-17 15:56:51', 'Reparado'),
(73, 28, 'Sensor de nivel defectuoso', '2025-02-17 15:56:51', 'Pendiente'),
(74, 29, 'Filtro de aire obstruido', '2025-02-17 15:56:51', 'Pendiente'),
(75, 29, 'Vibraciones inusuales en operación', '2025-02-17 15:56:51', 'Reparado'),
(76, 30, 'Interruptor principal no responde', '2025-02-17 15:56:51', 'En proceso'),
(77, 30, 'Panel digital con fallas', '2025-02-17 15:56:51', 'Pendiente'),
(78, 31, 'Pérdida de aislamiento térmico', '2025-02-17 15:56:51', 'Pendiente'),
(79, 31, 'Ruido en el motor', '2025-02-17 15:56:51', 'Reparado'),
(80, 32, 'Motor emite olor a quemado', '2025-02-17 15:56:51', 'En proceso'),
(81, 32, 'Correas flojas en transmisión', '2025-02-17 15:56:51', 'Pendiente'),
(82, 33, 'Resistencia de calor defectuosa', '2025-02-17 15:56:51', 'Reparado'),
(83, 33, 'Interruptor con falso contacto', '2025-02-17 15:56:51', 'Pendiente'),
(84, 34, 'Sobrecalentamiento en los cables', '2025-02-17 15:56:51', 'Pendiente'),
(85, 34, 'Fallo en sistema de seguridad', '2025-02-17 15:56:51', 'Reparado'),
(86, 35, 'Ventilador atascado', '2025-02-17 15:56:51', 'En proceso'),
(87, 35, 'Circuito de control no responde', '2025-02-17 15:56:51', 'Pendiente'),
(88, 36, 'Compresor con fugas', '2025-02-17 15:56:51', 'Pendiente'),
(89, 36, 'Válvula de seguridad con fallas', '2025-02-17 15:56:51', 'Reparado'),
(90, 37, 'Sobrecalentamiento en el transformador', '2025-02-17 15:56:51', 'Pendiente'),
(91, 37, 'Fugas de líquido refrigerante', '2025-02-17 15:56:51', 'Reparado'),
(92, 38, 'Sistema eléctrico con cortocircuito', '2025-02-17 15:56:51', 'En proceso'),
(93, 38, 'Botón de seguridad no activa', '2025-02-17 15:56:51', 'Pendiente'),
(94, 39, 'Pérdida de potencia en el motor', '2025-02-17 15:56:51', 'Pendiente'),
(95, 39, 'Engranajes rotos', '2025-02-17 15:56:51', 'Reparado'),
(96, 40, 'Falla en el sensor de temperatura', '2025-02-17 15:56:51', 'En proceso'),
(97, 40, 'Base inestable', '2025-02-17 15:56:51', 'Pendiente'),
(98, 41, 'Perdida de sellado en cámara', '2025-02-17 15:56:51', 'Pendiente'),
(99, 41, 'Fugas en tuberías', '2025-02-17 15:56:51', 'Reparado'),
(100, 42, 'Desgaste en rodamientos', '2025-02-17 15:56:51', 'Pendiente'),
(101, 42, 'Fuga en válvula de control', '2025-02-17 15:56:51', 'Reparado'),
(102, 43, 'Sistema de escape bloqueado', '2025-02-17 15:56:51', 'En proceso'),
(103, 43, 'Sobrecalentamiento en condensador', '2025-02-17 15:56:51', 'Pendiente'),
(104, 44, 'Panel de control con errores', '2025-02-17 15:56:51', 'Pendiente'),
(105, 44, 'Vibraciones excesivas en operación', '2025-02-17 15:56:51', 'Reparado'),
(106, 45, 'Fallo en el circuito eléctrico', '2025-02-17 15:56:51', 'Pendiente'),
(107, 45, 'Compresor con ruido inusual', '2025-02-17 15:56:51', 'Reparado'),
(108, 46, 'Fugas en las conexiones de gas', '2025-02-17 15:56:51', 'Pendiente'),
(109, 46, 'Resistencia de calentamiento rota', '2025-02-17 15:56:51', 'Reparado'),
(110, 47, 'Sobrecalentamiento en el panel', '2025-02-17 15:56:51', 'En proceso'),
(111, 47, 'Cableado dañado', '2025-02-17 15:56:51', 'Pendiente'),
(112, 48, 'Rodillos desgastados', '2025-02-17 15:56:51', 'Reparado'),
(113, 48, 'Interruptor defectuoso', '2025-02-17 15:56:51', 'Pendiente'),
(114, 49, 'Sistema hidráulico con pérdida de presión', '2025-02-17 15:56:51', 'Pendiente'),
(115, 49, 'Desgaste en sellos de seguridad', '2025-02-17 15:56:51', 'Reparado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `definicion`
--

CREATE TABLE `definicion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `valor` varchar(100) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `definicion`
--

INSERT INTO `definicion` (`id`, `nombre`, `valor`, `descripcion`) VALUES
(1, 'D1', 'Definicion valor', 'Descripcion D1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`, `pais`) VALUES
(1, 'Tolima', 1),
(2, 'Valle del Cauca', 1),
(3, 'Norte de Santander', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distribucion_paros`
--

CREATE TABLE `distribucion_paros` (
  `id` int(11) NOT NULL,
  `razon_id` int(11) NOT NULL,
  `equipo_id` int(11) NOT NULL,
  `tiempo_op_id` int(11) NOT NULL COMMENT 'Tiempo de Operación (TO)',
  `tiempo` int(11) NOT NULL,
  `descripcion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dtiempo`
--

CREATE TABLE `dtiempo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dtiempo`
--

INSERT INTO `dtiempo` (`id`, `nombre`) VALUES
(1, 'Planeado De No Operación'),
(2, 'Paradas Y/O Ajustes (Mantenimiento)'),
(3, 'Paradas Y/O Ajustes (Proceso)(Disponibilidad)'),
(4, 'Perdidas De Velocidad (Rendimiento)'),
(5, 'Productos de Calidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `modelo` varchar(80) NOT NULL,
  `estado` varchar(60) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `modelo`, `estado`, `tipo`) VALUES
(1, 'Empacadora Industrial I', 'HT-5000', 'Operativo', 'empaque'),
(2, 'Empacadora Industrial II', 'HT-6000', 'En Mantenimiento', 'empaque'),
(6, 'Horno Industrial', 'HT-7000', 'Fuera de Servicio', ''),
(7, 'Batidora Industrial', 'B-200X', 'Operativo', ''),
(8, 'Batidora Industrial', 'B-250XL', 'Operativo', ''),
(9, 'Batidora Industrial', 'B-300PRO', 'En Mantenimiento', ''),
(10, 'Refrigerador', 'CoolMax-500', 'Operativo', ''),
(11, 'Refrigerador', 'CoolMax-600', 'Operativo', ''),
(12, 'Refrigerador', 'CoolMax-700', 'Fuera de Servicio', ''),
(13, 'Congelador', 'FrostX-1000', 'Operativo', ''),
(14, 'Congelador', 'FrostX-1100', 'Operativo', ''),
(15, 'Congelador', 'FrostX-1200', 'En Mantenimiento', ''),
(16, 'Amasadora', 'MixPro-5', 'Operativo', ''),
(17, 'Amasadora', 'MixPro-6', 'Operativo', ''),
(18, 'Amasadora', 'MixPro-7', 'Fuera de Servicio', ''),
(19, 'Freidora', 'FryKing-300', 'Operativo', ''),
(20, 'Freidora', 'FryKing-400', 'Operativo', ''),
(21, 'Freidora', 'FryKing-500', 'En Mantenimiento', ''),
(22, 'Procesador de Alimentos', 'ProFood-1', 'Operativo', ''),
(23, 'Procesador de Alimentos', 'ProFood-2', 'Operativo', ''),
(24, 'Procesador de Alimentos', 'ProFood-3', 'Fuera de Servicio', ''),
(25, 'Estufa Industrial', 'HeatMax-900', 'Operativo', ''),
(26, 'Estufa Industrial', 'HeatMax-950', 'Operativo', ''),
(27, 'Estufa Industrial', 'HeatMax-1000', 'En Mantenimiento', ''),
(28, 'Cámara de Fermentación', 'FermentX-300', 'Operativo', ''),
(29, 'Cámara de Fermentación', 'FermentX-350', 'Operativo', ''),
(30, 'Cámara de Fermentación', 'FermentX-400', 'Fuera de Servicio', ''),
(31, 'Tostador', 'ToastMaster-200', 'Operativo', ''),
(32, 'Tostador', 'ToastMaster-250', 'Operativo', ''),
(33, 'Tostador', 'ToastMaster-300', 'En Mantenimiento', ''),
(34, 'Molino de Carne', 'MeatGrind-100', 'Operativo', ''),
(35, 'Molino de Carne', 'MeatGrind-200', 'Operativo', ''),
(36, 'Molino de Carne', 'MeatGrind-300', 'Fuera de Servicio', ''),
(37, 'Lavavajillas Industrial', 'CleanDish-500', 'Operativo', ''),
(38, 'Lavavajillas Industrial', 'CleanDish-600', 'Operativo', ''),
(39, 'Lavavajillas Industrial', 'CleanDish-700', 'En Mantenimiento', ''),
(40, 'Extractor de Jugos', 'JuiceX-1', 'Operativo', ''),
(41, 'Extractor de Jugos', 'JuiceX-2', 'Operativo', ''),
(42, 'Extractor de Jugos', 'JuiceX-3', 'Fuera de Servicio', ''),
(43, 'Selladora al Vacío', 'VacSeal-100', 'Operativo', ''),
(44, 'Selladora al Vacío', 'VacSeal-200', 'Operativo', ''),
(45, 'Selladora al Vacío', 'VacSeal-300', 'En Mantenimiento', ''),
(46, 'Máquina de Hielo', 'IcePro-500', 'Operativo', ''),
(47, 'Máquina de Hielo', 'IcePro-600', 'Operativo', ''),
(48, 'Máquina de Hielo', 'IcePro-700', 'Fuera de Servicio', ''),
(49, 'Licuadora Industrial', 'BlendTech-1', 'Operativo', ''),
(50, 'Licuadora Industrial', 'BlendTech-2', 'Operativo', ''),
(51, 'Licuadora Industrial', 'BlendTech-3', 'En Mantenimiento', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea`
--

CREATE TABLE `linea` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `proceso` int(11) NOT NULL,
  `planta_id` int(11) NOT NULL,
  `tipo_unidad` int(11) NOT NULL,
  `citg` int(11) NOT NULL COMMENT 'Aplica Capacidad ideal teórica General',
  `citr` int(11) NOT NULL COMMENT ' Aplica Capacidad ideal teórica por referencia',
  `supervisor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `linea`
--

INSERT INTO `linea` (`id`, `nombre`, `proceso`, `planta_id`, `tipo_unidad`, `citg`, `citr`, `supervisor`) VALUES
(4, 'Línea 1', 0, 1, 1, 50000, 0, 'Betino pascual'),
(5, 'Línea 10', 0, 1, 1, 35000, 0, 'Larry Rico Moren'),
(6, 'Línea 2', 0, 1, 1, 50000, 45000, 'Larry Rico Moren'),
(7, 'Línea 4', 0, 0, 2, 50000, 45000, 'Larry Rico Moren'),
(8, 'Línea 4-2', 0, 1, 1, 25000, 0, 'Larry Rico Moren'),
(9, 'Línea 5', 0, 1, 1, 75000, 0, 'Larry Rico Moren'),
(10, 'Línea 6', 0, 1, 1, 65000, 0, 'Betino pascual'),
(11, 'Línea 7', 0, 1, 1, 40000, 0, 'Betino pascual'),
(12, 'Línea 8', 0, 1, 3, 80000, 0, 'Betino pascual'),
(13, 'Cegra 5', 0, 1, 1, 68000, 0, 'Betino pascual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineaproducto`
--

CREATE TABLE `lineaproducto` (
  `id` int(11) NOT NULL,
  `planta_id` int(11) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `linea_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `unidad` varchar(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `rendimiento` int(11) NOT NULL,
  `produccion_ajustada` int(11) NOT NULL,
  `produccion_teorica` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `lineaproducto`
--

INSERT INTO `lineaproducto` (`id`, `planta_id`, `proceso_id`, `linea_id`, `producto_id`, `unidad`, `peso`, `rendimiento`, `produccion_ajustada`, `produccion_teorica`) VALUES
(1, 1, 1, 4, 2, 'Unidades', 10, 1, 40000, 44000),
(2, 1, 1, 4, 3, '0', 10, 1, 24000, 25000),
(3, 1, 1, 4, 4, '0', 10, 1, 27000, 30000),
(4, 1, 3, 4, 8, 'Unidades', 10, 1, 10000, 11000),
(5, 2, 2, 4, 5, 'Cajas', 15, 1, 23000, 25000),
(6, 2, 2, 3, 6, 'Unidades', 15, 1, 14000, 15000),
(7, 2, 2, 3, 4, 'Kg', 0, 1, 48000, 50000),
(8, 2, 2, 4, 10, 'Cajas', 15, 1, 37000, 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_equipo`
--

CREATE TABLE `linea_equipo` (
  `id` int(11) NOT NULL,
  `equipo_id` int(11) NOT NULL,
  `linea_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `linea_equipo`
--

INSERT INTO `linea_equipo` (`id`, `equipo_id`, `linea_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_proceso`
--

CREATE TABLE `linea_proceso` (
  `id` int(11) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `linea_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `linea_proceso`
--

INSERT INTO `linea_proceso` (`id`, `proceso_id`, `linea_id`) VALUES
(1, 1, 4),
(2, 1, 5),
(3, 2, 5),
(4, 1, 6),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 1, 10),
(9, 2, 10),
(10, 1, 11),
(11, 1, 12),
(12, 2, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`, `codigo`) VALUES
(1, 'Colombia', '57'),
(3, 'Venezuela', '58'),
(4, 'Chile', '054');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paradas`
--

CREATE TABLE `paradas` (
  `id` int(11) NOT NULL,
  `control_capacidad_id` int(11) NOT NULL,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  `duracion` varchar(255) DEFAULT NULL,
  `paro` varchar(500) NOT NULL,
  `subparo` varchar(500) NOT NULL,
  `razon` varchar(500) NOT NULL,
  `tiempo` varchar(255) NOT NULL,
  `descripcion` longtext NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paradas`
--

INSERT INTO `paradas` (`id`, `control_capacidad_id`, `inicio`, `fin`, `duracion`, `paro`, `subparo`, `razon`, `tiempo`, `descripcion`, `created`, `updated`) VALUES
(1, 1, NULL, NULL, NULL, 'Fallas de equipos', 'Mantenimiento Programado', 'ee43', '20', '0', '2025-02-20 17:05:28', '2025-02-20 17:05:28'),
(2, 1, NULL, NULL, NULL, 'Fallas de equipos', 'Mantenimiento Programado', 'Mantenimiento Preventivo', '2', '0', '2025-02-20 17:05:28', '2025-02-20 17:05:28'),
(3, 2, NULL, NULL, NULL, 'Cambio de producto o formato', 'Domingo, Festivo', 'Domingo, festivo', '14', '------------------------------', '2025-02-20 17:07:11', '2025-02-20 17:07:11'),
(4, 3, NULL, NULL, NULL, 'Fallas de equipos', 'Daño eléctrico', 'Daño eléctrico equipo', '26', '---------------------------------error 500--------------------HT-5000-Horno Industrial', '2025-02-20 17:13:53', '2025-02-20 17:13:53'),
(5, 3, NULL, NULL, NULL, 'Pequeñas paradas', 'Ajustes de proceso y condición', 'Atascamiento línea y/o banda de producto', '15', '---------------------', '2025-02-20 17:13:53', '2025-02-20 17:13:53'),
(6, 3, NULL, NULL, NULL, 'Productos defectuosos', 'Productos defectuosos', 'Productos defectuosos', '3', '-------------************----------', '2025-02-20 17:13:53', '2025-02-20 17:13:53'),
(7, 4, NULL, NULL, NULL, 'Fallas de equipos', 'Daño eléctrico', 'Daño eléctrico equipo', '26', '---------------------------------error 500--------------------HT-5000-Horno Industrial', '2025-02-20 17:16:25', '2025-02-20 17:16:25'),
(8, 4, NULL, NULL, NULL, 'Pequeñas paradas', 'Ajustes de proceso y condición', 'Atascamiento línea y/o banda de producto', '15', '---------------------', '2025-02-20 17:16:25', '2025-02-20 17:16:25'),
(9, 4, NULL, NULL, NULL, 'Productos defectuosos', 'Productos defectuosos', 'Productos defectuosos', '3', '-------------************----------', '2025-02-20 17:16:25', '2025-02-20 17:16:25'),
(10, 5, NULL, NULL, NULL, 'Fallas de equipos', 'Mantenimiento Programado', 'ee43', '55', '----------------HT-6000-Horno Industrial', '2025-02-20 17:17:43', '2025-02-20 17:17:43'),
(11, 6, NULL, NULL, NULL, 'Cambio de producto o formato', 'Domingo, Festivo', 'Domingo, festivo', '22', '------*********----------', '2025-02-20 17:21:02', '2025-02-20 17:21:02'),
(12, 7, NULL, NULL, NULL, 'Cambio de producto o formato', 'Domingo, Festivo', 'Domingo, festivo', '22', '------*********----------', '2025-02-20 17:23:55', '2025-02-20 17:23:55'),
(13, 8, NULL, NULL, NULL, 'Cambio de producto o formato', 'Domingo, Festivo', 'Domingo, festivo', '218', '-----------------', '2025-02-20 17:26:00', '2025-02-20 17:26:00'),
(14, 9, NULL, NULL, NULL, 'Cambio de producto o formato', 'Domingo, Festivo', 'Domingo, festivo', '44', '----------------', '2025-02-20 17:29:35', '2025-02-20 17:29:35'),
(15, 10, NULL, NULL, NULL, 'Cambio de producto o formato', 'Domingo, Festivo', 'Domingo, festivo', '22', '-------------------', '2025-02-20 17:30:39', '2025-02-20 17:30:39'),
(16, 11, NULL, NULL, NULL, 'Reproceso', 'Reproceso', 'Reproceso', '5', '-------------', '2025-02-21 13:40:19', '2025-02-21 13:40:19'),
(17, 11, NULL, NULL, NULL, 'Productos defectuosos', 'Productos defectuosos', 'Productos defectuosos', '10', 'asdfdsfdffdfds', '2025-02-21 13:40:19', '2025-02-21 13:40:19'),
(18, 12, NULL, NULL, NULL, 'Fallas de equipos', 'Mantenimiento Programado', 'ee43', '12', 'se tapó la tubería del gasHT-5000-Horno Industrial', '2025-02-21 16:21:22', '2025-02-21 16:21:22'),
(19, 13, NULL, NULL, NULL, 'Mantenimiento Programado', 'Mantenimiento Programado', 'ee43', '25', '3563665', '2025-03-06 23:15:20', '2025-03-06 23:15:20'),
(20, 13, NULL, NULL, NULL, 'Fallas de equipos', 'Daño eléctrico', 'Daño eléctrico equipo', '26', '--------------------------HT-5000-Empacadora Industrial I', '2025-03-06 23:15:20', '2025-03-06 23:15:20'),
(21, 13, NULL, NULL, NULL, 'Productos defectuosos', 'Productos defectuosos', 'Productos defectuosos', '25', '-------------', '2025-03-06 23:15:20', '2025-03-06 23:15:20'),
(22, 14, NULL, NULL, NULL, '2025-03-01T10:08', '2025-03-07T10:08', '0 Diás0 Minutos', '0', '------------------->', '2025-03-07 15:14:35', '2025-03-07 15:14:35'),
(23, 15, NULL, NULL, NULL, '2025-03-01T10:08', '2025-03-07T10:08', '0 Diás0 Minutos', '0', '------------------->', '2025-03-07 15:17:10', '2025-03-07 15:17:10'),
(24, 21, NULL, NULL, NULL, 'Mantenimiento ProgramadoMantenimiento Programadoee43', 'Mantenimiento ProgramadoMantenimiento Programadoee43', 'Mantenimiento ProgramadoMantenimiento Programadoee43', '6', '--------------', '2025-03-07 15:30:02', '2025-03-07 15:30:02'),
(25, 22, '2025-03-07 10:36:00', '2025-03-20 10:36:00', NULL, 'Mantenimiento ProgramadoMantenimiento Programadoee43', 'Mantenimiento ProgramadoMantenimiento Programadoee43', 'Mantenimiento ProgramadoMantenimiento Programadoee43', '13', '-----------------------', '2025-03-07 15:40:00', '2025-03-07 15:40:00'),
(26, 23, '2025-03-01 10:40:00', '2025-03-07 10:40:00', NULL, 'Mantenimiento ProgramadoMantenimiento Programadoee43', 'Mantenimiento ProgramadoMantenimiento Programadoee43', 'Mantenimiento ProgramadoMantenimiento Programadoee43', '6', '--------------------------', '2025-03-07 15:40:52', '2025-03-07 15:40:52'),
(27, 24, '2025-03-01 10:42:00', '2025-03-07 10:42:00', '6 Diás8640 Minutos', 'Mantenimiento ProgramadoMantenimiento Programadoee43', 'Mantenimiento ProgramadoMantenimiento Programadoee43', 'Mantenimiento ProgramadoMantenimiento Programadoee43', '6 Diás8640 Minutos', 'dsadasdsadsadasd', '2025-03-07 15:43:00', '2025-03-07 15:43:00'),
(28, 25, '2025-03-01 10:44:00', '2025-03-07 10:45:00', '6 Diás / 8641 Minutos', '-Mantenimiento Programado-Mantenimiento Programado-ee43', '-Mantenimiento Programado-Mantenimiento Programado-ee43', '-Mantenimiento Programado-Mantenimiento Programado-ee43', '6 Diás / 8641 Minutos', '-------------------', '2025-03-07 15:45:08', '2025-03-07 15:45:08'),
(29, 26, NULL, NULL, '15', 'No planeado por falta de recurso', 'Materia prima, insumos y/o material de empaque', 'Falta de materia prima (bases grasas)', '15', 'no había material', '2025-03-07 16:05:38', '2025-03-07 16:05:38'),
(30, 27, '2025-03-01 11:06:00', '2025-03-07 11:06:00', '6 Diás / 8640 Minutos', '-Pruebas planeadas-Pruebas planeadas-Ensayos de investigación y desarrollo', '-Pruebas planeadas-Pruebas planeadas-Ensayos de investigación y desarrollo', '-Pruebas planeadas-Pruebas planeadas-Ensayos de investigación y desarrollo', '6 Diás / 8640 Minutos', '--------------------', '2025-03-07 16:08:16', '2025-03-07 16:08:16'),
(31, 27, '2025-02-28 11:07:00', '2025-03-04 11:07:00', '4 Diás / 5760 Minutos', '-Domingo, Festivo-Domingo, Festivo-Domingo, festivo', '-Domingo, Festivo-Domingo, Festivo-Domingo, festivo', '-Domingo, Festivo-Domingo, Festivo-Domingo, festivo', '4 Diás / 5760 Minutos', 'descanso', '2025-03-07 16:08:16', '2025-03-07 16:08:16'),
(32, 28, NULL, NULL, '30', 'Tiempo fuera de programación', 'Inventario', 'Inventario programado', '30', 'INVENTARIO', '2025-03-07 17:30:41', '2025-03-07 17:30:41'),
(33, 28, NULL, NULL, '20', 'Cambio de producto o formato', 'Cambio de formato (referencia)', 'Cambio de formato (cambios de presentación, gramaje, moldes)', '20', 'CAMBIO DE  PRESENTACION', '2025-03-07 17:30:41', '2025-03-07 17:30:41'),
(34, 28, NULL, NULL, '20', 'Pequeñas paradas', 'Ajustes de proceso y condición', 'Atascamiento línea y/o banda de producto', '20', 'SE ATASCO LA LINEA', '2025-03-07 17:30:41', '2025-03-07 17:30:41'),
(35, 28, NULL, NULL, '7', 'Productos defectuosos', 'Productos defectuosos', 'Productos defectuosos', '7', 'PROD DEFEC', '2025-03-07 17:30:41', '2025-03-07 17:30:41'),
(36, 29, '2025-03-07 12:32:00', '2025-03-10 12:32:00', '3 Diás / 4320 Minutos', '-Arranque de proceso-Arranque de proceso-Esperando alcanzar condiciones de proceso', '-Arranque de proceso-Arranque de proceso-Esperando alcanzar condiciones de proceso', '-Arranque de proceso-Arranque de proceso-Esperando alcanzar condiciones de proceso', '3 Diás / 4320 Minutos', 'NO LLEGA EL MATERIAL PARA DAR INICIO', '2025-03-07 17:33:10', '2025-03-07 17:33:10'),
(37, 30, '2025-03-01 12:35:00', '2025-03-03 12:35:00', '2 Diás / 2880 Minutos', '-Mantenimiento Programado-Mantenimiento Programado-ee43', '-Mantenimiento Programado-Mantenimiento Programado-ee43', '-Mantenimiento Programado-Mantenimiento Programado-ee43', '2 Diás / 2880 Minutos', 'FIN DE SEMANA', '2025-03-07 17:36:13', '2025-03-07 17:36:13'),
(38, 30, '2025-03-04 12:35:00', '2025-03-06 12:35:00', '2 Diás / 2880 Minutos', '-Pruebas planeadas-Pruebas planeadas-Ensayos de investigación y desarrollo', '-Pruebas planeadas-Pruebas planeadas-Ensayos de investigación y desarrollo', '-Pruebas planeadas-Pruebas planeadas-Ensayos de investigación y desarrollo', '2 Diás / 2880 Minutos', 'PRUEBAS', '2025-03-07 17:36:13', '2025-03-07 17:36:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paros`
--

CREATE TABLE `paros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `dtiempo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paros`
--

INSERT INTO `paros` (`id`, `nombre`, `dtiempo_id`) VALUES
(1, 'Fallas de equipos', 2),
(2, 'Cambio de producto o formato', 3),
(3, 'Cambio insumos / material de empaque', 3),
(4, 'Gestión', 3),
(5, 'Organización de Línea', 3),
(6, 'Logística Externa', 3),
(7, 'Logística Interna', 3),
(8, 'Mediciones y ajustes', 3),
(9, 'Pequeñas paradas', 4),
(10, 'Perdidas de velocidad', 4),
(11, 'Productos defectuosos', 5),
(12, 'Reproceso', 5),
(13, 'Mantenimiento Programado', 1),
(14, 'Tiempo fuera de programación', 1),
(15, 'No planeado por falta de recurso', 1),
(16, 'Pruebas Planeadas', 1),
(17, 'Limpieza y desinfección planeadas', 1),
(18, 'Inicio / fin de producción', 1),
(19, 'Tiempo no programado', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `id` int(11) NOT NULL,
  `nombre_planta` varchar(255) NOT NULL,
  `ciudad_id` int(11) NOT NULL,
  `responsable_id` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plantas`
--

INSERT INTO `plantas` (`id`, `nombre_planta`, `ciudad_id`, `responsable_id`, `created`) VALUES
(1, 'Planta 1', 10, 0, '2025-02-18 20:41:59'),
(2, 'Planta 2', 10, 0, '2025-02-18 20:42:31'),
(3, 'Planta 3', 10, 0, '2025-02-18 20:42:59'),
(4, 'Planta 4', 10, 0, '2025-02-18 20:43:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proceso`
--

CREATE TABLE `proceso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL,
  `planta_id` int(11) NOT NULL,
  `responsable_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proceso`
--

INSERT INTO `proceso` (`id`, `nombre`, `descripcion`, `planta_id`, `responsable_id`) VALUES
(1, 'EMPAQUE SÓLIDOS', 'EMPAQUE SÓLIDOS', 1, '0'),
(2, 'REFINACIÓN FÍSICA', 'REFINACIÓN FÍSICA', 1, '0'),
(3, 'EMPAQUE LIQUIDOS', 'EMPAQUE LIQUIDOS', 2, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `linea_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo` varchar(60) NOT NULL,
  `descripcion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `linea_id`, `nombre`, `codigo`, `descripcion`) VALUES
(2, 4, 'Aceite de cocina Gourmet', '001', 'Multiusos'),
(3, 4, 'Olivetto®Extra Virgen', '002', '12*1000ml'),
(4, 4, 'Oliosoya® (Tradicional, Oliva, Cremoso)', '003', '12*1200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razones_paro`
--

CREATE TABLE `razones_paro` (
  `id` int(11) NOT NULL,
  `subparo_id` int(11) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `razones_paro`
--

INSERT INTO `razones_paro` (`id`, `subparo_id`, `descripcion`) VALUES
(1, 1, 'ee43'),
(2, 1, 'Mantenimiento Preventivo'),
(4, 1, 'Mantenimiento Preventivo'),
(5, 2, 'Domingo, festivo'),
(6, 3, 'Tiempo ocasionado o asignable a otro proceso ajeno a esta línea'),
(7, 3, 'Tiempo sin programa'),
(8, 3, 'Tiempo no programado por actividad especial'),
(9, 3, 'Prioridad a otra línea de producción por planeación'),
(10, 3, 'Tiempo no programado por capacitación'),
(11, 4, 'No programado por política local'),
(12, 5, 'Inventario programado'),
(13, 6, 'Alimentación y refrigerio'),
(14, 6, 'Relevos planeados en otras líneas por alimentación y refrigerio\r\n'),
(15, 7, 'Falta de materia prima (bases grasas)'),
(16, 7, 'Falta de material de empaque'),
(17, 7, 'Falta Insumo'),
(18, 8, 'Electricidad\r\n'),
(19, 8, 'Agua Potable\r\n'),
(20, 8, 'PTAR'),
(21, 8, 'Nitrógeno\r\n'),
(22, 8, 'Combustible'),
(23, 8, 'Aire'),
(24, 8, 'Vapor'),
(25, 8, 'Amoníaco\r\n'),
(26, 9, 'Falta personal'),
(27, 10, 'Ensayos de investigación y desarrollo'),
(28, 10, 'Otros ensayos'),
(29, 11, 'Limpieza y desinfección planeada'),
(30, 12, 'Esperando alcanzar condiciones de proceso'),
(31, 12, 'Preparación de insumos / ingredientes / batch de producto '),
(32, 8, 'Vapor'),
(33, 8, 'Amoníaco\r\n'),
(34, 13, 'Drenaje'),
(35, 13, 'Esperando alcanzar condiciones para fin de proceso'),
(36, 14, 'En espera de resultados de análisis de laboratorio'),
(37, 14, 'Por preparación de insumos / ingredientes / batch de producto '),
(38, 15, 'Daño eléctrico equipo'),
(39, 15, 'Daño electrónico equipo'),
(40, 16, 'Daño instrumentación equipo'),
(41, 17, 'Daño mecánico equipo'),
(42, 18, 'Drenaje'),
(43, 18, 'Cambio, Lavados y/o Barrido de la línea y equipos'),
(44, 18, 'Cambio de material de empaque por cambio de producto'),
(45, 19, 'Cambio de formato (cambios de presentación, gramaje, moldes)'),
(46, 20, 'Cambio de ingrediente'),
(47, 20, 'Cambio de Insumo'),
(48, 20, 'Cambio de rollo / material de empaque'),
(49, 20, 'Cambio de tinta/solvente en codificadores'),
(50, 21, 'Información errada / incompleta'),
(51, 22, 'Falta de agua'),
(52, 22, 'Falta aire comprimido'),
(53, 22, 'Falta combustible'),
(54, 22, 'Falta de refrigeración'),
(55, 22, 'Falta energía eléctrica'),
(56, 22, 'Falta Vapor'),
(57, 22, 'No se encuentra el repuesto en almacén'),
(58, 23, 'Accidentes de trabajo y/o condiciones de riesgo activadas'),
(59, 23, 'Accidentes Ambientales y/o condicione de riesgo activadas'),
(60, 23, 'Evento de inocuidad y/o condicione de riesgo activadas'),
(61, 24, 'Capacitación no programada'),
(62, 24, 'Reunión no programada'),
(63, 24, 'Otro'),
(64, 25, 'Dar prioridad a alguna línea'),
(65, 25, 'Solicitud de adelanto de producción'),
(66, 26, 'Operación realizada por personal en entrenamiento / inducción'),
(67, 27, 'Derrame de insumo o ingrediente'),
(68, 27, 'Derrame de producto'),
(69, 27, 'Limpieza entrega de turno/Programar tiempo limite y ventanas horarias'),
(70, 28, 'Falta mano de obra para operar una máquina o equipo (EXPERIENCIA CONOCIMIENTO)'),
(71, 28, 'Interrupción de líneas para dar prioridad a otra'),
(72, 28, 'Ausentismos o calamidades'),
(73, 29, 'No hay disponibilidad de Silos'),
(74, 29, 'No hay disponibilidad de tanques'),
(75, 29, 'No hay espacio en Bodegas'),
(76, 30, 'Falta de abastecimiento de Material de empaque'),
(77, 30, 'Falta de abastecimiento de insumos e ingredientes'),
(78, 31, 'Adición / cancelación de producto por planeación'),
(79, 32, 'Falta de Materia prima (Palma, soya, canola, palmiste, girasol, otros)'),
(80, 33, 'No hay disponibilidad de silos'),
(81, 33, 'No hay disponibilidad de tanques'),
(82, 33, 'No hay espacio en Bodegas'),
(83, 34, 'Describa la razón del paro'),
(84, 35, 'Falta de material de empaque'),
(85, 35, 'No hay disponibilidad de tanques'),
(86, 35, 'No hay espacio en Bodegas'),
(87, 36, 'Espera análisis de laboratorio de pilotos o reformulaciones'),
(88, 36, 'Espera de análisis de laboratorio'),
(89, 37, 'Limpieza de equipo por desviaciones de inocuidad'),
(90, 38, 'Ajustes por variaciones de las condiciones de proceso'),
(91, 39, 'Ajuste por variación de calidad de materia prima'),
(92, 39, 'Ajuste por variación de las condiciones del producto'),
(93, 39, 'Ajuste por variación de calidad de material de empaque'),
(94, 40, 'Atascamiento línea y/o banda de producto'),
(95, 40, 'Pequeñas paradas'),
(96, 40, 'Limpiezas pequeñas línea y/o banda de producto'),
(97, 41, 'Asociado a calidad'),
(98, 41, 'Asociado a personal'),
(99, 41, 'Asociado a equipo'),
(100, 42, 'Tiempos en vacío'),
(101, 43, 'Productos defectuosos'),
(102, 44, 'Reproceso'),
(103, 45, 'ee43'),
(104, 45, 'Mantenimiento Preventivo'),
(105, 46, 'Domingo, festivo'),
(106, 47, 'No programado por política local'),
(107, 49, 'Inventario programado'),
(108, 48, 'Alimentación y refrigerio'),
(109, 48, 'Relevos planeados en otras líneas por alimentación y refrigerio'),
(110, 50, 'Falta de materia prima (bases grasas)'),
(111, 50, 'Falta de material de empaque'),
(112, 50, 'Falta Insumo'),
(113, 51, 'Electricidad'),
(114, 51, 'Agua Potable'),
(115, 51, 'PTAR'),
(116, 51, 'Nitrógeno'),
(117, 51, 'Aire'),
(118, 51, 'Combustible'),
(119, 51, 'Vapor'),
(120, 51, 'Amoníaco'),
(121, 52, 'Falta personal'),
(122, 53, 'Ensayos de investigación y desarrollo'),
(123, 53, 'Otros ensayos'),
(124, 54, 'Limpieza y desinfección planeada'),
(125, 55, 'Esperando alcanzar condiciones de proceso'),
(126, 55, 'Preparación de insumos / ingredientes / batch de producto					\r\n'),
(127, 56, 'Drenaje					\r\n'),
(128, 56, 'Esperando alcanzar condiciones para fin de proceso					\r\n'),
(129, 57, 'En espera de resultados de análisis de laboratorio					\r\n'),
(130, 57, 'Por preparación de insumos / ingredientes / batch de producto 					'),
(131, 58, 'Tiempo ocasionado o asignable a otro proceso ajeno a esta línea					\r\n'),
(132, 58, 'Tiempo sin programa					\r\n'),
(133, 58, 'Tiempo no programado por actividad especial		'),
(134, 58, 'Tiempo no programado por capacitación					\r\n'),
(135, 58, 'Prioridad a otra línea de producción por planeación					\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refencia_linea`
--

CREATE TABLE `refencia_linea` (
  `id` int(11) NOT NULL,
  `referencia` varchar(255) NOT NULL,
  `capacidad_teorica` varchar(255) NOT NULL,
  `linea_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `rol`) VALUES
(1, 'Root'),
(2, 'Administrador'),
(3, 'Supervisor'),
(4, 'Operador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subparos`
--

CREATE TABLE `subparos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `paro_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subparos`
--

INSERT INTO `subparos` (`id`, `nombre`, `paro_id`) VALUES
(1, 'Mantenimiento Programado', 1),
(2, 'Domingo, Festivo', 2),
(3, 'Tiempo no programado', 2),
(4, 'No programado por política local', 2),
(5, 'Inventario', 2),
(6, 'Tiempo planeado para descanso y refrigerio', 2),
(7, 'Materia prima, insumos y/o material de empaque', 3),
(8, 'Servicios', 3),
(9, 'Personal', 3),
(10, 'Pruebas planeadas', 4),
(11, 'Limpieza y desinfección planeadas', 5),
(12, 'Arranque de proceso', 6),
(13, 'Fin de Proceso', 6),
(14, 'Esperas por Análisis de laboratorio', 6),
(15, 'Daño eléctrico', 1),
(16, 'Daño instrumentación equipo', 1),
(17, 'Daño mecánico', 1),
(18, 'Cambio de producto', 2),
(19, 'Cambio de formato (referencia)', 2),
(20, 'Cambio insumos / material de empaque', 3),
(21, 'Problemas de Comunicación', 4),
(22, 'Daño y/o suspensión de servicios', 4),
(23, 'Riesgos y/o accidentes (SST, Ambientales e Inocuidad)', 4),
(24, 'Reuniones No programadas', 4),
(25, 'Adelantos de Producción', 4),
(26, 'Falta de Habilidad en los operadores', 4),
(27, 'Limpiezas', 4),
(28, 'Personal Faltante', 5),
(29, 'Falta de espacio de almacenamiento externo', 6),
(30, 'Falta de abastecimiento de MEEI´s', 6),
(31, 'Cambios del programa de producción', 6),
(32, 'Faltante de Materia Prima', 6),
(33, 'Falta de espacio de Almacenamiento interno', 7),
(34, 'Entrega de Materia Prima Ineficiente', 7),
(35, 'Falta de abastecimiento de MEEI´s', 7),
(36, 'Espera análisis de laboratorio', 8),
(37, 'Limpieza de equipos por condiciones', 8),
(38, 'Ajuste de maquina', 8),
(39, 'Ajustes calidad de producto', 8),
(40, 'Ajustes de proceso y condición', 9),
(41, 'Tiempo baja velocidad', 10),
(42, 'Tiempos en vacío', 10),
(43, 'Productos defectuosos', 11),
(44, 'Reproceso', 12),
(45, 'Mantenimiento Programado', 13),
(46, 'Domingo, Festivo', 14),
(47, 'No programado por política local', 14),
(48, 'Tiempo planeado para descanso y refrigerio', 14),
(49, 'Inventario', 14),
(50, 'Materia prima, insumos y/o material de empaque', 15),
(51, 'Servicios', 15),
(52, 'Personal', 15),
(53, 'Pruebas planeadas', 16),
(54, 'Limpieza y desinfección planeadas', 17),
(55, 'Arranque de proceso', 18),
(56, 'Fin de Proceso ', 18),
(57, 'Esperas por Análisis de laboratorio', 18),
(58, 'Tiempo fuera de programación', 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempo_operacion`
--

CREATE TABLE `tiempo_operacion` (
  `id` int(11) NOT NULL,
  `controlcapacidad_id` int(11) NOT NULL,
  `medida` varchar(10) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `hora_inicial` time NOT NULL,
  `hora_final` time NOT NULL,
  `produccion_conforme` int(11) NOT NULL,
  `tiempo_perdido_ideal` decimal(10,2) NOT NULL,
  `tiempo_perdido_real` decimal(10,2) NOT NULL,
  `reproceso` int(11) NOT NULL,
  `mermas` int(11) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id` int(11) NOT NULL,
  `turno` varchar(255) NOT NULL,
  `planta_id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `turno`, `planta_id`, `fecha_inicio`, `fecha_fin`, `hora_inicio`, `hora_fin`, `created`) VALUES
(1, '1', 1, '2025-01-01', '2025-01-31', '06:00:00', '14:00:00', '2025-01-27 03:34:57'),
(2, '2', 1, '2025-01-01', '2025-01-31', '14:00:00', '22:00:00', '2025-01-27 03:35:49'),
(3, '3', 1, '2025-01-01', '2025-01-31', '22:00:00', '06:00:00', '2025-01-27 03:36:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades_medida`
--

CREATE TABLE `unidades_medida` (
  `id` int(11) NOT NULL,
  `unidad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidades_medida`
--

INSERT INTO `unidades_medida` (`id`, `unidad`) VALUES
(1, 'Kg'),
(2, 'Cajas'),
(3, 'Unidades'),
(4, 'Toneladas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `credencial` varchar(255) NOT NULL,
  `rol_id` int(11) NOT NULL,
  `identificacion` bigint(20) NOT NULL,
  `creacion` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `usuario`, `credencial`, `rol_id`, `identificacion`, `creacion`) VALUES
(2, 'ALEXANDER', 'OREJUELA  ARBOLEDA', 'root', '$2y$10$2ntEdxSS/UY4518ec8GYUejHlzaolXBKHieH..LvJYWu1DFu.5S6y', 1, 14696620, '2024-11-27 15:08:49'),
(3, 'Emilia11', 'Jeiger11', 'jemilia11', '$2y$10$qwUeAjtFo05TwxpI5IK4AOY/BpDu.645ZLik48LTS9KnUTNLhpONm', 3, 1112233, '2024-11-27 15:52:19'),
(5, 'juan ', 'Patiño', 'j.patino', '$2y$10$8tjkp3O5Z27u3h1TmNytt.8TNe.NGVy5/DjRwYC1sIsHlq/0nMGGO', 2, 123456, '2025-01-16 22:03:53'),
(6, 'ALEXANDER', 'OREJUELA  ARBOLEDA', 'a.orejuela', '$2y$10$Hrt.VJQWPH7mBHFXGCt9lulA9Mavgg9z9PFaZsOKAJysJrnQciV62', 2, 7894444, '2025-01-17 14:16:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departamento` (`departamento`);

--
-- Indices de la tabla `control_capacidad`
--
ALTER TABLE `control_capacidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `danoequipo`
--
ALTER TABLE `danoequipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipo` (`equipo`);

--
-- Indices de la tabla `definicion`
--
ALTER TABLE `definicion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pais` (`pais`);

--
-- Indices de la tabla `dtiempo`
--
ALTER TABLE `dtiempo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `linea`
--
ALTER TABLE `linea`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proceso` (`proceso`),
  ADD KEY `planta_id` (`planta_id`);

--
-- Indices de la tabla `lineaproducto`
--
ALTER TABLE `lineaproducto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linea` (`linea_id`),
  ADD KEY `producto` (`producto_id`);

--
-- Indices de la tabla `linea_equipo`
--
ALTER TABLE `linea_equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `linea_proceso`
--
ALTER TABLE `linea_proceso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paradas`
--
ALTER TABLE `paradas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paros`
--
ALTER TABLE `paros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dtiempo_id` (`dtiempo_id`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proceso`
--
ALTER TABLE `proceso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planta_id` (`planta_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `linea_id` (`linea_id`);

--
-- Indices de la tabla `razones_paro`
--
ALTER TABLE `razones_paro`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subparo_id` (`subparo_id`);

--
-- Indices de la tabla `refencia_linea`
--
ALTER TABLE `refencia_linea`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subparos`
--
ALTER TABLE `subparos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paro_id` (`paro_id`);

--
-- Indices de la tabla `tiempo_operacion`
--
ALTER TABLE `tiempo_operacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `controlcapacidad_id` (`controlcapacidad_id`);

--
-- Indices de la tabla `unidades_medida`
--
ALTER TABLE `unidades_medida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `control_capacidad`
--
ALTER TABLE `control_capacidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `danoequipo`
--
ALTER TABLE `danoequipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT de la tabla `definicion`
--
ALTER TABLE `definicion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `linea`
--
ALTER TABLE `linea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `lineaproducto`
--
ALTER TABLE `lineaproducto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `linea_equipo`
--
ALTER TABLE `linea_equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `linea_proceso`
--
ALTER TABLE `linea_proceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `paradas`
--
ALTER TABLE `paradas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proceso`
--
ALTER TABLE `proceso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `razones_paro`
--
ALTER TABLE `razones_paro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT de la tabla `refencia_linea`
--
ALTER TABLE `refencia_linea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tiempo_operacion`
--
ALTER TABLE `tiempo_operacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `unidades_medida`
--
ALTER TABLE `unidades_medida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `paros`
--
ALTER TABLE `paros`
  ADD CONSTRAINT `paros_ibfk_1` FOREIGN KEY (`dtiempo_id`) REFERENCES `dtiempo` (`id`);

--
-- Filtros para la tabla `razones_paro`
--
ALTER TABLE `razones_paro`
  ADD CONSTRAINT `razones_paro_ibfk_1` FOREIGN KEY (`subparo_id`) REFERENCES `subparos` (`id`);

--
-- Filtros para la tabla `subparos`
--
ALTER TABLE `subparos`
  ADD CONSTRAINT `subparos_ibfk_1` FOREIGN KEY (`paro_id`) REFERENCES `paros` (`id`);

--
-- Filtros para la tabla `tiempo_operacion`
--
ALTER TABLE `tiempo_operacion`
  ADD CONSTRAINT `tiempo_operacion_ibfk_1` FOREIGN KEY (`controlcapacidad_id`) REFERENCES `control_capacidad` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
