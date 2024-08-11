-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.30 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para hangmanbd
CREATE DATABASE IF NOT EXISTS `hangmanbd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hangmanbd`;

-- Volcando estructura para tabla hangmanbd.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.auth_group: ~0 rows (aproximadamente)

-- Volcando estructura para tabla hangmanbd.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.auth_group_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla hangmanbd.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.auth_permission: ~32 rows (aproximadamente)
REPLACE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add mi modelo', 7, 'add_mimodelo'),
	(26, 'Can change mi modelo', 7, 'change_mimodelo'),
	(27, 'Can delete mi modelo', 7, 'delete_mimodelo'),
	(28, 'Can view mi modelo', 7, 'view_mimodelo'),
	(29, 'Can add palabra', 8, 'add_palabra'),
	(30, 'Can change palabra', 8, 'change_palabra'),
	(31, 'Can delete palabra', 8, 'delete_palabra'),
	(32, 'Can view palabra', 8, 'view_palabra'),
	(33, 'Can add estadistica', 9, 'add_estadistica'),
	(34, 'Can change estadistica', 9, 'change_estadistica'),
	(35, 'Can delete estadistica', 9, 'delete_estadistica'),
	(36, 'Can view estadistica', 9, 'view_estadistica');

-- Volcando estructura para tabla hangmanbd.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.auth_user: ~0 rows (aproximadamente)

-- Volcando estructura para tabla hangmanbd.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.auth_user_groups: ~0 rows (aproximadamente)

-- Volcando estructura para tabla hangmanbd.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.auth_user_user_permissions: ~0 rows (aproximadamente)

-- Volcando estructura para tabla hangmanbd.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.django_admin_log: ~0 rows (aproximadamente)

-- Volcando estructura para tabla hangmanbd.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.django_content_type: ~8 rows (aproximadamente)
REPLACE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(9, 'hangman', 'estadistica'),
	(7, 'hangman', 'mimodelo'),
	(8, 'hangman', 'palabra'),
	(6, 'sessions', 'session');

-- Volcando estructura para tabla hangmanbd.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.django_migrations: ~18 rows (aproximadamente)
REPLACE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2024-07-14 03:32:09.574061'),
	(2, 'auth', '0001_initial', '2024-07-14 03:32:09.709432'),
	(3, 'admin', '0001_initial', '2024-07-14 03:32:09.750178'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2024-07-14 03:32:09.754664'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-14 03:32:09.758041'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2024-07-14 03:32:09.786700'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2024-07-14 03:32:09.804609'),
	(8, 'auth', '0003_alter_user_email_max_length', '2024-07-14 03:32:09.818048'),
	(9, 'auth', '0004_alter_user_username_opts', '2024-07-14 03:32:09.823092'),
	(10, 'auth', '0005_alter_user_last_login_null', '2024-07-14 03:32:09.846709'),
	(11, 'auth', '0006_require_contenttypes_0002', '2024-07-14 03:32:09.847709'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-14 03:32:09.852709'),
	(13, 'auth', '0008_alter_user_username_max_length', '2024-07-14 03:32:09.871718'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-14 03:32:09.890136'),
	(15, 'auth', '0010_alter_group_name_max_length', '2024-07-14 03:32:09.900135'),
	(16, 'auth', '0011_update_proxy_permissions', '2024-07-14 03:32:09.904587'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-14 03:32:09.924588'),
	(18, 'sessions', '0001_initial', '2024-07-14 03:32:09.936587');

-- Volcando estructura para tabla hangmanbd.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.django_session: ~4 rows (aproximadamente)
REPLACE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('e4nlhulcmqsp045spk5295bu17igipv7', 'eyJub21icmUiOiJqdWFuIiwibml2ZWwiOiJub3JtYWwiLCJwYWxhYnJhIjoiY2FtaXNhIiwiZXJyb3JlcyI6MH0:1sWqlR:jV2P5ATagyNj1jELRSp8cYccdkJuQxOEsojQR6UVWHg', '2024-08-08 05:11:41.947403'),
	('rl319vlbqar86d59tqdq3ljhjp0daa68', 'eyJub21icmUiOiJjYW1pbGEiLCJuaXZlbCI6ImZhY2lsIiwicGFsYWJyYSI6Imx1bmEiLCJlcnJvcmVzIjowfQ:1sZkv1:MZv7I7Y11nDmEtniDAboUydT0G9V7ARpW_CFqEmyEY0', '2024-08-16 05:33:35.245204'),
	('shncrulz6pkon42nr8f1ma7e2rpniznp', 'eyJub21icmUiOiJjYW1pbGEiLCJuaXZlbCI6ImZhY2lsIiwicGFsYWJyYSI6Im1lc2EiLCJlcnJvcmVzIjowfQ:1sceP6:vzjPQv2rJvyKeBDKWxkDrmMzpP2fTfK7NQmkX1VzPls', '2024-08-24 05:12:36.448442'),
	('timrlgnz71ybsllrub1xt4tb87o9rmj1', 'eyJub21icmUiOiJaT0UiLCJuaXZlbCI6ImZhY2lsIiwicGFsYWJyYSI6InJvY2EiLCJlcnJvcmVzIjowfQ:1sXYIo:6KsV-NrUUGGc_Sq01cW1Lxi6fPJ5t62uXw2zkQK9PB0', '2024-08-10 03:41:02.451548'),
	('tm01um1bphfwv7g7s8ig44z8mdlxvixl', 'eyJub21icmUiOiJrZXZpbiIsIm5pdmVsIjoiZGlmaWNpbCIsInBhbGFicmEiOiJkaWFtYW50ZSIsImVycm9yZXMiOjB9:1scnin:bUoAHVwDYWO9svboANqKXHevzcdIVpeaPuXALPsvPjs', '2024-08-24 15:09:33.705415');

-- Volcando estructura para tabla hangmanbd.estadistica
CREATE TABLE IF NOT EXISTS `estadistica` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `nivel` varchar(10) DEFAULT NULL,
  `veces_ganadas` int DEFAULT NULL,
  `veces_perdidas` int DEFAULT NULL,
  `cantidad_aciertos` int DEFAULT NULL,
  `cantidad_fallos` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.estadistica: ~15 rows (aproximadamente)
REPLACE INTO `estadistica` (`id`, `nombre`, `nivel`, `veces_ganadas`, `veces_perdidas`, `cantidad_aciertos`, `cantidad_fallos`) VALUES
	(9, 'camila', 'dificil', 2, 1, 20, 7),
	(29, 'Juan', 'normal', 1, 1, 7, 9),
	(30, 'camila', 'facil', 2, 18, 25, 92),
	(31, 'camila', 'normal', 3, 4, 21, 17),
	(32, 'Tachy', 'normal', 1, 4, 12, 14),
	(33, 'Juan', 'facil', 1, 2, 8, 9),
	(34, 'Pedro', 'normal', 0, 1, 0, 0),
	(35, 'Tachy', 'facil', 1, 0, 4, 2),
	(36, 'Tachy', 'dificil', 0, 3, 11, 12),
	(37, 'ZOE', 'normal', 2, 2, 15, 13),
	(38, 'ZOE', 'facil', 25, 2, 101, 34),
	(39, 'ZOE', 'dificil', 0, 1, 4, 5),
	(40, 'francisco', 'normal', 0, 1, 3, 2),
	(41, 'francisco', 'dificil', 0, 1, 2, 4),
	(42, 'francisco', 'facil', 0, 1, 0, 0),
	(43, 'kevin', 'facil', 0, 2, 4, 9),
	(44, 'facil', 'facil', 1, 0, 4, 0),
	(45, 'kevin', 'normal', 1, 0, 6, 3),
	(46, 'kevin', 'dificil', 0, 1, 8, 3);

-- Volcando estructura para tabla hangmanbd.palabras
CREATE TABLE IF NOT EXISTS `palabras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `palabra` varchar(10) NOT NULL DEFAULT '',
  `nivel` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla hangmanbd.palabras: ~13 rows (aproximadamente)
REPLACE INTO `palabras` (`id`, `palabra`, `nivel`) VALUES
	(1, 'casa', 'facil'),
	(2, 'cima', 'facil'),
	(3, 'mesa', 'facil'),
	(4, 'camisa', 'normal'),
	(5, 'alerta', 'normal'),
	(6, 'famosa', 'normal'),
	(7, 'figura', 'normal'),
	(8, 'historia', 'dificil'),
	(9, 'gobierno', 'dificil'),
	(10, 'etiqueta', 'dificil'),
	(11, 'luna', 'facil'),
	(12, 'roca', 'facil'),
	(13, 'cobrar', 'normal'),
	(14, 'mariposa', 'dificil'),
	(15, 'diamante', 'dificil');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
