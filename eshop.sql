-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for eshop
CREATE DATABASE IF NOT EXISTS `eshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eshop`;

-- Dumping structure for table eshop.carts
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_qty` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mens_size` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `womens_size` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.carts: ~8 rows (approximately)
INSERT INTO `carts` (`id`, `user_id`, `product_id`, `product_qty`, `product_size`, `mens_size`, `womens_size`, `created_at`, `updated_at`) VALUES
	(87, '4', '39', '1', 'L', NULL, NULL, '2023-12-26 04:12:59', '2023-12-26 04:16:07'),
	(102, '1', '47', '1', NULL, NULL, NULL, '2024-02-11 23:54:49', '2024-02-11 23:55:29'),
	(104, '2', '19', '1', 'L', 'XL', 'S', '2024-02-12 05:48:13', '2024-02-12 06:12:23'),
	(105, '2', '20', '1', 'L', NULL, NULL, '2024-02-12 05:48:18', '2024-02-12 05:48:18'),
	(107, '2', '30', '1', 'L', 'M', 'S', '2024-02-12 06:12:11', '2024-02-12 06:12:11'),
	(108, '2', '25', '1', 'L', NULL, NULL, '2024-02-13 07:36:39', '2024-02-13 07:36:39'),
	(109, '2', '36', '1', 'L', NULL, NULL, '2024-02-13 23:33:37', '2024-02-13 23:33:37'),
	(110, '2', '16', '1', 'L', NULL, NULL, '2024-02-14 00:16:49', '2024-02-14 00:16:49'),
	(111, '2', '35', '1', 'S', NULL, NULL, '2024-02-14 00:19:28', '2024-02-14 00:21:14');

-- Dumping structure for table eshop.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `product_type` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `popular` tinyint NOT NULL DEFAULT '0',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_desc` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.category: ~7 rows (approximately)
INSERT INTO `category` (`id`, `name`, `slug`, `desc`, `product_type`, `status`, `popular`, `icon`, `image`, `poster`, `meta_title`, `meta_desc`, `meta_keywords`, `created_at`, `updated_at`) VALUES
	(1, 'Hoodies', 'hoodies', 'Change Your Perspective Hoodie', '', 0, 1, NULL, '1707902080.webp', '1698828773.png', 'Change Your Perspective Hoodie', 'Change Your Perspective Hoodie', 'Change Your Perspective Hoodie', '2023-08-16 06:11:02', '2024-02-14 03:44:40'),
	(2, 'Couple T-Shirts', 'couple-t-shirts', 'Explore couple t shirt online from Be Awara at the best prices. We provide the best quality matching couple t-shirts with unique styles & patterns.', '', 0, 1, NULL, '1708003051.jpg', '1697176680.png', NULL, NULL, NULL, '2023-08-16 06:20:18', '2024-02-15 07:47:31'),
	(3, 'Oversized T-Shirt', 'oversized-t-shirt', 'Presenting to you, our freshest collection of oversized tees for men. Pair it up with versatile bottom wear and slay every occasion.', '', 0, 1, NULL, '1707901926.webp', NULL, NULL, NULL, NULL, '2023-08-16 06:22:08', '2024-02-14 03:42:06'),
	(4, 'Sweatshirt', 'sweatshirt', 'London Hills Printed Men Round Neck Half Sleeve', 'null', 0, 1, '1707901637.png', '1707901405.webp', '1707901809.webp', 'Sweatshirt', 'Sweatshirt', 'Sweatshirt', '2023-08-25 06:23:52', '2024-02-16 00:14:39'),
	(6, 'T-shirt', 't-shirt', 'T-shirts', '["Mens","Womens","Unisex"]', 0, 0, NULL, '1707902171.webp', '1698828104.png', 'T-shirt', 'T-shirt', 'T-shirt', '2023-08-28 05:07:34', '2024-02-14 03:46:11'),
	(16, 'Thalapathy Leo', 'leo-official', 'Leo movie tshirt Vijay is an absolute must-have for any die-hard fan of the legendary actor.', NULL, 1, 0, NULL, '1696845435.png', '1698842547.webp', 'leo-official', 'leo-official', 'leo-official', '2023-10-09 04:12:41', '2023-11-01 07:12:27'),
	(17, 'Pants Women', 'pants-women', 'Pants Women', NULL, 0, 0, NULL, '1707902217.webp', '1707901239.webp', NULL, NULL, NULL, '2023-12-16 06:32:04', '2024-02-14 03:46:57');

-- Dumping structure for table eshop.contactuses
CREATE TABLE IF NOT EXISTS `contactuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.contactuses: ~0 rows (approximately)
INSERT INTO `contactuses` (`id`, `name`, `email`, `mobile`, `message`, `created_at`, `updated_at`) VALUES
	(1, 'demo', 'asd@asd', '2323423423', 'Stay ahead of the game with the latest Instagram trends of 2024. Discover the hottest filters, creative editing techniques, and viral', '2024-02-19 07:18:49', '2024-02-19 07:18:49');

-- Dumping structure for table eshop.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table eshop.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.migrations: ~17 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2014_10_12_100000_create_password_resets_table', 1),
	(4, '2019_08_19_000000_create_failed_jobs_table', 1),
	(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(6, '2023_07_06_070607_create_category_table', 2),
	(7, '2023_07_06_132637_create_products_table', 3),
	(8, '2023_07_11_062953_create_carts_table', 4),
	(9, '2023_07_12_112112_create_orders_table', 5),
	(10, '2023_07_12_114205_create_order_item_table', 5),
	(11, '2023_07_14_114804_create_wishlists_table', 6),
	(12, '2023_07_17_125034_create_ratings_table', 7),
	(13, '2023_07_18_110822_create_reviews_table', 8),
	(14, '2023_08_30_130905_create_sliders_table', 9),
	(15, '2023_09_05_061210_create_useraddresses_table', 10),
	(17, '2023_10_24_073206_create_settings_table', 11),
	(19, '2023_12_02_121339_create_posters_table', 12),
	(20, '2023_12_06_111119_create_subscribes_table', 13),
	(21, '2023_12_08_093612_create_notifications_table', 14),
	(22, '2023_12_19_131758_add_deleted_at_field_to_users', 15),
	(23, '2023_12_20_103957_add_deleted_at_field_to_products', 16),
	(24, '2024_02_12_120752_create_themes_table', 17),
	(25, '2024_02_19_115432_create_contactuses_table', 18);

-- Dumping structure for table eshop.notifications
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.notifications: ~14 rows (approximately)
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
	('257f8140-0f05-4af4-ba9b-a0b45062792b', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:37:43', '2023-12-08 06:37:43'),
	('2b0c97fe-337e-49e4-8d8c-464f88182bd2', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:37:32', '2023-12-08 06:37:32'),
	('2b790f21-18be-48f4-902b-d68f86cb4695', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:37:50', '2023-12-08 06:37:50'),
	('4d5607f7-3def-49f2-8b08-3d539f43d60b', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:30:12', '2023-12-08 06:30:12'),
	('5b4ebd3c-e875-4757-946b-949f4b17e8b2', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:37:31', '2023-12-08 06:37:31'),
	('61c251f5-6ac2-4a77-ad37-30e4b0d6e9dc', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:32:33', '2023-12-08 06:32:33'),
	('70e339f9-4c79-4454-95ec-b3f9e5215ca8', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:29:41', '2023-12-08 06:29:41'),
	('7324aab6-a769-4e03-85bc-50053ff4f1a2', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:37:19', '2023-12-08 06:37:19'),
	('80c93b92-9253-4a20-aeaa-81eab8e65d91', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:27:35', '2023-12-08 06:27:35'),
	('8f8b6f83-4256-49cf-bbb6-b5b80c2c2ac7', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:37:30', '2023-12-08 06:37:30'),
	('9ffeff0b-2dfb-4c6c-b7c3-b1d645d327dd', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:36:53', '2023-12-08 06:36:53'),
	('bdc17bcc-9266-48af-90b0-4ed0b4aa703d', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:29:19', '2023-12-08 06:29:19'),
	('c96c2c4a-2a37-47c2-9e36-101cf3d121eb', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:26:16', '2023-12-08 06:26:16'),
	('f89b157f-1574-4174-886d-446dd847ca60', 'App\\Notifications\\UserOrderNotification', 'App\\Models\\User', 2, '[[{"id":22,"user_id":2,"address_id":24,"total_price":546,"status":0,"payment_mode":"NETBANKING","payment_id":"{\\"success\\":true,\\"code\\":\\"PAYMENT_SUCCESS\\",\\"message\\":\\"Your payment is successful.\\",\\"data\\":{\\"merchantId\\":\\"PGTESTPAYUAT101\\",\\"merchantTransactionId\\":\\"6573019a2cda4\\",\\"transactionId\\":\\"T2312081715013055697102\\",\\"amount\\":100,\\"state\\":\\"COMPLETED\\",\\"responseCode\\":\\"SUCCESS\\",\\"paymentInstrument\\":{\\"type\\":\\"NETBANKING\\",\\"pgTransactionId\\":\\"1995464773\\",\\"pgServiceTransactionId\\":\\"PG2212291607083344934300\\",\\"bankTransactionId\\":null,\\"bankId\\":\\"\\"}}}","message":null,"tracking_no":"shirt_inc-6843","created_at":"2023-12-08T11:44:48.000000Z","updated_at":"2023-12-08T11:44:48.000000Z"}]]', NULL, '2023-12-08 06:36:37', '2023-12-08 06:36:37');

-- Dumping structure for table eshop.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `address_id` bigint DEFAULT NULL,
  `total_price` bigint DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `payment_mode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `message` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.orders: ~15 rows (approximately)
INSERT INTO `orders` (`id`, `user_id`, `address_id`, `total_price`, `status`, `payment_mode`, `payment_id`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
	(1, 2, 22, 1298, 4, 'Paid By DebitCard', 'pay_MZ1sJbotaveig5', NULL, 'shirt_inc-9896', '2023-05-06 05:41:54', '2023-10-11 07:28:02'),
	(2, 2, 8, 1786, 4, 'Paid By DebitCard', 'pay_MmQb7Gt1kKCPEw', 'Thank you for shopping ...', 'shirt_inc-8066', '2023-06-10 02:21:43', '2023-10-27 02:21:06'),
	(3, 2, 8, 599, 3, 'Paid By DebitCard', 'pay_Mmm2zfC36HxhWl', NULL, 'shirt_inc-1894', '2023-06-10 23:20:41', '2023-10-27 02:38:09'),
	(9, 2, 8, 599, 0, 'order_Mp9zn5C30iSvS7', 'pay_MpA099iOdx99Ee', NULL, 'shirt_inc-2963', '2023-09-17 00:05:38', '2023-10-17 00:05:38'),
	(10, 2, 8, 399, 0, 'order_MpAHESMVniCDuD', 'pay_MpAHRPFK3yBTJ7', NULL, 'shirt_inc-3746', '2023-09-17 00:21:12', '2023-10-17 00:21:12'),
	(11, 2, 8, 1245, 0, 'order_MpAOOMnk3R1K44', 'pay_MpAV7Q2vUHBzsg', NULL, 'shirt_inc-9980', '2023-09-17 00:33:58', '2023-10-17 00:33:58'),
	(12, 2, 8, 1499, 0, 'order_MpBt8qe4tYy3AP', 'pay_MpBtI9KnNS4acA', NULL, 'shirt_inc-1234', '2023-10-17 03:44:05', '2023-10-17 03:44:05'),
	(15, 4, 22, 599, 1, 'CARD', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"65672a8c6d76f","transactionId":"T2311291742515475226764","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"CARD","cardType":"CREDIT_CARD","pgTransactionId":"PG2207221432267522530776","bankTransactionId":null,"pgAuthorizationCode":null,"arn":null,"bankId":"","brn":"B12345"}}}', 'Your order has been confiremed', 'shirt_inc-9685', '2023-11-29 06:42:32', '2023-11-29 06:47:06'),
	(16, 4, 22, 699, 0, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"65673165477e4","transactionId":"T2311291812041845226671","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-6703', '2023-11-29 07:11:28', '2023-11-29 07:11:28'),
	(17, 4, 22, 588, 0, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"6567318db63c0","transactionId":"T2311291812446765226422","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-3501', '2023-11-29 07:18:59', '2023-11-29 07:18:59'),
	(18, 1, 22, 1638, 0, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"656b017744cda","transactionId":"T2312021536414371995329","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-4001', '2023-12-02 04:36:08', '2023-12-02 04:36:08'),
	(19, 6, 22, 1497, 0, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"656b0a4fb4db8","transactionId":"T2312021614258691995780","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-6175', '2023-12-08 05:13:43', '2023-12-02 05:13:43'),
	(20, 2, 21, 1145, 0, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"656f1954ae193","transactionId":"T2312051807084205697237","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-9097', '2023-12-08 07:07:06', '2023-12-05 07:07:06'),
	(21, 2, 24, 1398, 2, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"65703dd2167ee","transactionId":"T2312061455065635697466","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-6095', '2023-12-08 03:54:58', '2023-12-07 23:14:47'),
	(22, 2, 24, 546, 0, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"6573019a2cda4","transactionId":"T2312081715013055697102","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-6843', '2023-12-08 06:14:48', '2023-12-08 06:14:48'),
	(23, 2, 21, 333, 0, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"658ea9bd665c8","transactionId":"T2312291643543244655125","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-5470', '2023-12-29 05:43:20', '2023-12-29 05:43:20'),
	(24, 2, 21, 1499, 0, 'NETBANKING', '{"success":true,"code":"PAYMENT_SUCCESS","message":"Your payment is successful.","data":{"merchantId":"PGTESTPAYUAT101","merchantTransactionId":"659d20574466a","transactionId":"T2401091601505455477561","amount":100,"state":"COMPLETED","responseCode":"SUCCESS","paymentInstrument":{"type":"NETBANKING","pgTransactionId":"1995464773","pgServiceTransactionId":"PG2212291607083344934300","bankTransactionId":null,"bankId":""}}}', NULL, 'shirt_inc-2007', '2024-01-09 05:01:09', '2024-01-09 05:01:09');

-- Dumping structure for table eshop.order_item
CREATE TABLE IF NOT EXISTS `order_item` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mens_size` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `womens_size` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.order_item: ~22 rows (approximately)
INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `quantity`, `price`, `size`, `mens_size`, `womens_size`, `created_at`, `updated_at`) VALUES
	(1, '1', '30', '1', '699', 'L', 'M', 'L', '2023-09-06 05:41:54', '2023-09-06 05:41:54'),
	(2, '1', '34', '1', '599', 'L', NULL, NULL, '2023-09-06 05:41:54', '2023-09-06 05:41:54'),
	(3, '2', '36', '1', '588', 'L', NULL, NULL, '2023-10-10 02:21:43', '2023-10-10 02:21:43'),
	(4, '2', '39', '2', '599', 'XL', NULL, NULL, '2023-10-10 02:21:43', '2023-10-10 02:21:43'),
	(5, '3', '39', '1', '599', 'L', NULL, NULL, '2023-10-10 23:20:41', '2023-10-10 23:20:41'),
	(8, '6', '36', '1', '588', 'L', NULL, NULL, '2023-10-16 02:01:55', '2023-10-16 02:01:55'),
	(9, '7', '39', '1', '599', 'L', NULL, NULL, '2023-10-16 02:13:24', '2023-10-16 02:13:24'),
	(10, '8', '39', '1', '599', 'L', NULL, NULL, '2023-10-16 03:45:00', '2023-10-16 03:45:00'),
	(11, '9', '39', '1', '599', 'L', NULL, NULL, '2023-10-17 00:05:38', '2023-10-17 00:05:38'),
	(12, '10', '20', '1', '399', 'L', NULL, NULL, '2023-10-17 00:21:12', '2023-10-17 00:21:12'),
	(13, '11', '30', '1', '699', 'L', 'M', 'L', '2023-10-17 00:33:58', '2023-10-17 00:33:58'),
	(14, '11', '37', '1', '546', 'M', NULL, NULL, '2023-10-17 00:33:58', '2023-10-17 00:33:58'),
	(15, '12', '15', '1', '1499', 'M', NULL, NULL, '2023-10-17 03:44:05', '2023-10-17 03:44:05'),
	(16, '15', '39', '1', '599', 'M', NULL, NULL, '2023-11-29 06:42:32', '2023-11-29 06:42:32'),
	(17, '16', '30', '1', '699', 'L', 'L', 'L', '2023-11-29 07:11:28', '2023-11-29 07:11:28'),
	(18, '17', '36', '1', '588', 'M', NULL, NULL, '2023-11-29 07:18:59', '2023-11-29 07:18:59'),
	(19, '18', '37', '3', '546', 'M', NULL, NULL, '2023-12-02 04:36:08', '2023-12-02 04:36:08'),
	(20, '19', '35', '3', '499', 'L', NULL, NULL, '2023-12-02 05:13:43', '2023-12-02 05:13:43'),
	(21, '20', '39', '1', '599', 'M', NULL, NULL, '2023-12-05 07:07:06', '2023-12-05 07:07:06'),
	(22, '20', '37', '1', '546', 'M', NULL, NULL, '2023-12-05 07:07:06', '2023-12-05 07:07:06'),
	(23, '21', '33', '2', '699', 'L', 'L', 'S', '2023-12-06 03:54:58', '2023-12-06 03:54:58'),
	(24, '22', '37', '1', '546', 'M', NULL, NULL, '2023-12-08 06:14:48', '2023-12-08 06:14:48'),
	(25, '23', '47', '1', '333', 'L', NULL, NULL, '2023-12-29 05:43:20', '2023-12-29 05:43:20'),
	(26, '24', '15', '1', '1499', 'L', NULL, NULL, '2024-01-09 05:01:09', '2024-01-09 05:01:09');

-- Dumping structure for table eshop.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.password_resets: ~0 rows (approximately)

-- Dumping structure for table eshop.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.password_reset_tokens: ~2 rows (approximately)
INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
	('bitow51120@ibtrades.com', '$2y$10$Ai0HTIB4yNYui2PAkEQEiOTpCuYr5eDL9Dvotx1kXS53IaA60a0Qe', '2023-10-14 04:00:17'),
	('mohnish101998@gmail.com', '$2y$10$LyB9cSXpxQWxgOkbr8DDd.nD7tlaVGakkHzaJBmkWPpXlZA7ZNNKG', '2024-02-22 04:03:08');

-- Dumping structure for table eshop.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table eshop.posters
CREATE TABLE IF NOT EXISTS `posters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.posters: ~2 rows (approximately)
INSERT INTO `posters` (`id`, `title`, `desc`, `image`, `active`, `created_at`, `updated_at`) VALUES
	(4, 'Grab Now', 'Download your design! Download your Poster and start sharing it with the world!', '1701765811.avif', 1, NULL, '2023-12-05 04:00:51'),
	(5, 'Show now!', 'Download your design! Download your Poster and start sharing it with the world!', '1701765828.avif', 0, NULL, '2023-12-05 03:51:00');

-- Dumping structure for table eshop.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `original_price` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quantity` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `themes` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_list` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `couple_men_size` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `couple_women_size` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trending` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `freq_bought` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_menu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_msg` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.products: ~19 rows (approximately)
INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `desc`, `original_price`, `selling_price`, `image`, `quantity`, `type`, `themes`, `size_list`, `couple_men_size`, `couple_women_size`, `status`, `trending`, `freq_bought`, `offer_menu`, `offer_msg`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(14, '1', 'Otaku Hoodie', 'otaku-hoodie', 'Otaku Hoodie', '999', '599', '1692186155.webp', '50', 'Mens', 'the-boys', '["S","M","L","XXL"]', NULL, NULL, '0', '1', '0', '0', 'new', '2023-08-16 06:12:35', '2024-02-15 00:28:17', NULL),
	(15, '1', 'Law of Water', 'law-of-water', 'Law of Water (Back Print) - Yellow Hoodie', '1999', '1499', '1692186310.webp', '47', 'Womens', 'the-boys', '["M","L","XL"]', NULL, NULL, '1', '0', '0', '0', 'new', '2023-08-16 06:15:10', '2024-02-13 05:37:45', NULL),
	(16, '1', 'Empathy Hoodie', 'Empathy Hoodie', 'black pullover hoodie, Hoodie T-shirt Tracksuit Bluza Jacket', '888', '499', '1692186379.webp', '2', 'Unisex', 'the-boys', '["S","M","L","XXL"]', NULL, NULL, '0', '1', '0', '0', 'new', '2023-08-16 06:16:19', '2023-11-04 03:44:11', NULL),
	(17, '2', 'Sleep Mode Couple T-Shirt', 'Sleep Mode Couple T-Shirt', 'Vacation Mode - Sleep Mode Couple T-Shirt', '899', '299', '1692186844.jpg', '3', 'Unisex', 'superman', '["M","L","XL"]', '["M","L","XL"]', '["S","M"]', '0', '0', '0', '0', 'new', '2023-08-16 06:24:04', '2023-08-31 07:39:07', NULL),
	(18, '2', 'The Cook The Comali', 'The Cook The Comali', 'The Cook The Comali Couple T-shirt', '699', '199', '1692186942.jpg', '99', 'Unisex', 'superman', '["S","L"]', '["M","L","XL"]', '["S"]', '1', '0', '0', '0', 'new', '2023-08-16 06:25:42', '2023-10-12 23:02:59', NULL),
	(19, '2', 'Sorry - Not Sorry', 'sorry---not-sorry', 'Sorry - Not Sorry Couple T-Shirt', '799', '199', '1692187006.jpg', '2', 'Unisex', 'all-superheros', '["S","L"]', '["M","L","XL"]', '["S","M"]', '0', '1', '0', '0', 'new', '2023-08-16 06:26:46', '2024-02-13 05:38:11', NULL),
	(20, '3', 'Baba Yaga - John Wick', 'baba-yaga---john-wick', 'Baba Yaga - John Wick Tribute Oversized (Front & Back) T-Shirt', '699', '399', '1692187078.jpg', '43', 'Mens', 'cartoons', '["S","M","L","XXL"]', NULL, NULL, '1', '1', '0', '1', 'new', '2023-08-16 06:27:58', '2024-02-15 00:31:42', NULL),
	(23, '2', 'Team Bride & Groom Couple T-Shirt', 'Team Bride & Groom Couple T-Shirt', 'Team Bride & Groom Couple T-Shirt', '599', '499', '7700.webp,7515.webp,9576.webp', '1', 'Unisex', NULL, '["S","M","L","XXL"]', NULL, NULL, '0', '1', NULL, '0', NULL, '2023-08-25 02:11:17', '2023-08-25 02:11:17', NULL),
	(25, '4', 'No Guts No Glory | Gold Foil Printed Black Sweatshirt', 'No Guts No Glory | Gold Foil Printed Black Sweatshirt', 'No Guts No Glory | Gold Foil Printed Black Sweatshirt', '999', '699', '8029.webp', '1', 'Mens', NULL, '["M","L","XL"]', NULL, NULL, '1', '1', NULL, '1', 'sale', '2023-08-25 02:24:18', '2023-08-25 02:24:18', NULL),
	(28, '4', 'Keep Sleeping Sweatshirt', 'keep-sleeping-sweatshirt', 'Keep Sleeping Sweatshirt', '699', '299', '3150.webp', '20', 'Mens', 'cartoons', '["XL"]', NULL, NULL, '0', '0', '0', '0', 'new', '2023-08-25 06:54:28', '2024-02-15 00:31:20', NULL),
	(30, '2', 'She is Mine He is Mine Printed Couple Tshirts', 'She is Mine He is Mine Printed Couple Tshirts', 'Hangout Hub HH76 She is Mine He is Mine Printed Couple Tshirts', '999', '699', '6806.jpg,1905.jpg,4426.jpg', '6', 'Unisex', NULL, '["S"]', '["M","L","XL"]', '["S","M","L","XXL"]', '0', '1', NULL, '1', 'new', '2023-08-28 00:14:16', '2023-11-29 07:11:28', NULL),
	(33, '2', 'Couple Tshirts for Couples | Printed One Love Heart T-Shirts', 'couple-tshirts-for-couples-|-printed-one-love-heart-t-shirts', 'Couple Tshirts for Couples | Printed One Love Heart T-Shirts', '999', '699', '778.jpg,1200.jpg,1408.jpg', '2', 'Unisex', NULL, '["S"]', '["M","L","XL"]', '["S","M"]', '0', '0', '1', '1', 'new', '2023-08-28 00:31:15', '2023-12-16 07:50:39', NULL),
	(34, '4', 'VERO MODA Women\'s Cotton Sweatshirt', 'VERO MODA Women\'s Cotton Sweatshirt', 'VERO MODA Women\'s Cotton Sweatshirt', '799', '599', '3740.jpg,2451.jpg', '9', 'Womens', '', '["S","M","L","XL"]', '', '', '0', '1', NULL, '1', 'trend', '2023-08-28 01:28:35', '2023-09-06 05:41:54', NULL),
	(35, '6', 'Bewakoof Men\'s Printed 100% Cotton T-Shirt - Regular Fit, Round Neck,', 'bewakoof-men\'s-printed-100%-cotton-t-shirt---regular-fit,-round-neck,', 'Bewakoof Men\'s Printed 100% Cotton T-Shirt - Regular Fit, Round Neck,', '699', '499', '8652.webp', '1', 'Mens', 'cartoons', '["S","M","L","XL","XXL"]', NULL, NULL, '0', '1', '1', '1', 'new', '2023-08-28 05:13:11', '2024-02-15 00:31:11', NULL),
	(36, '6', 'Toodlegram Plus Size T-Shirt, Pocket Panda Unisex T-Shirt', 'toodlegram-plus-size-t-shirt,-pocket-panda-unisex-t-shirt', 'Toodlegram Plus Size T-Shirt, Pocket Panda Unisex T-Shirt', '799', '588', '6037.png', '1', 'Unisex', 'the-boys', '["M","L"]', NULL, NULL, '1', '0', '0', '1', 'new', '2023-08-30 04:55:21', '2024-02-13 05:38:33', NULL),
	(37, '4', 'Happy mood Women Sweatshirt', 'happy-mood-women-sweatshirt', 'Van Heusen Women Sweatshirt', '899', '546', '9115.jpg,654.jpg', '3', 'Womens', 'travel', '["S","M"]', NULL, NULL, '0', '1', '0', '1', 'new', '2023-08-30 04:57:43', '2024-02-15 00:29:01', NULL),
	(39, '16', 'Leo Badass tshirt', 'leo-badass-tshirt', 'Leo Badass tshirt', '999', '599', '2262.png', '2', 'Unisex', 'all-superheros', '["S","M","L","XL"]', NULL, NULL, '0', '1', '1', '1', 'new', '2023-10-09 04:17:24', '2024-02-13 05:38:22', NULL),
	(45, '17', 'AM:PM Straight Pants', 'am:pm-straight-pants', 'AM:PM Straight Pants', '777', '555', '98276.avif', '55', 'Unisex', 'gym', '["S","M"]', NULL, NULL, '0', '0', '0', '0', 'new', '2023-12-20 07:39:58', '2024-02-15 00:30:36', NULL),
	(47, '17', 'Greatest Leggings', 'greatest-leggings', 'Greatest Leggings', '675', '333', '96589.webp,30863.webp', '21', 'Unisex', NULL, '["M","L"]', NULL, NULL, '0', '1', '0', '0', 'new', '2023-12-20 07:40:42', '2023-12-29 05:43:20', NULL);

-- Dumping structure for table eshop.ratings
CREATE TABLE IF NOT EXISTS `ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `star_rate` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.ratings: ~0 rows (approximately)
INSERT INTO `ratings` (`id`, `user_id`, `product_id`, `star_rate`, `created_at`, `updated_at`) VALUES
	(1, '2', '39', '4', '2024-01-18 07:27:21', '2024-01-18 07:27:21');

-- Dumping structure for table eshop.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.reviews: ~0 rows (approximately)

-- Dumping structure for table eshop.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `website_name` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `address1` text COLLATE utf8mb4_unicode_ci,
  `address2` text COLLATE utf8mb4_unicode_ci,
  `phone1` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone2` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email1` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email2` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_status` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.settings: ~1 rows (approximately)
INSERT INTO `settings` (`id`, `website_name`, `website_url`, `page_title`, `meta_keyword`, `meta_description`, `address1`, `address2`, `phone1`, `phone2`, `email1`, `email2`, `facebook`, `instagram`, `youtube`, `twitter`, `promo_status`, `created_at`, `updated_at`) VALUES
	(1, 'Shirt-inc', 'https://shirt-inc.com/', 'shirt inc trendy tees', 'We\'ve pulled the most popular t shirt keywords! Find out which keywords you should be using in your PPC and SEO campaigns.', 'We\'ve pulled the most popular t shirt keywords! Find out which keywords you should be using in your PPC and SEO campaigns.', '26 , netaji lane , t-nagar , chennai - 600018', '26 , netaji lane , t-nagar , chennai - 600018', '787686767867', '67867867867', 'shirt@gmail.com', 'support@gmail.com', 'facebook.com', 'https://www.instagram.com/xtremedm/', 'youtube.com', 'twitter.com', '"Last Chance! Flash Sale Ends Soon. Shop Now and Save Big! 💸🛒"', '2023-10-24 03:48:24', '2023-12-07 23:11:10');

-- Dumping structure for table eshop.sliders
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int DEFAULT '0',
  `timer` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.sliders: ~4 rows (approximately)
INSERT INTO `sliders` (`id`, `image`, `active`, `timer`, `created_at`, `updated_at`) VALUES
	(8, '1697281782.png', 0, 3000, NULL, '2024-02-15 01:48:14'),
	(9, '1697289000.png', 0, 3000, NULL, NULL),
	(10, '1707224070.png', 0, 4000, NULL, NULL),
	(11, '1707224077.png', 1, 4000, NULL, NULL);

-- Dumping structure for table eshop.states
CREATE TABLE IF NOT EXISTS `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `country_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- Dumping data for table eshop.states: ~35 rows (approximately)
INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
	(1, 'ANDHRA PRADESH', 105),
	(2, 'ASSAM', 105),
	(3, 'ARUNACHAL PRADESH', 105),
	(4, 'BIHAR', 105),
	(5, 'GUJRAT', 105),
	(6, 'HARYANA', 105),
	(7, 'HIMACHAL PRADESH', 105),
	(8, 'JAMMU & KASHMIR', 105),
	(9, 'KARNATAKA', 105),
	(10, 'KERALA', 105),
	(11, 'MADHYA PRADESH', 105),
	(12, 'MAHARASHTRA', 105),
	(13, 'MANIPUR', 105),
	(14, 'MEGHALAYA', 105),
	(15, 'MIZORAM', 105),
	(16, 'NAGALAND', 105),
	(17, 'ORISSA', 105),
	(18, 'PUNJAB', 105),
	(19, 'RAJASTHAN', 105),
	(20, 'SIKKIM', 105),
	(21, 'TAMIL NADU', 105),
	(22, 'TRIPURA', 105),
	(23, 'UTTAR PRADESH', 105),
	(24, 'WEST BENGAL', 105),
	(25, 'DELHI', 105),
	(26, 'GOA', 105),
	(27, 'PONDICHERY', 105),
	(28, 'LAKSHDWEEP', 105),
	(29, 'DAMAN & DIU', 105),
	(30, 'DADRA & NAGAR', 105),
	(31, 'CHANDIGARH', 105),
	(32, 'ANDAMAN & NICOBAR', 105),
	(33, 'UTTARANCHAL', 105),
	(34, 'JHARKHAND', 105),
	(35, 'CHATTISGARH', 105);

-- Dumping structure for table eshop.subscribes
CREATE TABLE IF NOT EXISTS `subscribes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.subscribes: ~14 rows (approximately)
INSERT INTO `subscribes` (`id`, `email`, `location`, `created_at`, `updated_at`) VALUES
	(1, 'sam@gmail', NULL, '2023-12-06 06:14:12', '2023-12-06 06:14:12'),
	(2, 'asdas@asd', NULL, '2023-12-06 07:33:10', '2023-12-06 07:33:10'),
	(3, 'asd@asdaasd', NULL, '2023-12-06 07:34:29', '2023-12-06 07:34:29'),
	(4, 'asdasd@sdas', NULL, '2023-12-06 07:37:18', '2023-12-06 07:37:18'),
	(5, 'sdasd@asd', NULL, '2023-12-06 07:38:16', '2023-12-06 07:38:16'),
	(6, 'asda@asda', NULL, '2023-12-06 07:39:44', '2023-12-06 07:39:44'),
	(7, 'asdas@sad.s', NULL, '2023-12-07 04:51:02', '2023-12-07 04:51:02'),
	(8, 'asda@asd', NULL, '2023-12-07 04:51:47', '2023-12-07 04:51:47'),
	(9, 'asdas@adas', NULL, '2023-12-07 04:52:54', '2023-12-07 04:52:54'),
	(10, 'assdasd@asdas', NULL, '2023-12-07 04:53:54', '2023-12-07 04:53:54'),
	(11, 'asasda@asd', NULL, '2023-12-07 04:55:38', '2023-12-07 04:55:38'),
	(12, 'asdasd@sfdf', NULL, '2023-12-07 04:58:06', '2023-12-07 04:58:06'),
	(13, 'asdsa@ass', NULL, '2023-12-07 05:00:41', '2023-12-07 05:00:41'),
	(14, 'asdasd@asd', NULL, '2023-12-07 05:02:10', '2023-12-07 05:02:10'),
	(15, 'adasda@Asda', NULL, '2023-12-18 02:46:46', '2023-12-18 02:46:46'),
	(16, 'moni@asd', NULL, '2024-02-15 03:07:33', '2024-02-15 03:07:33');

-- Dumping structure for table eshop.themes
CREATE TABLE IF NOT EXISTS `themes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(195) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(195) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.themes: ~6 rows (approximately)
INSERT INTO `themes` (`id`, `name`, `slug`, `icon`, `image`, `poster`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Travel', 'travel', '', '1707910335.jpg', NULL, 0, '2024-02-12 07:29:10', '2024-02-14 06:02:15'),
	(2, 'The Boys', 'the-boys', '', '1707916808.webp', NULL, 0, '2024-02-12 07:36:14', '2024-02-14 07:50:08'),
	(4, 'Gym', 'gym', '', '1707910372.jpg', NULL, 1, '2024-02-12 07:50:41', '2024-02-16 02:21:23'),
	(6, 'All Superheroes', 'all-superheros', '', '1707916822.webp', NULL, 0, '2024-02-12 07:51:32', '2024-02-14 07:50:22'),
	(7, 'Cartoons', 'cartoons', '', '1708070416.webp', '1708070348.webp', 1, '2024-02-12 07:52:01', '2024-02-16 02:38:12'),
	(8, 'Superman', 'superman', '', '1708070188.webp', '1708070188.webp', 1, '2024-02-14 05:59:55', '2024-02-16 07:45:20'),
	(9, 'The Godfather', 'the-godfather', '1708066061.png', '1708066061.webp', '1708069616.webp', 1, '2024-02-16 01:17:41', '2024-02-16 02:21:13');

-- Dumping structure for table eshop.useraddresses
CREATE TABLE IF NOT EXISTS `useraddresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landmark` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_instr` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.useraddresses: ~2 rows (approximately)
INSERT INTO `useraddresses` (`id`, `user_id`, `full_name`, `address`, `landmark`, `state`, `city`, `pincode`, `phone`, `address_type`, `delivery_instr`, `status`, `created_at`, `updated_at`) VALUES
	(8, '5', 'Anwar', '88,palmore street , west mambalam', NULL, 'TAMIL NADU', 'chennai', '600033', '352354353', 'Work', NULL, '0', '2023-10-10 23:19:58', '2023-10-10 23:19:58'),
	(21, '2', 'leee', '235, netaji st', NULL, 'HIMACHAL PRADESH', 'manali', '534343', '7867867867', 'Home', 'call me before delivery', '0', '2023-11-02 07:18:08', '2024-02-14 00:28:43'),
	(22, '4', 'dinu', '32 , anna nagar', NULL, 'TAMIL NADU', 'chennai', '600012', '9843242342', 'Home', NULL, '1', '2023-11-29 06:26:18', '2023-11-29 06:36:10'),
	(23, '6', 'loki', '234,kundradhur ,big street', NULL, 'TAMIL NADU', 'chennai', '600324', '9234323242', 'Work', NULL, '0', '2023-12-02 05:12:19', '2023-12-02 05:12:19'),
	(24, '2', 'Sam', '510, cyclone lane', NULL, 'TAMIL NADU', 'chennai', '600911', '8546464646', 'Home', NULL, '0', '2023-12-06 03:54:17', '2023-12-06 03:54:17');

-- Dumping structure for table eshop.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint NOT NULL DEFAULT '0',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.users: ~9 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `last_seen`, `deleted_at`) VALUES
	(1, 'moniz', 'mohnish101998@gmail.com', '9678676558', NULL, '$2y$10$MoqM5vzJJEJvjzR79UB4Du5dLytUOF/WcAtWXtdluyc/2qJew6J3C', 1, '4aDfYKGLp65rLgyojEilNZZHehMwV3zoDIeZbqV6AK3gP9l9HvruJxfmlHqy', '2023-07-05 07:18:11', '2024-02-12 01:45:53', '2024-02-12 01:45:53', NULL),
	(2, 'lee', 'lee', '9678676558', NULL, '$2y$10$n2hfDYu9LQ3F42ttuRbRZ.4N3fg6tRvoEvro8dELhd9.2Ne9F89Xq', 1, 'g9KIsm210rNRabk37AlWh52Esssr5CgdIjA0cHquQEMiLm29kqI3GYcRKEf9', '2023-07-05 07:57:56', '2024-02-22 04:08:14', '2024-02-22 04:08:14', NULL),
	(3, 'san', 'bitow5112s0@ibtrades.com', '9678567567', NULL, '$2y$10$vIqzWoskCIpjv2/bcXoPXekT8RtBc0UnRAG2b8pp05jaJZMgD9YX6', 0, 'v2TV19ciK3cMN8YZolnNuUCcfR68chnn4k4RRKT8rDn70ESmDo5n3wbufCrN', '2023-07-13 07:46:16', '2023-12-18 07:06:52', '2023-12-18 07:06:52', NULL),
	(4, 'dinu', 'dinu@gmail.com', '9856587456', NULL, '$2y$10$l3GCwjsbxe8AuuivwVLeb.G/16zunplb597534xoJ489BTPCywBE6', 0, NULL, '2023-07-19 05:41:36', '2023-12-26 05:00:19', '2023-12-26 05:00:19', NULL),
	(5, 'anwar', 'anwar@gmail.com', '1234567894', NULL, '$2y$10$knahZiQSOkVgX8s2R8W.pOAKOdNuikdaGpwHlKS63EPjO6da6Ax8S', 0, NULL, '2023-09-14 03:29:25', '2023-12-18 07:40:56', '2023-12-18 07:40:56', NULL),
	(6, 'Loki', 'sailoge786@gmail.com', '6575675675', NULL, '$2y$10$6DZFQqpxeSJNrWT92qLckepUl3MyMvZ5Nxcm/a8fpFdjfJgF3.km.', 0, NULL, '2023-10-14 01:32:54', '2023-11-01 07:04:13', '2023-12-07 12:31:44', NULL),
	(7, 'sams', 'bitow51t120@ibtrades.com', '1234567890', NULL, '$2y$10$8adDD0pEBW/4hEvQkNwTDusoBfI5sh3mDCIhCezp1zNz2Dy8g.Lwy', 0, NULL, '2023-10-14 06:55:46', '2023-12-02 05:36:36', '2023-12-07 12:31:44', NULL),
	(8, 'san', 'bitow51120@ibtrades.com', '5656546651', NULL, '$2y$10$C.V7XXo9Q.aoyD0.gyLE7e0rKnSV1ofJlq8bbHupGHaWfIv7WZS/a', 0, NULL, '2023-12-08 07:11:22', '2023-10-14 07:11:22', '2023-12-07 12:31:45', NULL),
	(9, 'prav', 'prav@gmail.com', '5634534534', NULL, '$2y$10$JZSnTL9O94m9kvFXPv.KYey4EHkaPiXH7nvZL.5Gyxd9z1/3o2nHy', 0, NULL, '2024-02-03 06:07:32', '2024-02-03 06:08:10', '2024-02-03 06:08:10', NULL);

-- Dumping structure for table eshop.wishlists
CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(195) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table eshop.wishlists: ~6 rows (approximately)
INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(35, '1', '47', '2024-02-11 23:54:51', '2024-02-11 23:54:51'),
	(52, '2', '37', '2024-02-14 00:14:40', '2024-02-14 00:14:40'),
	(53, '2', '39', '2024-02-14 00:34:58', '2024-02-14 00:34:58'),
	(54, '2', '34', '2024-02-15 03:08:27', '2024-02-15 03:08:27'),
	(55, '2', '35', '2024-02-15 07:25:21', '2024-02-15 07:25:21'),
	(56, '2', '28', '2024-02-15 07:37:50', '2024-02-15 07:37:50'),
	(57, '2', '25', '2024-02-15 07:38:01', '2024-02-15 07:38:01'),
	(58, '2', '20', '2024-02-16 00:40:13', '2024-02-16 00:40:13');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
