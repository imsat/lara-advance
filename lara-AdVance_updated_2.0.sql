-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table lara_advance.adjustments
DROP TABLE IF EXISTS `adjustments`;
CREATE TABLE IF NOT EXISTS `adjustments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `document_id` int(10) unsigned NOT NULL,
  `before` longtext COLLATE utf8_unicode_ci NOT NULL,
  `after` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.adjustments: ~0 rows (approximately)
DELETE FROM `adjustments`;
/*!40000 ALTER TABLE `adjustments` DISABLE KEYS */;
/*!40000 ALTER TABLE `adjustments` ENABLE KEYS */;

-- Dumping structure for table lara_advance.attendances
DROP TABLE IF EXISTS `attendances`;
CREATE TABLE IF NOT EXISTS `attendances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `punch_in` timestamp NOT NULL,
  `punch_in_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_note` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `punch_out` timestamp NULL DEFAULT NULL,
  `punch_out_ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `out_note` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_time` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.attendances: ~0 rows (approximately)
DELETE FROM `attendances`;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;

-- Dumping structure for table lara_advance.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.categories: ~10 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'aperiam', 'aperiam', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(2, 'rerum', 'rerum', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(3, 'modi', 'modi', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(4, 'ducimus', 'ducimus', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(5, 'dolore', 'dolore', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(6, 'provident', 'provident', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(7, 'possimus', 'possimus', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(8, 'dolor', 'dolor', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(9, 'magnam', 'magnam', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(10, 'ratione', 'ratione', '2019-07-29 18:54:51', '2019-07-29 18:54:51');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table lara_advance.documents
DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.documents: ~0 rows (approximately)
DELETE FROM `documents`;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;

-- Dumping structure for table lara_advance.files
DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.files: ~0 rows (approximately)
DELETE FROM `files`;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;

-- Dumping structure for table lara_advance.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table lara_advance.lessons
DROP TABLE IF EXISTS `lessons`;
CREATE TABLE IF NOT EXISTS `lessons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `views` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `difficulty` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Beginner',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.lessons: ~0 rows (approximately)
DELETE FROM `lessons`;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;

-- Dumping structure for table lara_advance.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.migrations: ~18 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(41, '2014_10_12_000000_create_users_table', 1),
	(42, '2014_10_12_100000_create_password_resets_table', 1),
	(43, '2019_07_22_105801_create_categories_table', 1),
	(44, '2019_07_22_110113_create_posts_table', 1),
	(45, '2019_07_22_110826_create_roles_table', 1),
	(46, '2019_07_22_124849_create_role_user_table', 1),
	(47, '2019_07_26_193555_create_permissions_table', 1),
	(48, '2019_07_26_194059_create_permission_role_table', 1),
	(49, '2019_07_30_144649_create_jobs_table', 2),
	(50, '2019_07_30_162708_create_tasks_table', 2),
	(51, '2019_07_30_175104_create_task_user_table', 2),
	(52, '2019_07_30_204806_create_notifications_table', 2),
	(53, '2019_08_03_194818_create_files_table', 2),
	(54, '2019_08_04_183111_create_attendances_table', 2),
	(55, '2019_08_11_154223_create_documents_table', 2),
	(56, '2019_08_21_182946_create_adjustments_table', 2),
	(57, '2019_08_24_073725_create_lessons_table', 2),
	(58, '2019_08_27_194151_create_settings_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table lara_advance.notifications
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.notifications: ~0 rows (approximately)
DELETE FROM `notifications`;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;

-- Dumping structure for table lara_advance.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table lara_advance.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `for` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.permissions: ~18 rows (approximately)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `slug`, `for`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'user-access', 'user-access', 'user', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(2, 'user-create', 'user-create', 'user', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(3, 'user-update', 'user-update', 'user', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(4, 'user-show', 'user-show', 'user', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(5, 'user-delete', 'user-delete', 'user', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(6, 'role-access', 'role-access', 'role', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(7, 'role-create', 'role-create', 'role', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(8, 'role-update', 'role-update', 'role', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(9, 'role-show', 'role-show', 'role', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(10, 'role-delete', 'role-delete', 'role', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(11, 'post-access', 'post-access', 'post', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(12, 'post-create', 'post-create', 'post', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(13, 'post-update', 'post-update', 'post', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(14, 'post-show', 'post-show', 'post', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(15, 'post-delete', 'post-delete', 'post', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(16, 'post-publish', 'post-publish', 'post', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(17, 'category-crud', 'category-crud', 'other', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(18, 'tag-crud', 'tag-crud', 'other', NULL, '2019-07-29 18:54:51', '2019-07-29 18:54:51');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table lara_advance.permission_role
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.permission_role: ~36 rows (approximately)
DELETE FROM `permission_role`;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(11, 2),
	(13, 2),
	(14, 2),
	(15, 2),
	(16, 2),
	(12, 3),
	(14, 3),
	(15, 3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table lara_advance.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.posts: ~120 rows (approximately)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `body`, `status`, `user_id`, `created_at`, `updated_at`, `published_at`) VALUES
	(1, 'Accusamus qui modi incidunt occaecati exercitationem.', 'accusamus-qui-modi-incidunt-occaecati-exercitationem', 3, 'Suscipit dolores rerum.', 0, 4, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-01-03 10:41:30'),
	(2, 'Adipisci qui eum distinctio harum eum.', 'adipisci-qui-eum-distinctio-harum-eum', 4, 'Odit odit.', 0, 4, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-01-10 14:52:12'),
	(3, 'Mollitia modi qui aspernatur.', 'mollitia-modi-qui-aspernatur', 8, 'Eos dicta architecto.', 0, 5, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-07-25 06:39:05'),
	(4, 'Adipisci in et nam omnis recusandae id.', 'adipisci-in-et-nam-omnis-recusandae-id', 5, 'Sunt est numquam.', 1, 5, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-02-05 04:53:02'),
	(5, 'Velit praesentium rerum saepe.', 'velit-praesentium-rerum-saepe', 6, 'Ea consequatur sapiente.', 0, 6, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-05-06 06:33:26'),
	(6, 'Quis sunt recusandae nostrum sint repellat.', 'quis-sunt-recusandae-nostrum-sint-repellat', 9, 'Minus molestiae.', 0, 6, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-06-03 00:58:48'),
	(7, 'Aperiam nemo sed perspiciatis.', 'aperiam-nemo-sed-perspiciatis', 2, 'Voluptatem omnis.', 0, 7, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-08-12 07:24:15'),
	(8, 'Magnam sit rerum laborum sequi quam repellendus.', 'magnam-sit-rerum-laborum-sequi-quam-repellendus', 7, 'Adipisci est.', 1, 7, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-03-23 16:40:26'),
	(9, 'Consequatur sed accusamus in.', 'consequatur-sed-accusamus-in', 2, 'Sint omnis.', 1, 8, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-12-14 12:09:13'),
	(10, 'Officia est natus qui accusantium qui exercitationem.', 'officia-est-natus-qui-accusantium-qui-exercitationem', 4, 'Enim maiores qui.', 0, 8, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-03-13 11:35:32'),
	(11, 'Ullam recusandae sit tempora consectetur deserunt voluptate.', 'ullam-recusandae-sit-tempora-consectetur-deserunt-voluptate', 8, 'Pariatur ut.', 1, 9, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-06-01 17:52:12'),
	(12, 'Hic neque quos corrupti consequatur aut.', 'hic-neque-quos-corrupti-consequatur-aut', 4, 'Ut voluptatem omnis.', 0, 9, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-05-01 23:12:35'),
	(13, 'Aut ratione voluptatem expedita iure incidunt voluptas.', 'aut-ratione-voluptatem-expedita-iure-incidunt-voluptas', 7, 'Debitis quia.', 1, 10, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-05-27 19:22:14'),
	(14, 'Provident et adipisci a soluta ducimus nobis beatae.', 'provident-et-adipisci-a-soluta-ducimus-nobis-beatae', 6, 'Ipsum non eos.', 1, 10, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-04-22 00:01:08'),
	(15, 'Odio ipsum accusamus id.', 'odio-ipsum-accusamus-id', 3, 'Repudiandae eaque.', 0, 11, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-06-19 11:36:49'),
	(16, 'Sit recusandae alias corporis sequi expedita illum.', 'sit-recusandae-alias-corporis-sequi-expedita-illum', 4, 'Eos alias fugiat.', 0, 11, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-09-15 12:34:46'),
	(17, 'Voluptatum perferendis error at soluta et a.', 'voluptatum-perferendis-error-at-soluta-et-a', 9, 'Quia voluptatum qui.', 0, 12, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-07-11 07:30:21'),
	(18, 'Ut aperiam iure ut sed et.', 'ut-aperiam-iure-ut-sed-et', 1, 'Dolorem blanditiis at.', 1, 12, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-10-18 11:49:21'),
	(19, 'Aspernatur quis quibusdam id.', 'aspernatur-quis-quibusdam-id', 5, 'Placeat ab et.', 1, 13, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-05-21 18:23:49'),
	(20, 'Quisquam autem beatae nisi.', 'quisquam-autem-beatae-nisi', 10, 'Ipsum voluptatibus.', 0, 13, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-02-21 20:30:02'),
	(21, 'Magni impedit odit sapiente autem minima magni.', 'magni-impedit-odit-sapiente-autem-minima-magni', 2, 'Ipsa et.', 0, 14, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-10-31 23:17:28'),
	(22, 'Laudantium ipsam doloribus impedit saepe.', 'laudantium-ipsam-doloribus-impedit-saepe', 9, 'Veritatis dicta.', 1, 14, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-11-24 13:43:38'),
	(23, 'Nam nobis voluptate molestiae molestiae cumque.', 'nam-nobis-voluptate-molestiae-molestiae-cumque', 10, 'Expedita velit esse.', 0, 15, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-06-27 22:14:52'),
	(24, 'Necessitatibus perferendis ut ea accusantium odio ut.', 'necessitatibus-perferendis-ut-ea-accusantium-odio-ut', 5, 'Perspiciatis vel officia.', 0, 15, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-03-13 06:54:19'),
	(25, 'Blanditiis vero ut eum qui praesentium unde.', 'blanditiis-vero-ut-eum-qui-praesentium-unde', 6, 'Iste eius.', 1, 16, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-04-14 05:54:42'),
	(26, 'Quia dignissimos dolores aspernatur ab soluta laborum.', 'quia-dignissimos-dolores-aspernatur-ab-soluta-laborum', 4, 'Aut aut.', 0, 16, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-09-27 21:11:24'),
	(27, 'Minima esse qui sit aut.', 'minima-esse-qui-sit-aut', 8, 'Modi quis enim.', 1, 17, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-09-26 21:55:38'),
	(28, 'Deleniti labore quae delectus voluptatem fugiat molestiae.', 'deleniti-labore-quae-delectus-voluptatem-fugiat-molestiae', 8, 'Possimus vitae saepe.', 0, 17, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2014-08-27 13:53:58'),
	(29, 'Ipsum unde dolor totam.', 'ipsum-unde-dolor-totam', 5, 'Sit sunt.', 0, 18, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2014-08-04 13:51:02'),
	(30, 'Quae modi velit itaque quis dignissimos corrupti.', 'quae-modi-velit-itaque-quis-dignissimos-corrupti', 8, 'Corrupti dolor possimus.', 0, 18, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-06-29 08:27:35'),
	(31, 'Quisquam non ut cupiditate molestiae accusantium non.', 'quisquam-non-ut-cupiditate-molestiae-accusantium-non', 8, 'Placeat unde porro.', 1, 19, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-12-29 01:48:58'),
	(32, 'Numquam in autem veritatis deleniti sed ut iste.', 'numquam-in-autem-veritatis-deleniti-sed-ut-iste', 3, 'Est quaerat voluptatibus.', 0, 19, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-12-11 19:16:09'),
	(33, 'Eligendi quo mollitia temporibus hic eum dolores.', 'eligendi-quo-mollitia-temporibus-hic-eum-dolores', 7, 'Nisi ea ipsa.', 1, 20, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-12-15 16:08:31'),
	(34, 'Voluptas minus et error.', 'voluptas-minus-et-error', 1, 'Non perspiciatis.', 1, 20, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-02-29 15:53:43'),
	(35, 'Blanditiis error dolorem ratione delectus at quia.', 'blanditiis-error-dolorem-ratione-delectus-at-quia', 3, 'Assumenda fugiat.', 1, 21, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-11-24 15:33:23'),
	(36, 'Ea occaecati porro nobis consequatur voluptatem error.', 'ea-occaecati-porro-nobis-consequatur-voluptatem-error', 8, 'Sed assumenda expedita.', 1, 21, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-10-25 17:29:50'),
	(37, 'Nulla voluptatem earum ratione nostrum error consequatur.', 'nulla-voluptatem-earum-ratione-nostrum-error-consequatur', 2, 'Voluptas incidunt rerum.', 0, 22, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-11-28 05:13:05'),
	(38, 'Molestiae vel nesciunt aut earum.', 'molestiae-vel-nesciunt-aut-earum', 5, 'Et maxime praesentium.', 1, 22, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-04-06 16:54:40'),
	(39, 'Ipsam maxime doloribus sed.', 'ipsam-maxime-doloribus-sed', 2, 'Qui qui.', 1, 23, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-10-04 22:26:04'),
	(40, 'Corporis qui impedit repellat nulla omnis omnis.', 'corporis-qui-impedit-repellat-nulla-omnis-omnis', 1, 'Non architecto cum.', 1, 23, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-01-16 07:39:10'),
	(41, 'Quam voluptatem et voluptas.', 'quam-voluptatem-et-voluptas', 1, 'Debitis dolor.', 1, 24, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-08-14 03:08:09'),
	(42, 'Temporibus repellat autem porro et aliquid repellendus.', 'temporibus-repellat-autem-porro-et-aliquid-repellendus', 6, 'Temporibus aut.', 0, 24, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-12-17 07:20:02'),
	(43, 'Ut sit repellat optio voluptate et.', 'ut-sit-repellat-optio-voluptate-et', 2, 'Accusamus necessitatibus.', 0, 25, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-07-31 21:52:07'),
	(44, 'Fugiat quis praesentium a non.', 'fugiat-quis-praesentium-a-non', 10, 'Sed expedita.', 1, 25, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-11-20 06:00:55'),
	(45, 'Perferendis fugiat quaerat quibusdam quam ex soluta.', 'perferendis-fugiat-quaerat-quibusdam-quam-ex-soluta', 2, 'Enim quae praesentium.', 1, 26, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-06-08 06:19:25'),
	(46, 'Eius enim voluptatem officiis.', 'eius-enim-voluptatem-officiis', 9, 'Quos quo harum.', 0, 26, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-11-22 17:46:41'),
	(47, 'Accusantium qui dicta sit enim.', 'accusantium-qui-dicta-sit-enim', 3, 'Repudiandae consectetur.', 0, 27, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-04-08 09:17:27'),
	(48, 'Dolores est ut nam aliquam non ipsa.', 'dolores-est-ut-nam-aliquam-non-ipsa', 4, 'Maiores molestiae minus.', 1, 27, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-06-25 05:31:27'),
	(49, 'Eveniet fugit molestias et.', 'eveniet-fugit-molestias-et', 2, 'Repellat nisi atque.', 1, 28, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-06-29 00:52:04'),
	(50, 'Rerum quia itaque omnis.', 'rerum-quia-itaque-omnis', 1, 'Molestiae ea.', 1, 28, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-01-09 21:10:26'),
	(51, 'Enim nam doloribus sit illum aliquid ut.', 'enim-nam-doloribus-sit-illum-aliquid-ut', 3, 'Voluptatibus commodi.', 0, 29, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2014-08-10 12:25:08'),
	(52, 'Autem cumque qui necessitatibus.', 'autem-cumque-qui-necessitatibus', 6, 'Accusantium iste.', 1, 29, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-02-26 12:43:04'),
	(53, 'Quos voluptas quis enim dignissimos.', 'quos-voluptas-quis-enim-dignissimos', 7, 'Velit illo aut.', 1, 30, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-05-28 12:53:37'),
	(54, 'Et incidunt delectus quis cumque officia rerum.', 'et-incidunt-delectus-quis-cumque-officia-rerum', 8, 'Atque assumenda.', 1, 30, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-09-29 21:35:31'),
	(55, 'Cumque ad debitis ut.', 'cumque-ad-debitis-ut', 4, 'Asperiores eum nam.', 1, 31, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-08-10 03:02:36'),
	(56, 'Doloribus placeat molestiae nihil.', 'doloribus-placeat-molestiae-nihil', 1, 'Deleniti facilis sunt.', 1, 31, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-05-17 20:09:34'),
	(57, 'Eveniet mollitia et aut qui soluta aut.', 'eveniet-mollitia-et-aut-qui-soluta-aut', 9, 'Et id recusandae.', 1, 32, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-05-26 13:48:33'),
	(58, 'Non asperiores commodi sint provident officia ipsa.', 'non-asperiores-commodi-sint-provident-officia-ipsa', 2, 'Nesciunt assumenda.', 0, 32, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-03-23 03:30:46'),
	(59, 'Laudantium dolores illum sequi qui itaque voluptatum.', 'laudantium-dolores-illum-sequi-qui-itaque-voluptatum', 4, 'Odio voluptatem.', 0, 33, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-04-03 06:04:24'),
	(60, 'Libero ad numquam perspiciatis.', 'libero-ad-numquam-perspiciatis', 7, 'Cumque tempora et.', 0, 33, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-10-07 14:52:52'),
	(61, 'Quae modi in molestiae aliquam quisquam qui.', 'quae-modi-in-molestiae-aliquam-quisquam-qui', 1, 'Minima quaerat pariatur.', 1, 34, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-07-04 10:09:41'),
	(62, 'Non molestiae nihil maiores.', 'non-molestiae-nihil-maiores', 1, 'Impedit esse id.', 1, 34, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-05-27 09:55:42'),
	(63, 'Eaque rerum magni sit eligendi amet.', 'eaque-rerum-magni-sit-eligendi-amet', 4, 'Sunt dolor.', 1, 35, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-02-02 05:58:36'),
	(64, 'Numquam nostrum eligendi nostrum.', 'numquam-nostrum-eligendi-nostrum', 3, 'Autem et libero.', 1, 35, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-02-18 15:01:47'),
	(65, 'Autem quisquam officia itaque itaque expedita.', 'autem-quisquam-officia-itaque-itaque-expedita', 4, 'In laboriosam sunt.', 1, 36, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-04-04 23:10:54'),
	(66, 'Aut sint minima est delectus deserunt nisi.', 'aut-sint-minima-est-delectus-deserunt-nisi', 6, 'Eum ea vero.', 0, 36, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-04-27 07:27:32'),
	(67, 'Nulla tempora voluptatem aliquam enim omnis quod.', 'nulla-tempora-voluptatem-aliquam-enim-omnis-quod', 6, 'Consequuntur exercitationem.', 0, 37, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-02-28 01:59:19'),
	(68, 'Quia id sunt iure.', 'quia-id-sunt-iure', 3, 'Voluptates nihil.', 0, 37, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-09-11 18:38:57'),
	(69, 'Esse eligendi et harum.', 'esse-eligendi-et-harum', 8, 'Eius ea.', 0, 38, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-07-30 21:21:04'),
	(70, 'Dolore et aperiam natus incidunt neque aperiam.', 'dolore-et-aperiam-natus-incidunt-neque-aperiam', 4, 'Recusandae iste.', 0, 38, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-11-24 03:44:28'),
	(71, 'Explicabo culpa qui fugit consequuntur consequatur voluptate.', 'explicabo-culpa-qui-fugit-consequuntur-consequatur-voluptate', 8, 'Minus quaerat molestiae.', 1, 39, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-04-08 18:47:37'),
	(72, 'Doloremque maiores pariatur id et rem.', 'doloremque-maiores-pariatur-id-et-rem', 6, 'Ratione necessitatibus et.', 0, 39, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2014-08-01 03:50:10'),
	(73, 'Libero possimus earum architecto.', 'libero-possimus-earum-architecto', 6, 'Consequatur sit.', 0, 40, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-01-21 09:48:37'),
	(74, 'Dolores veritatis voluptatem qui vitae.', 'dolores-veritatis-voluptatem-qui-vitae', 5, 'Repellendus cum.', 0, 40, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-05-08 22:28:08'),
	(75, 'Aut accusamus repudiandae cupiditate ut enim ipsa.', 'aut-accusamus-repudiandae-cupiditate-ut-enim-ipsa', 3, 'Harum ea.', 0, 41, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-01-16 16:26:59'),
	(76, 'Eum laboriosam quia cumque laborum distinctio.', 'eum-laboriosam-quia-cumque-laborum-distinctio', 9, 'Nulla eligendi.', 1, 41, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-03-25 06:14:35'),
	(77, 'Ullam vel eaque fugit non assumenda.', 'ullam-vel-eaque-fugit-non-assumenda', 5, 'Delectus veniam.', 1, 42, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-08-24 21:07:35'),
	(78, 'Aut pariatur porro saepe nam fuga quod.', 'aut-pariatur-porro-saepe-nam-fuga-quod', 10, 'Quaerat vel temporibus.', 0, 42, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-10-25 06:13:28'),
	(79, 'Voluptatem amet voluptate praesentium illo neque vel.', 'voluptatem-amet-voluptate-praesentium-illo-neque-vel', 6, 'Totam pariatur.', 1, 43, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-01-28 22:05:59'),
	(80, 'Quisquam cupiditate nihil mollitia.', 'quisquam-cupiditate-nihil-mollitia', 4, 'Aliquid et qui.', 1, 43, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-04-25 00:26:19'),
	(81, 'Qui et consectetur sint.', 'qui-et-consectetur-sint', 10, 'Officia totam aut.', 0, 44, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-12-10 09:38:10'),
	(82, 'Voluptatem ratione ut commodi nulla.', 'voluptatem-ratione-ut-commodi-nulla', 10, 'Animi dolores velit.', 0, 44, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2018-01-13 13:20:06'),
	(83, 'Quo ut quibusdam qui sit incidunt.', 'quo-ut-quibusdam-qui-sit-incidunt', 3, 'Vitae eos.', 1, 45, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2014-11-24 22:26:12'),
	(84, 'Quia qui veniam nemo vitae hic.', 'quia-qui-veniam-nemo-vitae-hic', 2, 'At repudiandae.', 1, 45, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-05-12 02:24:12'),
	(85, 'Odit rem voluptatem iure.', 'odit-rem-voluptatem-iure', 6, 'Labore doloribus autem.', 0, 46, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-08-31 04:06:00'),
	(86, 'Perspiciatis tempore tenetur distinctio tempora.', 'perspiciatis-tempore-tenetur-distinctio-tempora', 6, 'Voluptate quam.', 1, 46, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-05-26 17:40:42'),
	(87, 'Quidem natus voluptatem asperiores fugit in sunt.', 'quidem-natus-voluptatem-asperiores-fugit-in-sunt', 7, 'Aspernatur qui.', 0, 47, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2014-11-05 12:27:07'),
	(88, 'Soluta nesciunt eos harum architecto dolores est.', 'soluta-nesciunt-eos-harum-architecto-dolores-est', 10, 'Velit aspernatur.', 0, 47, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-01-27 15:10:34'),
	(89, 'Provident atque similique et incidunt exercitationem maiores.', 'provident-atque-similique-et-incidunt-exercitationem-maiores', 2, 'Non rerum.', 1, 48, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-06-12 06:44:53'),
	(90, 'Doloribus qui cumque sed molestiae nesciunt.', 'doloribus-qui-cumque-sed-molestiae-nesciunt', 7, 'Incidunt voluptatem magnam.', 0, 48, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-10-28 19:42:46'),
	(91, 'Libero sit porro placeat perferendis.', 'libero-sit-porro-placeat-perferendis', 2, 'Dolor quia.', 1, 49, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2014-10-24 22:58:59'),
	(92, 'Provident possimus debitis ut.', 'provident-possimus-debitis-ut', 2, 'Autem voluptate.', 1, 49, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-06-20 10:28:21'),
	(93, 'Doloribus ut vel et.', 'doloribus-ut-vel-et', 1, 'Numquam quia.', 1, 50, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2017-08-08 16:14:23'),
	(94, 'Quidem ea voluptas accusantium assumenda.', 'quidem-ea-voluptas-accusantium-assumenda', 10, 'Facilis rerum recusandae.', 0, 50, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2015-03-12 09:04:24'),
	(95, 'Est vel et facilis aut optio.', 'est-vel-et-facilis-aut-optio', 9, 'Voluptas enim illo.', 1, 51, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-07-04 08:39:13'),
	(96, 'Exercitationem laborum explicabo amet et qui iure.', 'exercitationem-laborum-explicabo-amet-et-qui-iure', 2, 'Ea ipsam.', 0, 51, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-05-23 23:37:00'),
	(97, 'Ex earum debitis veniam.', 'ex-earum-debitis-veniam', 1, 'Sit esse nobis.', 0, 52, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-06-21 14:24:57'),
	(98, 'Sint sit et ut nam temporibus suscipit.', 'sint-sit-et-ut-nam-temporibus-suscipit', 1, 'Cum placeat.', 1, 52, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-03-04 21:43:02'),
	(99, 'Non et dolorum veritatis itaque eum.', 'non-et-dolorum-veritatis-itaque-eum', 9, 'Voluptatem labore.', 1, 53, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2019-05-27 23:16:59'),
	(100, 'Laborum quisquam assumenda exercitationem temporibus nostrum dolor.', 'laborum-quisquam-assumenda-exercitationem-temporibus-nostrum-dolor', 1, 'Omnis maxime.', 0, 53, '2019-07-29 18:54:57', '2019-07-29 18:54:57', '2016-07-24 08:19:04'),
	(101, 'Saepe voluptas quis harum itaque ex.', 'saepe-voluptas-quis-harum-itaque-ex', 9, 'Accusantium assumenda.', 1, 39, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-10-27 20:24:48'),
	(102, 'Sit labore minima enim perferendis ut possimus.', 'sit-labore-minima-enim-perferendis-ut-possimus', 6, 'Qui repellat expedita.', 0, 16, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-10-08 08:15:40'),
	(103, 'In rerum numquam minus architecto aut quia.', 'in-rerum-numquam-minus-architecto-aut-quia', 6, 'Fugiat sint.', 1, 9, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-01-26 10:51:48'),
	(104, 'Commodi sunt nobis aut.', 'commodi-sunt-nobis-aut', 7, 'Repellat optio.', 0, 48, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-05-05 20:16:49'),
	(105, 'Saepe officia porro reprehenderit numquam.', 'saepe-officia-porro-reprehenderit-numquam', 9, 'Sint dolor pariatur.', 0, 36, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2021-06-08 20:36:31'),
	(106, 'Et aut est exercitationem.', 'et-aut-est-exercitationem', 9, 'Voluptas vero.', 1, 3, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-07-22 13:11:23'),
	(107, 'Sint qui minus adipisci et fugiat natus.', 'sint-qui-minus-adipisci-et-fugiat-natus', 9, 'Molestias eos quis.', 0, 48, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-10-26 07:05:11'),
	(108, 'Earum delectus cum qui eum.', 'earum-delectus-cum-qui-eum', 10, 'Voluptate deleniti.', 0, 22, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-11-14 21:49:33'),
	(109, 'Libero quibusdam facilis doloribus.', 'libero-quibusdam-facilis-doloribus', 3, 'Minus molestiae et.', 0, 9, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-05-29 20:16:41'),
	(110, 'Voluptates ducimus eligendi magnam rerum.', 'voluptates-ducimus-eligendi-magnam-rerum', 2, 'Eaque iste modi.', 0, 26, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-12-09 05:22:32'),
	(111, 'Asperiores et rerum aut suscipit temporibus.', 'asperiores-et-rerum-aut-suscipit-temporibus', 3, 'Quam tempore totam.', 0, 10, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2021-04-05 15:33:57'),
	(112, 'Est est quia vel assumenda.', 'est-est-quia-vel-assumenda', 7, 'Nobis sed quidem.', 0, 33, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-06-23 02:16:50'),
	(113, 'Deleniti cumque et consequatur unde consequatur.', 'deleniti-cumque-et-consequatur-unde-consequatur', 10, 'Numquam consequatur.', 0, 40, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2020-01-31 04:11:34'),
	(114, 'Maiores ratione animi adipisci voluptatem dicta.', 'maiores-ratione-animi-adipisci-voluptatem-dicta', 3, 'Ab neque.', 0, 15, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2021-02-06 18:50:01'),
	(115, 'Dolores eius in ut dolor non.', 'dolores-eius-in-ut-dolor-non', 8, 'Error commodi.', 0, 14, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2019-11-06 00:12:55'),
	(116, 'Et non est molestiae totam.', 'et-non-est-molestiae-totam', 3, 'Sunt recusandae sequi.', 0, 13, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2021-05-26 12:16:04'),
	(117, 'Iusto aspernatur optio consequatur doloribus rerum.', 'iusto-aspernatur-optio-consequatur-doloribus-rerum', 2, 'Saepe numquam.', 1, 32, '2019-07-29 18:56:00', '2019-07-29 18:56:00', '2021-05-06 16:51:20'),
	(118, 'Non sequi tempore at.', 'non-sequi-tempore-at', 2, 'Et officiis.', 1, 13, '2019-07-29 18:56:01', '2019-07-29 18:56:01', '2020-12-07 07:00:18'),
	(119, 'Soluta accusantium non ratione aut dolor nam.', 'soluta-accusantium-non-ratione-aut-dolor-nam', 4, 'Iure consequatur voluptas.', 1, 38, '2019-07-29 18:56:01', '2019-07-29 18:56:01', '2019-10-16 14:54:56'),
	(120, 'Deleniti error distinctio vitae.', 'deleniti-error-distinctio-vitae', 9, 'Velit illo.', 1, 53, '2019-07-29 18:56:01', '2019-07-29 18:56:01', '2021-04-16 07:51:32');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table lara_advance.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.roles: ~3 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', 'Admin Description', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(2, 'editor', 'editor', 'Editor Description', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(3, 'author', 'author', 'Author Description', '2019-07-29 18:54:51', '2019-07-29 18:54:51');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table lara_advance.role_user
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.role_user: ~86 rows (approximately)
DELETE FROM `role_user`;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(2, 2),
	(3, 3),
	(3, 4),
	(2, 5),
	(3, 5),
	(2, 6),
	(3, 6),
	(2, 7),
	(3, 7),
	(2, 8),
	(3, 8),
	(2, 9),
	(3, 9),
	(3, 10),
	(2, 11),
	(3, 11),
	(2, 12),
	(3, 12),
	(2, 13),
	(2, 14),
	(3, 14),
	(2, 15),
	(3, 15),
	(3, 16),
	(2, 17),
	(3, 17),
	(2, 18),
	(3, 18),
	(3, 19),
	(3, 20),
	(2, 21),
	(3, 21),
	(3, 22),
	(3, 23),
	(2, 24),
	(3, 24),
	(2, 25),
	(2, 26),
	(3, 26),
	(2, 27),
	(3, 27),
	(2, 28),
	(3, 28),
	(2, 29),
	(2, 30),
	(3, 30),
	(2, 31),
	(3, 31),
	(2, 32),
	(3, 32),
	(2, 33),
	(3, 34),
	(2, 35),
	(3, 35),
	(2, 36),
	(3, 36),
	(2, 37),
	(3, 37),
	(3, 38),
	(2, 39),
	(3, 39),
	(2, 40),
	(2, 41),
	(3, 41),
	(3, 42),
	(2, 43),
	(3, 43),
	(2, 44),
	(3, 44),
	(2, 45),
	(3, 45),
	(2, 46),
	(3, 46),
	(2, 47),
	(3, 48),
	(2, 49),
	(3, 49),
	(2, 50),
	(3, 50),
	(3, 51),
	(2, 52),
	(2, 53),
	(3, 53);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table lara_advance.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.settings: ~3 rows (approximately)
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'app_name', 'Advance Laravel', '2020-04-04 16:21:28', '2020-04-04 16:21:28'),
	(2, 'date_format', 'd/m/Y', '2020-04-04 16:21:28', '2020-04-04 16:21:28'),
	(3, 'time_format', 'g:i A', '2020-04-04 16:21:28', '2020-04-04 16:21:28');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table lara_advance.tasks
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `deadline_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.tasks: ~0 rows (approximately)
DELETE FROM `tasks`;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;

-- Dumping structure for table lara_advance.task_user
DROP TABLE IF EXISTS `task_user`;
CREATE TABLE IF NOT EXISTS `task_user` (
  `task_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`task_id`,`user_id`),
  KEY `task_user_user_id_foreign` (`user_id`),
  CONSTRAINT `task_user_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `task_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.task_user: ~0 rows (approximately)
DELETE FROM `task_user`;
/*!40000 ALTER TABLE `task_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_user` ENABLE KEYS */;

-- Dumping structure for table lara_advance.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.users: ~53 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'Admin', 'admin@example.com', '2019-07-29 18:54:51', '$2y$10$0NNLU8MZ57sFWMBdJhhfre.1rya3y7qLUnQzruF71a/B5XUWiCKBe', 'dAsbVvNADn', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(2, 'Editor', 'Editor', 'editor@example.com', '2019-07-29 18:54:51', '$2y$10$nT1G6iu85uH46SDRVNPUr.PnzmnKOMgdanmWTRVYgkG14dEy6ErhG', '7YtINaeqaI', '2019-07-29 18:54:51', '2019-07-29 18:54:51'),
	(3, 'Editor', 'Editor', 'author@example.com', '2019-07-29 18:54:52', '$2y$10$TIeijS6rozHzVrWGu3SUP.QsIg06azAKIgsgJCl0xlOuKR6Cqpaqa', 'BkZp1mKDvQ', '2019-07-29 18:54:52', '2019-07-29 18:54:52'),
	(4, 'Nettie', 'Quigley', 'sydnee.streich@example.org', '2019-07-29 18:54:52', '$2y$10$m1BWUsOzp7OI.4wrBrl3QOvQtlsORqrMlQeKmF9WiBeBklQTsDxxm', 'kZVq7KBRqD', '2019-07-29 18:54:56', '2019-07-29 18:54:56'),
	(5, 'Jacky', 'Swaniawski', 'jacobi.janis@example.net', '2019-07-29 18:54:52', '$2y$10$hZ6i3ivm01bPvfQd92/esOcMb9AI26aaEuO6/6lf8nmjIBA0NCS3O', 'zxkoeH08oB', '2019-07-29 18:54:56', '2019-07-29 18:54:56'),
	(6, 'Mario', 'Fritsch', 'charley.yost@example.com', '2019-07-29 18:54:52', '$2y$10$GjSXJp3uBnZepoXbjxkxxuzRl7xNoljMJQaXTLivLHC8NkMVhsbxO', 'jtWXJTc509', '2019-07-29 18:54:56', '2019-07-29 18:54:56'),
	(7, 'Elinor', 'Dietrich', 'dshanahan@example.org', '2019-07-29 18:54:52', '$2y$10$hb1cNnmuQl4i7mDqcLIWceJ5zxq.U/lJ8HIH9JAiQiuFo2y8H3X3.', 'YWKNe5dWbX', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(8, 'Reed', 'O\'Keefe', 'jones.jillian@example.com', '2019-07-29 18:54:52', '$2y$10$ebIUfY/0lmjlHu8/ud10Qu68wVzUhGYeLZaXIPdIWSEz7Uxs2yzJq', '9weBc4nddw', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(9, 'Camren', 'Hahn', 'lockman.devan@example.net', '2019-07-29 18:54:52', '$2y$10$8oDeZN25PIEWyb.o.v8UfeoSE9GEXP7XaLiELUS45thQ73PfAOgXG', 'N70o6eZyBs', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(10, 'Lora', 'Turner', 'msipes@example.org', '2019-07-29 18:54:52', '$2y$10$/A62f8eJZ6aazKPMlJEQ1ulcpKVPumerqq2Va.kv.bJTcrdHDxG.a', 'psv7b0aUcL', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(11, 'Shanel', 'Runolfsdottir', 'lockman.elsa@example.net', '2019-07-29 18:54:52', '$2y$10$jnCVj.Mh/iMiOTbQJvglGu5XGFCbAMI45JECD.Rk6PbZpvxCEB7Se', 'uAcxk0zvi2', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(12, 'Antonio', 'Ritchie', 'lucinda.olson@example.net', '2019-07-29 18:54:53', '$2y$10$2L3PBKjGQLnp3pV5WwHcLu65MLCrs57FLDMywRQqhWMeTD5tmtye.', 'PhBcunQtnp', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(13, 'Shanelle', 'Zulauf', 'maximus.mayer@example.net', '2019-07-29 18:54:53', '$2y$10$N3ZoFMxt73PiyVrb1IjgxOK.WHafgEDUAH5gOVCEH6DmS7cG.DnC6', 'cBtxPHwFd9', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(14, 'Willy', 'Schaden', 'reggie.donnelly@example.org', '2019-07-29 18:54:53', '$2y$10$PPqOFviWz5pbC6XTqK6a0eCAYhhTWc7WTtz6/OCGGoG5IQ3OizQ4i', 'gJTJ4bUeIV', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(15, 'Bette', 'Stanton', 'willms.selina@example.org', '2019-07-29 18:54:53', '$2y$10$v1nFBYzKqa3QEHKTxn67GO64fIFVufEGKUw0wqTP0UP9NAQAGXJLy', 'Cwv86ntjpJ', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(16, 'Ahmed', 'Sporer', 'eugenia.gutmann@example.net', '2019-07-29 18:54:53', '$2y$10$51NEfy2RzHUM8KidDTuhz.HgBTkMeMXui/u8gHixXlmGmFNUleUYG', 'BNz1b1mLGv', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(17, 'Demario', 'Wehner', 'tbruen@example.org', '2019-07-29 18:54:53', '$2y$10$9m8Sq.umk9aRVJp9TjC1v.iXU9brzK.ahai49D2MXJ/YXJRR.lbvy', 'PFUExxwYJW', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(18, 'Osborne', 'Gerlach', 'autumn99@example.org', '2019-07-29 18:54:53', '$2y$10$xj7Glg62Tt7KfNyxs/pdUO6GLnjwdwulBXZZgjNSv5SIF3zZorOXe', 'VEbCfLSge4', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(19, 'Tamia', 'Stanton', 'murphy.ebba@example.org', '2019-07-29 18:54:53', '$2y$10$XEYBrSqnqLwQH7b2MrbbD.Z85nnMuQyISol.yAHNzS6AoINajdAlC', 'MNgQkw8yYr', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(20, 'Francis', 'Steuber', 'ocie.romaguera@example.net', '2019-07-29 18:54:53', '$2y$10$xWGwr7eNVs7Yp5DHexnXwO7E4yNaewIUy.cu.nqYvpEzb5se9MAoy', 'RHNgs5voiQ', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(21, 'Reuben', 'Jakubowski', 'delpha99@example.com', '2019-07-29 18:54:53', '$2y$10$9DW7iWUff9/qEXZ3DFWPzuEX0BttnN7JSpIpabu0Sq2hxMXfo6M7S', '5JUTTEl32E', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(22, 'Orlando', 'Jenkins', 'yasmine57@example.org', '2019-07-29 18:54:53', '$2y$10$AvK86oB01e/MqnRGDwvsf.Y4vSTmO4/ipuXkBJEmq6jf5i0.M14LS', 'xYCfB5djy4', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(23, 'Jackeline', 'Wiza', 'koberbrunner@example.net', '2019-07-29 18:54:54', '$2y$10$2YnOVi3bMFrayYUtJw0wsOE8OuhPAPBfJG08bPiRBJ7nBzclFCmji', 'IkBfeVN4N8', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(24, 'Rhett', 'Gottlieb', 'hhowe@example.org', '2019-07-29 18:54:54', '$2y$10$EUmMM8btWwrJ1g8EBb/US.conE9wbY3S0MvVv0NhJjoqs9bYxWfFa', 'Y3saehl96j', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(25, 'Alicia', 'Kessler', 'plind@example.net', '2019-07-29 18:54:54', '$2y$10$/5hv8quHwzVfCKt8i8I6uecs4bEzjDA87xxxqRWhMuWv9vsDqUOhm', 'kYF0oMOJJy', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(26, 'Susanna', 'Becker', 'hziemann@example.com', '2019-07-29 18:54:54', '$2y$10$IFB98AJOkFU6CeJTEMyoTOdyj6wb9QdC2O9py9pTSoafPgOdsLUqa', '9wEnnGI94t', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(27, 'Madisyn', 'McLaughlin', 'rowan.kreiger@example.com', '2019-07-29 18:54:54', '$2y$10$QoNsB45WT0uhxC4jOmvhS.Hlq.13fqgYzalba7XH54WrFGdYpnOf.', 'kCXA1EFmgb', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(28, 'Kathlyn', 'Treutel', 'glynch@example.net', '2019-07-29 18:54:54', '$2y$10$BqxevjK4nKpe2H17cqiHOu9QQ2/aFxG1l.GsrmNDy/0z3q.mDDyfu', 'sUC4XXTqSq', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(29, 'Faustino', 'Wyman', 'ckerluke@example.com', '2019-07-29 18:54:54', '$2y$10$XXqnlPjr8aQHhjJvdEdm5.vRzGda7LrN93OSEr6mx.xXjJTKb7W3.', 'UkefIsjr2D', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(30, 'Isaac', 'Effertz', 'vdeckow@example.net', '2019-07-29 18:54:54', '$2y$10$WILQRIafhdIHPWlsgJJlre0UICaPahjtT/tK8DhlF3Q2xbL/CxIuy', '6UVYl7BSFc', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(31, 'Catharine', 'VonRueden', 'haley03@example.org', '2019-07-29 18:54:54', '$2y$10$BEC77Kxq/GXHtmIWgoV0wOPoBJvciGY5alG1upxsBpe6YhUgZHFxi', 'IgsV4Ro2wf', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(32, 'Brannon', 'Windler', 'sven.purdy@example.com', '2019-07-29 18:54:54', '$2y$10$6WKv0Eccl0mzlXQlqWVFf.NtHtryO2CnPYmjB0daq0UJ/dp27niSW', 'Df13kXrTp3', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(33, 'Curtis', 'Labadie', 'sjohnston@example.net', '2019-07-29 18:54:55', '$2y$10$eMi4LmEQQbtdrK.uyalDwOqc8r3Cmzp26NqonUBIoV8ReJq4grBYG', 'p4f05jcDS9', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(34, 'Meggie', 'Fay', 'stephen30@example.com', '2019-07-29 18:54:55', '$2y$10$ZhlJ7zsgS40hiEILAwmp3.p6.9vWhuBRJ/UOHKZlQiMZCYpGp4qWW', 'ckYgMqUt60', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(35, 'Dale', 'Parisian', 'allen05@example.com', '2019-07-29 18:54:55', '$2y$10$Iacqlgb3Tyn4rSrFBWxiqOcJ2bIW0BPEXLjncCNBsFxr9yR6OKR7W', 'BYDY3sz9cb', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(36, 'Raphael', 'Greenfelder', 'frussel@example.com', '2019-07-29 18:54:55', '$2y$10$iu55NrtUOmKpK3GYs1Cc.eeILTttWaaiIYOodJqrTDsiYxr1nHkJK', 'TixAxDpsC7', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(37, 'Joey', 'Cremin', 'schuster.camron@example.net', '2019-07-29 18:54:55', '$2y$10$EjvcZOtXpPdUZfZTBJuP3.Jz9BHJW9qobGzFMw6XA5DEzY2ipoKZS', 'GQlLioS4DP', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(38, 'May', 'Donnelly', 'xcremin@example.com', '2019-07-29 18:54:55', '$2y$10$YNAYSFoibLYKJrUJnTeFRePG5gsjcw2bpGh4RkKXFuSIDgjoLc2x.', '4lqqILRTe1', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(39, 'Ethelyn', 'Douglas', 'goyette.jerald@example.com', '2019-07-29 18:54:55', '$2y$10$QgzsQCMXilDxlb6X76jdYe7a..uqi48i6fyrYniPQfCpUFdzihM7O', 'YVivCxrdbe', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(40, 'Destiny', 'Kemmer', 'darion03@example.org', '2019-07-29 18:54:55', '$2y$10$ogNtijLweR7cwJOsM45.leErBUUJMJZBYS3CI7LDk/A70L7vcSefy', 'IuyF6bSjCZ', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(41, 'Roxane', 'Kertzmann', 'jocelyn.marks@example.com', '2019-07-29 18:54:55', '$2y$10$9rkd8AP0kAvFTsJLxLqCleUuzCdfETqwSAkIbxU8zKDyCDaSeeYd.', 'YrLyUprasv', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(42, 'Cletus', 'Haley', 'zhirthe@example.net', '2019-07-29 18:54:55', '$2y$10$BM2gizoknLJvY8AxGrruZesGnLmf32IWpo4cytpwshKLFG.LCgYOW', 'QXRtqHiOLb', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(43, 'Elena', 'Kovacek', 'roob.leopoldo@example.com', '2019-07-29 18:54:55', '$2y$10$p8tWTmQvp7i39vXDPq3qlOLr.Q8Lgr0xIPzBDCQPJfvmK2Obwzk86', 'Hf7xcIEhSD', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(44, 'Lavada', 'Davis', 'candido.stanton@example.com', '2019-07-29 18:54:56', '$2y$10$Cbgcg/kd5D1EL.s3sHxYDOKB7ZcoOCuEwkHTMcJJ6zpc6PhtTXdNS', 'pG1lcgB64Y', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(45, 'Ernestina', 'Gerhold', 'genevieve78@example.com', '2019-07-29 18:54:56', '$2y$10$pI.7DJzvfPLKqKq7VX9GNekDI/FuE1P5EgjNz7zbmiIAal9U9a.IO', 'YpAVhaKSfj', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(46, 'Pink', 'Schimmel', 'laurel75@example.org', '2019-07-29 18:54:56', '$2y$10$HnUT3RIWX5.IlUifOEdCLe2ojR83ynPJHnbhPt36yBn7UOIE3RxRG', 'ixUzh00byN', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(47, 'Jaylen', 'Larkin', 'bpurdy@example.org', '2019-07-29 18:54:56', '$2y$10$23G1vOJjY6M8mC2tAOGfUuBiNODaJVn2aY3WJA3K0eI3LssLHZKu.', 'CpeKqsbw8i', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(48, 'Mozell', 'Rath', 'alivia72@example.com', '2019-07-29 18:54:56', '$2y$10$JY9ojLcdV9k06oKlXIZenuNTf6F8OP7DDg8o0O2QIIzFmm3NQxDta', 'j5yXgp2dky', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(49, 'Mertie', 'Hammes', 'botsford.hal@example.org', '2019-07-29 18:54:56', '$2y$10$16xBmSgWOzRI1UXxhmAKpeADAWP3Kd8PRcO3xNo2OWKIclgsZWM1m', 'B4mnAg18nw', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(50, 'Karley', 'Bogan', 'mac.hartmann@example.org', '2019-07-29 18:54:56', '$2y$10$Sah6LYsolb/bj4z/5jxf1OZQgvNiPk/SZHeVqT3XjgfWsHWmiEnbi', 'KwP1QgZDxN', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(51, 'Marielle', 'Schimmel', 'senger.mitchel@example.net', '2019-07-29 18:54:56', '$2y$10$UAr3HhARMDb.8Yvs9nW45ePDoq1nOiLkT4eROBRmUuxZA0yqUg2uO', '5ppCGZl2yJ', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(52, 'Christian', 'Walsh', 'powlowski.allan@example.org', '2019-07-29 18:54:56', '$2y$10$Q6xmU2TW5ZZiPNeltlC2WONksg2pedOkjZu3Dk/uMHg6E8Cit7dSi', 'TS2o1hFzl6', '2019-07-29 18:54:57', '2019-07-29 18:54:57'),
	(53, 'Alf', 'Hill', 'sydnie.fadel@example.com', '2019-07-29 18:54:56', '$2y$10$HR6jC9wASfUspjeumPYN/e0LbRlLFhKZnpYun9yimsc8z9Qr7TPV6', 'I7d9FYEURk', '2019-07-29 18:54:57', '2019-07-29 18:54:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
