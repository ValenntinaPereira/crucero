-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 01-08-2022 a las 15:44:27
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crucero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `cuerpo`) VALUES
(1, 'Mes del Amigo Hav Cruceros', 'Viaja con tus amigos y obtené un 25% contratando dos cabinas o más.\r\nTendrás la posibilidad de elegir entre una amplia variedad de cabinas incluyendo cabinas con balcón, donde las espectaculares vistas al mar están garantizadas.\r\n¡NO ESPERES MÁS! RESERVÁ AHORA Y ASEGURATE\r\nTUS VACACIONES PARA CELEBRAR LA AMISTAD.'),
(2, 'pepe', 'pepe'),
(6, 'jaja', 'jaja\r\n'),
(5, 'holis', 'j'),
(7, 'Mes del Amigo Hav Cruceros', ' Viaja con tus amigos y obtené un 25% contratando dos cabinas o más. Tendrás la posibilidad de elegir entre una amplia variedad de cabinas incluyendo cabinas con balcón, donde las espectaculares vistas al mar están garantizadas. ¡NO ESPERES MÁS! RESERVÁ AHORA Y ASEGURATE TUS VACACIONES PARA CELEBRAR LA AMISTAD..'),
(8, 'Casamiento a bordo de un crucero Hav', 'Durante la temporada 2022/2023 de Sudamérica podrás realizar tu ceremonia en uno de nuestros barcos. Y no te preocupes, ¡los preparativos ya están incluidos! Lo mejor de casarse en un crucero es tener a tu disposición toda la estructura necesaria para una ceremonia memorable. Además del ambiente romántico y encantador de nuestros barcos.'),
(9, 'Cruceros temáticos', 'En la temporada 2022/2023, Hav Cruceros promocionará cruceros temáticos para que tu viaje sea aún más especial. Los itinerarios de Navidad, Año Nuevo y Carnaval tendrán un horario muy especial. Para envolver al invitado en el ambiente, preparamos una decoración especial, completada con diferentes actividades, como el encuentro con Papá Noel o la fiesta de carnaval en Disco! ¡Diversión que solo podés encontrar en un crucero Hav!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'valentina', '1b1a2b2bb9917b798663019f22521117');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
