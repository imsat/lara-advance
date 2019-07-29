-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table lara-advance.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.categories: ~10 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'laborum', 'laborum', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(2, 'sunt', 'sunt', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(3, 'et', 'et', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(4, 'aperiam', 'aperiam', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(5, 'temporibus', 'temporibus', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(6, 'fugit', 'fugit', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(7, 'amet', 'amet', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(8, 'eveniet', 'eveniet', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(9, 'recusandae', 'recusandae', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(10, 'perspiciatis', 'perspiciatis', '2019-07-28 22:22:58', '2019-07-28 22:22:58');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table lara-advance.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.migrations: ~8 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_07_22_105801_create_categories_table', 1),
	(4, '2019_07_22_110113_create_posts_table', 1),
	(5, '2019_07_22_110826_create_roles_table', 1),
	(6, '2019_07_22_124849_create_role_user_table', 1),
	(7, '2019_07_26_193555_create_permissions_table', 1),
	(8, '2019_07_26_194059_create_permission_role_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table lara-advance.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.password_resets: ~0 rows (approximately)
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table lara-advance.permissions
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.permissions: ~11 rows (approximately)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `slug`, `for`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'user-create', 'user-create', 'user', NULL, '2019-07-28 22:55:21', '2019-07-28 22:55:21'),
	(2, 'user-show', 'user-show', 'user', NULL, '2019-07-28 22:55:31', '2019-07-28 22:55:31'),
	(3, 'user-update', 'user-update', 'user', NULL, '2019-07-28 22:55:39', '2019-07-28 22:57:34'),
	(4, 'user-delete', 'user-delete', 'user', NULL, '2019-07-28 22:55:48', '2019-07-28 22:55:48'),
	(5, 'post-create', 'post-create', 'post', NULL, '2019-07-28 22:55:57', '2019-07-28 22:55:57'),
	(6, 'post-update', 'post-update', 'post', NULL, '2019-07-28 22:56:10', '2019-07-28 22:56:10'),
	(7, 'post-show', 'post-show', 'post', NULL, '2019-07-28 22:56:19', '2019-07-28 22:56:19'),
	(8, 'post-delete', 'post-delete', 'post', NULL, '2019-07-28 22:56:28', '2019-07-28 22:56:28'),
	(9, 'category-crud', 'category-crud', 'other', NULL, '2019-07-28 22:56:38', '2019-07-28 22:56:38'),
	(10, 'tag-crud', 'tag-crud', 'other', NULL, '2019-07-28 22:56:49', '2019-07-28 22:56:49'),
	(11, 'post-publish', 'post-publish', 'post', NULL, '2019-07-28 23:03:55', '2019-07-28 23:03:55'),
	(12, 'user-access', 'user-access', 'user', NULL, '2019-07-29 14:52:33', '2019-07-29 14:52:43'),
	(13, 'post-access', 'post-access', 'post', NULL, '2019-07-29 15:10:39', '2019-07-29 15:10:39');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table lara-advance.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.permission_role: ~21 rows (approximately)
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
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2),
	(9, 2),
	(10, 2),
	(6, 3),
	(7, 3),
	(8, 3),
	(11, 3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table lara-advance.posts
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.posts: ~32 rows (approximately)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `body`, `status`, `user_id`, `created_at`, `updated_at`, `published_at`) VALUES
	(1, 'Sed id est ipsum est dolor reprehenderit.', 'sed-id-est-ipsum-est-dolor-reprehenderit', 2, 'Vero natus id.', 0, 30, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2018-09-09 16:08:43'),
	(2, 'Repellendus tempora velit et omnis ut ea.', 'repellendus-tempora-velit-et-omnis-ut-ea', 10, 'Dolorem rerum consequatur.', 1, 20, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2018-08-19 23:58:36'),
	(3, 'Sunt iste nam soluta qui ea blanditiis.', 'sunt-iste-nam-soluta-qui-ea-blanditiis', 5, 'Sit quia.', 0, 61, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2018-01-14 11:58:00'),
	(4, 'Expedita culpa repellendus provident est.', 'expedita-culpa-repellendus-provident-est', 8, 'Harum et aliquam.', 0, 73, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2019-05-22 16:58:26'),
	(5, 'Rem enim fuga qui rerum alias.', 'rem-enim-fuga-qui-rerum-alias', 10, 'Tempore nisi ea.', 0, 51, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2017-03-09 13:26:19'),
	(6, 'Eius aut quia consequatur facilis eos quibusdam.', 'eius-aut-quia-consequatur-facilis-eos-quibusdam', 8, 'Sed dolores.', 1, 90, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2016-12-26 08:20:48'),
	(7, 'Voluptas rerum vel earum nemo illo.', 'voluptas-rerum-vel-earum-nemo-illo', 3, 'Est ut repellat.', 1, 13, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2017-05-09 04:11:23'),
	(8, 'Est et et iusto temporibus.', 'est-et-et-iusto-temporibus', 8, 'Perspiciatis dolor.', 0, 36, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2015-08-21 05:15:19'),
	(9, 'Aut voluptas sequi id voluptas labore.', 'aut-voluptas-sequi-id-voluptas-labore', 5, 'Tempora nam qui.', 1, 51, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2015-05-25 14:45:29'),
	(10, 'Ad ducimus eligendi rerum.', 'ad-ducimus-eligendi-rerum', 6, 'Et amet doloremque.', 1, 84, '2019-07-28 14:32:25', '2019-07-28 14:32:25', '2015-02-17 21:22:52'),
	(11, 'Libero ut dolorem vitae iste sit.', 'libero-ut-dolorem-vitae-iste-sit', 6, 'Nihil est.', 0, 45, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2021-01-25 14:18:43'),
	(12, 'Adipisci ab consequatur labore voluptatem.', 'adipisci-ab-consequatur-labore-voluptatem', 8, 'Aliquid in.', 1, 55, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2021-07-10 11:04:19'),
	(13, 'Ut totam atque libero nam quod aut.', 'ut-totam-atque-libero-nam-quod-aut', 10, 'Quo et quidem.', 1, 20, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2020-02-08 18:48:33'),
	(14, 'Nihil delectus et nostrum.', 'nihil-delectus-et-nostrum', 6, 'Et non.', 1, 82, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2020-06-26 18:08:18'),
	(15, 'Quaerat voluptatibus modi quidem.', 'quaerat-voluptatibus-modi-quidem', 3, 'Tenetur in quaerat.', 1, 58, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2020-02-10 07:31:05'),
	(16, 'Qui quaerat nemo corporis enim ipsa.', 'qui-quaerat-nemo-corporis-enim-ipsa', 2, 'Odio facilis.', 1, 85, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2020-11-05 19:08:10'),
	(17, 'Dolores officia sint quasi.', 'dolores-officia-sint-quasi', 8, 'Illo quia nesciunt.', 1, 29, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2020-12-01 20:09:06'),
	(18, 'Quae velit aut quia.', 'quae-velit-aut-quia', 8, 'Sequi doloremque vel.', 0, 40, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2020-03-16 18:02:36'),
	(19, 'Voluptas consequatur fugit quis mollitia et nisi.', 'voluptas-consequatur-fugit-quis-mollitia-et-nisi', 4, 'Illum explicabo.', 1, 98, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2019-12-04 10:41:04'),
	(20, 'Id laborum deleniti esse.', 'id-laborum-deleniti-esse', 2, 'Incidunt delectus delectus.', 1, 46, '2019-07-28 14:32:49', '2019-07-28 14:32:49', '2020-06-08 14:19:12'),
	(21, 'Voluptatem quia qui eveniet sed.', 'voluptatem-quia-qui-eveniet-sed', 10, 'Explicabo ea.', 1, 1, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(22, 'Aperiam debitis amet consequuntur sit non molestiae.', 'aperiam-debitis-amet-consequuntur-sit-non-molestiae', 9, 'Similique ullam.', 0, 68, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(23, 'Libero suscipit inventore deleniti reiciendis debitis.', 'libero-suscipit-inventore-deleniti-reiciendis-debitis', 10, 'Delectus voluptate.', 0, 10, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(24, 'Dolorum et officia illo id modi quo.', 'dolorum-et-officia-illo-id-modi-quo', 10, 'Magnam totam saepe.', 0, 82, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(25, 'Saepe dolor necessitatibus sit omnis.', 'saepe-dolor-necessitatibus-sit-omnis', 6, 'Ut qui ducimus.', 1, 63, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(26, 'Non eum nihil repellendus facere.', 'non-eum-nihil-repellendus-facere', 2, 'Omnis quibusdam.', 1, 42, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(27, 'Harum vitae sed fugiat perferendis.', 'harum-vitae-sed-fugiat-perferendis', 4, 'Ea voluptatibus aut.', 0, 62, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(28, 'Voluptas veritatis fuga enim sed hic.', 'voluptas-veritatis-fuga-enim-sed-hic', 3, 'Quia in sunt.', 1, 66, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(29, 'Voluptatem voluptatem rerum reprehenderit voluptatem.', 'voluptatem-voluptatem-rerum-reprehenderit-voluptatem', 8, 'Vero optio enim.', 1, 8, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(30, 'Doloribus dolor consequatur laudantium tenetur.', 'doloribus-dolor-consequatur-laudantium-tenetur', 3, 'Veritatis quae voluptatum.', 1, 49, '2019-07-28 14:40:16', '2019-07-28 14:40:16', NULL),
	(31, 'Ratione quibusdam asperiores nostrum omnis.', 'ratione-quibusdam-asperiores-nostrum-omnis', 10, 'Delectus et.', 0, 67, '2019-07-28 15:05:59', '2019-07-28 15:05:59', '2020-08-02 00:00:00'),
	(32, 'Doloribus eos nesciunt rerum.', 'doloribus-eos-nesciunt-rerum', 5, 'Aut aut.', 1, 99, '2019-07-28 15:12:57', '2019-07-28 15:12:57', '2020-02-08 00:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table lara-advance.roles
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

-- Dumping data for table lara-advance.roles: ~3 rows (approximately)
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin', 'Admin Description', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(2, 'author', 'author', 'Author Description', '2019-07-28 22:22:58', '2019-07-28 22:22:58'),
	(3, 'editor', 'editor', 'Editor Description', '2019-07-28 22:22:58', '2019-07-28 22:22:58');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table lara-advance.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.role_user: ~156 rows (approximately)
DELETE FROM `role_user`;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
	(1, 1),
	(2, 2),
	(2, 3),
	(3, 3),
	(3, 6),
	(2, 7),
	(3, 7),
	(2, 8),
	(3, 8),
	(2, 9),
	(3, 9),
	(2, 10),
	(3, 10),
	(2, 11),
	(2, 12),
	(3, 13),
	(2, 14),
	(3, 14),
	(2, 15),
	(3, 15),
	(2, 16),
	(3, 16),
	(2, 17),
	(3, 17),
	(2, 18),
	(3, 19),
	(2, 20),
	(3, 20),
	(2, 21),
	(2, 22),
	(2, 23),
	(3, 23),
	(2, 24),
	(3, 24),
	(2, 25),
	(2, 26),
	(3, 26),
	(3, 27),
	(2, 28),
	(3, 28),
	(3, 29),
	(2, 30),
	(3, 30),
	(2, 31),
	(3, 31),
	(2, 32),
	(2, 33),
	(2, 34),
	(3, 34),
	(2, 35),
	(3, 35),
	(3, 36),
	(3, 37),
	(2, 38),
	(3, 38),
	(2, 39),
	(3, 39),
	(2, 40),
	(3, 40),
	(2, 41),
	(3, 41),
	(2, 42),
	(2, 43),
	(3, 44),
	(3, 45),
	(2, 46),
	(3, 46),
	(2, 47),
	(3, 47),
	(3, 48),
	(2, 49),
	(2, 50),
	(3, 50),
	(2, 51),
	(3, 51),
	(3, 52),
	(2, 53),
	(3, 53),
	(2, 54),
	(3, 54),
	(2, 55),
	(2, 56),
	(3, 56),
	(3, 57),
	(2, 58),
	(2, 59),
	(2, 60),
	(3, 60),
	(2, 61),
	(3, 61),
	(2, 62),
	(3, 62),
	(2, 63),
	(3, 63),
	(3, 64),
	(3, 65),
	(2, 66),
	(2, 67),
	(2, 68),
	(2, 69),
	(3, 69),
	(2, 70),
	(3, 70),
	(2, 71),
	(3, 71),
	(2, 72),
	(3, 72),
	(3, 73),
	(2, 74),
	(3, 74),
	(3, 75),
	(3, 76),
	(2, 77),
	(3, 77),
	(2, 78),
	(3, 78),
	(2, 79),
	(3, 79),
	(3, 80),
	(2, 81),
	(3, 81),
	(2, 82),
	(2, 83),
	(2, 84),
	(3, 84),
	(2, 85),
	(3, 85),
	(2, 86),
	(3, 86),
	(3, 87),
	(2, 88),
	(3, 88),
	(3, 89),
	(2, 90),
	(3, 90),
	(2, 91),
	(3, 91),
	(2, 92),
	(3, 93),
	(2, 94),
	(2, 95),
	(2, 96),
	(2, 97),
	(3, 97),
	(2, 98),
	(3, 98),
	(3, 99),
	(2, 100),
	(3, 100),
	(2, 101),
	(3, 101);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table lara-advance.users
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.users: ~101 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', '', 'admin@example.com', '2019-07-28 22:22:59', '$2y$10$m1jyJ25F5XjlgPaisIOF2OrvBKfX1c0uTwD38ywTJMKB2BJxW7oNe', '7T4MYVGpmOAXnCemOYEADhU5gp2SfgRXVSFNo4e2TSGoO0i5KsW5Dmqbcg7W', '2019-07-28 22:22:59', '2019-07-28 22:22:59'),
	(2, 'Editor', '', 'editor@example.com', '2019-07-28 22:22:59', '$2y$10$DYpixknAbf7XN.LuBeO./.i.FHLzKf5K942tPSpgZLFhzCwq/X7EW', '6qvYn7XD9RahpGjMKGRCweZxTZbRCf9doa5MaRqRnbpDZ11efYm8v5fAhoA1', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(3, 'Auhor', '', 'author@example.com', '2019-07-28 22:22:59', '$2y$10$9GSZBOcau1qVlSVpxdHT8.K4Bj/cWyEABfiIyUS4xByrky1AKpp9e', '50MBXGE7Blcjrm2j9G1LnHcsTbjt9KzC1cyvuE3hQhF26AW1L4gzvG3TZwBr', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(6, 'Norwood', 'McClure', 'nwilliamson@example.com', '2019-07-28 22:22:59', '$2y$10$XCI2xfB6XOwjgF2WUHHKvuOHrVcXx8sm2wXu9TgNdeyXyP9M6.zZm', 'sCBRTrxwzj', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(7, 'Harley', 'Veum', 'dkulas@example.org', '2019-07-28 22:22:59', '$2y$10$93wxxaISaTWbByIc0r/8XOPRJRMOvXRSy4RQoU6NLHubX5McOn5I.', 'FD9db09I8L', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(8, 'Katelin', 'Heathcote', 'mhowell@example.net', '2019-07-28 22:22:59', '$2y$10$w4gu3RjY8.0wf8R1KPmbl.nMbi0KIGdPXYKc8NuTbkg9zP3k5Lr2e', '3CBQrx3hRG', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(9, 'Jerel', 'Lubowitz', 'oheathcote@example.org', '2019-07-28 22:22:59', '$2y$10$iUrScdbI1ohxTf13zGOX0eNGPdJLawpr.ueJ2uumkkj2bfTzG54dy', 'R35HmsufmD', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(10, 'Annabelle', 'Reichel', 'eichmann.abagail@example.com', '2019-07-28 22:22:59', '$2y$10$kGXsu5zuHKL7QKzU90rQFu1ojqwM7rgD3vzDmbukrYc0ll2c8z4su', 'LKXsCExEEg', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(11, 'Nicholaus', 'Ward', 'rkuvalis@example.net', '2019-07-28 22:23:00', '$2y$10$Ev.7qjAaAiW23DipKAPbFe4A7gGylOStm3Ht/0G2jTOTRdZrnYWE.', 'L7MJV5ibNt', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(12, 'Asia', 'Boyer', 'jklocko@example.net', '2019-07-28 22:23:00', '$2y$10$E7ibyWL9Xxdk6poCZIHYDey5w9QLme1wCQGgdcawV3ZOVdRF5BjIC', 'vbixu4McBb', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(13, 'Hilda', 'Mitchell', 'cgreen@example.com', '2019-07-28 22:23:00', '$2y$10$0tg3FmJScbHmW10dj2CQ/.DTs4TAKuoYfNSNaAD9TgwaPz5ZEzUj2', 'JXNGOj1lAv', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(14, 'Chelsey', 'Stark', 'kratke@example.org', '2019-07-28 22:23:00', '$2y$10$QvFBB2OAd1Tru7REZOn2geSS0x0Lz0f1sg9O8mFmiP4HvWnH6grYi', 'QHxFuYUbWy', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(15, 'Terence', 'Bergstrom', 'coy.mante@example.com', '2019-07-28 22:23:00', '$2y$10$mtF3bUKeKjthkjRK/N7IauN.ZJlIcKY6X7OiXjJ8nTDObTxCakBkO', 'WMdA0uMH53', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(16, 'Macie', 'Raynor', 'kautzer.immanuel@example.com', '2019-07-28 22:23:00', '$2y$10$lAuq9e9c5mELnUGrCiQn6eVPWfRN1UWDafdj.5WJBuEvHZeMVaep6', 'F0koiddrUU', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(17, 'Alden', 'Brekke', 'zulauf.coleman@example.com', '2019-07-28 22:23:00', '$2y$10$VoPmJJc/La8/cgn8KHuxNOUE7HhrBs4tVlgeK8zPc76o6jOlKtnw2', 'IMv23Ya6qZ', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(18, 'Sienna', 'Kilback', 'zelma.weimann@example.org', '2019-07-28 22:23:00', '$2y$10$ntXGjbrOhzezWFoqG1pCAevJBzxWQlX0dc3DQ5wTBLdZNNdj4/M/y', '98K35vjFik', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(19, 'Lon', 'Mertz', 'yboehm@example.com', '2019-07-28 22:23:00', '$2y$10$KCOWwt.whw3J0hz18t1raeBRSvFsFmUO7yHmh0KimpxaLOp9lDp06', '85J7miFMP8', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(20, 'Jane', 'Balistreri', 'bogan.eliseo@example.net', '2019-07-28 22:23:00', '$2y$10$NDiHBwSQZBirnbT7qAWGV.Z7mAPTs7.kdpCuGTBDQnNaUB2gXWv8.', 'WSar7LgD6R', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(21, 'Freddy', 'Goodwin', 'mauricio54@example.org', '2019-07-28 22:23:00', '$2y$10$Z6FB7x6ofY41cQ1iOEpUOOLQsGr8amodEOmOjKvHfqm7z4oWQ8vRK', 'hYPJ6tx8dY', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(22, 'Asa', 'Dach', 'bruen.virginia@example.net', '2019-07-28 22:23:01', '$2y$10$C8MO69EidNJqdTBH7QG2KeoV8IXSpuAlXy3/iCBIBkU7mM761ctHm', 'sKSyV9yBIT', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(23, 'Anika', 'Stark', 'ruthe22@example.com', '2019-07-28 22:23:01', '$2y$10$eAvvfgHoQZP0nxHtpBYGxOcmCA51YlYzR1lPH/RfaiFc5blzxAuQW', '3vDQ6cPhN8', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(24, 'Tony', 'Gutkowski', 'tremayne46@example.com', '2019-07-28 22:23:01', '$2y$10$5ff4XFG3Vtacx0kjuvprU.YrpkT58.5vCM4HxY2rdv8UOCXWXDEWi', 'ZiJJ04YSXk', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(25, 'Jocelyn', 'Mosciski', 'rita91@example.org', '2019-07-28 22:23:01', '$2y$10$4vGsD7l4MXvrzFk6rBuPguLyT31HrGqGEy06jnWEpQaMR6C0OBpoq', 'ByTt3dcALg', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(26, 'Kristoffer', 'West', 'hayden69@example.org', '2019-07-28 22:23:01', '$2y$10$Vz3GTHzvRdEidYv7pgHrzO3/iI8stPPotUI424s7q9fRk.Z8OmWZG', 'DZOGYQ5Eh3', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(27, 'Tara', 'Tremblay', 'iliana40@example.org', '2019-07-28 22:23:01', '$2y$10$IqaBMjoC3ZEw2iAzhO0NOu6XyuV2pqkmJTXtaYQg8FEseomeLR1LC', '2tXA2B0DVl', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(28, 'Destin', 'Daugherty', 'cronin.stanton@example.net', '2019-07-28 22:23:01', '$2y$10$KAkLlkU2Zv68dCGszcixp.grY/iKdc7GLwc2twO1RS9eVDHjR9Im2', 'UgU9gNXmaW', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(29, 'Sydnee', 'Mraz', 'porter50@example.net', '2019-07-28 22:23:01', '$2y$10$P.ytxw14/tQjTxJz8Qqbj.olbTLxrNLgbYb/SGtgU6E6tBGoMkHQ2', '4qlZR26VK6', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(30, 'Edward', 'Schmitt', 'homenick.frederik@example.net', '2019-07-28 22:23:01', '$2y$10$EjXoUyue.JSG4E6Zpg8tveIfJdAIyLwOCQ61gDHGctZsPAieKsBbS', 'JkRX8cnqvE', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(31, 'Daisha', 'Konopelski', 'sporer.juston@example.com', '2019-07-28 22:23:01', '$2y$10$HDz5PSPoK0V7TvpEKn/Nqe5uJGkZZJ9pFvn5tWZ3Qt0Xynz1OJ34m', 'V4gyOXAuNh', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(32, 'Eleanore', 'Rice', 'soledad.reinger@example.net', '2019-07-28 22:23:02', '$2y$10$47Ssi73wH8iqzJWAjluiUubI8UwjJk45naj1QekUBF.m/O18UFYay', 'etZlGmPMaV', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(33, 'Trevion', 'Breitenberg', 'amedhurst@example.net', '2019-07-28 22:23:02', '$2y$10$ATL9ai4k3HadAZhak/u5/.VB4FJ0oTywg3zrpyMohdlOwD14pGMqS', 'L82o8wMvng', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(34, 'Betsy', 'Oberbrunner', 'toy.felton@example.net', '2019-07-28 22:23:02', '$2y$10$lOIb6w9OuSm3ZPiiq8LsWe2Bwg5pRMSwSUScjJCHSmZiUrRfG7gOy', 'chwkS5F6VP', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(35, 'Chadrick', 'Kunde', 'rachel06@example.net', '2019-07-28 22:23:02', '$2y$10$EsS/smb4dt7GzwOtWpjDRO4eMg3lcJdHd3UA18Ro2rGSGUiFypxm2', 'GIVHdwnKuj', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(36, 'Adam', 'Dickinson', 'antonia.kessler@example.com', '2019-07-28 22:23:02', '$2y$10$yjJUG6d7pWQ41QtoOz6dyeYglGcBScFHUS4Ne8Ph7V6/3U0Sg1jYC', 'tyyUMbW4XU', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(37, 'Lloyd', 'Ziemann', 'hoeger.joanie@example.com', '2019-07-28 22:23:02', '$2y$10$iJdf2XDfGpl6MVCBnMkIyePT62FBe70bJL9HVAR5BtKu52iGcEs/u', 'FW8akLBO4I', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(38, 'Jamar', 'Moen', 'pcasper@example.com', '2019-07-28 22:23:02', '$2y$10$gW.F9vQQraySzH9p/xAr6O2WlVPOZ7ECcI0jwdaTdX5ih1CaKTX3y', 'T5ebMwroOw', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(39, 'Eunice', 'Hayes', 'vtoy@example.com', '2019-07-28 22:23:02', '$2y$10$3EdKiF8bknu51CQOkfX0Iu5UGHZsDLkkcUgi/y/t0AewkjpF559sS', 'IwsD9yfUOL', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(40, 'Hilario', 'Wiza', 'hcarter@example.com', '2019-07-28 22:23:02', '$2y$10$feK79bBYYCGhw3C6iFp9Qecfhmd2IkyDpuHqMe5vPuGt8pvLWlI7i', '7dv9jYr2CP', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(41, 'Francisco', 'Bosco', 'lowe.syble@example.com', '2019-07-28 22:23:02', '$2y$10$ZDG/Fge8uHlQs8Y5aF8Vjunr/tXGSgIUUosInQWgEomWgb.oF8Afy', 'yK06vajCsV', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(42, 'Stephen', 'Windler', 'glennie12@example.org', '2019-07-28 22:23:02', '$2y$10$wSM0ho0guiGm3HM3gsU6dO4LfDnvWsjUDmRhcPrWagnqajrG9MgRm', 'lhtHPA971y', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(43, 'Prince', 'Hettinger', 'whuel@example.com', '2019-07-28 22:23:03', '$2y$10$cdJo4xJz.eYGftV3m62DaeUJRP7uzMqQuDlw3moJOomQQd3zmaY4e', 'sJP8xixl6A', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(44, 'Ewell', 'Barrows', 'ayla.jakubowski@example.net', '2019-07-28 22:23:03', '$2y$10$y/QEK4cHpLmaXJIKNuU0/OrXmpFCFzAULomqrG4tyuxZFMmZsY8ga', 'nykk6ofC12', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(45, 'Garnet', 'Dooley', 'lhuels@example.com', '2019-07-28 22:23:03', '$2y$10$TUOiazLs8eI7eroIUsBLJO74uU7odNmL7H5LLXPiwJJyB0r67JnFS', 'nLkTQtWOTB', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(46, 'Mallory', 'Treutel', 'kaylin88@example.net', '2019-07-28 22:23:03', '$2y$10$dlNqS5dxBOkJj1Vbo5bjg.JR.PU8zU7H5dv4vRYVtTacrLGxFfme6', '0lKChvT1Xi', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(47, 'Katrine', 'Herzog', 'ukuhic@example.net', '2019-07-28 22:23:03', '$2y$10$Ra/GKcs65porQ4BImxvk..QFfVA9hizUV/MNdXAQA5kSxGn3Svc3i', 'neGYtjZ0l1', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(48, 'Crystel', 'Hudson', 'donna31@example.com', '2019-07-28 22:23:03', '$2y$10$Q78y0ahDXsfzLAtTuNrR3uVJtf19YP5.ws/1Alqk0KDxLfUUQZuTu', '7dKtNrhwD7', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(49, 'Dianna', 'Keeling', 'mcdermott.helmer@example.net', '2019-07-28 22:23:03', '$2y$10$jpMyKjgYgQ0E70RXV7kf7udX.7Jtd2tMOjU8ZolnxujjzE/J6gj4m', 'vgyv4ERt3h', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(50, 'Ferne', 'Jacobi', 'amurphy@example.com', '2019-07-28 22:23:03', '$2y$10$Rz1OFHxQabBrNcLOPNNm2.QruYTNL8wleIh1SMtNEbseRkP4j7HrG', 'VUBpde3DV0', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(51, 'Kian', 'Connelly', 'fadel.gino@example.net', '2019-07-28 22:23:03', '$2y$10$Jj/UDjctrBtHP8UdR/.up.Y8C.Mn7kkAGK47neBStWD0BHuwB4SpC', 'gh9A2ie72K', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(52, 'Garfield', 'Jaskolski', 'rosamond33@example.com', '2019-07-28 22:23:03', '$2y$10$ANUvePVuOLZhmj4cDtJ93OlFyvHNZ8Lxi47ML8OE751xHndj/mrnK', 'Um0kvucyCH', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(53, 'Darrell', 'Johnston', 'isauer@example.org', '2019-07-28 22:23:03', '$2y$10$PC3x3tIxpi.RKW95kBphKeFc/pCGhJIRmFDyCMGMI.d8cExd3KOzO', 'Rgam7w3IRt', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(54, 'Pierre', 'Rutherford', 'schmeler.earlene@example.org', '2019-07-28 22:23:04', '$2y$10$go9zMQGlwozr6pqOluFS7.0l2F8wRT6NPp/RhyW.asSNzicrfVvLe', 'iHnW6YFnAT', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(55, 'Makayla', 'Kub', 'jairo12@example.org', '2019-07-28 22:23:04', '$2y$10$gJOpEXYZ2a136/vktgfzeeJxd0oDWvOUSIPWXfIqQ.CrJh8FrjiBK', '23IMlgz756', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(56, 'Finn', 'Toy', 'arnoldo21@example.org', '2019-07-28 22:23:04', '$2y$10$gvz67kWcu07J5PZKL.2KL.E9mpPH39A3x08f8j4fqqyRpqjhq48X6', '7rdmF80OAk', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(57, 'Audrey', 'Kuvalis', 'mzieme@example.net', '2019-07-28 22:23:04', '$2y$10$6YAOTdHdDEBVCQNYNUT31OqjqKHl5yym2FHTcjCeY/uKO2e6g.AG6', 'QbzjuNocvT', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(58, 'Eugene', 'Larson', 'swaters@example.net', '2019-07-28 22:23:04', '$2y$10$F1UQFQJ34d5cc5oqTynD7u/LTdnUAHCLNOUiQs209sYj0rHrVqTPm', 'eIR6IqrZnH', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(59, 'Hailee', 'Block', 'wiegand.william@example.com', '2019-07-28 22:23:04', '$2y$10$q091N1vz2KpNDOAXN09k4uAwLVjhgYkNU73SH6ZlIHz9sTcYUb7JK', 'jDGc93LQKN', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(60, 'Breanne', 'Botsford', 'glover.orion@example.com', '2019-07-28 22:23:04', '$2y$10$p9jspVZTxhhDQeH5kRZzn.fsDG.y1kNxcTD8XUw3BtBHLaglrQSne', 'ApSKFo5rDB', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(61, 'Glenna', 'McDermott', 'nhauck@example.org', '2019-07-28 22:23:04', '$2y$10$3uG9EYP6Xzc9G.sBrUoa1.CMV15/RMzQn04mPNith0zls0KCanh36', 'jGhSTOdJUr', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(62, 'Sonia', 'Towne', 'anabel07@example.org', '2019-07-28 22:23:04', '$2y$10$M5Ob37APbkwssrDw00v2qeq4CFSNwd5rv42AIK2fcwTdQzZI4CfYW', '0erup9hFWp', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(63, 'Ellsworth', 'Abernathy', 'kautzer.annabelle@example.net', '2019-07-28 22:23:04', '$2y$10$sPRk0xB7I3LXWMmZppIVde5uRxt8BdIzHmIYx6r2QzF7SGjAfNkbW', 'zcVaSagwHc', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(64, 'Sigrid', 'Price', 'carolyne.cassin@example.org', '2019-07-28 22:23:05', '$2y$10$.zqrKCYgMqauAVvJ3nFJmuM23MK.Z1OHfsxR29Oamix4nwrIuiHI6', 'lCsvtJPked', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(65, 'Cristal', 'Cruickshank', 'madalyn51@example.net', '2019-07-28 22:23:05', '$2y$10$YI0.Uvn4x3b6nNijYBZmb.mvaEysjVQy31oQ.EnhyWJ/DZqI0NXYO', '9XYowbN5fb', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(66, 'Frederick', 'Wiegand', 'hegmann.marty@example.com', '2019-07-28 22:23:05', '$2y$10$/V0eWAW/F711XcK4/Yl1cOOv.YKtrc4nZ6TDNLWU2.d.5A7h86hvy', 'wzpqFVj408', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(67, 'Ransom', 'Hackett', 'alva36@example.org', '2019-07-28 22:23:05', '$2y$10$4xW999/rzb.LYA4zfkxs3.TJTjp92ekFOAURHPnpd0eexhrvxu0UW', 'Lnq2EcE6jX', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(68, 'Thora', 'Bauch', 'aurelio.hirthe@example.org', '2019-07-28 22:23:05', '$2y$10$KFIqkU18aLHOrU3UEu.7O.0kfvBYQQs4QnJAarFtKqTTBBpHmAxma', '1RnYEdHTyA', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(69, 'Flavio', 'Wintheiser', 'dulce.bins@example.net', '2019-07-28 22:23:05', '$2y$10$buEOX9IVkdrBi.fqRccfV.0RlWsN8NplEUfy6l/docoX6djnsUNBi', '82IHZOgqXr', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(70, 'Easton', 'Schmidt', 'ywaelchi@example.com', '2019-07-28 22:23:05', '$2y$10$JQK6LLJ2NXi/Y/Y5qK7gIOyQ2TkdaQIrTVKZJZw8EjUP.ntSC6FAu', 'CVHoeHSfn4', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(71, 'Madonna', 'Romaguera', 'kovacek.anthony@example.com', '2019-07-28 22:23:05', '$2y$10$OC5YZgtCrBtpolZAuPtfFuZ3DS2nG/Ht2ibsxtSXiWPtCyUs6KsJy', 'Jx6we6Ghag', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(72, 'Brandon', 'Emmerich', 'adrain79@example.org', '2019-07-28 22:23:05', '$2y$10$ZFhw6FQgqerqjCmuoE2q6uaWTEOYOU95yadcPtSrVGykpgDnP5cMu', 'Jbr9ewqTUm', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(73, 'Beulah', 'Swaniawski', 'selina.marquardt@example.org', '2019-07-28 22:23:05', '$2y$10$pqnhfUjM3qzwhiNas9z51.1Y6Itpe/..5pV94iNoF4M4agHM/0l06', 'nmHu8bh7wv', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(74, 'Cale', 'Metz', 'deon.bayer@example.org', '2019-07-28 22:23:05', '$2y$10$9oYfRemdSIc7WtXAczr2aOM7Ivgt1M6s8lr1Zs9SNnry9YvsTjvEq', 'pcpmxrEY1q', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(75, 'Jack', 'Marvin', 'jarrell.nikolaus@example.net', '2019-07-28 22:23:06', '$2y$10$AhL8jhCXVNYyYkuJUJraZuGgKQke47mtuHOnwm0wmnfP9OGqzwdVS', 'Wbb61SvUSh', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(76, 'Pearline', 'Torp', 'hrohan@example.org', '2019-07-28 22:23:06', '$2y$10$IzusmhVZ.6As0tzMQl3afOS9IiAWavvLbU1Y6uIIaUve7.fXHgCLa', 'mEl7Tb6vei', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(77, 'Sydney', 'Stiedemann', 'walsh.alvah@example.com', '2019-07-28 22:23:06', '$2y$10$Cm8FgO5YNuMOVfaFcV4y2.xpKyGH9uxH5PF3Xawv48N4t2YGSluRy', 'AabXcFyu8S', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(78, 'Kaci', 'King', 'dhowe@example.org', '2019-07-28 22:23:06', '$2y$10$yGp74sWUeZTtyfM4Zngnb.IQ.lGXBygynadG0MPsGtbIs7Cx7Fp.q', 'Tp0NWRk33l', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(79, 'Hadley', 'Keebler', 'pierre.bailey@example.com', '2019-07-28 22:23:06', '$2y$10$PcyVFQQdOsX4EDAKe/fpBeLzjiIVLi60RRX1bWPF/5QsbWU3yorBa', 'kA5J3UbByi', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(80, 'Annamarie', 'Morissette', 'kmante@example.net', '2019-07-28 22:23:06', '$2y$10$7b320pvlG.hCp5ClJk6bYO/QSwfxRlRlK1yx2IpvR0W3ncv35I75W', 'kIygN1N9aq', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(81, 'Nicklaus', 'Friesen', 'ikoch@example.com', '2019-07-28 22:23:06', '$2y$10$kchFZYup9XPLhLh7fyMZtOLaa5SPrp/0rwNPWFiA4Wy8hwbGUjbze', 'jlPKal6RVi', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(82, 'Eino', 'Trantow', 'rosalia22@example.org', '2019-07-28 22:23:06', '$2y$10$G4Vg4sOGQ2NOa97uggQSnuUGpzEmZsC655cO/1YLLYX05cR33VaiG', 'BCJe0dMrpQ', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(83, 'Augusta', 'Lueilwitz', 'lewis21@example.com', '2019-07-28 22:23:06', '$2y$10$UkuGjQGY8xHzuzbjKRjWseKOrU41/UcaPQsHjxE2Vfj.tdaoXrLo6', '2Z1fQ0LdVy', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(84, 'Beverly', 'Cruickshank', 'monica.wisoky@example.com', '2019-07-28 22:23:06', '$2y$10$hGc7bdwXLKaUHqsXW9cR/uYQ0G4K6jyxLnKLgBlvY3oYaTD60h07G', '1hJnmS5Oip', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(85, 'John', 'Beahan', 'ukihn@example.com', '2019-07-28 22:23:07', '$2y$10$b0hict6SBOgzWNbywmbSge5dRs.OWccojqDVpZHKnwDQKjokmwoYi', '7kOV1YQI5R', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(86, 'Hellen', 'Langosh', 'schowalter.johanna@example.com', '2019-07-28 22:23:07', '$2y$10$NDn6KUzOMA3KiXTkkwekIuL8klh08DFhUQBVh97VsOPTk1Lbi4J7y', 'Q7eBIdXHly', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(87, 'Bradley', 'Klein', 'ruben.jones@example.com', '2019-07-28 22:23:07', '$2y$10$gSt2UPTx0xHaJShtfWvir.H3O5yHO4g0BBw2iHXfTNqoUFzF7MdGG', 'yvjLfOmV79', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(88, 'Carole', 'Crona', 'kunde.yessenia@example.net', '2019-07-28 22:23:07', '$2y$10$ZKYTxxa5dxH5A8l4uAODEusgwY3QNHLTR95s73mGXtcQDCxplALtS', 'Vkteg9jRt9', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(89, 'Kenton', 'Kunze', 'haley.dolores@example.com', '2019-07-28 22:23:07', '$2y$10$7Hpe8wibByfKXHTNmh5U/.pPim3SHCN4BiIiY4btvMjo9ue.A8jCO', 'zSY37VnoIo', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(90, 'Ransom', 'Hill', 'rocky24@example.org', '2019-07-28 22:23:07', '$2y$10$3.TFDkCvRnCzknNN41VkDukkBHJItJrJ6YDcnml8kf5eyy45l4rde', 'RNqTPjA8QT', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(91, 'Nikko', 'Sawayn', 'adrianna.stracke@example.net', '2019-07-28 22:23:07', '$2y$10$bKLZm7RpuJTO9jvnk0TsTOQj0CaF3VxF8ARi6Un76Tmg1GfhJofYG', 'VPooTPEKoE', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(92, 'Napoleon', 'Sporer', 'dewitt.langosh@example.com', '2019-07-28 22:23:07', '$2y$10$CxBHPI87H.Red9IpkLJY3.ZXQQkPb2170FFMroa.PBEPNoKzR8bh.', '5f9JZkDb1L', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(93, 'Demarco', 'Skiles', 'elva04@example.org', '2019-07-28 22:23:07', '$2y$10$vMAicetig3Hh0Vwa5Sl7FOUO5GUrUgp3XUZz4Ts7PNDUqLw2A.Q2i', '4lYPdNmhe4', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(94, 'Eda', 'Dare', 'shyanne62@example.com', '2019-07-28 22:23:07', '$2y$10$xoEi7ccHbrB0EVz9Wo1r/O.wL/JUxPYbNABBXqu3aMyxIQorhLsSO', 'ScE8h3mxyF', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(95, 'Josianne', 'Conroy', 'bsawayn@example.org', '2019-07-28 22:23:07', '$2y$10$oGn4CKvsQJ1uQMV3gBabeOfBRVkgYqYPmd6Vr0Vi.WZ3DzJ8GOPWa', 'AcaI10hPR4', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(96, 'Carlee', 'Goodwin', 'kerluke.una@example.com', '2019-07-28 22:23:08', '$2y$10$rp0W9cvBfGzA24mpB0z/5er/jGzmk6sBgObO3E4JsPIlk4BqIfMTq', '5xjly08T5J', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(97, 'Gunnar', 'Bayer', 'mante.jammie@example.net', '2019-07-28 22:23:08', '$2y$10$84LZUMfmYD7F3LgheFNtjuTBt/O6jSRY56PgEQD5cE0o62vHRkYXm', 'S1HgCKr139', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(98, 'Zella', 'Durgan', 'timmothy67@example.net', '2019-07-28 22:23:08', '$2y$10$bODqGel6TjvMXoFMiBtDDu3Rmc3X/70P.XqH5W03taTP0abEhH58m', 'F8UgaVZd1u', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(99, 'Jakayla', 'Mertz', 'stefan48@example.net', '2019-07-28 22:23:08', '$2y$10$MZR1ULrAICt1GktjOyRMk.Neu4Z9Pit.s4yStH0gSAtGZF6A1iudG', 'EzQ2GDlPO8', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(100, 'Tyrell', 'Nikolaus', 'aracely.nikolaus@example.org', '2019-07-28 22:23:08', '$2y$10$YSgV1rx/laS01.eXqX9nduuZo8mCKYxLD5pS6UIZHrLWtwoKA/uw6', 'PA7YYj0tzy', '2019-07-28 22:23:08', '2019-07-28 22:23:08'),
	(101, 'Bo', 'Beer', 'parker.forest@example.net', '2019-07-28 22:23:08', '$2y$10$YnR1pya0vjCVRu2SrK.1welTgthzleZbMpHAUIw81T0n9egJPAYJ2', 'K6KldN6mNP', '2019-07-28 22:23:08', '2019-07-28 22:23:08');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
