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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.attendances: ~1 rows (approximately)
DELETE FROM `attendances`;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
INSERT INTO `attendances` (`id`, `user_id`, `punch_in`, `punch_in_ip`, `in_note`, `punch_out`, `punch_out_ip`, `out_note`, `working_time`, `created_at`, `updated_at`) VALUES
	(1, 1, '2020-04-04 16:33:58', '127.0.0.1', NULL, '2020-04-04 16:34:02', '127.0.0.1', NULL, 4, '2020-04-04 16:33:58', '2020-04-04 16:34:02');
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;

-- Dumping structure for table lara_advance.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.categories: ~10 rows (approximately)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'necessitatibus', 'necessitatibus', '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(2, 'cum', 'cum', '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(3, 'officia', 'officia', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(4, 'est', 'est', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(5, 'in', 'in', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(6, 'quas', 'quas', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(7, 'aliquam', 'aliquam', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(8, 'nobis', 'nobis', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(9, 'ipsam', 'ipsam', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(10, 'nostrum', 'nostrum', '2020-04-04 16:31:31', '2020-04-04 16:31:31');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.documents: ~3 rows (approximately)
DELETE FROM `documents`;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
	(1, 'Nihil iure est aspernatur delectus.', 'Quo est at rem recusandae ab sit nihil. Eos qui inventore omnis sunt et vitae. Voluptatem vero optio magni porro vero qui temporibus.', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(2, 'Ea dolorem accusamus voluptates hic.', 'Error dolorem asperiores ut voluptates optio quo. Reprehenderit enim aut sit blanditiis nobis. Odio eaque eum ut voluptates corporis. Reiciendis est sunt culpa aut.', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(3, 'Nobis est ut ipsam odio.', 'Atque aut exercitationem veniam enim fuga. Dolor expedita delectus sed. Quia aliquam accusamus deleniti unde ut dolore fugit. Quasi in dolores amet tenetur eum.', '2020-04-04 16:31:42', '2020-04-04 16:31:42');
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
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.lessons: ~500 rows (approximately)
DELETE FROM `lessons`;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` (`id`, `title`, `body`, `views`, `length`, `difficulty`, `created_at`, `updated_at`) VALUES
	(1, 'Voluptas veniam repellendus quidem quidem ab necessitatibus occaecati quidem.', 'Non a ut omnis doloribus quasi a dolore quisquam. Velit mollitia omnis eius sed itaque aperiam quis. Ab non nobis velit modi enim autem inventore vel. Mollitia sequi quod dolorem placeat unde quia illo tenetur.', 2536, 2643, 'Intermediate', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(2, 'Quaerat recusandae fugit mollitia.', 'Aut et sed nisi dolores quo ut sit. Rem vitae molestias perferendis ducimus autem aut sequi. Et est ab consequatur.', 2827, 2519, 'Intermediate', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(3, 'Aliquid occaecati culpa ut mollitia.', 'Perspiciatis omnis neque ut sapiente corrupti assumenda. In a possimus unde nulla consequuntur repellat aperiam corporis. Iusto voluptates dolore provident voluptate porro tempora. Eius iure nihil saepe quae quae.', 1535, 2844, 'Advanced', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(4, 'Magnam et natus labore alias fugiat.', 'Natus sequi sint eos atque. Ullam et aliquam exercitationem eaque minus. Quo id doloribus sapiente. Ratione molestiae ad enim repellat.', 3168, 1339, 'Beginner', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(5, 'Assumenda molestias voluptatem suscipit.', 'Unde reprehenderit sunt aliquam omnis. Et iste sunt vel commodi doloribus aut exercitationem ea. Quo quaerat aspernatur incidunt dolores. Hic ex quibusdam repellat fugit est in velit.', 1011, 2047, 'Advanced', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(6, 'Ut voluptatem aut esse consequatur qui sit ea est.', 'Distinctio voluptas nulla et dolorum earum. Reiciendis aspernatur eos veritatis qui.', 1347, 1081, 'Intermediate', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(7, 'Assumenda aliquid consectetur consectetur.', 'Illo aperiam quia nihil doloribus ad molestiae esse. Laborum quia voluptas id repudiandae et. Sed aut et voluptatem est deserunt ut animi molestiae. Quam est architecto ab atque beatae beatae.', 2950, 3581, 'Advanced', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(8, 'Est aut cum enim eum.', 'Voluptate quia eaque laborum nulla laudantium accusamus deleniti. Sed praesentium in ratione molestiae. Error sed tenetur est quia id sint. Dolorem sunt iusto rerum debitis ut a dolorum. Accusantium architecto quas quod fugiat sint.', 2108, 1275, 'Beginner', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(9, 'Nesciunt natus consequuntur minus vel error sit.', 'Iure laborum quo quia nihil blanditiis. Ut eaque hic distinctio et eaque consequatur. Officiis ipsam excepturi rerum expedita.', 2407, 2476, 'Advanced', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(10, 'Est laborum voluptas magni impedit vel labore perspiciatis quasi.', 'Ab iste optio laudantium ducimus incidunt unde. Aut est maxime rerum sunt adipisci omnis minima. Eos facere id odit labore. Aspernatur sed voluptas amet quae debitis vitae accusantium.', 2184, 1324, 'Intermediate', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(11, 'Ut animi fugit repellendus aliquam aut eum ea.', 'Saepe iste incidunt odio blanditiis et rem sunt error. Dignissimos et commodi qui dolorem quos nam. Maxime quae sint et dolor perspiciatis eum et. Officiis dolores expedita veritatis et velit illum et.', 2509, 3083, 'Advanced', '2020-04-04 16:31:42', '2020-04-04 16:31:42'),
	(12, 'Quasi provident illum quisquam alias laboriosam quas.', 'Facilis quibusdam consequatur consequatur quia et laborum. Similique est voluptatem voluptas aut eum molestiae asperiores. Aut saepe aut itaque porro necessitatibus est molestias. Perspiciatis nihil et quia. Culpa ducimus voluptas quisquam natus velit.', 3841, 2804, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(13, 'Omnis nulla odio aut numquam id.', 'Quidem fuga qui maxime et vel. Saepe doloribus et ut debitis vel. Voluptas ut et excepturi consectetur voluptatum.', 3399, 1939, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(14, 'Excepturi est ullam delectus aut.', 'Praesentium ex pariatur adipisci. Vero delectus autem dicta.', 2179, 3857, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(15, 'Et doloremque dolores omnis sit rerum adipisci aut.', 'Saepe eos accusamus qui et sit nostrum explicabo magni. Et est sunt in eos fugiat eum a. Odit atque perspiciatis corporis culpa labore voluptatum. Deserunt voluptatem totam autem magni aspernatur ipsa numquam earum.', 3949, 1367, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(16, 'Ut explicabo enim suscipit.', 'Et id officiis nostrum non vel. Excepturi nemo tempore sint sed dicta veritatis. Vero itaque repellendus consequatur.', 1085, 3850, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(17, 'Ut pariatur magnam itaque commodi consequatur praesentium et.', 'Neque deserunt enim et et repudiandae aut. Neque aut aspernatur voluptatem rerum ullam quam quo. Et dolore eum et recusandae. Vel id ut id est alias.', 4843, 2764, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(18, 'Aut quo illum omnis labore delectus nisi sunt.', 'Consectetur labore dicta iusto quidem illo numquam modi excepturi. Officia similique nam tempore doloribus molestiae odit consequatur molestiae. Eaque ut voluptatem quia sit tenetur omnis at.', 3213, 3825, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(19, 'Non hic optio numquam ipsa.', 'Quis eos voluptas voluptas repudiandae iusto fugiat. Occaecati facilis illum corporis hic tenetur omnis aut autem. Iste reiciendis ut sit consequatur ut quae.', 4863, 2460, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(20, 'Porro et labore et laborum culpa maxime saepe odit.', 'Consequuntur illum quos at rerum et. Voluptate quos quia saepe numquam non. Vel ut qui a pariatur.', 4693, 623, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(21, 'Culpa et quos similique.', 'Asperiores reprehenderit est laborum accusamus sed. Aut natus fuga tempora nesciunt aperiam beatae sed libero. Consequatur ad sed recusandae velit repellendus labore et. Ea sit incidunt ex autem laborum sequi distinctio. Temporibus dolores sequi consequuntur repellendus asperiores esse saepe.', 3993, 1980, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(22, 'Fugit et autem pariatur vel.', 'Rerum eius excepturi ea enim quasi numquam reiciendis. Culpa repudiandae quos rerum deleniti dicta. Veniam rerum sed quod.', 1206, 1812, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(23, 'Nisi iusto iusto doloribus ut.', 'Voluptatibus odio reiciendis quia qui velit aut cumque praesentium. Ut atque impedit dolorem rerum rerum unde inventore. Ipsum voluptatum nihil voluptatum nemo et vero illo.', 2949, 583, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(24, 'Ea asperiores eaque molestiae est voluptatum non.', 'Animi et nostrum tempora nobis nemo occaecati. Sunt natus est nostrum ullam provident iste ea. Suscipit aut dolores et nemo.', 3354, 2091, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(25, 'Id ut aspernatur aliquid assumenda quidem reprehenderit.', 'Eveniet quaerat nihil ut consequatur tempora. Rem saepe qui nesciunt vel. Inventore molestiae sed fugit nostrum. Ea assumenda officia odio non accusamus. Est nobis nam nihil id delectus est.', 3871, 1835, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(26, 'Aut vel sint odio qui in ducimus.', 'Id laudantium minima est. Ab quos non dolor commodi incidunt. Atque iusto odio eos laborum minima.', 4880, 2775, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(27, 'Occaecati et doloremque nostrum.', 'Consectetur ut voluptas nemo aut qui dolor. Cumque nulla eos amet ducimus et omnis. Reprehenderit voluptates molestiae eaque iusto inventore et et non. Nulla ut voluptatibus illo aut temporibus non quo.', 1182, 1441, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(28, 'Laborum ea quo animi nulla ut.', 'Sunt suscipit dolore eius dolor aspernatur. Non hic molestias rem illum minima autem explicabo ea. Commodi aut magnam enim.', 2642, 701, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(29, 'Laboriosam ad tempora voluptas culpa consequatur.', 'Deserunt ea nulla qui deleniti fuga neque. Quo quas ut blanditiis porro.', 4997, 3402, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(30, 'Ut ducimus nobis rerum dignissimos.', 'Reprehenderit perferendis et eum iusto. In blanditiis vel repudiandae aut eos beatae. Eligendi sunt eum quae corrupti minima illo.', 3555, 708, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(31, 'Explicabo quaerat ipsum maxime consequatur alias quo exercitationem.', 'Quia maiores repellendus ut deleniti distinctio. Corrupti voluptatibus provident quidem illum tempora ad. Tempora rerum rerum reiciendis hic est praesentium dicta. Eum eum neque qui facilis corrupti est esse.', 3189, 3668, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(32, 'Optio consequatur consequatur sunt.', 'Animi qui necessitatibus exercitationem sequi iusto id debitis. Praesentium velit pariatur fugit asperiores sed saepe. Vel et sint voluptatem aut.', 2094, 2017, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(33, 'Architecto rerum quos tempore necessitatibus molestiae corporis eum.', 'Dolor mollitia quas eius quaerat odit. Quos tempore velit similique excepturi iste. Libero quia asperiores at a sit dolorem qui. Sint incidunt aperiam ratione sint velit.', 3443, 2570, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(34, 'Vitae blanditiis et fugiat aut soluta ut corrupti.', 'Velit vel facere ex. Consequatur velit voluptatem voluptatibus. Sed eligendi sint magni cum. Eos adipisci harum sit nemo.', 1896, 1481, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(35, 'Est saepe sed voluptatibus vel vel voluptatem ut et.', 'Aut quo sed ipsum pariatur aperiam ratione dolore modi. Pariatur blanditiis ut nam voluptatem necessitatibus labore. Et vel tenetur dolorum sunt velit expedita. Modi velit dolorum modi culpa accusantium voluptas. Qui quo ea sapiente amet non ut dolore.', 3225, 1928, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(36, 'Voluptatum sint rem animi corrupti eum hic est.', 'Et molestias recusandae molestiae fuga qui eaque. Voluptas eum et aut omnis blanditiis suscipit. Atque sed minus debitis porro et nostrum qui. Aut quia reiciendis nemo nihil molestiae.', 2326, 1871, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(37, 'Quia quos dolorum vel quisquam quis earum.', 'Voluptatem rerum eveniet est eveniet aspernatur natus. Accusamus optio numquam velit corporis aperiam est. Consequuntur error quam asperiores omnis nulla tenetur.', 1418, 3277, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(38, 'Enim quis aliquam omnis sed corporis eveniet.', 'Totam dolores maxime ut optio quisquam. Voluptatem eveniet deserunt sint repellat. Libero voluptatem necessitatibus odit animi quisquam qui dolor. In quis iste aperiam omnis ut earum. Deserunt facilis beatae voluptatem eos et.', 4826, 1283, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(39, 'Hic officia porro molestiae in tempora.', 'Facere excepturi omnis voluptatem. Illo qui aliquid optio officia non facilis. Veritatis alias quibusdam laborum molestiae. Facere corrupti voluptas odit ratione et quidem minima.', 3277, 3342, 'Advanced', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(40, 'Et nihil nihil ducimus quas reprehenderit.', 'Exercitationem voluptatem maxime voluptas. Velit qui voluptas delectus qui iusto omnis. Qui dignissimos et ea labore odit qui totam. Nisi fugit hic quasi nemo distinctio culpa.', 2461, 1467, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(41, 'Minima suscipit ducimus autem sit maiores qui consequatur.', 'Nulla enim occaecati sit. Praesentium veritatis non sit omnis tenetur iure. Ab eligendi consequuntur qui eos quo culpa.', 865, 3394, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(42, 'Ut architecto aperiam eum id.', 'Natus est at error mollitia laborum quam dignissimos. Et aut nihil ut rerum quae alias qui. Et minus earum minima sunt voluptatem sed nemo. In a soluta sint inventore.', 4394, 2073, 'Intermediate', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(43, 'Nobis voluptatem expedita at maxime unde dolorem recusandae.', 'Natus at sit rerum velit. Officiis et est eligendi quam. Qui consequatur atque vel magnam similique cum sunt. Rem consequatur voluptatem voluptas.', 4660, 3649, 'Beginner', '2020-04-04 16:31:43', '2020-04-04 16:31:43'),
	(44, 'Ut aliquam atque iusto maiores quis qui nam voluptate.', 'In aut non deserunt qui velit dolor. Ducimus explicabo necessitatibus officia fugiat ducimus alias. Hic et tempore sapiente ducimus.', 4595, 3075, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(45, 'Sed in tempora dicta temporibus ratione.', 'Numquam natus aliquam aperiam. Fugiat id iste rerum ipsa dolores ut aut. Iusto voluptate iste omnis ea sunt.', 2548, 2585, 'Beginner', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(46, 'Sed et atque laudantium aut magni similique.', 'Autem ipsum numquam et velit delectus et excepturi quia. Minima reprehenderit nemo fugit dolorum omnis aut eligendi. Explicabo non pariatur voluptatibus aut ipsa.', 1530, 3942, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(47, 'Voluptate est sequi rerum id eius.', 'Quia hic rerum provident minus tempore quos quaerat. Dolorem architecto voluptatem perspiciatis enim et facilis. Aut et dolore et.', 2520, 2160, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(48, 'Maxime eligendi et quia dolore nihil accusamus.', 'Velit quibusdam itaque debitis incidunt. Veritatis omnis asperiores et voluptate et molestiae. Ut cumque voluptas magni.', 2918, 2512, 'Beginner', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(49, 'Sed nulla officia consequatur expedita consequuntur quibusdam.', 'Quod quibusdam itaque quae dignissimos. Quas qui ratione natus sed. Excepturi illum iusto voluptate sint ut. Ex magnam nemo eaque voluptatem.', 1455, 2853, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(50, 'Praesentium recusandae cupiditate magnam occaecati et.', 'Minima rerum vitae omnis pariatur. Consequatur quod ut eligendi adipisci ea. Voluptatem qui omnis commodi aut. Recusandae inventore eaque veritatis enim officiis sit maiores.', 1910, 1672, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(51, 'A modi enim et fugiat quasi.', 'Eligendi autem autem sit error incidunt aut voluptatum. At aut sequi sint rem. Mollitia distinctio iste eum quod et alias id magnam. Omnis molestiae et consequatur assumenda ipsam explicabo ipsum maxime.', 4891, 656, 'Beginner', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(52, 'Asperiores possimus et consequuntur possimus.', 'Magni sapiente laboriosam sequi ut quod quae laboriosam. Eum aut est rerum expedita culpa delectus officiis cum. Quod aut et beatae sit quis aliquid rerum. Temporibus laborum nostrum reprehenderit accusantium fugiat.', 2694, 2858, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(53, 'Officia ea et velit eum sint.', 'Quae velit id rerum illum. Consectetur qui voluptatem et sint. Ipsa dolorum qui debitis sint provident consequatur nulla. Beatae rerum laboriosam ipsa exercitationem et. Voluptatum recusandae quia tempora excepturi.', 4204, 1167, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(54, 'Quia occaecati nam dicta impedit.', 'Quia tempora vitae et voluptatem. Animi aut sit ex dolores magnam. Explicabo molestiae eum numquam amet voluptas ut.', 1277, 834, 'Beginner', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(55, 'Adipisci in ex omnis doloremque temporibus.', 'Rerum iure commodi ea dignissimos nam aut saepe. Id eos natus et soluta corporis. Consequatur quaerat reprehenderit aliquam ut alias iusto in.', 1357, 1215, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(56, 'Dolores voluptas et placeat sed.', 'Totam id consequuntur est eaque magni. Voluptatem quod eius voluptas nisi et velit natus est. Temporibus rerum a et fuga. Ea in ab facilis voluptatem voluptatem fuga.', 2919, 1483, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(57, 'Ratione vel et qui blanditiis incidunt.', 'Quos aut tenetur nemo. Et omnis officiis consequatur eos doloribus. At et esse deserunt dolores sint. Dicta officia sint labore nobis et.', 2946, 2056, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(58, 'Repudiandae autem culpa molestias rerum impedit.', 'Et vel modi dolorem veritatis labore quos. Voluptas omnis blanditiis perspiciatis voluptatum nam. Soluta minima quis ex doloremque eum explicabo rem eos.', 2586, 3682, 'Beginner', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(59, 'Sit dicta esse rerum necessitatibus.', 'Dolores nesciunt ut molestiae aliquid. Earum consectetur asperiores maxime vitae tenetur. Et dicta error quo nisi quo.', 4153, 908, 'Beginner', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(60, 'Ut laudantium mollitia error officia.', 'Optio suscipit nostrum saepe sunt accusamus repellendus. Ut maxime dicta et qui ipsam. Dolor ut fugiat quis modi mollitia temporibus.', 4261, 2247, 'Beginner', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(61, 'Accusamus blanditiis eius in sapiente.', 'Quas ipsam et mollitia quaerat dolorum est. Dolores et omnis sunt deserunt quam sed aut. Eaque nemo optio sapiente fuga ut nobis ab. Laudantium quod qui incidunt ut.', 3682, 1456, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(62, 'Modi fuga eaque sed natus ex optio.', 'Ab nobis similique voluptas repellat autem qui. Error eligendi sapiente dolor fugiat eum quam. Excepturi perferendis harum vel ut sit distinctio. Iusto magni enim tempora ex.', 1288, 3281, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(63, 'Nulla amet animi ea aspernatur.', 'Qui vitae iusto sunt. Id pariatur repudiandae rem ipsa porro libero eius et. Eaque voluptas consectetur sunt ducimus sequi. Nihil commodi ut consequatur molestias.', 4132, 1543, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(64, 'Quod itaque eligendi alias eum sunt omnis.', 'Tempora enim aut vero eligendi nihil ut voluptas. Eos enim qui assumenda dicta beatae non ullam accusantium. Sequi quia magnam quis sit velit.', 3444, 2222, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(65, 'Adipisci repellendus rerum similique.', 'Cumque deleniti quidem nobis eaque. Recusandae error labore animi fugiat nemo aut consequuntur. Dolores quibusdam voluptatem laboriosam harum est mollitia.', 3390, 1770, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(66, 'Veritatis et fugiat ipsam pariatur.', 'Inventore voluptatem numquam quia nisi eaque. Aspernatur minima dolore pariatur expedita. Ea ratione tempore est reprehenderit perspiciatis.', 2681, 590, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(67, 'Voluptate consectetur est ullam consequatur.', 'Labore sed rerum maiores voluptas temporibus explicabo enim quidem. Et commodi necessitatibus omnis. Sapiente reiciendis nostrum corrupti ut.', 954, 535, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(68, 'Eos minus et facere vitae eos cum.', 'Autem rerum saepe non perspiciatis voluptatem iusto sequi nostrum. Et adipisci sit quia non praesentium dolor nulla. Veniam quaerat quis incidunt. Asperiores dolor quas asperiores corrupti eos rerum consequuntur.', 3263, 840, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(69, 'Quo nemo quaerat quam ea minima error qui.', 'Vitae animi dolor nesciunt provident et quis quod. Voluptatem voluptas et est tenetur. Qui illo soluta a necessitatibus sit. Ducimus dignissimos et et quae vero rerum.', 4171, 1519, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(70, 'Commodi sint et ea natus delectus adipisci.', 'Perferendis qui placeat et modi suscipit id et. Dolore quasi omnis aut necessitatibus tempore non. Eius ab quo dicta ipsa. Sunt doloremque voluptate consequatur. Ipsam porro quia vero reprehenderit quia quia corporis eum.', 4485, 1241, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(71, 'Unde voluptatibus et aut.', 'Dolorem hic ut dicta ad magnam. Unde earum aut voluptas consectetur earum delectus ut.', 3254, 2089, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(72, 'Sed quis qui animi beatae quod magni.', 'Inventore voluptate id tempora autem unde et dolores. Rem labore non corporis. Veritatis aperiam aliquam dolorem. Cumque ut in blanditiis possimus at consequatur quae.', 4134, 3700, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(73, 'Totam nemo praesentium sit occaecati exercitationem cupiditate.', 'Reiciendis ratione autem et. Libero voluptas assumenda culpa deleniti et. Dolorum aut et quo est.', 1739, 3767, 'Intermediate', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(74, 'Voluptate aut amet et.', 'Aut fuga omnis consequuntur magnam a consequatur. Dolor suscipit mollitia ut excepturi ad nam odit. Error quia commodi repellendus consequatur assumenda dignissimos. Quo sed cum sunt sit.', 3427, 727, 'Advanced', '2020-04-04 16:31:44', '2020-04-04 16:31:44'),
	(75, 'Eligendi blanditiis est est aliquid velit illum repudiandae tenetur.', 'Placeat saepe dolorem molestiae maxime adipisci nulla voluptatibus amet. Voluptas esse quisquam autem fugiat molestiae laudantium.', 3426, 2188, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(76, 'Eius dolore incidunt repudiandae doloribus animi repellendus.', 'Provident aut a maxime blanditiis sit sequi non quo. Dicta quae tempora deserunt aut et architecto aut.', 4175, 2858, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(77, 'Suscipit accusamus non maiores odit dolor sit.', 'Iusto voluptatem labore ut nisi aut. Modi dolorem et magni illo sed. Assumenda nisi sit deleniti animi eveniet a exercitationem quia. Quibusdam fuga tenetur autem culpa quaerat pariatur.', 2911, 1848, 'Intermediate', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(78, 'Qui dolor quis tempora quam aperiam.', 'Labore voluptatem pariatur iste velit consequuntur quo qui. Iste nulla nostrum qui sint minima et quae. Eos vel et quae nulla. Omnis esse eum placeat ut occaecati molestias molestiae eligendi.', 2776, 3543, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(79, 'Sequi est eos possimus architecto ut molestias non amet.', 'Nulla non sequi quis quas voluptas voluptatem. Ut quia officia consequatur distinctio nisi est porro aut. A enim provident facilis qui officiis veritatis. Nostrum nostrum aut facere veritatis reiciendis omnis et.', 962, 1371, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(80, 'Quis error dolores voluptatem id.', 'Et eius unde cum veniam exercitationem maxime. Non tenetur aperiam saepe laudantium. Minus eaque nihil consequatur tenetur voluptas.', 4926, 3421, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(81, 'A blanditiis sed dolores nisi qui totam.', 'Quaerat repudiandae ratione et. Omnis quo voluptas aut iure omnis quod qui magni. Qui expedita ex modi totam deserunt quia eveniet. Qui recusandae consectetur voluptatem incidunt labore.', 1471, 2498, 'Intermediate', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(82, 'Et nam illo quos est dicta.', 'Eum delectus sit facere omnis. Eaque animi natus magnam qui expedita nam. Incidunt dolorem et minus. Ducimus et et iure minima rem excepturi.', 1182, 1937, 'Advanced', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(83, 'Quia sint qui praesentium quo velit ad enim.', 'Perferendis explicabo iusto at voluptatibus sit. Quasi voluptatibus consequatur et nostrum distinctio et. Accusamus suscipit maxime et ea.', 1226, 1324, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(84, 'Nostrum sed quae eum et molestiae laudantium placeat.', 'Cumque et non distinctio provident nisi. Maiores voluptas modi qui. Debitis quos ut odit excepturi et optio delectus.', 2625, 1523, 'Advanced', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(85, 'Ea commodi asperiores nemo sed inventore magni occaecati.', 'Veritatis corrupti ut enim ut aut ut dolores. A odio commodi et. Voluptatibus aliquam est blanditiis voluptatem minima.', 2744, 2122, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(86, 'Molestias corporis est laborum veritatis sint.', 'Inventore ea deserunt ut quisquam. Laboriosam iste itaque qui ut et eius quae nesciunt. Ex omnis reprehenderit dolore vero molestiae nulla qui. Reprehenderit reiciendis laborum minima aliquid culpa vero.', 2622, 2503, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(87, 'Ab quidem minima ut sed et non.', 'Assumenda omnis ad rerum consequatur eius quia. Officiis sed beatae enim dicta ullam. Earum enim unde nam aut consequatur porro.', 2230, 3316, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(88, 'Aspernatur consequatur est et sunt soluta id quo.', 'Saepe placeat et odio illo. Ut omnis consequuntur porro et eos consequatur ut. Eaque perspiciatis quasi consequatur fugiat in inventore.', 1595, 1934, 'Intermediate', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(89, 'Debitis velit facere quibusdam esse ut illum.', 'Corporis repudiandae cupiditate voluptatem architecto natus perferendis. Sit excepturi in enim nihil et exercitationem. Commodi nostrum voluptas voluptas libero officia.', 1917, 2540, 'Intermediate', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(90, 'Sequi quod odit ut nihil aut voluptatem.', 'Fugit dolor et qui omnis. Nemo culpa iure dolores qui id error nostrum. Repellendus et temporibus voluptatem et enim reprehenderit ipsam. Necessitatibus ipsum sed numquam rerum.', 2413, 2895, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(91, 'Veritatis expedita labore sunt accusamus a corporis quia.', 'Soluta ducimus tenetur exercitationem possimus. Vitae consectetur odio sint fugiat adipisci quis. Alias quis sit quidem fugiat et iusto autem omnis. Ratione neque tempore molestiae autem tempora quae quo.', 2844, 3801, 'Advanced', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(92, 'Quisquam dolores occaecati sed delectus.', 'Ea enim non et qui harum voluptatum. Dolor quam sint optio sed totam debitis. Mollitia quia quos maxime dicta veniam. Odit est dolorem est dolorem ipsam ipsam ducimus.', 3331, 3924, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(93, 'Et nam dignissimos repellendus laudantium.', 'Est voluptatem incidunt veritatis quisquam commodi totam. Tempore laboriosam ex excepturi aliquam reiciendis. Ipsam iusto doloribus perferendis dicta repudiandae.', 3711, 973, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(94, 'Accusamus occaecati enim porro saepe et odit totam et.', 'Aliquam sed voluptatem quo et. Dignissimos quidem pariatur vel reprehenderit. Corporis voluptas recusandae provident ipsam. Fuga aut a voluptatem esse earum ut corrupti ducimus.', 2237, 3800, 'Advanced', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(95, 'Rem vero voluptatibus voluptates blanditiis.', 'Qui qui beatae in velit suscipit necessitatibus impedit. Velit iusto tenetur et porro. Sint vel nostrum sint beatae nihil id voluptas.', 829, 1371, 'Advanced', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(96, 'Voluptas voluptatum quia doloremque accusamus earum dolorum.', 'Amet ex eligendi natus. Aut ad consectetur nemo magni aperiam vero. Id totam inventore delectus tempore aperiam. Ipsum sit quaerat officiis. Non eius quis voluptates iste.', 3241, 2479, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(97, 'Debitis est molestiae adipisci exercitationem architecto.', 'Quidem delectus optio iusto aperiam odit iure eligendi. Iste dolores natus velit et. Nihil est iusto veritatis labore. Est consequatur dolorum autem velit expedita consequuntur omnis.', 3060, 532, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(98, 'Debitis accusamus tempora eum et sequi sed.', 'Consequatur qui veniam mollitia numquam provident facilis consequuntur eligendi. Quia corporis aut et. A nobis quod rerum sit impedit et repellat. Nemo incidunt nihil qui provident est.', 1232, 3995, 'Intermediate', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(99, 'Est quia qui deserunt dolore sit.', 'Consequatur nam voluptates exercitationem impedit iste ut consequatur. Eum placeat est non asperiores. Et saepe necessitatibus aperiam vel quibusdam veritatis inventore.', 1846, 2309, 'Intermediate', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(100, 'Dolor rem aut nihil debitis.', 'Dolor error vero recusandae provident sunt est. Fugit molestiae eaque laboriosam laudantium et. Ut soluta voluptas distinctio ipsa non occaecati consequatur. Quia eveniet omnis est asperiores accusamus.', 1150, 840, 'Intermediate', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(101, 'Consequuntur et odit voluptatum.', 'Exercitationem dolorem qui quas sit voluptas dolore. Aut iste aut nemo molestias architecto. Inventore amet eos esse quia libero quaerat a.', 2371, 2856, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(102, 'Incidunt aliquam voluptatibus sapiente voluptate qui ad.', 'Repellat quia reiciendis magnam. Vel molestias vel error omnis voluptas quo. Quis est ipsam eius voluptatum rerum.', 3961, 3787, 'Intermediate', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(103, 'Laboriosam magnam quod excepturi eligendi et.', 'Error reiciendis itaque deserunt accusamus. Aut voluptatibus necessitatibus beatae. Molestiae fugiat et aut quas dolorem voluptatem.', 3343, 3192, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(104, 'Itaque rerum aut atque nobis fugit nesciunt ipsa.', 'Eos est eius ullam eos fugit est voluptatem. In rem cumque nostrum velit cumque nobis.', 1123, 2599, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(105, 'Magni minima amet repellat unde.', 'Qui doloribus voluptatem harum et sit ut. Molestiae nam odio reiciendis ut eveniet. Qui similique quis et cum. Asperiores aperiam animi hic eaque. Autem rerum aspernatur dignissimos error.', 3777, 457, 'Beginner', '2020-04-04 16:31:45', '2020-04-04 16:31:45'),
	(106, 'Vel ex id illo tempore reprehenderit.', 'Ipsum non minima aliquid. Dolorem et qui asperiores nulla. Est optio nam qui ullam assumenda culpa omnis. Praesentium ut labore fugiat qui aut ipsum.', 4636, 3841, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(107, 'Eveniet et velit ratione molestiae rerum modi et.', 'Ex quo odit consequuntur quasi optio in. Harum voluptatum est impedit eaque nam cupiditate voluptatem. Nihil dolores at eius. Perferendis ullam et id ab aut voluptatem.', 4024, 456, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(108, 'Non et et quam aperiam.', 'Distinctio iusto corrupti odio enim sit repudiandae. Asperiores minima et similique deleniti quia deleniti aut. Expedita aut sint quidem. Repellendus molestiae vel qui enim. Labore totam voluptate rerum officiis dolore.', 4375, 3367, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(109, 'Fuga consequatur sit laboriosam ut occaecati ut.', 'Iste reprehenderit a modi sint voluptatibus tempore. Similique laboriosam est voluptatem. Fuga sed fuga tempora quia ipsam distinctio sint.', 3387, 2286, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(110, 'Dolorem esse molestias a quam dolorem.', 'Nesciunt et dolore cupiditate assumenda at laudantium quae molestiae. Cum autem deserunt quia. Ipsam reprehenderit dolorum quaerat ut repellendus et. Ut quas eveniet voluptatum qui.', 849, 3662, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(111, 'Aut voluptatum labore corporis sit sunt eius.', 'Voluptatum magnam qui repellendus iure. Fugiat voluptate quod et assumenda quod omnis. Animi fugit ut ut accusamus. At numquam molestias culpa modi et sequi.', 2286, 3601, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(112, 'Qui est eum consequatur.', 'Molestiae veniam pariatur magni pariatur. Dolorem ullam ut consequuntur necessitatibus sed pariatur repellendus. Qui error et voluptas animi hic delectus voluptates. Reprehenderit nemo doloremque maiores enim. Esse aut culpa sunt exercitationem hic sed.', 4719, 1199, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(113, 'Quae eos laboriosam amet non aut tempore.', 'Id tempora cupiditate velit rerum ullam ratione. Quo at ipsum ut illo. Nemo debitis aut omnis enim. Atque consequuntur corrupti officiis enim accusamus deleniti.', 2914, 2472, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(114, 'Minima ab culpa illo cum quis.', 'Rerum quidem et repudiandae. A quis quod quos vero velit. Id error molestiae atque nisi quis aut dicta. Sint laboriosam vero explicabo qui voluptas libero.', 2053, 1620, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(115, 'Nihil repudiandae adipisci aut provident culpa consectetur.', 'Veniam minima qui eaque consequatur sit autem. Ducimus incidunt dicta corporis facere. Eum aut sint maiores quaerat ratione saepe. Quibusdam omnis dolore voluptas.', 3053, 2333, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(116, 'Molestiae et dolores sit ad quam et saepe.', 'Qui vero quia voluptas sed. Rerum suscipit quis vel modi. Qui et est ut voluptatibus nihil quia laborum.', 4915, 1933, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(117, 'Fuga est deserunt aut porro atque ut et voluptas.', 'Est placeat sequi velit sit cumque. Corporis quasi ut iure sed excepturi. Est est velit ipsum incidunt odio. Ab natus vero repellat id quia et.', 4730, 1638, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(118, 'Similique labore a in voluptatum.', 'Vero repellendus similique laudantium. Harum rerum cupiditate et dolorem. Nam aliquid aut a pariatur cum nihil. Ratione hic totam ut sed similique.', 2049, 2486, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(119, 'Rerum soluta explicabo praesentium aut.', 'Iste quia harum quod et. Et voluptas voluptates fugiat quam non. Ea ullam in illum error. Consequatur explicabo et ab aliquid. Iusto minima quis excepturi perferendis et vitae asperiores.', 4467, 847, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(120, 'Neque consequatur unde et occaecati inventore ipsam.', 'Iste sit explicabo qui fuga quam. A voluptatum laborum perferendis dolore voluptatem earum et. Sit est aut vero architecto. Dicta tempore corporis est et.', 2375, 1418, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(121, 'Voluptates non ea pariatur sed aperiam.', 'Corporis pariatur repellendus doloremque. Molestias optio voluptatem quis molestias facere qui et. Et magnam occaecati earum similique qui quisquam qui.', 2129, 3286, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(122, 'Magni voluptas dolore reiciendis laudantium.', 'Sapiente animi hic aspernatur quo quam. Occaecati laborum laboriosam molestiae facilis assumenda praesentium illo. Nihil consectetur optio delectus suscipit iure possimus.', 4278, 1566, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(123, 'Qui est magnam voluptatum et suscipit.', 'Ipsum aut atque necessitatibus voluptatibus nihil. Tempora qui cupiditate temporibus aut ex sint qui sit. Sit odit in est veniam consequatur.', 1719, 620, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(124, 'Velit maiores vel maxime magnam nobis rerum.', 'Repellat mollitia corporis autem aspernatur iste voluptas. Aspernatur quia sed ab perspiciatis dolore debitis illum. Ratione maxime consequatur consectetur qui numquam. Ut modi est provident odit ut reprehenderit mollitia.', 3567, 2983, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(125, 'Quas laudantium atque omnis error iure quas hic.', 'Sed quis voluptatem earum. Ut quam officiis reiciendis omnis delectus. Porro suscipit voluptas deserunt maxime aspernatur.', 4899, 2804, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(126, 'Vel omnis rerum sit rerum corporis et.', 'Dolore modi ipsa earum aliquid provident. Molestiae est inventore cumque debitis. Ad corrupti inventore dolorem aut tenetur ea aliquam et. Nostrum dolores aut maiores quae omnis iusto harum.', 3226, 917, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(127, 'Provident temporibus labore maiores voluptatem dolores praesentium.', 'In vero fugiat et est et fugiat. Quos et suscipit officia. Magnam pariatur aut officia repellat facilis.', 4207, 3503, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(128, 'Beatae illum sequi vero consectetur assumenda facilis veritatis esse.', 'Dolorem quisquam voluptatibus et voluptas eius nobis voluptatem. Laborum nesciunt aliquid odit asperiores repellat ipsum id. Voluptatem qui porro veniam. Similique totam inventore doloribus ullam et quis iste.', 1096, 973, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(129, 'In eaque laborum alias hic.', 'Fugiat sint dolores earum fugit fugit quasi quia molestias. Ipsum nobis debitis ratione eum. Sed labore quis dolorum. Et quisquam aliquid fugiat aut deleniti vero.', 1496, 1212, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(130, 'Cupiditate repudiandae magnam commodi provident.', 'Quos enim ratione occaecati dolorum asperiores. Assumenda ut soluta impedit laudantium nesciunt. Modi perferendis tempore sed rerum modi quaerat.', 1456, 3422, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(131, 'Id itaque ut error.', 'Enim at quia excepturi a sapiente impedit et. Similique officia voluptatum odio eos harum nemo. Minima repellat earum alias quia quas sequi. Possimus veniam non recusandae sapiente eos eaque consequatur.', 2007, 3017, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(132, 'Quia nostrum incidunt in ullam animi atque temporibus.', 'Minus ea qui voluptatem a quam laboriosam nemo. Facilis possimus autem sit et occaecati maxime quae. Dolores ut pariatur ex delectus quas in.', 4879, 2894, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(133, 'Odit necessitatibus sit quis.', 'Occaecati ut libero iusto tempore. Nam non a illo voluptate modi cupiditate molestias. Sed fugiat amet voluptatem minus nemo. Enim corporis minus cum.', 1722, 1784, 'Advanced', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(134, 'Dolorem molestiae magni quis sed eos.', 'Accusantium qui perferendis placeat sapiente quam quas. Et nulla aut placeat a quae distinctio. Ipsa deleniti molestiae et. Sequi non ut sed sed recusandae nobis nesciunt.', 3258, 2633, 'Beginner', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(135, 'Ut repudiandae dolor nam cum eos praesentium et mollitia.', 'Cum ut eos sit excepturi. Repellat voluptates distinctio ipsa quisquam et eum. Omnis rerum ut consequatur repudiandae possimus deserunt facilis quo. Velit quis amet nobis minus autem.', 1187, 3082, 'Intermediate', '2020-04-04 16:31:46', '2020-04-04 16:31:46'),
	(136, 'Nobis qui et et quis optio.', 'Et pariatur laboriosam sed magni doloremque qui assumenda alias. Aut vel et quia molestias asperiores ea iure aut. Consequatur tempore neque magnam laborum consequatur non praesentium aut.', 3266, 2041, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(137, 'Omnis placeat est vel non voluptatem ea.', 'Beatae dicta sunt non ea quasi. Iste consequatur necessitatibus libero quo voluptatem aut. Quidem numquam numquam voluptas aut.', 4901, 1015, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(138, 'Quibusdam alias non vel harum quos esse fuga.', 'Nemo reprehenderit molestias rem accusamus. Autem nihil nisi magni numquam nobis praesentium et. Molestiae eveniet maxime sit perferendis nobis maxime facere. Iusto omnis ad quibusdam repellat voluptates explicabo unde fugit.', 1182, 1314, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(139, 'Ut eligendi vel rem nostrum.', 'Omnis sunt corrupti adipisci. Rerum qui vitae repellat quibusdam voluptatem. Et quasi est quod.', 3035, 3977, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(140, 'Repellat qui placeat commodi facilis dolores qui ullam.', 'Ea velit laudantium et nulla doloribus iste. Nisi consequatur dignissimos est nam quidem.', 4297, 3453, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(141, 'Sint reiciendis autem corporis quaerat neque at.', 'Beatae fugit id voluptatibus provident est voluptatum vel. Non aliquid soluta ut tempore necessitatibus quos quae. Facere mollitia qui qui quas quaerat. Voluptatem enim est qui id amet.', 3902, 1395, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(142, 'Qui et aliquid doloribus laborum quibusdam reprehenderit ut.', 'Hic ut incidunt ut quisquam. Rem dolores est modi ducimus. Molestias ex fugit doloribus nulla in qui. Voluptas ut vitae et itaque eum. Est sint facilis autem sapiente.', 2195, 2372, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(143, 'Maxime vero quis excepturi et quos deleniti repudiandae.', 'Dolores harum iusto saepe ullam dolores praesentium voluptatem. Asperiores dolores et enim nihil voluptatum et placeat. Quo perspiciatis id rem voluptatem sunt et.', 4497, 2479, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(144, 'Dolores a minima ut dignissimos accusantium qui est.', 'Nihil et dolor est id. Illum a in earum nihil nostrum quidem. Aut laudantium perspiciatis ratione porro cumque. Amet aut recusandae asperiores nesciunt cum est.', 4150, 3332, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(145, 'Tenetur nesciunt non vero sunt et.', 'Et voluptatibus numquam sequi ut modi quia. Omnis impedit est quisquam dolores non incidunt. Consequatur aliquid placeat dicta maxime quis eveniet. Corporis alias aut occaecati voluptatem.', 4776, 3042, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(146, 'Amet quisquam tempore esse voluptas consequuntur recusandae ut magnam.', 'Et corporis dolore velit ratione nobis esse. Ea mollitia fugit delectus corrupti. Sit odit aut et deleniti.', 3493, 1345, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(147, 'Ea quae illo est aut placeat.', 'Voluptas optio natus earum accusamus. Qui itaque et et soluta quia sed autem. Perspiciatis et voluptatem perspiciatis veniam quidem. Provident officia aut eveniet eum.', 994, 1783, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(148, 'In rerum illum facilis est.', 'Error omnis voluptatem consequuntur libero labore. Fugiat magni exercitationem nesciunt eaque enim eos ut tempore. Occaecati suscipit aut sed aut repellendus ad. Laudantium non ut quos asperiores occaecati aut sed distinctio.', 3029, 976, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(149, 'Quia sed non fuga dolores ea illum sapiente.', 'Non ex soluta porro assumenda pariatur et non fugit. Maiores soluta omnis ut corporis. Sed recusandae earum quis. Expedita dolores hic minima voluptas non est.', 1967, 2729, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(150, 'Voluptatibus distinctio occaecati quidem vero.', 'Sunt eaque inventore ratione mollitia est voluptas est reprehenderit. Explicabo error rem illo distinctio asperiores recusandae cumque. Autem laborum magni doloribus ea. Voluptatem sapiente et magnam qui reiciendis.', 3794, 1885, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(151, 'Aliquid ad ut molestiae qui provident.', 'Molestiae et ipsa dolor voluptates porro est. Ut quo porro similique exercitationem voluptate quibusdam voluptate rerum. Sapiente quo unde magni.', 2125, 803, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(152, 'Eius vel omnis aspernatur molestiae aliquid maiores suscipit.', 'Quibusdam omnis omnis numquam odit. Vitae fuga mollitia et beatae numquam. Deleniti aliquam nobis mollitia tempora ipsa. Cum nihil maiores amet iste ex est temporibus.', 1531, 3325, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(153, 'Dolores excepturi est harum cum quia officiis sequi.', 'Nam molestiae id aliquam nihil pariatur. Voluptas aut magni consectetur sunt nam earum. Est est sit recusandae deleniti.', 3610, 562, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(154, 'Fuga reiciendis vel natus vitae enim.', 'Repellendus repudiandae expedita animi quasi. Hic quo voluptatem unde. Corporis asperiores facere quas eum qui voluptatem. Eum incidunt delectus voluptatum sit aut tempora dolorum. Earum accusamus esse iusto ut sed aut ut aliquid.', 2209, 2408, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(155, 'Facere assumenda iste modi doloremque voluptatem sit.', 'Nihil dolorem iure perferendis eius aut. Labore voluptates incidunt laboriosam laboriosam rerum aliquid. Repellat fugit exercitationem dolorem quaerat quis. Distinctio enim facere ut magni non quaerat repudiandae.', 1267, 3382, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(156, 'Ad et minus eum ratione.', 'Et nesciunt optio delectus iste a. Porro doloremque rem non qui. Dolores quibusdam fugiat exercitationem sit. In aliquam debitis quia laudantium nesciunt voluptatem est.', 1907, 1804, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(157, 'Quibusdam laudantium qui omnis quae.', 'Debitis rerum odit et non. Et totam nemo minima. Facere ipsa nobis et accusamus magnam quo. Quasi aut optio ducimus minima in libero ea. Dolores aut doloribus eos totam corporis.', 4581, 458, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(158, 'Libero laboriosam tempora magnam itaque porro.', 'Qui perferendis itaque non neque corporis molestias. Eum alias accusamus et quis vitae. Quia qui incidunt magnam nulla velit ut omnis. Dolor non laudantium quam tenetur amet. Vero eius impedit autem consequatur aut similique.', 2425, 835, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(159, 'Veniam maxime unde deserunt mollitia.', 'Odit est nesciunt ex iure voluptas facilis eos. Distinctio eius voluptatem qui pariatur. Omnis eos et est voluptatem. Amet autem tenetur ad modi.', 2806, 2930, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(160, 'Dolores repellat ut sit eaque incidunt fuga alias.', 'Rem laboriosam labore autem delectus numquam unde minima. Eaque dolorum perspiciatis tempora consequuntur doloribus. Iste ut officia corrupti qui ab non. Nam nemo architecto qui eaque qui amet cupiditate.', 1198, 3393, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(161, 'Quidem autem dolor quis sapiente voluptatem nulla.', 'Quo alias itaque cum qui odio. Voluptas et blanditiis non deleniti hic quia veniam molestias. Ad debitis ad quis minus odio aspernatur et hic.', 4259, 2568, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(162, 'Non quia qui libero nihil assumenda qui dolorem.', 'Ratione velit dignissimos explicabo temporibus ut. Ducimus adipisci nobis nostrum. Facere enim qui eos odit omnis adipisci rem eligendi. Vero nisi ut officia tenetur aspernatur explicabo tempora.', 4072, 1725, 'Beginner', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(163, 'Nemo ad voluptas a.', 'Quas vel ut veritatis dolorem ea minima. Qui labore ad sed maxime nisi. Ut dolorem omnis eius quia quidem.', 2360, 1077, 'Intermediate', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(164, 'Modi provident nihil architecto consequatur libero cupiditate facere.', 'Fugit quis non laboriosam est quibusdam. Ab consequatur accusamus voluptatem quis vitae quos officiis. Explicabo accusantium commodi accusamus ut. Quibusdam sit voluptatem itaque iste esse.', 4198, 1399, 'Advanced', '2020-04-04 16:31:47', '2020-04-04 16:31:47'),
	(165, 'Ullam laboriosam doloremque dolores quos architecto ut.', 'Occaecati aperiam consequatur consequatur rerum totam atque placeat non. Nostrum natus assumenda velit temporibus eveniet debitis doloremque exercitationem. Aut aut et laudantium quia et. Occaecati placeat ducimus rerum ex vel.', 2571, 1282, 'Advanced', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(166, 'Quos deserunt facilis quasi nihil dolores.', 'Dolor sequi iure aut ipsum voluptatem autem. Molestiae voluptates quia asperiores dolores eligendi quidem fuga. Qui corrupti autem ipsum consequatur.', 898, 3296, 'Advanced', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(167, 'Voluptatum recusandae dicta consequatur voluptas fugit.', 'Debitis magni est officia eaque velit asperiores nihil cumque. Non quos voluptatem dicta commodi temporibus quia totam. Nihil reprehenderit consequatur optio doloribus sed corrupti. Possimus et voluptatem fugiat vel officiis dolorum.', 3287, 3223, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(168, 'Qui est consequuntur sit molestiae est.', 'Ducimus quaerat deleniti mollitia sint quod doloremque explicabo. Sit ut sequi dolor et rem repudiandae aut fuga. Doloremque et natus molestias expedita sint consectetur maiores vitae.', 2196, 673, 'Advanced', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(169, 'Quis dolor est eos odit quia.', 'Quibusdam laborum nesciunt beatae voluptate atque. Enim cumque tenetur earum perspiciatis. Eveniet autem ut est ipsam in omnis quae. Voluptatibus nihil quae dolorum ratione laborum esse labore.', 4434, 976, 'Advanced', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(170, 'Consectetur nam porro pariatur error consequatur quia voluptatem.', 'Et odit maiores repellat qui. Exercitationem blanditiis eveniet quos quibusdam eveniet tenetur rerum omnis. Eos quis iste recusandae tempora. Et accusantium adipisci nihil non dolore.', 2337, 2573, 'Advanced', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(171, 'Natus eveniet sit sapiente distinctio autem voluptas nisi.', 'Animi quibusdam consectetur quis nihil quidem ut. Aperiam quia consequatur alias beatae sit eos voluptatum. Rerum eos est error facilis laboriosam consectetur. Sapiente cumque pariatur mollitia repudiandae.', 2199, 1856, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(172, 'Exercitationem labore ad fugiat unde aperiam pariatur porro laudantium.', 'Assumenda cum qui impedit aut nemo ut. Mollitia nihil est quibusdam facere et. Optio maiores voluptas corrupti quos molestiae. Eos aspernatur omnis asperiores nesciunt veniam repellendus nemo.', 2001, 3225, 'Advanced', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(173, 'Vero quisquam vel hic ut.', 'Et neque repudiandae consequatur officia magnam ab saepe. Culpa atque dolores cumque explicabo.', 3817, 586, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(174, 'Non illo cumque blanditiis possimus dolorem est ut.', 'Accusamus voluptas nisi deleniti dolorem. Fuga fuga magni repellat consequatur repellat incidunt pariatur. Incidunt animi illo hic quia voluptatem vitae. Officia quasi occaecati natus aut a totam. Animi architecto asperiores fuga et.', 1337, 3112, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(175, 'Qui sit deserunt voluptas qui odit.', 'Natus in officia sapiente inventore. Laboriosam voluptatem vel quis quos. Eum ratione autem quis consequatur qui. Placeat adipisci nisi et fugit sint enim aperiam.', 3532, 2210, 'Advanced', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(176, 'Voluptas id rem ut vero quas voluptatem.', 'Incidunt consequuntur aut at et animi. Illo aperiam quibusdam cupiditate eveniet repellat molestias dignissimos. Quia aliquam nam nesciunt consequatur.', 2417, 2767, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(177, 'Provident nostrum ea voluptates aspernatur autem et omnis.', 'Quis at minus repellat quod. Aut ut aperiam aut molestiae possimus aut. Labore culpa reiciendis qui temporibus quo non totam.', 3146, 1754, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(178, 'Et accusantium pariatur nisi qui ad voluptatem.', 'Rerum possimus et cumque eos amet. Consequatur qui cumque beatae quia sequi. Dolore et adipisci totam alias et possimus corporis voluptas. Possimus animi debitis ea delectus facere nesciunt ea quo.', 1410, 2033, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(179, 'Voluptas asperiores esse rerum ab quo consequatur.', 'Quia recusandae dolorem dolorem possimus quibusdam cumque. Recusandae vel dignissimos veritatis impedit doloremque quam aut. Aut iste ab odit soluta sunt cumque sit cupiditate. Necessitatibus rerum velit vero quae nihil voluptas.', 4466, 2598, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(180, 'Perferendis quaerat et aspernatur laborum cumque dolores rerum.', 'Odit sed omnis ipsa incidunt voluptatem numquam explicabo. Reprehenderit facere occaecati libero praesentium eum sunt. Quam eos magnam aut iste assumenda nostrum. Illum id consectetur a laudantium vel error.', 2137, 3073, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(181, 'Est non et illo cum magni.', 'Illum culpa nihil cupiditate saepe harum minus tempore beatae. Perspiciatis soluta consequatur consequatur repellendus adipisci. Autem ea quis laborum nam et suscipit voluptatem. Harum omnis odio amet explicabo perferendis et. Qui optio in et eum sed sit aut.', 3174, 1730, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(182, 'Ea sequi ut iste.', 'Odio ducimus earum rem voluptatibus. Nemo nam possimus quia quae et non. Aut iure exercitationem minima rerum officiis. Deleniti ducimus molestiae quae omnis.', 4197, 1372, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(183, 'Id totam esse vitae asperiores.', 'Quae suscipit pariatur error ducimus quia ea et ipsa. Qui accusamus quia repudiandae aut. Aliquid vitae repellat facilis quidem labore voluptas nihil.', 2683, 489, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(184, 'Reprehenderit rerum suscipit qui tenetur.', 'Labore non hic cupiditate. Temporibus quo est magni ad. Ut sed et voluptatibus.', 3437, 887, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(185, 'Pariatur eum corporis reprehenderit voluptates eius corrupti debitis nulla.', 'Perferendis quisquam voluptas natus est dolores veniam. Et velit aliquam dolor non. Et est sit amet ut quas.', 3426, 997, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(186, 'Repellat ullam quaerat ab facilis.', 'Nisi dolores esse sapiente ullam hic quod ut. Officia magnam tempore iste maiores magni et. Sit culpa et officia veniam numquam dolorem. Eaque minus voluptas exercitationem non hic quasi.', 3502, 3359, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(187, 'Repudiandae ut recusandae sed aperiam officiis maxime.', 'Impedit molestiae omnis et eligendi et excepturi. Ipsum et facere et praesentium totam quia et ex. Et optio rem fugiat voluptas.', 3163, 2386, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(188, 'Itaque iure est facilis mollitia voluptas id dolorem.', 'Et qui nulla recusandae officiis suscipit. Quisquam ex accusamus molestiae inventore occaecati. Necessitatibus voluptatem odio voluptas corrupti vel nam fugit.', 1734, 3896, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(189, 'Est officiis rerum et ut eaque ab dolorem.', 'Accusamus ex nisi illo. Nesciunt totam omnis veritatis laboriosam quibusdam et id. Quia dolorum dolorum nemo.', 1647, 628, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(190, 'Quo necessitatibus voluptas eum et est voluptas.', 'Et aut eum in dolores autem consequatur eaque. Sed debitis commodi modi deleniti et sit ratione. Totam qui est sequi maxime autem aut.', 4245, 1818, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(191, 'Non facere mollitia fuga aut quos et excepturi.', 'Praesentium porro et labore cupiditate. Soluta eum repellendus enim aut blanditiis. Amet id voluptas laudantium et veritatis eveniet nisi repellendus. Quia temporibus aut fugiat accusantium enim.', 3874, 750, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(192, 'Consequatur ut eum laboriosam enim iure voluptate.', 'Eum quas deserunt delectus laboriosam sed aliquam. Illo nam deleniti ut cumque qui. Similique dolores repellat aut dolore consequuntur qui quo. Accusantium velit est fugiat.', 1134, 3328, 'Beginner', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(193, 'Numquam ut alias sequi.', 'Et ad odit repellat hic ducimus qui et. Laudantium ut incidunt praesentium provident. Repellat eum sed optio provident dicta iste blanditiis.', 806, 3912, 'Intermediate', '2020-04-04 16:31:48', '2020-04-04 16:31:48'),
	(194, 'Molestiae molestiae non magni eius.', 'Praesentium est dolor qui. Soluta error pariatur aut. Veniam molestias rerum et ullam aut voluptatem quos. Dolorum laborum fugit facere consectetur.', 1135, 617, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(195, 'Assumenda unde vitae fuga ad dolore eum.', 'Excepturi numquam ullam eos aut adipisci et modi. Maiores qui aut saepe itaque quas deleniti aut veritatis. Qui ad est cumque exercitationem iure laboriosam et. Laborum vel voluptatem nobis quo. Voluptatem aliquid laudantium sequi deleniti nisi.', 4468, 2033, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(196, 'Voluptatem voluptatibus sunt laudantium quasi ut.', 'Cupiditate quod cupiditate iure facilis. Totam dicta et sit ipsa qui natus. At illum officiis quia quo est error minima. Tenetur dolores explicabo et pariatur veniam.', 3712, 3242, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(197, 'Consequuntur architecto neque qui est.', 'Quia voluptate optio consequatur rerum eos temporibus. Necessitatibus debitis quia earum deserunt animi ut itaque harum. Nemo sint repellat asperiores. Et omnis odio quos beatae molestiae veritatis.', 4998, 621, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(198, 'Expedita tempore mollitia praesentium earum incidunt atque reiciendis.', 'Sint excepturi culpa voluptate id non nulla. Perferendis voluptas odit adipisci quibusdam qui vero molestias. Totam qui adipisci officiis rem rerum fugit quidem.', 4400, 2909, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(199, 'Ad accusantium blanditiis at voluptatibus et.', 'Qui in ad delectus sint qui. Aut ut atque quas sint in. Vero est tempora a.', 4556, 3547, 'Beginner', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(200, 'Sed sit cumque dolores beatae.', 'Quam sapiente est voluptatem aliquam nesciunt. Quasi vitae voluptatem rerum totam fugiat sed. Incidunt ut eaque optio quia. Quam earum ut ducimus doloremque labore et.', 3533, 2926, 'Beginner', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(201, 'Dolores magnam quis impedit aut est.', 'Sint excepturi error quae in nostrum. Neque quo sed et non. Necessitatibus id totam voluptate atque impedit.', 4804, 1900, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(202, 'Debitis ipsa mollitia natus facere laudantium illo quia.', 'Voluptas sed eos et inventore impedit qui. Delectus aliquam veritatis aut ut molestias. Accusantium numquam nihil nisi.', 2139, 3200, 'Beginner', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(203, 'Enim dolorem sint iusto quaerat voluptatem.', 'Incidunt velit magni voluptatem omnis consectetur nam. Consequuntur culpa quos temporibus. Animi qui illo sapiente optio.', 1763, 2035, 'Beginner', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(204, 'Nesciunt voluptatem sed ea eaque.', 'Ut nulla minus non. Est nemo consequatur exercitationem aspernatur. Atque temporibus dolor veniam sit libero consequatur. Placeat qui rem qui rerum illo. Harum non nihil eveniet praesentium.', 3204, 1661, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(205, 'Laborum ea in autem.', 'Et excepturi est harum libero optio dolor. Dolorem vero enim consequatur voluptatem pariatur explicabo architecto. Quod consectetur animi rerum quia nam iure. Explicabo ut laudantium veritatis blanditiis illo officia.', 1372, 571, 'Beginner', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(206, 'Et dolorem debitis dolor nihil id fuga perspiciatis.', 'Inventore voluptatem ullam quia ut corrupti. Ducimus qui dignissimos dolore sapiente quia. Sapiente minus et qui reiciendis fugit quaerat.', 4271, 2364, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(207, 'Quis non cupiditate iusto atque quis aut dolorum.', 'Eos consequuntur vel id qui reiciendis animi. Quia voluptas et dignissimos rerum. Praesentium aut qui incidunt placeat quia reprehenderit sapiente. Voluptatem mollitia iure repellat autem. Inventore animi aut voluptatem eos pariatur ut.', 863, 3518, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(208, 'Dicta eum in qui magnam qui dicta qui.', 'Ea et voluptatem voluptate voluptas ad et voluptatem. Voluptatem mollitia tempora provident. Voluptas nam a omnis veniam. Doloremque autem dolore voluptas. Alias et omnis voluptates est molestiae quidem rerum.', 3902, 2599, 'Beginner', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(209, 'Voluptatem magni aut at est dignissimos deserunt quia.', 'Nesciunt autem ea voluptatem atque ipsam. Temporibus earum autem illum sapiente quisquam. Quaerat iusto officiis iure et dicta nemo.', 3719, 1317, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(210, 'Ea natus cum sed consectetur.', 'Et ut qui iusto cumque. Voluptas quasi quod nulla nemo pariatur. Aut nobis deleniti optio voluptas harum itaque asperiores unde.', 4123, 1694, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(211, 'Rerum quod et sequi.', 'Illum facere non et tempore dolorum ipsam qui qui. Quo non ut sed ipsam. Qui consectetur eum possimus adipisci. Vero magni qui ut rem eum iusto consequuntur.', 3137, 3545, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(212, 'Ut in voluptatibus quasi.', 'Doloremque rerum non natus iste aut quas. Hic praesentium delectus quidem consectetur. Assumenda ab itaque nesciunt provident. Delectus fuga quas placeat neque.', 4193, 2733, 'Beginner', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(213, 'Repudiandae laudantium aut vel sed molestias.', 'Nihil expedita eligendi totam. Quia at corporis totam voluptate.', 1194, 2123, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(214, 'Voluptatum expedita ipsum est officiis.', 'Eaque vel voluptatem voluptate. Quia architecto maiores atque voluptatem laborum sed occaecati. In recusandae veniam tempore reprehenderit vitae eligendi accusantium.', 3374, 508, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(215, 'Quis dignissimos eius qui sit quia commodi.', 'Repellat dolorum aut et voluptatem id ratione nisi eligendi. Blanditiis natus sint voluptates incidunt esse quaerat. Ea voluptates molestias quae consectetur.', 2049, 2366, 'Beginner', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(216, 'Dolorum adipisci vel saepe blanditiis temporibus ut.', 'Voluptas non qui consequatur aperiam ut qui et. Facilis culpa cum praesentium omnis excepturi. Ratione sint excepturi eius eos sed.', 4768, 1205, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(217, 'Et sunt nobis alias quo.', 'Voluptatum error animi quae ut debitis. Quis et voluptates et blanditiis doloribus voluptatem placeat aut. Ut autem sunt adipisci et cupiditate voluptatem rerum.', 3353, 3240, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(218, 'Sint aut a quia.', 'Sunt expedita adipisci voluptatem sed amet assumenda et. Molestiae accusamus quae nulla beatae. Odit dolores labore dignissimos ut. In ut est est.', 4965, 3061, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(219, 'Natus dolorem sunt ad.', 'Voluptatum incidunt quos tenetur et. Doloremque possimus ea non explicabo dicta et. Voluptatem facere nobis inventore numquam. Hic commodi iure eos excepturi unde.', 2363, 3611, 'Intermediate', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(220, 'Tempore ut veritatis minima quisquam.', 'In et odit sit et nisi ut. Perferendis ipsa minus fuga. Tenetur ea nihil enim quisquam ullam. Expedita ut voluptatum autem autem et quos voluptas quasi. Ea atque modi repudiandae et hic.', 3918, 2003, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(221, 'Nihil officiis ab voluptatem eum.', 'Deleniti maxime molestiae libero assumenda qui voluptas. Qui dicta corrupti sunt. Molestias voluptatum deserunt quia eos aut porro optio. Optio ipsa voluptas iusto possimus id.', 972, 1070, 'Advanced', '2020-04-04 16:31:49', '2020-04-04 16:31:49'),
	(222, 'Rerum a eos ipsa et eos rerum error veniam.', 'Soluta ut est quisquam enim quas. Quia vero sunt consequatur nostrum. Vel et eveniet fuga numquam ea non. Libero aliquid dolorem sunt id ad.', 4339, 786, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(223, 'Voluptatem ipsum assumenda ab maxime.', 'Dolores explicabo et dolorem tenetur vel molestiae aliquid. Eaque tempore dolorem vel veniam. Eos voluptatem consequatur laboriosam.', 3406, 3363, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(224, 'Autem assumenda nemo assumenda corporis laborum expedita.', 'Autem occaecati eligendi vel quo vitae neque voluptas. Accusantium illo earum hic maxime esse. Et ex corporis sapiente molestiae. Corrupti sint officia eligendi.', 951, 666, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(225, 'Optio ea voluptatibus iure sed hic repudiandae voluptatem repellendus.', 'Tenetur sint sapiente aut consequatur aut quia voluptatibus. Similique expedita expedita dicta voluptatem. Illum numquam totam commodi velit voluptatem quibusdam id. Magni vero quod aut esse velit repellat nihil. Ut quia tenetur natus molestias eum.', 2401, 1276, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(226, 'Quia soluta sequi ut.', 'Cum ut voluptas quis et deleniti. Vel iusto neque architecto voluptatibus similique commodi. Explicabo nam quas ullam voluptatem qui. Quam dolorum sed dolor quidem.', 4479, 512, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(227, 'Necessitatibus laborum et sed nihil et.', 'Officia quia expedita temporibus voluptas et minus soluta. Et minima dicta nobis dolores et vel magnam. Odio et ut rerum porro voluptatem. Aspernatur aliquid rerum repudiandae natus.', 934, 2443, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(228, 'Et voluptatum vero voluptatem quos veritatis omnis est officia.', 'Blanditiis enim quia expedita. Inventore in ut vel voluptate ea.', 3649, 2161, 'Intermediate', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(229, 'Molestias ea praesentium sed.', 'Et id nam sed qui rerum quos. Nihil eum iste sequi asperiores eveniet voluptates nisi aliquid.', 2375, 3406, 'Intermediate', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(230, 'Cupiditate repellat illo totam autem ipsam quis eum.', 'Ut voluptas explicabo quos dolor ut voluptas officiis. Quos nihil repudiandae dignissimos repellendus voluptatem odit facere. Eum accusamus pariatur laborum recusandae voluptate ducimus beatae voluptatem.', 2598, 3814, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(231, 'Rerum eius autem est odio qui qui.', 'Eos vitae a qui at. Ratione dolorum aut dignissimos dolorem autem consequatur. Quia consequatur placeat sint et qui.', 4702, 3387, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(232, 'Nemo cumque asperiores aut temporibus porro.', 'Vel sed et non nam. Architecto reiciendis molestias praesentium quis sint itaque pariatur. Hic doloremque aut a dolorem hic aut voluptates.', 4086, 2428, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(233, 'Quo numquam architecto aut sed.', 'Qui voluptatem quia sunt aliquid perspiciatis quod doloremque. Perspiciatis aut vel necessitatibus dignissimos voluptatibus officiis dolorem. Quia id ratione magnam a id ad qui.', 4126, 2099, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(234, 'Reiciendis quas nemo molestiae sit eveniet.', 'Esse culpa deserunt esse id veritatis consequatur. Quidem magnam eos in facilis porro aperiam quaerat ut.', 4012, 833, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(235, 'Voluptates et est eos ut omnis ut est.', 'Eius tempore consequatur et. Omnis vero soluta veniam animi ducimus amet ut quis. Et alias quae dolore et quod occaecati voluptates. Reiciendis est adipisci molestias non.', 1048, 3322, 'Intermediate', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(236, 'Consequatur nihil dolores expedita.', 'Tempore et omnis perspiciatis cum odio. Sunt laudantium tenetur repellendus reiciendis similique vitae odio. Dolorum qui a laboriosam magni impedit maiores earum tempora.', 4888, 3591, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(237, 'Voluptatem provident excepturi quidem ducimus quod qui est.', 'Qui eos voluptas ipsam. Aut odio dolorem adipisci dolor enim delectus possimus. Dolorem iure debitis ut illo.', 4310, 1387, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(238, 'Nulla dolores repudiandae quis autem quia exercitationem temporibus.', 'Voluptatem aut et ut repellendus. Illum eius sequi est et non. Veritatis ut voluptates dolores. Esse odio qui nobis eveniet. Omnis qui nulla excepturi.', 4976, 1577, 'Intermediate', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(239, 'Necessitatibus error quia delectus et corporis praesentium voluptatem.', 'Rerum iure sit et placeat distinctio commodi molestiae. Facilis ducimus et ratione omnis repellat. Assumenda culpa nemo voluptatem et in. Magnam voluptatum in necessitatibus quo est quis.', 3036, 2534, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(240, 'Accusantium itaque mollitia nesciunt sed sit voluptas.', 'Optio distinctio id perspiciatis est quia. Sit error ea maiores laborum. Quia porro debitis ex ex quas earum.', 4323, 686, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(241, 'Corporis nulla molestias suscipit aliquid.', 'Qui necessitatibus quia commodi aspernatur alias. Corrupti quisquam laudantium commodi ratione tempore. Quos quidem aliquid dolor rem sed nihil. Animi alias adipisci eaque consequatur aut similique quia. Maxime quasi autem vel ad eius.', 3419, 2447, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(242, 'Incidunt sit minima nam tempora ut beatae odit voluptatem.', 'Eum unde et occaecati laborum sed quasi. Eum molestiae eum ut molestiae. Consequatur enim incidunt aspernatur amet dolores. Cupiditate deserunt non alias pariatur sed aut et sint.', 4161, 2137, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(243, 'Et atque sed fugiat at ut incidunt.', 'Sunt vel ipsum perferendis quidem. Nemo aut rem omnis nostrum dolorem nostrum quasi. Id dolor aut soluta. Atque occaecati et labore.', 2705, 731, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(244, 'Et quis velit est eligendi illo adipisci.', 'Est eos aspernatur quo. Ea quia dicta tenetur autem nobis iure omnis iusto. Autem autem alias rerum vitae reiciendis dolor. Magnam sequi unde quis eligendi enim officiis.', 4808, 1421, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(245, 'Iure quia dolor soluta at labore rerum.', 'Accusamus qui dolores consequatur est unde non eos. Et beatae expedita porro possimus asperiores. Natus dolores labore quia dolorem voluptatum repellendus.', 1828, 2738, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(246, 'Ut eum voluptatum provident id.', 'Pariatur iure recusandae voluptatibus ut odit ipsum. Voluptatem et pariatur in saepe nobis. Repudiandae quia optio odit eveniet. Nam placeat pariatur cupiditate est deserunt quod non. Quae eum voluptatem nihil necessitatibus.', 1838, 2153, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(247, 'Unde rerum quis velit aliquam fugit quis impedit.', 'Libero voluptatem et iste sit. Cupiditate non occaecati perferendis quis eos consequatur esse. Et eius officiis sed quibusdam possimus ex. Autem quo minus nobis harum est aut.', 1700, 2280, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(248, 'Minima quia nesciunt aut consequatur similique eveniet.', 'Aut aut minus molestias odit quia ut. Tempora cumque adipisci quasi voluptates sit. Eaque autem qui autem accusantium temporibus nostrum consectetur. Magnam recusandae voluptatem iste fugit quod qui. Aut ut perspiciatis quia cumque facilis excepturi sint.', 3525, 1257, 'Intermediate', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(249, 'Ullam possimus tempora illum voluptatem autem blanditiis.', 'Ex voluptas cupiditate deleniti. Sit cupiditate sapiente magnam voluptatem magni. Quis porro consequatur libero velit. Modi voluptatem perspiciatis accusantium sit odio tenetur fuga.', 1126, 3387, 'Intermediate', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(250, 'Voluptatem sint ex et quidem tempora.', 'Consequuntur odit asperiores et. Consequatur neque numquam possimus odit alias mollitia. Itaque sint eum mollitia repudiandae explicabo. Qui voluptates enim tempore perspiciatis perspiciatis dolorem.', 3313, 3941, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(251, 'Ullam nobis sint culpa commodi et iste.', 'Nostrum est ipsa minima quae molestias autem molestiae. Illum esse vero ea delectus praesentium ipsa. Minima sit enim vel nihil dolores fugit qui.', 1320, 907, 'Advanced', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(252, 'Labore iusto minima id non.', 'Soluta dignissimos pariatur sint perspiciatis voluptas enim voluptatem non. Commodi qui non excepturi qui sed facere. Dolorem unde dolorum id quas nesciunt nihil id.', 1768, 3309, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(253, 'Illum autem sunt veritatis commodi qui et asperiores.', 'Culpa distinctio dolor porro modi nisi quo nemo. Excepturi et modi ut repellat reiciendis excepturi molestiae. Quae aliquam impedit sunt ea quo temporibus eligendi odio. Quasi qui ea qui est.', 4821, 3452, 'Beginner', '2020-04-04 16:31:50', '2020-04-04 16:31:50'),
	(254, 'Aliquam libero excepturi facere maiores.', 'Distinctio earum enim accusantium occaecati eligendi occaecati et eum. Quibusdam sit a et et quibusdam. Sunt commodi nihil quia voluptatem blanditiis. Odio quisquam rerum explicabo.', 3628, 3009, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(255, 'Odio quia modi quisquam voluptates.', 'Et veniam rerum maiores praesentium odit qui odio. A modi et sequi neque molestias consequatur. Repellat omnis error ad aut dolorem. Placeat sapiente quaerat optio dolorem.', 2449, 3379, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(256, 'Corrupti rerum et excepturi officiis doloremque autem non dolorum.', 'Autem a velit officia animi. Aut sit natus earum voluptas fugit. Est consequuntur sequi dolor quasi.', 1816, 2828, 'Beginner', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(257, 'Rerum repudiandae ut nemo sit officia et.', 'Eligendi et veniam cumque perferendis. Qui sit dolores dolor recusandae nobis. Veritatis possimus sunt eius deleniti. Natus incidunt delectus sequi animi.', 2413, 3116, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(258, 'Expedita sit quidem voluptas adipisci odit corporis.', 'Nihil velit error facilis autem et atque id. Odio sed doloremque consequatur consequatur voluptate beatae perspiciatis. Aut non ut numquam.', 3923, 1249, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(259, 'Et quo est aliquam porro et facilis.', 'Sed dolorem perspiciatis non tempora reiciendis. Sed quia ad provident rerum fugit expedita et. Praesentium iure autem itaque sit omnis numquam rerum. Consequatur sunt atque accusantium. Cumque beatae tempore deleniti facere iste.', 1446, 3611, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(260, 'Quaerat rerum ut numquam praesentium dignissimos iste.', 'Aut deleniti voluptas beatae ullam reiciendis. Blanditiis soluta dignissimos doloremque ullam voluptas. Quo dignissimos cupiditate dolorem quis aliquid doloremque. Quam quisquam repellat est non nulla quidem.', 3262, 1803, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(261, 'Perferendis repellat totam dignissimos rerum occaecati.', 'Sequi tempora molestiae repellendus non facilis eum enim. Sint quos impedit ut recusandae ut doloremque. Cumque excepturi autem est qui rerum. Dolore temporibus quia veniam nam inventore mollitia.', 3439, 676, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(262, 'Fuga et corrupti id quam architecto.', 'Et vel quia officia consequatur. Veritatis minima blanditiis eos ut enim qui nulla. Consequatur doloribus vitae omnis et aut.', 3304, 3586, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(263, 'Iste voluptates labore quos sed aspernatur quod libero.', 'Vel sed voluptas laborum. Esse dolorem aperiam velit asperiores. Odit qui et rerum cupiditate illo dolorem voluptatem. Optio sed sequi dolores necessitatibus dolore autem dignissimos impedit.', 1635, 1857, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(264, 'Voluptatibus sit facilis voluptatum placeat ipsum.', 'Distinctio error non sint ut veritatis itaque. Et maiores doloribus sit tenetur aut.', 1862, 2042, 'Beginner', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(265, 'Enim consectetur id impedit sint.', 'Repellendus molestiae non odio reiciendis et possimus ullam. Possimus sed quisquam reprehenderit ratione ea. Aut voluptatem occaecati aut magni distinctio deleniti illo. Perferendis hic unde aut qui et nam.', 2287, 3601, 'Beginner', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(266, 'Natus eaque sapiente in dolores aperiam consequatur sint.', 'Illum repellat quo eius similique libero quasi. Autem vel consectetur velit in mollitia beatae ut. Consectetur soluta mollitia id quasi. Eos incidunt corporis repellat aut voluptas aut. Qui natus voluptas omnis sunt.', 2762, 3412, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(267, 'Omnis animi beatae itaque cumque atque sit.', 'Eum libero quia pariatur ut. Quo molestiae laudantium sit officia aliquam error. Sit illum necessitatibus et odio et et. Voluptatem dolorum facilis quisquam debitis laboriosam.', 4456, 2878, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(268, 'Provident ea illum dignissimos sit eum.', 'Beatae earum vero libero laudantium modi. Assumenda quidem sunt hic quia nisi rem quia consequatur.', 2199, 3188, 'Beginner', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(269, 'Quia debitis dignissimos possimus fugit sint a esse.', 'Fugiat veritatis similique autem dolores. Sed ut qui voluptates quae quibusdam. Quibusdam modi voluptatem et iusto quis.', 4126, 2437, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(270, 'Sint nostrum blanditiis deserunt est totam aut sunt.', 'Necessitatibus fugit unde beatae aut minima. Sequi consequuntur labore exercitationem. Ea fuga consequatur sit nihil laudantium soluta enim.', 4021, 3703, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(271, 'Necessitatibus doloremque consequatur sed illo.', 'Hic a quis non enim voluptatem. Consequuntur laudantium quo in accusantium aut. Sunt optio repellendus consectetur maiores dolor vel nihil. Architecto rerum veritatis itaque labore quia occaecati dolor pariatur. Ut accusantium nulla sit et vel consequatur explicabo recusandae.', 1251, 1059, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(272, 'Dolores natus aliquid quidem neque omnis error cupiditate.', 'Aut labore quia nobis dignissimos velit nesciunt. Sequi nesciunt sit nesciunt minus eos temporibus atque minus. Tempore voluptatum et neque reprehenderit ipsam laborum.', 4855, 2314, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(273, 'Laudantium nesciunt eum labore atque molestiae sunt.', 'Rerum aliquam perferendis et et. Quasi dolores voluptatum nesciunt omnis possimus voluptatem.', 4513, 2336, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(274, 'Accusamus sunt beatae pariatur quaerat minima distinctio earum.', 'Saepe fuga voluptatem iusto nostrum repellendus illo esse. Illum mollitia ab qui ut eos ipsam sunt necessitatibus. Dolorem perferendis enim voluptatum dignissimos ea.', 2835, 1170, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(275, 'Maiores recusandae maiores molestiae non.', 'Explicabo autem nam tempore omnis molestias placeat ut. Odit molestiae tempore id vitae et et voluptas. Aut ullam quisquam corporis illum sequi deserunt. Veritatis id hic incidunt velit.', 2877, 1026, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(276, 'Quos distinctio numquam excepturi qui dolores velit culpa.', 'Eligendi ut eum magnam vero rerum. Atque blanditiis exercitationem et veritatis. Dolorem error odit saepe sit dolor. Eius repudiandae consequatur quod nemo sapiente exercitationem et. Veniam harum non dolorem accusamus excepturi autem.', 4713, 2609, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(277, 'Omnis nobis consequatur et eligendi.', 'Quis amet molestias accusantium fugiat est. Culpa quasi vel dolorum quasi eos a. Explicabo quas rem commodi sint corporis aperiam perspiciatis. Sint enim odio autem.', 1708, 1436, 'Beginner', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(278, 'Qui laudantium veniam sed maxime ipsa voluptatem.', 'Molestiae eum consequatur officiis est necessitatibus aut sit. Sint optio labore voluptate delectus. Maiores similique exercitationem non qui et itaque.', 1066, 3773, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(279, 'Exercitationem vel voluptates et ut corrupti asperiores.', 'Ad sit minima unde. Aliquid omnis nulla fuga qui. Atque quis facilis voluptatum quidem quia voluptatem quo aut. Possimus rerum tempora iste repudiandae quasi nostrum.', 886, 1780, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(280, 'Ea qui rerum soluta rem incidunt suscipit nobis maxime.', 'Deleniti reiciendis qui magnam voluptas eum et odio. Itaque mollitia nam error omnis. Dolores et ipsum ea et pariatur omnis.', 4869, 2138, 'Intermediate', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(281, 'Omnis eum earum dolore quibusdam velit.', 'Quia architecto vero nulla perspiciatis asperiores laborum officia. Sit perspiciatis vitae voluptatum sunt commodi illo voluptatem dignissimos. Earum pariatur repudiandae et blanditiis dolorum eveniet. Debitis autem provident aut eligendi omnis.', 3907, 773, 'Advanced', '2020-04-04 16:31:51', '2020-04-04 16:31:51'),
	(282, 'Quisquam excepturi officia dicta repudiandae in illum aut dolorum.', 'Beatae quia voluptatem ea tempore rem expedita. Itaque sequi quo autem libero omnis nihil. Accusamus temporibus ut aut perspiciatis aliquid.', 3783, 1981, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(283, 'Consequatur quia consequuntur est doloremque unde.', 'Architecto et est minus aspernatur. Mollitia eius expedita sunt iusto dolore omnis. Aliquid iure suscipit enim. Provident ipsam qui asperiores dignissimos nemo. At laboriosam consectetur dolorem sit perspiciatis accusamus molestiae.', 4284, 3700, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(284, 'Fugit consequatur et beatae totam delectus non animi.', 'Accusantium fuga nulla est explicabo consequuntur rerum. Velit ut nam nesciunt ut nulla. Id est excepturi ut porro iusto dolore. Enim adipisci explicabo praesentium et.', 1798, 3227, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(285, 'Cum autem reprehenderit voluptatem rerum sunt.', 'Illo deserunt odio ea ut velit id. Ipsam impedit laudantium et corporis. Expedita numquam et quidem. Rerum modi sint cupiditate aut.', 1771, 3792, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(286, 'Enim numquam voluptas deleniti voluptatibus debitis quis officiis architecto.', 'Voluptas autem atque ducimus corrupti corporis quas. Quaerat fugiat ut animi quia ut. Quo error numquam laborum quisquam.', 960, 2669, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(287, 'Culpa aut quod minima et autem eius placeat.', 'Repudiandae consequatur neque est corrupti autem saepe aut. Sit est voluptatibus odit voluptatem et. Qui voluptatem qui mollitia dicta veniam omnis magnam laboriosam.', 2818, 3093, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(288, 'Vero et incidunt asperiores aperiam omnis eum.', 'Est et quibusdam voluptatem voluptatum quasi aut. Molestiae exercitationem et velit molestiae aut. Rerum odio cum quasi laborum. Reiciendis veniam id nam alias quibusdam neque perferendis veniam.', 4075, 2396, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(289, 'Labore ipsam et error ipsum ut enim fuga.', 'Aut rerum consequatur voluptatem illum. Provident illo dolor fuga deserunt. Adipisci beatae in iure et facere.', 2089, 2400, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(290, 'Amet odio et repellat dolores quis commodi.', 'Modi non at voluptates doloribus. Aut aspernatur ullam optio dolore.', 2915, 3472, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(291, 'Beatae cum quod modi sunt impedit sequi sed aut.', 'Earum autem deleniti iste non quia a. Nulla quas consequatur iste libero non recusandae est.', 2314, 736, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(292, 'Maxime quia est maiores incidunt numquam quia saepe.', 'Aut delectus magni sequi et officia impedit. Quo dolorem qui sunt est non. Asperiores sapiente voluptates rem sit.', 2857, 1308, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(293, 'In ipsum quos voluptatum qui sunt voluptatibus.', 'Rerum quasi debitis quia. Rerum rem ea non et dolores nulla est officiis.', 4758, 544, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(294, 'Hic quis et rerum dolorem.', 'Aperiam commodi ullam tempora magnam omnis. Asperiores qui nam sed accusantium culpa. Ullam placeat impedit voluptate aut voluptates dolor.', 4845, 623, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(295, 'Voluptatem odio nihil inventore tempora harum.', 'Et impedit quisquam ad esse. Similique distinctio nulla nostrum nihil ut atque blanditiis sed. Suscipit dolorum vitae officiis aliquid voluptatem est.', 3736, 2810, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(296, 'Ut dolorem autem voluptatem fuga.', 'Itaque iusto nemo ratione eveniet beatae voluptas. Voluptatem voluptas debitis porro quisquam eaque. Facilis ullam esse ea aut. Illum animi nisi quisquam ipsam. Omnis autem animi fugit nihil doloremque eum.', 3190, 1353, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(297, 'Vero veniam recusandae facilis velit.', 'Aut et dignissimos ipsa aut. Voluptatem soluta quia in et laborum sunt perferendis saepe.', 1392, 2194, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(298, 'In autem sint et hic dicta dolore consequuntur voluptas.', 'Eos est aut dignissimos fuga omnis est. Expedita est expedita exercitationem incidunt voluptas ipsum incidunt. Quo consectetur aut ex nihil ducimus. Doloribus in eum tempore et quis est. Beatae illum pariatur quia nam autem officiis et nulla.', 1399, 1630, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(299, 'Error ut quam est harum dolorem.', 'Iusto qui libero laborum voluptas voluptas. Cupiditate quia dignissimos aut ex aut. Aut culpa sed mollitia velit.', 2332, 3474, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(300, 'Voluptatem eligendi omnis neque ut minima.', 'Corrupti a sit provident accusantium dolor perspiciatis quia. Et aspernatur ex voluptate illo facere sit incidunt. Totam earum fugit accusantium nemo iusto.', 1873, 1464, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(301, 'A neque nobis aliquid officia aut et nesciunt optio.', 'Illo nihil explicabo unde reiciendis et vel voluptatem. Rerum officia nostrum quo fuga voluptatem. Neque illo autem mollitia enim hic eum omnis deleniti. Molestias quaerat rerum et.', 2973, 1599, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(302, 'Laboriosam qui voluptatum ut quas dolor.', 'Est harum commodi earum temporibus. Repellendus sit et placeat repudiandae ducimus tempora deleniti. Dolore est fuga qui sapiente nesciunt necessitatibus. Sed quia consequatur sed omnis quasi asperiores.', 1772, 2902, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(303, 'Sed ratione architecto ipsum neque tempora culpa.', 'Quae sed molestiae eius maxime. Aut consequatur architecto et dolor ea.', 1524, 1009, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(304, 'Voluptas quidem sapiente autem exercitationem dolores velit sequi.', 'Eaque eius enim illo voluptas ea. Fugiat possimus ut aliquam odio corrupti recusandae dolorum. Ea est quia veniam et provident fugiat. Sapiente accusantium vero omnis incidunt qui.', 2678, 2028, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(305, 'Eum quidem id ad et quis veniam ullam.', 'Earum dolore explicabo quibusdam non aut ducimus eligendi. Dolores id consequatur a ut earum. Aperiam ut soluta beatae sed.', 2522, 516, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(306, 'Aut nesciunt porro numquam cum sed quia vero.', 'Amet enim consequatur in consequatur molestiae aut reiciendis. Est corrupti expedita esse qui occaecati magni. Quod soluta illum magni dolores et. Qui natus sequi cum.', 1440, 2895, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(307, 'Eaque hic numquam et sequi vitae dolorem omnis.', 'At corrupti nihil atque molestiae temporibus consequatur consequuntur. Aliquam consequatur blanditiis sit nulla mollitia. Amet omnis quis qui natus non voluptatem.', 2347, 1521, 'Advanced', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(308, 'Quis non ut consectetur sint dolores voluptatem eveniet.', 'Id rerum error consequatur expedita reiciendis et. Vitae corrupti nam impedit fugiat voluptate nisi doloremque.', 2617, 2629, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(309, 'Beatae omnis consequuntur dolores temporibus qui.', 'Sapiente aliquam consequatur eveniet laudantium. Facere dolor aliquid quos eum commodi laudantium id. Est hic sit asperiores necessitatibus ab. Iste et qui veritatis ratione.', 4360, 2673, 'Beginner', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(310, 'Delectus minus sunt exercitationem consequatur nisi.', 'Assumenda nemo qui amet ut non aut qui. Omnis at at nam laboriosam ex qui porro ea. Cupiditate facilis voluptates numquam porro incidunt omnis minus. Eveniet nobis doloribus qui nemo qui.', 3524, 1649, 'Intermediate', '2020-04-04 16:31:52', '2020-04-04 16:31:52'),
	(311, 'Ut cum pariatur cum ipsum.', 'Delectus ratione doloremque dolores illo qui. Voluptas consequatur sit in voluptatibus. Ratione vitae tenetur ad.', 2127, 931, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(312, 'Illo quisquam ut assumenda est placeat sunt.', 'Voluptas mollitia quia nisi quis. Dolores dolor magnam voluptatem ut veniam suscipit. Quia cupiditate cum iusto ut eos.', 2291, 2523, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(313, 'At autem qui amet consequatur expedita et et.', 'Occaecati neque laudantium dolorem quis rem commodi magnam rerum. Non eveniet officiis tempore sint. Vel in inventore aut autem nihil facilis consequatur perspiciatis.', 2482, 1070, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(314, 'Vel sit ipsum qui ipsam eum commodi.', 'Eos voluptas cum cumque qui at qui. Ut rem corporis sint nihil omnis. Vitae corrupti placeat distinctio nam eos.', 1610, 2994, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(315, 'Quisquam repellat doloremque similique vel et.', 'Molestiae sed explicabo architecto perferendis quo et. Porro laborum occaecati dolores doloribus nisi maxime aut omnis. Quis quos est vel sit rem aperiam est dolorem.', 2167, 2440, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(316, 'Quae ducimus sunt quasi quaerat praesentium et distinctio numquam.', 'Nobis et ab nihil reiciendis laborum accusamus. Illo nihil iusto sit sint et. Sint ratione voluptatibus sit assumenda sint omnis. Rerum voluptatem doloremque esse iusto adipisci natus ipsum.', 2339, 3727, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(317, 'Vero laboriosam quae nemo sed quis pariatur cum voluptas.', 'Mollitia omnis ea necessitatibus. Vel animi ut repellat quidem laudantium odit debitis sit. Eligendi et sit quod.', 3626, 2222, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(318, 'Aut expedita aspernatur ipsa reprehenderit esse ab.', 'Ut esse quis consectetur consequuntur labore dolorem. Corporis accusantium non laboriosam sequi atque sit ab. Qui et accusantium ut accusantium delectus doloribus. Quis corrupti voluptatem ut inventore reprehenderit quisquam doloribus.', 2653, 1553, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(319, 'Aut nulla mollitia quis pariatur.', 'Voluptas ut molestiae aliquid ut esse et. Facere soluta architecto voluptatibus aut sit. Recusandae voluptatem id alias qui culpa temporibus. Et corrupti voluptas velit accusamus eligendi et qui.', 2474, 1583, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(320, 'Quidem ut accusantium sed autem quod mollitia.', 'Eos quibusdam dolorum aliquid culpa et fuga recusandae. Sunt mollitia officia nostrum minima. Non non ut velit expedita ut aliquam beatae. Repellat consectetur dolorem ullam architecto vel.', 4825, 2151, 'Intermediate', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(321, 'Quia fugiat voluptatem sapiente asperiores possimus.', 'Et minus dolores rerum qui. Ducimus explicabo a voluptatem fugit veniam maiores. Ex provident nesciunt non. Autem et voluptatem qui rerum accusamus est ut.', 3050, 3198, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(322, 'Id earum omnis molestiae et.', 'Velit ratione libero cupiditate odit in aspernatur quis atque. Et repellat nihil qui. Qui sint fugit rerum eum et nostrum beatae.', 3761, 3627, 'Intermediate', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(323, 'Nemo non ab delectus sunt mollitia saepe.', 'Est occaecati sed tenetur ipsa. Saepe id repudiandae dolor. Excepturi quos quas magni ullam sunt quos repudiandae. Sit nulla magni adipisci qui nisi sed.', 1732, 3821, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(324, 'Sunt aliquam hic enim omnis reprehenderit aliquam sit.', 'Vero aut quisquam id dolorem labore. Rerum quos facilis nisi quae doloribus veritatis animi. Quae eligendi qui aut consequatur. In vel sed odit ut sunt porro velit.', 3051, 3783, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(325, 'Voluptatem qui qui ab blanditiis esse repellendus error.', 'Quo sed cumque aperiam eligendi eligendi ullam. Exercitationem sunt qui ut expedita omnis praesentium. Exercitationem iure cupiditate laboriosam et maxime inventore ipsam id. Non corporis cupiditate ut et corrupti pariatur enim. Neque omnis et quaerat vel et ut.', 4892, 546, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(326, 'Natus sint recusandae explicabo repudiandae id.', 'Nemo odit laborum aut non aut iusto nobis. Eos ex sint blanditiis temporibus doloremque nulla. Soluta voluptas voluptas occaecati totam ut non.', 3177, 1692, 'Intermediate', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(327, 'Maiores sit quod quia eveniet.', 'Suscipit unde et impedit consequatur velit. Aut id amet praesentium ipsum. Quidem ut voluptatibus enim nihil inventore itaque quis. Atque consequuntur quia unde consequuntur possimus fuga.', 4690, 1865, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(328, 'Corporis quia dignissimos quidem animi nobis.', 'Id recusandae aperiam praesentium repellat. Maxime voluptatem qui sed. Ut aut quo autem consequatur.', 1803, 1343, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(329, 'Occaecati deserunt dolores autem voluptas.', 'Vel omnis perferendis beatae ut veniam. Aliquid nam laborum consequuntur omnis quo. Laudantium molestias iste omnis saepe expedita laborum. Et repudiandae atque nulla perspiciatis et error.', 1370, 3745, 'Intermediate', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(330, 'Non qui deleniti quaerat modi inventore magnam.', 'Sit sed quidem et vero. Sint rerum ratione ullam corporis delectus in. Odio doloribus ut molestiae fugiat quo adipisci. Eius deserunt dolorum qui rerum.', 4894, 2920, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(331, 'Aspernatur eum molestiae suscipit et.', 'Odit quo rerum molestias ut quos rerum quaerat. Ut enim perferendis itaque dolor minima eos. Sunt quia est impedit possimus cum qui ad reprehenderit. Aut nulla nemo asperiores expedita accusamus magni exercitationem.', 1660, 2178, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(332, 'Inventore voluptatibus iure in nesciunt eveniet aspernatur quia.', 'Sapiente beatae est assumenda ut perspiciatis. Facilis quis nesciunt unde amet labore. Dolor ipsum praesentium saepe quis.', 3043, 3555, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(333, 'Vel ut magnam eveniet quaerat.', 'Molestiae quia molestiae veritatis laborum possimus enim molestias. Error id pariatur enim pariatur. Voluptatibus et corporis saepe omnis. Placeat quia esse voluptate sunt nostrum.', 3294, 2091, 'Beginner', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(334, 'Ex facilis adipisci commodi accusantium quo possimus.', 'Voluptates quia tempora quo est hic odit. Praesentium doloribus est ullam. Aut id veritatis fuga.', 1995, 1645, 'Advanced', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(335, 'Cupiditate et qui necessitatibus.', 'Et amet quia velit error natus. Sed magni tenetur quis qui similique repellat aliquid.', 3294, 1993, 'Intermediate', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(336, 'Vero dolore non voluptates consequatur et qui aliquid amet.', 'Quia atque aliquid nobis ipsam hic dolore et. Similique ipsam explicabo dolor quam sunt dolores. Laudantium amet accusantium modi consequatur omnis.', 3850, 434, 'Intermediate', '2020-04-04 16:31:53', '2020-04-04 16:31:53'),
	(337, 'Omnis molestiae eius voluptatum officia consequatur non molestiae.', 'Et maiores aut eligendi sapiente consequatur sunt. Odio esse praesentium laborum eum labore soluta eos. Inventore voluptatem unde sit optio sit autem occaecati.', 2446, 709, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(338, 'Quae aliquam placeat aliquid ut et qui et laboriosam.', 'Provident ea sequi et rerum minus. Earum quia ab dolorum exercitationem animi ut doloribus. Molestiae aut ut dicta qui incidunt autem eos minima. Saepe non nisi itaque laboriosam.', 4424, 1343, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(339, 'Sunt architecto aliquam in est et consequuntur corporis sed.', 'Amet voluptas sed consequuntur dolorem fuga dolorum atque. Eaque harum et rerum ut sunt quis temporibus. Cumque qui inventore dignissimos non voluptatum vel ea quia. Deleniti non itaque nobis similique expedita ut exercitationem.', 4187, 2234, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(340, 'Debitis eveniet quia harum at quo quia consequatur nam.', 'Ut velit incidunt enim aut voluptates sequi reprehenderit. Accusantium enim vel dolorem voluptates aut quisquam sed. Laborum repellendus accusamus minima magnam. Itaque recusandae ratione officiis velit ad aut.', 2936, 2320, 'Beginner', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(341, 'Maxime ex commodi fugiat rerum.', 'Facilis autem voluptas dicta a delectus enim. Neque ea quasi officiis natus sit. Dolore molestiae commodi quas quia quis at tenetur. Sunt omnis inventore ut soluta repudiandae rerum.', 1029, 550, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(342, 'Laboriosam id tempore voluptas qui voluptas.', 'Amet aut fuga natus et tenetur. Quas ut quod earum id cupiditate ipsam. Voluptas aut laboriosam error ut accusamus quia. Laudantium sit ut sed molestias saepe autem.', 1470, 540, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(343, 'Odit ipsum enim occaecati maxime deserunt.', 'Et provident vel consequatur iste inventore iusto. Nihil delectus est ex qui et corporis. Qui culpa perspiciatis aut enim non consequuntur at architecto. Voluptatum sed voluptatibus optio porro.', 3961, 635, 'Beginner', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(344, 'Illum veritatis distinctio sint sed facilis assumenda recusandae.', 'Nesciunt ipsam quia iusto rerum dolor nisi sint corrupti. Quasi accusamus placeat corporis aliquid. Qui repudiandae est occaecati cum.', 3811, 1278, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(345, 'Consectetur repellat libero vero fugit perferendis dolores maxime.', 'Accusantium sit voluptate debitis doloribus inventore voluptates dignissimos molestiae. Quo nihil itaque voluptatem est consequatur dolores ut. Reiciendis qui et soluta omnis sit rerum error earum. In sed repellat sed debitis. Ab commodi minima et.', 2318, 3996, 'Beginner', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(346, 'Eos repudiandae rerum facilis repellat impedit.', 'Reprehenderit quae accusamus facere voluptatem in et vero temporibus. Esse inventore veritatis recusandae similique. Aut libero et numquam. Nostrum quos aut soluta recusandae sequi.', 2532, 1879, 'Beginner', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(347, 'Harum ut facere recusandae est doloremque minima.', 'Est id veritatis ut rerum et debitis id. Maxime laborum occaecati numquam dolorum sed. Et at voluptate accusamus exercitationem facere repellendus est.', 997, 442, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(348, 'Dolor hic dolor rem est sequi est.', 'Qui rerum rerum voluptates consectetur aut architecto. Ullam cumque nihil et quisquam illo eligendi. Placeat similique aut illo laborum.', 2345, 2580, 'Beginner', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(349, 'Reprehenderit nihil laborum autem ullam.', 'Aspernatur reprehenderit cupiditate ipsum et eum ut. Dicta officiis quaerat voluptatem velit. Minus voluptatem repellat quae quod ut id.', 1076, 3175, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(350, 'Ex tempore quasi nisi quo vel qui.', 'Et illo voluptas in id voluptate. Repellendus sapiente reiciendis exercitationem dolorem. Aut perferendis et magni temporibus doloribus. Eaque illum ab voluptas dolore quos eveniet sed. Atque ad veritatis nam et qui quia commodi deserunt.', 2377, 1110, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(351, 'Ut eaque veniam illum consectetur iure perferendis.', 'Provident est sit similique in. Eaque nesciunt et eligendi ut maxime quia laudantium. Repellendus ullam illo ea exercitationem sed. Et repellendus neque ex non. Laboriosam ut sit voluptate voluptatibus voluptatem quos exercitationem.', 1518, 2903, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(352, 'Nesciunt quam reprehenderit laudantium ipsam quia nesciunt est omnis.', 'Quo in qui odio asperiores doloribus sed voluptate incidunt. Vel consequatur eum quaerat dolorem. Modi temporibus distinctio voluptatem voluptatem eos deserunt atque.', 1692, 3202, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(353, 'Commodi quis expedita et vel ea qui quisquam est.', 'Inventore facere optio eos quasi molestias. Ut voluptates ad unde. Adipisci quia voluptate ut optio sunt.', 1891, 3175, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(354, 'Pariatur enim delectus laudantium vero perspiciatis.', 'Debitis voluptatum quasi est quidem pariatur cum. Velit est voluptatem et cupiditate enim exercitationem dolore. Illo quisquam vitae commodi. Quisquam et temporibus velit exercitationem non ratione qui.', 4012, 3717, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(355, 'Voluptate inventore nihil eum et.', 'Nobis commodi officia quam ab voluptas rerum dignissimos. Dolores accusantium nobis consequuntur est. Nam voluptate amet consequuntur odio voluptas inventore excepturi iusto.', 3166, 485, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(356, 'Eos labore et officia molestias hic eveniet dignissimos.', 'Et sunt officiis dolorum qui. Asperiores ab eum doloribus. Consectetur ut voluptas tempore id in.', 2194, 1154, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(357, 'Nostrum repudiandae porro dolores qui.', 'Et praesentium quo ea quia voluptates sit voluptatem qui. Non aut officiis sit sed non ut consequatur. Iure quo itaque porro facilis ipsum. Modi accusamus ea maiores id. At eligendi voluptatem dolores qui blanditiis.', 4761, 2018, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(358, 'Inventore distinctio ducimus architecto et quos veniam.', 'Animi dicta voluptas cupiditate. Consequatur in qui quia et non consequatur. Aut quia voluptatibus est veritatis.', 3906, 3775, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(359, 'Ipsam excepturi fugit quaerat eaque neque itaque repudiandae.', 'Excepturi illo nam delectus illum vel ut alias. Quis aut sint voluptates saepe consectetur placeat. Saepe et autem corrupti voluptatem temporibus dolorem commodi. Nobis nisi saepe molestias esse qui est aperiam.', 4634, 3505, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(360, 'Eum et esse voluptas aut vitae voluptas vitae.', 'Est rerum sequi earum qui. Ab minus ut voluptatem ut molestias delectus rerum. Sunt repudiandae voluptatem molestiae culpa ut fugit.', 3424, 3704, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(361, 'Qui facere aut nisi qui necessitatibus.', 'Enim voluptatem sunt omnis adipisci quia. Quia voluptatem atque rem rerum. Laudantium adipisci quia totam commodi nulla voluptatum dolorem.', 2047, 1076, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(362, 'Autem aut iusto est.', 'Eos ullam sapiente itaque voluptas placeat ipsa aperiam. Quaerat doloremque itaque provident rerum tempore consequuntur quasi sed. Sit voluptas voluptas doloremque voluptas omnis cum.', 2415, 1188, 'Advanced', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(363, 'Nisi aut provident id.', 'Necessitatibus voluptas numquam aliquid consequatur. Illo et similique expedita quos officiis mollitia. Rem quam vel qui consequatur ab consequatur.', 3451, 949, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(364, 'Vel et officia labore in ut id autem similique.', 'Necessitatibus sed occaecati sint. Eos occaecati error porro quisquam eos soluta iste.', 4100, 2221, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(365, 'Placeat ut et delectus voluptas qui voluptatem laudantium sit.', 'Recusandae autem magnam ullam voluptates debitis ipsum perspiciatis nemo. Eaque qui harum voluptas consectetur ea esse. Est aut blanditiis corporis repellat voluptates sint. Sint dicta minus excepturi tempore vero qui.', 3335, 440, 'Intermediate', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(366, 'Maxime voluptatem possimus sit iusto commodi hic.', 'Molestias et sit laudantium sit mollitia. Quisquam nam nam illum quis. Dolorem laborum dignissimos temporibus doloremque illo ad molestias. Non et et qui enim.', 1235, 3876, 'Beginner', '2020-04-04 16:31:54', '2020-04-04 16:31:54'),
	(367, 'Corporis doloribus repudiandae et et beatae.', 'Et illum ut quos officiis blanditiis itaque numquam. Deleniti omnis necessitatibus sed aspernatur enim in laboriosam eligendi. Quo nostrum laborum sint. Atque vel repudiandae corporis.', 3151, 3331, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(368, 'Vitae rem veritatis voluptas.', 'Non optio sint modi sunt. Vel mollitia excepturi eos voluptatibus at. Beatae eveniet voluptas qui sit unde.', 923, 2191, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(369, 'Veniam quis dolor nihil rerum itaque voluptas.', 'Ex sed consequatur quasi laudantium. Sit perferendis excepturi deleniti enim et deserunt. Debitis sint quaerat eveniet dolorum aperiam natus.', 1815, 3938, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(370, 'Velit voluptas et delectus quasi et.', 'Necessitatibus ea fugiat qui maiores cumque. Ab voluptate temporibus quod sed ut eum saepe aut. Natus ut labore voluptatum. Enim laborum quas atque quasi aut.', 3535, 940, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(371, 'Accusantium dolor at ipsa quis sed rerum quisquam.', 'Reprehenderit nulla velit consequatur facilis quasi quia. Eaque eveniet est eos ut. Totam reiciendis ex soluta rerum est possimus. Necessitatibus rem nulla provident neque et et hic.', 3808, 3047, 'Intermediate', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(372, 'Harum odit incidunt explicabo at qui.', 'Ullam aut ut incidunt illum fuga sed. Qui dolores vitae eum illum error qui libero. Excepturi praesentium nostrum fugiat consequatur. Mollitia voluptas accusantium expedita.', 1103, 3410, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(373, 'Deserunt maiores eos tenetur facilis beatae.', 'Veritatis corrupti nemo esse sint quo aut. Et voluptatem explicabo et nihil reiciendis mollitia. Beatae minima ipsum sint ratione et reiciendis exercitationem.', 1221, 3217, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(374, 'Tenetur expedita eaque commodi nihil.', 'Et aut qui vel illo quia. Amet iste et quia quia consequuntur facilis ex. Non delectus distinctio quia magni voluptas expedita.', 4760, 1269, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(375, 'Fugit itaque rerum optio ut quia earum maiores nisi.', 'Sed molestiae id sunt esse unde voluptatem culpa. Vitae non exercitationem molestiae qui aut sapiente aperiam ullam. Est et corporis mollitia optio qui. Reprehenderit cum ut blanditiis amet repellendus repudiandae suscipit id.', 3806, 3218, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(376, 'Corrupti et est unde praesentium sint.', 'Eaque a ipsa itaque fugiat dolor architecto odio blanditiis. Alias voluptatem sint nemo. Quasi animi rerum quidem quas. Illum fugiat sed ex.', 1196, 2594, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(377, 'Et quod voluptas odio at velit expedita.', 'Quod necessitatibus delectus asperiores et id. Porro ea officia doloremque molestiae et aperiam saepe.', 1928, 1945, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(378, 'Sed ex molestiae dolor sed.', 'Velit sit provident dolores fuga quia. Non quis ea harum et ut. Harum laboriosam est harum quos voluptas beatae impedit. Illo nulla est tenetur illo minima ex.', 4643, 1175, 'Intermediate', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(379, 'Nesciunt illo quibusdam dolorem voluptatem.', 'Quo iusto pariatur velit adipisci nulla. Et rerum porro aperiam beatae a doloremque. Velit expedita in occaecati beatae sed praesentium. Id omnis ab doloribus aut debitis nisi.', 1094, 405, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(380, 'Exercitationem molestias explicabo iste veritatis.', 'Aut officiis impedit magnam. Repellat temporibus enim libero dignissimos est et omnis deserunt. Quas consequatur voluptas rerum iure.', 2504, 3505, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(381, 'Exercitationem similique laborum blanditiis ut ducimus porro voluptas accusantium.', 'Qui repellat perspiciatis tempore explicabo repellendus iste. Numquam in ut quis delectus. Alias voluptatum ratione voluptatum laudantium odio vitae dolores dolore. Velit pariatur libero fugiat magnam rem nesciunt aut.', 2616, 539, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(382, 'Fuga assumenda veniam occaecati quia temporibus quia repellendus.', 'Qui voluptatum dolores inventore perspiciatis voluptatem veritatis quisquam. Alias illo id minima. Qui maxime et perferendis nesciunt debitis dolor voluptatem.', 3295, 1612, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(383, 'Aperiam quis recusandae ab et.', 'Quasi quis est et molestias. Sunt perspiciatis et soluta voluptas non. Excepturi dolorem exercitationem voluptatem nostrum expedita explicabo.', 3862, 2590, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(384, 'Explicabo atque quidem illum corporis placeat.', 'Nisi recusandae velit sint aut fugit doloribus voluptatem. Accusantium aperiam necessitatibus qui labore qui laboriosam occaecati. Inventore cupiditate rerum autem ut architecto maiores maiores. Quia eaque voluptatem odit omnis a ipsam. Qui fugit laboriosam facere deserunt adipisci consequuntur.', 3462, 479, 'Intermediate', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(385, 'Laboriosam et neque officia porro maiores ut est.', 'Inventore sint ut quia iusto id. Qui possimus enim soluta ipsum. Eum ex culpa omnis suscipit rerum laboriosam sit. Non dolores sint rerum dicta voluptas illo ea.', 3168, 2355, 'Intermediate', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(386, 'Tempore deserunt earum neque facilis odio exercitationem omnis.', 'Et commodi est id recusandae et ut aliquam nobis. Accusamus similique minima aut aut provident iusto reiciendis perferendis. Sint sequi libero quia maxime natus tempore. Voluptatem qui qui consequatur cumque earum rerum doloribus. Non libero dolorem quia.', 1662, 1374, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(387, 'Rerum libero cum sed porro dolor in.', 'Rerum et illum quo accusantium non est doloremque. Perferendis illum aut neque ut. Quis unde repudiandae quaerat et. Animi qui ea ex vitae quis.', 3634, 1270, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(388, 'Repellat ullam numquam sit veritatis voluptate eos voluptatem nulla.', 'Totam accusantium eum repellat occaecati officia molestias eveniet enim. Placeat eaque sequi minima quia. Hic molestias ad quae pariatur ut aperiam enim adipisci. Eaque ut quidem veniam qui.', 990, 898, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(389, 'Dolore voluptas possimus suscipit quo.', 'Veritatis harum facilis odit amet hic aut. Molestiae qui eum ut qui atque vel. Debitis quia laboriosam ea commodi. Ut quo sint qui consectetur sint.', 4694, 2521, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(390, 'Et temporibus facilis velit.', 'Magni eum rem et et labore et dolor. Perspiciatis quam quia cumque. Fugit delectus alias qui et. Sit suscipit et quos deleniti.', 3383, 1695, 'Beginner', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(391, 'Qui consequatur ipsum molestiae qui est.', 'Iure animi expedita ea vitae et et. Consequatur odit doloribus aut vero dolores et nobis. Suscipit repellendus iusto omnis modi inventore.', 4759, 1285, 'Intermediate', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(392, 'Dignissimos ipsam rerum occaecati nisi perspiciatis aliquam.', 'Eaque itaque illo qui iusto voluptas rerum nihil. Qui ducimus voluptatum voluptatem est dicta consequatur sed. Id officiis et delectus eum id excepturi quis. Qui eveniet praesentium id fugiat. Labore eum tenetur deleniti nobis natus.', 1655, 3501, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(393, 'Et sapiente ipsa enim ut.', 'Maxime numquam quis fugit architecto sunt sint harum. Qui beatae vitae illo reprehenderit saepe. Facere qui rem soluta sit quis doloremque pariatur.', 945, 3356, 'Intermediate', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(394, 'Ut explicabo in ea aut incidunt quos.', 'Voluptatem assumenda dolor minus dolore nesciunt. Laboriosam rerum explicabo eligendi tempora et iusto. Dolore velit aut hic excepturi qui aliquid eum.', 2443, 405, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(395, 'Quam omnis facilis qui inventore nisi aut repellat.', 'Itaque possimus reiciendis doloribus cum maxime voluptates. Cupiditate suscipit est rerum voluptas cumque totam numquam. Facere et saepe est perspiciatis. Eos est et officia aut.', 3301, 967, 'Advanced', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(396, 'Voluptas consequuntur atque et corrupti et placeat consequatur.', 'Magni quod quidem natus commodi vel perspiciatis. Qui ducimus doloribus laudantium rerum et rerum dignissimos. Est eos sunt incidunt praesentium. Eum veritatis et iste provident.', 1808, 733, 'Intermediate', '2020-04-04 16:31:55', '2020-04-04 16:31:55'),
	(397, 'Necessitatibus quos architecto nemo mollitia deserunt.', 'Quia optio modi dicta et molestiae sit libero. Soluta ipsam sint voluptatem iure. Aspernatur qui harum laudantium officia iste minima eum. Illo est omnis eos explicabo nemo.', 2574, 898, 'Beginner', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(398, 'Est dolores eos quibusdam aperiam architecto hic molestiae quo.', 'Cupiditate quia neque veritatis excepturi et. Veniam et deserunt earum ea saepe accusantium. Placeat error assumenda nostrum quasi deserunt explicabo consectetur.', 2835, 3735, 'Beginner', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(399, 'Ea quasi dicta consequatur qui ea consequatur architecto.', 'Qui facilis et nam perferendis consequuntur dolore rem. Totam et mollitia porro qui reiciendis ipsum sed. Et eaque dolor quidem.', 3731, 1252, 'Intermediate', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(400, 'Quaerat iste similique numquam omnis et doloremque.', 'Eius reprehenderit vero eaque et. Tempora blanditiis inventore illo omnis impedit ipsa iure. Aut harum voluptatem vel atque veniam qui.', 967, 1352, 'Intermediate', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(401, 'Doloribus ipsa quia sit sit eos sit.', 'Dolor aut nihil unde. Iure nobis sed qui commodi rem. Similique deleniti ratione temporibus repudiandae similique labore consequuntur suscipit. Eos modi sint molestias omnis.', 4026, 3708, 'Beginner', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(402, 'Tempora est pariatur doloribus adipisci dignissimos.', 'Dignissimos quaerat praesentium omnis vitae excepturi ad nulla. Tempora ipsa hic explicabo. Esse ratione debitis eos.', 1811, 2126, 'Intermediate', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(403, 'Laboriosam optio dolorem sint nulla sunt debitis sit.', 'Excepturi voluptatem et placeat et iusto veniam. Nemo iste distinctio facere quasi quas quidem. Commodi dolor doloremque aut quisquam similique voluptas sapiente.', 4989, 703, 'Advanced', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(404, 'Enim dicta adipisci possimus est ipsum perspiciatis.', 'Et incidunt voluptas nulla. Rerum molestiae animi consequuntur facere et. Temporibus ut enim minus non fuga beatae. Doloremque voluptatum modi fuga et id nihil quam. Eaque aut velit odit aut iste laboriosam.', 4266, 1100, 'Beginner', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(405, 'Hic aspernatur aut id ipsam.', 'Velit consequatur repudiandae quaerat quo. Minima quas veritatis sunt nemo facere sit.', 4791, 2590, 'Intermediate', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(406, 'Consequatur totam pariatur modi et.', 'Quia suscipit ad ducimus porro magni. Minus rem rem accusamus molestiae doloremque et aliquam. Assumenda cum aliquid nihil quibusdam possimus et perspiciatis.', 2161, 2344, 'Beginner', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(407, 'Odit consequatur assumenda enim dolore.', 'Cum ducimus molestias consequatur vitae. Ea repellat dolorem iure sed voluptatem dicta harum voluptatem. Officiis mollitia voluptatibus et exercitationem quae. Ut ea tempore ut quia fuga quod.', 3424, 408, 'Advanced', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(408, 'Nihil consequuntur nisi cumque sit debitis optio.', 'Sed enim ut amet sint eaque. Dignissimos dolore aliquam omnis natus. Eum repellat et quis. Facilis dolores cupiditate sunt unde qui.', 2593, 1755, 'Advanced', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(409, 'Ut possimus velit et sit nulla necessitatibus.', 'Vel excepturi voluptates quia blanditiis rem magnam. Maiores ut sunt est numquam ut dolorem eos. Et nobis in laudantium blanditiis eligendi et magni.', 1663, 3342, 'Intermediate', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(410, 'Aut temporibus iste porro quibusdam ut quaerat.', 'Reiciendis et non quod odio. Distinctio non voluptatem aut non ut animi consequuntur. Possimus ullam velit et architecto odit molestiae optio.', 4764, 1359, 'Beginner', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(411, 'Quis ut aut veniam neque rerum repellat quidem inventore.', 'Animi animi aut dolore ipsa atque laudantium rerum. Illo modi expedita qui. Veniam et earum ea rerum et eius consectetur qui.', 3557, 2744, 'Intermediate', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(412, 'Labore mollitia corporis sit assumenda cupiditate.', 'Consequatur animi doloribus libero est nobis qui dolorem. Eos et enim perferendis et deserunt nihil nam non. Debitis magni voluptates iste. Dignissimos corporis corporis cum facilis non.', 2315, 1210, 'Beginner', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(413, 'Illo enim incidunt cupiditate temporibus ipsam doloremque.', 'Cumque laborum aliquam quia aliquam est sed tempora magni. Aliquid provident officia sapiente possimus aut in voluptates. Consequatur distinctio impedit nostrum dignissimos ab voluptas natus. Beatae voluptatem in enim atque saepe.', 4292, 1541, 'Advanced', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(414, 'Maxime inventore nulla temporibus ea repellat.', 'Aut eveniet ex quia voluptatem perspiciatis nisi odit et. Voluptatem debitis aut et beatae tenetur incidunt itaque quia. Repellendus quas eligendi et consequatur cum. Natus dolores placeat placeat id.', 4304, 2549, 'Intermediate', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(415, 'Consequatur dignissimos commodi beatae libero ipsa quia.', 'Quasi atque labore debitis. Id perferendis repellat modi non optio mollitia. Quis beatae ut voluptate facilis laborum dolorem et. Quae voluptate dolore dicta qui voluptas eum.', 3904, 3515, 'Intermediate', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(416, 'Eum natus eos ducimus sunt optio ipsam dolorem quia.', 'Ut laudantium quia dolorem odio. Ex eum consequatur quidem doloremque aliquam soluta nobis eum. Qui vel sint dolore deserunt magnam aspernatur. Repellat culpa animi distinctio exercitationem dolore. Exercitationem cupiditate officiis dicta dolor.', 4940, 3208, 'Advanced', '2020-04-04 16:31:56', '2020-04-04 16:31:56'),
	(417, 'In sequi totam qui alias consequuntur repudiandae alias.', 'Quis eaque voluptatem dolores voluptate suscipit dolores et. Et sit tenetur quo incidunt tenetur. Asperiores quas tempore reprehenderit dolor maxime commodi.', 1460, 1886, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(418, 'Ipsum dolor reiciendis corrupti omnis aspernatur nesciunt.', 'Hic qui sed provident quae assumenda laboriosam explicabo dolores. Atque quia nihil sunt a iure repudiandae. Praesentium accusantium tempora ut et libero vel. Ut odio illo rerum. Vero et similique ut enim alias sunt.', 4848, 2887, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(419, 'Ut reiciendis illo omnis et.', 'Excepturi et enim repudiandae impedit delectus. Similique voluptatem debitis quia dolor sint. Voluptatum sint id dolor eos accusamus.', 3421, 3663, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(420, 'Alias consequatur fugit repellendus eligendi magni architecto.', 'Nihil neque delectus tempora consequatur hic soluta. Rem dolor omnis debitis id rem. Aut ut reiciendis ut fugit ipsa. Inventore asperiores quia et animi non voluptatibus accusamus.', 4071, 2987, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(421, 'Quo non saepe vitae nesciunt minima illo.', 'Et omnis consequuntur atque sapiente sed eveniet ut tempore. Et consequatur qui aspernatur et. Reprehenderit vero recusandae ex quae odit. Velit asperiores possimus nostrum in culpa et. Excepturi nobis et et beatae quas omnis.', 4951, 1037, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(422, 'Libero esse quos atque omnis aut autem nam.', 'Pariatur assumenda est est. Dolorem odio quia distinctio neque quia dolores. Quisquam nihil consequuntur sapiente aliquam. Cumque omnis unde ipsam nesciunt odio.', 4940, 2513, 'Intermediate', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(423, 'Aliquam aut consequatur nisi sed sed.', 'Perspiciatis ut similique voluptatem. Nihil officia iure repellat sed et nihil. Vero sit dolor dolorum maiores ut.', 1981, 1691, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(424, 'Quisquam iusto quos consectetur sunt sint.', 'Delectus reiciendis quos et neque. Soluta iste distinctio aliquam. Architecto a ut voluptatem culpa similique dolores facere.', 2667, 3044, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(425, 'Est ratione sed voluptas neque ut.', 'Distinctio quidem pariatur dolorem perspiciatis ex soluta. Ullam voluptatem laboriosam sunt consequatur. Cumque ea molestiae sit. Commodi qui quia aliquid iusto voluptas quia qui exercitationem.', 2578, 2986, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(426, 'Eum totam tenetur nisi provident.', 'Distinctio alias iure sed et recusandae dicta. Quibusdam voluptatibus maxime minima quidem vero praesentium. Laboriosam autem magnam vel nihil accusantium vero.', 4913, 1572, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(427, 'Enim nulla qui dicta quis ex commodi.', 'In in deleniti incidunt. Et voluptates harum quo sunt sit molestias.', 4276, 1532, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(428, 'A hic porro officiis eos beatae fugiat voluptatibus.', 'Et omnis autem pariatur neque et et blanditiis vero. Minus labore nostrum itaque fugit. Ea enim odio est qui modi praesentium voluptates itaque.', 1510, 2469, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(429, 'Voluptate qui quo eos a.', 'Illum architecto ullam id vel. Tempore quidem ipsum optio harum aut sed ducimus et. Et ut dolore quas numquam qui iusto numquam suscipit. Voluptas eum non quibusdam dolorem animi assumenda.', 3364, 1240, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(430, 'Porro voluptas qui cumque qui.', 'Enim quae veniam quaerat quasi quam. Molestiae in repellendus modi enim enim aut sit. Est quia voluptates reprehenderit. Illo neque non error voluptas amet.', 2906, 928, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(431, 'Mollitia quia itaque autem unde nisi nulla sed.', 'Distinctio alias quisquam ipsam ea. Veritatis natus iusto sapiente at eos deleniti. Culpa enim minus tenetur enim veniam ipsum.', 2559, 3571, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(432, 'Necessitatibus est impedit laboriosam sed aut nihil.', 'Voluptas aut et placeat et et maiores. Et praesentium odio aspernatur libero hic. Neque culpa qui maxime cupiditate reiciendis quia.', 3335, 991, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(433, 'Unde rem voluptas numquam aut natus dolorum.', 'Eum et autem et necessitatibus. Quidem fugiat qui magni cumque placeat debitis. Error soluta voluptatem harum et. Incidunt tempora et rem illum vel velit enim. Quo asperiores eligendi distinctio in possimus.', 3668, 3011, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(434, 'Non a vel aut dicta.', 'Tempore ad est harum consequatur. Vel est aliquam magni vel. Culpa qui excepturi consequatur voluptatum qui corrupti. Rerum eveniet sed dicta amet.', 2409, 1262, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(435, 'Quis rerum facere accusantium consequatur provident velit cumque.', 'Distinctio sit exercitationem sunt. Ut voluptas harum blanditiis fugiat. Repellendus aut nisi in impedit quas aut consequatur.', 2168, 913, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(436, 'Illo voluptatum deserunt est dolor vitae.', 'Velit consequatur culpa saepe dolore aliquid voluptatem. Ut qui sit aut aut. Sint quae aut est dicta hic. Error enim neque et quis a odio eum.', 2020, 975, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(437, 'Voluptas eum et commodi.', 'Vel ratione minus cupiditate id quam aut. Tenetur voluptas error aut aperiam. Facere sunt aspernatur et architecto id sunt est. Enim qui sunt vel non. Aut ut officia distinctio placeat dolor autem harum.', 4005, 3555, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(438, 'Aliquam architecto sint accusantium quas ut earum odio.', 'Quia quis corrupti et voluptas omnis nulla. Dolores ullam non iste et. Voluptatem veniam qui perferendis numquam unde vero.', 1793, 2497, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(439, 'Ut molestias voluptatum repellat et quis iste et omnis.', 'Ducimus nulla id quam veniam. Mollitia cum iste voluptatem voluptatibus. Exercitationem eveniet non culpa sed magni officiis. Soluta iure sint eos sunt odio.', 4432, 414, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(440, 'Est iusto rerum consequatur magnam ratione ex.', 'Est ea officia voluptas et. Assumenda exercitationem in aut totam provident sed. Nemo quam est placeat qui maiores qui. Aut veniam fugiat est dolor vel.', 1851, 749, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(441, 'Est omnis numquam quidem sint amet repellat nisi et.', 'Officia ut id eveniet quam numquam nulla aut. Sed occaecati et velit aut facilis ex pariatur. Officia voluptates nihil labore ut enim. Tenetur voluptatum nisi nihil quae pariatur.', 2486, 2804, 'Beginner', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(442, 'Totam ullam soluta deserunt aliquam asperiores voluptas.', 'Iste deserunt et deserunt optio ea et omnis. Eaque necessitatibus velit blanditiis enim voluptas. Velit aliquam libero assumenda et recusandae qui est.', 2524, 724, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(443, 'Et aliquid dicta explicabo.', 'Voluptatem repudiandae distinctio sit pariatur nostrum itaque. At quam consequatur assumenda sint sunt. Molestiae aut debitis repellendus sequi.', 3062, 2245, 'Intermediate', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(444, 'Voluptatem mollitia nihil fugit incidunt veniam temporibus molestias.', 'Blanditiis laboriosam eos consequatur magni architecto. Eveniet quo quas beatae sint quas iusto praesentium. Nostrum ut nihil quasi repudiandae.', 4813, 3881, 'Intermediate', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(445, 'Aspernatur quidem et quia voluptatibus numquam dignissimos soluta.', 'Omnis amet voluptatem fugiat voluptas et earum modi. Rem eaque magni placeat atque. Non dignissimos consequatur sit voluptatem nulla vitae officiis. Id delectus quia tempore molestias facilis.', 4902, 3655, 'Intermediate', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(446, 'Quia minima qui cum velit exercitationem eaque.', 'Suscipit ex atque maiores consequatur. Cupiditate quae incidunt id ullam nulla nesciunt. Eum ex id adipisci. In sit accusantium accusamus deserunt tempore magnam voluptas. Aut sunt eos quae deleniti praesentium in.', 1659, 1183, 'Advanced', '2020-04-04 16:31:57', '2020-04-04 16:31:57'),
	(447, 'Et et ullam qui officia aperiam consequatur accusantium.', 'Ex minus cumque qui atque veritatis voluptate animi. Delectus tempore et assumenda maxime. Qui iusto exercitationem aut fugiat aliquam molestias. Cupiditate dolorum adipisci et assumenda praesentium repellendus corporis.', 2549, 653, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(448, 'Cupiditate accusamus suscipit error ut alias.', 'Harum sed delectus vel consequatur voluptas. Id exercitationem quis reprehenderit ut architecto expedita. Soluta animi vel non consequatur eos dolorem voluptates.', 4198, 1354, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(449, 'Quod rem neque et eveniet.', 'Nisi eligendi ut aperiam quas. Ullam tenetur quisquam optio cum voluptas reprehenderit laboriosam incidunt. Ea exercitationem ut hic eum aut ea quis.', 2623, 2117, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(450, 'Animi id et repellendus illum blanditiis.', 'Et saepe similique nihil rerum tenetur nulla. Quo facere aliquam dolorem.', 3354, 3871, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(451, 'Doloribus eaque ab consectetur voluptatum minima unde unde.', 'Quia qui magnam voluptatem. Consectetur reprehenderit quo nostrum dolorum sed minus voluptatem. Earum quia error et eligendi rem debitis repellendus. Pariatur in molestiae id ut dicta. Est commodi necessitatibus et velit culpa quis doloribus rerum.', 3819, 2208, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(452, 'Eum mollitia et amet expedita dolores.', 'Iusto quis laboriosam harum similique voluptatibus beatae sit. Ipsa omnis placeat molestiae. Quia qui quia et error aperiam adipisci.', 4916, 3899, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(453, 'Autem aut quia vero veniam possimus earum ipsum.', 'Sint beatae et fugiat aut quam. Eveniet molestiae dolore blanditiis fugiat eligendi. Id quibusdam porro id dolor ipsum. Illo laudantium eaque eius.', 1828, 3134, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(454, 'Sit earum vel cum eum quidem ut voluptas.', 'Aliquam doloremque occaecati quibusdam sed. Cum unde accusantium magnam iusto modi necessitatibus. Quis nam officia quae rem. Ea fuga corporis a ratione cumque sit tempore.', 4399, 932, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(455, 'Voluptatem quia earum aliquam asperiores nesciunt aut.', 'Minus autem voluptatum quae reiciendis optio. Alias aut vel quidem reprehenderit accusamus et modi. Consequuntur ea eligendi maiores ut quia deleniti.', 2926, 2134, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(456, 'Neque ullam animi a doloribus.', 'Quod et nam et. Rerum est mollitia accusamus dolorum. Et blanditiis impedit non voluptatem quis ullam repellendus. Vel deleniti rerum voluptatum voluptate temporibus est quam deserunt.', 4910, 1082, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(457, 'Voluptas odit ullam quo laudantium.', 'Quis impedit deleniti consequatur vel. Et nihil quo corrupti. Est eius ea praesentium eum. Qui est distinctio quo at quod.', 1190, 2328, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(458, 'Cumque rem quos quis qui.', 'Culpa quis eligendi atque ipsum sint dolorum. Dolor officia voluptas odio. Nobis repudiandae repudiandae et et. Est illo et nulla ad in ut.', 3098, 2886, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(459, 'Consectetur qui repudiandae omnis quos repellendus sit.', 'Aut accusamus minima cumque voluptatibus qui commodi qui. Culpa enim temporibus vitae et dolore repellendus qui beatae. Similique cum quisquam sed id harum harum laborum culpa.', 1645, 2482, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(460, 'Repellat architecto hic consequatur eius eos quis harum.', 'At iusto architecto in doloremque sunt. Quis cumque velit architecto mollitia cum ut. Dolor dolor soluta ea voluptatem cumque neque dolore vel. Et aut porro possimus.', 819, 2714, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(461, 'Delectus qui est quia beatae.', 'Ullam eos vel aut quasi sed. Voluptas ut odit atque est iure ut quod. Temporibus dignissimos maxime sit eos voluptas incidunt culpa.', 3225, 3585, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(462, 'Harum qui consequatur laborum debitis autem dolores.', 'Adipisci atque vero laboriosam dicta quae eos delectus voluptatem. Nostrum amet voluptatum inventore inventore. Laboriosam optio accusamus maiores maiores ea aut.', 3737, 2423, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(463, 'Et consequatur modi maxime veniam dolores ullam voluptatibus ut.', 'Laborum quia quae totam esse facere provident ratione voluptatem. Labore illo consequatur nobis. Aperiam officiis rem fugiat.', 2017, 2318, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(464, 'Consequatur consequuntur ullam sed sunt illo.', 'Non quia aliquam ducimus quia ut laborum. Accusamus recusandae consequatur ipsa in ut. Quasi non facere eligendi nisi quia. Aut iure neque qui sunt sapiente non rerum.', 3145, 2614, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(465, 'Reprehenderit dolorum animi nihil nesciunt quia unde necessitatibus.', 'Totam perferendis sed molestiae quia distinctio. Dolorem enim consequatur nulla quo fugiat qui autem nesciunt. Explicabo sed doloremque voluptate dolor. Animi odio laboriosam tempore omnis. Perferendis autem veniam totam et eaque.', 1540, 1515, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(466, 'Dolorem ab sequi quibusdam.', 'Repudiandae qui ut itaque consectetur. Quaerat suscipit est ea laborum quo omnis sed. Unde amet et dicta tempora nesciunt velit earum harum.', 1369, 3972, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(467, 'Animi vel consequuntur cum magnam enim quia.', 'Voluptatem animi consequuntur quis est pariatur possimus aspernatur. Dolorem et vel tempora nisi minus. Doloribus expedita fugiat similique unde neque saepe et.', 3308, 2296, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(468, 'Unde sint dolore repellat porro rerum sed quis repudiandae.', 'Enim nihil est aliquid ab non totam quas. Voluptatem sapiente consequatur dolor et delectus. Quasi dicta quidem voluptas rerum ea architecto.', 4468, 3271, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(469, 'Est enim et corporis et eos porro iste.', 'Dicta autem id ea quas voluptas omnis. Assumenda ullam rem voluptate et. Repellendus necessitatibus animi omnis a.', 3194, 2278, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(470, 'Modi tenetur repudiandae cupiditate et quod.', 'Optio fugit quidem at voluptatem accusantium. Consequatur deserunt explicabo vitae quidem. Hic accusamus sapiente quis minus corrupti. Error quo autem quis nostrum et voluptas recusandae.', 4242, 1340, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(471, 'Cumque et in dignissimos.', 'Omnis autem velit dignissimos porro corrupti. Et ipsum nemo nemo esse. Voluptatum hic pariatur error. Beatae hic expedita ut quis quo.', 3068, 3898, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(472, 'Exercitationem qui molestias est minus dolores nostrum quas.', 'Quibusdam minima iure inventore voluptate quo expedita architecto ullam. Dolorem cum eligendi culpa sequi. Sit odio unde rerum ullam natus et eaque. Dolorem harum quia nobis nisi quia.', 1633, 441, 'Advanced', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(473, 'Ut numquam tempore est aut.', 'Dolores quia adipisci eligendi quia saepe aliquid est. Dolorem quia sint officia tenetur. Dignissimos consectetur autem ut accusantium sed nostrum.', 4201, 3701, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(474, 'Et animi sed sed earum aut.', 'Non quisquam consequatur necessitatibus voluptatum sapiente id est. Et voluptas laudantium laboriosam laudantium magni. Possimus aut est alias quasi.', 4801, 2508, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(475, 'Quae mollitia et et fuga omnis ullam.', 'Aperiam nihil numquam officia quas beatae. Quae a laboriosam quibusdam accusamus deleniti similique dolores. Cumque adipisci rerum similique repellendus distinctio quo et velit. Ut sit voluptatem dolor ipsum.', 1992, 3678, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(476, 'Quae quibusdam odio aut sed est.', 'Repudiandae est repellendus numquam unde delectus et. Modi consectetur dolorem consectetur accusamus quo. Accusantium tempore assumenda tenetur corrupti tenetur. Ipsam nihil mollitia illo pariatur aut.', 4023, 1304, 'Beginner', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(477, 'Quod explicabo magni tempore sed consequuntur.', 'Aut repudiandae ut aut eum hic aut minus vitae. Repellat architecto nemo ex quisquam. Minima sit ipsum unde soluta. Commodi ipsa suscipit possimus minus quia voluptates.', 3238, 3927, 'Intermediate', '2020-04-04 16:31:58', '2020-04-04 16:31:58'),
	(478, 'Eos aliquid fuga fugit.', 'Ratione commodi culpa voluptatem cumque distinctio pariatur ut quis. Officiis rem quaerat explicabo. Veniam accusantium harum non quo laborum repellat molestias. Sint consequatur illum molestiae officiis quidem.', 3073, 1468, 'Intermediate', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(479, 'Consequatur soluta voluptates qui aperiam laboriosam debitis.', 'Quibusdam dolorem dolor tenetur aut qui reprehenderit. Corporis esse ut reprehenderit possimus ut consequatur. Soluta nobis exercitationem vero distinctio voluptas qui.', 4622, 3494, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(480, 'Omnis accusamus quia minus laborum itaque ex praesentium aut.', 'Atque molestiae ipsa nobis officia est soluta. Vero eum sit voluptatem ipsum velit ut. Dolorem atque deleniti neque eum cum suscipit nemo. Et amet eos ratione saepe dicta aut.', 1234, 2552, 'Intermediate', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(481, 'Maiores eaque tempore quam voluptatem itaque.', 'Dolor possimus assumenda temporibus non autem quis at consequatur. Doloremque modi et ipsum. Accusantium vel ut sed doloremque iure nostrum.', 4006, 2913, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(482, 'Tempora et sequi voluptatem laborum eligendi quidem.', 'Deleniti ut eos aut qui animi. Nostrum delectus iste iusto delectus. Hic fuga voluptatum sit quasi id nam sint.', 2412, 696, 'Intermediate', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(483, 'Debitis qui dolor aut tempora quaerat ab.', 'Numquam excepturi quaerat dolor labore rerum ut et dicta. Molestiae voluptate est quae sit et incidunt perspiciatis. Exercitationem labore praesentium culpa velit voluptas laudantium alias. Odit numquam similique repudiandae omnis.', 1347, 3974, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(484, 'Accusamus nesciunt impedit sed labore.', 'Consequuntur laudantium enim sint hic quae eligendi id. Suscipit rerum cupiditate voluptate et. Laborum neque esse praesentium odit alias sit.', 2795, 532, 'Intermediate', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(485, 'Nostrum suscipit velit quidem consequatur.', 'Quia dolorum iste dolorum quod corporis veritatis ullam. Dignissimos alias sit provident enim et. Expedita temporibus voluptatem qui quisquam. Atque quis amet nemo sint.', 2121, 1648, 'Advanced', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(486, 'Sit odio commodi sed accusamus.', 'Consequatur nam facilis cumque corrupti. Sit sint voluptatem mollitia. Autem odit praesentium ratione nemo. Blanditiis et inventore repellat quod.', 1792, 725, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(487, 'Voluptatem vel distinctio exercitationem nisi voluptatem eius ipsam.', 'Explicabo ratione doloremque libero quis dolor iste. Assumenda neque doloribus sint vel eos soluta. Quisquam ipsam eum et qui ullam eveniet dolor. Qui iusto aut dolorem omnis. Ipsam illo natus quia aliquid.', 1835, 709, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(488, 'Tempora nemo accusantium ea qui.', 'Harum accusantium voluptas ea facere laboriosam inventore omnis. Recusandae quos labore possimus doloremque totam. Suscipit nesciunt unde aut eaque dolorem est.', 3634, 3076, 'Intermediate', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(489, 'Eius rerum omnis dolores voluptatem ullam.', 'Voluptas aut nihil facere est pariatur ipsam. Qui soluta ipsa asperiores veniam.', 2802, 958, 'Intermediate', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(490, 'Et aut animi sit facere eligendi aut aliquam nesciunt.', 'Maiores ut qui enim. Inventore modi harum dolorem doloremque. Sunt ut itaque quis sed dolores in eos.', 4826, 2006, 'Advanced', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(491, 'Blanditiis commodi sit aut iste amet error provident sequi.', 'Ratione omnis qui neque voluptatem voluptatibus provident. Eaque sit est exercitationem laboriosam. Ut ut est porro ut.', 2414, 1919, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(492, 'Dolorem omnis asperiores natus unde.', 'Quis unde quis nihil dolor illo corporis quas. Quam ratione quibusdam velit tempore. Vero et tempore sint enim mollitia eos placeat.', 2196, 2314, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(493, 'Est qui velit adipisci eum architecto autem.', 'Occaecati unde quis quaerat distinctio quis at. Et occaecati eos ut dolorem. Dolor iste est culpa aut qui dolores blanditiis ut. Ut magnam officia enim nisi eveniet.', 2832, 2512, 'Advanced', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(494, 'Vitae qui voluptates voluptatem deleniti vel est.', 'Vel amet atque reiciendis. Suscipit laborum dicta officia sequi. Dolorem et tempore dolores nemo non veniam. Consequuntur quasi aperiam aut reiciendis quidem recusandae commodi.', 1121, 3236, 'Advanced', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(495, 'Nemo mollitia ut quis molestiae debitis quo.', 'Distinctio consectetur ipsam omnis optio. Blanditiis nobis ea veniam sint. Assumenda sit ut est et. Et aliquid modi nihil.', 4223, 3254, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(496, 'Mollitia quia ipsam aut.', 'Eum omnis consequatur aperiam et quae voluptatem. Occaecati inventore impedit impedit adipisci qui.', 3419, 1702, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(497, 'Ipsum explicabo reprehenderit quaerat facilis architecto laudantium.', 'Placeat excepturi velit molestiae iusto. Non quia nemo a minima. Exercitationem commodi officia nihil excepturi officiis expedita.', 2281, 1163, 'Intermediate', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(498, 'Rerum et dolorum voluptatibus aut.', 'Delectus qui et corrupti quam. Magnam libero suscipit temporibus sint provident. Voluptas eum earum rerum quo. Quia nisi omnis facere nobis qui nulla.', 1419, 1063, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(499, 'Sint voluptas rerum vitae qui laborum commodi amet.', 'Quia magni et odit qui ut laboriosam temporibus. Vitae sint sed vel fugiat quis maxime quisquam exercitationem.', 4840, 3043, 'Intermediate', '2020-04-04 16:31:59', '2020-04-04 16:31:59'),
	(500, 'Dolorem ipsam suscipit est deleniti.', 'Quibusdam et numquam voluptatem ipsa quaerat. In aspernatur magnam ea. Culpa architecto itaque aliquid harum beatae vitae. Ex recusandae velit asperiores recusandae hic aut architecto.', 3057, 3987, 'Beginner', '2020-04-04 16:31:59', '2020-04-04 16:31:59');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;

-- Dumping structure for table lara_advance.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.migrations: ~18 rows (approximately)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(77, '2014_10_12_000000_create_users_table', 1),
	(78, '2014_10_12_100000_create_password_resets_table', 1),
	(79, '2019_07_22_105801_create_categories_table', 1),
	(80, '2019_07_22_110113_create_posts_table', 1),
	(81, '2019_07_22_110826_create_roles_table', 1),
	(82, '2019_07_22_124849_create_role_user_table', 1),
	(83, '2019_07_26_193555_create_permissions_table', 1),
	(84, '2019_07_26_194059_create_permission_role_table', 1),
	(85, '2019_07_30_144649_create_jobs_table', 1),
	(86, '2019_07_30_162708_create_tasks_table', 1),
	(87, '2019_07_30_175104_create_task_user_table', 1),
	(88, '2019_07_30_204806_create_notifications_table', 1),
	(89, '2019_08_03_194818_create_files_table', 1),
	(90, '2019_08_04_183111_create_attendances_table', 1),
	(91, '2019_08_11_154223_create_documents_table', 1),
	(92, '2019_08_21_182946_create_adjustments_table', 1),
	(93, '2019_08_24_073725_create_lessons_table', 1),
	(94, '2019_08_27_194151_create_settings_table', 1);
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
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
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
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `for` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
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
	(1, 'user-access', 'user-access', 'user', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(2, 'user-create', 'user-create', 'user', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(3, 'user-update', 'user-update', 'user', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(4, 'user-show', 'user-show', 'user', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(5, 'user-delete', 'user-delete', 'user', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(6, 'role-access', 'role-access', 'role', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(7, 'role-create', 'role-create', 'role', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(8, 'role-update', 'role-update', 'role', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(9, 'role-show', 'role-show', 'role', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(10, 'role-delete', 'role-delete', 'role', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(11, 'post-access', 'post-access', 'post', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(12, 'post-create', 'post-create', 'post', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(13, 'post-update', 'post-update', 'post', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(14, 'post-show', 'post-show', 'post', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(15, 'post-delete', 'post-delete', 'post', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(16, 'post-publish', 'post-publish', 'post', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(17, 'category-crud', 'category-crud', 'other', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(18, 'tag-crud', 'tag-crud', 'other', NULL, '2020-04-04 16:31:30', '2020-04-04 16:31:30');
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

-- Dumping data for table lara_advance.permission_role: ~26 rows (approximately)
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
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.posts: ~100 rows (approximately)
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `slug`, `category_id`, `body`, `status`, `user_id`, `created_at`, `updated_at`, `published_at`) VALUES
	(1, 'Aut qui pariatur voluptates aut dolorum.', 'aut-qui-pariatur-voluptates-aut-dolorum', 10, 'Consequatur officia.', 0, 4, '2020-04-04 16:31:37', '2020-04-04 16:31:37', '2016-02-28 04:55:35'),
	(2, 'Sed enim magni explicabo.', 'sed-enim-magni-explicabo', 10, 'Saepe cum totam.', 1, 4, '2020-04-04 16:31:37', '2020-04-04 16:31:37', '2015-07-20 14:13:40'),
	(3, 'Qui nulla consequatur libero.', 'qui-nulla-consequatur-libero', 7, 'Numquam facilis.', 0, 5, '2020-04-04 16:31:37', '2020-04-04 16:31:37', '2016-05-19 09:18:47'),
	(4, 'Et dolore ipsam saepe ab qui.', 'et-dolore-ipsam-saepe-ab-qui', 5, 'Quia illo.', 1, 5, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2018-09-16 18:55:43'),
	(5, 'Iure quasi ullam quo.', 'iure-quasi-ullam-quo', 7, 'Eum voluptatem.', 0, 6, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2018-06-28 07:32:38'),
	(6, 'Eum voluptas expedita deleniti corporis ipsam.', 'eum-voluptas-expedita-deleniti-corporis-ipsam', 6, 'Molestias aut.', 1, 6, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2019-08-12 08:36:14'),
	(7, 'Ut voluptatibus aliquid et voluptatum.', 'ut-voluptatibus-aliquid-et-voluptatum', 4, 'Fugiat hic.', 1, 7, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2020-01-19 22:04:14'),
	(8, 'Laborum non assumenda saepe inventore necessitatibus.', 'laborum-non-assumenda-saepe-inventore-necessitatibus', 4, 'Facilis incidunt est.', 0, 7, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2019-02-13 19:22:14'),
	(9, 'Dolores et consequatur laudantium.', 'dolores-et-consequatur-laudantium', 10, 'Ad minus.', 1, 8, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2017-03-15 10:29:54'),
	(10, 'Inventore beatae odit enim velit est corrupti.', 'inventore-beatae-odit-enim-velit-est-corrupti', 1, 'Placeat dicta iure.', 0, 8, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2015-12-19 02:44:57'),
	(11, 'Quis natus itaque omnis iure.', 'quis-natus-itaque-omnis-iure', 7, 'Corporis rem.', 1, 9, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2019-12-21 08:01:07'),
	(12, 'Totam qui est omnis.', 'totam-qui-est-omnis', 8, 'Dolor reprehenderit.', 1, 9, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2020-04-03 10:00:41'),
	(13, 'Aspernatur laboriosam quas ut aperiam.', 'aspernatur-laboriosam-quas-ut-aperiam', 6, 'A aut.', 1, 10, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2016-05-13 15:13:09'),
	(14, 'Odio aut sunt nam facilis.', 'odio-aut-sunt-nam-facilis', 3, 'Error qui.', 1, 10, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2018-11-19 15:20:22'),
	(15, 'Qui impedit omnis quae ut animi.', 'qui-impedit-omnis-quae-ut-animi', 3, 'Alias sed sed.', 0, 11, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2016-09-28 18:46:43'),
	(16, 'Facilis voluptate et quis earum officiis asperiores.', 'facilis-voluptate-et-quis-earum-officiis-asperiores', 8, 'Laboriosam odio.', 1, 11, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2018-08-11 05:54:57'),
	(17, 'Saepe maxime magnam atque.', 'saepe-maxime-magnam-atque', 5, 'Expedita suscipit est.', 1, 12, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2018-08-02 08:28:55'),
	(18, 'Dolores voluptatem est error quia reiciendis.', 'dolores-voluptatem-est-error-quia-reiciendis', 6, 'Fuga mollitia.', 0, 12, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2019-12-19 02:13:33'),
	(19, 'Magni eum illum dolore.', 'magni-eum-illum-dolore', 10, 'Porro quibusdam modi.', 1, 13, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2017-07-31 06:45:37'),
	(20, 'Iusto dolor libero sed.', 'iusto-dolor-libero-sed', 10, 'Delectus nesciunt error.', 0, 13, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2017-01-20 12:50:32'),
	(21, 'Commodi et aut optio quo soluta corrupti.', 'commodi-et-aut-optio-quo-soluta-corrupti', 1, 'Nostrum est hic.', 0, 14, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2016-09-09 21:37:25'),
	(22, 'Voluptatem at qui itaque possimus quibusdam ipsa.', 'voluptatem-at-qui-itaque-possimus-quibusdam-ipsa', 9, 'Eaque similique maxime.', 0, 14, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2017-05-03 12:39:24'),
	(23, 'Error deleniti sunt maxime error ipsam.', 'error-deleniti-sunt-maxime-error-ipsam', 6, 'Deleniti consequatur.', 0, 15, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2019-06-28 16:56:53'),
	(24, 'Velit ut eum cumque non facilis.', 'velit-ut-eum-cumque-non-facilis', 5, 'Occaecati omnis.', 0, 15, '2020-04-04 16:31:38', '2020-04-04 16:31:38', '2020-03-20 12:21:29'),
	(25, 'Fuga quia reprehenderit dolore.', 'fuga-quia-reprehenderit-dolore', 10, 'Et alias.', 0, 16, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2016-08-22 16:31:10'),
	(26, 'Nihil ratione rerum adipisci corrupti sint voluptas quia.', 'nihil-ratione-rerum-adipisci-corrupti-sint-voluptas-quia', 10, 'Dignissimos esse.', 0, 16, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2017-10-20 12:43:30'),
	(27, 'Et eaque est voluptatem.', 'et-eaque-est-voluptatem', 1, 'Consequuntur libero.', 0, 17, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2019-07-10 09:31:31'),
	(28, 'Repudiandae animi expedita omnis ipsam.', 'repudiandae-animi-expedita-omnis-ipsam', 3, 'Ut explicabo.', 1, 17, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2015-08-12 22:52:54'),
	(29, 'Dignissimos magnam iusto quia facere quia.', 'dignissimos-magnam-iusto-quia-facere-quia', 6, 'Natus nobis.', 1, 18, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2015-04-26 09:07:30'),
	(30, 'Corrupti provident est est iusto.', 'corrupti-provident-est-est-iusto', 3, 'Aspernatur quam.', 0, 18, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2019-08-19 22:30:29'),
	(31, 'Vel enim totam vel.', 'vel-enim-totam-vel', 5, 'Quibusdam tempora.', 1, 19, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2015-04-22 17:25:02'),
	(32, 'Dolorem eum voluptas reiciendis.', 'dolorem-eum-voluptas-reiciendis', 10, 'Sint quos asperiores.', 0, 19, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2020-03-02 13:00:30'),
	(33, 'Adipisci non modi itaque deleniti et quibusdam.', 'adipisci-non-modi-itaque-deleniti-et-quibusdam', 9, 'In consequuntur.', 1, 20, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2019-07-16 00:27:18'),
	(34, 'Libero explicabo dolores qui.', 'libero-explicabo-dolores-qui', 1, 'Similique architecto.', 1, 20, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2018-08-10 14:45:40'),
	(35, 'Aut sint et sunt rerum voluptatem.', 'aut-sint-et-sunt-rerum-voluptatem', 5, 'Eos nobis.', 1, 21, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2020-03-30 17:09:08'),
	(36, 'Aut quas tempore quo architecto nesciunt id.', 'aut-quas-tempore-quo-architecto-nesciunt-id', 10, 'Sint est.', 0, 21, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2015-06-21 21:59:39'),
	(37, 'Provident quia ea deserunt ratione rerum.', 'provident-quia-ea-deserunt-ratione-rerum', 9, 'Voluptatem similique ad.', 0, 22, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2018-09-21 02:55:13'),
	(38, 'Doloribus itaque consequatur quia blanditiis.', 'doloribus-itaque-consequatur-quia-blanditiis', 6, 'Vitae voluptatem.', 1, 22, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2016-09-26 10:08:04'),
	(39, 'Mollitia molestiae expedita porro veritatis et beatae.', 'mollitia-molestiae-expedita-porro-veritatis-et-beatae', 7, 'Non eos.', 0, 23, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2017-07-15 11:06:25'),
	(40, 'Officia odio sequi alias.', 'officia-odio-sequi-alias', 3, 'Aut itaque.', 1, 23, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2017-03-02 11:39:12'),
	(41, 'Delectus et quia fugit aut.', 'delectus-et-quia-fugit-aut', 9, 'Minima consequatur.', 0, 24, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2019-06-08 23:34:50'),
	(42, 'Unde aut quia ut ut a.', 'unde-aut-quia-ut-ut-a', 6, 'Odio quia iure.', 0, 24, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2019-06-29 07:20:01'),
	(43, 'Sunt praesentium quia voluptas.', 'sunt-praesentium-quia-voluptas', 10, 'Consequatur natus.', 0, 25, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2019-01-20 22:17:20'),
	(44, 'Velit autem facilis sapiente tempora.', 'velit-autem-facilis-sapiente-tempora', 9, 'Omnis optio velit.', 0, 25, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2015-08-08 08:59:13'),
	(45, 'Pariatur nihil suscipit aut dolorum quaerat sequi.', 'pariatur-nihil-suscipit-aut-dolorum-quaerat-sequi', 10, 'Voluptates harum.', 0, 26, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2016-05-08 10:21:24'),
	(46, 'Dignissimos tempore rerum repellat suscipit.', 'dignissimos-tempore-rerum-repellat-suscipit', 2, 'Consequatur tempore possimus.', 1, 26, '2020-04-04 16:31:39', '2020-04-04 16:31:39', '2019-09-08 08:15:33'),
	(47, 'Ipsa libero et rerum.', 'ipsa-libero-et-rerum', 8, 'Aliquam saepe.', 1, 27, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2019-03-07 22:41:50'),
	(48, 'Et incidunt expedita et.', 'et-incidunt-expedita-et', 3, 'Ut et id.', 0, 27, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2016-05-27 06:55:42'),
	(49, 'Molestiae pariatur ipsa dolores placeat.', 'molestiae-pariatur-ipsa-dolores-placeat', 2, 'Et nisi.', 1, 28, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2018-07-18 12:00:41'),
	(50, 'Sapiente at laudantium maiores.', 'sapiente-at-laudantium-maiores', 10, 'Aut eveniet.', 1, 28, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2019-04-09 11:03:33'),
	(51, 'Quaerat voluptatem repellendus rerum asperiores.', 'quaerat-voluptatem-repellendus-rerum-asperiores', 3, 'Non eius ut.', 0, 29, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2018-04-25 01:16:44'),
	(52, 'Voluptas rerum ut sed.', 'voluptas-rerum-ut-sed', 4, 'Facilis delectus recusandae.', 0, 29, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2016-04-26 16:12:09'),
	(53, 'Rem quis quae laboriosam quisquam dolorem.', 'rem-quis-quae-laboriosam-quisquam-dolorem', 3, 'Quis doloribus facere.', 0, 30, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2016-03-18 16:39:21'),
	(54, 'Aut sed minima eveniet pariatur ipsa quaerat.', 'aut-sed-minima-eveniet-pariatur-ipsa-quaerat', 7, 'Repudiandae doloremque.', 1, 30, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2018-03-14 19:42:52'),
	(55, 'Qui tempora exercitationem ea sit.', 'qui-tempora-exercitationem-ea-sit', 1, 'Culpa occaecati est.', 1, 31, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2018-06-22 03:05:44'),
	(56, 'Deserunt in adipisci culpa perferendis.', 'deserunt-in-adipisci-culpa-perferendis', 4, 'Illo magni amet.', 1, 31, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2018-06-29 14:42:18'),
	(57, 'Qui delectus est eos.', 'qui-delectus-est-eos', 10, 'Incidunt explicabo doloribus.', 1, 32, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2019-11-30 14:21:11'),
	(58, 'Eum sed perspiciatis ea sint quam sunt.', 'eum-sed-perspiciatis-ea-sint-quam-sunt', 1, 'Consectetur architecto.', 0, 32, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2017-12-25 15:33:00'),
	(59, 'Incidunt suscipit hic voluptatum consectetur deleniti.', 'incidunt-suscipit-hic-voluptatum-consectetur-deleniti', 8, 'Animi enim.', 0, 33, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2017-04-30 11:25:49'),
	(60, 'Atque maxime corporis ea adipisci.', 'atque-maxime-corporis-ea-adipisci', 10, 'Veniam natus et.', 1, 33, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2016-06-27 19:40:05'),
	(61, 'Rerum numquam velit soluta molestiae qui illo.', 'rerum-numquam-velit-soluta-molestiae-qui-illo', 7, 'Non qui eveniet.', 0, 34, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2017-04-20 04:02:09'),
	(62, 'Ut totam quo adipisci autem.', 'ut-totam-quo-adipisci-autem', 3, 'Iure minus vel.', 1, 34, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2017-08-14 22:54:48'),
	(63, 'Et harum est praesentium mollitia minus.', 'et-harum-est-praesentium-mollitia-minus', 3, 'Ad rerum quo.', 1, 35, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2017-09-10 07:38:04'),
	(64, 'Odit qui eveniet incidunt odit quia alias.', 'odit-qui-eveniet-incidunt-odit-quia-alias', 2, 'Et aut consequuntur.', 0, 35, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2018-01-08 01:36:35'),
	(65, 'Accusamus voluptas aperiam quo hic.', 'accusamus-voluptas-aperiam-quo-hic', 9, 'Atque delectus harum.', 1, 36, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2018-12-26 18:29:33'),
	(66, 'Occaecati iure voluptatibus quia.', 'occaecati-iure-voluptatibus-quia', 6, 'Iure sit.', 1, 36, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2020-02-07 04:55:47'),
	(67, 'Necessitatibus occaecati autem et eos aut.', 'necessitatibus-occaecati-autem-et-eos-aut', 4, 'Sapiente et velit.', 1, 37, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2018-01-14 08:12:21'),
	(68, 'Et inventore ratione est error et.', 'et-inventore-ratione-est-error-et', 7, 'Aspernatur at.', 0, 37, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2019-06-11 14:23:39'),
	(69, 'Fuga quibusdam et hic soluta inventore illo.', 'fuga-quibusdam-et-hic-soluta-inventore-illo', 2, 'Eius eos.', 1, 38, '2020-04-04 16:31:40', '2020-04-04 16:31:40', '2016-10-07 09:29:50'),
	(70, 'Nobis nihil dicta rem tenetur.', 'nobis-nihil-dicta-rem-tenetur', 5, 'Est sed et.', 0, 38, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2020-01-06 14:18:02'),
	(71, 'Sint qui dolorem quos.', 'sint-qui-dolorem-quos', 10, 'Et est rerum.', 0, 39, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2018-03-18 22:16:09'),
	(72, 'Aut animi eos beatae ab ipsa atque.', 'aut-animi-eos-beatae-ab-ipsa-atque', 9, 'Veniam eos voluptas.', 0, 39, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2016-02-20 09:39:30'),
	(73, 'Ex sunt adipisci amet vel.', 'ex-sunt-adipisci-amet-vel', 5, 'Qui cumque ipsa.', 1, 40, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2017-02-12 07:32:57'),
	(74, 'Ratione pariatur occaecati laudantium et.', 'ratione-pariatur-occaecati-laudantium-et', 7, 'Libero quia deleniti.', 0, 40, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2015-07-22 20:02:19'),
	(75, 'A quis soluta ducimus.', 'a-quis-soluta-ducimus', 3, 'Amet magni.', 0, 41, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2015-09-21 14:39:22'),
	(76, 'In tempore est nemo doloribus natus dicta.', 'in-tempore-est-nemo-doloribus-natus-dicta', 8, 'Ipsam cum molestiae.', 0, 41, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2018-03-03 02:53:22'),
	(77, 'Soluta dolorem omnis et inventore.', 'soluta-dolorem-omnis-et-inventore', 8, 'Assumenda repellat eum.', 0, 42, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2018-03-26 11:22:04'),
	(78, 'Possimus quia aut autem amet.', 'possimus-quia-aut-autem-amet', 10, 'Beatae quo eos.', 1, 42, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2016-02-11 04:33:12'),
	(79, 'Ullam quas a pariatur.', 'ullam-quas-a-pariatur', 6, 'Labore libero.', 0, 43, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2016-09-29 03:50:41'),
	(80, 'Voluptatem ratione sit quidem assumenda iusto.', 'voluptatem-ratione-sit-quidem-assumenda-iusto', 7, 'Sed saepe.', 0, 43, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2015-07-12 02:15:39'),
	(81, 'Nulla dolore natus itaque.', 'nulla-dolore-natus-itaque', 4, 'Exercitationem maiores.', 1, 44, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2016-05-04 11:37:12'),
	(82, 'Rerum veniam eveniet mollitia enim aperiam.', 'rerum-veniam-eveniet-mollitia-enim-aperiam', 1, 'Et est dolorem.', 1, 44, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2017-07-04 04:37:56'),
	(83, 'Sed debitis maiores dolores.', 'sed-debitis-maiores-dolores', 5, 'Consequatur saepe est.', 1, 45, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2017-05-05 10:44:42'),
	(84, 'Quia dicta facere sequi.', 'quia-dicta-facere-sequi', 10, 'Eligendi saepe architecto.', 1, 45, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2017-02-13 16:45:44'),
	(85, 'Qui velit dolores rerum.', 'qui-velit-dolores-rerum', 2, 'Quis consequatur.', 0, 46, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2016-04-19 19:46:44'),
	(86, 'Velit temporibus necessitatibus repellat dicta dolorem quia.', 'velit-temporibus-necessitatibus-repellat-dicta-dolorem-quia', 5, 'Iste iste eos.', 1, 46, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2018-09-03 10:14:55'),
	(87, 'Quia qui impedit libero.', 'quia-qui-impedit-libero', 1, 'Consectetur provident.', 1, 47, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2019-01-21 02:46:50'),
	(88, 'A perferendis repellat accusantium sit.', 'a-perferendis-repellat-accusantium-sit', 9, 'Eveniet harum qui.', 1, 47, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2017-04-05 03:44:52'),
	(89, 'Quae rem placeat delectus sint facilis.', 'quae-rem-placeat-delectus-sint-facilis', 6, 'Omnis iste.', 0, 48, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2016-03-06 16:59:10'),
	(90, 'Ullam neque soluta ut ut.', 'ullam-neque-soluta-ut-ut', 9, 'Iure aut nam.', 0, 48, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2017-05-15 10:46:31'),
	(91, 'Quos hic repellat quia saepe nam.', 'quos-hic-repellat-quia-saepe-nam', 8, 'Autem ea.', 0, 49, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2016-12-06 08:10:00'),
	(92, 'Provident in ex qui eum totam.', 'provident-in-ex-qui-eum-totam', 7, 'Qui deserunt.', 1, 49, '2020-04-04 16:31:41', '2020-04-04 16:31:41', '2019-05-03 02:39:33'),
	(93, 'Quia et dolorem excepturi.', 'quia-et-dolorem-excepturi', 4, 'Saepe voluptatum.', 0, 50, '2020-04-04 16:31:42', '2020-04-04 16:31:42', '2018-06-08 07:03:35'),
	(94, 'Reprehenderit nobis qui eos quidem a.', 'reprehenderit-nobis-qui-eos-quidem-a', 8, 'Nostrum cupiditate.', 1, 50, '2020-04-04 16:31:42', '2020-04-04 16:31:42', '2015-04-09 19:06:24'),
	(95, 'Aut temporibus dolorum molestias.', 'aut-temporibus-dolorum-molestias', 1, 'Enim distinctio corporis.', 1, 51, '2020-04-04 16:31:42', '2020-04-04 16:31:42', '2019-03-28 01:06:01'),
	(96, 'Debitis dicta nostrum delectus quo.', 'debitis-dicta-nostrum-delectus-quo', 1, 'Assumenda deserunt facilis.', 1, 51, '2020-04-04 16:31:42', '2020-04-04 16:31:42', '2017-02-13 23:48:32'),
	(97, 'Est sapiente tempora vero architecto ipsa.', 'est-sapiente-tempora-vero-architecto-ipsa', 5, 'Quam et quis.', 1, 52, '2020-04-04 16:31:42', '2020-04-04 16:31:42', '2019-07-06 15:37:47'),
	(98, 'Aut quae laudantium alias voluptatem facilis incidunt.', 'aut-quae-laudantium-alias-voluptatem-facilis-incidunt', 1, 'Similique dolores.', 1, 52, '2020-04-04 16:31:42', '2020-04-04 16:31:42', '2015-04-18 14:55:22'),
	(99, 'Ipsam maiores beatae eligendi saepe.', 'ipsam-maiores-beatae-eligendi-saepe', 5, 'Vel reiciendis.', 1, 53, '2020-04-04 16:31:42', '2020-04-04 16:31:42', '2015-09-05 02:30:00'),
	(100, 'Maiores voluptatem tenetur autem.', 'maiores-voluptatem-tenetur-autem', 8, 'Laboriosam fugit.', 1, 53, '2020-04-04 16:31:42', '2020-04-04 16:31:42', '2019-01-24 06:14:01');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table lara_advance.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
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
	(1, 'admin', 'admin', 'Admin Description', '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(2, 'editor', 'editor', 'Editor Description', '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(3, 'author', 'author', 'Author Description', '2020-04-04 16:31:30', '2020-04-04 16:31:30');
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

-- Dumping data for table lara_advance.role_user: ~78 rows (approximately)
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
	(2, 10),
	(2, 11),
	(2, 12),
	(3, 12),
	(2, 13),
	(3, 13),
	(2, 14),
	(3, 14),
	(2, 15),
	(3, 15),
	(2, 16),
	(3, 16),
	(2, 17),
	(2, 18),
	(3, 18),
	(2, 19),
	(2, 20),
	(3, 20),
	(3, 21),
	(3, 22),
	(2, 23),
	(2, 24),
	(2, 25),
	(2, 26),
	(2, 27),
	(3, 27),
	(2, 28),
	(3, 28),
	(2, 29),
	(2, 30),
	(2, 31),
	(3, 31),
	(3, 32),
	(2, 33),
	(3, 33),
	(3, 34),
	(2, 35),
	(2, 36),
	(2, 37),
	(2, 38),
	(3, 38),
	(2, 39),
	(3, 39),
	(2, 40),
	(3, 40),
	(2, 41),
	(3, 42),
	(2, 43),
	(2, 44),
	(2, 45),
	(3, 45),
	(2, 46),
	(3, 46),
	(3, 47),
	(2, 48),
	(3, 48),
	(2, 49),
	(3, 49),
	(2, 50),
	(3, 50),
	(2, 51),
	(3, 52),
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
	(1, 'app_name', 'Advance Laravel', '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(2, 'date_format', 'd/m/Y', '2020-04-04 16:31:30', '2020-04-04 16:31:30'),
	(3, 'time_format', 'g:i A', '2020-04-04 16:31:30', '2020-04-04 16:31:30');
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
  `first_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `verification_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table lara_advance.users: ~53 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `avatar`, `email_verified_at`, `password`, `verification_token`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Admin', 'Admin', 'admin@example.com', NULL, '2020-04-04 16:31:31', '$2y$10$OXw2wLy7OhYToR7.8tPbUO46/6stzD0q5Y5Y63/Ud9IMzlja10fWm', NULL, '0iqMma3j5L', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(2, 'Editor', 'Editor', 'editor@example.com', NULL, '2020-04-04 16:31:31', '$2y$10$JYPJNsxpHoux3edPKtXh3.gSYybcF5n6gRCXMag8RepFh9j6C9are', NULL, 'KL8afAolLa', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(3, 'Editor', 'Editor', 'author@example.com', NULL, '2020-04-04 16:31:31', '$2y$10$h3bTNTgAbKA/rz7GmscAp.t9g3WeqPEDKaf69GTDjl5EH0zM3Wdpa', NULL, 'xQJChHGpp5', '2020-04-04 16:31:31', '2020-04-04 16:31:31'),
	(4, 'Nina', 'Bode', 'maximus86@example.com', NULL, '2020-04-04 16:31:32', '$2y$10$FJakSpxyIzHPZTx6.arTve1q657YgOgMJ1.bxEtmTdTQ/aUgtQhXe', NULL, '9ExxkeFgUn', '2020-04-04 16:31:35', '2020-04-04 16:31:35'),
	(5, 'Eloy', 'Jacobs', 'norberto.runte@example.com', NULL, '2020-04-04 16:31:32', '$2y$10$H./U8w0ToCem7OWtMHWIo.o0cDjKB7Nk5I50Vd/sAOdAFYNyHCP5G', NULL, '12TAEAoNG9', '2020-04-04 16:31:35', '2020-04-04 16:31:35'),
	(6, 'Dayne', 'Murphy', 'cronin.josiane@example.com', NULL, '2020-04-04 16:31:32', '$2y$10$JOgdjJs/3XuxHCICyzN.b.IE2CUkCuFCQlj3n9z5WvytT1YgZl/L2', NULL, '6T6yx4a85M', '2020-04-04 16:31:35', '2020-04-04 16:31:35'),
	(7, 'Terrence', 'Armstrong', 'helen11@example.com', NULL, '2020-04-04 16:31:32', '$2y$10$NdUJfVLbog0kIJsi0yLwi..WtPTBo0LiDwSZ74VFux0bemvGA9xvC', NULL, 'pM46KviQTD', '2020-04-04 16:31:35', '2020-04-04 16:31:35'),
	(8, 'Mercedes', 'Ankunding', 'antonietta.klocko@example.net', NULL, '2020-04-04 16:31:32', '$2y$10$yOtv3.HQJ2oWAkkzwTS7S.IlSYMTnrAz/JweZhplv/IHC8xoR1YEK', NULL, 'WK91j5Y612', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(9, 'Camryn', 'Hill', 'raina17@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$cw918xi.DJxrUFM4jEFRPeV4ViRTblP6Nl20F2MbQDN8CqzxWA1jK', NULL, 'B8Jx97ZtoB', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(10, 'Shanny', 'Jacobi', 'dejon57@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$TfOLuLTiXjxO1o66p5xQk.20kSaYJGqEy6jqFFkUjXKzOcfJnOnx2', NULL, 'I0Q41C6vo8', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(11, 'Gilbert', 'Spinka', 'kelli47@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$VP8tOjBkliITQq1jnhRQZuQ5gbPl.TVo1AYbHeIEB06WZBuqZLqB.', NULL, '51FHDHaZ0s', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(12, 'Gudrun', 'Wintheiser', 'zemlak.harley@example.com', NULL, '2020-04-04 16:31:33', '$2y$10$Sca6QnjFsQVGx3QsGKVsX.8APEwjGoxI0c7t/mNVB/hIoG7tQSSlO', NULL, 'fOb8wffjyC', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(13, 'Ludwig', 'Rodriguez', 'moore.lawrence@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$6cU.nVaK7gNNLaGmGFIXM.CGt1r0OoFJ6ottRmkHk5aOLCX//gAF.', NULL, 'Tp4I1Amgt6', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(14, 'Rahul', 'Lakin', 'gorczany.delpha@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$.DW1d54f7S/VBoK/uWmidO7J8W4kIN9jdG8A/a0PNPSeq6dHKANCa', NULL, 'fuJ3plSjTk', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(15, 'Maddison', 'Sanford', 'luettgen.bridie@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$iUX83/MrqLMUzY3PzXJSaukz1USZqIuQ5MiUJPd7WhiIM0TZuFDji', NULL, 'NAonTsZcH2', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(16, 'Eileen', 'Heaney', 'huel.sarah@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$isFvD05Fr/qArYw68476TelmTg.LAlMyQIo6bxSzCR/ru8HHbOAbq', NULL, 'frArxO5pC8', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(17, 'Jensen', 'Keebler', 'enid.wunsch@example.net', NULL, '2020-04-04 16:31:33', '$2y$10$EOHCdKuM0n4hWyLQ5wdGFuixQm5fKJklQbj5y41evd8e3JK9ss8fK', NULL, 'k6KxqrrIdl', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(18, 'Sallie', 'Rosenbaum', 'payton.conn@example.net', NULL, '2020-04-04 16:31:33', '$2y$10$lJZUjQe.E3uTcuHQ6IUuYugu7/UhHKDDmnsHlwKixMhQ347nUZyG6', NULL, 'SFEyKs1gvK', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(19, 'Jaqueline', 'Legros', 'botsford.cheyenne@example.net', NULL, '2020-04-04 16:31:33', '$2y$10$chjTknthwgw9.jUDVZAZy.BeIGui3Dkn3LX.e60gxKjtgxa9A6baq', NULL, 'im9iU33Kns', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(20, 'Else', 'Hettinger', 'mireille75@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$3Tn.U2epFfy59sADSwsl8eHvMfpsfDCuYafsRTUIfVVvv9WKiaS9G', NULL, '7sHehZE8d2', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(21, 'Meredith', 'Leannon', 'thiel.brycen@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$94QZ0QZA6HAYlIPDGZwxJessRtLcwuw7GyHGXFvkm7dxY7jlF9CdG', NULL, 'TrTtHQRVT2', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(22, 'Vincent', 'McKenzie', 'wava.graham@example.net', NULL, '2020-04-04 16:31:33', '$2y$10$ok7yyU8MFFzGDT3SvRoMnOGeDgaMkNZN6EGKtYTt940Fi5rg3D2TO', NULL, 'Y8j7O8DM40', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(23, 'Camila', 'Prohaska', 'khettinger@example.net', NULL, '2020-04-04 16:31:33', '$2y$10$6XR.JK1g6boHXNxnDBepveuWHUPrsWi.VwENJgROVIsgYok/NLV4O', NULL, '6a6tex0jBb', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(24, 'Berenice', 'Rempel', 'estella.pfannerstill@example.org', NULL, '2020-04-04 16:31:33', '$2y$10$5XsUeduBnNutqDV5YdCHUO8pOjp34Z9/9Lt.CqypLG/FtBYcOX/ZK', NULL, '4pTT7iHiSY', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(25, 'Herta', 'Thiel', 'wlehner@example.net', NULL, '2020-04-04 16:31:33', '$2y$10$R9.ftTagfxtYZUSSWGpL/.pdYantVVCtIqjnGOHkHixGD.vouG.C.', NULL, '5H6BiN1kKP', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(26, 'Laurine', 'Dickens', 'frieda80@example.org', NULL, '2020-04-04 16:31:34', '$2y$10$MsFaqlC4HS1U1LwR5R9ldelfbmMijVR8/34BENXQSrJSOMuWkQK3y', NULL, 'KuZQ5ZDTgO', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(27, 'Jennyfer', 'Rowe', 'dkozey@example.com', NULL, '2020-04-04 16:31:34', '$2y$10$44o95oaeBOk8twLIMw.SdOIyFrnBsskzE4Kh1/3Ki2WXFzmaa33DW', NULL, 'DYQhwkp0CF', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(28, 'Gordon', 'Strosin', 'auer.pamela@example.net', NULL, '2020-04-04 16:31:34', '$2y$10$EH/uRLqaDftGutLmxGvM3.Dn0032hd/cNywGA2xn3Phow4X8nG60S', NULL, 'TzLZNiyvex', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(29, 'Blair', 'Wolff', 'maxie27@example.net', NULL, '2020-04-04 16:31:34', '$2y$10$m7KgR7En/6T8Pb.Sv9Zmtejiugr35cGrZq9BKpcCg83MMzzTiA8G.', NULL, 'ZgFgOW33Cv', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(30, 'Forrest', 'Luettgen', 'zhoeger@example.com', NULL, '2020-04-04 16:31:34', '$2y$10$NkQ1Yy4D9QbGXkMTmbfNSuV.Z1RS1TJjvd3HLTCQlr944zElFOfJG', NULL, 'XAq1nJSYp9', '2020-04-04 16:31:36', '2020-04-04 16:31:36'),
	(31, 'Sunny', 'Jast', 'kendrick.wolff@example.net', NULL, '2020-04-04 16:31:34', '$2y$10$hH4.7Mw9Oaw.ige4uzrxEeBZMmmGw97CV1Pm6tI0j4C8oBeAXz3d2', NULL, 'WtPxl0hfJN', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(32, 'Carmel', 'Lubowitz', 'gboyer@example.net', NULL, '2020-04-04 16:31:34', '$2y$10$bIcOW.VgBGCFlBDtX66z5eptdJmYUxJliRKEqKsE07e61vlToYwcC', NULL, 'ZQL9Vsrohy', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(33, 'Walter', 'Labadie', 'nyah.jakubowski@example.net', NULL, '2020-04-04 16:31:34', '$2y$10$fv3gzDZ5ypphps3KFrOCDuwZqQW8G2ab.8go6fFipq2kOOtgXy88e', NULL, 'Qk3PJuOsrq', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(34, 'Stella', 'Ryan', 'rhoda.graham@example.com', NULL, '2020-04-04 16:31:34', '$2y$10$lm9SPJwAJJA.0Efx0hF9cunR7YxzF994KC9KkwhmL4wgaf./ELtxa', NULL, 'ZPvTJ8IDEc', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(35, 'Gussie', 'Fadel', 'reichel.vivienne@example.org', NULL, '2020-04-04 16:31:34', '$2y$10$SO7Z6H2ArhHgO/DEPLxvZuoHtrknmkfN/nsnXL9gzb.YwBkrjs6Ha', NULL, 'KybSLXILEr', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(36, 'Karina', 'Dickinson', 'cprice@example.org', NULL, '2020-04-04 16:31:34', '$2y$10$.rtK/y5DJOA6afsZei9W4OHYQR1hZt9idAfMXO.RiZPA9xxhdkE.C', NULL, 'hQVswABCfH', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(37, 'Genevieve', 'Abshire', 'schultz.werner@example.com', NULL, '2020-04-04 16:31:34', '$2y$10$OSpJ08ivRmJotQpflsHVue9H1ZhU611OA59S0geBV8aQEGueo3jtW', NULL, 'ShyH0ZylJe', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(38, 'Noemi', 'Howell', 'aliyah.jaskolski@example.com', NULL, '2020-04-04 16:31:34', '$2y$10$YRM7XYltDG69XwTbiTiMa.2Nw3I/fW5ZGqkjU3nOgLGg5aRTBzkm.', NULL, 'W6GXgigFtv', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(39, 'Manley', 'Daniel', 'mireille.schuster@example.net', NULL, '2020-04-04 16:31:34', '$2y$10$cpaRD8kXzfaGga7OyynJMuznIA8eRPTAXMdufN1OffkKIPD2BnxMW', NULL, 'CUwXPtCmCN', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(40, 'Keanu', 'Schimmel', 'kunze.cristopher@example.com', NULL, '2020-04-04 16:31:34', '$2y$10$.dQyWja4jFo0KQc2s6F6Q./SRKaBH.4l/gcolTt0BDsJZf2iRDKdq', NULL, 'Wkp87ut63V', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(41, 'Delbert', 'Buckridge', 'edeckow@example.net', NULL, '2020-04-04 16:31:34', '$2y$10$aA4zSYYpNhjq8TdY4E8z4.BBaREANpvMi0YfdVUPjkZAEZo/CtT0C', NULL, 'aezxOhHrqv', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(42, 'Abel', 'Monahan', 'lila.mclaughlin@example.net', NULL, '2020-04-04 16:31:34', '$2y$10$Sc2PIU9/hLePTLMyVTFvS.fqAtNNoFqewclen6ca3Ch3md1F5AJHO', NULL, 'zwpzGWCkIT', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(43, 'Raphaelle', 'Feeney', 'john.robel@example.org', NULL, '2020-04-04 16:31:35', '$2y$10$E1C5byBNmGojzy0I7njpSuBIt5QJuHC1K5pIS0rn1YtJ9jwZ8V67W', NULL, 'JsBJAtChiM', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(44, 'Casimer', 'Stamm', 'king.tillman@example.net', NULL, '2020-04-04 16:31:35', '$2y$10$NQ0fJj8ZpX4pSK.4ShaTpO.qraLle7RXpG0OAi9xLobxWn7xceWfW', NULL, 'Jju7yGTLAW', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(45, 'Michael', 'Heathcote', 'bstreich@example.com', NULL, '2020-04-04 16:31:35', '$2y$10$tA55CdPRaCUNFjHloAKMTeJozoAlYSVVTPVi.w/nfXSpXN8b9e8W6', NULL, 'nI8ILw6eUj', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(46, 'Teresa', 'Bartell', 'beau.kozey@example.org', NULL, '2020-04-04 16:31:35', '$2y$10$o3n/tj1Da5A2Sage.ybgN.T20h1QsgC8Y3.kaNMTbE8pGFZNQhNvm', NULL, 'KlHHdou0uU', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(47, 'Destinee', 'Carter', 'homenick.irving@example.com', NULL, '2020-04-04 16:31:35', '$2y$10$8SSTlZlCYw7jVO2f07tpbOlBPo9XEtFDvLX.teWFuwlbRbuNxY/vO', NULL, 'rOJMkOdiIz', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(48, 'Wyatt', 'Cummerata', 'bethel.cormier@example.com', NULL, '2020-04-04 16:31:35', '$2y$10$dZpw8MpjsRaYZLlwXVcAt.O8etgiUFRnw6d72V/q7HRaHk7zjTL5e', NULL, 'NCxn3yfKaV', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(49, 'Emmanuelle', 'Turcotte', 'xgottlieb@example.net', NULL, '2020-04-04 16:31:35', '$2y$10$VWONiUplgiryMVT9nsxnue6FMBSjaOJl0exOe3jfeSRdsgh9vnao6', NULL, 'tJqPWTvNOD', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(50, 'Lupe', 'Auer', 'crolfson@example.net', NULL, '2020-04-04 16:31:35', '$2y$10$8CFEjGLVElTU1kiJ9jYnRe9KKWNicG0NCDlUA92zIgbmfo3DYNUza', NULL, 'O9tFmpsBti', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(51, 'Eryn', 'Leuschke', 'everette28@example.org', NULL, '2020-04-04 16:31:35', '$2y$10$76zR2hNX3xItZT7vNXISHuChe9LzlsOv0wtf91phcegRRLlFx0rBi', NULL, 'ghC7SiScUG', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(52, 'Loyce', 'Baumbach', 'lane97@example.org', NULL, '2020-04-04 16:31:35', '$2y$10$pbt1b2J1p0NBxjAyO4Z6hexz7b5cgKpJ1DajltTRNv5XSjrebayHe', NULL, 'haHTCvSbFn', '2020-04-04 16:31:37', '2020-04-04 16:31:37'),
	(53, 'Zelda', 'Streich', 'morissette.pat@example.com', NULL, '2020-04-04 16:31:35', '$2y$10$Op5o3TCKXMuoe7/9JN1cQ.93dh70raA0wjgMvuMN1iShbzhGfzBXi', NULL, 'UkdQhNzr6r', '2020-04-04 16:31:37', '2020-04-04 16:31:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
