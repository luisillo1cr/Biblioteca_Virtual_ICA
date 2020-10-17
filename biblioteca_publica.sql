-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2020 a las 02:02:54
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_publica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `AdminDNI` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `AdminNombre` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `AdminApellido` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `AdminTelefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `AdminDireccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `AdminDNI`, `AdminNombre`, `AdminApellido`, `AdminTelefono`, `AdminDireccion`, `CuentaCodigo`) VALUES
(1, '231231', 'eqewwq', 'qweqwe', '1231', '', 'AC50284200531'),
(2, '40249282', 'Luis', 's', '60364823', '', 'AC55595493812'),
(3, '12345678', 'El pepe', 's', '', '', 'AC43940743193'),
(4, '12312', 'pepe', 's', '', '', 'AC02458050094'),
(5, '1231231', 'asda', 'sda', '', '', 'AC63218099315'),
(6, '312313', 'qeqw', 'qweqweq', '', '', 'AC96839947556'),
(7, '2131', 'rere', 'rrrrr', '', '', 'AC48919148737');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE `bitacora` (
  `id` int(10) NOT NULL,
  `BitacoraCodigo` varchar(150) COLLATE utf8_spanish2_ci NOT NULL,
  `BitacoraFecha` date NOT NULL,
  `BitacoraHoraInicio` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `BitacoraHoraFinal` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `BitacoraTipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `BitacoraYear` int(4) NOT NULL,
  `CuentaCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id`, `BitacoraCodigo`, `BitacoraFecha`, `BitacoraHoraInicio`, `BitacoraHoraFinal`, `BitacoraTipo`, `BitacoraYear`, `CuentaCodigo`) VALUES
(1, 'CB38481681', '0000-00-00', '02:34:07 pm', 'Sin registro', 'Administrador', 2020, 'AC96839947556'),
(2, 'CB19187272', '2020-10-16', '02:38:12 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(3, 'CB52348043', '2020-10-16', '02:50:04 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(4, 'CB82671564', '2020-10-16', '02:50:45 pm', 'Sin registro', 'Administrador', 2020, 'AC96839947556'),
(5, 'CB92360315', '2020-10-16', '02:51:09 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(6, 'CB51385686', '2020-10-16', '02:51:51 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(7, 'CB53695167', '2020-10-16', '02:55:17 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(8, 'CB19413358', '2020-10-16', '02:57:02 pm', 'Sin registro', 'Administrador', 2020, 'AC96839947556'),
(9, 'CB87815639', '2020-10-16', '02:57:28 pm', 'Sin registro', 'Administrador', 2020, 'AC96839947556'),
(10, 'CB087984610', '2020-10-16', '03:05:36 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(11, 'CB910615311', '2020-10-16', '03:23:55 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(12, 'CB045619512', '2020-10-16', '03:32:19 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(13, 'CB841449313', '2020-10-16', '05:50:10 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(14, 'CB907337214', '2020-10-16', '05:50:57 pm', 'Sin registro', 'Administrador', 2020, 'AC63218099315'),
(15, 'CB915193215', '2020-10-16', '05:54:46 pm', 'Sin registro', 'Administrador', 2020, 'AC48919148737');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) NOT NULL,
  `CategoriaCodigo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `CategoriaNombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(10) NOT NULL,
  `ClienteDNI` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteNombre` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteApellido` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteTelefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteOcupacion` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `ClienteDireccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id` int(10) NOT NULL,
  `CuentaCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaPrivilegio` int(1) NOT NULL,
  `CuentaUsuario` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaClave` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaEmail` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaEstado` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaTipo` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaGenero` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `CuentaFoto` varchar(535) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id`, `CuentaCodigo`, `CuentaPrivilegio`, `CuentaUsuario`, `CuentaClave`, `CuentaEmail`, `CuentaEstado`, `CuentaTipo`, `CuentaGenero`, `CuentaFoto`) VALUES
(1, 'AC50284200531', 1, 'admin1', 'bFF2dExaU211OUE2TWY5Z0oxMU1vdz09', '', 'Activo', 'Administrador', 'Femenino', 'adminmujer.png'),
(2, 'AC55595493812', 1, 'admin', 'WGRKRGdyakxQcUZ4U3JkSENVWDd1Zz09', '', 'Activo', 'Administrador', 'Femenino', 'adminmujer.png'),
(3, 'AC43940743193', 2, 'admin2', 'ZjJTQnNQNU1YOEM3YUNWVk9yVkpvQT09', '', 'Activo', 'Administrador', 'Masculino', 'adminhombre.png'),
(4, 'AC02458050094', 3, 'noAdmin', 'ZjJTQnNQNU1YOEM3YUNWVk9yVkpvQT09', '', 'Activo', 'Administrador', 'Femenino', 'adminmujer.png'),
(5, 'AC63218099315', 1, 'adminadmin', 'dDVFbG15eFJmUTg0cG1vdURMRTUxZz09', '', 'Activo', 'Administrador', 'Masculino', 'adminhombre.png'),
(6, 'AC96839947556', 1, '1234', 'bFF2dExaU211OUE2TWY5Z0oxMU1vdz09', '', 'Activo', 'Administrador', 'Masculino', 'adminhombre.png'),
(7, 'AC48919148737', 3, 'adminno', 'TzRMUk5qTHltWXhCbjBMNTJkNnV3QT09', '', 'Activo', 'Administrador', 'Masculino', 'adminhombre.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(10) NOT NULL,
  `EmpresaCodigo` varchar(40) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaNombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaTelefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaEmail` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaDireccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaDirector` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaMoneda` varchar(1) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaYear` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id` int(10) NOT NULL,
  `LibroCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroTitulo` varchar(170) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroAutor` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroPais` int(50) NOT NULL,
  `LibroYear` int(4) NOT NULL,
  `LibroEditorial` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroEdicion` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroPrecio` decimal(30,2) NOT NULL,
  `LibroStock` int(5) NOT NULL,
  `LibroUbicacion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroResumen` text COLLATE utf8_spanish2_ci NOT NULL,
  `LibroImagen` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroPDF` varchar(535) COLLATE utf8_spanish2_ci NOT NULL,
  `LibroDescarga` varchar(5) COLLATE utf8_spanish2_ci NOT NULL,
  `CategoriaCodigo` varchar(30) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `EmpresaCodigo` varchar(40) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(10) NOT NULL,
  `ProveedorCodigo` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorNombre` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorResponsable` varchar(100) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorTelefono` varchar(15) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorEmail` varchar(70) COLLATE utf8_spanish2_ci NOT NULL,
  `ProveedorDireccion` varchar(200) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CuentaCodigo` (`CuentaCodigo`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CuentaCodigo` (`CuentaCodigo`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CategoriaCodigo` (`CategoriaCodigo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CuentaCodigo` (`CuentaCodigo`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CuentaCodigo` (`CuentaCodigo`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmpresaCodigo` (`EmpresaCodigo`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `LibroCodigo` (`LibroCodigo`),
  ADD KEY `CategoriaCodigo` (`CategoriaCodigo`),
  ADD KEY `ProveedorCodigo` (`ProveedorCodigo`),
  ADD KEY `EmpresaCodigo` (`EmpresaCodigo`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ProveedorCodigo` (`ProveedorCodigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`CuentaCodigo`) REFERENCES `cuenta` (`CuentaCodigo`);

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `bitacora_ibfk_1` FOREIGN KEY (`CuentaCodigo`) REFERENCES `cuenta` (`CuentaCodigo`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`CuentaCodigo`) REFERENCES `cuenta` (`CuentaCodigo`);

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`CategoriaCodigo`) REFERENCES `categoria` (`CategoriaCodigo`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`ProveedorCodigo`) REFERENCES `proveedor` (`ProveedorCodigo`),
  ADD CONSTRAINT `libro_ibfk_3` FOREIGN KEY (`EmpresaCodigo`) REFERENCES `empresa` (`EmpresaCodigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
