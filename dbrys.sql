-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2021 a las 03:44:54
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbrys`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL,
  `tipoempleado` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `fechadenacimiento` date NOT NULL,
  `tipodocumento` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `numeroidentificacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `cuidad` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `departamento` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `fechaingreso` date NOT NULL,
  `formacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `carrera` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `perfillaboral` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `idioma` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `licencia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `cursodealtura` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `lineaservicio` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id`, `tipoempleado`, `nombre`, `apellidos`, `fechadenacimiento`, `tipodocumento`, `numeroidentificacion`, `cuidad`, `departamento`, `celular`, `email`, `fechaingreso`, `formacion`, `carrera`, `perfillaboral`, `idioma`, `licencia`, `cursodealtura`, `lineaservicio`) VALUES
(1, 'Tecnico', 'luis armandos', 'cortina lora', '2021-09-18', 'C.C', '1143336548', 'cartagena', 'killa', '3188440494666', 'luiscolora@gmail.com', '2021-09-08', 'Tecnico', 'ingeniero de sistema', 'Junior', 'B1', 'A1', 'SI', 'redes,electrvidad'),
(3, 'Coordinador', 'wdasd', 'zabala', '2021-09-15', 'C.C', '12332', 'cartagena', 'bolivar', '3188440494', 'luiscolora@gmail.com', '2021-09-22', 'Tecnico', 'sistema', 'Junior', 'B1', 'A1', 'SI', 'redes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombreempresa` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `nit` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `mesa` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombreempresa`, `nit`, `correo`, `telefono`, `mesa`) VALUES
(1, 'Elyon yireh', '011', 'elyon@gmail.com', '6722040', 'mesa1'),
(5, 'Elyon yireh2', '0113', 'elyon@gmail.com', 'dasda', 'mesa2'),
(7, 'werfdfsdfdsf', 'dsfsdfsdfsd', 'elyon@gmail.com', 'asdasda', 'adsada'),
(8, 'dasdas', 'adasda', 'dasdas', 'sdasda', 'Mesa1'),
(9, 'tuti', 'adsdas12', 'dasda', 'dasdas', 'mesa1'),
(11, 'fgsklkhjhk', 'jhlkhlk', 'jhlkhj', 'ljhklhlk', 'jkhlk'),
(12, 'jhkljhlkj', 'jlkhlkh', 'jkhlkh', 'jkhlkh', 'ljkhlk'),
(13, 'kjklj', 'kjñlkj', 'kjñlk', 'kjñlk', 'kjlñ'),
(14, 'jhlkjhlk', 'jhlkh', 'jkhlk', 'ljkhlkhj', 'jhkljhkjh'),
(15, 'regi', '09876', 'laksda@gmail.com', '5657676', 'mesa1'),
(16, 'servirser', '1232423423l', 'luaisa', '3188440494', 'AK'),
(17, 'sdassa', 'asdasda', 'adasd', 'asdasd', 'mesa3'),
(18, 'carmelita', '456789', 'luiscolora@gmail.com', '7777', 'Mesa1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empresa_nombre` (`nombreempresa`),
  ADD KEY `empresa_nit` (`nit`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
