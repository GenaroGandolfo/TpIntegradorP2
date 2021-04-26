-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 26-04-2021 a las 19:13:08
-- Versión del servidor: 5.7.32
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `compusdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_del_producto` int(10) NOT NULL,
  `autor_comentario` int(10) NOT NULL,
  `comentario` varchar(250) NOT NULL,
  `foto_autor` varchar(1000) DEFAULT NULL,
  `comentario_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` int(15) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `precio`, `descripcion`) VALUES
(1, 'MacBook Air', 1599, 'La MacBook Air MQD32LE/A de Apple cuenta con un diseño elegante y ligero. También, dispone de teclado retroiluminado para que puedas continuar escribiendo con poca luz ambiental y sensor integrado que ajusta automáticamente el brillo de la pantalla. Por otro lado, llevala con vos donde quieras gracias a sus medidas -17 mm de alto, 325 mm de ancho y 227 mm de profundidad- y su peso de tan solo 1,35 kilogramos.'),
(2, 'MacBook Pro', 3299, 'Apple MacBook Pro es una computadora portátil macOS con una pantalla de 13.30 pulgadas que tiene una resolución de 2560x1600 píxeles. Está alimentado por un procesador Core i5 y viene con 12 GB de RAM. El Apple MacBook Pro incluye 512 GB de almacenamiento SSD.'),
(3, 'Lenovo Thinkpad', 1350, 'Lenovo ThinkPad es una computadora portátil con Windows 10 con una pantalla de 14,00 pulgadas que tiene una resolución de 1920x1080 píxeles. Está alimentado por un procesador Core i7 y viene con 12 GB de RAM. El Lenovo ThinkPad incluye 256 GB de almacenamiento SSD. Los gráficos funcionan con Intel HD Graphics 520.'),
(4, 'HP Pavilion', 1299, 'Lenovo ThinkPad es una computadora portátil con Windows 10 con una pantalla de 14,00 pulgadas que tiene una resolución de 1920x1080 píxeles. Está alimentado por un procesador Core i7 y viene con 12 GB de RAM. El Lenovo ThinkPad incluye 256 GB de almacenamiento SSD. Los gráficos funcionan con Intel HD Graphics 520.'),
(5, 'Acer Aspire 3', 1050, '            descripcion: \"Acer Aspire 3 A315-51-3004 is a Windows 10 Home laptop with a 15.60-inch display that has a resolution of 1366x768 pixels. It is powered by a Core i3 processor and it comes with 4GB of RAM. The Acer Aspire 3 A315-51-3004 packs 500GB of HDD storage. Graphics are powered by Intel HD Graphics 520. Connectivity options include Wi-Fi 802.11 ac, Bluetooth, Ethernet and it comes with 4 USB ports (2 x USB 2.0, 1 x USB 3.0, 1 x USB 3.1 Gen 1 (Type C)), HDMI Port, Multi Card Slot, Lock Slot, Mic In, RJ45 (LAN) ports.\r\n'),
(6, 'Dell Notebook XPS 13', 1299, '            descripcion: \"Dell XPS 13 es una computadora portátil con Windows 10 con una pantalla de 13.30 pulgadas que tiene una resolución de 3200x1800 píxeles. Está alimentado por un procesador Core i5 y viene con 8GB de RAM. El Dell XPS 13 incluye 128 GB de almacenamiento SSD. Los gráficos funcionan con Intel Integrated HD Graphics 520. Las opciones de conectividad incluyen Wi-Fi 802.11 ac, Bluetooth y viene con 3 puertos USB (2 x USB 3.0), puerto HDMI, puertos de ranura para múltiples tarjetas. \r\n'),
(7, 'Chuwi Herobook Pro', 799, 'El portátil CHUWI HeroBook Pro te inspirará a ser más productivo en el trabajo, la escuela o el juego. Ligera y elegante, cuenta con una hermosa pantalla IPS 1920x1080 de 14,1 pulgadas y WiFi para una conectividad y fiabilidad rápidas en las que puedes confiar donde te aventuras. Delgado y ligero, este dispositivo sin límites es rápido y la batería tiene suficiente zumo para alimentarte durante todo el día.\",\r\n'),
(8, 'Lenovo Yoga', 1199, 'Lenovo Yoga 530 es una computadora portátil con Windows 10 con una pantalla de 14,00 pulgadas que tiene una resolución de 1920x1080 píxeles. Está alimentado por un procesador Core i7 y viene con 8GB de RAM. El Lenovo Yoga 530 incluye 256 GB de almacenamiento SSD. Los gráficos funcionan con Nvidia. Las opciones de conectividad incluyen Bluetooth y viene con 3 puertos USB (2 x USB 3.0), puertos de entrada de micrófono.\r\n'),
(9, 'Razer Blade', 2099, 'El Razer Blade es uno de los portátiles para juegos más pequeños de 15,6 ”, que ofrece el equilibrio perfecto entre potencia y portabilidad. Hemos rediseñado la computadora portátil para que sea más compacta y, al mismo tiempo, contenga aún más potencia y funciones. La pantalla Full HD de 15,6 pulgadas más grande y casi sin bordes se extiende de borde a borde y presenta frecuencias de actualización de 60 Hz, mientras que el procesador Intel Core i7 de 6 núcleos de octava generación y los gráficos de diseño NVIDIA GeForce GTX 1060 Max-Q ofrecen un rendimiento y velocidades de cuadro sorprendentes'),
(10, 'Acer Chromebook Spin 713', 1450, 'El Chromebook Spin 13 convertible tiene bisagras de 360 ​​grados para usar como tableta, computadora portátil, pantalla o en modo tienda. Viene con un lápiz Wacom (para entrada de lápiz) que se puede almacenar cómodamente en la ranura del dispositivo\r\n'),
(11, 'Asus Zenbook 14', 1399, 'Diseñado para potenciar su creatividad, ZenBook 14 no sacrifica rendimiento por tamaño. Está diseñado para brindarle toda la potencia bruta que necesita para una informática en movimiento sin esfuerzo. Con los últimos procesadores Intel® Core ™, gráficos NVIDIA® discretos y un complemento completo de componentes de alta calidad y alto rendimiento, ZenBook 14 nunca lo hará esperar. Ya sea que esté creando documentos complejos, extrayendo datos, retocando fotos o editando videos, ZenBook 14 le permite hacer más, y hacerlo más rápido.\r\n'),
(12, 'Acer Chromebook Spin 713', 1450, 'El Chromebook Spin 13 convertible tiene bisagras de 360 ​​grados para usar como tableta, computadora portátil, pantalla o en modo tienda. Viene con un lápiz Wacom (para entrada de lápiz) que se puede almacenar cómodamente en la ranura del dispositivo\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(10) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `nacimiento` date NOT NULL,
  `email` varchar(500) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  `conf_contraseña` varchar(20) NOT NULL,
  `seguidores` int(10) NOT NULL,
  `cant_productos` int(10) NOT NULL,
  `likes` int(10) NOT NULL,
  `foto_perfil` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `apellido`, `nombre`, `nacimiento`, `email`, `contraseña`, `conf_contraseña`, `seguidores`, `cant_productos`, `likes`, `foto_perfil`) VALUES
(1, 'Gandolfo', 'Genaro', '2002-06-28', 'gandolfog@gmail.com', 'holahola', 'holahola', 100, 250, 50, NULL),
(2, 'Taylor', 'francisco', '2001-09-16', 'frant@gmail.com', 'razer', 'razer', 80, 10, 98, NULL),
(3, 'Jarsun', 'Tomas', '2002-01-05', 'jarsunt@gmail.com', 'thor2', 'thor2', 150, 12, 200, NULL),
(4, 'Fuentes', 'Daniel', '2021-04-25', '', 'perro1234', 'perro1234', 75, 15, 123, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`comentario_id`),
  ADD KEY `id_del_producto` (`id_del_producto`),
  ADD KEY `autor_comentario` (`autor_comentario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`id_del_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`autor_comentario`) REFERENCES `usuarios` (`ID`);
