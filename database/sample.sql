-- Primeras lineas
DROP DATABASE IF EXISTS almacen;
CREATE DATABASE almacen;
USE almacen;



-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 17-02-2020 a las 22:12:16
-- Versión del servidor: 5.7.29
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `almacen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--



CREATE TABLE `almacens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreAlmacen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoAlmacen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacidad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encargado` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacens` (`id`, `nombreAlmacen`, `tipoAlmacen`, `capacidad`, `encargado`) VALUES
(2, 'Almacen1', 'Productos frescos', '2000', 4),
(3, 'Almacen2', 'Productos carnicos', '2000', 3),
(4, 'Almacen3', 'Productos malos', '2000', 5),
(5, 'Almacen4', 'Productos buenos', '2000', 1),
(6, 'Almacen5', 'Productos cutres', '2000', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(45, '2014_10_12_000000_create_users_table', 1),
(46, '2014_10_12_100000_create_password_resets_table', 1),
(47, '2019_08_19_000000_create_failed_jobs_table', 1),
(48, '2020_02_04_141504_usuario', 1),
(49, '2020_02_05_175905_almacen', 1),
(50, '2020_02_05_180038_producto', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaEntrada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaSalida` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(8,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `almacen` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `fechaEntrada`, `fechaSalida`, `categoria`, `precio`, `cantidad`, `almacen`) VALUES
(2, 'Minima.', 'Commodi.', 'Harum.', 'Aut.', 909.93, 0, 3),
(3, 'Qui.', 'Officiis.', 'Debitis cupiditate.', 'Qui eligendi.', 441.40, 5, 6),
(4, 'Qui minus.', 'Id.', 'Aut.', 'Non sint.', 640.89, 2, 5),
(5, 'Quod quia.', 'Fuga.', 'Et.', 'Autem in.', 693.61, 3, 6),
(6, 'Vero perferendis.', 'Maiores.', 'Mollitia.', 'Eveniet.', 297.19, 2, 4),
(7, 'Nisi perferendis.', 'Et.', 'Sit.', 'Quas.', 974.75, 5, 2),
(8, 'Ipsa incidunt.', 'Maiores.', 'Temporibus placeat.', 'Ut.', 41.25, 3, 3),
(9, 'Et tenetur.', 'Aut.', 'Eius blanditiis.', 'Eligendi.', 32.59, 4, 6),
(10, 'Rerum ut.', 'Esse atque.', 'Inventore.', 'Est.', 584.88, 6, 2),
(11, 'Libero.', 'Voluptatem.', 'Quidem.', 'Quis.', 564.55, 0, 2),
(12, 'Quas non.', 'Laborum ut.', 'Quia molestiae.', 'Hic mollitia.', 88.28, 1, 5),
(13, 'Doloremque.', 'Consectetur et.', 'Labore.', 'Omnis.', 246.27, 6, 5),
(14, 'Modi.', 'Veniam.', 'Officiis.', 'Et magni.', 480.89, 6, 2),
(15, 'Ipsa.', 'Placeat.', 'Laudantium ab.', 'Et esse.', 570.25, 5, 3),
(16, 'Repellat aliquam.', 'Aperiam.', 'Ab.', 'Aut.', 536.53, 2, 6),
(17, 'Ab.', 'Aut voluptatem.', 'Aut mollitia.', 'Temporibus.', 127.84, 8, 5),
(18, 'Perspiciatis ut.', 'Enim.', 'Facilis et.', 'Qui.', 965.07, 7, 6),
(19, 'Labore.', 'Non.', 'Odio perferendis.', 'Praesentium facilis.', 773.44, 9, 4),
(20, 'Vel.', 'Aut expedita.', 'A voluptatem.', 'Dolore.', 181.92, 3, 4),
(21, 'Quia neque.', 'Delectus.', 'Blanditiis.', 'Quidem ratione.', 5.77, 3, 2),
(22, 'Hic occaecati.', 'Asperiores esse.', 'Libero accusantium.', 'Ullam.', 853.12, 5, 2),
(23, 'Atque.', 'Voluptates.', 'Neque.', 'Non.', 576.00, 2, 2),
(24, 'Harum.', 'Omnis.', 'Culpa quis.', 'Non ut.', 550.11, 6, 3),
(25, 'Consequatur.', 'Quo.', 'Delectus sapiente.', 'Optio quae.', 169.84, 5, 2),
(26, 'Commodi.', 'Velit iusto.', 'Et est.', 'Ut.', 79.99, 9, 5),
(27, 'Velit modi.', 'Dignissimos quas.', 'Ea ut.', 'Amet enim.', 515.48, 7, 3),
(28, 'Distinctio.', 'Consequuntur.', 'Qui.', 'Dicta.', 969.19, 6, 2),
(29, 'Et.', 'Id deleniti.', 'Tempora dignissimos.', 'Nisi dolores.', 711.63, 3, 4),
(30, 'Fugit.', 'Earum.', 'Quas perferendis.', 'Quia dolorem.', 372.58, 3, 5),
(31, 'Officiis vero.', 'Dolor aut.', 'Harum.', 'Saepe quaerat.', 641.84, 1, 6),
(32, 'Autem ipsam.', 'Similique.', 'Consectetur.', 'Ut facere.', 208.39, 7, 2),
(33, 'Omnis dolorem.', 'Officia.', 'Doloribus.', 'Consectetur ea.', 713.16, 3, 3),
(34, 'Ex.', 'Fugiat expedita.', 'Quia architecto.', 'Deserunt voluptas.', 731.33, 7, 5),
(35, 'Rerum.', 'Odio corporis.', 'Omnis nostrum.', 'Dolorem est.', 341.64, 5, 4),
(36, 'Ipsum ratione.', 'Ex.', 'Repellendus deserunt.', 'Provident.', 553.77, 8, 5),
(37, 'Ea.', 'Est.', 'Est.', 'Hic et.', 274.95, 7, 4),
(38, 'Aspernatur.', 'Est quod.', 'Recusandae consectetur.', 'Nulla quis.', 970.26, 2, 3),
(39, 'Sint.', 'Eum qui.', 'Excepturi.', 'Sed.', 287.04, 7, 4),
(40, 'Excepturi.', 'Vel eveniet.', 'Consequatur.', 'Et.', 388.03, 9, 3),
(41, 'Et.', 'Aperiam enim.', 'Est.', 'Et.', 271.39, 5, 6),
(42, 'Minima maxime.', 'Saepe voluptates.', 'Nam.', 'Voluptatem modi.', 830.21, 9, 2),
(43, 'Error.', 'Quo enim.', 'Non porro.', 'Minus.', 763.60, 9, 2),
(44, 'Ad.', 'Est.', 'Dolores.', 'Quia.', 120.40, 3, 3),
(45, 'Ducimus sequi.', 'Vel nisi.', 'Distinctio.', 'Est magnam.', 921.20, 8, 6),
(46, 'Dolore.', 'Eos nihil.', 'Ex ipsum.', 'Qui.', 574.46, 3, 6),
(47, 'Accusantium.', 'Tenetur.', 'Perspiciatis.', 'Enim.', 78.57, 5, 3),
(48, 'Eum quae.', 'Commodi et.', 'Maxime.', 'Ullam consequatur.', 630.21, 6, 2),
(49, 'Magnam.', 'Blanditiis fugiat.', 'Enim nostrum.', 'Incidunt ipsa.', 567.23, 3, 2),
(50, 'Repudiandae.', 'Omnis beatae.', 'Voluptatem sed.', 'Qui et.', 964.65, 8, 2),
(51, 'Aut eos.', 'Voluptatibus.', 'Quis.', 'Qui.', 161.65, 9, 5),
(52, 'Quia.', 'Dolore.', 'Cum maiores.', 'Ut.', 658.35, 2, 3),
(53, 'Fuga.', 'Voluptatem.', 'Sit.', 'Asperiores.', 781.67, 9, 2),
(54, 'Et.', 'Quidem ex.', 'Voluptas totam.', 'Nobis.', 63.56, 2, 5),
(55, 'Nihil consequatur.', 'Voluptatum.', 'Maxime.', 'Quod.', 185.55, 4, 3),
(56, 'Rerum.', 'Ex aut.', 'Voluptate tenetur.', 'Non.', 958.53, 3, 3),
(57, 'Ipsum.', 'Aut cupiditate.', 'Qui consequatur.', 'Eveniet.', 498.22, 4, 5),
(58, 'Inventore suscipit.', 'Eveniet vero.', 'Magni.', 'Repellat beatae.', 77.92, 4, 3),
(59, 'Alias.', 'Sit.', 'Nobis culpa.', 'Tempore.', 939.13, 5, 5),
(60, 'Sunt.', 'Quia.', 'Officia.', 'Est soluta.', 835.18, 4, 6),
(61, 'Reprehenderit.', 'Esse et.', 'Nobis iure.', 'Consectetur.', 691.42, 1, 4),
(62, 'Mollitia.', 'Et ut.', 'Est.', 'Placeat.', 384.50, 8, 3),
(63, 'Et.', 'Fugit.', 'Quae.', 'In quidem.', 109.62, 6, 4),
(64, 'Eveniet omnis.', 'Quaerat non.', 'Perferendis.', 'Blanditiis vel.', 478.75, 9, 6),
(65, 'Similique.', 'Exercitationem id.', 'In.', 'Excepturi modi.', 286.59, 2, 3),
(66, 'Sed nisi.', 'In.', 'Dicta labore.', 'Sit perspiciatis.', 12.77, 7, 6),
(67, 'Sed quia.', 'Perspiciatis.', 'Illo.', 'Ut molestiae.', 568.18, 1, 5),
(68, 'Doloremque exercitationem.', 'Adipisci.', 'Minima.', 'Itaque nihil.', 744.68, 2, 5),
(69, 'Aut.', 'Omnis.', 'Suscipit qui.', 'Tempora libero.', 753.18, 4, 3),
(70, 'Et eius.', 'Aut est.', 'Laborum.', 'Voluptatem.', 822.03, 7, 3),
(71, 'Dolore nihil.', 'Animi nesciunt.', 'Est.', 'Sunt.', 48.13, 0, 5),
(72, 'Quod consequatur.', 'Suscipit.', 'Hic consequatur.', 'Placeat beatae.', 940.60, 2, 5),
(73, 'Libero officiis.', 'Libero amet.', 'Velit.', 'Error.', 827.10, 8, 5),
(74, 'Eos minus.', 'Libero.', 'Id ut.', 'Perferendis.', 256.32, 8, 3),
(75, 'Molestiae saepe.', 'Repellat est.', 'Error.', 'Ut labore.', 462.71, 2, 5),
(76, 'Eos.', 'Fugit aspernatur.', 'Qui harum.', 'Voluptatem omnis.', 435.26, 8, 3),
(77, 'Perspiciatis.', 'Non in.', 'Quaerat voluptatem.', 'Nostrum.', 99.71, 5, 3),
(78, 'Velit.', 'Est.', 'Commodi at.', 'Saepe.', 102.64, 4, 5),
(79, 'Autem.', 'Aut rerum.', 'Mollitia.', 'Consectetur nostrum.', 849.37, 5, 2),
(80, 'Deleniti qui.', 'Voluptatem.', 'Vitae placeat.', 'Modi rerum.', 252.25, 0, 5),
(81, 'Voluptatibus.', 'Veniam.', 'Nemo.', 'Laborum perspiciatis.', 5.97, 8, 3),
(82, 'Repellendus.', 'Soluta.', 'Aliquid.', 'Ea.', 468.30, 4, 5),
(83, 'Fugit nihil.', 'Aut.', 'Numquam.', 'Asperiores nihil.', 270.47, 6, 5),
(84, 'Ea voluptas.', 'Enim molestiae.', 'Sit blanditiis.', 'Rem nemo.', 160.55, 7, 2),
(85, 'Sint.', 'Ex.', 'Et qui.', 'Magni.', 556.95, 6, 5),
(86, 'Aliquam necessitatibus.', 'Sapiente qui.', 'Nulla qui.', 'Ut nisi.', 681.52, 8, 5),
(87, 'Minus est.', 'Aut ex.', 'Voluptate tenetur.', 'Sunt molestias.', 234.62, 6, 3),
(88, 'Assumenda cumque.', 'Nulla.', 'Et voluptatem.', 'Quibusdam.', 913.37, 1, 2),
(89, 'Vitae.', 'Quibusdam.', 'Similique nihil.', 'Placeat non.', 381.50, 1, 5),
(90, 'Provident.', 'Et quo.', 'Omnis quo.', 'Qui.', 974.23, 5, 5),
(91, 'Delectus aut.', 'Perspiciatis.', 'Maiores architecto.', 'Maxime explicabo.', 262.85, 2, 6),
(92, 'Laborum.', 'Possimus autem.', 'Consequatur sint.', 'Facere asperiores.', 208.80, 5, 2),
(93, 'Quisquam.', 'Sequi.', 'Repudiandae exercitationem.', 'Error.', 276.47, 8, 2),
(94, 'Nam.', 'Qui.', 'Soluta cupiditate.', 'Recusandae.', 668.07, 9, 4),
(95, 'Expedita.', 'Doloremque.', 'Et.', 'Ex.', 598.79, 6, 5),
(96, 'Ipsa.', 'Fuga eum.', 'Tempore.', 'Quis tempore.', 847.69, 6, 6),
(97, 'Et nihil.', 'Autem.', 'Animi ducimus.', 'Non iure.', 165.95, 1, 3),
(98, 'Explicabo consequatur.', 'Corporis.', 'Libero id.', 'Laboriosam.', 595.75, 6, 4),
(99, 'Aspernatur.', 'Suscipit ut.', 'Et et.', 'Fuga dolorem.', 422.57, 8, 4),
(100, 'Sed aliquid.', 'Est.', 'Nam corporis.', 'Nihil.', 997.57, 3, 3),
(101, 'Dignissimos facilis.', 'Molestiae et.', 'Amet dolor.', 'Vero.', 483.50, 1, 2),
(102, 'Officia.', 'Neque porro.', 'Sunt perspiciatis.', 'Perspiciatis.', 340.59, 3, 4),
(103, 'Asperiores quod.', 'Voluptas.', 'Magnam incidunt.', 'A quae.', 226.85, 0, 6),
(104, 'Occaecati animi.', 'Ipsa ut.', 'Quo.', 'Praesentium.', 995.85, 4, 3),
(105, 'Provident eaque.', 'Illum commodi.', 'Saepe.', 'Tempore et.', 445.20, 0, 6),
(106, 'Deleniti.', 'Aut.', 'Sed.', 'Quis a.', 246.70, 0, 6),
(107, 'Facilis.', 'Commodi autem.', 'Illum saepe.', 'Rerum aperiam.', 140.40, 1, 5),
(108, 'Et ex.', 'Sequi.', 'Accusantium fugiat.', 'Sapiente aut.', 40.92, 1, 6),
(109, 'Aut.', 'Non alias.', 'Aut.', 'Exercitationem.', 968.47, 8, 6),
(110, 'Magni voluptas.', 'Et rerum.', 'Dignissimos exercitationem.', 'Laboriosam est.', 830.80, 3, 5),
(111, 'Esse dolore.', 'Dolore.', 'Fugiat.', 'Mollitia explicabo.', 12.04, 7, 2),
(112, 'Molestiae est.', 'Optio.', 'Quasi sint.', 'Et.', 257.34, 6, 4),
(113, 'Eaque.', 'Iusto nihil.', 'Commodi.', 'Eius ut.', 173.71, 5, 5),
(114, 'Dolor modi.', 'Est animi.', 'Minima in.', 'Exercitationem.', 470.60, 8, 3),
(115, 'Id.', 'Nihil.', 'Perferendis.', 'Aliquid.', 768.30, 4, 2),
(116, 'Officia.', 'Temporibus.', 'Quae odio.', 'Consequuntur dolor.', 792.96, 1, 4),
(117, 'Porro.', 'Molestiae.', 'Et ab.', 'Ut et.', 275.45, 5, 2),
(118, 'Itaque aliquid.', 'Aut sit.', 'Magnam at.', 'Neque.', 32.78, 5, 5),
(119, 'Assumenda ipsam.', 'Non.', 'Rerum.', 'Facilis.', 950.45, 4, 2),
(120, 'Vel.', 'Cupiditate.', 'Harum.', 'Vitae amet.', 596.39, 7, 5),
(121, 'Consequuntur.', 'Quos.', 'Similique eius.', 'Totam culpa.', 776.20, 3, 2),
(122, 'A.', 'Non.', 'Maiores.', 'Dolor.', 16.89, 8, 3),
(123, 'Eveniet.', 'Suscipit.', 'Vero delectus.', 'Inventore.', 9.27, 1, 3),
(124, 'Nihil.', 'Provident.', 'Autem.', 'Unde ut.', 546.85, 5, 5),
(125, 'Magni.', 'Similique deleniti.', 'Et eos.', 'Reprehenderit dolorem.', 368.32, 0, 4),
(126, 'Voluptatem quidem.', 'Quod earum.', 'Inventore.', 'Eos.', 506.17, 7, 6),
(127, 'Voluptatum.', 'Reiciendis.', 'Voluptatibus culpa.', 'Sit eligendi.', 834.36, 2, 3),
(128, 'Sit.', 'Distinctio.', 'Beatae id.', 'Debitis.', 439.18, 0, 3),
(129, 'Soluta laudantium.', 'Cumque accusantium.', 'Quis sit.', 'Dolorum.', 609.84, 9, 4),
(130, 'Alias quisquam.', 'Accusantium hic.', 'Magnam voluptatem.', 'Omnis.', 583.37, 5, 3),
(131, 'Id.', 'Ipsam ut.', 'Qui.', 'Sed.', 776.79, 8, 6),
(132, 'Et.', 'Omnis.', 'Provident.', 'Pariatur nesciunt.', 245.07, 1, 2),
(133, 'Sunt tempora.', 'Et aperiam.', 'Nihil aperiam.', 'Velit.', 650.71, 4, 3),
(134, 'Aut.', 'Quasi hic.', 'Ipsum.', 'Sint.', 965.63, 9, 3),
(135, 'Atque ratione.', 'Nemo.', 'Molestiae.', 'Adipisci.', 716.08, 6, 3),
(136, 'Quo et.', 'Cupiditate.', 'Aut assumenda.', 'Cumque et.', 814.46, 7, 6),
(137, 'Voluptas non.', 'Ipsam.', 'Et consequuntur.', 'Nisi voluptatem.', 739.30, 8, 2),
(138, 'Quos.', 'Excepturi.', 'Doloremque est.', 'Corporis magnam.', 16.57, 1, 6),
(139, 'Enim et.', 'Sed.', 'Aut.', 'Non.', 175.84, 9, 2),
(140, 'Quis.', 'Facere dolores.', 'Dolor exercitationem.', 'Distinctio.', 433.62, 9, 2),
(141, 'Et.', 'Illo.', 'Numquam.', 'Possimus provident.', 893.99, 3, 2),
(142, 'Ut eos.', 'Ad.', 'Occaecati.', 'Pariatur tempore.', 328.60, 5, 4),
(143, 'Ea libero.', 'Aliquam.', 'Velit.', 'Eaque ex.', 353.55, 8, 4),
(144, 'Atque.', 'Inventore omnis.', 'Repellat.', 'Enim.', 658.44, 4, 2),
(145, 'Hic.', 'Velit deleniti.', 'Facere suscipit.', 'Inventore eaque.', 790.65, 9, 2),
(146, 'Aut aut.', 'Velit.', 'Deleniti.', 'Voluptas odit.', 842.79, 3, 4),
(147, 'Iure omnis.', 'Molestias hic.', 'Sequi nemo.', 'Reprehenderit ipsa.', 17.09, 0, 3),
(148, 'Iusto quis.', 'Ratione minima.', 'Libero ipsa.', 'Nesciunt ut.', 233.57, 5, 3),
(149, 'Dolores veritatis.', 'Aut quas.', 'Esse harum.', 'Molestiae.', 384.70, 1, 6),
(150, 'Quo mollitia.', 'Fugit architecto.', 'Et est.', 'Maiores voluptatibus.', 344.11, 8, 3),
(151, 'Aspernatur praesentium.', 'Aliquam inventore.', 'Rem.', 'Aut.', 440.39, 3, 4),
(152, 'Hic excepturi.', 'Deserunt.', 'Consequatur.', 'Alias.', 576.10, 9, 2),
(153, 'Ea nobis.', 'Ad exercitationem.', 'Adipisci.', 'Soluta quia.', 601.41, 8, 6),
(154, 'Eaque vel.', 'Dolor.', 'Atque.', 'Voluptatibus perferendis.', 598.54, 1, 6),
(155, 'Quia est.', 'Nulla.', 'Harum modi.', 'Repellendus quibusdam.', 706.76, 8, 6),
(156, 'Nostrum possimus.', 'Cum.', 'Corporis odio.', 'Omnis.', 536.21, 3, 5),
(157, 'Aut.', 'Amet.', 'Qui.', 'Excepturi.', 568.90, 7, 3),
(158, 'Fuga maxime.', 'Temporibus.', 'Voluptatem magni.', 'Sunt.', 310.03, 2, 6),
(159, 'Perferendis esse.', 'Aut nihil.', 'Molestiae laborum.', 'Fuga corporis.', 739.41, 8, 6),
(160, 'Fugiat.', 'Repellendus et.', 'Et.', 'Mollitia eaque.', 872.89, 9, 3),
(161, 'Voluptatem.', 'Et.', 'Porro velit.', 'Natus occaecati.', 65.43, 1, 3),
(162, 'A.', 'Ut.', 'Suscipit voluptate.', 'Sed necessitatibus.', 223.79, 1, 4),
(163, 'Tenetur.', 'Sed.', 'Placeat.', 'Fugiat.', 716.85, 0, 6),
(164, 'Explicabo.', 'Nisi qui.', 'Voluptatem vel.', 'Earum.', 127.88, 5, 6),
(165, 'Provident adipisci.', 'Eum.', 'Modi.', 'Placeat.', 114.00, 8, 4),
(166, 'Qui unde.', 'Et officia.', 'Eum modi.', 'Ut molestiae.', 779.41, 2, 4),
(167, 'Sed molestiae.', 'Non veritatis.', 'Quas id.', 'Amet explicabo.', 804.04, 2, 5),
(168, 'Cupiditate id.', 'Ex at.', 'Ducimus.', 'Rerum.', 902.56, 9, 3),
(169, 'Inventore.', 'Ratione rem.', 'In omnis.', 'Vel doloremque.', 986.05, 1, 5),
(170, 'Qui.', 'Voluptatem veritatis.', 'Et.', 'Velit.', 705.50, 5, 5),
(171, 'Odio delectus.', 'Sed.', 'Consectetur est.', 'Impedit accusantium.', 555.75, 6, 3),
(172, 'Ratione et.', 'Aut.', 'Quasi.', 'In.', 658.53, 2, 2),
(173, 'Quisquam iure.', 'Molestiae repellat.', 'Eaque nisi.', 'Laborum.', 460.43, 0, 3),
(174, 'Ipsum.', 'Saepe temporibus.', 'Ex incidunt.', 'Voluptatibus.', 489.31, 0, 2),
(175, 'Minus voluptatem.', 'Quia unde.', 'Sint.', 'Atque et.', 814.21, 4, 4),
(176, 'Blanditiis.', 'Quia incidunt.', 'Excepturi aut.', 'Ut enim.', 522.07, 7, 5),
(177, 'Sed vel.', 'Illo et.', 'Sapiente aut.', 'Fugiat.', 735.40, 5, 5),
(178, 'Accusamus vitae.', 'Aperiam.', 'Quisquam.', 'Ut.', 235.61, 4, 3),
(179, 'Animi beatae.', 'Suscipit.', 'Consequatur.', 'Cupiditate.', 360.98, 5, 2),
(180, 'Dolor qui.', 'Corporis.', 'Aut.', 'Facilis animi.', 594.17, 6, 5),
(181, 'Fugit fugiat.', 'Odio eveniet.', 'Earum sequi.', 'Corporis.', 891.19, 4, 4),
(182, 'Vitae deleniti.', 'In mollitia.', 'Non id.', 'Eveniet.', 812.52, 9, 3),
(183, 'Consequuntur.', 'Eaque.', 'Veritatis dolor.', 'Beatae mollitia.', 661.22, 2, 3),
(184, 'A vitae.', 'Omnis sapiente.', 'Odit.', 'Est.', 656.68, 6, 4),
(185, 'Et qui.', 'In sit.', 'Est.', 'Et.', 612.01, 7, 2),
(186, 'Nemo.', 'Incidunt deserunt.', 'Consequuntur sit.', 'Eum.', 107.34, 1, 4),
(187, 'Cupiditate.', 'Quidem est.', 'Quasi tempora.', 'Doloribus.', 166.18, 1, 2),
(188, 'Et qui.', 'Dicta.', 'Eius sint.', 'Deleniti debitis.', 603.65, 3, 4),
(189, 'Rerum.', 'Laboriosam iste.', 'Et.', 'Ipsum eaque.', 296.39, 2, 4),
(190, 'Dolorem aliquam.', 'Accusamus.', 'Architecto.', 'Accusantium.', 800.83, 5, 2),
(191, 'Et aspernatur.', 'Voluptatem minima.', 'Consequatur.', 'Iure.', 986.42, 1, 2),
(192, 'Maxime.', 'Est.', 'Magnam.', 'Officiis minus.', 815.73, 0, 4),
(193, 'Earum labore.', 'Repellendus nemo.', 'Perferendis similique.', 'Veritatis.', 321.56, 4, 4),
(194, 'Dolor dolores.', 'Consequatur.', 'Sed et.', 'Reiciendis consequuntur.', 40.28, 2, 4),
(195, 'Porro dolores.', 'Voluptatem.', 'Atque laborum.', 'Nemo.', 943.50, 0, 5),
(196, 'Culpa.', 'Voluptate magni.', 'Voluptas omnis.', 'Sit hic.', 339.77, 5, 4),
(197, 'Quidem.', 'Amet maxime.', 'Quas laboriosam.', 'Laudantium aut.', 244.20, 4, 2),
(198, 'Maiores nobis.', 'At velit.', 'Occaecati vero.', 'Eum nobis.', 821.10, 3, 6),
(199, 'Laboriosam commodi.', 'Praesentium.', 'Reiciendis.', 'Voluptate harum.', 575.79, 1, 2),
(200, 'Qui.', 'Laborum.', 'Nostrum dolor.', 'Pariatur.', 704.25, 4, 5),
(201, 'Vitae.', 'Fugiat alias.', 'Ut.', 'Rem est.', 842.74, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aaa', 'aaa@aaa.com', NULL, '$2y$10$ibwjC60WZY/aSMga6xIrbe8pbLEB7U0XSvFw0xR5Rej.QBUWpI8XO', NULL, '2020-02-12 18:54:39', '2020-02-12 18:54:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `rol`, `created_at`, `updated_at`) VALUES
(1, 'q7mGf2', 'wMTSaCKicE@correo.com', 'soz', NULL, NULL),
(2, 'Laudantium.', 'Vero aperiam.', 'Voluptatem ut.', NULL, NULL),
(3, 'A.', 'Ut quis.', 'Odio rerum.', NULL, NULL),
(4, 'Iusto id.', 'Et.', 'Et.', NULL, NULL),
(5, 'Consequuntur dolorem.', 'Error mollitia.', 'A.', NULL, NULL),
(6, 'Sit.', 'Dolorem qui.', 'Repellat fugit.', NULL, NULL),
(7, 'Temporibus.', 'Ut repellendus.', 'Molestiae quidem.', NULL, NULL),
(8, 'Omnis rem.', 'Tempora.', 'Veniam.', NULL, NULL),
(9, 'Totam quia.', 'Perspiciatis sed.', 'Error.', NULL, NULL),
(10, 'Est deleniti.', 'Provident.', 'Aperiam.', NULL, NULL),
(11, 'Ratione eum.', 'Dolore.', 'Nulla fugiat.', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `almacens_encargado_foreign` (`encargado`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_almacen_foreign` (`almacen`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacenes`
--
ALTER TABLE `almacens`
  ADD CONSTRAINT `almacens_encargado_foreign` FOREIGN KEY (`encargado`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_almacen_foreign` FOREIGN KEY (`almacen`) REFERENCES `almacens` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;