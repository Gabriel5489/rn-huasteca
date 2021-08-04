/*
SQLyog Ultimate
MySQL - 10.4.11-MariaDB : Database - dbhuasteca2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dbhuasteca2` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `dbhuasteca2`;

/*Table structure for table `chat_messages` */

DROP TABLE IF EXISTS `chat_messages`;

CREATE TABLE `chat_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `chat_room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `chat_messages` */

LOCK TABLES `chat_messages` WRITE;

insert  into `chat_messages`(`id`,`chat_room_id`,`user_id`,`message`,`created_at`,`updated_at`) values 
(1,1,25,'Buen dia!! Cobran envio?','2021-02-28 05:41:16','2021-02-28 05:41:16'),
(8,1,26,'El envio es gratis en compras mayores a $500. Solo en mexico.\r\n','2021-02-28 09:25:19','2021-02-28 09:25:19'),
(9,1,25,'probando','2021-02-28 09:25:28','2021-02-28 09:25:28'),
(10,1,26,'Respuesta\r\n','2021-02-28 10:10:27','2021-02-28 10:10:27'),
(11,1,25,'Tengo una Duda!','2021-02-28 11:16:31','2021-02-28 11:16:31'),
(13,1,59,'Buenos dias','2021-02-28 13:21:27','2021-02-28 13:21:27'),
(14,1,59,'Todavia tienen blusas para niña?','2021-02-28 13:23:31','2021-02-28 13:23:31');

UNLOCK TABLES;

/*Table structure for table `chat_rooms` */

DROP TABLE IF EXISTS `chat_rooms`;

CREATE TABLE `chat_rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `chat_rooms` */

LOCK TABLES `chat_rooms` WRITE;

insert  into `chat_rooms`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'General',NULL,NULL),
(2,'Tech Talk',NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

LOCK TABLES `failed_jobs` WRITE;

UNLOCK TABLES;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

LOCK TABLES `migrations` WRITE;

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2014_10_12_200000_add_two_factor_columns_to_users_table',1),
(4,'2019_08_19_000000_create_failed_jobs_table',1),
(5,'2019_12_14_000001_create_personal_access_tokens_table',1),
(6,'2020_05_21_100000_create_teams_table',1),
(7,'2020_05_21_200000_create_team_user_table',1),
(8,'2020_10_29_101925_create_sessions_table',1),
(9,'2021_02_28_021852_create_chat_rooms_table',2),
(10,'2021_02_28_021939_create_chat_messages_table',2);

UNLOCK TABLES;

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

LOCK TABLES `password_resets` WRITE;

insert  into `password_resets`(`email`,`token`,`created_at`) values 
('bria35@example.org','$2y$10$zLHSHD/9FGanpYiY16oAe.d80Pp3YCuxADkTwFwPIruMHu6irriz6','2021-03-30 01:35:13'),
('angel_1999barsa@gmail.com','$2y$10$V40qou0XOZjLAy3ZZffzgeI.QkYEKClVHboeZ8HkCx5CyY3X0S.PC','2021-03-30 11:28:32'),
('aadlcg1999@gmail.com','$2y$10$IJYCHw4PlRC8.1DUfpZ01ugjRNi1dwusaMjN6LqN55/okaoLl3gha','2021-05-13 00:06:08'),
('angel.1999barsa@gmail.com','$2y$04$1TCL62Mhl2A3lt4yeTF9OuVHwxRm8U20Mf1Rq1O90vkaqzATb5R4q','2021-07-30 07:09:01');

UNLOCK TABLES;

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

LOCK TABLES `personal_access_tokens` WRITE;

UNLOCK TABLES;

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

LOCK TABLES `sessions` WRITE;

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('1t4YSaY7UEItcXSWa7VQUJzp6GaKkJsbyeWVtfTd',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTVjd3h1VUU2S0lVbDVLcnhrbzl5dENnWlhoSjVva3ZmMUg2bEdSUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1627650886),
('2HJUY7l5CFWMTHvPWuWcxN103Wk1bTHN1P0wuJnT',1,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY2pDN281ZTZKamtLeXhtYlRkckNRVUdJYTNZNWVZOWJyWGJZN3IwVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL3VzdWFyaW9zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJE00WlhJWjl3OE1qOGVCcnJmbGlKeS5YU0lEWTZWY2RJdTdNWUxyZ21YSE0uWEpoMEJzWnVtIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRNNFpYSVo5dzhNajhlQnJyZmxpSnkuWFNJRFk2VmNkSXU3TVlMcmdtWEhNLlhKaDBCc1p1bSI7fQ==',1627654385),
('a17JTC9fvr6g3QyUyt876zwebPFgyaqirXdK1K2B',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicTNtaHI4NzBlSVNrR2pBTEdGcWtLazB2V2hYdTM0OHB0bWsxcjNUeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1627651652),
('c7vzzYzgYzDTgkK5EkBpgC6cc6gvJZNMhUzS8G7L',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiUFpZRTE1aUxPWnkwVEhBT2RIaGV3OXBMSTZYa3FHaGI4amJaTGVtUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fX0=',1627650990),
('DeUHUOW3eT9cYe7J8v2vcXS1RVT6Y8ziHXvOfcvQ',59,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRDZ5aUZsbURQVTJGb3V0SXo4OW5FdU50SW5XSW1lTTFpU3pkV09mQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRkRWdmF0WTB6RkhBbVIxUjhJY3ZQZTVRTnFpZzB1b2liZmd3N1BSRFJrMFZ5Nm9XdDEwazIiO30=',1627650934),
('heXPJgSeImSb6jumsi6vectMMHZ8WdQ9umZxTYOK',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YToyOntzOjY6Il90b2tlbiI7czo0MDoiY29uTGEyajRoaWtKRFdRRUVsRG1icm9vemtXZndjdTd5c0EyVHAxciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1627674248),
('iIh8RGcs2qHRYN6gDR59Y30jE796RQlazlHMVKHv',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidHhFT3IwSTliYzBUa1p5SWtUNWowekowYVhBc1ZINWNsM2tQeGRBSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1627651595),
('jTzWRiPPBb384Mm1avi4UmkT3g2zo22LiHbG9rSJ',59,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoidVFCZmdodTZmZHE3Mjh0eEhiOTBCTE0yUzd3VEdSbFM3d1pGNkZxNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRkRWdmF0WTB6RkhBbVIxUjhJY3ZQZTVRTnFpZzB1b2liZmd3N1BSRFJrMFZ5Nm9XdDEwazIiO30=',1627651042),
('K2OEtZ9iEfBfNJFEoiTWKaA8opSGq8QXoCTi59Sc',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1RMTlVYaG9QSExZS3M1bm9Tdnl4OXE0QjNOcDA4RUNYQ21IQmp1TyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1627686012),
('qm5jMgbJFMeogRvl3eCGAUaavs3VgMsWsIBeVof3',59,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYUYybWV4UllKMTYyUk52WG43TmNrR0hvVkIzV0NwNVZxZ3plMnNqQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU5O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkRkRWdmF0WTB6RkhBbVIxUjhJY3ZQZTVRTnFpZzB1b2liZmd3N1BSRFJrMFZ5Nm9XdDEwazIiO30=',1627650764),
('RkaMNF7fD4Y6EWvrbuswHY6ih71o8HGqSJSDDUxq',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjhpNUEwWWVrY2NtVjE2UVU2RERXdFBFZk5SZUdVUkNvUTZUOEJoMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1627650904),
('UQfwcUjq2QIn7hCooOME8ZH1frv6L99YyFVjgmBF',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYkxWdG9QT1FQakRwSXBWTE44WmFCODBNNlNMRlAzUHNkdjl1SE9SdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1627650954),
('vnQq60S5HUMz9vwhYeG9KF1Ppjotp89mWyqPRsRH',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTVEMHNhMWtrRWtXS3dCenh2bUp2dU1Eb0h1eFRMd0N1VnVWWnY5NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL2NoYXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1627651709),
('VsG2wxyd4SLFMiDmgSbLXkju2eSDcBEcFFYnaY8m',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTRIcmVLSXlZRExrWFFvN3REQ0UzUjdxcjFHYUQ4SVB2MjJ0cnBrdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL0luaWNpbyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1627651093),
('YDiwtyvLcQZ7VlY04RLbM3SPDj4DLxpymvpKEmp3',NULL,'192.168.0.5','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiWGNVQTZSWkxSaUxlMEMxRWEyZ3NnTVI3WXFnWTA2T3MyRlRBdFpxTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xOTIuMTY4LjAuNTo4MDAwL2NoYXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19',1627651710);

UNLOCK TABLES;

/*Table structure for table `tblcarrito` */

DROP TABLE IF EXISTS `tblcarrito`;

CREATE TABLE `tblcarrito` (
  `idCarrito` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` bigint(20) unsigned NOT NULL,
  `idProducto` int(11) NOT NULL,
  `intCantidad` int(11) NOT NULL,
  `fltTotal` float NOT NULL,
  PRIMARY KEY (`idCarrito`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `tblcarrito_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tblcarrito_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `tblproductos` (`intIDProd`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tblcarrito` */

LOCK TABLES `tblcarrito` WRITE;

insert  into `tblcarrito`(`idCarrito`,`idUsuario`,`idProducto`,`intCantidad`,`fltTotal`) values 
(8,93,43,2,200),
(26,92,62,4,3200),
(27,92,55,1,230);

UNLOCK TABLES;

/*Table structure for table `tblcats` */

DROP TABLE IF EXISTS `tblcats`;

CREATE TABLE `tblcats` (
  `intIdCat` int(11) NOT NULL AUTO_INCREMENT,
  `vchCat` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intIdCat`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tblcats` */

LOCK TABLES `tblcats` WRITE;

insert  into `tblcats`(`intIdCat`,`vchCat`,`created_at`,`updated_at`) values 
(1,'Caballero',NULL,NULL),
(2,'Dama',NULL,NULL),
(3,'Infantil',NULL,NULL),
(4,'Unisex',NULL,NULL),
(5,NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tbldirecciones` */

DROP TABLE IF EXISTS `tbldirecciones`;

CREATE TABLE `tbldirecciones` (
  `idDirecciones` int(11) NOT NULL AUTO_INCREMENT,
  `vchTitulo` varchar(100) NOT NULL,
  `idUsuario` bigint(20) unsigned NOT NULL,
  `vchDireccion` varchar(150) NOT NULL,
  `vchCodigo` varchar(5) NOT NULL,
  `vchPoblacion` varchar(50) NOT NULL,
  `vchEstado` varchar(50) NOT NULL,
  `vchPais` varchar(50) NOT NULL,
  `vchTelefono` varchar(15) NOT NULL,
  PRIMARY KEY (`idDirecciones`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `tbldirecciones_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbldirecciones` */

LOCK TABLES `tbldirecciones` WRITE;

insert  into `tbldirecciones`(`idDirecciones`,`vchTitulo`,`idUsuario`,`vchDireccion`,`vchCodigo`,`vchPoblacion`,`vchEstado`,`vchPais`,`vchTelefono`) values 
(13,'Mi casa',92,'Col. Colalambre','43000','Huejutla','Hidalgo','Mexico','1234567890');

UNLOCK TABLES;

/*Table structure for table `tblfavoritos` */

DROP TABLE IF EXISTS `tblfavoritos`;

CREATE TABLE `tblfavoritos` (
  `idFavorito` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` bigint(20) unsigned NOT NULL,
  `idProducto` int(11) NOT NULL,
  PRIMARY KEY (`idFavorito`),
  KEY `idUser` (`idUser`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `tblfavoritos_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tblfavoritos_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `tblproductos` (`intIDProd`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tblfavoritos` */

LOCK TABLES `tblfavoritos` WRITE;

insert  into `tblfavoritos`(`idFavorito`,`idUser`,`idProducto`) values 
(3,8,43),
(8,92,76);

UNLOCK TABLES;

/*Table structure for table `tblproductos` */

DROP TABLE IF EXISTS `tblproductos`;

CREATE TABLE `tblproductos` (
  `intIDProd` int(11) NOT NULL AUTO_INCREMENT,
  `vchImg` varchar(200) DEFAULT NULL,
  `vchProd` varchar(100) DEFAULT NULL,
  `vchDesc` varchar(500) DEFAULT NULL,
  `vchTalla` varchar(20) DEFAULT NULL,
  `intCant` int(6) NOT NULL,
  `fltPrecio` float NOT NULL,
  `intIdCat` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intIDProd`),
  KEY `tblProductos_ibfk_1` (`intIdCat`),
  CONSTRAINT `tblProductos_ibfk_1` FOREIGN KEY (`intIdCat`) REFERENCES `tblcats` (`intIdCat`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tblproductos` */

LOCK TABLES `tblproductos` WRITE;

insert  into `tblproductos`(`intIDProd`,`vchImg`,`vchProd`,`vchDesc`,`vchTalla`,`intCant`,`fltPrecio`,`intIdCat`,`created_at`,`updated_at`) values 
(43,'storage/img/5bX0hMDAF6esxqprERvEjhBfyQMjFUaM8ufhdQxF.jpeg','aaaa','aaaa','aaaa',100,100,1,NULL,NULL),
(44,'storage/img/Rc38ojIEwKq8qisenCmnBp9OxObNfbaAcqmW9b79.png','bbbb','bbbb','bbb',100,100,1,NULL,NULL),
(46,'storage/img/osywvK9DfZ4OmQj8BIkAStcz5JTy8StCzndUllOF.jpeg','aaaaa','aaaaa','aaaaa',100,100,1,NULL,NULL),
(49,'storage/img/DMSqIZjXEptTZ8ZZ8IRSNCXJqWSTMKU3gpg3YhqK.jpeg','asdasd','asdasd','asdasd',10,10,1,NULL,NULL),
(52,'storage/img/VEAUu7aStkOcaKSeIU2De8cpVlt1UBiprXeq3QRv.jpeg','Traje tipico Yucateco','Ropa Conjunto con todo lo que se muestra en la imagen','Chica',12,500,1,NULL,NULL),
(53,'storage/img/T5nxI4HWvJUVbf0UaUI5FbNlz0bV6g8PgoJ6HIKC.jpeg','Vestido Verde','Ropa color verde Bordado rojo y amarillo ','Chica',36,300,3,NULL,NULL),
(55,'storage/img/AfzgGXWyrIIoJJE2ehShbX7CjPbu9hDYhLEWDt0J.jpeg','Blusa bordada','Excelente calidad mexicana','Mediana',10,230,2,NULL,NULL),
(56,'storage/img/C5YdQTieZmj4wcxMY8hIm52gSwtWAPPZYhNqrF6H.jpeg','Cubrebocas','Cómodo, hermosa y ajustable. Vida util de 3 meses.','Unitalla',45,35,2,NULL,NULL),
(57,'storage/img/AW6BaznxkAbKSEtZqmYTJLGpX0T8wbqn4qZOCpr1.jpeg','Conjunto tipico moderno','Elegante, actualizado conjunto. En colores combinados','Mediano',35,450,2,NULL,NULL),
(58,'storage/img/T4RNzf1WWXhmbiy62r1cVC6UoUjLzt31ZiXXj8Ab.jpeg','Vestido para niña','Estilo tipico oaxaqueño','Chico',16,200,3,NULL,NULL),
(59,'storage/img/wRyvB5Xnp2vy61z565UXwb7CBbyboBPEbuFs5XBn.jpeg','Traje tipico de charro','Conjunto de pantalon, saco, camisa, sombrero y pañuelo.','Mediana',78,1500,1,NULL,NULL),
(60,'storage/img/Xy0NqECOFO71JK0WgkQCrjVcmL2E4bSJ7vzQA2ON.jpeg','Vestido tipico chiapaneco','Elegante diseño regional','Grande',54,350,2,NULL,NULL),
(61,'storage/img/JlzBQAfcu9BLfPk1qKNMTjQjsLIUNDGqJCjpyQKM.webp','Blusa moderna ','Para toda la ocasión con una combinación de variados colores que la hacen unica','Mediana',42,300,2,NULL,NULL),
(62,'storage/img/kPxFzyof4FtTtd5RpExVn9tImezD7lUb5Sr3WULz.jpeg','Vestido para novia','Elegante vestido color blanco bordado para novia','Mediana',20,800,2,NULL,NULL),
(67,'storage/img/Wy6UbKdwZjfQwmWjBlKorsVTd09XbtBA1QTA3J4R.png','nuevoasdasd','nuevo@nuevo.com','asdasd',23,450,1,NULL,NULL),
(68,'storage/img/pHK8ykrIZ52gH8gJ8oXdbZFudLt9m2Y6Nmqq6Pr9.jpeg','Cubrebocas paquete de 15 tricapa','Paquete con 3 diseños diferentes,','Unitalla',30,180,4,NULL,NULL),
(69,'storage/img/GSNG7EfyHkLablckEPFXMDvJz4P1ti9sSfJlYc8h.jpeg','Cubrebocas tricapa artesanal con la virgen de guadalupe','Vida útil de 3 meses','Unitalla',17,36,4,NULL,NULL),
(70,'storage/img/LvbAHUDGh4cFWuRMr6SJWeYubQEGhIcbwTC6XYWb.jpeg','Cubrebocas artesanal bordado a mano','Elegante, vida útil  de 3 meses, ajustable','Unitalla',43,35,1,NULL,NULL),
(71,'storage/img/26WZvLKnS8O0bov2Fpugl23XZKvQr8qK638J9tRd.jpeg','Vestido casual color blanco','Vestido que combina la ropa tradicional con la moderna,  diseño holgado ideal para personas delgadas y llenitas','Mediana',12,450,2,NULL,NULL),
(72,'storage/img/NdEkWhLZklEvdPKpzLpQ8Bysw533byPMKq9bm65C.jpeg','Vestido tamaulipeco','Vestido tradicional','Mediana',32,450,2,NULL,NULL),
(73,'storage/img/7AQUBZE7avZC19XAq3urz3AxUVgjpyfbcWsuZ3kL.jpeg','Sueter con toque mexicano','Suéter con un toque tradicional de Campeche','Grande',23,460,2,NULL,NULL),
(74,'storage/img/bjnBohxJVF5c33hiQh17sIFKwTc2HrYlEReq6gD1.jpeg','Playera patriota con la bandera de mexico','Siéntete orgulloso de ser mexicano con la bandera mas hermosa del mundo','Mediana',33,220,1,NULL,NULL),
(75,'storage/img/RpzDufuKyOBvXkT615mMhbubmOYVdTtiisiKqpta.jpeg','Vestido tradicional de Veracruz','Bordad con colores que con contrasta el negro','Mediana',12,439,2,NULL,NULL),
(76,'storage/img/fsVPZHa7lXJe0nX6giDbepmzBL4wQp4AQ9QGhTLT.jpeg','Blusa bordada','Fresca ideal para la temporada de calor con colores llamativos que alegraran tu dia','Mediana ',12,430,2,NULL,NULL),
(77,'storage/img/1PKGacx4r5RVW0QXIy1Top1r81FUnrwbaMbznrCy.jpeg','Vestido tradicional de yucatan','Diseño inovador','Mediana',12,460,2,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tbltipous` */

DROP TABLE IF EXISTS `tbltipous`;

CREATE TABLE `tbltipous` (
  `intIdTipoU` int(11) NOT NULL AUTO_INCREMENT,
  `vchTipo` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intIdTipoU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbltipous` */

LOCK TABLES `tbltipous` WRITE;

UNLOCK TABLES;

/*Table structure for table `tblusuarios` */

DROP TABLE IF EXISTS `tblusuarios`;

CREATE TABLE `tblusuarios` (
  `intIdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `vchNombre` varchar(50) DEFAULT NULL,
  `vchApaterno` varchar(50) DEFAULT NULL,
  `vchAmaterno` varchar(50) DEFAULT NULL,
  `vchEmail` varchar(40) DEFAULT NULL,
  `intIdTipoU` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intIdUsuario`),
  KEY `intIdTipoU` (`intIdTipoU`),
  CONSTRAINT `tblUsuarios_ibfk_1` FOREIGN KEY (`intIdTipoU`) REFERENCES `tbltipous` (`intIdTipoU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tblusuarios` */

LOCK TABLES `tblusuarios` WRITE;

UNLOCK TABLES;

/*Table structure for table `tblventadets` */

DROP TABLE IF EXISTS `tblventadets`;

CREATE TABLE `tblventadets` (
  `intIdVentaDet` int(11) NOT NULL AUTO_INCREMENT,
  `intIdVenta` int(11) NOT NULL,
  `intIDProd` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`intIdVentaDet`),
  KEY `intIdVenta` (`intIdVenta`),
  KEY `intIDProd` (`intIDProd`),
  CONSTRAINT `tblVentaDets_ibfk_1` FOREIGN KEY (`intIdVenta`) REFERENCES `tblventas` (`intIdVenta`),
  CONSTRAINT `tblVentaDets_ibfk_2` FOREIGN KEY (`intIDProd`) REFERENCES `tblproductos` (`intIDProd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tblventadets` */

LOCK TABLES `tblventadets` WRITE;

UNLOCK TABLES;

/*Table structure for table `tblventas` */

DROP TABLE IF EXISTS `tblventas`;

CREATE TABLE `tblventas` (
  `intIdVenta` int(11) NOT NULL AUTO_INCREMENT,
  `Total_Venta` int(11) NOT NULL,
  PRIMARY KEY (`intIdVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tblventas` */

LOCK TABLES `tblventas` WRITE;

UNLOCK TABLES;

/*Table structure for table `team_invitations` */

DROP TABLE IF EXISTS `team_invitations`;

CREATE TABLE `team_invitations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`),
  CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `team_invitations` */

LOCK TABLES `team_invitations` WRITE;

UNLOCK TABLES;

/*Table structure for table `team_users` */

DROP TABLE IF EXISTS `team_users`;

CREATE TABLE `team_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `team_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`),
  KEY `teams_user_ibfk_1` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `team_users` */

LOCK TABLES `team_users` WRITE;

insert  into `team_users`(`id`,`team_id`,`user_id`,`role`,`created_at`,`updated_at`) values 
(2,2,1,'admin','2020-11-10 18:07:06','2020-11-10 18:07:06'),
(3,0,25,'client',NULL,NULL),
(5,1,6,'editor','2020-11-15 07:14:40','2020-11-15 07:14:40'),
(7,1,42,'editor',NULL,NULL),
(8,1,44,'admin',NULL,NULL),
(9,1,45,'admin',NULL,NULL),
(10,1,46,'editor',NULL,NULL),
(11,1,47,'admin',NULL,NULL),
(12,1,48,'admin',NULL,NULL),
(13,1,49,'admin',NULL,NULL),
(14,1,50,'admin',NULL,NULL),
(15,1,51,'admin',NULL,NULL),
(16,1,52,'admin',NULL,NULL),
(17,1,53,'admin',NULL,NULL),
(18,1,54,'admin',NULL,NULL),
(19,1,55,'admin',NULL,NULL),
(20,1,56,'admin',NULL,NULL),
(21,1,57,'admin',NULL,NULL),
(23,1,26,' ',NULL,NULL),
(24,1,75,'admin',NULL,NULL),
(25,1,76,'admin',NULL,NULL),
(26,1,80,'admin',NULL,NULL),
(27,1,59,' ',NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `teams` */

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teams_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `teams` */

LOCK TABLES `teams` WRITE;

insert  into `teams`(`id`,`user_id`,`name`,`personal_team`,`created_at`,`updated_at`) values 
(1,1,'Angel\'s Team',1,'2020-10-29 10:32:11','2020-10-29 10:32:11'),
(2,2,'Beto\'s Teams',1,'2020-11-02 06:36:03','2020-11-10 18:06:21'),
(3,2,'Nuevo equipo',0,'2020-11-10 18:07:33','2020-11-10 18:07:33'),
(4,23,'Angel\'s Team',1,'2020-11-11 17:37:44','2020-11-11 17:37:44'),
(5,25,'Beto\'s Team',1,'2020-11-15 06:02:07','2020-11-15 06:02:07');

UNLOCK TABLES;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) unsigned DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

LOCK TABLES `users` WRITE;

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`current_team_id`,`profile_photo_path`,`created_at`,`updated_at`,`cel`) values 
(1,'Angel Alberto De La Cruz Garcia','angel_barsa99@hotmail.com',NULL,'$2y$10$M4ZXIZ9w8Mj8eBrrfliJy.XSIDY6VcdIu7MYLrgmXHM.XJh0BsZum','','',NULL,1,'storage/profile-photos/k7g3UkE2AW3LEXXWs9POwtEBhG9TYfimPePtLwEE.jpeg','2020-11-11 17:37:44','2021-03-28 15:19:06','null'),
(3,'Alivia Beahan III','wkonopelski@example.org','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'C5TYgzYjXr',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(4,'Ari Gutmann','zmcglynn@example.net','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'VYk8eHbiuH',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(5,'Mrs. Felipa Lueilwitz Sr.','javier.herzog@example.net','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'i4PllQhC4y',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(6,'Prof. Buford Williamson MD','ucummings@example.net','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'cMtfq9K4hr',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(7,'Alize Bogisich','ansley12@example.org','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'BswV9Y6HHH',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(8,'Camila Beahan','floy.denesik@example.net','2020-11-02 20:21:20','$2y$10$HCovLEUXNjQYUvzzdmJWN.DgpkRLdRyOal3gDjmcZOVJO26lr0jWu',NULL,NULL,'fuh7HogV1nE5vDuukZsYPwasEwTmQUPeG3AxJQs5BOe9PzQY6K0tpfE4cT0k',NULL,NULL,'2020-11-02 20:21:20','2021-03-29 06:35:32','null'),
(9,'Gwen Hills','phuels@example.com','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'RzWVzlcLEi',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(10,'Dr. Jan Mills DDS','pfannerstill.keyshawn@example.net','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'73DLfehxjg',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(11,'Dr. Adolphus Strosin Sr.','vsporer@example.net','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'ahkylBe7dx',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(12,'Michael Friesen','brady.lehner@example.org','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'1Sm32w2KRG',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(13,'Mr. Terrance Stehr DVM','bartholome.dach@example.net','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'wMbg2iPBZm',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(14,'Jaqueline Smitham Sr.','lgusikowski@example.com','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'InNuz9DTDV',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(15,'Dashawn Waters','wwisozk@example.com','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'DhORE99Jty',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(16,'Abigale Lockman','maggie20@example.com','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'cR0obSBaC8',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(17,'Prof. Arturo McKenzie','haag.sibyl@example.com','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'9uKLPt90xx',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(18,'Mr. Terrance Feeney MD','evelyn26@example.com','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'yTwooYejvP',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(19,'Anna Keebler','schmeler.duncan@example.org','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'F3QX7hKVp7',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(20,'Earnestine Kemmer','hintz.foster@example.com','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'RkUs15rSVw',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(21,'Madalyn Bogisich','bria35@example.org','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'ZfPKvynlOv',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(22,'Estelle Prohaska','treutel.bernadine@example.com','2020-11-02 20:21:20','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'PfhSdA9WRd',NULL,NULL,'2020-11-02 20:21:20','2020-11-02 20:21:20','null'),
(25,'Beto','angel.1999barsa@gmail.com',NULL,'$2y$10$ZsaEq5/6Dek2bIs1l1oENuvq3plZTrcbK4HWdtmhXFaVoZgtw8.qi',NULL,NULL,'DwfCdZtMqCCSPB4nTESiI8Wet7g3Jbe4o4pup2mrxWUzoIgzmsXINFhLGHqf',5,'storage/profile-photos/vkESvyCN9bifJIJU8mAEiQpM9F63yvGgnTUgskGN.jpeg','2020-11-15 06:02:07','2021-03-29 10:26:01','null'),
(26,'admhuapry','contacto@huasteca.com',NULL,'$2y$10$6RL.J9AqpaklJfMyX6LRbe/B0ck4wQ/PqbKB6nBJk00Fz34o3.yz2',NULL,NULL,NULL,NULL,NULL,NULL,'2021-02-28 09:58:19','null'),
(59,'Angel','aadlcg1999@gmail.com',NULL,'$2y$10$FDVvatY0zFHAmR1R8IcvPe5QNqig0uoibfgw7PRDRk0Vy6oWt10k2',NULL,NULL,NULL,NULL,NULL,'2021-02-28 13:19:28','2021-07-29 00:36:28','7711282793'),
(74,'Perla Vanesita','perla@gmail.com',NULL,'$2y$10$Mh5zyXk7ouBhUsYIHkodBemOX.U8yGbqKE1EMddSAk1T7Ak29CwmK',NULL,NULL,NULL,NULL,NULL,'2021-03-28 15:43:49','2021-03-28 15:49:41','7716838276'),
(75,'Pancrasio Hdez','Pancrasio@gmail.com',NULL,'$2y$10$J9IKwUYnq3OWk7WRKxDkmeXHFxxFeBCslQUPoNcvlxe1HLohAgcTm',NULL,NULL,NULL,NULL,'storage/profile-photos/dzyxFylyAoHLgYkCN4Q1REfhM1718njWISn5cS1q.jpeg','2021-03-29 03:13:30','2021-03-29 03:13:30','null'),
(76,'Ricardo Perez','rica@gmail.com',NULL,'$2y$10$49Hc74xgkAwA/AGB5o3uzOgGwH8k8eboiER/hker1iarQMmLsBy4G',NULL,NULL,'bH0PJAdWdIYOExY97L2J1kysQayc2R7yoYqI7oo6vDlGfOst1VHjYqpPIp1f',NULL,'storage/profile-photos/F4H40JroxsJEsn4SAkZ1gwIMJdhncBWs6vAhhPwl.png','2021-03-29 03:20:40','2021-03-30 01:32:07','null'),
(80,'aaaaasdasdasdasd','asdasd@asda.com',NULL,'$2y$10$OWbWRoLYza0GONGIoo1V.esD8LqEgnu2WM9TmWCxyCZbic2umLayG',NULL,NULL,NULL,NULL,'storage/profile-photos/xHvDrEDBlQBoI3GSjSDCTMxhp9HcbmzRfBbEr5jE.jpeg','2021-05-17 11:11:33','2021-05-17 11:11:33','null'),
(81,'angel alberto','angel.barsa1999@gmail.com1',NULL,'$2y$10$nNx4ZBqYrsAUl6tuvKpWr.RbR2kjXQhLjbUz2mutDi5k3y98rg1s.',NULL,NULL,NULL,NULL,NULL,'2021-05-17 11:26:32','2021-05-17 11:26:32','null'),
(82,'Beto Garciar','test@test.com',NULL,'$2y$04$Eag7QJmoY81pakc3AXWUHOQKkEPPL.WZbSdfS7AvzaHTefgfOHuiK',NULL,NULL,NULL,NULL,NULL,'2021-07-30 03:13:41','2021-07-30 03:13:41','null'),
(83,'Maxie Bradtke DVM','zwehner@example.com','2021-07-30 03:25:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'UugqTLjOKf',NULL,NULL,'2021-07-30 03:25:43','2021-07-30 03:25:43','null'),
(84,'Dr. Arturo Pfeffer PhD','fgoldner@example.com','2021-07-30 03:25:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'l4Hxrz7y53',NULL,NULL,'2021-07-30 03:25:43','2021-07-30 03:25:43','null'),
(85,'Wilburn Batz','veda29@example.net','2021-07-30 03:25:43','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'KD67zVj6vd',NULL,NULL,'2021-07-30 03:25:43','2021-07-30 03:25:43','null'),
(86,'Mr. Nathan Quigley Jr.','althea92@example.org','2021-07-30 03:26:15','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'pyOZv21P8J',NULL,NULL,'2021-07-30 03:26:15','2021-07-30 03:26:15','null'),
(87,'Delphine Pfannerstill I','hackett.elsa@example.org','2021-07-30 03:26:15','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'fTEOWYYQXQ',NULL,NULL,'2021-07-30 03:26:15','2021-07-30 03:26:15','null'),
(88,'Dr. Jeremy Labadie','fredrick.fritsch@example.com','2021-07-30 03:26:15','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',NULL,NULL,'eHtecR86cK',NULL,NULL,'2021-07-30 03:26:15','2021-07-30 03:26:15','null'),
(92,'Gabriel Bautista Lara','gabriel@gmail.com',NULL,'$2y$10$xyyGZpYB1p.3dhoWVqQFQeCMeqqdNk/IroIWu7mnzSIR6MuFXveie',NULL,NULL,'eHtecR86cK',NULL,NULL,NULL,NULL,'null'),
(93,'Lupita Bonita  Lupira Djiddpd','Lupita@gmail.com',NULL,'$2y$10$Kk0qRj5OO/h9tqPdnRnOu.TJ4.07lz4HuIGBf75ubBCkbFF4y3Yni',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'null');

UNLOCK TABLES;

/*Table structure for table `view_carrito` */

DROP TABLE IF EXISTS `view_carrito`;

/*!50001 DROP VIEW IF EXISTS `view_carrito` */;
/*!50001 DROP TABLE IF EXISTS `view_carrito` */;

/*!50001 CREATE TABLE  `view_carrito`(
 `idCarrito` int(11) ,
 `idUsuario` bigint(20) unsigned ,
 `name` varchar(255) ,
 `idProducto` int(11) ,
 `vchProd` varchar(100) ,
 `vchDesc` varchar(500) ,
 `vchImg` varchar(200) ,
 `fltPrecio` float ,
 `intCant` int(11) ,
 `fltTotal` float 
)*/;

/*Table structure for table `view_direcciones` */

DROP TABLE IF EXISTS `view_direcciones`;

/*!50001 DROP VIEW IF EXISTS `view_direcciones` */;
/*!50001 DROP TABLE IF EXISTS `view_direcciones` */;

/*!50001 CREATE TABLE  `view_direcciones`(
 `idDirecciones` int(11) ,
 `vchTitulo` varchar(100) ,
 `idUsuario` bigint(20) unsigned ,
 `vchDireccion` varchar(150) ,
 `vchCodigo` varchar(5) ,
 `vchPoblacion` varchar(50) ,
 `vchEstado` varchar(50) ,
 `vchPais` varchar(50) ,
 `vchTelefono` varchar(15) ,
 `id` bigint(20) unsigned ,
 `name` varchar(255) ,
 `email` varchar(70) ,
 `email_verified_at` timestamp ,
 `password` varchar(255) ,
 `two_factor_secret` text ,
 `two_factor_recovery_codes` text ,
 `remember_token` varchar(100) ,
 `current_team_id` bigint(20) unsigned ,
 `profile_photo_path` text ,
 `created_at` timestamp ,
 `updated_at` timestamp ,
 `cel` varchar(10) 
)*/;

/*Table structure for table `view_favoritos` */

DROP TABLE IF EXISTS `view_favoritos`;

/*!50001 DROP VIEW IF EXISTS `view_favoritos` */;
/*!50001 DROP TABLE IF EXISTS `view_favoritos` */;

/*!50001 CREATE TABLE  `view_favoritos`(
 `idFavorito` int(11) ,
 `idProducto` int(11) ,
 `idUser` bigint(20) unsigned ,
 `vchProd` varchar(100) ,
 `vchImg` varchar(200) ,
 `intCant` int(6) ,
 `fltPrecio` float 
)*/;

/*View structure for view view_carrito */

/*!50001 DROP TABLE IF EXISTS `view_carrito` */;
/*!50001 DROP VIEW IF EXISTS `view_carrito` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_carrito` AS (select `tblcarrito`.`idCarrito` AS `idCarrito`,`users`.`id` AS `idUsuario`,`users`.`name` AS `name`,`tblproductos`.`intIDProd` AS `idProducto`,`tblproductos`.`vchProd` AS `vchProd`,`tblproductos`.`vchDesc` AS `vchDesc`,`tblproductos`.`vchImg` AS `vchImg`,`tblproductos`.`fltPrecio` AS `fltPrecio`,`tblcarrito`.`intCantidad` AS `intCant`,`tblcarrito`.`fltTotal` AS `fltTotal` from ((`tblcarrito` join `users`) join `tblproductos`) where `tblcarrito`.`idProducto` = `tblproductos`.`intIDProd` and `tblcarrito`.`idUsuario` = `users`.`id`) */;

/*View structure for view view_direcciones */

/*!50001 DROP TABLE IF EXISTS `view_direcciones` */;
/*!50001 DROP VIEW IF EXISTS `view_direcciones` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_direcciones` AS (select `tbldirecciones`.`idDirecciones` AS `idDirecciones`,`tbldirecciones`.`vchTitulo` AS `vchTitulo`,`tbldirecciones`.`idUsuario` AS `idUsuario`,`tbldirecciones`.`vchDireccion` AS `vchDireccion`,`tbldirecciones`.`vchCodigo` AS `vchCodigo`,`tbldirecciones`.`vchPoblacion` AS `vchPoblacion`,`tbldirecciones`.`vchEstado` AS `vchEstado`,`tbldirecciones`.`vchPais` AS `vchPais`,`tbldirecciones`.`vchTelefono` AS `vchTelefono`,`users`.`id` AS `id`,`users`.`name` AS `name`,`users`.`email` AS `email`,`users`.`email_verified_at` AS `email_verified_at`,`users`.`password` AS `password`,`users`.`two_factor_secret` AS `two_factor_secret`,`users`.`two_factor_recovery_codes` AS `two_factor_recovery_codes`,`users`.`remember_token` AS `remember_token`,`users`.`current_team_id` AS `current_team_id`,`users`.`profile_photo_path` AS `profile_photo_path`,`users`.`created_at` AS `created_at`,`users`.`updated_at` AS `updated_at`,`users`.`cel` AS `cel` from (`tbldirecciones` join `users`) where `tbldirecciones`.`idUsuario` = `users`.`id`) */;

/*View structure for view view_favoritos */

/*!50001 DROP TABLE IF EXISTS `view_favoritos` */;
/*!50001 DROP VIEW IF EXISTS `view_favoritos` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_favoritos` AS (select `tblfavoritos`.`idFavorito` AS `idFavorito`,`tblfavoritos`.`idProducto` AS `idProducto`,`tblfavoritos`.`idUser` AS `idUser`,`tblproductos`.`vchProd` AS `vchProd`,`tblproductos`.`vchImg` AS `vchImg`,`tblproductos`.`intCant` AS `intCant`,`tblproductos`.`fltPrecio` AS `fltPrecio` from ((`tblproductos` join `users`) join `tblfavoritos`) where `tblfavoritos`.`idUser` = `users`.`id` and `tblfavoritos`.`idProducto` = `tblproductos`.`intIDProd`) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
