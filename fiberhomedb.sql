-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: mysqlc
-- Tiempo de generación: 03-11-2022 a las 22:29:02
-- Versión del servidor: 5.7.28
-- Versión de PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fiberhome`
--
CREATE DATABASE IF NOT EXISTS `fiberhome` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `fiberhome`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cargos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cargos`
--

INSERT INTO `cargos` (`id`, `cargos`, `created_at`, `updated_at`) VALUES
(1, 'Supervisor', '2022-10-19 01:39:56', NULL),
(2, 'Gestor de Cobros', '2022-10-19 01:40:04', NULL),
(3, 'Vendedor Rutero', '2022-10-19 01:40:18', NULL),
(4, 'Secretaria', '2022-10-19 01:40:24', NULL),
(5, 'Gerente', '2022-10-19 01:40:29', NULL),
(6, 'Contador', '2022-10-19 01:40:40', NULL),
(7, 'Analista de Calidad', '2022-10-19 01:41:03', NULL),
(8, 'Desarrollador', '2022-10-19 01:41:16', NULL),
(9, 'Analista de IT', '2022-10-19 01:41:29', NULL),
(10, 'Técnico de Campo', '2022-11-02 19:54:00', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cui` bigint(20) NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento_id` bigint(20) UNSIGNED NOT NULL,
  `municipio_id` bigint(20) UNSIGNED NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `empleado_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `cui`, `nombres`, `apellidos`, `telefono`, `email`, `departamento_id`, `municipio_id`, `direccion`, `ubicacion`, `empleado_id`, `created_at`, `updated_at`) VALUES
(1, 2050968911601, 'Hannsel Estuardo', 'Cordón Ac', 12345678, 'hannselcordon@gmail.com', 1, 1, 'Coban Alta Verapaz', '8a Avenida 5-87, Cobán, Guatemala', 2, '2022-10-19 12:43:33', NULL),
(2, 2050968911607, 'Carlos', 'Lopez', 12345678, 'carlos@gmail.com', 1, 16, 'Coban Alta Verapaz', 'RP85+9J7, Chisec, Guatemala', 2, '2022-11-03 22:26:11', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_apikey`
--

INSERT INTO `cms_apikey` (`id`, `screetkey`, `hit`, `status`, `created_at`, `updated_at`) VALUES
(1, '3ed9a39896222f56234261e8200d9203', 0, 'active', '2022-10-19 06:02:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', 'password', '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'fiberhomeumg@gmail.com', 'hannselcordon@gmail.com', '2022-10-19 00:36:28', '2022-10-19 06:25:25'),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-10-24 00:05:25', NULL),
(3, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-10-24 00:25:19', NULL),
(4, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2022-11-02 19:08:45', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', ' logout', '', 2, '2022-10-19 00:37:24', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-19 00:37:31', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/add-save', 'Add New Data Hannsel at Users Management', '', 1, '2022-10-19 00:38:16', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2022-10/147144.png</td></tr><tr><td>password</td><td>$2y$10$JqTRHCSwvojIIVSXtaEe8etGZM.CvaxyCz1E1VtrDd45.cxtp2FWq</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2022-10-19 00:39:49', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/4', 'Update data Estados at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-file</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-10-19 00:53:51', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-10-19 00:58:04', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-10-19 00:58:15', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/estados/add-save', 'Add New Data  at Estados', '', 1, '2022-10-19 00:58:26', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/estados/add-save', 'Add New Data  at Estados', '', 1, '2022-10-19 00:58:38', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/estados/add-save', 'Add New Data  at Estados', '', 1, '2022-10-19 00:59:03', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/tipoordenes/add-save', 'Add New Data  at Tipos de Ordenes de Servicio', '', 1, '2022-10-19 00:59:58', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/tipoordenes/add-save', 'Add New Data  at Tipos de Ordenes de Servicio', '', 1, '2022-10-19 01:00:15', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/tipoordenes/add-save', 'Add New Data  at Tipos de Ordenes de Servicio', '', 1, '2022-10-19 01:00:35', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/tipopagos/add-save', 'Add New Data  at Tipo de Pagos', '', 1, '2022-10-19 01:00:55', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/tipopagos/add-save', 'Add New Data  at Tipo de Pagos', '', 1, '2022-10-19 01:00:58', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-19 01:10:52', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-10-19 01:10:55', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 2, '2022-10-19 01:11:00', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-19 01:11:04', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/add-save', 'Add New Data Prueba at Statistic Builder', '', 1, '2022-10-19 01:13:10', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/edit-save/1', 'Update data Prueba at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>slug</td><td>prueba</td><td></td></tr></tbody></table>', 1, '2022-10-19 01:13:22', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:39:56', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:40:04', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:40:18', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:40:24', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:40:29', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:40:40', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:41:03', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:41:16', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-10-19 01:41:29', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/tipotrabajos/add-save', 'Add New Data  at Tipos de Orden de Trabajo', '', 1, '2022-10-19 02:17:55', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/empleados/add-save', 'Add New Data  at Empleados', '', 1, '2022-10-19 03:01:21', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/empleados/add-save', 'Add New Data  at Empleados', '', 1, '2022-10-19 03:02:31', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/jerarquias/add-save', 'Add New Data  at Jerarquia Administrativa', '', 1, '2022-10-19 03:37:50', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/jerarquias/edit-save/1', 'Update data  at Jerarquia Administrativa', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-10-19 04:01:57', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/clientes/add-save', 'Add New Data  at Clientes', '', 1, '2022-10-19 05:17:58', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/email_templates/edit-save/1', 'Update data Email Template Forgot Password Backend at Email Templates', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>subject</td><td></td><td>password</td></tr><tr><td>from_email</td><td>system@crudbooster.com</td><td>fiberhomeumg@gmail.com</td></tr><tr><td>cc_email</td><td></td><td>hannselcordon@gmail.com</td></tr></tbody></table>', 1, '2022-10-19 06:25:25', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data prueba at Menu Management', '', 1, '2022-10-19 07:18:58', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-19 07:19:48', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-10-19 07:19:53', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 2, '2022-10-19 07:19:59', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-10-19 07:20:17', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/add-save', 'Add New Data prueba2 at Statistic Builder', '', 2, '2022-10-19 07:26:11', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data prueba2 at Menu Management', '', 2, '2022-10-19 07:29:26', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/13', 'Update data prueba2 at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>red</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 2, '2022-10-19 07:30:13', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/delete/12', 'Delete data prueba at Menu Management', '', 2, '2022-10-19 07:30:20', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/13', 'Update data prueba2 at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>statistic_builder/show/prueba2</td><td>statistic_builder/show/prueba</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 2, '2022-10-19 07:31:45', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/delete/2', 'Delete data prueba2 at Statistic Builder', '', 2, '2022-10-19 07:36:22', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 2, '2022-10-19 08:16:31', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-10-19 08:17:45', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 2, '2022-10-19 08:19:26', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/module_generator/delete/22', 'Delete data Clientes at Module Generator', '', 2, '2022-10-19 10:01:14', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/estados/add-save', 'Add New Data  at Estados', '', 2, '2022-10-19 12:20:47', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/module_generator/delete/23', 'Delete data Clientes at Module Generator', '', 2, '2022-10-19 12:31:29', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/clientes/add-save', 'Add New Data  at Clientes', '', 2, '2022-10-19 12:43:33', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/productos/add-save', 'Add New Data  at Productos', '', 2, '2022-10-19 13:12:34', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/planes/add-save', 'Add New Data  at Planes y Servicios', '', 2, '2022-10-19 13:59:52', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos/add-save', 'Add New Data  at Contratos de Servicios', '', 2, '2022-10-19 14:00:35', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-10-20 06:41:11', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/pagos/add-save', 'Add New Data  at Pagos', '', 2, '2022-10-20 08:17:02', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/settings/add-save', 'Add New Data image at Settings', '', 2, '2022-10-20 08:30:19', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 2, '2022-10-20 08:34:52', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-20 08:35:58', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-20 08:38:28', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-20 08:39:03', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/settings/add-save', 'Add New Data image at Settings', '', 1, '2022-10-20 08:40:00', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-20 08:40:18', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-20 08:40:30', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-20 08:56:13', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-20 09:22:34', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-20 09:23:05', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-20 09:25:14', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-20 09:30:24', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-20 09:30:47', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-20 09:32:51', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-20 09:35:25', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos/delete/1', 'Delete data 1 at Contratos de Servicios', '', 1, '2022-10-20 09:53:51', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/module_generator/delete/26', 'Delete data Contratos de Servicios at Module Generator', '', 1, '2022-10-20 10:17:56', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/estados/add-save', 'Add New Data  at Estados', '', 1, '2022-10-20 11:13:28', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/estados/add-save', 'Add New Data  at Estados', '', 1, '2022-10-20 11:13:35', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos29/add-save', 'Add New Data  at Contratos', '', 1, '2022-10-20 11:14:10', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/pagos/add-save', 'Add New Data  at Pagos', '', 1, '2022-10-20 11:15:31', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/module_generator/delete/21', 'Delete data Jerarquia Administrativa at Module Generator', '', 1, '2022-10-20 11:56:36', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-22 04:01:51', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:105.0) Gecko/20100101 Firefox/105.0', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-22 04:02:53', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-22 04:05:35', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-22 04:05:42', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-10-22 04:07:38', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/add-save', 'Add New Data Secretaria at Users Management', '', 1, '2022-10-22 04:20:17', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-22 04:20:36', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'secretaria@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-10-22 04:20:40', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'secretaria@gmail.com logout', '', 3, '2022-10-22 04:21:02', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'secretaria@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-10-22 04:21:11', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'secretaria@gmail.com logout', '', 3, '2022-10-22 04:21:16', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-22 04:21:25', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Empleados at Menu Management', '', 1, '2022-10-22 04:22:23', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Gogogle at Menu Management', '', 1, '2022-10-22 04:23:08', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-22 04:23:22', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'secretaria@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-10-22 04:23:27', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/clientes/add', 'Try add data at Clientes', '', 3, '2022-10-22 04:23:57', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'secretaria@gmail.com logout', '', 3, '2022-10-22 04:25:58', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-22 04:26:03', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-23 06:50:53', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-23 06:53:00', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'secretaria@gmail.com login with IP Address 127.0.0.1', '', 3, '2022-10-23 06:53:09', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'secretaria@gmail.com logout', '', 3, '2022-10-23 06:53:19', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-23 06:54:58', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-23 06:55:26', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2022-10-24 00:25:37', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'admin@crudbooster.com logout', '', 1, '2022-10-24 00:26:16', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-02 19:09:27', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:11:49', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:11:56', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:02', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:07', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:13', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:23', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:29', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:35', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:43', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:48', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:12:55', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:01', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:05', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:14', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:21', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:26', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:31', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:36', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:41', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/departamentos/add-save', 'Add New Data  at Departamentos de Guatemala', '', 1, '2022-11-02 19:13:46', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:14:31', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:14:38', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:14:42', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:14:49', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:14:54', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:00', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:08', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:18', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:23', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:29', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:39', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:44', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:51', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:15:57', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:16:02', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/municipios/add-save', 'Add New Data  at Municipios de Guatemala', '', 1, '2022-11-02 19:16:22', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/empleados/add-save', 'Add New Data  at Empleados', '', 1, '2022-11-02 19:40:54', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cms_users/edit-save/1', 'Update data Super Admin at users', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2022-11/logo_search_grid_1x_1.png</td></tr><tr><td>password</td><td>$2y$10$2g5xVnibrMIUJNY5OWblbOnDes8OdSVwOMjfxStw5EQFDk2PbWf5G</td><td>$2y$10$tfhyD7L6fxmBRojApqjpxOR5uaeuGGSaWg71XFFNY2pBJBowWxd2y</td></tr></tbody></table>', 1, '2022-11-02 19:51:05', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/cargos/add-save', 'Add New Data  at Cargos', '', 1, '2022-11-02 19:54:00', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/empleados/edit-save/3', 'Update data  at Empleados', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cargo_id</td><td>5</td><td>10</td></tr></tbody></table>', 1, '2022-11-02 19:54:24', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/module_generator/delete/29', 'Delete data Contratos at Module Generator', '', 1, '2022-11-02 20:13:21', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos30/add-save', 'Add New Data  at Contratos', '', 1, '2022-11-02 20:36:29', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos30/add-save', 'Add New Data  at Contratos', '', 1, '2022-11-02 20:48:09', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/empleados/edit-save/3', 'Update data  at Empleados', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cargo_id</td><td>10</td><td>3</td></tr></tbody></table>', 1, '2022-11-02 20:48:57', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos30/add-save', 'Add New Data  at Contratos', '', 1, '2022-11-02 20:49:24', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/empleados/edit-save/3', 'Update data  at Empleados', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>cargo_id</td><td>3</td><td>10</td></tr></tbody></table>', 1, '2022-11-02 23:48:00', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes/add-save', 'Add New Data  at Ordenes', '', 1, '2022-11-02 23:58:17', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/estados/add-save', 'Add New Data  at Estados', '', 1, '2022-11-03 00:26:50', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/estados/add-save', 'Add New Data  at Estados', '', 1, '2022-11-03 00:27:04', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Division Politica at Menu Management', '', 1, '2022-11-03 01:00:46', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Ordenes at Menu Management', '', 1, '2022-11-03 01:03:52', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Empleados at Menu Management', '', 1, '2022-11-03 01:11:45', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/27', 'Update data Empleados at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>red</td></tr></tbody></table>', 1, '2022-11-03 01:12:43', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/27', 'Update data Empleados at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>red</td><td>yellow</td></tr></tbody></table>', 1, '2022-11-03 01:12:53', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/18', 'Update data Pagos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-money</td></tr><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:13:43', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/6', 'Update data Tipo de Pagos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-money</td><td>fa fa-credit-card</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:14:03', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/19', 'Update data users at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-user</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:14:33', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/4', 'Update data Estados at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-file</td><td>fa fa-files-o</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:15:28', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/4', 'Update data Estados at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>green</td></tr><tr><td>sorting</td><td>8</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:15:46', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/1', 'Update data Planes y Servicios at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>aqua</td></tr><tr><td>sorting</td><td>7</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:16:07', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/23', 'Update data Contratos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>muted</td></tr><tr><td>sorting</td><td>14</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:16:39', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/23', 'Update data Contratos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>muted</td><td>green</td></tr><tr><td>sorting</td><td>14</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:17:02', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/24', 'Update data Ordenes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-file-text</td></tr><tr><td>parent_id</td><td>26</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:21:51', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/6', 'Update data Tipo de Pagos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>green</td></tr><tr><td>sorting</td><td>9</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:22:38', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/15', 'Update data Clientes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>yellow</td></tr><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:22:56', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(177, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/16', 'Update data Productos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>aqua</td></tr><tr><td>sorting</td><td>11</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:23:14', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/18', 'Update data Pagos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>green</td></tr><tr><td>sorting</td><td>12</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:24:08', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/19', 'Update data users at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>yellow</td></tr><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:24:26', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Pagos at Menu Management', '', 1, '2022-11-03 01:25:03', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/15', 'Update data Clientes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>10</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:30:11', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/23', 'Update data Contratos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2022-11-03 01:30:47', NULL),
(183, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/add-save', 'Add New Data Vendedor at Users Management', '', 1, '2022-11-03 01:31:41', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/delete-image', 'Delete the image of Vendedor at Users Management', '', 1, '2022-11-03 01:31:59', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/edit-save/2', 'Update data Vendedor at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2022-11/logo_search_grid_1x_5.png</td></tr><tr><td>password</td><td>$2y$10$IlLmK77dpdXxaXQLOXrUsetvvZE4CIk9Rg1.H5H0KiYsMpR9F4pIK</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2022-11-03 01:32:06', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 01:32:19', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'vendedor@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-11-03 01:32:24', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'vendedor@gmail.com logout', '', 2, '2022-11-03 01:32:47', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 01:32:59', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/add-save', 'Add New Data Vendedor at Statistic Builder', '', 1, '2022-11-03 01:33:23', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Vendedor at Menu Management', '', 1, '2022-11-03 01:37:16', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 01:37:27', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'vendedor@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-11-03 01:37:38', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'vendedor@gmail.com logout', '', 2, '2022-11-03 02:04:31', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 02:04:38', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 02:43:20', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'vendedor@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-11-03 02:43:35', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'vendedor@gmail.com logout', '', 2, '2022-11-03 02:45:43', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 02:45:49', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 02:54:03', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'vendedor@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-11-03 02:54:10', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'vendedor@gmail.com logout', '', 2, '2022-11-03 02:54:25', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 02:54:31', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 02:57:40', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'vendedor@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-11-03 02:57:45', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'vendedor@gmail.com logout', '', 2, '2022-11-03 02:58:00', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 02:58:07', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 03:01:56', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'vendedor@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-11-03 03:02:02', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', ' logout', '', NULL, '2022-11-03 15:18:58', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 15:19:08', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes32/edit-save/1', 'Update data  at Orden a Ejecutar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>trabajo_id</td><td>1</td><td></td></tr><tr><td>servicio_id</td><td>1</td><td></td></tr><tr><td>tecnico_id</td><td>3</td><td></td></tr><tr><td>fecha_generacion</td><td>2022-11-02</td><td></td></tr><tr><td>supervisor_id</td><td>1</td><td></td></tr><tr><td>cliente_id</td><td>1</td><td></td></tr><tr><td>contrato_id</td><td>1</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:13:14', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes32/edit-save/1', 'Update data  at Orden a Ejecutar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>trabajo_id</td><td>1</td><td></td></tr><tr><td>servicio_id</td><td>1</td><td></td></tr><tr><td>tecnico_id</td><td>3</td><td></td></tr><tr><td>estado_id</td><td>2</td><td>7</td></tr><tr><td>fecha_generacion</td><td>2022-11-02</td><td></td></tr><tr><td>supervisor_id</td><td>1</td><td></td></tr><tr><td>cliente_id</td><td>1</td><td></td></tr><tr><td>contrato_id</td><td>1</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:15:58', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes32/delete-image', 'Delete the image of 1 at Orden a Ejecutar', '', 1, '2022-11-03 16:16:57', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes32/edit-save/1', 'Update data  at Orden a Ejecutar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>trabajo_id</td><td>1</td><td></td></tr><tr><td>servicio_id</td><td>1</td><td></td></tr><tr><td>tecnico_id</td><td>3</td><td></td></tr><tr><td>fecha_generacion</td><td>2022-11-02</td><td></td></tr><tr><td>supervisor_id</td><td>1</td><td></td></tr><tr><td>cliente_id</td><td>1</td><td></td></tr><tr><td>contrato_id</td><td>1</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:17:04', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes32/edit-save/1', 'Update data  at Orden a Ejecutar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>trabajo_id</td><td>1</td><td></td></tr><tr><td>servicio_id</td><td>1</td><td></td></tr><tr><td>tecnico_id</td><td>3</td><td></td></tr><tr><td>estado_id</td><td>7</td><td>8</td></tr><tr><td>fecha_generacion</td><td>2022-11-02</td><td></td></tr><tr><td>supervisor_id</td><td>1</td><td></td></tr><tr><td>evidencias</td><td></td><td>uploads/1/2022-11/tarea_09_2021.pdf</td></tr><tr><td>cliente_id</td><td>1</td><td></td></tr><tr><td>contrato_id</td><td>1</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:17:29', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes/edit-save/1', 'Update data  at Ordenes de Trabajo', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2022-11-03 16:20:24', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/30', 'Update data Orden a Ejecutar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>icon</td><td>fa fa-glass</td><td>fa fa-files-o</td></tr><tr><td>parent_id</td><td>26</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:22:01', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/add-save', 'Add New Data Tecnico at Users Management', '', 1, '2022-11-03 16:28:29', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/30', 'Update data Orden a Ejecutar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>26</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:29:06', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 16:29:10', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 16:29:13', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 16:29:34', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 16:29:41', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/30', 'Update data Orden a Ejecutar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>26</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:30:14', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 16:31:04', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 16:31:10', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 16:31:24', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 16:31:30', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/26', 'Update data Ordenes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:32:03', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 16:32:14', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 16:32:20', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 16:32:33', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 16:32:37', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/30', 'Update data Orden a Ejecutar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>26</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-11-03 16:32:54', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 16:32:58', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 16:33:02', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 16:33:53', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 16:33:55', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 16:34:50', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 16:34:54', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 16:35:00', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 16:35:06', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/add-save', 'Add New Data Tecnico at Statistic Builder', '', 1, '2022-11-03 16:58:22', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', '', 1, '2022-11-03 17:00:13', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 17:02:15', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 17:02:21', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 17:02:34', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 17:02:42', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/31', 'Update data Tecnico at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Dashboard</td><td>Tecnico</td></tr><tr><td>path</td><td>statistic_builder/show/vendedor</td><td>statistic_builder/show/tecnico</td></tr><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-11-03 17:03:24', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 17:05:04', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 17:05:10', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 17:05:19', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 17:05:24', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/31', 'Update data Tecnico at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>0</td><td></td></tr><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2022-11-03 17:05:42', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 17:05:47', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 17:05:52', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 17:06:40', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 17:06:47', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes/add-save', 'Add New Data  at Ordenes de Trabajo', '', 1, '2022-11-03 17:11:29', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes/add-save', 'Add New Data  at Ordenes de Trabajo', '', 1, '2022-11-03 17:20:53', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 17:34:34', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 17:34:39', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/ordenes32/edit-save/3', 'Update data  at Orden a Ejecutar', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>estado_id</td><td>7</td><td>8</td></tr><tr><td>fecha_generacion</td><td>2022-11-03</td><td></td></tr><tr><td>comentario</td><td></td><td>Se realizo instalacion de servicio</td></tr><tr><td>evidencias</td><td></td><td>uploads/3/2022-11/tarea_09_2021.pdf</td></tr><tr><td>fecha_verificacion</td><td></td><td>2022-11-30</td></tr></tbody></table>', 3, '2022-11-03 17:35:50', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 18:22:57', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 18:23:02', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 18:51:48', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'tecnico@tecnico.com login with IP Address 127.0.0.1', '', 3, '2022-11-03 18:52:03', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'tecnico@tecnico.com logout', '', 3, '2022-11-03 18:54:18', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 18:54:22', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/edit-save/1', 'Update data Principal at Statistic Builder', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Prueba</td><td>Principal</td></tr><tr><td>slug</td><td>prueba</td><td></td></tr></tbody></table>', 1, '2022-11-03 18:55:01', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos30/add-save', 'Add New Data  at Contratos', '', 1, '2022-11-03 20:39:14', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/26', 'Update data Ordenes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-11-03 20:43:37', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/30', 'Update data Orden a Ejecutar at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>26</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2022-11-03 20:43:56', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/24', 'Update data Ordenes at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>26</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-11-03 20:44:07', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/23', 'Update data Contratos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>14</td><td></td></tr></tbody></table>', 1, '2022-11-03 20:44:29', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/add-save', 'Add New Data Supervisor at Users Management', '', 1, '2022-11-03 20:45:18', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 20:45:30', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'supervisor@supervisor.com login with IP Address 127.0.0.1', '', 4, '2022-11-03 20:45:33', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'supervisor@supervisor.com logout', '', 4, '2022-11-03 20:51:01', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 20:51:06', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/add-save', 'Add New Data Supervisor at Statistic Builder', '', 1, '2022-11-03 20:54:35', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Supervisor at Menu Management', '', 1, '2022-11-03 21:04:21', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 21:04:26', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'supervisor@supervisor.com login with IP Address 127.0.0.1', '', 4, '2022-11-03 21:04:31', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'supervisor@supervisor.com logout', '', 4, '2022-11-03 21:04:53', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 21:05:01', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos30/add-save', 'Add New Data  at Contratos', '', 1, '2022-11-03 21:10:52', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/27', 'Update data Empleados at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2022-11-03 21:20:07', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/7', 'Update data Cargos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>27</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-11-03 21:20:16', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/9', 'Update data Empleados at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>27</td><td></td></tr></tbody></table>', 1, '2022-11-03 21:20:25', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/add-save', 'Add New Data Recursos Humanos at Users Management', '', 1, '2022-11-03 21:21:57', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 21:22:08', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'recursos@recursos.com login with IP Address 127.0.0.1', '', 5, '2022-11-03 21:22:10', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'recursos@recursos.com logout', '', 5, '2022-11-03 21:23:05', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 21:23:10', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/statistic_builder/add-save', 'Add New Data Recursos Humanos at Statistic Builder', '', 1, '2022-11-03 21:24:33', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Recursos Humanos at Menu Management', '', 1, '2022-11-03 21:48:19', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 21:48:24', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'recursos@recursos.com login with IP Address 127.0.0.1', '', 5, '2022-11-03 21:48:28', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'recursos@recursos.com logout', '', 5, '2022-11-03 21:49:17', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 21:49:26', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/productos/add-save', 'Add New Data  at Productos', '', 1, '2022-11-03 21:52:34', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/empleados/add-save', 'Add New Data  at Empleados', '', 1, '2022-11-03 21:54:07', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/add-save', 'Add New Data Cartera at Menu Management', '', 1, '2022-11-03 21:55:02', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 21:56:01', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'vendedor@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-11-03 21:56:04', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'vendedor@gmail.com logout', '', 2, '2022-11-03 21:56:11', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'vendedor@gmail.com login with IP Address 127.0.0.1', '', 2, '2022-11-03 21:57:24', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'vendedor@gmail.com logout', '', 2, '2022-11-03 21:57:29', NULL),
(311, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 21:57:34', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos33/add-save', 'Add New Data  at Servicios_Online', '', 1, '2022-11-03 22:05:26', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/1', 'Update data Planes y Servicios at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>13</td><td></td></tr></tbody></table>', 1, '2022-11-03 22:11:39', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/16', 'Update data Productos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>15</td><td></td></tr></tbody></table>', 1, '2022-11-03 22:12:34', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/18', 'Update data Pagos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>28</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2022-11-03 22:13:05', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/users/add-save', 'Add New Data Cliente Fiberhome at Users Management', '', 1, '2022-11-03 22:15:35', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 22:15:42', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'cliente@cliente.com login with IP Address 127.0.0.1', '', 6, '2022-11-03 22:15:44', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'cliente@cliente.com logout', '', 6, '2022-11-03 22:16:18', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 22:16:24', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/35', 'Update data Servicios_Online at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>18</td><td></td></tr></tbody></table>', 1, '2022-11-03 22:18:31', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 22:18:40', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'cliente@cliente.com login with IP Address 127.0.0.1', '', 6, '2022-11-03 22:18:48', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/contratos33', 'Try view the data :name at Servicios_Online', '', 6, '2022-11-03 22:18:52', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'cliente@cliente.com logout', '', 6, '2022-11-03 22:18:58', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 22:19:04', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 22:19:38', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'cliente@cliente.com login with IP Address 127.0.0.1', '', 6, '2022-11-03 22:19:44', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'cliente@cliente.com logout', '', 6, '2022-11-03 22:20:19', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 22:20:25', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/menu_management/edit-save/28', 'Update data Pagos at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2022-11-03 22:20:43', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 22:20:53', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'cliente@cliente.com login with IP Address 127.0.0.1', '', 6, '2022-11-03 22:20:57', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'cliente@cliente.com logout', '', 6, '2022-11-03 22:21:22', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 22:21:27', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/clientes/add-save', 'Add New Data  at Clientes', '', 1, '2022-11-03 22:26:11', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 22:27:19', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'cliente@cliente.com login with IP Address 127.0.0.1', '', 6, '2022-11-03 22:27:23', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'cliente@cliente.com logout', '', 6, '2022-11-03 22:27:33', NULL),
(340, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/login', 'hannselcordon@gmail.com login with IP Address 127.0.0.1', '', 1, '2022-11-03 22:27:38', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'http://127.0.0.1:8001/admin/logout', 'hannselcordon@gmail.com logout', '', 1, '2022-11-03 22:28:27', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Planes y Servicios', 'Route', 'AdminPlanesControllerGetIndex', 'aqua', 'fa fa-file-movie-o', 0, 1, 0, 1, 13, '2022-10-19 00:40:50', '2022-11-03 22:11:39'),
(2, 'Departamentos de Guatemala', 'Route', 'AdminDepartamentos1ControllerGetIndex', NULL, 'fa fa-map-marker', 25, 1, 0, 1, 1, '2022-10-19 00:41:54', NULL),
(3, 'Municipios de Guatemala', 'Route', 'AdminMunicipios1ControllerGetIndex', NULL, 'fa fa-map-marker', 25, 1, 0, 1, 2, '2022-10-19 00:42:50', NULL),
(4, 'Estados', 'Route', 'AdminEstados1ControllerGetIndex', 'green', 'fa fa-files-o', 0, 1, 0, 1, 14, '2022-10-19 00:49:51', '2022-11-03 01:15:46'),
(5, 'Tipos de Ordenes de Servicio', 'Route', 'AdminTipoordenesControllerGetIndex', NULL, 'fa fa-file', 26, 1, 0, 1, 1, '2022-10-19 00:55:17', NULL),
(6, 'Tipo de Pagos', 'Route', 'AdminTipopagos1ControllerGetIndex', 'green', 'fa fa-credit-card', 28, 1, 0, 1, 1, '2022-10-19 00:56:54', '2022-11-03 01:22:38'),
(7, 'Cargos', 'Route', 'AdminCargosControllerGetIndex', 'normal', 'fa fa-file-text', 27, 1, 0, 1, 2, '2022-10-19 01:38:42', '2022-11-03 21:20:16'),
(8, 'Tipos de Orden de Trabajo', 'Route', 'AdminTipotrabajosControllerGetIndex', NULL, 'fa fa-file', 26, 1, 0, 1, 2, '2022-10-19 02:11:51', NULL),
(9, 'Empleados', 'Route', 'AdminEmpleadosControllerGetIndex', 'normal', 'fa fa-user', 27, 1, 0, 1, 1, '2022-10-19 02:50:35', '2022-11-03 21:20:25'),
(13, 'prueba2', 'Statistic', 'statistic_builder/show/prueba', 'red', 'fa fa-search', 0, 1, 1, 1, 12, '2022-10-19 07:29:25', '2022-10-19 07:31:45'),
(15, 'Clientes', 'Route', 'AdminClientesControllerGetIndex', 'yellow', 'fa fa-user-plus', 34, 1, 0, 1, 1, '2022-10-19 12:32:58', '2022-11-03 01:30:11'),
(16, 'Productos', 'Route', 'AdminProductosControllerGetIndex', 'aqua', 'fa fa-product-hunt', 0, 1, 0, 1, 15, '2022-10-19 12:49:18', '2022-11-03 22:12:34'),
(18, 'Pagos', 'Route', 'AdminPagosControllerGetIndex', 'green', 'fa fa-money', 28, 1, 0, 1, 2, '2022-10-20 07:38:21', '2022-11-03 22:13:05'),
(19, 'users', 'Route', 'AdminCmsUsers1ControllerGetIndex', 'yellow', 'fa fa-user', 0, 1, 0, 1, 16, '2022-10-20 08:41:38', '2022-11-03 01:24:26'),
(21, 'Empleados', 'Module', 'empleados', 'normal', 'fa fa-users', 0, 1, 0, 1, 9, '2022-10-22 04:22:23', NULL),
(22, 'Gogogle', 'URL', 'https://www.google.com/', 'normal', 'fa fa-pagelines', 0, 1, 0, 1, 10, '2022-10-22 04:23:08', NULL),
(23, 'Contratos', 'Route', 'AdminContratos30ControllerGetIndex', 'green', 'fa fa-legal', 0, 1, 0, 1, 17, '2022-11-02 20:13:40', '2022-11-03 20:44:29'),
(24, 'Ordenes', 'Route', 'AdminOrdenesControllerGetIndex', 'normal', 'fa fa-file-text', 26, 1, 0, 1, 3, '2022-11-02 23:27:55', '2022-11-03 20:44:06'),
(25, 'Division Politica', 'URL', '#', 'aqua', 'fa fa-map-marker', 0, 1, 0, 1, 11, '2022-11-03 01:00:46', NULL),
(26, 'Ordenes', 'URL', '#', 'green', 'fa fa-file', 0, 1, 0, 1, 8, '2022-11-03 01:03:52', '2022-11-03 20:43:37'),
(27, 'Empleados', 'URL', '#', 'yellow', 'fa fa-users', 0, 1, 0, 1, 7, '2022-11-03 01:11:45', '2022-11-03 21:20:07'),
(28, 'Pagos', 'URL', '#', 'green', 'fa fa-money', 0, 1, 0, 1, 6, '2022-11-03 01:25:03', '2022-11-03 22:20:43'),
(29, 'Vendedor', 'Statistic', 'statistic_builder/show/vendedor', 'aqua', 'fa fa-dashboard', 0, 1, 1, 1, 5, '2022-11-03 01:37:16', NULL),
(30, 'Orden a Ejecutar', 'Route', 'AdminOrdenes32ControllerGetIndex', 'normal', 'fa fa-files-o', 26, 1, 0, 1, 4, '2022-11-03 15:22:32', '2022-11-03 20:43:56'),
(31, 'Tecnico', 'Statistic', 'statistic_builder/show/tecnico', 'green', 'fa fa-dashboard', 0, 1, 1, 1, 1, '2022-11-03 17:00:13', '2022-11-03 17:05:42'),
(32, 'Supervisor', 'Statistic', 'statistic_builder/show/supervisor', 'green', 'fa fa-dashboard', 0, 1, 1, 1, 2, '2022-11-03 21:04:21', NULL),
(33, 'Recursos Humanos', 'Statistic', 'statistic_builder/show/recursos-humanos', 'green', 'fa fa-dashboard', 0, 1, 1, 1, 3, '2022-11-03 21:48:19', NULL),
(34, 'Cartera', 'URL', '#', 'green', 'fa fa-users', 0, 1, 0, 1, 4, '2022-11-03 21:55:02', NULL),
(35, 'Servicios_Online', 'Route', 'AdminContratos33ControllerGetIndex', 'normal', 'fa fa-star', 0, 1, 0, 1, 18, '2022-11-03 21:58:51', '2022-11-03 22:18:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(2, 2, 1),
(3, 3, 1),
(6, 5, 1),
(9, 8, 1),
(11, 10, 1),
(12, 11, 1),
(13, 12, 1),
(16, 13, 1),
(17, 14, 1),
(20, 17, 1),
(23, 20, 1),
(24, 21, 2),
(25, 22, 2),
(28, 25, 1),
(37, 4, 1),
(42, 6, 1),
(46, 19, 1),
(48, 15, 1),
(49, 15, 3),
(52, 29, 3),
(64, 31, 4),
(65, 26, 1),
(66, 26, 5),
(67, 26, 4),
(68, 30, 1),
(69, 30, 5),
(70, 30, 4),
(71, 24, 1),
(72, 24, 5),
(73, 23, 1),
(74, 23, 5),
(75, 23, 3),
(76, 32, 5),
(77, 27, 6),
(78, 27, 1),
(79, 7, 6),
(80, 7, 1),
(81, 9, 6),
(82, 9, 1),
(83, 33, 6),
(84, 34, 1),
(85, 34, 3),
(87, 1, 7),
(88, 1, 1),
(89, 16, 7),
(90, 16, 1),
(91, 18, 7),
(92, 18, 1),
(93, 35, 7),
(94, 35, 1),
(95, 28, 7),
(96, 28, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2022-10-19 00:36:28', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2022-10-19 00:36:28', NULL, NULL),
(12, 'Planes y Servicios', 'fa fa-mobile-phone', 'planes', 'planes', 'AdminPlanesController', 0, 0, '2022-10-19 00:40:49', NULL, NULL),
(13, 'Departamentos de Guatemala', 'fa fa-map-marker', 'departamentos', 'departamentos', 'AdminDepartamentos1Controller', 0, 0, '2022-10-19 00:41:54', NULL, NULL),
(14, 'Municipios de Guatemala', 'fa fa-map-marker', 'municipios', 'municipios', 'AdminMunicipios1Controller', 0, 0, '2022-10-19 00:42:50', NULL, NULL),
(15, 'Estados', 'fa fa-file', 'estados', 'estados', 'AdminEstados1Controller', 0, 0, '2022-10-19 00:49:51', NULL, NULL),
(16, 'Tipos de Ordenes de Servicio', 'fa fa-file', 'tipoordenes', 'tipoordenes', 'AdminTipoordenesController', 0, 0, '2022-10-19 00:55:17', NULL, NULL),
(17, 'Tipo de Pagos', 'fa fa-money', 'tipopagos', 'tipopagos', 'AdminTipopagos1Controller', 0, 0, '2022-10-19 00:56:54', NULL, NULL),
(18, 'Cargos', 'fa fa-file-text', 'cargos', 'cargos', 'AdminCargosController', 0, 0, '2022-10-19 01:38:42', NULL, NULL),
(19, 'Tipos de Orden de Trabajo', 'fa fa-file', 'tipotrabajos', 'tipotrabajos', 'AdminTipotrabajosController', 0, 0, '2022-10-19 02:11:51', NULL, NULL),
(20, 'Empleados', 'fa fa-user', 'empleados', 'empleados', 'AdminEmpleadosController', 0, 0, '2022-10-19 02:50:35', NULL, NULL),
(21, 'Jerarquia Administrativa', 'fa fa-empire', 'jerarquias', 'jerarquias', 'AdminJerarquiasController', 0, 0, '2022-10-19 03:18:02', NULL, '2022-10-20 11:56:36'),
(22, 'Clientes', 'fa fa-user-plus', 'clientes', 'clientes', 'AdminClientesController', 0, 0, '2022-10-19 04:46:05', NULL, '2022-10-19 10:01:15'),
(23, 'Clientes', 'fa fa-user-plus', 'clientes23', 'clientes', 'AdminClientes23Controller', 0, 0, '2022-10-19 10:01:38', NULL, '2022-10-19 12:31:29'),
(24, 'Clientes', 'fa fa-user-plus', 'clientes', 'clientes', 'AdminClientesController', 0, 0, '2022-10-19 12:32:58', NULL, NULL),
(25, 'Productos', 'fa fa-product-hunt', 'productos', 'productos', 'AdminProductosController', 0, 0, '2022-10-19 12:49:18', NULL, NULL),
(26, 'Contratos de Servicios', 'fa fa-cog', 'contratos', 'contratos', 'AdminContratosController', 0, 0, '2022-10-19 13:51:38', NULL, '2022-10-20 10:17:56'),
(27, 'Pagos', 'fa fa-glass', 'pagos', 'pagos', 'AdminPagosController', 0, 0, '2022-10-20 07:38:21', NULL, NULL),
(28, 'users', 'fa fa-glass', 'cms_users', 'cms_users', 'AdminCmsUsers1Controller', 0, 0, '2022-10-20 08:41:38', NULL, NULL),
(29, 'Contratos', 'fa fa-file', 'contratos29', 'contratos', 'AdminContratos29Controller', 0, 0, '2022-10-20 10:19:16', NULL, '2022-11-02 20:13:21'),
(30, 'Contratos', 'fa fa-legal', 'contratos30', 'contratos', 'AdminContratos30Controller', 0, 0, '2022-11-02 20:13:40', NULL, NULL),
(31, 'Ordenes de Trabajo', 'fa fa-file-word-o', 'ordenes', 'ordenes', 'AdminOrdenesController', 0, 0, '2022-11-02 23:27:55', NULL, NULL),
(32, 'Orden a Ejecutar', 'fa fa-glass', 'ordenes32', 'ordenes', 'AdminOrdenes32Controller', 0, 0, '2022-11-03 15:22:31', NULL, NULL),
(33, 'Servicios_Online', 'fa fa-star', 'contratos33', 'contratos', 'AdminContratos33Controller', 0, 0, '2022-11-03 21:58:51', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-green', '2022-10-19 00:36:28', NULL),
(2, 'Secretaria', 0, 'skin-purple', NULL, NULL),
(3, 'Vendedor', 0, 'skin-yellow', NULL, NULL),
(4, 'Tecnico', 0, 'skin-red', NULL, NULL),
(5, 'Supervisor', 0, 'skin-yellow', NULL, NULL),
(6, 'RH', 0, 'skin-blue', NULL, NULL),
(7, 'Clientes', 0, 'skin-green', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(52, 1, 1, 1, 0, 0, 2, 20, NULL, NULL),
(69, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(70, 1, 1, 1, 1, 1, 1, 24, NULL, NULL),
(71, 1, 1, 1, 1, 1, 1, 30, NULL, NULL),
(72, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(73, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(74, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(75, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(76, 1, 1, 1, 1, 1, 1, 27, NULL, NULL),
(77, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(78, 1, 1, 1, 1, 1, 1, 25, NULL, NULL),
(79, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(80, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(81, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(82, 1, 1, 1, 1, 1, 1, 28, NULL, NULL),
(83, 1, 1, 1, 1, 1, 1, 4, NULL, NULL),
(84, 1, 1, 1, 1, 1, 1, 31, NULL, NULL),
(85, 1, 1, 1, 1, 1, 3, 24, NULL, NULL),
(86, 1, 1, 1, 1, 1, 3, 30, NULL, NULL),
(87, 1, 1, 1, 1, 1, 1, 32, NULL, NULL),
(88, 1, 0, 1, 1, 0, 4, 32, NULL, NULL),
(89, 1, 1, 1, 1, 1, 5, 24, NULL, NULL),
(90, 1, 1, 1, 1, 1, 5, 30, NULL, NULL),
(91, 1, 1, 1, 1, 1, 5, 32, NULL, NULL),
(92, 1, 1, 1, 1, 1, 5, 31, NULL, NULL),
(93, 1, 1, 1, 1, 1, 6, 18, NULL, NULL),
(94, 1, 1, 1, 1, 1, 6, 20, NULL, NULL),
(95, 1, 1, 1, 1, 1, 1, 33, NULL, NULL),
(103, 0, 1, 0, 0, 0, 7, 24, NULL, NULL),
(104, 1, 1, 1, 0, 0, 7, 27, NULL, NULL),
(105, 1, 0, 0, 0, 0, 7, 12, NULL, NULL),
(106, 1, 0, 0, 0, 0, 7, 25, NULL, NULL),
(107, 1, 1, 0, 0, 0, 7, 33, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', '#138F8B', 'text', NULL, 'Input hexacode', '2022-10-19 00:36:28', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', '#138F8B', 'text', NULL, 'Input hexacode', '2022-10-19 00:36:28', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', 'uploads/2022-10/98f758a54bd0e8110b291084e9b4f8a7.webp', 'upload_image', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'soportefundemi@gmail.com', 'text', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'smtp', 'select', 'smtp,mail,sendmail', NULL, '2022-10-19 00:36:28', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', 'smtp.gmail.com', 'text', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '587', 'text', NULL, 'default 25', '2022-10-19 00:36:28', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', 'soportefundemi@gmail.com', 'text', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', 'sivictjhjjbarwiz', 'text', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'Fiberhome S.A.', 'text', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2022-10-19 00:36:28', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2022-10/b2c6112f364d71e26f1eb13e9b4a449c.png', 'upload_image', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2022-10/846a58030c82f01daeb7d542e14c5f5c.png', 'upload_image', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2022-10-19 00:36:28', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', 'AIzaSyDL3jkSEmDNZa-45BOp9ThnmCtM3NhSXOo', 'text', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', NULL, 'text', NULL, NULL, '2022-10-19 00:36:28', NULL, 'Application Setting', 'Google FCM Key'),
(17, 'image', 'uploads/2022-10/7cea44f9cc978831a984eb23252c39ef.png', 'upload_image', 'abc', NULL, '2022-10-20 08:30:19', NULL, 'General Setting', 'Image'),
(18, 'image', 'uploads/2022-10/7cea44f9cc978831a984eb23252c39ef.png', 'upload_image', 'abc', 'abc', '2022-10-20 08:40:00', NULL, 'Login Register Style', 'Image');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Principal', 'prueba', '2022-10-19 01:13:10', '2022-11-03 18:55:01'),
(2, 'Vendedor', 'vendedor', '2022-11-03 01:33:23', NULL),
(3, 'Tecnico', 'tecnico', '2022-11-03 16:58:22', NULL),
(4, 'Supervisor', 'supervisor', '2022-11-03 20:54:35', NULL),
(5, 'Recursos Humanos', 'recursos-humanos', '2022-11-03 21:24:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(5, 1, 'e814afb3f79478c0cfb6da119aa45c15', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Usuarios\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/cms_users\",\"sql\":\"select COUNT(*) from users\"}', '2022-10-19 07:36:34', NULL),
(6, 1, '301cceb8217bfe6317f43e0656ad272e', 'smallbox', 'area2', 0, NULL, '{\"name\":\"Clientes\",\"icon\":\"ion-bag\",\"color\":\"bg-red\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/clientes\",\"sql\":\"select COUNT(*)  from clientes\"}', '2022-10-19 07:37:45', NULL),
(7, 1, '36d07d9463740398e882cbb5708f29aa', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Empleados\",\"icon\":\"ion-bag\",\"color\":\"bg-aqua\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/empleados\",\"sql\":\"select COUNT(*)  from empleados\"}', '2022-10-19 07:41:01', NULL),
(8, 1, '13c06ddf82b2bd57867d0f7e64031e9a', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Tipos de Ordenes\",\"icon\":\"ion-bag\",\"color\":\"bg-yellow\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/tipoordenes\",\"sql\":\"select COUNT(*)  from tipoordenes\"}', '2022-10-19 07:44:05', NULL),
(9, 1, 'cc3d46fca2b39d2d50a53db856601d4f', 'chartarea', NULL, 0, 'Untitled', NULL, '2022-10-20 07:05:55', NULL),
(21, 1, 'ed6f1c23eb3d2c058c5bdad966c309b7', 'table', 'area5', 0, NULL, '{\"name\":\"Ventas\",\"sql\":\"Select CONCAT(empleados.nombres,\\\" \\\", empleados.apellidos) as Nombre,COUNT(contratos.id)as Cantidad_de_Servicios,sum(productos.costo)as Facturado,(sum(productos.costo) *0.30)as Comision ,MONTH(contratos.created_at) as Mes, YEAR(contratos.created_at) as a\\u00f1o FROM productos, contratos, empleados WHERE contratos.vendedor_id = empleados.id GROUP BY YEAR(contratos.created_at), MONTH(contratos.created_at), Nombre,productos.costo\"}', '2022-11-02 21:02:00', NULL),
(22, 2, '991f71452007719e96a0376f9697979f', 'table', 'area5', 0, NULL, '{\"name\":\"Ventas\",\"sql\":\"Select CONCAT(empleados.nombres,\\\" \\\", empleados.apellidos) as Nombre,COUNT(contratos.id)as Cantidad_de_Servicios,sum(productos.costo)as Facturado ,MONTH(contratos.created_at) as mes, YEAR(contratos.created_at) as a\\u00f1o FROM productos, contratos, empleados WHERE contratos.vendedor_id = empleados.id GROUP BY YEAR(contratos.created_at), MONTH(contratos.created_at), Nombre,productos.costo\"}', '2022-11-03 01:34:16', NULL),
(24, 2, '9b3a95dd9857a8813dfafd6e53be1211', 'smallbox', 'area1', 1, NULL, '{\"name\":\"Clientes\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/clientes\",\"sql\":\"select COUNT(*)  from clientes\"}', '2022-11-03 01:35:31', NULL),
(25, 2, 'a286d779056330ea64c440b5e6032374', 'chartbar', 'area5', 0, NULL, '{\"name\":\"PLanes mas contratados\",\"sql\":\"SELECT COUNT(contratos.id) AS \'value\', planes.planes_servicios AS \'label\'\\r\\nFROM contratos,planes\\r\\nWHERE\\r\\nplanes.id=contratos.plan_id AND MONTH(contratos.created_at)= MONTH(NOW())\\r\\nGROUP BY\\r\\nlabel\",\"area_name\":\"label\",\"goals\":null}', '2022-11-03 02:36:53', NULL),
(26, 2, '16d703187fd8a3c33d0a00bc8c521d37', 'chartarea', 'area3', 0, NULL, '{\"name\":\"Vendedores Rancking\",\"sql\":\"SELECT COUNT(contratos.id) AS \'value\', empleados.nombres AS \'label\'\\r\\nFROM contratos,planes,empleados\\r\\nWHERE\\r\\nempleados.id=contratos.vendedor_id AND MONTH(contratos.created_at)= MONTH(NOW())\\r\\nGROUP BY\\r\\nlabel\",\"area_name\":\"label\",\"goals\":\"2\"}', '2022-11-03 02:46:12', NULL),
(27, 2, 'a51627a3554ab8855fa55f42bd19f88f', 'chartarea', 'area4', 0, NULL, '{\"name\":\"Venta Anual\",\"sql\":\"SELECT COUNT(contratos.id) AS \'value\', empleados.nombres AS \'label\'\\r\\nFROM contratos,planes,empleados\\r\\nWHERE\\r\\nempleados.id=contratos.vendedor_id AND YEAR(contratos.created_at)= YEAR(NOW())\\r\\nGROUP BY\\r\\nlabel\",\"area_name\":\"label\",\"goals\":\"2\"}', '2022-11-03 02:49:55', NULL),
(29, 2, '1f61c3dceeeb8c191157f01cfa074655', 'smallbox', 'area2', 1, NULL, '{\"name\":\"Contratos\",\"icon\":\"ion-bag\",\"color\":\"bg-aqua\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/contratos30\",\"sql\":\"select COUNT(*)  FROM contratos\"}', '2022-11-03 02:54:48', NULL),
(32, 3, '7f58cbbfe33c93963bfce668c936521f', 'table', 'area5', 0, NULL, '{\"name\":\"Ordenes Ejecutadas\",\"sql\":\"SELECT  CONCAT(empleados.nombres,\\\" \\\", empleados.apellidos) as Tecnico,COUNT(ordenes.id) as Ordejes_Ejecutadas,SUM(tipotrabajos.costo)as Costo_Operativo, (Costo *0.20) as Comision, MONTH(ordenes.fecha_verificacion) Mes, YEAR(ordenes.fecha_verificacion) A\\u00f1o\\r\\nFROM ordenes, empleados, estados, tipotrabajos\\r\\nWHERE ordenes.estado_id = estados.id and ordenes.tecnico_id = empleados.id and ordenes.trabajo_id = tipotrabajos.id and ordenes.estado_id =\\\"8\\\" \\r\\nGROUP BY Tecnico, tipotrabajos.costo,Mes, A\\u00f1o\"}', '2022-11-03 16:58:30', NULL),
(34, 3, 'b9c070e8b02e06a9f63af22268db8fcd', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Ordenes Pendientes\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/ordenes32\",\"sql\":\"SELECT COUNT(ordenes.id) FROM ordenes WHERE ordenes.estado_id =\\\"7\\\"\"}', '2022-11-03 18:48:24', NULL),
(39, 1, '44426516cee6eb892f7883745431f5e6', 'table', 'area5', 2, NULL, '{\"name\":\"Ordenes Realizadas\",\"sql\":\"SELECT  CONCAT(empleados.nombres,\\\" \\\", empleados.apellidos) as Tecnico,COUNT(ordenes.id) as Ordejes_Ejecutadas,SUM(tipotrabajos.costo)as Costo_Operativo, (Costo *0.20) as Comision, MONTH(ordenes.fecha_verificacion) Mes, YEAR(ordenes.fecha_verificacion) A\\u00f1o\\r\\nFROM ordenes, empleados, estados, tipotrabajos\\r\\nWHERE ordenes.estado_id = estados.id and ordenes.tecnico_id = empleados.id and ordenes.trabajo_id = tipotrabajos.id and ordenes.estado_id =\\\"8\\\" \\r\\nGROUP BY Tecnico, tipotrabajos.costo,Mes, A\\u00f1o\"}', '2022-11-03 18:57:17', NULL),
(40, 4, 'f406804c8ead7f98e80027cb2366298b', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Servicios Pendientes de Instalaci\\u00f3n\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/contratos30\",\"sql\":\"SELECT COUNT(*) FROM contratos, estados \\r\\nWHERE contratos.estado_id = estados.id and estados.estado = \\\"Pendiente de Instalaci\\u00f3n\\\"\"}', '2022-11-03 20:54:43', NULL),
(41, 4, 'ff3b547425ab13a7c3382c9a7e99411b', 'smallbox', NULL, 0, 'Untitled', NULL, '2022-11-03 20:57:18', NULL),
(42, 4, '52413bf4d54d60e6ed29117238a81139', 'smallbox', 'area2', 0, NULL, '{\"name\":\"T\\u00e9cnicos de Campo\",\"icon\":\"ion-bag\",\"color\":\"bg-red\",\"link\":\"#\",\"sql\":\"SELECT COUNT(*) FROM empleados,cargos\\r\\nWHERE empleados.cargo_id = cargos.id AND cargos.cargos =\\\"T\\u00e9cnico de Campo\\\"\"}', '2022-11-03 20:57:20', NULL),
(43, 4, '7254b34a9ef3b1642ea71d27b3cd8858', 'smallbox', 'area3', 0, NULL, '{\"name\":\"Ordenes Ejecutadas\",\"icon\":\"ion-bag\",\"color\":\"bg-aqua\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/ordenes32\",\"sql\":\"SELECT COUNT(*) FROM ordenes, estados\\r\\nWHERE ordenes.estado_id = estados.id and estados.estado = \\\"Ejecutada\\\"\"}', '2022-11-03 21:00:12', NULL),
(44, 4, '91feb4649360c19efbed7b581709b93f', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Ordenes Pendientes de Ejecutar\",\"icon\":\"ion-bag\",\"color\":\"bg-yellow\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/ordenes32\",\"sql\":\"SELECT COUNT(*) FROM ordenes, estados\\r\\nWHERE ordenes.estado_id = estados.id and estados.estado = \\\"Pendiente de Ejecutar\\\"\"}', '2022-11-03 21:01:52', NULL),
(45, 1, '111b111b9214f47feb7bfcc7b11d3773', 'chartarea', 'area5', 2, NULL, '{\"name\":\"Ventas del Mes\",\"sql\":\"SELECT COUNT(contratos.id) AS \'value\', empleados.nombres AS \'label\'\\r\\nFROM contratos,planes,empleados\\r\\nWHERE\\r\\nempleados.id=contratos.vendedor_id AND MONTH(contratos.created_at)= MONTH(NOW())\\r\\nGROUP BY\\r\\nlabel\",\"area_name\":\"label\",\"goals\":\"2\"}', '2022-11-03 21:06:14', NULL),
(46, 1, '9534d775e5b5a03ff1075df26397f085', 'chartline', 'area5', 3, NULL, '{\"name\":\"Ventas del A\\u00f1o\",\"sql\":\"SELECT COUNT(contratos.id) AS \'value\', empleados.nombres AS \'label\'\\r\\nFROM contratos,planes,empleados\\r\\nWHERE\\r\\nempleados.id=contratos.vendedor_id AND YEAR(contratos.created_at)= YEAR(NOW())\\r\\nGROUP BY\\r\\nlabel\",\"area_name\":\"label\",\"goals\":null}', '2022-11-03 21:08:47', NULL),
(47, 5, '7045aadd1d67d5424bd2864d4f874168', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Total de Empleados\",\"icon\":\"ion-bag\",\"color\":\"bg-green\",\"link\":\"http:\\/\\/127.0.0.1:8001\\/admin\\/empleados\",\"sql\":\"select COUNT(*) FROM empleados\"}', '2022-11-03 21:24:40', NULL),
(48, 5, '8fcb80986fdf7a11b967ba40732754e4', 'chartbar', 'area5', 0, NULL, '{\"name\":\"Cargos\",\"sql\":\"SELECT COUNT(empleados.id) AS \'value\', cargos.cargos AS \'label\'\\r\\nFROM empleados,cargos\\r\\nWHERE\\r\\nempleados.cargo_id=cargos.id \\r\\nGROUP BY\\r\\nlabel\",\"area_name\":\"label\",\"goals\":null}', '2022-11-03 21:31:35', NULL),
(49, 5, '6d85999460c5c2e67aa674e349f01e0c', 'table', 'area5', 0, NULL, '{\"name\":\"Vendedor del Mes\",\"sql\":\"select CONCAT(empleados.nombres,\\\" \\\", empleados.apellidos) as Nombre, SUM(productos.costo) As Facturado\\r\\nfrom empleados, productos, contratos\\r\\nWHERE contratos.vendedor_id = empleados.id and MONTH(contratos.created_at)=MONTH(NOW()) AND YEAR(contratos.created_at) = YEAR(NOW())\\r\\nGROUP BY Nombre DESC LIMIT 1;\"}', '2022-11-03 21:32:24', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `vendedor_id` bigint(20) UNSIGNED NOT NULL,
  `estado_id` bigint(20) UNSIGNED NOT NULL,
  `contrato_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `contratos`
--

INSERT INTO `contratos` (`id`, `cliente_id`, `producto_id`, `plan_id`, `vendedor_id`, `estado_id`, `contrato_file`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 2, 1, 'uploads/1/2022-11/modelo_de_contrato.doc', '2022-08-02 20:36:29', NULL),
(2, 1, 1, 1, 2, 1, 'uploads/1/2022-11/modelo_de_contrato.doc', '2022-08-02 20:48:09', NULL),
(3, 1, 1, 1, 3, 5, 'uploads/1/2022-11/modelo_de_contrato.doc', '2022-10-02 20:49:24', NULL),
(4, 1, 1, 1, 2, 1, 'uploads/1/2022-11/modelo_de_contrato.doc', '2022-10-03 20:39:14', NULL),
(5, 1, 1, 1, 2, 5, 'uploads/1/2022-11/modelo_de_contrato.doc', '2022-11-03 21:10:52', NULL),
(6, 1, 2, 1, 4, 1, 'uploads/1/2022-11/modelo_de_contrato.doc', '2022-11-03 22:05:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `departamento`, `created_at`, `updated_at`) VALUES
(1, 'Alta Verapaz', '2022-10-19 00:58:04', NULL),
(2, 'Baja Verapaz', '2022-10-22 04:07:38', NULL),
(3, 'Chimaltenango', '2022-11-02 19:11:49', NULL),
(4, 'Chiquimula', '2022-11-02 19:11:56', NULL),
(5, 'El Progreso', '2022-11-02 19:12:02', NULL),
(6, 'Escuintla', '2022-11-02 19:12:07', NULL),
(7, 'Departamento de Guatemala', '2022-11-02 19:12:13', NULL),
(8, 'Huehuetenango', '2022-11-02 19:12:23', NULL),
(9, 'Izabal', '2022-11-02 19:12:29', NULL),
(10, 'Jalapa', '2022-11-02 19:12:35', NULL),
(11, 'Jutiapa', '2022-11-02 19:12:43', NULL),
(12, 'Petén', '2022-11-02 19:12:48', NULL),
(13, 'Quetzaltenango', '2022-11-02 19:12:55', NULL),
(14, 'Quiché', '2022-11-02 19:13:01', NULL),
(15, 'Retalhuleu', '2022-11-02 19:13:05', NULL),
(16, 'Sacatepéquez', '2022-11-02 19:13:14', NULL),
(17, 'San Marcos', '2022-11-02 19:13:21', NULL),
(18, 'Santa Rosa', '2022-11-02 19:13:26', NULL),
(19, 'Sololá', '2022-11-02 19:13:31', NULL),
(20, 'Suchitepéquez', '2022-11-02 19:13:36', NULL),
(21, 'Totonicapán', '2022-11-02 19:13:41', NULL),
(22, 'Zacapa', '2022-11-02 19:13:46', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cui` bigint(20) NOT NULL,
  `nombres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `cui`, `nombres`, `apellidos`, `telefono`, `email`, `cargo_id`, `created_at`, `updated_at`) VALUES
(1, 2050968911601, 'Hannsel Estuardo', 'Cordón Ac', 12345678, 'hannselcordon@gmail.com', 1, '2022-10-19 03:01:21', NULL),
(2, 2050968911604, 'Rene Estuardo', 'Lopez Garcia', 87654321, 'estuardo@prueba.com', 3, '2022-10-19 03:02:31', NULL),
(3, 2050968911607, 'Julio Alberto', 'Morales Tut', 12345678, 'jmorales@gmal.com', 10, '2022-11-02 19:40:54', '2022-11-02 23:48:00'),
(4, 1010110101, 'System', 'Firberhome', 33343, 'system@sistema.com', 3, '2022-11-03 21:54:07', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Pendiente de Instalación', '2022-10-19 00:58:26', NULL),
(2, 'Suspendido por falta de pago', '2022-10-19 00:58:38', NULL),
(3, 'Dado de Baja', '2022-10-19 00:59:03', NULL),
(4, 'Sin Contrato', '2022-10-19 12:20:47', NULL),
(5, 'Activo', '2022-10-20 11:13:28', NULL),
(6, 'Inactivo', '2022-10-20 11:13:35', NULL),
(7, 'Pendiente de Ejecutar', '2022-11-03 00:26:50', NULL),
(8, 'Ejecutada', '2022-11-03 00:27:04', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_08_07_145904_add_table_cms_apicustom', 1),
(4, '2016_08_07_150834_add_table_cms_dashboard', 1),
(5, '2016_08_07_151210_add_table_cms_logs', 1),
(6, '2016_08_07_151211_add_details_cms_logs', 1),
(7, '2016_08_07_152014_add_table_cms_privileges', 1),
(8, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(9, '2016_08_07_152320_add_table_cms_settings', 1),
(11, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(12, '2016_08_07_154624_add_table_cms_moduls', 1),
(14, '2016_08_20_125418_add_table_cms_notifications', 1),
(15, '2016_09_04_033706_add_table_cms_email_queues', 1),
(16, '2016_09_16_035347_add_group_setting', 1),
(17, '2016_09_16_045425_add_label_setting', 1),
(18, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(19, '2016_10_01_141740_add_method_type_apicustom', 1),
(20, '2016_10_01_141846_add_parameters_apicustom', 1),
(21, '2016_10_01_141934_add_responses_apicustom', 1),
(22, '2016_10_01_144826_add_table_apikey', 1),
(23, '2016_11_14_141657_create_cms_menus', 1),
(24, '2016_11_15_132350_create_cms_email_templates', 1),
(25, '2016_11_15_190410_create_cms_statistics', 1),
(26, '2016_11_17_102740_create_cms_statistic_components', 1),
(27, '2017_06_06_164501_add_deleted_at_cms_moduls', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2022_10_18_160310_create_departamentos_table', 1),
(31, '2022_10_18_162124_create_municipios_table', 1),
(32, '2022_10_18_171919_create_tipopagos_table', 1),
(33, '2022_10_18_172114_create_estados_table', 1),
(34, '2022_10_18_174657_create_tipoordenes_table', 2),
(35, '2022_10_18_183041_create_planes_table', 2),
(36, '2022_10_18_193012_create_cargos_table', 3),
(37, '2022_10_18_200947_create_tipotrabajos_table', 4),
(38, '2022_10_18_202616_create_empleados_table', 5),
(39, '2022_10_18_211300_create_jerarquias_table', 6),
(40, '2022_10_18_220441_create_clientes_table', 7),
(41, '2022_10_19_062144_create_productos_table', 7),
(45, '2022_10_20_012912_create_pagos_table', 8),
(46, '2014_10_12_000000_create_users_table', 9),
(47, '2016_08_07_152421_add_table_cms_users', 9),
(48, '2016_08_17_225409_add_status_cms_users', 9),
(49, '2022_10_19_074301_create_contratos_table', 10),
(50, '2022_11_02_210530_create_ordenes_table', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `municipio`, `created_at`, `updated_at`) VALUES
(1, 'Cobán', '2022-10-19 00:58:15', NULL),
(2, 'San Pedro Carcha', '2022-10-19 08:19:26', NULL),
(3, 'Santa Cruz Verapaz', '2022-11-02 19:14:31', NULL),
(4, 'San Cristobal Verapaz', '2022-11-02 19:14:38', NULL),
(5, 'Tactíc', '2022-11-02 19:14:42', NULL),
(6, 'Tamahú', '2022-11-02 19:14:49', NULL),
(7, 'San Miguel Tucurú', '2022-11-02 19:14:54', NULL),
(8, 'Panzos', '2022-11-02 19:15:00', NULL),
(9, 'Senahú', '2022-11-02 19:15:08', NULL),
(10, 'San Pedro Carchá', '2022-11-02 19:15:18', NULL),
(11, 'SanJuan Chamelco', '2022-11-02 19:15:23', NULL),
(12, 'Lanquín', '2022-11-02 19:15:29', NULL),
(13, 'Santa María Cahabón', '2022-11-02 19:15:39', NULL),
(14, 'Chisec', '2022-11-02 19:15:44', NULL),
(15, 'Chahal', '2022-11-02 19:15:51', NULL),
(16, 'Fray Bartolomé de las Casas', '2022-11-02 19:15:57', NULL),
(17, 'Santa Catarina La Tinta', '2022-11-02 19:16:02', NULL),
(18, 'Raxruha', '2022-11-02 19:16:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trabajo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `servicio_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tecnico_id` bigint(20) UNSIGNED DEFAULT NULL,
  `estado_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha_generacion` date DEFAULT NULL,
  `supervisor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comentario` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evidencias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_verificacion` date DEFAULT NULL,
  `cliente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contrato_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id`, `trabajo_id`, `servicio_id`, `tecnico_id`, `estado_id`, `fecha_generacion`, `supervisor_id`, `comentario`, `evidencias`, `fecha_verificacion`, `cliente_id`, `contrato_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 8, '2022-11-02', 1, 'Comentario', 'uploads/1/2022-11/tarea_09_2021.pdf', '2022-11-15', 1, 1, '2022-11-02 23:58:17', '2022-11-03 16:20:24'),
(2, 1, 3, 3, 7, '2022-11-03', 1, NULL, NULL, NULL, 1, 3, '2022-11-03 17:11:29', NULL),
(3, 1, 1, 3, 8, '2022-11-03', 1, 'Se realizo instalacion de servicio', 'uploads/3/2022-11/tarea_09_2021.pdf', '2022-11-30', 1, 1, '2022-11-03 17:20:53', '2022-11-03 17:35:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `servicio_id` bigint(20) UNSIGNED NOT NULL,
  `tipopago_id` bigint(20) UNSIGNED NOT NULL,
  `fecha_pago` date NOT NULL,
  `monto` double NOT NULL,
  `saldo` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id`, `cliente_id`, `servicio_id`, `tipopago_id`, `fecha_pago`, `monto`, `saldo`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2022-10-19', 200, 200, '2022-10-20 11:15:31', NULL);

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
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `planes_servicios` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `planes_servicios`, `created_at`, `updated_at`) VALUES
(1, 'Premium 12 Meses', '2022-10-19 13:59:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `producto`, `descripcion`, `costo`, `created_at`, `updated_at`) VALUES
(1, 'Internet Corporativo Plus', 'Protección de datos Site to Site, 1 Dominio, 400 Usuarios internos y hasta 100 externos', 200, '2022-10-19 13:12:34', NULL),
(2, 'Correo Corporativo', 'Protección de Datos, Respaldo automatico, Encriptacion, etc.', 300, '2022-11-03 21:52:34', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoordenes`
--

CREATE TABLE `tipoordenes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_orden` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipoordenes`
--

INSERT INTO `tipoordenes` (`id`, `tipo_orden`, `created_at`, `updated_at`) VALUES
(1, 'Instalación de Nuevo Servicio', '2022-10-19 00:59:58', NULL),
(2, 'Inspeccion de Servicio', '2022-10-19 01:00:15', NULL),
(3, 'Reclamo por falta de Servicio', '2022-10-19 01:00:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopagos`
--

CREATE TABLE `tipopagos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipopagos`
--

INSERT INTO `tipopagos` (`id`, `tipo`, `created_at`, `updated_at`) VALUES
(1, 'Efectivo', '2022-10-19 01:00:55', NULL),
(2, 'Tarjeta', '2022-10-19 01:00:58', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipotrabajos`
--

CREATE TABLE `tipotrabajos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipo_trabajo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `costo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipotrabajos`
--

INSERT INTO `tipotrabajos` (`id`, `tipo_trabajo`, `descripcion`, `costo`, `created_at`, `updated_at`) VALUES
(1, 'Inspección de Servicio', 'Esta tarea es diseñada para el técnico de campo y tiene el proposito de realizar una inspeccion completa, detectar y solucionar el inconveniente.', '200', '2022-10-19 02:17:55', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'uploads/1/2022-11/logo_search_grid_1x_1.png', 'hannselcordon@gmail.com', '$2y$10$tfhyD7L6fxmBRojApqjpxOR5uaeuGGSaWg71XFFNY2pBJBowWxd2y', 1, 'Active', '2022-11-02 19:08:45', '2022-11-02 19:51:05'),
(2, 'Vendedor', 'uploads/1/2022-11/logo_search_grid_1x_5.png', 'vendedor@gmail.com', '$2y$10$IlLmK77dpdXxaXQLOXrUsetvvZE4CIk9Rg1.H5H0KiYsMpR9F4pIK', 3, NULL, '2022-11-03 01:31:41', '2022-11-03 01:32:06'),
(3, 'Tecnico', 'uploads/1/2022-11/logo_search_grid_1x_3.png', 'tecnico@tecnico.com', '$2y$10$fdCdbWtf3SQMLnOe0izl7eBTFbvV2aZ9ZZ5F2CvDxrLdCa46RPvAW', 4, NULL, '2022-11-03 16:28:29', NULL),
(4, 'Supervisor', 'uploads/1/2022-11/logo_search_grid_1x_2.png', 'supervisor@supervisor.com', '$2y$10$DSgqrRceKhmVFzUU.atx7Ojx/wUabZWevyA6Q73uKvPO8K0HjCUva', 5, NULL, '2022-11-03 20:45:18', NULL),
(5, 'Recursos Humanos', 'uploads/1/2022-11/logo_search_grid_1x_1.png', 'recursos@recursos.com', '$2y$10$1pb20W1OalNf4iJ67p.HvO06pB4/Yl9dgNotlqY7ejVqjzFe7SdsW', 6, NULL, '2022-11-03 21:21:57', NULL),
(6, 'Cliente Fiberhome', 'uploads/1/2022-11/logo_search_grid_1x_7.png', 'cliente@cliente.com', '$2y$10$NuihcPADz4FhlkpkzG3PNOU2u6GgP6NstMfSgbztEywbCVGww1Itm', 7, NULL, '2022-11-03 22:15:35', NULL);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_futbolistas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_futbolistas` (
`id` bigint(20) unsigned
,`cui` bigint(20)
,`nombres` varchar(255)
,`apellidos` varchar(255)
,`telefono` bigint(20)
,`email` varchar(255)
,`cargo_id` bigint(20) unsigned
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_futbolistas`
--
DROP TABLE IF EXISTS `vista_futbolistas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_futbolistas`  AS SELECT `empleados`.`id` AS `id`, `empleados`.`cui` AS `cui`, `empleados`.`nombres` AS `nombres`, `empleados`.`apellidos` AS `apellidos`, `empleados`.`telefono` AS `telefono`, `empleados`.`email` AS `email`, `empleados`.`cargo_id` AS `cargo_id`, `empleados`.`created_at` AS `created_at`, `empleados`.`updated_at` AS `updated_at` FROM `empleados``empleados`  ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_departamento_id_foreign` (`departamento_id`),
  ADD KEY `clientes_municipio_id_foreign` (`municipio_id`),
  ADD KEY `clientes_empleado_id_foreign` (`empleado_id`);

--
-- Indices de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contratos_producto_id_foreign` (`producto_id`),
  ADD KEY `contratos_plan_id_foreign` (`plan_id`),
  ADD KEY `contratos_vendedor_id_foreign` (`vendedor_id`),
  ADD KEY `contratos_estado_id_foreign` (`estado_id`),
  ADD KEY `contratos_cliente_id_foreign` (`cliente_id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empleados_cargo_id_foreign` (`cargo_id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordenes_trabajo_id_foreign` (`trabajo_id`),
  ADD KEY `ordenes_servicio_id_foreign` (`servicio_id`),
  ADD KEY `ordenes_tecnico_id_foreign` (`tecnico_id`),
  ADD KEY `ordenes_estado_id_foreign` (`estado_id`),
  ADD KEY `ordenes_supervisor_id_foreign` (`supervisor_id`),
  ADD KEY `ordenes_cliente_id_foreign` (`cliente_id`),
  ADD KEY `ordenes_contrato_id_foreign` (`contrato_id`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pagos_cliente_id_foreign` (`cliente_id`),
  ADD KEY `pagos_servicio_id_foreign` (`servicio_id`),
  ADD KEY `pagos_tipopago_id_foreign` (`tipopago_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipoordenes`
--
ALTER TABLE `tipoordenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipopagos`
--
ALTER TABLE `tipopagos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipotrabajos`
--
ALTER TABLE `tipotrabajos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT de la tabla `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pagos`
--
ALTER TABLE `pagos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipoordenes`
--
ALTER TABLE `tipoordenes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipopagos`
--
ALTER TABLE `tipopagos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipotrabajos`
--
ALTER TABLE `tipotrabajos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clientes_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clientes_municipio_id_foreign` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD CONSTRAINT `contratos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contratos_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contratos_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `planes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contratos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contratos_vendedor_id_foreign` FOREIGN KEY (`vendedor_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_cargo_id_foreign` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD CONSTRAINT `ordenes_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordenes_contrato_id_foreign` FOREIGN KEY (`contrato_id`) REFERENCES `contratos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordenes_estado_id_foreign` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordenes_servicio_id_foreign` FOREIGN KEY (`servicio_id`) REFERENCES `tipoordenes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordenes_supervisor_id_foreign` FOREIGN KEY (`supervisor_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordenes_tecnico_id_foreign` FOREIGN KEY (`tecnico_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordenes_trabajo_id_foreign` FOREIGN KEY (`trabajo_id`) REFERENCES `tipotrabajos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pagos_servicio_id_foreign` FOREIGN KEY (`servicio_id`) REFERENCES `contratos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pagos_tipopago_id_foreign` FOREIGN KEY (`tipopago_id`) REFERENCES `tipopagos` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
