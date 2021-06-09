-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2021 a las 08:53:04
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_analisis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda_cita`
--

CREATE TABLE `agenda_cita` (
  `NO_CITAS` int(11) NOT NULL,
  `FECHA_HORA` datetime NOT NULL,
  `CODIGO_PACIENTE` int(11) NOT NULL,
  `CODIGO_TIPO_USUARIO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `casa`
--

CREATE TABLE `casa` (
  `CODIGO_CASA` int(11) NOT NULL,
  `NOMBRE_CASA` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `casa`
--

INSERT INTO `casa` (`CODIGO_CASA`, `NOMBRE_CASA`) VALUES
(1, 'CASA MINKA'),
(2, 'CASA FRATERNIDAD '),
(3, 'CASA MINKA'),
(4, 'CASA FRATERNIDAD '),
(5, 'CASA MINKA'),
(6, 'CASA FRATERNIDAD '),
(7, 'Casa No.10 Gargena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas_solventes`
--

CREATE TABLE `citas_solventes` (
  `CODIGO_CITA_SOLVENTE` int(11) NOT NULL,
  `NO_CITAS` int(11) NOT NULL,
  `CODIGO_ESTADO_CITA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicion`
--

CREATE TABLE `condicion` (
  `CODIGO_CONDICION` int(11) NOT NULL,
  `CONDICION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `condicion`
--

INSERT INTO `condicion` (`CODIGO_CONDICION`, `CONDICION`) VALUES
(1, 'POBREZA'),
(2, 'POBREZA EXTREMA'),
(3, 'VIOLENCIA'),
(4, 'VIOLENCIA INTRAFAMILIAR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_cita`
--

CREATE TABLE `estado_cita` (
  `CODIGO_ESTADO_CITA` int(11) NOT NULL,
  `ESTADO` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_cita`
--

INSERT INTO `estado_cita` (`CODIGO_ESTADO_CITA`, `ESTADO`) VALUES
(1, 'ATENDIDO'),
(2, 'PENDIENTE'),
(3, 'ATENDIDO'),
(4, 'PENDIENTE'),
(5, 'ATENDIDO'),
(6, 'PENDIENTE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_civil`
--

CREATE TABLE `estado_civil` (
  `CODIGO_ESTADO_CIVIL` int(11) NOT NULL,
  `ESTADO_CIVIL` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_civil`
--

INSERT INTO `estado_civil` (`CODIGO_ESTADO_CIVIL`, `ESTADO_CIVIL`) VALUES
(1, 'SOLTERO'),
(2, 'CASADO'),
(11, 'SOLTERA'),
(12, 'CASADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `CODIGO_GRUPO` int(11) NOT NULL,
  `GRUPO` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`CODIGO_GRUPO`, `GRUPO`) VALUES
(1, 'GRUPO A'),
(2, 'GRUPO B'),
(3, 'GRUPO C'),
(4, 'GRUPO D'),
(5, 'GRUPO E'),
(6, 'GRUPO F'),
(7, 'GRUPO G'),
(8, 'GRUPO H'),
(9, 'GRUPO I'),
(10, 'GRUPO J'),
(11, 'GRUPO A'),
(12, 'GRUPO B'),
(13, 'GRUPO C'),
(14, 'GRUPO D'),
(15, 'GRUPO E'),
(16, 'GRUPO F'),
(17, 'GRUPO G'),
(18, 'GRUPO H'),
(19, 'GRUPO I'),
(20, 'GRUPO J'),
(21, 'GRUPO A'),
(22, 'GRUPO B'),
(23, 'GRUPO C'),
(24, 'GRUPO D'),
(25, 'GRUPO E'),
(26, 'GRUPO F'),
(27, 'GRUPO G'),
(28, 'GRUPO H'),
(29, 'GRUPO I'),
(30, 'GRUPO J');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente`
--

CREATE TABLE `paciente` (
  `CODIGO_PACIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(25) NOT NULL,
  `APELLIDOS` varchar(25) NOT NULL,
  `EDAD` int(11) NOT NULL,
  `FECHA_NACIMIENTO` datetime NOT NULL,
  `ENCARGADO` varchar(50) NOT NULL,
  `TELEFONO` varchar(10) NOT NULL,
  `CODIGO_ESTADO_CIVIL` int(11) NOT NULL,
  `CODIGO_CONDICION` int(11) NOT NULL,
  `CODIGO_CASA` int(11) NOT NULL,
  `FECHA_INGRESO` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paciente_grupo`
--

CREATE TABLE `paciente_grupo` (
  `CODIGO_PG` int(11) NOT NULL,
  `CODIGO_GRUPO` int(11) NOT NULL,
  `CODIGO_PACIENTE` int(11) NOT NULL,
  `CODIGO_RANGO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesion`
--

CREATE TABLE `profesion` (
  `CODIGO_PROFESION` int(11) NOT NULL,
  `PROFESION` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesion`
--

INSERT INTO `profesion` (`CODIGO_PROFESION`, `PROFESION`) VALUES
(1, 'MEDICO'),
(2, 'NUTRICIONISTA'),
(3, 'PSICÓLOGO'),
(4, 'PEDIATRA'),
(5, 'PEDAGOGO'),
(6, 'PERITO'),
(7, 'ABOGADO'),
(8, 'INGENIERO'),
(9, 'ADMINISTRADOR'),
(10, 'MEDICO'),
(11, 'NUTRICIONISTA'),
(12, 'PSICÓLOGO'),
(13, 'PEDIATRA'),
(14, 'PEDAGOGO'),
(15, 'PERITO'),
(16, 'ABOGADO'),
(17, 'INGENIERO'),
(18, 'ADMINISTRADOR'),
(19, 'MEDICO'),
(20, 'NUTRICIONISTA'),
(21, 'PSICÓLOGO'),
(22, 'PEDIATRA'),
(23, 'PEDAGOGO'),
(24, 'PERITO'),
(25, 'ABOGADO'),
(26, 'INGENIERO'),
(27, 'ADMINISTRADOR'),
(28, 'administrador'),
(29, 'doctor'),
(30, 'maestra');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango_edad`
--

CREATE TABLE `rango_edad` (
  `CODIGO_RANGO` int(11) NOT NULL,
  `RANGO` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `CODIGO_ROL` int(11) NOT NULL,
  `ROL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`CODIGO_ROL`, `ROL`) VALUES
(1, 'administrador'),
(2, 'secretaria'),
(3, 'secretaria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `CODIGO_TIPO_USUARIO` int(11) NOT NULL,
  `CODIGO_USUARIO` int(11) NOT NULL,
  `CODIGO_PROFESION` int(11) NOT NULL,
  `CODIGO_ROL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `CODIGO_USUARIO` int(11) NOT NULL,
  `NOMBRE` varchar(25) NOT NULL,
  `APELLIDO` varchar(25) NOT NULL,
  `NOMBRE_USUARIO` varchar(15) NOT NULL,
  `PASSWORD` varchar(15) NOT NULL,
  `CORREO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`CODIGO_USUARIO`, `NOMBRE`, `APELLIDO`, `NOMBRE_USUARIO`, `PASSWORD`, `CORREO`) VALUES
(1, 'otto', 'ajanel', 'ajanel', 'ajanel', 'ottonielajanel@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda_cita`
--
ALTER TABLE `agenda_cita`
  ADD PRIMARY KEY (`NO_CITAS`),
  ADD KEY `CODIGO_PACIENTE` (`CODIGO_PACIENTE`),
  ADD KEY `CODIGO_TIPO_USUARIO` (`CODIGO_TIPO_USUARIO`);

--
-- Indices de la tabla `casa`
--
ALTER TABLE `casa`
  ADD PRIMARY KEY (`CODIGO_CASA`);

--
-- Indices de la tabla `citas_solventes`
--
ALTER TABLE `citas_solventes`
  ADD PRIMARY KEY (`CODIGO_CITA_SOLVENTE`),
  ADD KEY `NO_CITAS` (`NO_CITAS`),
  ADD KEY `CODIGO_ESTADO_CITA` (`CODIGO_ESTADO_CITA`);

--
-- Indices de la tabla `condicion`
--
ALTER TABLE `condicion`
  ADD PRIMARY KEY (`CODIGO_CONDICION`);

--
-- Indices de la tabla `estado_cita`
--
ALTER TABLE `estado_cita`
  ADD PRIMARY KEY (`CODIGO_ESTADO_CITA`);

--
-- Indices de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  ADD PRIMARY KEY (`CODIGO_ESTADO_CIVIL`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`CODIGO_GRUPO`);

--
-- Indices de la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD PRIMARY KEY (`CODIGO_PACIENTE`),
  ADD KEY `CODIGO_ESTADO_CIVIL` (`CODIGO_ESTADO_CIVIL`),
  ADD KEY `CODIGO_CONDICION` (`CODIGO_CONDICION`),
  ADD KEY `CODIGO_CASA` (`CODIGO_CASA`);

--
-- Indices de la tabla `paciente_grupo`
--
ALTER TABLE `paciente_grupo`
  ADD PRIMARY KEY (`CODIGO_PG`),
  ADD KEY `CODIGO_GRUPO` (`CODIGO_GRUPO`),
  ADD KEY `CODIGO_PACIENTE` (`CODIGO_PACIENTE`),
  ADD KEY `CODIGO_RANGO` (`CODIGO_RANGO`);

--
-- Indices de la tabla `profesion`
--
ALTER TABLE `profesion`
  ADD PRIMARY KEY (`CODIGO_PROFESION`);

--
-- Indices de la tabla `rango_edad`
--
ALTER TABLE `rango_edad`
  ADD PRIMARY KEY (`CODIGO_RANGO`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`CODIGO_ROL`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`CODIGO_TIPO_USUARIO`),
  ADD KEY `CODIGO_USUARIO` (`CODIGO_USUARIO`),
  ADD KEY `CODIGO_PROFESION` (`CODIGO_PROFESION`),
  ADD KEY `CODIGO_ROL` (`CODIGO_ROL`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`CODIGO_USUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda_cita`
--
ALTER TABLE `agenda_cita`
  MODIFY `NO_CITAS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `casa`
--
ALTER TABLE `casa`
  MODIFY `CODIGO_CASA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `citas_solventes`
--
ALTER TABLE `citas_solventes`
  MODIFY `CODIGO_CITA_SOLVENTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `condicion`
--
ALTER TABLE `condicion`
  MODIFY `CODIGO_CONDICION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `estado_cita`
--
ALTER TABLE `estado_cita`
  MODIFY `CODIGO_ESTADO_CITA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estado_civil`
--
ALTER TABLE `estado_civil`
  MODIFY `CODIGO_ESTADO_CIVIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `CODIGO_GRUPO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `paciente`
--
ALTER TABLE `paciente`
  MODIFY `CODIGO_PACIENTE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paciente_grupo`
--
ALTER TABLE `paciente_grupo`
  MODIFY `CODIGO_PG` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesion`
--
ALTER TABLE `profesion`
  MODIFY `CODIGO_PROFESION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `rango_edad`
--
ALTER TABLE `rango_edad`
  MODIFY `CODIGO_RANGO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `CODIGO_ROL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `CODIGO_TIPO_USUARIO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `CODIGO_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agenda_cita`
--
ALTER TABLE `agenda_cita`
  ADD CONSTRAINT `agenda_cita_ibfk_1` FOREIGN KEY (`CODIGO_PACIENTE`) REFERENCES `paciente` (`CODIGO_PACIENTE`),
  ADD CONSTRAINT `agenda_cita_ibfk_2` FOREIGN KEY (`CODIGO_TIPO_USUARIO`) REFERENCES `tipo_usuario` (`CODIGO_TIPO_USUARIO`);

--
-- Filtros para la tabla `citas_solventes`
--
ALTER TABLE `citas_solventes`
  ADD CONSTRAINT `citas_solventes_ibfk_1` FOREIGN KEY (`NO_CITAS`) REFERENCES `agenda_cita` (`NO_CITAS`),
  ADD CONSTRAINT `citas_solventes_ibfk_2` FOREIGN KEY (`CODIGO_ESTADO_CITA`) REFERENCES `estado_cita` (`CODIGO_ESTADO_CITA`);

--
-- Filtros para la tabla `paciente`
--
ALTER TABLE `paciente`
  ADD CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`CODIGO_ESTADO_CIVIL`) REFERENCES `estado_civil` (`CODIGO_ESTADO_CIVIL`),
  ADD CONSTRAINT `paciente_ibfk_2` FOREIGN KEY (`CODIGO_CONDICION`) REFERENCES `condicion` (`CODIGO_CONDICION`),
  ADD CONSTRAINT `paciente_ibfk_3` FOREIGN KEY (`CODIGO_CASA`) REFERENCES `casa` (`CODIGO_CASA`);

--
-- Filtros para la tabla `paciente_grupo`
--
ALTER TABLE `paciente_grupo`
  ADD CONSTRAINT `paciente_grupo_ibfk_1` FOREIGN KEY (`CODIGO_GRUPO`) REFERENCES `grupo` (`CODIGO_GRUPO`),
  ADD CONSTRAINT `paciente_grupo_ibfk_2` FOREIGN KEY (`CODIGO_PACIENTE`) REFERENCES `paciente` (`CODIGO_PACIENTE`),
  ADD CONSTRAINT `paciente_grupo_ibfk_3` FOREIGN KEY (`CODIGO_RANGO`) REFERENCES `rango_edad` (`CODIGO_RANGO`);

--
-- Filtros para la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD CONSTRAINT `tipo_usuario_ibfk_1` FOREIGN KEY (`CODIGO_USUARIO`) REFERENCES `usuario` (`CODIGO_USUARIO`),
  ADD CONSTRAINT `tipo_usuario_ibfk_2` FOREIGN KEY (`CODIGO_PROFESION`) REFERENCES `profesion` (`CODIGO_PROFESION`),
  ADD CONSTRAINT `tipo_usuario_ibfk_3` FOREIGN KEY (`CODIGO_ROL`) REFERENCES `rol` (`CODIGO_ROL`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
