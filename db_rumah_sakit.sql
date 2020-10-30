/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - db_rumah_sakit
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_rumah_sakit` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_rumah_sakit`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),
(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),
(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
(6,'2016_06_01_000004_create_oauth_clients_table',1),
(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
(8,'2019_08_19_000000_create_failed_jobs_table',1);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values 
('00f5e93599ec07951cd554639b67478cd4d814c78adcc7a1c81af62b05a5de154309f6d37c7554c9',5,1,'nApp','[]',0,'2020-10-26 13:38:16','2020-10-26 13:38:16','2021-10-26 13:38:16'),
('01a9b16e7d7020675ebbe2724bec80e43fe9b7bcb5d353518a1f3d3d9ea4fb58df6fb7c2bdbbff71',5,1,'nApp','[]',0,'2020-10-26 13:00:59','2020-10-26 13:00:59','2021-10-26 13:00:59'),
('0204631bbc52aa7d6255647ab07cb1fe7869643ce58b5ee03038217773e21e274dc96c1de17d8ce0',5,1,'nApp','[]',0,'2020-10-26 12:36:34','2020-10-26 12:36:34','2021-10-26 12:36:34'),
('078d657bd3017f96d46906588bafe5194171b106bbac0fb83b26bd2899fe7b16c982b44d3496edb6',5,1,'nApp','[]',0,'2020-10-26 12:59:12','2020-10-26 12:59:12','2021-10-26 12:59:12'),
('0861f3f88b692adcce66f008f22b1c19b5d2bf18d482048e1cebb9539524b5e71544ff9fa1164b88',5,1,'nApp','[]',0,'2020-10-26 12:22:58','2020-10-26 12:22:58','2021-10-26 12:22:58'),
('0b5508661a3ccbb2a6b921549d20ab732e747524513799c9e759080c83853b10c6f1a6291aec1f43',5,1,'nApp','[]',0,'2020-10-26 13:38:07','2020-10-26 13:38:07','2021-10-26 13:38:07'),
('0c1dec3e6a7bd4a372b4b9c533c56a40376b9fc894654d07c05e4925cd12baa4a43db39329919d5f',5,1,'nApp','[]',0,'2020-10-26 11:45:06','2020-10-26 11:45:06','2021-10-26 11:45:06'),
('0ef523ff7b0be3aa437362c8b205b0cda7acf4b3eff208060626a6bb78ec4f97bd1114eeb45750c1',5,1,'nApp','[]',0,'2020-10-29 15:48:25','2020-10-29 15:48:25','2021-10-29 15:48:25'),
('10279002bc00488069f51574f0fa5b2048a924a3fca4ab43dd7ef58b0dadbfea876afb6b3371ba5b',5,1,'nApp','[]',0,'2020-10-29 14:51:36','2020-10-29 14:51:36','2021-10-29 14:51:36'),
('10dc535e39119d2e5c546a597b829c10761e23b23b81733fe2642fcc5c16d88947084306a9c7687a',5,1,'nApp','[]',0,'2020-10-29 15:55:31','2020-10-29 15:55:31','2021-10-29 15:55:31'),
('10fd61d92e0d9808b4e27dd95fc3b404bb417197cabe7f7a6a99a6f3ec1d318c013f5164249c666a',5,1,'nApp','[]',0,'2020-10-26 12:37:28','2020-10-26 12:37:28','2021-10-26 12:37:28'),
('129cc6df91a974c8dd42cdafe96746bfba8d3e188990c53e990e18aab1072ac44cc572937cd6b67d',1,1,'nApp','[]',0,'2020-10-29 17:49:08','2020-10-29 17:49:08','2021-10-29 17:49:08'),
('138b020f13ed882e4a1d3ff3ffd09d4c1a2b60954e1fd9f62ed667aea9bca39cad9178e7c08a0ac5',5,1,'nApp','[]',0,'2020-10-26 12:59:54','2020-10-26 12:59:54','2021-10-26 12:59:54'),
('144e9bdf02a89856776d6036eb8e8316d7b4d67480fe6afce4636cbfc2b6127eaf02ccfaf9b80c61',5,1,'nApp','[]',0,'2020-10-26 13:37:58','2020-10-26 13:37:58','2021-10-26 13:37:58'),
('147feeb90ad84fc5b1700902e9b276425194049495bae0bd3bbfb80ff22939f0793bfa6208279d3c',5,1,'nApp','[]',0,'2020-10-26 13:37:56','2020-10-26 13:37:56','2021-10-26 13:37:56'),
('16f438b138efc7b3b3c32c32c6bc4be80fcd4a37226439a9e498fe2c752943669bd49d6820978596',5,1,'nApp','[]',0,'2020-10-26 11:45:39','2020-10-26 11:45:39','2021-10-26 11:45:39'),
('18ec457611fc85d9ec51e30e9e2dd6d41f070e66866d828856d4f3f4c5d6aa824cdb4e5d94b46289',5,1,'nApp','[]',0,'2020-10-26 13:38:08','2020-10-26 13:38:08','2021-10-26 13:38:08'),
('1a1a23ebe85dc2c08f482c1ec02ca9d279a18617ff3cf77cfe3b3aab4061f1cc012d067c0191645e',5,1,'nApp','[]',0,'2020-10-26 13:38:05','2020-10-26 13:38:05','2021-10-26 13:38:05'),
('1a56be8eb85c3669f09f2aa99f7cb68c4551c7e3cfff8e8722b99aed1de9b160cf8a131ee821ebac',5,1,'nApp','[]',0,'2020-10-26 13:41:44','2020-10-26 13:41:44','2021-10-26 13:41:44'),
('1e244d3914ccbaa5d970604114d34df8159d6191f6c49a6290544a36f72f104dd1010a3dab0f4828',5,1,'nApp','[]',0,'2020-10-29 14:48:51','2020-10-29 14:48:51','2021-10-29 14:48:51'),
('1e5e8d83fa8e0ddc044448017d521768743f8c10745948582246e0d6e6d861fb97daf513c775e852',5,1,'nApp','[]',0,'2020-10-26 12:33:12','2020-10-26 12:33:12','2021-10-26 12:33:12'),
('1fd4d111562473dd403b0b7325629bd6eb7011c8036587c6d28ebae9fcc55afa4db02298f6e6ebb0',5,1,'nApp','[]',0,'2020-10-26 11:34:13','2020-10-26 11:34:13','2021-10-26 11:34:13'),
('20b0cf327639979431d00bba2d7b0f9bfda7017342d380e8b31c833fa8fabd5dc33f672372566b7d',5,1,'nApp','[]',0,'2020-10-29 15:08:36','2020-10-29 15:08:36','2021-10-29 15:08:36'),
('21f34d7d8ebe6a748ff6d360a3e3a61b4c661f3b9a651332f33834f7437995a446397ed190fd0bba',5,1,'nApp','[]',0,'2020-10-29 15:39:23','2020-10-29 15:39:23','2021-10-29 15:39:23'),
('25f94a259df872ba64200d2c1d5f463c632b822c8f045987b161f07b0042f0dd815bd8d42fc00ee7',5,1,'nApp','[]',0,'2020-10-29 15:13:44','2020-10-29 15:13:44','2021-10-29 15:13:44'),
('28676abb382b13cedec78549b4c4c4d4780a36a4c569b6bed959ca9ea727705366a76ca141322e6f',5,1,'nApp','[]',0,'2020-10-26 13:38:12','2020-10-26 13:38:12','2021-10-26 13:38:12'),
('287b67ee2b3b4d387630d4a9eeeba070d0baffdf2cc8bb2da0234a10479fd741fdbc1ca932b85d5f',5,1,'nApp','[]',0,'2020-10-26 13:38:01','2020-10-26 13:38:01','2021-10-26 13:38:01'),
('2a7ae0d5bb0a1a437d751bee71e3c08e85640b728c37deb64055e44aa9a67d20e41a14aadc61c9fd',5,1,'nApp','[]',0,'2020-10-26 13:38:04','2020-10-26 13:38:04','2021-10-26 13:38:04'),
('2ca3f65028d6ec0ebe2491e0bfe38444992fa6f1c1fad6d9b484b1b045ad358727c12208d2dc03f6',5,1,'nApp','[]',0,'2020-10-26 11:43:41','2020-10-26 11:43:41','2021-10-26 11:43:41'),
('2fb410ff2135e7525db111fdc1280b267c3b7329d4d400c723dfb1d3733bd0b6a09edfe6d8517cd2',5,1,'nApp','[]',0,'2020-10-26 11:57:26','2020-10-26 11:57:26','2021-10-26 11:57:26'),
('310b194dd0bec24a399e5f5cd966b5620c732f9fd2fa1c0930a4e3242cfc0f86568342aaf15ed029',5,1,'nApp','[]',0,'2020-10-26 12:20:56','2020-10-26 12:20:56','2021-10-26 12:20:56'),
('318b094ad196d948e2ce768cad87bc03187835f7c3e0b821c37711e9dbb3e49a2b44db62fee42139',5,1,'nApp','[]',0,'2020-10-26 12:35:53','2020-10-26 12:35:53','2021-10-26 12:35:53'),
('31aab42b5a9c9aa80835afd2abcecf4dd4d937eded179e2def2da31d1ac71e21be618e053fc808c4',5,1,'nApp','[]',0,'2020-10-26 11:43:45','2020-10-26 11:43:45','2021-10-26 11:43:45'),
('3799b777ea37c31ccb9feab7e43386345d5837c8e9c1e55a7a68e865adae758c42f7c4c6235c39b6',5,1,'nApp','[]',0,'2020-10-29 15:37:21','2020-10-29 15:37:21','2021-10-29 15:37:21'),
('3861e8004053570a72e9a89645dce06725700f1603bebda4c842960d6edb08c601f01371064bc6bd',5,1,'nApp','[]',0,'2020-10-26 12:38:33','2020-10-26 12:38:33','2021-10-26 12:38:33'),
('39add54f3d92af0e553315ea35934170cf4916366e548978058d60d97ed585ca6b7ed3909eccd87f',6,1,'nApp','[]',0,'2020-10-29 16:47:59','2020-10-29 16:47:59','2021-10-29 16:47:59'),
('3bdfc70ef37558682cac2e19ce44e893f88b3a1debca8c9f311bbef78768f4cc608e4a19bc4aee68',5,1,'nApp','[]',0,'2020-10-26 13:38:15','2020-10-26 13:38:15','2021-10-26 13:38:15'),
('3fa18cdfa4daea2510877686299450ebe90168117d385fed028465ebbe4e28f0d5e1560d1d313941',5,1,'nApp','[]',0,'2020-10-26 11:45:12','2020-10-26 11:45:12','2021-10-26 11:45:12'),
('4096543f41220a06628ede11c423747ad10e0c33681881aa92467b238b51e3840e29ed23103ffc31',5,1,'nApp','[]',0,'2020-10-26 13:37:45','2020-10-26 13:37:45','2021-10-26 13:37:45'),
('43aa71c7e9eae5145aca7f4fb8014a8e644073d2d53e5b6df1214fd60c50147ebf8463a66e6e3b32',5,1,'nApp','[]',0,'2020-10-26 12:42:55','2020-10-26 12:42:55','2021-10-26 12:42:55'),
('44db23edeb1d660e09fc7eede36e9bb54faad398c1635222245637f39b7155f2f932dd2e98a148f5',5,1,'nApp','[]',0,'2020-10-29 15:18:19','2020-10-29 15:18:19','2021-10-29 15:18:19'),
('45d2727bf3c39d2ff305dc065224010a44b59eb839cf13582cbd19022ad860d79235d51f687fa8a2',5,1,'nApp','[]',0,'2020-10-26 12:34:21','2020-10-26 12:34:21','2021-10-26 12:34:21'),
('478ebe902d3a14cec9a86824866c04932b521fe7fac643a8a5e6ae737ecd57bbf5165f935e6919ad',5,1,'nApp','[]',0,'2020-10-26 12:37:30','2020-10-26 12:37:30','2021-10-26 12:37:30'),
('47d47f51e6c14af9f9209d1c981b259416009e69e1a5ad757289c981392ccaf85424d23d073e1b7e',5,1,'nApp','[]',0,'2020-10-29 15:42:41','2020-10-29 15:42:41','2021-10-29 15:42:41'),
('47e0e46a07d722ca2185db8d205cbe680e673d901dd7fb8a767f15b8adab19f9b8ce48aa7eb8e78c',5,1,'nApp','[]',0,'2020-10-26 13:38:02','2020-10-26 13:38:02','2021-10-26 13:38:02'),
('4aaa0373bf3971f96a8bc252e4cbd5b19cb59dfde06a4be242f98478b95a602954287cf3057c145f',5,1,'nApp','[]',0,'2020-10-26 12:23:03','2020-10-26 12:23:03','2021-10-26 12:23:03'),
('4bcbecc05a1a10db9d1ed22c932052d0d63b02d15f79fa5b0761c4eef38af7446710f90093533779',5,1,'nApp','[]',0,'2020-10-26 12:22:50','2020-10-26 12:22:50','2021-10-26 12:22:50'),
('4c973ff870208a1d0247bc83c22d731fe6fa32f80eaa60f6eefc798d404c5c6bb9fd3b932db972c9',5,1,'nApp','[]',0,'2020-10-29 15:26:32','2020-10-29 15:26:32','2021-10-29 15:26:32'),
('4d184177ce54042404c9f4dbd5b9a2192cd8988e00baf39d3bbd7390d249695dde72b039b0f5bf33',5,1,'nApp','[]',0,'2020-10-26 12:23:02','2020-10-26 12:23:02','2021-10-26 12:23:02'),
('4d95e630a821ca3ba4047f1f1dd55e34a01b6811e9a6466ee6b7a1ef0fb16fad35a377112439a52d',5,1,'nApp','[]',0,'2020-10-29 15:32:55','2020-10-29 15:32:55','2021-10-29 15:32:55'),
('4ee8cc45013b9a72821b0aa43e32cf5355d2798472db8ba1e7360c1fb5189f43fa355bbdf9b441ca',5,1,'nApp','[]',0,'2020-10-26 12:17:34','2020-10-26 12:17:34','2021-10-26 12:17:34'),
('5115d09009d3a0f44a5c8f94c1bfef4ae970fa0efa2d7ddea476c21823f16fd41744cc01b352b344',5,1,'nApp','[]',0,'2020-10-29 15:25:04','2020-10-29 15:25:04','2021-10-29 15:25:04'),
('51cb25e7a630240419b938436e19e0bbf7d2ff69f6a31e88ee642fbc66917a9c6fd5c01f6231c745',5,1,'nApp','[]',0,'2020-10-26 12:17:32','2020-10-26 12:17:32','2021-10-26 12:17:32'),
('53a58b2dc79f89ed9c3606b30ae4b23f986cffd075e9976f53804ec0cfceec52c64b8afa836582dd',5,1,'nApp','[]',0,'2020-10-26 13:38:20','2020-10-26 13:38:20','2021-10-26 13:38:20'),
('54fa086a870bf627ed73aa25e72ea1ad86ff0629766277f330711a67f73d76a3833e6da795059329',5,1,'nApp','[]',0,'2020-10-26 12:34:58','2020-10-26 12:34:58','2021-10-26 12:34:58'),
('555e32b7e0867ba22b0c6a9116cd6f43acf748f51b8e49a6b8ddf65f99ed9def4d2cdb302c88ad76',5,1,'nApp','[]',0,'2020-10-26 13:38:14','2020-10-26 13:38:14','2021-10-26 13:38:14'),
('5a8b67ac0954405358f27cb25d1345a63345299050eff9a974646980b58462a804c1700c3edb439b',5,1,'nApp','[]',0,'2020-10-26 12:23:03','2020-10-26 12:23:03','2021-10-26 12:23:03'),
('60b920d2e225e96a21c8171499f429910d9af2ad83274740d85b361397ddb933dc7fc12ee1939ab6',5,1,'nApp','[]',0,'2020-10-26 11:45:17','2020-10-26 11:45:17','2021-10-26 11:45:17'),
('6199d7ecd0e9d1a0486022b49514fedf86ba746749cde39ddef2f03cea9da05d236014e04716b6d3',5,1,'nApp','[]',0,'2020-10-26 12:33:39','2020-10-26 12:33:39','2021-10-26 12:33:39'),
('6808593a64dc2ccdaba5baf644dddb73a82d632da2ac5dc1d05561a7381dd6e203b7b18b492545e1',5,1,'nApp','[]',0,'2020-10-26 12:38:14','2020-10-26 12:38:14','2021-10-26 12:38:14'),
('6a52038353f9184cd93ea7187f0a82eedb14d817b7716f846f8a5110624c4097870249ad2e462784',5,1,'nApp','[]',0,'2020-10-29 15:36:07','2020-10-29 15:36:07','2021-10-29 15:36:07'),
('6dca628d84d706ca7024ffd0d9cc1c9616c78edc0a0a0997189514cc04a8da27f2a769902601f029',5,1,'nApp','[]',0,'2020-10-26 13:38:00','2020-10-26 13:38:00','2021-10-26 13:38:00'),
('7279c931dd6094d00d3509cc6c233b4b65c54795704aae88ff51491b49e8a18331b17e9964d6834a',5,1,'nApp','[]',0,'2020-10-29 14:22:10','2020-10-29 14:22:10','2021-10-29 14:22:10'),
('73c3e5c8ea9faffb28cd001a7502ef2fd032dad6b9b3986ece90732fc0ec47b839b1ac995db57815',5,1,'nApp','[]',0,'2020-10-29 15:56:05','2020-10-29 15:56:05','2021-10-29 15:56:05'),
('766d025c50dae78c202eda884e9ee9be4b51d1e125ca0b4006b3bb2caf66278a2baebfc411731b2c',5,1,'nApp','[]',0,'2020-10-26 13:38:10','2020-10-26 13:38:10','2021-10-26 13:38:10'),
('779280b98295bb172e02dfffec9e56471f9c7ee56a8bb4d702a52a7713b8b526877b2a756606c236',5,1,'nApp','[]',0,'2020-10-29 14:42:25','2020-10-29 14:42:25','2021-10-29 14:42:25'),
('77c8dffcd82bf43db4fa4a78ddd44880958b980bb55483dc3050886390d5785bedc275255d6eae2f',5,1,'nApp','[]',0,'2020-10-26 12:23:02','2020-10-26 12:23:02','2021-10-26 12:23:02'),
('78f23b73ab1bdab8718b108b68b46c7acaaa21815e8316ce31c50f451c4f2b535d5d91a9866bdc38',5,1,'nApp','[]',0,'2020-10-26 12:37:20','2020-10-26 12:37:20','2021-10-26 12:37:20'),
('80e722bdf87c91923958eb9b13d5dd460d50b22088e5fb8316ddfa07794eaef1eeeb892f96def368',5,1,'nApp','[]',0,'2020-10-26 10:56:56','2020-10-26 10:56:56','2021-10-26 10:56:56'),
('8170b512fdb9bce2606f2ab10fcf734f85edddc4aded2519654a6d3f4e1b5d8e633c248e6ea28877',5,1,'nApp','[]',0,'2020-10-26 12:22:50','2020-10-26 12:22:50','2021-10-26 12:22:50'),
('8348506a759b6e43c33e9dfd45c8a85e67294ce1400e89cad36b59859a7bfeaa909a53a974e5c9a9',5,1,'nApp','[]',0,'2020-10-26 12:23:00','2020-10-26 12:23:00','2021-10-26 12:23:00'),
('85769028c06b3a3c796d447b425ddf304cc4770eece7d23c2eae12ead74072f6936206af90f4bf9a',5,1,'nApp','[]',0,'2020-10-26 12:38:37','2020-10-26 12:38:37','2021-10-26 12:38:37'),
('88bfee81363941426e754ec8c46d93887cf7496840f649b2fea73c0019cce8f3549000477a330294',5,1,'nApp','[]',0,'2020-10-26 13:00:27','2020-10-26 13:00:27','2021-10-26 13:00:27'),
('897fca981d9994a91c324c5b713ba7598874f4ae650a8f8cc7baf0486545a19caddfcdf009b06e27',5,1,'nApp','[]',0,'2020-10-29 15:16:09','2020-10-29 15:16:09','2021-10-29 15:16:09'),
('8a3a549de6beffaf222c797a4880fc60e92be777f5135c943cc168470df2cfb5f72db173dac61f22',5,1,'nApp','[]',0,'2020-10-26 12:33:38','2020-10-26 12:33:38','2021-10-26 12:33:38'),
('8b07ccd6395864f26d21e0bd55062224ead8e95497329b55b9ba1652f6cae8a7f226433f048c2ec2',5,1,'nApp','[]',0,'2020-10-29 15:43:24','2020-10-29 15:43:24','2021-10-29 15:43:24'),
('8d3b02863e5d0e5f1866d7d650bcc9149dae75a5f3a02884e8122f173b49d305819ae725ba163a02',5,1,'nApp','[]',0,'2020-10-26 13:38:18','2020-10-26 13:38:18','2021-10-26 13:38:18'),
('8e103677076e9651bd73838075e6c57e2ea3d0d69d2eb03983db68298a745fec99bb2c8528b7c1df',5,1,'nApp','[]',0,'2020-10-26 12:33:16','2020-10-26 12:33:16','2021-10-26 12:33:16'),
('8e9b1ebcfd5282199e1d39d6e353cab10cb65ad741f33087b03b31f2470f8b604877656605db0d97',5,1,'nApp','[]',0,'2020-10-26 13:37:57','2020-10-26 13:37:57','2021-10-26 13:37:57'),
('8f112f05202f2d61b8539d263e8c4b3e244a15405dd698e103d7c3f27ab331f96097201b403fdbc6',5,1,'nApp','[]',0,'2020-10-29 15:35:11','2020-10-29 15:35:11','2021-10-29 15:35:11'),
('8fbeb399abb95990e9acdf48705c06656119ea0c2660de9b3e270b258685024830b14fc0c012ba7a',5,1,'nApp','[]',0,'2020-10-26 13:38:03','2020-10-26 13:38:03','2021-10-26 13:38:03'),
('9022a543f3a98b1249e3410b8d5831579fbdf2b8ea175f033bc92c84f772a28fa65da82c4fc0bf19',5,1,'nApp','[]',0,'2020-10-26 13:38:17','2020-10-26 13:38:17','2021-10-26 13:38:17'),
('91ef9a163b5f6ac3d4d232ad1de0326ea0aa53166d9c4b3ecb9ccb0b145ec2a878f3946cec80b5bb',5,1,'nApp','[]',0,'2020-10-26 12:36:41','2020-10-26 12:36:41','2021-10-26 12:36:41'),
('93ea17eb29eb8a0a9240c932b549194376f097ab78c03c117ffdadad95d512ff3f68296058a7a125',5,1,'nApp','[]',0,'2020-10-26 12:57:53','2020-10-26 12:57:53','2021-10-26 12:57:53'),
('9f884769edcf4e823b4fa8f904a098b48d74fe9870dae868eecce3ca69420b2974977e36f5f26440',3,1,'nApp','[]',0,'2020-10-29 17:53:07','2020-10-29 17:53:07','2021-10-29 17:53:07'),
('9fd9e5c3ffba84f1c9bff15de23d581a5b1ce195fe2b6c40db1884c694324e5ed9623e5b0402a01b',5,1,'nApp','[]',0,'2020-10-29 14:50:29','2020-10-29 14:50:29','2021-10-29 14:50:29'),
('a664235980b243635229791014eecdaa5a487a2ddf6ef3160aa95e941bf390b774ef70dc6261785c',5,1,'nApp','[]',0,'2020-10-26 11:42:19','2020-10-26 11:42:19','2021-10-26 11:42:19'),
('a6c65f7b15c4f062252e34ae8d99149757cf04760cfda762cb0e6cef452dddb6209c4b3fa42cdf2f',5,1,'nApp','[]',0,'2020-10-26 13:38:06','2020-10-26 13:38:06','2021-10-26 13:38:06'),
('a7300fc20718c23d52dc29adf3c2e94cdb211a254f82d606634b008073d6523f4ae8698473394bd0',5,1,'nApp','[]',0,'2020-10-26 12:36:31','2020-10-26 12:36:31','2021-10-26 12:36:31'),
('a8ea64adbd60259ce6bc3ec11d1b6a41a830b455ca82e1d1aee38106bff20ead5cb41504194d0abb',5,1,'nApp','[]',0,'2020-10-26 12:17:37','2020-10-26 12:17:37','2021-10-26 12:17:37'),
('ab163456b08971aed87e0448b7b92834fefebb98cfe7d8e24236e7b70902db89cb39dd746e829fb3',6,1,'nApp','[]',0,'2020-10-29 17:44:47','2020-10-29 17:44:47','2021-10-29 17:44:47'),
('aca8e0a00eb2b65a6e6a5852d42f37660a2c8f8e09352250598247270c7ee299e649a4875e326e3d',5,1,'nApp','[]',0,'2020-10-26 12:02:51','2020-10-26 12:02:51','2021-10-26 12:02:51'),
('af14feece24e253e837ca95dc902757f72a7f821cc0cf6b0ae7ab3664c2b8374d3ed13741c1ce3f2',5,1,'nApp','[]',0,'2020-10-26 11:57:14','2020-10-26 11:57:14','2021-10-26 11:57:14'),
('b0695d3df9194ef7cffe75220510cee31c0dc704b6c312f7ae4394ce639c8293f114fe9c3d562d94',5,1,'nApp','[]',0,'2020-10-26 13:38:13','2020-10-26 13:38:13','2021-10-26 13:38:13'),
('b1200a8e0baad523eb2c2d29b1c66c82b4b28687073cf4c82c0a14669225c46e365256d29a162116',5,1,'nApp','[]',0,'2020-10-29 15:28:30','2020-10-29 15:28:30','2021-10-29 15:28:30'),
('b3a54e58affdadefa162e9f239453016fd57a70ad02941f580621ce083dba30448bc12f9faf6a085',5,1,'nApp','[]',0,'2020-10-26 11:42:45','2020-10-26 11:42:45','2021-10-26 11:42:45'),
('b7476a373e2f143fd46256784feea3193720b2716ffb964ce1d7623322ee7c6da2bbf8183da279f4',5,1,'nApp','[]',0,'2020-10-26 13:39:30','2020-10-26 13:39:30','2021-10-26 13:39:30'),
('b7cd239ca829af94de3df5d9455dab5847332c65d8d35f64576e2e85c619dbc22f2ea7e1bd6baebc',5,1,'nApp','[]',0,'2020-10-26 12:44:21','2020-10-26 12:44:21','2021-10-26 12:44:21'),
('b7f006c62932a0ec2d1385a52311cc0feec07dc6c292adf4beaa29552501e9f9a67bb5c3f59c521a',5,1,'nApp','[]',0,'2020-10-26 12:22:53','2020-10-26 12:22:53','2021-10-26 12:22:53'),
('b9daf0313154a86156d837dde2ad74e5e7286a6fae2852f1b563a534af994b9245cc25aa25b5e2a2',5,1,'nApp','[]',0,'2020-10-29 14:47:43','2020-10-29 14:47:43','2021-10-29 14:47:43'),
('ba999820a850c143b55e6681f32680b970800f0bb6f19dfc01d6a51d28d8f088db9ed800c8e17199',5,1,'nApp','[]',0,'2020-10-26 13:38:12','2020-10-26 13:38:12','2021-10-26 13:38:12'),
('bbd29f5de5990adb5baee0221c504aad50e8f1dd5c012a97054f674c0969f4ad391ba978a2a3cd39',5,1,'nApp','[]',0,'2020-10-26 12:36:28','2020-10-26 12:36:28','2021-10-26 12:36:28'),
('beaacb235cf3a2fbd4093debce9f9b453a183a4bbd5da3c0428fb0e0f973fa3e754ddf4e6595d910',5,1,'nApp','[]',0,'2020-10-26 11:42:48','2020-10-26 11:42:48','2021-10-26 11:42:48'),
('c139d42f6fab648d07721ceb9fd05bd4f513aa9b8678ab795defe455cafb75afbe0b49dcb1ebc89a',5,1,'nApp','[]',0,'2020-10-26 12:20:58','2020-10-26 12:20:58','2021-10-26 12:20:58'),
('c3467f90de3d32447ed3b16e71772c1eb07fe381da1e4cee5791f7ea8562a8c8dbd29fb7f7d8ff86',5,1,'nApp','[]',0,'2020-10-29 14:39:58','2020-10-29 14:39:58','2021-10-29 14:39:58'),
('c393de7a30f6ccc2f353372d0d7e111b35fee3f01957411d9f576ba391e13ffed59351cf993b7411',6,1,'nApp','[]',0,'2020-10-29 17:38:12','2020-10-29 17:38:12','2021-10-29 17:38:12'),
('c6584c4c385587b4af377bc85b1976b6b917e754edd89eb4a1b0ff0e8a998326271a377e1e6bf219',5,1,'nApp','[]',0,'2020-10-29 15:07:28','2020-10-29 15:07:28','2021-10-29 15:07:28'),
('c8df09025c28f2a967d01640fda056e72e553fa99a73465006f1954c61d5e0fd590a8b05bd1553b3',5,1,'nApp','[]',0,'2020-10-26 13:06:47','2020-10-26 13:06:47','2021-10-26 13:06:47'),
('c9553fa7fb842b96921ae3fc8cedeee5e2c38e3910350267d8d1e7869c6c43dc0255958c89174a01',5,1,'nApp','[]',0,'2020-10-29 15:47:55','2020-10-29 15:47:55','2021-10-29 15:47:55'),
('ca5fc21f7687ab4ebb69a4f47085eae538ccdedcf31eb82594b21b7a8538f16a03ea4311122c3267',5,1,'nApp','[]',0,'2020-10-29 15:45:30','2020-10-29 15:45:30','2021-10-29 15:45:30'),
('d051bd53fa8ff10eee4519cc85db5fbe6d553f3db312f439711f07b0775ef50bcbd9ee07af696b8b',5,1,'nApp','[]',0,'2020-10-26 12:40:22','2020-10-26 12:40:22','2021-10-26 12:40:22'),
('d6538338aefe7bfcc54abca8d09bb6421f46566b0798ff480b7ad7e005e3538981727f9b10ce92b9',5,1,'nApp','[]',0,'2020-10-26 11:27:27','2020-10-26 11:27:27','2021-10-26 11:27:27'),
('df690a464f47e80d3e1d19172bb436f61e3435d5f333ecae8ce9c4507e7641db85be176c71cbb4b7',5,1,'nApp','[]',0,'2020-10-26 11:45:10','2020-10-26 11:45:10','2021-10-26 11:45:10'),
('df78b55ff2dd957f33aa7144a787f45071f4da47a2e090f0ac0f387b7fd411803f542294c3064af5',5,1,'nApp','[]',0,'2020-10-26 12:33:12','2020-10-26 12:33:12','2021-10-26 12:33:12'),
('e5b559ab0292934be21a84fea7b0088a2938be9d40880fc63b8da0cc5146d3a62a9562ced9945be2',5,1,'nApp','[]',0,'2020-10-26 12:40:08','2020-10-26 12:40:08','2021-10-26 12:40:08'),
('e895415ee5aa60a46c8101895ad626943186d870535bae9586611d8b31a21ff25c8f834e95615d11',5,1,'nApp','[]',0,'2020-10-29 15:35:57','2020-10-29 15:35:57','2021-10-29 15:35:57'),
('e8db9e003753a795b581f86294219026aeef3b8200fa9d51b15fc93a113d983bb4e82d497828f9fb',5,1,'nApp','[]',0,'2020-10-26 12:22:53','2020-10-26 12:22:53','2021-10-26 12:22:53'),
('ec54dc3ae4a2ac729da3786fb4659faf6a9ed67005e329ee1468d087ffc4d15dddba6814e2475cd9',5,1,'nApp','[]',0,'2020-10-29 15:41:34','2020-10-29 15:41:34','2021-10-29 15:41:34'),
('ec736cfb49dd812ca30bd5106f1775b3175bca2e835d6b0056d49d1cb6607860b1c662fa2ca654bb',5,1,'nApp','[]',0,'2020-10-26 12:23:00','2020-10-26 12:23:00','2021-10-26 12:23:00'),
('f0b0bb85043f868fcf394637534de9f8b343522ae568113e5c41dfd1681d76353d88ec1e4459611a',5,1,'nApp','[]',0,'2020-10-26 12:58:15','2020-10-26 12:58:15','2021-10-26 12:58:15'),
('f2903681abe277b21ac49e72ceb957ab7c7a6f3dac2c19a00b78658a63acc3f0cfae829da945271a',5,1,'nApp','[]',0,'2020-10-26 13:37:59','2020-10-26 13:37:59','2021-10-26 13:37:59'),
('f4aded82ae15f45fdc2cb9e555d08a21f04c81fc4fce3fea0a0b5166e64bfac739e3a84a4ea04727',5,1,'nApp','[]',0,'2020-10-29 15:34:19','2020-10-29 15:34:19','2021-10-29 15:34:19'),
('f5703e38c5f682b27312811b37ec606abf0d2740cfb5bbe33ed127e15223ce6bb5482aad32c56c2b',5,1,'nApp','[]',0,'2020-10-26 12:22:58','2020-10-26 12:22:58','2021-10-26 12:22:58'),
('fda5e5a502100a14660ccc2b15eb40f887e987c8a76cf76b5a5fdc056e934235a7593b2754c6f2d9',5,1,'nApp','[]',0,'2020-10-29 15:31:27','2020-10-29 15:31:27','2021-10-29 15:31:27'),
('ffdfe345c95257d1baab6f845e6b053e446238fbc9a7a6795c6bb9b2ca2d9d5577d37a5da14b6bb4',5,1,'nApp','[]',0,'2020-10-26 12:41:49','2020-10-26 12:41:49','2021-10-26 12:41:49');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','oAQtuQRkzgrkDK5hJ5Zr6QVO16a3AeWiEGpwk2Zu','http://localhost',1,0,0,'2020-10-25 09:06:46','2020-10-25 09:06:46'),
(2,NULL,'Laravel Password Grant Client','4OakePIaa9zve62UKyye3XD2q5LG8CmDHZl9K4hZ','http://localhost',0,1,0,'2020-10-25 09:06:46','2020-10-25 09:06:46');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,'2020-10-25 09:06:46','2020-10-25 09:06:46');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`jenis_kelamin`,`tanggal_lahir`,`alamat`,`nomor_telp`,`username`,`password`,`remember_token`,`email_verified_at`,`created_at`,`updated_at`) values 
(1,'admin','Laki-laki','2020-10-29','admin','123123123123','admin','$2y$10$EUtSXQEZBU0NI2aXDR19ee1OxP/kKDbJx3EamvQMUQ4KpJrvRl3Au',NULL,NULL,'2020-10-29 17:48:40','2020-10-29 17:48:40'),
(2,'Nyoman Gede Rayka Sedana Diatmika','Laki-laki','2000-04-06','Jl Nuri 1','082617283628','diatmika','$2y$10$wpmJaDadnI/2g0/7lCQL..ZHi6tU0XsgGFKe1EqP8vfb/Ib0Oe39a',NULL,NULL,'2020-10-29 17:50:43','2020-10-29 17:50:43'),
(3,'yayaya','Perempuan','2020-10-05','123123123123','12312312312322','yayaya','$2y$10$fqmZfU/j6IDQTBSbE8HLGe/0IMVNu2gQEGb7SFPNrM1.krALw42CS',NULL,NULL,'2020-10-29 17:52:40','2020-10-29 17:53:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
