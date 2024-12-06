-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2024 a las 00:32:12
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
-- Base de datos: `babershop`
--
CREATE DATABASE IF NOT EXISTS `babershop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `babershop`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_title` varchar(50) NOT NULL,
  `book_publishet` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `books`
--

INSERT INTO `books` (`id`, `book_title`, `book_publishet`) VALUES
(1, 'J.K.Rowling', '0000-00-00'),
(2, 'Alejandro Dumas', '0000-00-00'),
(3, 'Robert Louis Stevenson', '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"libreria\",\"table\":\"autor\"},{\"db\":\"libreria\",\"table\":\"usuario\"},{\"db\":\"libreria\",\"table\":\"libro\"},{\"db\":\"libreria\",\"table\":\"detallecompra\"},{\"db\":\"libreria\",\"table\":\"categoria\"},{\"db\":\"libreria\",\"table\":\"compra\"},{\"db\":\"venta_pasajes\",\"table\":\"personas\"},{\"db\":\"publications\",\"table\":\"classics\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-12-06 23:21:18', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `publications`
--
CREATE DATABASE IF NOT EXISTS `publications` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `publications`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pre1900`
--

CREATE TABLE `pre1900` (
  `author` varchar(128) NOT NULL,
  `title` varchar(128) NOT NULL,
  `type` varchar(16) NOT NULL,
  `year` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pre1900`
--

INSERT INTO `pre1900` (`author`, `title`, `type`, `year`) VALUES
('Mark Twain', 'The Adventures of Tom Sawyer', 'Fiction', '1876'),
('Jane Austen', 'Pride and Prejudice', 'Fiction', '1811'),
('Charles Darwin', 'The Origin of Species', 'Non- Fiction', '1856'),
('Charles Dickens', 'The Old Curiosity Shop', 'Fiction', '1841'),
('William Shakespeare', 'Romeo and Juliet', 'Play', '1594');
--
-- Base de datos: `registrossobretiempo`
--
CREATE DATABASE IF NOT EXISTS `registrossobretiempo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `registrossobretiempo`;

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
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido1`, `apellido2`, `email`) VALUES
(1, 'Carlos', 'Fernández', 'López', 'carlos.fernandez@ucsm.edu.pe'),
(2, 'Ana', 'García', 'Martínez', 'agarmar@ucsm.edu.pe'),
(4, 'María', 'Gómez', 'Rivas', 'maria.gomez@ucsm.edu.pe');

--
-- Disparadores `alumnos`
--
DELIMITER $$
CREATE TRIGGER `trigger_crear_email_before_insert` BEFORE INSERT ON `alumnos` FOR EACH ROW BEGIN
    IF NEW.email IS NULL THEN
        
        CALL crear_email(NEW.nombre, NEW.apellido1, NEW.apellido2, 'ucsm.edu.pe', @temp_email);
        SET NEW.email = @temp_email;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_guardar_alumnos_eliminados` AFTER DELETE ON `alumnos` FOR EACH ROW begin
    insert into log_alumnos_eliminados (id_alumno, fecha_hora, nombre, apellido1, apellido2, email)
    values (old.id, current_timestamp, old.nombre, old.apellido1, old.apellido2, old.email);
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trigger_guardar_email_after_update` AFTER UPDATE ON `alumnos` FOR EACH ROW BEGIN
    
    IF OLD.email <> NEW.email THEN
        INSERT INTO log_cambios_email (id_alumno, old_email, new_email)
        VALUES (OLD.id, OLD.email, NEW.email);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_alumnos_eliminados`
--

CREATE TABLE `log_alumnos_eliminados` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_alumno` int(10) UNSIGNED NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `nombre` varchar(100) DEFAULT NULL,
  `apellido1` varchar(100) DEFAULT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `log_alumnos_eliminados`
--

INSERT INTO `log_alumnos_eliminados` (`id`, `id_alumno`, `fecha_hora`, `nombre`, `apellido1`, `apellido2`, `email`) VALUES
(1, 3, '2024-11-10 18:52:49', 'Luis', 'Pérez', 'Sánchez', 'lpérsán@ucsm.edu.pe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_cambios_email`
--

CREATE TABLE `log_cambios_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_alumno` int(10) UNSIGNED NOT NULL,
  `fecha_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `old_email` varchar(100) DEFAULT NULL,
  `new_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `log_cambios_email`
--

INSERT INTO `log_cambios_email` (`id`, `id_alumno`, `fecha_hora`, `old_email`, `new_email`) VALUES
(1, 1, '2024-11-10 18:47:30', 'cferlóp@ucsm.edu.pe', 'carlos.fernandez@ucsm.edu.pe');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log_alumnos_eliminados`
--
ALTER TABLE `log_alumnos_eliminados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `log_cambios_email`
--
ALTER TABLE `log_cambios_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alumno` (`id_alumno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `log_alumnos_eliminados`
--
ALTER TABLE `log_alumnos_eliminados`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `log_cambios_email`
--
ALTER TABLE `log_cambios_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `log_cambios_email`
--
ALTER TABLE `log_cambios_email`
  ADD CONSTRAINT `log_cambios_email_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumnos` (`id`);
--
-- Base de datos: `venta_pasajes`
--
CREATE DATABASE IF NOT EXISTS `venta_pasajes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `venta_pasajes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `dni` char(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`dni`, `nombre`, `fecha_nacimiento`) VALUES
('11223344', 'Miguel Torres', '2018-12-02'),
('12345678', 'Carlos Pérez', '1985-07-15'),
('22334455', 'Carmen Ríos', '2023-03-10'),
('33445566', 'Juan Fernández', '1990-11-08'),
('44556677', 'Diego Morales', '2017-04-17'),
('44635837', 'Ricardo Charahua', '1997-10-09'),
('55667788', 'Sofía López', '2022-08-05'),
('66778899', 'Luis Gómez', '1978-05-30'),
('77889900', 'Elena Castillo', '2021-06-22'),
('87654321', 'Ana García', '2010-03-25'),
('99887766', 'Laura Rivera', '2005-09-20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`dni`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
