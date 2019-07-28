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

-- Dumping data for table lara-advance.posts: ~10 rows (approximately)
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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
