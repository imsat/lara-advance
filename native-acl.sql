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
	(1, 'quis', 'quis', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(2, 'est', 'est', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(3, 'et', 'et', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(4, 'tempore', 'tempore', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(5, 'aliquam', 'aliquam', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(6, 'ex', 'ex', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(7, 'est', 'est', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(8, 'est', 'est', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(9, 'unde', 'unde', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(10, 'labore', 'labore', '2019-07-27 19:10:40', '2019-07-27 19:10:40');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table lara-advance.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.migrations: ~8 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(9, '2014_10_12_000000_create_users_table', 1),
	(10, '2014_10_12_100000_create_password_resets_table', 1),
	(11, '2019_07_22_105801_create_categories_table', 1),
	(12, '2019_07_22_110113_create_posts_table', 1),
	(13, '2019_07_22_110826_create_roles_table', 1),
	(14, '2019_07_22_124849_create_role_user_table', 1),
	(15, '2019_07_26_193555_create_permissions_table', 1),
	(16, '2019_07_26_194059_create_permission_role_table', 1);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.permissions: ~8 rows (approximately)
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `slug`, `for`, `description`, `created_at`, `updated_at`) VALUES
	(1, 'user-create', 'user-create', 'user', NULL, '2019-07-27 20:56:46', '2019-07-27 20:56:46'),
	(2, 'user-update', 'user-update', 'user', NULL, '2019-07-27 20:56:59', '2019-07-27 20:56:59'),
	(3, 'user-show', 'user-show', 'user', NULL, '2019-07-27 20:57:12', '2019-07-27 20:59:34'),
	(4, 'user-delete', 'user-delete', 'user', NULL, '2019-07-27 20:57:25', '2019-07-27 20:57:25'),
	(5, 'post-create', 'post-create', 'post', NULL, '2019-07-27 20:57:38', '2019-07-27 20:57:38'),
	(6, 'post-publish', 'post-publish', 'post', NULL, '2019-07-27 20:57:50', '2019-07-27 20:57:50'),
	(7, 'post-update', 'post-update', 'post', NULL, '2019-07-27 20:57:58', '2019-07-27 20:57:58'),
	(8, 'post-delete', 'post-delete', 'post', NULL, '2019-07-27 20:58:06', '2019-07-27 20:58:06'),
	(9, 'category-crud', 'category-crud', 'other', NULL, '2019-07-27 20:58:18', '2019-07-27 20:58:18'),
	(10, 'tag-crud', 'tag-crud', 'other', NULL, '2019-07-27 20:58:25', '2019-07-27 20:58:25');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table lara-advance.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  KEY `permission_role_permission_id_foreign` (`permission_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.permission_role: ~13 rows (approximately)
DELETE FROM `permission_role`;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, NULL, NULL),
	(2, 1, 2, NULL, NULL),
	(3, 1, 1, NULL, NULL),
	(4, 1, 8, NULL, NULL),
	(8, 1, 3, NULL, NULL),
	(9, 1, 10, NULL, NULL),
	(10, 1, 9, NULL, NULL),
	(11, 2, 8, NULL, NULL),
	(12, 2, 7, NULL, NULL),
	(13, 2, 5, NULL, NULL),
	(18, 3, 8, NULL, NULL),
	(19, 3, 7, NULL, NULL),
	(20, 3, 6, NULL, NULL);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table lara-advance.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.posts: ~100 rows (approximately)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `body`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'Inventore suscipit dolores eius velit.', 'inventore-suscipit-dolores-eius-velit', 1, 'Quo ipsum dolorem.', 1, 97, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(2, 'Est ratione cumque et.', 'est-ratione-cumque-et', 3, 'Ratione et.', 1, 67, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(3, 'Enim fugiat aspernatur repudiandae laborum nesciunt.', 'enim-fugiat-aspernatur-repudiandae-laborum-nesciunt', 7, 'Omnis delectus magni.', 0, 95, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(4, 'Optio aut ea quibusdam quia fugit reprehenderit.', 'optio-aut-ea-quibusdam-quia-fugit-reprehenderit', 5, 'Occaecati eos.', 0, 11, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(5, 'Ipsam dignissimos est aliquid tempore ut.', 'ipsam-dignissimos-est-aliquid-tempore-ut', 4, 'Vel quisquam iusto.', 0, 91, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(6, 'Modi quam hic quasi vero qui repellat.', 'modi-quam-hic-quasi-vero-qui-repellat', 8, 'Ipsa suscipit.', 1, 25, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(7, 'Maiores praesentium sed deleniti at adipisci rem.', 'maiores-praesentium-sed-deleniti-at-adipisci-rem', 10, 'Fuga voluptates.', 0, 66, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(8, 'Eos expedita voluptas reiciendis architecto eum asperiores.', 'eos-expedita-voluptas-reiciendis-architecto-eum-asperiores', 5, 'Dolore incidunt natus.', 1, 100, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(9, 'Rerum modi voluptas qui repudiandae omnis amet.', 'rerum-modi-voluptas-qui-repudiandae-omnis-amet', 7, 'Et dolorum ducimus.', 1, 80, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(10, 'Sapiente debitis voluptas voluptas exercitationem.', 'sapiente-debitis-voluptas-voluptas-exercitationem', 4, 'Nesciunt dolor.', 0, 36, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(11, 'Minus veritatis distinctio eius.', 'minus-veritatis-distinctio-eius', 7, 'Est repudiandae.', 1, 97, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(12, 'Assumenda sapiente veniam ratione ducimus corrupti.', 'assumenda-sapiente-veniam-ratione-ducimus-corrupti', 7, 'Qui natus voluptate.', 1, 27, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(13, 'Totam cumque blanditiis sequi dolores voluptatum.', 'totam-cumque-blanditiis-sequi-dolores-voluptatum', 6, 'Id dolores.', 0, 34, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(14, 'Quia enim voluptatum ea quod modi itaque.', 'quia-enim-voluptatum-ea-quod-modi-itaque', 1, 'Et explicabo ea.', 0, 22, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(15, 'Voluptatibus quos pariatur minima.', 'voluptatibus-quos-pariatur-minima', 10, 'Enim nostrum quo.', 0, 29, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(16, 'Veritatis quaerat totam molestiae eaque fugit est.', 'veritatis-quaerat-totam-molestiae-eaque-fugit-est', 7, 'Dolores quaerat tempora.', 1, 44, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(17, 'Est deleniti laborum adipisci eius.', 'est-deleniti-laborum-adipisci-eius', 2, 'Repellat qui eius.', 1, 48, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(18, 'Numquam culpa illum quaerat dolorum numquam animi.', 'numquam-culpa-illum-quaerat-dolorum-numquam-animi', 9, 'Ut totam doloremque.', 0, 55, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(19, 'Molestiae voluptatem ipsum quis molestiae enim sed.', 'molestiae-voluptatem-ipsum-quis-molestiae-enim-sed', 9, 'Voluptates eaque alias.', 1, 50, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(20, 'Sint dolorem ea distinctio.', 'sint-dolorem-ea-distinctio', 3, 'Placeat maiores.', 0, 61, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(21, 'Velit libero accusamus provident suscipit sint labore.', 'velit-libero-accusamus-provident-suscipit-sint-labore', 7, 'Quis dolorum.', 1, 46, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(22, 'Vel a et aut et.', 'vel-a-et-aut-et', 5, 'Fugit ipsum.', 0, 48, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(23, 'Molestiae iure aliquam eos ut delectus.', 'molestiae-iure-aliquam-eos-ut-delectus', 10, 'Architecto et.', 0, 47, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(24, 'Ut incidunt quam maxime.', 'ut-incidunt-quam-maxime', 5, 'Odit sit perspiciatis.', 1, 10, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(25, 'Voluptate quia quos molestiae dolorum ea.', 'voluptate-quia-quos-molestiae-dolorum-ea', 5, 'Fugit distinctio incidunt.', 1, 101, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(26, 'Numquam repellat vel quos est voluptate aut.', 'numquam-repellat-vel-quos-est-voluptate-aut', 4, 'Eius neque et.', 0, 36, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(27, 'Omnis debitis rerum et velit at.', 'omnis-debitis-rerum-et-velit-at', 7, 'Id est.', 0, 70, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(28, 'Omnis maxime tempore repellat aliquid est dolores perspiciatis.', 'omnis-maxime-tempore-repellat-aliquid-est-dolores-perspiciatis', 7, 'Suscipit ut.', 1, 57, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(29, 'Fugit nam pariatur qui dignissimos.', 'fugit-nam-pariatur-qui-dignissimos', 7, 'Sed libero.', 0, 79, '2019-07-27 19:18:49', '2019-07-27 19:18:49'),
	(30, 'Voluptatum et est facilis omnis eum veniam.', 'voluptatum-et-est-facilis-omnis-eum-veniam', 9, 'Nesciunt praesentium vel.', 0, 88, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(31, 'Eum velit odit earum velit qui.', 'eum-velit-odit-earum-velit-qui', 3, 'Ut eos illum.', 0, 24, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(32, 'Consectetur fugiat facere corporis quae sit.', 'consectetur-fugiat-facere-corporis-quae-sit', 3, 'Sit nobis molestias.', 1, 96, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(33, 'Et alias voluptatibus facilis animi.', 'et-alias-voluptatibus-facilis-animi', 6, 'Voluptatum ipsum.', 1, 39, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(34, 'Enim aliquid ratione rem dolor.', 'enim-aliquid-ratione-rem-dolor', 7, 'Qui ut voluptas.', 1, 82, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(35, 'Sunt ut facilis voluptate atque voluptatibus libero.', 'sunt-ut-facilis-voluptate-atque-voluptatibus-libero', 7, 'Voluptas placeat.', 0, 69, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(36, 'Aut natus soluta quia corrupti.', 'aut-natus-soluta-quia-corrupti', 1, 'Eligendi error.', 1, 78, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(37, 'Rerum et eaque possimus adipisci.', 'rerum-et-eaque-possimus-adipisci', 4, 'Occaecati dolorum similique.', 1, 96, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(38, 'Omnis et corporis tenetur aut.', 'omnis-et-corporis-tenetur-aut', 1, 'At vel.', 1, 95, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(39, 'Dolores aliquid sed culpa est quia assumenda.', 'dolores-aliquid-sed-culpa-est-quia-assumenda', 10, 'Hic quis voluptas.', 1, 12, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(40, 'Molestiae sunt non qui.', 'molestiae-sunt-non-qui', 6, 'Nostrum in.', 1, 21, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(41, 'Voluptatum velit dolore veritatis voluptatibus velit eveniet.', 'voluptatum-velit-dolore-veritatis-voluptatibus-velit-eveniet', 5, 'Vel aut molestiae.', 0, 97, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(42, 'A beatae et sed sed.', 'a-beatae-et-sed-sed', 3, 'Numquam et.', 1, 36, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(43, 'Quia accusantium quia illo.', 'quia-accusantium-quia-illo', 5, 'Fugit sed dolor.', 1, 35, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(44, 'Blanditiis deleniti et fugit dicta et.', 'blanditiis-deleniti-et-fugit-dicta-et', 10, 'Ad dicta.', 0, 85, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(45, 'Aut dolorum laudantium autem.', 'aut-dolorum-laudantium-autem', 5, 'Repellat et suscipit.', 0, 42, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(46, 'Velit molestias cum explicabo provident assumenda qui.', 'velit-molestias-cum-explicabo-provident-assumenda-qui', 4, 'Ratione et.', 0, 77, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(47, 'Voluptatibus expedita ab facilis atque est.', 'voluptatibus-expedita-ab-facilis-atque-est', 2, 'Quae est.', 1, 42, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(48, 'Minus consectetur eligendi aut voluptate impedit rerum.', 'minus-consectetur-eligendi-aut-voluptate-impedit-rerum', 4, 'Sit possimus.', 0, 44, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(49, 'Ab laudantium dolor ipsum corrupti.', 'ab-laudantium-dolor-ipsum-corrupti', 8, 'Sunt eius.', 1, 27, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(50, 'Fuga sint est commodi perferendis rerum.', 'fuga-sint-est-commodi-perferendis-rerum', 2, 'Velit voluptas dolorem.', 0, 38, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(51, 'Atque consequatur recusandae ipsum ut id et.', 'atque-consequatur-recusandae-ipsum-ut-id-et', 2, 'Dicta doloribus.', 1, 54, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(52, 'Voluptas et amet qui soluta.', 'voluptas-et-amet-qui-soluta', 8, 'Rerum asperiores.', 1, 20, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(53, 'Quas quia id quia velit dicta.', 'quas-quia-id-quia-velit-dicta', 1, 'Dolores ratione quam.', 1, 87, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(54, 'Odit delectus non quod dolorum adipisci cumque.', 'odit-delectus-non-quod-dolorum-adipisci-cumque', 9, 'Consequatur dolores.', 1, 26, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(55, 'Sed inventore et aliquam iure.', 'sed-inventore-et-aliquam-iure', 8, 'Sit iste modi.', 0, 6, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(56, 'Error veritatis voluptatibus sunt qui impedit.', 'error-veritatis-voluptatibus-sunt-qui-impedit', 7, 'Sint aperiam et.', 0, 101, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(57, 'Voluptatem suscipit neque ratione perferendis suscipit.', 'voluptatem-suscipit-neque-ratione-perferendis-suscipit', 6, 'Et sed rerum.', 0, 101, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(58, 'Optio consequatur aut quod ut rerum ratione.', 'optio-consequatur-aut-quod-ut-rerum-ratione', 9, 'Dolore aliquid.', 0, 85, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(59, 'Provident voluptatem culpa nisi sit totam consectetur.', 'provident-voluptatem-culpa-nisi-sit-totam-consectetur', 9, 'Dolorem accusamus quo.', 0, 38, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(60, 'Recusandae odio qui quos fugit deleniti.', 'recusandae-odio-qui-quos-fugit-deleniti', 4, 'Quis aliquid voluptatum.', 0, 84, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(61, 'A et voluptatem voluptas fugit nulla.', 'a-et-voluptatem-voluptas-fugit-nulla', 4, 'Autem et.', 1, 45, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(62, 'Rem dolor quos qui hic perspiciatis quasi.', 'rem-dolor-quos-qui-hic-perspiciatis-quasi', 10, 'Omnis amet consequuntur.', 1, 81, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(63, 'Quidem error ratione aut maxime odit.', 'quidem-error-ratione-aut-maxime-odit', 7, 'Qui sapiente.', 1, 11, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(64, 'Magni molestias ea quia molestiae.', 'magni-molestias-ea-quia-molestiae', 4, 'Laudantium et.', 1, 60, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(65, 'Dolores quas dolores non et quo quam.', 'dolores-quas-dolores-non-et-quo-quam', 2, 'Unde et et.', 0, 39, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(66, 'Quas incidunt explicabo minus.', 'quas-incidunt-explicabo-minus', 3, 'Similique voluptatem.', 0, 35, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(67, 'Dolor reprehenderit expedita quis cupiditate nihil possimus.', 'dolor-reprehenderit-expedita-quis-cupiditate-nihil-possimus', 10, 'Placeat fugit.', 1, 63, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(68, 'Omnis nobis sint sed id quibusdam.', 'omnis-nobis-sint-sed-id-quibusdam', 3, 'Et illum.', 0, 10, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(69, 'Harum sint molestias voluptas.', 'harum-sint-molestias-voluptas', 2, 'Omnis nam.', 0, 43, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(70, 'Quasi et quia et et autem.', 'quasi-et-quia-et-et-autem', 2, 'Et ex.', 1, 32, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(71, 'Ut magni iusto sed quis iure voluptas.', 'ut-magni-iusto-sed-quis-iure-voluptas', 5, 'Tempora voluptate.', 1, 53, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(72, 'Ratione iusto aut ea excepturi.', 'ratione-iusto-aut-ea-excepturi', 3, 'Hic maiores.', 1, 69, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(73, 'Culpa perferendis rem eius dolorem perferendis modi.', 'culpa-perferendis-rem-eius-dolorem-perferendis-modi', 3, 'Repudiandae nostrum aspernatur.', 0, 74, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(74, 'Nihil blanditiis eos alias ratione alias.', 'nihil-blanditiis-eos-alias-ratione-alias', 5, 'Eos consectetur.', 0, 35, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(75, 'Ut nesciunt a accusamus nihil.', 'ut-nesciunt-a-accusamus-nihil', 3, 'Voluptas id.', 0, 22, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(76, 'Corrupti et nam quas commodi beatae.', 'corrupti-et-nam-quas-commodi-beatae', 1, 'Eligendi velit minima.', 0, 98, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(77, 'Nostrum aut id cumque debitis ratione explicabo.', 'nostrum-aut-id-cumque-debitis-ratione-explicabo', 1, 'Id impedit animi.', 0, 80, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(78, 'Consequatur quibusdam iure et eos odio aut.', 'consequatur-quibusdam-iure-et-eos-odio-aut', 2, 'Eos rerum.', 1, 36, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(79, 'Possimus sed aliquam nisi fuga officia.', 'possimus-sed-aliquam-nisi-fuga-officia', 1, 'Totam eos.', 1, 47, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(80, 'Et optio harum quos.', 'et-optio-harum-quos', 8, 'Repudiandae sit ullam.', 0, 31, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(81, 'Impedit amet consequatur quia non.', 'impedit-amet-consequatur-quia-non', 2, 'Vitae voluptatem.', 1, 95, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(82, 'Suscipit dolorem reprehenderit beatae.', 'suscipit-dolorem-reprehenderit-beatae', 5, 'Sint amet.', 1, 79, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(83, 'Quia omnis facere incidunt eaque.', 'quia-omnis-facere-incidunt-eaque', 7, 'Ut dolorum.', 1, 51, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(84, 'Beatae repellat aut molestiae enim.', 'beatae-repellat-aut-molestiae-enim', 5, 'Ullam blanditiis non.', 1, 23, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(85, 'Maxime blanditiis dicta ut veniam excepturi aliquam.', 'maxime-blanditiis-dicta-ut-veniam-excepturi-aliquam', 6, 'Aspernatur modi.', 1, 55, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(86, 'Eum suscipit ipsa necessitatibus.', 'eum-suscipit-ipsa-necessitatibus', 10, 'Fuga autem.', 1, 76, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(87, 'Enim exercitationem id cupiditate omnis accusantium.', 'enim-exercitationem-id-cupiditate-omnis-accusantium', 7, 'Sunt maxime sit.', 1, 31, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(88, 'Placeat nam consequatur voluptas id animi.', 'placeat-nam-consequatur-voluptas-id-animi', 9, 'Sit eum voluptatem.', 0, 56, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(89, 'Repellendus accusamus esse eaque.', 'repellendus-accusamus-esse-eaque', 1, 'Voluptate non voluptatem.', 1, 91, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(90, 'Assumenda est eum voluptas.', 'assumenda-est-eum-voluptas', 4, 'Deleniti est eligendi.', 0, 47, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(91, 'Commodi ea sit quia libero soluta eius.', 'commodi-ea-sit-quia-libero-soluta-eius', 4, 'Quibusdam commodi.', 0, 7, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(92, 'Est doloribus et velit id voluptas.', 'est-doloribus-et-velit-id-voluptas', 5, 'Mollitia sit culpa.', 1, 84, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(93, 'Numquam voluptates aut ut.', 'numquam-voluptates-aut-ut', 10, 'Earum occaecati minima.', 0, 17, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(94, 'Enim distinctio quisquam nisi assumenda mollitia.', 'enim-distinctio-quisquam-nisi-assumenda-mollitia', 3, 'Ut placeat.', 1, 83, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(95, 'Sed placeat temporibus corrupti deleniti itaque magnam.', 'sed-placeat-temporibus-corrupti-deleniti-itaque-magnam', 8, 'Nemo et itaque.', 0, 96, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(96, 'Recusandae est commodi veritatis quidem.', 'recusandae-est-commodi-veritatis-quidem', 4, 'Eveniet dolor.', 0, 59, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(97, 'Est id ullam illum vel ea.', 'est-id-ullam-illum-vel-ea', 2, 'Voluptatem necessitatibus quia.', 1, 99, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(98, 'Explicabo earum deserunt nihil.', 'explicabo-earum-deserunt-nihil', 1, 'Ducimus et ducimus.', 0, 13, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(99, 'Ut quisquam molestias sit.', 'ut-quisquam-molestias-sit', 1, 'Sunt deserunt sit.', 1, 31, '2019-07-27 19:18:50', '2019-07-27 19:18:50'),
	(100, 'Quo sed ad suscipit autem.', 'quo-sed-ad-suscipit-autem', 8, 'Et saepe.', 0, 72, '2019-07-27 19:18:50', '2019-07-27 19:18:50');
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
	(1, 'admin', 'admin', 'Admin Description', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(2, 'author', 'author', 'Author Description', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(3, 'editor', 'editor', 'Editor Description', '2019-07-27 19:10:40', '2019-07-27 19:10:40');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table lara-advance.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_user_id_foreign` (`user_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara-advance.role_user: ~142 rows (approximately)
DELETE FROM `role_user`;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(4, 2, 3, NULL, NULL),
	(6, 4, 2, NULL, NULL),
	(7, 5, 2, NULL, NULL),
	(8, 6, 2, NULL, NULL),
	(9, 6, 3, NULL, NULL),
	(10, 7, 2, NULL, NULL),
	(11, 8, 2, NULL, NULL),
	(12, 9, 3, NULL, NULL),
	(13, 10, 2, NULL, NULL),
	(14, 10, 3, NULL, NULL),
	(15, 11, 2, NULL, NULL),
	(16, 11, 3, NULL, NULL),
	(17, 12, 2, NULL, NULL),
	(18, 12, 3, NULL, NULL),
	(19, 13, 2, NULL, NULL),
	(20, 13, 3, NULL, NULL),
	(21, 14, 2, NULL, NULL),
	(22, 14, 3, NULL, NULL),
	(23, 15, 2, NULL, NULL),
	(24, 15, 3, NULL, NULL),
	(25, 16, 3, NULL, NULL),
	(26, 17, 3, NULL, NULL),
	(27, 18, 3, NULL, NULL),
	(28, 19, 3, NULL, NULL),
	(29, 20, 2, NULL, NULL),
	(30, 21, 2, NULL, NULL),
	(31, 22, 2, NULL, NULL),
	(32, 23, 3, NULL, NULL),
	(33, 24, 2, NULL, NULL),
	(34, 24, 3, NULL, NULL),
	(35, 25, 2, NULL, NULL),
	(36, 25, 3, NULL, NULL),
	(37, 26, 2, NULL, NULL),
	(38, 26, 3, NULL, NULL),
	(39, 27, 3, NULL, NULL),
	(40, 28, 2, NULL, NULL),
	(41, 28, 3, NULL, NULL),
	(42, 29, 2, NULL, NULL),
	(43, 30, 2, NULL, NULL),
	(44, 30, 3, NULL, NULL),
	(45, 31, 2, NULL, NULL),
	(46, 31, 3, NULL, NULL),
	(47, 32, 3, NULL, NULL),
	(48, 33, 3, NULL, NULL),
	(49, 34, 2, NULL, NULL),
	(50, 35, 3, NULL, NULL),
	(51, 36, 2, NULL, NULL),
	(52, 37, 2, NULL, NULL),
	(53, 38, 2, NULL, NULL),
	(54, 38, 3, NULL, NULL),
	(55, 39, 2, NULL, NULL),
	(56, 39, 3, NULL, NULL),
	(57, 40, 2, NULL, NULL),
	(58, 41, 3, NULL, NULL),
	(59, 42, 2, NULL, NULL),
	(60, 42, 3, NULL, NULL),
	(61, 43, 2, NULL, NULL),
	(62, 43, 3, NULL, NULL),
	(63, 44, 2, NULL, NULL),
	(64, 45, 3, NULL, NULL),
	(65, 46, 2, NULL, NULL),
	(66, 46, 3, NULL, NULL),
	(67, 47, 2, NULL, NULL),
	(68, 47, 3, NULL, NULL),
	(69, 48, 2, NULL, NULL),
	(70, 48, 3, NULL, NULL),
	(71, 49, 2, NULL, NULL),
	(72, 49, 3, NULL, NULL),
	(73, 50, 2, NULL, NULL),
	(74, 50, 3, NULL, NULL),
	(75, 51, 3, NULL, NULL),
	(76, 52, 2, NULL, NULL),
	(77, 52, 3, NULL, NULL),
	(78, 53, 2, NULL, NULL),
	(79, 53, 3, NULL, NULL),
	(80, 54, 2, NULL, NULL),
	(81, 54, 3, NULL, NULL),
	(82, 55, 2, NULL, NULL),
	(83, 55, 3, NULL, NULL),
	(84, 56, 2, NULL, NULL),
	(85, 56, 3, NULL, NULL),
	(86, 57, 3, NULL, NULL),
	(87, 58, 3, NULL, NULL),
	(88, 59, 3, NULL, NULL),
	(89, 60, 3, NULL, NULL),
	(90, 61, 2, NULL, NULL),
	(91, 62, 3, NULL, NULL),
	(92, 63, 2, NULL, NULL),
	(93, 63, 3, NULL, NULL),
	(94, 64, 3, NULL, NULL),
	(95, 65, 2, NULL, NULL),
	(96, 66, 2, NULL, NULL),
	(97, 66, 3, NULL, NULL),
	(98, 67, 2, NULL, NULL),
	(99, 68, 2, NULL, NULL),
	(100, 68, 3, NULL, NULL),
	(101, 69, 3, NULL, NULL),
	(102, 70, 3, NULL, NULL),
	(103, 71, 2, NULL, NULL),
	(104, 72, 3, NULL, NULL),
	(105, 73, 2, NULL, NULL),
	(106, 73, 3, NULL, NULL),
	(107, 74, 3, NULL, NULL),
	(108, 75, 3, NULL, NULL),
	(109, 76, 3, NULL, NULL),
	(110, 77, 2, NULL, NULL),
	(111, 77, 3, NULL, NULL),
	(112, 78, 2, NULL, NULL),
	(113, 78, 3, NULL, NULL),
	(114, 79, 2, NULL, NULL),
	(115, 79, 3, NULL, NULL),
	(116, 80, 2, NULL, NULL),
	(117, 81, 3, NULL, NULL),
	(118, 82, 2, NULL, NULL),
	(119, 82, 3, NULL, NULL),
	(120, 83, 3, NULL, NULL),
	(121, 84, 2, NULL, NULL),
	(122, 85, 3, NULL, NULL),
	(123, 86, 2, NULL, NULL),
	(124, 86, 3, NULL, NULL),
	(125, 87, 2, NULL, NULL),
	(126, 88, 2, NULL, NULL),
	(127, 88, 3, NULL, NULL),
	(128, 89, 2, NULL, NULL),
	(129, 90, 3, NULL, NULL),
	(130, 91, 2, NULL, NULL),
	(131, 92, 2, NULL, NULL),
	(132, 92, 3, NULL, NULL),
	(133, 93, 2, NULL, NULL),
	(134, 93, 3, NULL, NULL),
	(135, 94, 2, NULL, NULL),
	(136, 95, 2, NULL, NULL),
	(137, 96, 2, NULL, NULL),
	(138, 97, 2, NULL, NULL),
	(139, 97, 3, NULL, NULL),
	(140, 98, 3, NULL, NULL),
	(141, 99, 2, NULL, NULL),
	(142, 99, 3, NULL, NULL),
	(143, 100, 3, NULL, NULL),
	(144, 101, 3, NULL, NULL),
	(145, 3, 3, NULL, NULL),
	(149, 1, 2, NULL, NULL);
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
	(1, 'Admin', 'Johnston', 'admin@admin.com', '2019-07-27 19:10:40', '$2y$10$3T.7gkOCsAVLBkCsxYvwRufsU4TExOq9pIApLjac12.Sbe6HmmIKS', 'iy2PVULSucBZjbl98zx2H7x0QuQ8xIFSvIsZi16uuXK6S6PJs0xafbbWDc6o', '2019-07-27 19:10:40', '2019-07-27 19:10:40'),
	(2, 'Shemar', 'Fadel', 'nbreitenberg@example.org', '2019-07-27 19:10:40', '$2y$10$cp3W.MdjwL/afSh7FdVcsOgeEkJEqSjG7or4zhzQywf.2nkIPjeSu', 'cisy5ugj261GN1lAUpHoxwzEIiuJAnO9NwVcP7vFqwpNN8Zpoqq2LnAsYsdo', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(3, 'Kaley', 'Lehner', 'sarah.koch@example.com', '2019-07-27 19:10:40', '$2y$10$L2rmzWjO1VjOd4CVMXcUgOjpOGhKcuE05ti7lAB0s7cBMDy3/KtCW', 'e4J8bZMDM8k45HsDpHZRwPlKKwp2Ro4bKmVIpYzc69aaBJ9AK924MJjBlvJx', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(4, 'Otho', 'Krajcik', 'okeebler@example.net', '2019-07-27 19:10:41', '$2y$10$5yuXdjnkr1lERgAoovQxVuWO.pNldpWhlO5A84orgDIgGHS25MYOe', 'ri91mR1TmG', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(5, 'Winona', 'Terry', 'ijacobson@example.com', '2019-07-27 19:10:41', '$2y$10$SVEoz3Aeur3p4MLRv6u5ZONCM1BxWpzUOssmVZ99fGMfnbNoia3ey', 'zYsDAE540Z', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(6, 'Jefferey', 'Batz', 'ocrooks@example.org', '2019-07-27 19:10:41', '$2y$10$rmxytzNoHpTIxFOrC2vaU.CavxjqDKkvu4F/H4ORSaH2zC1rGM3eq', 'G8E9pXlAU8', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(7, 'Cooper', 'Mraz', 'elliott.hudson@example.net', '2019-07-27 19:10:41', '$2y$10$sz/fyW1VwUMzY6f.tmlJg.EVmxLvvt.6Ueb46HtWgBR.7ytIT/Um6', 'G8KWH66NkE', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(8, 'Neil', 'Kshlerin', 'felicity.green@example.com', '2019-07-27 19:10:41', '$2y$10$UZxuYp1hnQFMfG9/oQYPxefkA5rfE.QcTxyYGbOztHJL5P/DEjxQW', '4l4qe7VfgU', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(9, 'Tito', 'Morar', 'hickle.kyra@example.net', '2019-07-27 19:10:41', '$2y$10$H1D5Cl37K6.lpBGeVW6a5OfKA/2mVIr14YuekClbewem1KR4Aisza', '4fhpMDotqs', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(10, 'Randal', 'Hauck', 'eudora.thiel@example.com', '2019-07-27 19:10:41', '$2y$10$FE8hZzM6w6XN5FhFPl6ZmeDkS5nxmlAQGzaL.Zt.DB3UFm8lu9uta', 'Iu9chJCwYg', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(11, 'Denis', 'Yundt', 'pete.farrell@example.com', '2019-07-27 19:10:41', '$2y$10$nI3X/13LhfS3CuJmm5BeBeD42sUhb0UdNm86/WQ8qd3/cK/7fRRj6', 'KU3nrh5LDE', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(12, 'Rudy', 'Considine', 'wilford.jerde@example.com', '2019-07-27 19:10:41', '$2y$10$Alq/fsmQacbfZW4icCnXdOcej4WJrwRfLGIjVzQPttc274oqvglIe', 'OBnxMyNHQG', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(13, 'Grant', 'Ruecker', 'cedrick96@example.org', '2019-07-27 19:10:41', '$2y$10$FUwnoWtffdh45IcWVXpSCuqLlYtC.NgLG37kO/Q84DDA3rDhPs4dm', 'R9iOTdK9iR', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(14, 'Vallie', 'Gleichner', 'armand69@example.com', '2019-07-27 19:10:41', '$2y$10$f/3xVCd5BZUarZZqssm7iugdpznJmGj61SM6IFPFSyrEy.NL.jzkK', '02B7tGKOB4', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(15, 'Marilyne', 'Hettinger', 'jpowlowski@example.com', '2019-07-27 19:10:42', '$2y$10$jJ.UIKQPjNPATXVoYNGEJOGsPm/b6QEvSQYR0g4wibR1iE1SlMl3.', 'WkjCVxVrvO', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(16, 'Brycen', 'Jones', 'mhowell@example.org', '2019-07-27 19:10:42', '$2y$10$njQh4kypbrTyCz89cB75Ie67XjWP7Nyl5XQZV7kcrqEubYKdSyJ1q', 'rvRxoGaUgy', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(17, 'Shea', 'Larkin', 'jakob.brakus@example.com', '2019-07-27 19:10:42', '$2y$10$.fSMgZV2vh0QxEUdbhLqIeBZrxqN/2GfkLEH9hXHioeeTtqpgbdua', '8PdDSFb6oB', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(18, 'Patsy', 'Nienow', 'dante.dare@example.net', '2019-07-27 19:10:42', '$2y$10$SHqRSLQbeEtBDjKJ8/g/XOZVsiwRLb9ETdbj2.v8SAromNWOsZ212', 'EifuYo4O09', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(19, 'Reba', 'Maggio', 'lpurdy@example.org', '2019-07-27 19:10:42', '$2y$10$1JA47z7EWIoeSJNRrnHshuadBB1dcBCf4VFTKLz27UnBaEeo8pHM6', '7cTOZyizg5', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(20, 'Rhoda', 'Smitham', 'cora.kertzmann@example.org', '2019-07-27 19:10:42', '$2y$10$t5LDlHVw266Cj9OifZN9N.BVkP/CY2ojiORUl.zPwpR/MHbhOV4IW', 'tjqRwBA6ub', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(21, 'Gage', 'Littel', 'vivien51@example.net', '2019-07-27 19:10:42', '$2y$10$1PF8hkrwE8A/PzHB4QUOj.TG.xkospgQhckx.mWU8vJpRHMcpAuVa', 'i0SwScM4qT', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(22, 'Rocio', 'Kuhlman', 'goodwin.alda@example.net', '2019-07-27 19:10:42', '$2y$10$8WZL7KH5THsKduqwN1SxyeVyu1NH4qS0nGeYWdNmuuoKquvhWu6Qu', 'FCqZUgo5Og', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(23, 'Betty', 'Dicki', 'twila80@example.net', '2019-07-27 19:10:42', '$2y$10$j1d7pLrzcGY8vF694npVB.TbarQaSTOHq0.zROI9y3Y7hH3onCD22', 'TvjWQXDWu5', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(24, 'Dayton', 'Barton', 'zrenner@example.org', '2019-07-27 19:10:42', '$2y$10$b.TcibDJWg461nCX5tGEeukVrsy.5cPqEgDrd2NxOGsBwElFg7Wkq', 'Fc98SN1oEE', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(25, 'Arne', 'Barton', 'xjohnson@example.com', '2019-07-27 19:10:43', '$2y$10$tK1yxiKqP4hyMxu1NIZIuuWa9DuSvKgTI2GMCdglSiP8TMVw/eQcK', 'FKAwXDiI08', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(26, 'Paige', 'Lynch', 'isobel.damore@example.net', '2019-07-27 19:10:43', '$2y$10$x3ByZAxvOrAcB2Rs0kkJ0uB5K3L.Pmgyj..FsUTfE02JlrNJmWYeW', 'Nm05z19yKN', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(27, 'Zita', 'Hill', 'moriah68@example.net', '2019-07-27 19:10:43', '$2y$10$4U7SeQZFDRXd2q1CCW3Clemdru3q02Fi1VsY/DAxPGWTAWyqUAQGO', 'yrRS7E7TdY', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(28, 'Savion', 'Runolfsdottir', 'clotilde76@example.org', '2019-07-27 19:10:43', '$2y$10$AZYskOOgicNiOkqPclnuOec2yDQQwSWbQKmJBz2kmEyHqMjgha.dy', '30vSEIuuN1', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(29, 'Kirstin', 'Klein', 'waino93@example.com', '2019-07-27 19:10:43', '$2y$10$0EkjlWJK8jYTys8hCSzllehIkXf3mocKF6EhQLLojYFJXJfwlt90a', 'E79zorRgm9', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(30, 'Ellie', 'Kuhlman', 'asia43@example.org', '2019-07-27 19:10:43', '$2y$10$0xsTnkNAB62/TjbWQajXUejWI46kqKggz/.ISOKRtHHLnawuwS/0.', '090DSexkGw', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(31, 'Lourdes', 'Weimann', 'aleen62@example.com', '2019-07-27 19:10:43', '$2y$10$qz4m73P7YNIxAY9bEGzjN.fpLne1YDjw/UY7GHNLQKtrroTUUa6Fe', 'QXNeaJ3tfa', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(32, 'Hester', 'O\'Hara', 'braun.arlo@example.com', '2019-07-27 19:10:43', '$2y$10$wk7LVofG8MtYV5dMzxQY1eJcBLQSqlcOEbUPSMNUmWZeUOBgM.Cku', 'TIt1lVw8U2', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(33, 'Schuyler', 'Farrell', 'kiehn.randi@example.net', '2019-07-27 19:10:43', '$2y$10$qkIfHa3ZqjDpuP0bgU/I3ulIwa9c6gqGn1/n9I5MnqmYEO6uymiQu', 'kvQDgjZqOy', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(34, 'Leo', 'Aufderhar', 'devin.rice@example.org', '2019-07-27 19:10:43', '$2y$10$WihClynXgLx8QM3KfjezGO7PxwGjS3D6j4biOrsB5S4sc/IG9ODNK', 'WvevUnRqTv', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(35, 'Consuelo', 'Johns', 'cary.mayert@example.com', '2019-07-27 19:10:44', '$2y$10$FGEptgcnRizCWghfPtROb.N3Vvm43C0cvEpQJtbRy4amg5FNFL31m', 'i9BDydfRHV', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(36, 'Tierra', 'Padberg', 'velva.larson@example.org', '2019-07-27 19:10:44', '$2y$10$rxgOT2fEx.m/33mO39eSBOICvSJ5vyx3pkWSC6K7ASMIdoDG8stzG', 'a5LXWjgdBa', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(37, 'Alena', 'Pfannerstill', 'kmarks@example.com', '2019-07-27 19:10:44', '$2y$10$89RodHyr/nHNqH2t4PZZS.7t4QWBVRU1RtsuEdFTb/r3cTNz3Z/G.', '824vpDF70W', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(38, 'Dejuan', 'Ledner', 'tpaucek@example.net', '2019-07-27 19:10:44', '$2y$10$5VIPnnSMCsfzvkWyQk32PelIQEOOF5F4txwNLKuU47/JQ9UFEgG7u', 'CnKflafxp1', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(39, 'Fanny', 'Gutmann', 'barrett.kuvalis@example.org', '2019-07-27 19:10:44', '$2y$10$egX.LLEP4rDO4nj6SYCRF.uQeEm89WgE1o6FGKI6fp6V1aGwHP9FW', 'jqHCvwpCsy', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(40, 'Taurean', 'Koch', 'lillian.streich@example.com', '2019-07-27 19:10:44', '$2y$10$atTM12cM0QxxcqwLzANf5OKsLwWDnxg7mzbbzx38ewD4uaVS/TfaO', 'CcZJwJaeOl', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(41, 'Wilford', 'Renner', 'raegan89@example.org', '2019-07-27 19:10:44', '$2y$10$Kb0Xwad6SUU2f2kBnW47sOb0elnoNCrJpAyRD6Z8gAah3Q0JPuQVq', 'AIAs4Et0SO', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(42, 'Kaylee', 'Hammes', 'aurelia03@example.com', '2019-07-27 19:10:44', '$2y$10$R.gqsoZoXrwQLsD06NeCieF5HRJoSiESyzur0hoxQtNu/ze0MJr/q', 'ENBcCak6Yp', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(43, 'Mohammad', 'Lebsack', 'donny04@example.net', '2019-07-27 19:10:44', '$2y$10$SvAdRGBNmn1fSzMKYhsmXOA0q1fKmuQg4B6VZTNYLPywpHAsTtWFS', 'GoV9OeBBYE', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(44, 'Korey', 'Harber', 'riley16@example.com', '2019-07-27 19:10:44', '$2y$10$MwHMqQrm4ZTJrdOUJBEFt.J.cRMkbxtjaRdkj8UQPHeEDTMglvn0G', 'Qj5CvyWFgv', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(45, 'Leone', 'Goyette', 'nwalsh@example.net', '2019-07-27 19:10:44', '$2y$10$0at3qtiueBLdsNUfYQUUcuFTNlhKVRNfooce0MriUcTNRAw6fvmGO', 'nGbIFgGYfc', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(46, 'Otto', 'Schuppe', 'renee.damore@example.net', '2019-07-27 19:10:45', '$2y$10$DNthqOMVmi6VKUdLGjCQleO8i/K8rtreeHfxglMayIEQj/RgD2Mwq', 'QUf6nTSoMG', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(47, 'Angelo', 'Ziemann', 'jermey.pfannerstill@example.net', '2019-07-27 19:10:45', '$2y$10$JHvwYytIbkQ34bKN6aaxyeUqEej7lbxZEqVrYdqPhegMbf06.TMmu', 'tnhMrIRQva', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(48, 'Rose', 'Yost', 'ramiro.mann@example.com', '2019-07-27 19:10:45', '$2y$10$Q4yf/51K8JQOLxgzt59SAOtOCdsWqiubY4.16PKtfiOyTTq6vqV0i', '7M00Hth45O', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(49, 'Catherine', 'Greenfelder', 'gracie.emard@example.com', '2019-07-27 19:10:45', '$2y$10$JNg7TwMfyj6syckZ9.MVeOunfbL4XhrsS6VhnIExLBjBo9YHZt9zG', 'eKPKrcesPc', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(50, 'Adrien', 'Senger', 'alexandra.bauch@example.org', '2019-07-27 19:10:45', '$2y$10$18B5DB4Ooe6BwjIobgJJJu03ask/9YcKJDb/o/6o7Botiu2UOQoJq', 'JeqvTDliih', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(51, 'Raymond', 'Wilderman', 'kilback.zoe@example.org', '2019-07-27 19:10:45', '$2y$10$fXMSLaTD9RbnSupCnhlfcuWR4jXWzqYlCp2Y11TI2.sKBdzOTvvKq', 'cL9sCGcT1B', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(52, 'Adalberto', 'Walsh', 'marisa.robel@example.com', '2019-07-27 19:10:45', '$2y$10$zDHWMzNwOswKp7x6gm0zD.OBSyIar0F73vsNTNNsg217RCZOpx8EW', 'jeOnW1nqFC', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(53, 'Adriana', 'Brekke', 'bwunsch@example.net', '2019-07-27 19:10:45', '$2y$10$86GywJsoRT2rHfQNfBURN.txw/bOqvbBHoRwiAl/MoSsQAUjrN8w6', 'Sqi0lO1Xfo', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(54, 'Brian', 'Prohaska', 'brice15@example.org', '2019-07-27 19:10:45', '$2y$10$MGmepXUnYR8.0N/q.iEiSubjbo7OtLGuVds0MI5JaymA/M27yBKIO', 'lvKyVfrT6U', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(55, 'Brooke', 'Gulgowski', 'koss.erica@example.org', '2019-07-27 19:10:45', '$2y$10$pHG4LeDRXF/uuZfiSKd4FeYv4Lo9UuVTe.z3Eihc.KO0J.fsx0lzK', 'IAp3N7JfgH', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(56, 'Bradly', 'Lindgren', 'erau@example.org', '2019-07-27 19:10:46', '$2y$10$2J1GPXcm8rjYJuk7lTWHReXx7boXhaf3DY8csQLTJLR2zHikugFVO', 'J09lJaz9En', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(57, 'Amalia', 'Walsh', 'emard.nella@example.net', '2019-07-27 19:10:46', '$2y$10$1hCvoVWJnSbf2xqxVm3MGeuS25y4CYbX7ZH3EdPIfVKBWuUKw8KhC', '8b4ChFya7F', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(58, 'Manuela', 'Larson', 'alessandra40@example.net', '2019-07-27 19:10:46', '$2y$10$b.u9jAb9uEa71FV4.fJq.OOnsZOwPajwXTVue1q9Z2d2QYIKvvJ9a', 'VM3wUwiAhQ', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(59, 'Isaiah', 'Jacobi', 'ucollier@example.net', '2019-07-27 19:10:46', '$2y$10$mjnIY4JM1xRaP3Xg.0ER4u8fWA8NPr4HAidQy9TGm6SsH1a1PBR6C', 'SPkHnNMHGs', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(60, 'Isadore', 'Wisoky', 'nicolette.cassin@example.org', '2019-07-27 19:10:46', '$2y$10$jU.K0RUI0egup9Rq313Z4OupU6P3jsi6xN3wshus9ivnpZ7wmUKfW', 'ZZAgFABp8n', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(61, 'Immanuel', 'Borer', 'noemi27@example.org', '2019-07-27 19:10:46', '$2y$10$xcekcSMur.cNErWwdrZG9eKx2eAu0el4VasYvleUXqe8ywlLiLwJS', 'DlEFg9anGX', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(62, 'Cary', 'Lind', 'emilio.tillman@example.com', '2019-07-27 19:10:46', '$2y$10$MXZ1b1CvhZ0hVQhaWLTuBeTkDM3qds0ay7bROZAU4HAi7pkt1Yglq', '1pvP9QnMdq', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(63, 'Adaline', 'Emard', 'iroberts@example.net', '2019-07-27 19:10:46', '$2y$10$a9FOe/qa2HaQQ8ZedFRiMebCwU/6cXulMjofa2S2Lg244A2vzwaz2', 'VHtq3LKQKT', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(64, 'Triston', 'Halvorson', 'edwin.gulgowski@example.org', '2019-07-27 19:10:46', '$2y$10$49oln2trx1SjSJ9XysCFTexBdM2FzN34cveAlQEr.TiODy/ttLWpW', 'gyq1Q817rs', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(65, 'Noemi', 'Hoeger', 'gutkowski.newell@example.org', '2019-07-27 19:10:46', '$2y$10$iXxtKWm4t4wwaUX6lmNuje4cPR094/T3Oodb5KmIce9D5F80VDyYK', 'rA3kT3vHRM', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(66, 'Kelvin', 'Zemlak', 'bwiegand@example.com', '2019-07-27 19:10:46', '$2y$10$0eAhEf1SHoxrI5KwVzyKNu04zDQzavOb9bhWLuzyzLdeWlubk.KLO', 'pfv5sWgZdB', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(67, 'Sabrina', 'Bahringer', 'sandy42@example.com', '2019-07-27 19:10:47', '$2y$10$8d8swecLqRpc5rWRxAyluOQUL7lcSfwwV25kVLgxezbuOynT7H3dO', 'db1Hp3v53h', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(68, 'Shaniya', 'Rath', 'hmurazik@example.com', '2019-07-27 19:10:47', '$2y$10$gFr9fvwO4SulYT6oDqjDRe7HGtODa7mnOevAiCyX2uOPcwGPFXFGG', 'nnkFTSo7XE', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(69, 'Maddison', 'Bartoletti', 'mustafa22@example.com', '2019-07-27 19:10:47', '$2y$10$8Z2F/gmlFKTz69SdVGBu1.C/1xf7jedx1gAytSPYHDVdtzIlV5fHa', 'KJmeZ2XEa4', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(70, 'Imogene', 'Schimmel', 'dock98@example.net', '2019-07-27 19:10:47', '$2y$10$SnagITe7lTvuprPldoGkwOFijkI3mRmoqjwI7k3.MQInUd.nv5Yee', 'Kl0h9TNZ3h', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(71, 'Katlynn', 'Schinner', 'marks.blaze@example.org', '2019-07-27 19:10:47', '$2y$10$iVsSDTLLlWV06sBKFwPvQOgm3VYrHh6gNBk83Ukd8EkUukt4r1Pm6', 'IgirPltS2d', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(72, 'Tom', 'Jones', 'rubie66@example.com', '2019-07-27 19:10:47', '$2y$10$UcDNOrEpx/D/mThXmoYuq.hoMtdkzLFhgUR8rxhPxx/PtddPytfXi', 'NVKrZw8JB7', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(73, 'Everardo', 'Kreiger', 'oconner.quinton@example.com', '2019-07-27 19:10:47', '$2y$10$C1uO.4Dxtw94ORnDabU9z.OJZRS9PrSW2EwmJtCpQpRnVc51hrKly', 'YYl8WVg1F2', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(74, 'Raleigh', 'Bailey', 'hermiston.jeffrey@example.com', '2019-07-27 19:10:47', '$2y$10$Mq2pkHJ8iTaAgbaweJYSOOqGzbY8a8CroN09e/ezc/3VA79QEPOqO', 'EIs1lrob46', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(75, 'Lonnie', 'Skiles', 'streich.harmony@example.com', '2019-07-27 19:10:47', '$2y$10$rafJ9NeGgUfl3gHHlDZLmuEhx3ddX5CaY9I/tV/PPzI7Lf0a7IbCi', 'KAMzeBGH55', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(76, 'Destin', 'Johnson', 'aniyah.kautzer@example.net', '2019-07-27 19:10:47', '$2y$10$FycmBcBzLNB0SN0wTvzJQeEVIKcIFuUYBfsc4Fjz5n8m0qdTC90Di', 'IlvpZvsLut', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(77, 'Bella', 'Hudson', 'torrey.gutkowski@example.net', '2019-07-27 19:10:48', '$2y$10$rvKtxV3/ZeT43VtP7T3zP.opAaMd4gn/EilibbYM4OUkzGft9kFBa', 'RqlRDOui93', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(78, 'Matteo', 'McDermott', 'name77@example.net', '2019-07-27 19:10:48', '$2y$10$bwPwyV14vUwd0.0c9S03a.8Q1a79eJCcmQgbhYQ2Yt.2lwfI.KvBm', '8bhPIiBN5S', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(79, 'Norberto', 'Kihn', 'jayne.hilpert@example.net', '2019-07-27 19:10:48', '$2y$10$m07bqS3gKG61krcIxGyUYOPw57sARpMc13P0cS4Jm8/tqjWqFibvy', 'usehAmEhRC', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(80, 'Onie', 'Block', 'rae18@example.org', '2019-07-27 19:10:48', '$2y$10$2NVNdIQSIAr4RjZ5O.lOC.ZlxE0DjWzlStOJWJj2W7T2vLMasmuF6', 'nb7b6UxaJN', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(81, 'Trever', 'Crist', 'abigayle59@example.com', '2019-07-27 19:10:48', '$2y$10$JAg.6/fTh.PVahPHicvAKeM4S5tOo6dIKXRFwiBSu/RcESiZSoHZ6', 'eKXbWzT54i', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(82, 'Gussie', 'Erdman', 'parker.wisoky@example.org', '2019-07-27 19:10:48', '$2y$10$.Mee4tXrw2izUTdKF4lB8.FjTyh4aq.rP0W8H.LGUEagzi/F1YHAu', '4Hl0ipxufZ', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(83, 'Freddie', 'Kovacek', 'pschultz@example.org', '2019-07-27 19:10:48', '$2y$10$tcgfsHiPwQfIKKCNEoAR6eFTrGMcjt7DUh941HP4y7z6omtaYaFXK', '8NxgXEYAHh', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(84, 'Susanna', 'Toy', 'rconn@example.org', '2019-07-27 19:10:48', '$2y$10$9.gbLbR04VMpjP9L4lGey.UZBDEAbzJpe/jWebF4vcNTbYBNn4fNK', '0wdJRHA1gV', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(85, 'Tabitha', 'Lehner', 'vwintheiser@example.net', '2019-07-27 19:10:48', '$2y$10$jCAxDYdDxUXa/gVwxSvkb.wxwPlHl/pEHTOn2F.r3d.ll4xHbCdO6', 'tD5t6953eV', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(86, 'Deontae', 'Gulgowski', 'erin95@example.org', '2019-07-27 19:10:48', '$2y$10$xljed1FrMtRYdapq42V12eRWt.CyIxy7e65GorKbPZlqdNt4C0xPS', 'Z0lp9dUcIg', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(87, 'Terrence', 'Bashirian', 'jennie.dibbert@example.net', '2019-07-27 19:10:49', '$2y$10$fmtUJxy0Au6RqFfH/CCugeVO6AJtSZsNHtxJ5bJLnGgHh2sl3YrUK', 'Hd71hriCvt', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(88, 'Michaela', 'Mitchell', 'forest.fisher@example.net', '2019-07-27 19:10:49', '$2y$10$zH6G/gLQq5ofazzsceqKhOYRolo5f4Ojku7z08h6Gu6fJc/bQqC3u', 'pb4tq8eALg', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(89, 'Reba', 'Smitham', 'waelchi.benedict@example.com', '2019-07-27 19:10:49', '$2y$10$qqwhRaQ6ndBAHijZa/PmWuHgma1zEflTSYEn.NJgSvUVvyeeY8KqC', 'dB20mKrHQY', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(90, 'Juliana', 'Funk', 'melany.leffler@example.net', '2019-07-27 19:10:49', '$2y$10$cmZLFjST0MLRZO9w4Va7hOr.Q5oP2rZ7g98ZM57Jt3eCKV0FOXnEa', 'gh3favnw2q', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(91, 'Burnice', 'Hermiston', 'schulist.ibrahim@example.org', '2019-07-27 19:10:49', '$2y$10$i/RjIXSekC0HrwcqbbbKhuwWmuIf5ilSp/YQ4dx21WUgO///fHwcG', 's9PqqrTOTf', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(92, 'Arne', 'Wolf', 'fsawayn@example.com', '2019-07-27 19:10:49', '$2y$10$XgK4ohBYvAxst5tlsWI2ueEBxaw7zP9GkXIG1ZCBk.UjJ79KUi2o2', 'xsfVB7Jsbe', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(93, 'Sherwood', 'Schultz', 'casandra.fritsch@example.com', '2019-07-27 19:10:49', '$2y$10$MgvoP3abLj8yS6ak6bzCneOFPlM0DikIgHVi9kKxYSnf6oK8LbMUW', '6HmYwY1Jxu', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(94, 'Gus', 'Trantow', 'witting.simone@example.net', '2019-07-27 19:10:49', '$2y$10$uC7QUm0ISamSVmYp6kb3b.Wa8F4UFceriUlUcJy7LC.u3274KwddG', '098Akkd7HM', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(95, 'Janessa', 'Rolfson', 'johns.morris@example.com', '2019-07-27 19:10:49', '$2y$10$bquuylDgMXz6z61QvowuX.A8o9TDef5UB518Mj9xV9ETDJJaQ54kS', 'LiXF645CTW', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(96, 'Makayla', 'Flatley', 'vernice.kassulke@example.org', '2019-07-27 19:10:49', '$2y$10$EQihiT.11KQtVnly8qtake/5/q1S5k/EZCZwSh/jN9jb4vZZqar.G', '8b6T5ZyAUN', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(97, 'Xzavier', 'Nitzsche', 'else.gibson@example.net', '2019-07-27 19:10:49', '$2y$10$XgQWwMTaDtiTrgmMLPOUC.cQyfiTr5Mn.Gl4oFEu/AuA4VAnZ1JPq', 'PzWkYtgoBF', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(98, 'Leland', 'Paucek', 'mabel24@example.org', '2019-07-27 19:10:50', '$2y$10$1dXbgli2r4kTlnqqtZbao.7FJRMrzm4BT9QXmY5gm3rjDp/pag.yi', 'rTkMEDUwJy', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(99, 'Dessie', 'Abernathy', 'lnikolaus@example.org', '2019-07-27 19:10:50', '$2y$10$Em90oaG4TKksDYKhSDPSceTDAm7SgPYQalmbel6sLhjwplCwjxpR.', 'mA1PMgBWAI', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(100, 'Hillary', 'Glover', 'roob.viviane@example.com', '2019-07-27 19:10:50', '$2y$10$FmbAWtQu3GWCYJNtwnmnU.e4FpquZHJ5FESbPF33aa4Y2orP8IG2W', 'eDPVGoJScy', '2019-07-27 19:10:50', '2019-07-27 19:10:50'),
	(101, 'Micah', 'Cummings', 'yasmeen89@example.com', '2019-07-27 19:10:50', '$2y$10$dtMnrKn8xWSTNVIyRoHdcey2thhmcxpLiPQwpZBAazVpKrDqxyhzG', 'IIxr9IOIR5', '2019-07-27 19:10:50', '2019-07-27 19:10:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
