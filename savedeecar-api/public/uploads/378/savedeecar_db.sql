/*
 Navicat Premium Data Transfer

 Source Server         : localhost_mamp
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:8889
 Source Schema         : savedeecar_db

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 24/05/2023 20:58:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for abusive_reports
-- ----------------------------
DROP TABLE IF EXISTS `abusive_reports`;
CREATE TABLE `abusive_reports` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `abusive_reports_user_id_foreign` (`user_id`),
  KEY `abusive_reports_model_type_model_id_index` (`model_type`,`model_id`),
  CONSTRAINT `abusive_reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of abusive_reports
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `address` json NOT NULL,
  `location` json DEFAULT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_customer_id_foreign` (`customer_id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of address
-- ----------------------------
BEGIN;
INSERT INTO `address` (`id`, `title`, `type`, `default`, `address`, `location`, `customer_id`, `created_at`, `updated_at`) VALUES (1, 'Billing', 'billing', 0, '{\"zip\": \"99614\", \"city\": \"Kipnuk\", \"state\": \"AK\", \"country\": \"United States\", \"street_address\": \"2231 Kidd Avenue\"}', NULL, 2, '2021-08-18 13:18:03', '2021-08-18 13:18:03');
INSERT INTO `address` (`id`, `title`, `type`, `default`, `address`, `location`, `customer_id`, `created_at`, `updated_at`) VALUES (2, 'Shipping', 'shipping', 0, '{\"zip\": \"40391\", \"city\": \"Winchester\", \"state\": \"KY\", \"country\": \"United States\", \"street_address\": \"2148  Straford Park\"}', NULL, 2, '2021-08-18 13:18:12', '2021-08-18 13:18:12');
INSERT INTO `address` (`id`, `title`, `type`, `default`, `address`, `location`, `customer_id`, `created_at`, `updated_at`) VALUES (3, 'Billing', 'billing', 0, '{\"zip\": \"10001\", \"city\": \"New York\", \"state\": \"New York\", \"country\": \"US\", \"street_address\": \"260 Terry Lane\"}', NULL, 3, '2021-11-25 06:23:04', '2021-11-25 06:23:04');
INSERT INTO `address` (`id`, `title`, `type`, `default`, `address`, `location`, `customer_id`, `created_at`, `updated_at`) VALUES (4, 'Shipping', 'shipping', 0, '{\"zip\": \"10022\", \"city\": \"New York\", \"state\": \"New York\", \"country\": \"US\", \"street_address\": \"1780 Angus Road\"}', NULL, 3, '2021-11-25 06:23:28', '2021-11-25 06:23:28');
COMMIT;

-- ----------------------------
-- Table structure for attachments
-- ----------------------------
DROP TABLE IF EXISTS `attachments`;
CREATE TABLE `attachments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attachments
-- ----------------------------
BEGIN;
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (1, '', '2021-10-09 13:30:23', '2021-10-09 13:30:23');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (2, '', '2021-10-09 13:30:34', '2021-10-09 13:30:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (3, '', '2021-10-09 13:39:00', '2021-10-09 13:39:00');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (4, '', '2021-10-09 13:42:22', '2021-10-09 13:42:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (5, '', '2021-10-09 13:47:15', '2021-10-09 13:47:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (6, '', '2021-10-09 13:47:43', '2021-10-09 13:47:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (7, '', '2021-10-09 13:53:45', '2021-10-09 13:53:45');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (8, '', '2021-10-09 16:20:22', '2021-10-09 16:20:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (9, '', '2021-10-09 16:20:25', '2021-10-09 16:20:25');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (10, '', '2021-10-09 16:21:30', '2021-10-09 16:21:30');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (11, '', '2021-10-09 16:21:40', '2021-10-09 16:21:40');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (12, '', '2021-10-09 16:22:16', '2021-10-09 16:22:16');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (13, '', '2021-10-09 17:01:35', '2021-10-09 17:01:35');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (14, '', '2021-10-09 17:02:11', '2021-10-09 17:02:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (15, '', '2021-10-09 17:05:23', '2021-10-09 17:05:23');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (16, '', '2021-10-09 17:06:57', '2021-10-09 17:06:57');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (17, '', '2021-10-09 17:17:42', '2021-10-09 17:17:42');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (18, '', '2021-10-09 17:18:48', '2021-10-09 17:18:48');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (19, '', '2021-10-09 17:20:47', '2021-10-09 17:20:47');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (20, '', '2021-10-09 17:21:10', '2021-10-09 17:21:10');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (21, '', '2021-10-09 17:21:30', '2021-10-09 17:21:30');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (22, '', '2021-10-09 17:21:55', '2021-10-09 17:21:55');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (23, '', '2021-10-09 17:22:15', '2021-10-09 17:22:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (24, '', '2021-10-09 17:23:13', '2021-10-09 17:23:13');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (25, '', '2021-10-09 17:23:58', '2021-10-09 17:23:58');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (26, '', '2021-10-09 17:37:38', '2021-10-09 17:37:38');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (27, '', '2021-10-09 17:38:22', '2021-10-09 17:38:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (28, '', '2021-10-09 17:38:34', '2021-10-09 17:38:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (29, '', '2021-10-09 17:38:47', '2021-10-09 17:38:47');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (30, '', '2021-10-09 17:40:03', '2021-10-09 17:40:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (31, '', '2021-10-09 17:40:14', '2021-10-09 17:40:14');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (32, '', '2021-10-09 17:40:27', '2021-10-09 17:40:27');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (33, '', '2021-10-09 17:40:40', '2021-10-09 17:40:40');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (34, '', '2021-10-09 17:52:47', '2021-10-09 17:52:47');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (35, '', '2021-10-09 17:53:33', '2021-10-09 17:53:33');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (36, '', '2021-10-09 17:53:48', '2021-10-09 17:53:48');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (37, '', '2021-10-09 17:54:17', '2021-10-09 17:54:17');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (38, '', '2021-10-09 17:55:41', '2021-10-09 17:55:41');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (39, '', '2021-10-10 13:21:22', '2021-10-10 13:21:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (40, '', '2021-10-10 13:21:22', '2021-10-10 13:21:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (41, '', '2021-10-10 13:30:48', '2021-10-10 13:30:48');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (42, '', '2021-10-10 13:31:51', '2021-10-10 13:31:51');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (43, '', '2021-10-10 13:50:07', '2021-10-10 13:50:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (44, '', '2021-10-10 13:50:11', '2021-10-10 13:50:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (45, '', '2021-10-10 13:50:49', '2021-10-10 13:50:49');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (46, '', '2021-10-10 13:50:55', '2021-10-10 13:50:55');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (47, '', '2021-10-10 13:51:22', '2021-10-10 13:51:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (48, '', '2021-10-10 13:51:29', '2021-10-10 13:51:29');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (49, '', '2021-10-10 13:55:12', '2021-10-10 13:55:12');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (50, '', '2021-10-10 13:55:43', '2021-10-10 13:55:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (51, '', '2021-10-10 13:55:56', '2021-10-10 13:55:56');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (52, '', '2021-10-10 13:56:02', '2021-10-10 13:56:02');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (53, '', '2021-10-10 13:56:19', '2021-10-10 13:56:19');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (54, '', '2021-10-10 13:56:51', '2021-10-10 13:56:51');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (55, '', '2021-10-10 13:57:50', '2021-10-10 13:57:50');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (56, '', '2021-10-10 13:57:55', '2021-10-10 13:57:55');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (57, '', '2021-10-10 13:58:24', '2021-10-10 13:58:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (58, '', '2021-10-10 13:58:29', '2021-10-10 13:58:29');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (59, '', '2021-10-10 13:58:54', '2021-10-10 13:58:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (60, '', '2021-10-10 13:59:02', '2021-10-10 13:59:02');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (61, '', '2021-10-10 13:59:24', '2021-10-10 13:59:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (62, '', '2021-10-10 13:59:29', '2021-10-10 13:59:29');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (63, '', '2021-10-10 14:00:05', '2021-10-10 14:00:05');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (64, '', '2021-10-10 14:00:17', '2021-10-10 14:00:17');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (65, '', '2021-10-10 14:01:05', '2021-10-10 14:01:05');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (66, '', '2021-10-10 14:01:07', '2021-10-10 14:01:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (67, '', '2021-10-10 14:01:32', '2021-10-10 14:01:32');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (68, '', '2021-10-10 14:01:50', '2021-10-10 14:01:50');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (69, '', '2021-10-10 14:01:55', '2021-10-10 14:01:55');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (70, '', '2021-10-10 14:02:19', '2021-10-10 14:02:19');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (71, '', '2021-10-10 14:02:52', '2021-10-10 14:02:52');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (72, '', '2021-10-10 14:03:29', '2021-10-10 14:03:29');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (73, '', '2021-10-10 14:03:36', '2021-10-10 14:03:36');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (74, '', '2021-10-10 14:03:56', '2021-10-10 14:03:56');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (75, '', '2021-10-10 14:04:00', '2021-10-10 14:04:00');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (76, '', '2021-10-10 14:04:23', '2021-10-10 14:04:23');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (77, '', '2021-10-10 14:04:27', '2021-10-10 14:04:27');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (78, '', '2021-10-10 15:19:50', '2021-10-10 15:19:50');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (79, '', '2021-10-10 18:43:39', '2021-10-10 18:43:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (80, '', '2021-10-10 18:44:46', '2021-10-10 18:44:46');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (81, '', '2021-10-10 18:44:54', '2021-10-10 18:44:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (82, '', '2021-10-10 18:44:54', '2021-10-10 18:44:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (83, '', '2021-10-10 18:45:30', '2021-10-10 18:45:30');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (84, '', '2021-10-10 18:45:31', '2021-10-10 18:45:31');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (85, '', '2021-10-10 18:49:03', '2021-10-10 18:49:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (86, '', '2021-10-10 18:49:03', '2021-10-10 18:49:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (87, '', '2021-10-10 18:49:24', '2021-10-10 18:49:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (88, '', '2021-10-10 18:49:24', '2021-10-10 18:49:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (89, '', '2021-10-10 18:50:35', '2021-10-10 18:50:35');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (90, '', '2021-10-10 18:50:35', '2021-10-10 18:50:35');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (91, '', '2021-10-10 18:50:35', '2021-10-10 18:50:35');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (92, '', '2021-10-10 18:50:36', '2021-10-10 18:50:36');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (93, '', '2021-10-10 18:50:40', '2021-10-10 18:50:40');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (94, '', '2021-10-10 18:50:40', '2021-10-10 18:50:40');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (95, '', '2021-10-10 18:50:55', '2021-10-10 18:50:55');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (96, '', '2021-10-10 18:50:55', '2021-10-10 18:50:55');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (97, '', '2021-10-10 18:52:01', '2021-10-10 18:52:01');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (98, '', '2021-10-10 18:52:19', '2021-10-10 18:52:19');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (99, '', '2021-10-10 18:52:19', '2021-10-10 18:52:19');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (100, '', '2021-10-10 18:52:19', '2021-10-10 18:52:19');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (101, '', '2021-10-10 18:52:19', '2021-10-10 18:52:19');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (102, '', '2021-10-10 18:52:23', '2021-10-10 18:52:23');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (103, '', '2021-10-10 18:52:24', '2021-10-10 18:52:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (104, '', '2021-10-10 18:52:24', '2021-10-10 18:52:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (105, '', '2021-10-10 18:52:24', '2021-10-10 18:52:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (106, '', '2021-10-10 18:53:31', '2021-10-10 18:53:31');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (107, '', '2021-10-10 18:58:44', '2021-10-10 18:58:44');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (108, '', '2021-10-10 18:59:50', '2021-10-10 18:59:50');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (109, '', '2021-10-10 18:59:54', '2021-10-10 18:59:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (110, '', '2021-10-10 19:29:51', '2021-10-10 19:29:51');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (111, '', '2021-10-10 19:30:04', '2021-10-10 19:30:04');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (112, '', '2021-10-10 19:30:04', '2021-10-10 19:30:04');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (113, '', '2021-10-10 19:30:05', '2021-10-10 19:30:05');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (114, '', '2021-10-10 19:30:05', '2021-10-10 19:30:05');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (115, '', '2021-10-10 19:32:20', '2021-10-10 19:32:20');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (116, '', '2021-10-10 19:32:27', '2021-10-10 19:32:27');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (117, '', '2021-10-10 19:32:28', '2021-10-10 19:32:28');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (118, '', '2021-10-10 19:32:28', '2021-10-10 19:32:28');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (119, '', '2021-10-10 19:32:28', '2021-10-10 19:32:28');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (120, '', '2021-10-10 19:36:45', '2021-10-10 19:36:45');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (121, '', '2021-10-10 19:37:15', '2021-10-10 19:37:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (122, '', '2021-10-10 19:37:15', '2021-10-10 19:37:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (123, '', '2021-10-10 19:37:15', '2021-10-10 19:37:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (124, '', '2021-10-10 19:37:15', '2021-10-10 19:37:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (125, '', '2021-10-10 19:42:43', '2021-10-10 19:42:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (126, '', '2021-10-10 19:43:08', '2021-10-10 19:43:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (127, '', '2021-10-10 19:43:08', '2021-10-10 19:43:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (128, '', '2021-10-10 19:43:09', '2021-10-10 19:43:09');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (129, '', '2021-10-10 19:43:09', '2021-10-10 19:43:09');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (130, '', '2021-10-10 19:46:05', '2021-10-10 19:46:05');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (131, '', '2021-10-10 19:46:15', '2021-10-10 19:46:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (132, '', '2021-10-10 19:46:15', '2021-10-10 19:46:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (133, '', '2021-10-10 19:48:37', '2021-10-10 19:48:37');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (134, '', '2021-10-10 19:48:42', '2021-10-10 19:48:42');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (135, '', '2021-10-10 19:50:52', '2021-10-10 19:50:52');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (136, '', '2021-10-10 19:50:57', '2021-10-10 19:50:57');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (137, '', '2021-10-10 21:48:59', '2021-10-10 21:48:59');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (138, '', '2021-10-10 21:49:10', '2021-10-10 21:49:10');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (139, '', '2021-10-10 21:49:11', '2021-10-10 21:49:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (140, '', '2021-10-10 21:49:11', '2021-10-10 21:49:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (141, '', '2021-10-10 21:49:11', '2021-10-10 21:49:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (142, '', '2021-10-11 13:13:35', '2021-10-11 13:13:35');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (143, '', '2021-10-11 13:13:41', '2021-10-11 13:13:41');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (144, '', '2021-10-11 13:13:42', '2021-10-11 13:13:42');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (145, '', '2021-10-11 13:14:38', '2021-10-11 13:14:38');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (146, '', '2021-10-11 13:14:44', '2021-10-11 13:14:44');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (147, '', '2021-10-11 13:14:45', '2021-10-11 13:14:45');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (148, '', '2021-10-11 13:19:40', '2021-10-11 13:19:40');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (149, '', '2021-10-11 13:19:55', '2021-10-11 13:19:55');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (150, '', '2021-10-11 13:19:56', '2021-10-11 13:19:56');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (151, '', '2021-10-11 13:19:56', '2021-10-11 13:19:56');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (152, '', '2021-10-11 13:19:56', '2021-10-11 13:19:56');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (153, '', '2021-10-11 13:54:44', '2021-10-11 13:54:44');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (154, '', '2021-10-11 13:55:02', '2021-10-11 13:55:02');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (155, '', '2021-10-11 13:55:03', '2021-10-11 13:55:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (156, '', '2021-10-11 13:55:03', '2021-10-11 13:55:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (157, '', '2021-10-11 13:55:04', '2021-10-11 13:55:04');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (158, '', '2021-10-11 14:29:34', '2021-10-11 14:29:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (159, '', '2021-10-11 14:29:43', '2021-10-11 14:29:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (160, '', '2021-10-11 14:29:43', '2021-10-11 14:29:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (161, '', '2021-10-11 14:29:43', '2021-10-11 14:29:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (162, '', '2021-10-11 14:29:43', '2021-10-11 14:29:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (163, '', '2021-10-11 14:32:08', '2021-10-11 14:32:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (164, '', '2021-10-11 14:33:03', '2021-10-11 14:33:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (165, '', '2021-10-11 14:36:34', '2021-10-11 14:36:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (166, '', '2021-10-11 14:36:39', '2021-10-11 14:36:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (167, '', '2021-10-11 14:38:13', '2021-10-11 14:38:13');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (168, '', '2021-10-11 14:38:21', '2021-10-11 14:38:21');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (169, '', '2021-10-11 14:38:21', '2021-10-11 14:38:21');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (170, '', '2021-10-11 14:38:21', '2021-10-11 14:38:21');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (171, '', '2021-10-11 14:40:03', '2021-10-11 14:40:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (172, '', '2021-10-11 14:40:14', '2021-10-11 14:40:14');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (173, '', '2021-10-11 14:41:33', '2021-10-11 14:41:33');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (174, '', '2021-10-11 14:42:02', '2021-10-11 14:42:02');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (175, '', '2021-10-11 14:42:03', '2021-10-11 14:42:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (176, '', '2021-10-11 14:42:04', '2021-10-11 14:42:04');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (177, '', '2021-10-11 14:42:51', '2021-10-11 14:42:51');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (178, '', '2021-10-11 14:42:54', '2021-10-11 14:42:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (179, '', '2021-10-23 13:01:43', '2021-10-23 13:01:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (180, '', '2021-10-23 13:09:07', '2021-10-23 13:09:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (181, '', '2021-10-23 13:45:54', '2021-10-23 13:45:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (182, '', '2021-10-23 13:48:31', '2021-10-23 13:48:31');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (183, '', '2021-10-23 13:48:49', '2021-10-23 13:48:49');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (184, '', '2021-10-23 16:17:44', '2021-10-23 16:17:44');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (185, '', '2021-10-23 16:17:53', '2021-10-23 16:17:53');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (186, '', '2021-10-23 19:54:10', '2021-10-23 19:54:10');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (187, '', '2021-10-23 19:54:14', '2021-10-23 19:54:14');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (188, '', '2021-10-23 20:12:44', '2021-10-23 20:12:44');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (189, '', '2021-10-23 20:16:20', '2021-10-23 20:16:20');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (190, '', '2021-10-23 20:16:24', '2021-10-23 20:16:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (191, '', '2021-10-23 20:20:26', '2021-10-23 20:20:26');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (192, '', '2021-10-23 20:30:08', '2021-10-23 20:30:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (193, '', '2021-10-23 20:30:11', '2021-10-23 20:30:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (194, '', '2021-10-23 21:09:12', '2021-10-23 21:09:12');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (195, '', '2021-10-23 21:09:16', '2021-10-23 21:09:16');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (196, '', '2021-10-23 21:11:48', '2021-10-23 21:11:48');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (197, '', '2021-10-23 21:11:52', '2021-10-23 21:11:52');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (198, '', '2021-10-23 21:16:05', '2021-10-23 21:16:05');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (199, '', '2021-10-23 21:16:12', '2021-10-23 21:16:12');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (200, '', '2021-10-23 21:18:21', '2021-10-23 21:18:21');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (201, '', '2021-10-23 21:18:25', '2021-10-23 21:18:25');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (202, '', '2021-10-23 21:20:07', '2021-10-23 21:20:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (203, '', '2021-10-23 21:20:11', '2021-10-23 21:20:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (204, '', '2021-10-23 21:22:08', '2021-10-23 21:22:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (205, '', '2021-10-23 21:23:58', '2021-10-23 21:23:58');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (206, '', '2021-10-23 21:24:02', '2021-10-23 21:24:02');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (207, '', '2021-10-23 21:27:10', '2021-10-23 21:27:10');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (208, '', '2021-10-23 21:27:14', '2021-10-23 21:27:14');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (209, '', '2021-10-23 21:32:22', '2021-10-23 21:32:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (210, '', '2021-10-23 21:35:05', '2021-10-23 21:35:05');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (211, '', '2021-10-23 21:35:11', '2021-10-23 21:35:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (212, '', '2021-10-23 21:38:52', '2021-10-23 21:38:52');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (213, '', '2021-10-23 21:41:38', '2021-10-23 21:41:38');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (214, '', '2021-10-23 21:41:42', '2021-10-23 21:41:42');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (215, '', '2021-10-23 21:45:53', '2021-10-23 21:45:53');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (216, '', '2021-10-23 21:45:58', '2021-10-23 21:45:58');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (217, '', '2021-10-23 21:50:34', '2021-10-23 21:50:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (218, '', '2021-10-23 21:50:38', '2021-10-23 21:50:38');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (219, '', '2021-10-23 21:54:47', '2021-10-23 21:54:47');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (220, '', '2021-10-23 21:54:51', '2021-10-23 21:54:51');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (221, '', '2021-10-23 21:57:11', '2021-10-23 21:57:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (222, '', '2021-10-23 21:57:14', '2021-10-23 21:57:14');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (223, '', '2021-10-23 22:00:46', '2021-10-23 22:00:46');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (224, '', '2021-10-23 22:01:09', '2021-10-23 22:01:09');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (225, '', '2021-10-23 22:04:37', '2021-10-23 22:04:37');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (226, '', '2021-10-23 22:08:09', '2021-10-23 22:08:09');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (227, '', '2021-10-23 22:08:14', '2021-10-23 22:08:14');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (228, '', '2021-10-23 22:10:37', '2021-10-23 22:10:37');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (229, '', '2021-10-23 22:10:41', '2021-10-23 22:10:41');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (230, '', '2021-10-23 22:13:34', '2021-10-23 22:13:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (231, '', '2021-10-23 22:13:38', '2021-10-23 22:13:38');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (232, '', '2021-10-23 22:16:37', '2021-10-23 22:16:37');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (233, '', '2021-10-23 22:16:41', '2021-10-23 22:16:41');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (234, '', '2021-10-23 22:19:04', '2021-10-23 22:19:04');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (235, '', '2021-10-23 22:19:08', '2021-10-23 22:19:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (236, '', '2021-10-23 22:21:07', '2021-10-23 22:21:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (237, '', '2021-10-23 22:21:10', '2021-10-23 22:21:10');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (238, '', '2021-10-25 07:17:45', '2021-10-25 07:17:45');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (239, '', '2021-10-25 07:19:30', '2021-10-25 07:19:30');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (240, '', '2021-10-25 07:19:44', '2021-10-25 07:19:44');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (241, '', '2021-10-25 07:20:12', '2021-10-25 07:20:12');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (242, '', '2021-10-25 07:20:21', '2021-10-25 07:20:21');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (243, '', '2021-10-25 07:20:46', '2021-10-25 07:20:46');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (244, '', '2021-10-25 07:20:54', '2021-10-25 07:20:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (245, '', '2021-10-25 07:21:03', '2021-10-25 07:21:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (246, '', '2021-10-25 07:35:16', '2021-10-25 07:35:16');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (247, '', '2021-10-25 07:37:12', '2021-10-25 07:37:12');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (248, '', '2021-10-25 07:39:11', '2021-10-25 07:39:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (249, '', '2021-10-25 07:39:48', '2021-10-25 07:39:48');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (250, '', '2021-10-25 12:35:01', '2021-10-25 12:35:01');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (251, '', '2021-10-25 12:36:20', '2021-10-25 12:36:20');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (252, '', '2021-10-25 12:37:22', '2021-10-25 12:37:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (253, '', '2021-10-25 12:37:43', '2021-10-25 12:37:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (254, '', '2021-10-25 12:39:01', '2021-10-25 12:39:01');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (255, '', '2021-10-25 12:39:38', '2021-10-25 12:39:38');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (256, '', '2021-10-27 09:13:12', '2021-10-27 09:13:12');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (257, '', '2021-10-27 09:13:26', '2021-10-27 09:13:26');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (258, '', '2021-10-27 09:13:39', '2021-10-27 09:13:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (259, '', '2021-10-27 09:50:39', '2021-10-27 09:50:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (260, '', '2021-10-27 09:51:22', '2021-10-27 09:51:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (261, '', '2021-10-27 09:51:59', '2021-10-27 09:51:59');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (262, '', '2021-10-27 09:52:25', '2021-10-27 09:52:25');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (263, '', '2021-10-27 09:52:45', '2021-10-27 09:52:45');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (264, '', '2021-10-27 09:53:00', '2021-10-27 09:53:00');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (265, '', '2021-10-27 09:53:21', '2021-10-27 09:53:21');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (266, '', '2021-10-27 09:53:39', '2021-10-27 09:53:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (267, '', '2021-10-27 09:53:52', '2021-10-27 09:53:52');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (268, '', '2021-11-08 06:57:52', '2021-11-08 06:57:52');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (269, '', '2021-11-08 07:06:04', '2021-11-08 07:06:04');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (270, '', '2021-11-08 07:06:17', '2021-11-08 07:06:17');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (271, '', '2021-11-08 07:08:47', '2021-11-08 07:08:47');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (272, '', '2021-11-08 07:09:47', '2021-11-08 07:09:47');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (273, '', '2021-11-08 07:10:19', '2021-11-08 07:10:19');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (274, '', '2021-11-08 07:13:54', '2021-11-08 07:13:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (275, '', '2021-11-08 07:22:39', '2021-11-08 07:22:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (276, '', '2021-11-08 07:23:07', '2021-11-08 07:23:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (277, '', '2021-11-08 07:31:07', '2021-11-08 07:31:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (278, '', '2021-11-08 07:31:22', '2021-11-08 07:31:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (279, '', '2021-11-08 07:32:20', '2021-11-08 07:32:20');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (280, '', '2021-11-08 07:33:04', '2021-11-08 07:33:04');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (281, '', '2021-11-08 07:33:10', '2021-11-08 07:33:10');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (282, '', '2021-11-08 07:33:38', '2021-11-08 07:33:38');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (283, '', '2021-11-08 07:34:26', '2021-11-08 07:34:26');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (284, '', '2021-11-08 07:35:08', '2021-11-08 07:35:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (285, '', '2021-11-08 07:35:40', '2021-11-08 07:35:40');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (286, '', '2021-11-08 07:36:06', '2021-11-08 07:36:06');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (287, '', '2021-11-08 07:36:39', '2021-11-08 07:36:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (288, '', '2021-11-08 07:37:03', '2021-11-08 07:37:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (289, '', '2021-11-08 07:37:20', '2021-11-08 07:37:20');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (290, '', '2021-11-08 07:38:18', '2021-11-08 07:38:18');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (291, '', '2021-11-08 07:38:41', '2021-11-08 07:38:41');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (292, '', '2021-11-08 10:01:31', '2021-11-08 10:01:31');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (293, '', '2021-11-08 10:02:00', '2021-11-08 10:02:00');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (294, '', '2021-11-08 10:03:23', '2021-11-08 10:03:23');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (295, '', '2021-11-08 10:03:53', '2021-11-08 10:03:53');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (296, '', '2021-11-08 10:04:44', '2021-11-08 10:04:44');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (297, '', '2021-11-25 06:21:27', '2021-11-25 06:21:27');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (298, '', '2021-11-27 17:16:54', '2021-11-27 17:16:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (299, '', '2021-11-27 17:53:40', '2021-11-27 17:53:40');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (300, '', '2021-11-27 17:53:48', '2021-11-27 17:53:48');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (301, '', '2021-11-28 12:58:08', '2021-11-28 12:58:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (302, '', '2021-11-28 12:58:21', '2021-11-28 12:58:21');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (303, '', '2021-11-28 12:58:21', '2021-11-28 12:58:21');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (304, '', '2022-01-10 17:47:49', '2022-01-10 17:47:49');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (305, '', '2022-01-10 17:48:06', '2022-01-10 17:48:06');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (306, '', '2022-01-10 17:48:25', '2022-01-10 17:48:25');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (307, '', '2022-01-10 17:48:39', '2022-01-10 17:48:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (308, '', '2022-01-10 17:48:49', '2022-01-10 17:48:49');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (309, '', '2022-01-10 17:49:00', '2022-01-10 17:49:00');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (310, '', '2022-01-10 17:49:12', '2022-01-10 17:49:12');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (311, '', '2022-01-10 17:49:22', '2022-01-10 17:49:22');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (312, '', '2022-03-01 05:02:27', '2022-03-01 05:02:27');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (313, '', '2022-03-01 05:03:07', '2022-03-01 05:03:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (314, '', '2022-03-01 05:03:17', '2022-03-01 05:03:17');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (315, '', '2022-03-01 05:03:25', '2022-03-01 05:03:25');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (316, '', '2022-03-01 05:03:33', '2022-03-01 05:03:33');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (317, '', '2022-03-01 05:03:45', '2022-03-01 05:03:45');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (318, '', '2022-03-01 05:03:52', '2022-03-01 05:03:52');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (319, '', '2022-03-01 05:04:01', '2022-03-01 05:04:01');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (320, '', '2022-03-02 04:47:15', '2022-03-02 04:47:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (321, '', '2022-03-02 04:47:25', '2022-03-02 04:47:25');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (322, '', '2022-03-02 04:47:48', '2022-03-02 04:47:48');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (323, '', '2022-03-02 04:49:48', '2022-03-02 04:49:48');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (324, '', '2023-04-30 08:38:11', '2023-04-30 08:38:11');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (325, '', '2023-04-30 08:39:49', '2023-04-30 08:39:49');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (326, '', '2023-04-30 08:40:02', '2023-04-30 08:40:02');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (327, '', '2023-04-30 08:50:23', '2023-04-30 08:50:23');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (328, '', '2023-04-30 08:50:26', '2023-04-30 08:50:26');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (329, '', '2023-04-30 08:50:31', '2023-04-30 08:50:31');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (330, '', '2023-04-30 09:04:39', '2023-04-30 09:04:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (331, '', '2023-04-30 09:05:37', '2023-04-30 09:05:37');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (332, '', '2023-04-30 14:41:45', '2023-04-30 14:41:45');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (333, '', '2023-04-30 14:45:00', '2023-04-30 14:45:00');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (334, '', '2023-04-30 14:46:25', '2023-04-30 14:46:25');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (335, '', '2023-04-30 15:03:31', '2023-04-30 15:03:31');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (336, '', '2023-04-30 15:38:07', '2023-04-30 15:38:07');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (337, '', '2023-04-30 15:40:29', '2023-04-30 15:40:29');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (338, '', '2023-04-30 15:41:34', '2023-04-30 15:41:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (339, '', '2023-04-30 15:51:33', '2023-04-30 15:51:33');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (340, '', '2023-05-01 07:11:18', '2023-05-01 07:11:18');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (341, '', '2023-05-01 07:15:39', '2023-05-01 07:15:39');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (342, '', '2023-05-01 07:28:34', '2023-05-01 07:28:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (343, '', '2023-05-01 07:29:32', '2023-05-01 07:29:32');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (344, '', '2023-05-01 07:35:14', '2023-05-01 07:35:14');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (345, '', '2023-05-01 07:37:08', '2023-05-01 07:37:08');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (346, '', '2023-05-01 07:37:29', '2023-05-01 07:37:29');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (347, '', '2023-05-01 07:37:47', '2023-05-01 07:37:47');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (348, '', '2023-05-01 07:37:53', '2023-05-01 07:37:53');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (349, '', '2023-05-01 07:44:43', '2023-05-01 07:44:43');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (350, '', '2023-05-04 14:38:15', '2023-05-04 14:38:15');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (351, '', '2023-05-04 14:39:24', '2023-05-04 14:39:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (352, '', '2023-05-04 14:42:54', '2023-05-04 14:42:54');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (353, '', '2023-05-04 14:43:38', '2023-05-04 14:43:38');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (354, '', '2023-05-04 14:44:12', '2023-05-04 14:44:12');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (355, '', '2023-05-04 14:45:04', '2023-05-04 14:45:04');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (356, '', '2023-05-04 14:45:36', '2023-05-04 14:45:36');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (357, '', '2023-05-04 14:46:03', '2023-05-04 14:46:03');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (358, '', '2023-05-04 14:46:24', '2023-05-04 14:46:24');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (359, '', '2023-05-04 14:46:59', '2023-05-04 14:46:59');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (360, '', '2023-05-05 03:17:56', '2023-05-05 03:17:56');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (361, '', '2023-05-05 03:18:06', '2023-05-05 03:18:06');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (362, '', '2023-05-05 03:18:14', '2023-05-05 03:18:14');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (363, '', '2023-05-05 07:27:59', '2023-05-05 07:27:59');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (364, '', '2023-05-05 07:28:51', '2023-05-05 07:28:51');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (365, '', '2023-05-05 07:29:59', '2023-05-05 07:29:59');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (366, '', '2023-05-05 07:30:34', '2023-05-05 07:30:34');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (367, '', '2023-05-05 07:31:59', '2023-05-05 07:31:59');
INSERT INTO `attachments` (`id`, `url`, `created_at`, `updated_at`) VALUES (368, '', '2023-05-10 07:23:14', '2023-05-10 07:23:14');
COMMIT;

-- ----------------------------
-- Table structure for attribute_product
-- ----------------------------
DROP TABLE IF EXISTS `attribute_product`;
CREATE TABLE `attribute_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_value_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_product_attribute_value_id_foreign` (`attribute_value_id`),
  KEY `attribute_product_product_id_foreign` (`product_id`),
  CONSTRAINT `attribute_product_ibfk_1` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attribute_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attribute_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for attribute_values
-- ----------------------------
DROP TABLE IF EXISTS `attribute_values`;
CREATE TABLE `attribute_values` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` bigint(20) unsigned NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `meta` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  CONSTRAINT `attribute_values_ibfk_1` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attribute_values
-- ----------------------------
BEGIN;
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (8, '', 3, 'Red', 'en', '#FF0000', '2021-10-10 14:48:43', '2021-10-10 14:48:43');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (9, '', 3, 'Blue', 'en', '#0000FF', '2021-10-10 14:48:43', '2021-10-10 14:48:43');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (10, '', 3, 'Yellow', 'en', '#FFFF00', '2021-10-10 14:48:43', '2021-10-10 14:48:43');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (11, '', 2, 'Small', 'en', NULL, '2021-11-28 12:11:01', '2021-11-28 12:11:01');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (12, '', 2, 'Medium', 'en', NULL, '2021-11-28 12:11:01', '2021-11-28 12:11:01');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (13, '', 2, 'Large', 'en', NULL, '2021-11-28 12:11:01', '2021-11-28 12:11:01');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (14, '', 2, '7', 'en', NULL, '2021-11-28 12:11:01', '2021-11-28 12:11:01');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (15, '', 2, '8', 'en', NULL, '2021-11-28 12:11:01', '2021-11-28 12:11:01');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (16, '', 2, '9', 'en', NULL, '2021-11-28 12:11:01', '2021-11-28 12:11:01');
INSERT INTO `attribute_values` (`id`, `slug`, `attribute_id`, `value`, `language`, `meta`, `created_at`, `updated_at`) VALUES (17, '', 2, '10', 'en', NULL, '2021-11-28 12:11:01', '2021-11-28 12:11:01');
COMMIT;

-- ----------------------------
-- Table structure for attributes
-- ----------------------------
DROP TABLE IF EXISTS `attributes`;
CREATE TABLE `attributes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attributes_shop_id_foreign` (`shop_id`),
  CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attributes
-- ----------------------------
BEGIN;
INSERT INTO `attributes` (`id`, `slug`, `language`, `name`, `shop_id`, `created_at`, `updated_at`) VALUES (2, 'size', 'en', 'Size', 2, '2021-10-10 14:47:38', '2021-10-10 14:47:38');
INSERT INTO `attributes` (`id`, `slug`, `language`, `name`, `shop_id`, `created_at`, `updated_at`) VALUES (3, 'color', 'en', 'Color', 2, '2021-10-10 14:48:43', '2021-10-10 14:48:43');
COMMIT;

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `image` json DEFAULT NULL,
  `cover_image` json DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `bio` text COLLATE utf8mb4_unicode_ci,
  `quote` text COLLATE utf8mb4_unicode_ci,
  `born` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `death` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of authors
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for availabilities
-- ----------------------------
DROP TABLE IF EXISTS `availabilities`;
CREATE TABLE `availabilities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `booking_duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `bookable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookable_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `availabilities_order_id_foreign` (`order_id`),
  KEY `availabilities_product_id_foreign` (`product_id`),
  CONSTRAINT `availabilities_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `availabilities_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of availabilities
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for balances
-- ----------------------------
DROP TABLE IF EXISTS `balances`;
CREATE TABLE `balances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(20) unsigned NOT NULL,
  `admin_commission_rate` double DEFAULT NULL,
  `total_earnings` double NOT NULL DEFAULT '0',
  `withdrawn_amount` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `payment_info` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `balances_shop_id_foreign` (`shop_id`),
  CONSTRAINT `balances_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of balances
-- ----------------------------
BEGIN;
INSERT INTO `balances` (`id`, `shop_id`, `admin_commission_rate`, `total_earnings`, `withdrawn_amount`, `current_balance`, `payment_info`, `created_at`, `updated_at`) VALUES (1, 1, 10, 0, 0, 0, '{\"bank\": \"test bank\", \"name\": \"chawkbazar\", \"email\": \"shop_owner@demo.com\", \"account\": 53415435}', '2021-10-09 16:24:30', '2021-10-09 16:39:44');
INSERT INTO `balances` (`id`, `shop_id`, `admin_commission_rate`, `total_earnings`, `withdrawn_amount`, `current_balance`, `payment_info`, `created_at`, `updated_at`) VALUES (2, 2, 10, 14562, 7850, 6712, '{\"bank\": \"vendor bank\", \"name\": \"vendor\", \"email\": \"vendor@demo.com\", \"account\": 6523498651}', '2021-10-09 16:57:34', '2021-11-28 08:51:12');
COMMIT;

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) unsigned NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banners_type_id_foreign` (`type_id`),
  CONSTRAINT `banners_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of banners
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` json DEFAULT NULL,
  `banner_image` json DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `parent` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_foreign` (`parent`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
BEGIN;
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'Mg', 'mg', 'en', 'Accessories', '[{\"id\": 357, \"original\": \"http://localhost:8000/storage/357/mg.png\", \"thumbnail\": \"http://localhost:8000/storage/357/conversions/mg-thumbnail.jpg\"}]', '[]', NULL, NULL, '2021-10-09 17:38:08', '2023-05-04 14:46:12', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Ford', 'ford', 'en', 'Accessories', '[{\"id\": 356, \"original\": \"http://localhost:8000/storage/356/ford.png\", \"thumbnail\": \"http://localhost:8000/storage/356/conversions/ford-thumbnail.jpg\"}]', '[]', NULL, NULL, '2021-10-09 17:38:27', '2023-05-04 14:45:45', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'Nissan', 'nissan', 'en', 'Accessories', '[{\"id\": 355, \"original\": \"http://localhost:8000/storage/355/nissan.png\", \"thumbnail\": \"http://localhost:8000/storage/355/conversions/nissan-thumbnail.jpg\"}]', '[]', NULL, NULL, '2021-10-09 17:38:39', '2023-05-04 14:45:23', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'Mitsubishi', 'mitsubishi', 'en', 'Accessories', '[{\"id\": 354, \"original\": \"http://localhost:8000/storage/354/mitsubishi.png\", \"thumbnail\": \"http://localhost:8000/storage/354/conversions/mitsubishi-thumbnail.jpg\"}]', '[]', NULL, NULL, '2021-10-09 17:39:56', '2023-05-04 14:44:24', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'Mazda', 'mazda', 'en', 'Accessories', '[{\"id\": 353, \"original\": \"http://localhost:8000/storage/353/mazda.png\", \"thumbnail\": \"http://localhost:8000/storage/353/conversions/mazda-thumbnail.jpg\"}]', '[]', NULL, NULL, '2021-10-09 17:40:07', '2023-05-04 14:43:59', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'Isuzu', 'isuzu', 'en', 'Accessories', '[{\"id\": 352, \"original\": \"http://localhost:8000/storage/352/isuzu.png\", \"thumbnail\": \"http://localhost:8000/storage/352/conversions/isuzu-thumbnail.jpg\"}]', '[]', NULL, NULL, '2021-10-09 17:40:22', '2023-05-04 14:43:15', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'Honda', 'honda', 'en', 'Accessories', '[{\"id\": 351, \"original\": \"http://localhost:8000/storage/351/honda.png\", \"thumbnail\": \"http://localhost:8000/storage/351/conversions/honda-thumbnail.jpg\"}]', '[]', NULL, NULL, '2021-10-09 17:40:33', '2023-05-04 14:39:33', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'Toyota', 'toyota', 'en', 'Accessories', '[{\"id\": 350, \"original\": \"http://localhost:8000/storage/350/toyota.png\", \"thumbnail\": \"http://localhost:8000/storage/350/conversions/toyota-thumbnail.jpg\"}]', '[]', NULL, NULL, '2021-10-09 17:40:47', '2023-05-04 14:38:51', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'Mercedes Benz', 'mercedes-benz', 'en', 'Accessories', '[{\"id\": 358, \"original\": \"http://localhost:8000/storage/358/mercedes-benz.png\", \"thumbnail\": \"http://localhost:8000/storage/358/conversions/mercedes-benz-thumbnail.jpg\"}]', '[]', NULL, NULL, '2023-05-04 14:46:40', '2023-05-04 14:46:50', NULL);
INSERT INTO `categories` (`id`, `name`, `slug`, `language`, `icon`, `image`, `banner_image`, `details`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'BMW', 'bmw', 'en', 'Accessories', '[{\"id\": 359, \"original\": \"http://localhost:8000/storage/359/bmw.png\", \"thumbnail\": \"http://localhost:8000/storage/359/conversions/bmw-thumbnail.jpg\"}]', '[]', NULL, NULL, '2023-05-04 14:47:07', '2023-05-04 14:47:07', NULL);
COMMIT;

-- ----------------------------
-- Table structure for category_product
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_product_product_id_foreign` (`product_id`),
  KEY `category_product_category_id_foreign` (`category_id`),
  CONSTRAINT `category_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for category_shop
-- ----------------------------
DROP TABLE IF EXISTS `category_shop`;
CREATE TABLE `category_shop` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_shop_shop_id_foreign` (`shop_id`),
  KEY `category_shop_category_id_foreign` (`category_id`),
  CONSTRAINT `category_shop_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  CONSTRAINT `category_shop_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category_shop
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for conversations
-- ----------------------------
DROP TABLE IF EXISTS `conversations`;
CREATE TABLE `conversations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `shop_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `conversations_user_id_foreign` (`user_id`),
  KEY `conversations_shop_id_foreign` (`shop_id`),
  CONSTRAINT `conversations_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `conversations_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of conversations
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` json DEFAULT NULL,
  `type` enum('fixed','percentage','free_shipping') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `minimum_cart_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `active_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of coupons
-- ----------------------------
BEGIN;
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'EID2', 'en', NULL, '{\"id\": 246, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/246/2x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/246/conversions/2x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 2.00, 0.00, '2021-10-25T07:34:58.000Z', '2026-11-30T07:34:58.000Z', '2021-10-25 07:37:05', '2021-11-18 07:02:06', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, '4OFF', 'en', NULL, '{\"id\": 247, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/247/4x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/247/conversions/4x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 4.00, 0.00, '2021-10-25T07:34:58.000Z', '2027-12-31T07:34:58.000Z', '2021-10-25 07:37:29', '2021-11-18 07:02:01', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'RAMADAN5', 'en', NULL, '{\"id\": 248, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/248/5x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/248/conversions/5x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 5.00, 0.00, '2021-10-25T07:34:58.000Z', '2030-12-31T07:34:58.000Z', '2021-10-25 07:39:35', '2021-11-18 07:01:56', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, '6OFF', 'en', NULL, '{\"id\": 249, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/249/6x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/249/conversions/6x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 6.00, 0.00, '2021-10-25T07:34:58.000Z', '2029-01-31T07:34:58.000Z', '2021-10-25 07:40:08', '2021-11-18 07:01:51', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'SUMMER8', 'en', NULL, '{\"id\": 250, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/250/8x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/250/conversions/8x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 8.00, 0.00, '2021-10-25T12:32:39.000Z', '2028-12-31T12:32:39.000Z', '2021-10-25 12:35:30', '2021-11-18 07:01:46', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'WINTER10', 'en', NULL, '{\"id\": 251, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/251/10x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/251/conversions/10x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 10.00, 0.00, '2021-10-25T12:32:39.000Z', '2026-01-31T12:32:39.000Z', '2021-10-25 12:36:35', '2021-11-18 07:01:41', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, '12OFF', 'en', NULL, '{\"id\": 252, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/252/12x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/252/conversions/12x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 12.00, 0.00, '2021-10-25T12:32:39.000Z', '2027-11-30T12:32:39.000Z', '2021-10-25 12:37:34', '2021-11-18 07:01:36', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'SUMMER15', 'en', NULL, '{\"id\": 253, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/253/15x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/253/conversions/15x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 15.00, 0.00, '2021-10-25T12:32:39.000Z', '2028-02-28T12:32:39.000Z', '2021-10-25 12:38:02', '2021-11-18 07:01:32', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'CHRISTMAS18', 'en', NULL, '{\"id\": 254, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/254/18x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/254/conversions/18x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 18.00, 0.00, '2021-10-25T12:32:39.000Z', '2029-12-31T12:32:39.000Z', '2021-10-25 12:39:20', '2021-11-18 07:01:26', NULL);
INSERT INTO `coupons` (`id`, `code`, `language`, `description`, `image`, `type`, `amount`, `minimum_cart_amount`, `active_from`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, '20OFF', 'en', NULL, '{\"id\": 255, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/255/20x2x-thumbnail.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/255/conversions/20x2x-thumbnail-thumbnail.jpg\"}', 'fixed', 20.00, 0.00, '2021-10-25T12:32:39.000Z', '2030-10-25T12:32:39.000Z', '2021-10-25 12:39:51', '2021-11-18 07:01:01', NULL);
COMMIT;

-- ----------------------------
-- Table structure for delivery_times
-- ----------------------------
DROP TABLE IF EXISTS `delivery_times`;
CREATE TABLE `delivery_times` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of delivery_times
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for deposit_product
-- ----------------------------
DROP TABLE IF EXISTS `deposit_product`;
CREATE TABLE `deposit_product` (
  `resource_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  KEY `deposit_product_resource_id_foreign` (`resource_id`),
  KEY `deposit_product_product_id_foreign` (`product_id`),
  CONSTRAINT `deposit_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `deposit_product_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of deposit_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for digital_files
-- ----------------------------
DROP TABLE IF EXISTS `digital_files`;
CREATE TABLE `digital_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_id` bigint(20) unsigned NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fileable_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of digital_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for download_tokens
-- ----------------------------
DROP TABLE IF EXISTS `download_tokens`;
CREATE TABLE `download_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `digital_file_id` bigint(20) unsigned DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `download_tokens_digital_file_id_foreign` (`digital_file_id`),
  CONSTRAINT `download_tokens_ibfk_1` FOREIGN KEY (`digital_file_id`) REFERENCES `digital_files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of download_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dropoff_location_product
-- ----------------------------
DROP TABLE IF EXISTS `dropoff_location_product`;
CREATE TABLE `dropoff_location_product` (
  `resource_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  KEY `dropoff_location_product_resource_id_foreign` (`resource_id`),
  KEY `dropoff_location_product_product_id_foreign` (`product_id`),
  CONSTRAINT `dropoff_location_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `dropoff_location_product_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of dropoff_location_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for feature_product
-- ----------------------------
DROP TABLE IF EXISTS `feature_product`;
CREATE TABLE `feature_product` (
  `resource_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  KEY `feature_product_resource_id_foreign` (`resource_id`),
  KEY `feature_product_product_id_foreign` (`product_id`),
  CONSTRAINT `feature_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `feature_product_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of feature_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `positive` tinyint(1) DEFAULT NULL,
  `negative` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `feedbacks_user_id_foreign` (`user_id`),
  KEY `feedbacks_model_type_model_id_index` (`model_type`,`model_id`),
  CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for manufacturers
-- ----------------------------
DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE `manufacturers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `image` json DEFAULT NULL,
  `cover_image` json DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `type_id` bigint(20) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socials` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manufacturers_type_id_foreign` (`type_id`),
  CONSTRAINT `manufacturers_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of manufacturers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for media
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of media
-- ----------------------------
BEGIN;
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (1, 'Marvel\\Database\\Models\\Attachment', 1, 'e0d4cfc9-cb74-4598-8b7a-3715fbfd9aa9', 'default', 'user', 'user.png', 'image/png', 's3', 's3', 22159, '[]', '[]', '[]', '[]', 1, '2021-10-09 13:30:23', '2021-10-09 13:30:23');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (2, 'Marvel\\Database\\Models\\Attachment', 2, '578c1f0b-dfdc-46aa-a04f-2ded1e57b6e2', 'default', 'user', 'user.png', 'image/png', 's3', 's3', 22159, '[]', '[]', '[]', '[]', 2, '2021-10-09 13:30:34', '2021-10-09 13:30:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (3, 'Marvel\\Database\\Models\\Attachment', 3, 'fc6d10dd-804d-49a2-9167-5b68d08f7c08', 'default', 'user', 'user.png', 'image/png', 's3', 's3', 22159, '[]', '[]', '[]', '[]', 3, '2021-10-09 13:39:00', '2021-10-09 13:39:00');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (4, 'Marvel\\Database\\Models\\Attachment', 4, 'ab5238bf-6a68-420f-b54b-4e4b94213c9f', 'default', 'user', 'user.png', 'image/png', 's3', 's3', 22159, '[]', '[]', '[]', '[]', 4, '2021-10-09 13:42:22', '2021-10-09 13:42:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (5, 'Marvel\\Database\\Models\\Attachment', 5, '7a546abd-790f-4328-81cc-698ea70e2363', 'default', 'user', 'user.png', 'image/png', 's3', 's3', 22159, '[]', '[]', '[]', '[]', 5, '2021-10-09 13:47:15', '2021-10-09 13:47:15');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (6, 'Marvel\\Database\\Models\\Attachment', 6, '41c98d41-d64d-4d8a-b714-61f69d823ab7', 'default', 'user', 'user.png', 'image/png', 's3', 's3', 22159, '[]', '[]', '[]', '[]', 6, '2021-10-09 13:47:43', '2021-10-09 13:47:43');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (7, 'Marvel\\Database\\Models\\Attachment', 7, '93d27a3c-bb8c-42ed-9872-68403647f3ce', 'default', 'user', 'user.png', 'image/png', 's3', 's3', 22159, '[]', '{\"thumbnail\": true}', '[]', '[]', 7, '2021-10-09 13:53:45', '2021-10-09 13:53:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (8, 'Marvel\\Database\\Models\\Attachment', 8, '50541671-4dc2-4669-a80d-43c13854922e', 'default', 'Untitled-4', 'Untitled-4.jpg', 'image/jpeg', 's3', 's3', 192327, '[]', '{\"thumbnail\": true}', '[]', '[]', 8, '2021-10-09 16:20:22', '2021-10-09 16:20:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (9, 'Marvel\\Database\\Models\\Attachment', 9, '45930543-3fde-4c83-932c-b7aed5ca4d81', 'default', 'Untitled-4', 'Untitled-4.jpg', 'image/jpeg', 's3', 's3', 192327, '[]', '{\"thumbnail\": true}', '[]', '[]', 9, '2021-10-09 16:20:25', '2021-10-09 16:20:26');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (10, 'Marvel\\Database\\Models\\Attachment', 10, 'f34e2f26-0eb6-4b83-bcac-a1d6248854be', 'default', 'logo', 'logo.svg', 'image/svg', 's3', 's3', 4193, '[]', '[]', '[]', '[]', 10, '2021-10-09 16:21:30', '2021-10-09 16:21:30');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (11, 'Marvel\\Database\\Models\\Attachment', 11, 'c485538e-769f-4d01-95be-e6bb9b6226a5', 'default', 'og-image-01', 'og-image-01.png', 'image/png', 's3', 's3', 20029, '[]', '{\"thumbnail\": true}', '[]', '[]', 11, '2021-10-09 16:21:40', '2021-10-09 16:21:40');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (12, 'Marvel\\Database\\Models\\Attachment', 12, 'a83f22c6-8eea-4fdd-bf51-8b2eec93c8ba', 'default', 'chawkBazar573_350', 'chawkBazar573_350.png', 'image/png', 's3', 's3', 97336, '[]', '{\"thumbnail\": true}', '[]', '[]', 12, '2021-10-09 16:22:16', '2021-10-09 16:22:16');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (13, 'Marvel\\Database\\Models\\Attachment', 13, 'f1e9e1e7-9923-4cea-8b0e-42b98beb43bc', 'default', 'Men\'s Collection', 'Men\'s-Collection.jpg', 'image/jpeg', 's3', 's3', 55377, '[]', '{\"thumbnail\": true}', '[]', '[]', 13, '2021-10-09 17:01:35', '2021-10-09 17:01:35');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (14, 'Marvel\\Database\\Models\\Attachment', 14, 'b618da8d-b5f4-47fe-947e-86a6ee1e0ebf', 'default', 'Men\'s Collection', 'Men\'s-Collection.jpg', 'image/jpeg', 's3', 's3', 55377, '[]', '{\"thumbnail\": true}', '[]', '[]', 14, '2021-10-09 17:02:11', '2021-10-09 17:02:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (15, 'Marvel\\Database\\Models\\Attachment', 15, '03601c65-8744-47b9-951b-40ec15272a78', 'default', 'fashion', 'fashion.png', 'image/png', 's3', 's3', 2574, '[]', '{\"thumbnail\": true}', '[]', '[]', 15, '2021-10-09 17:05:23', '2021-10-09 17:05:23');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (16, 'Marvel\\Database\\Models\\Attachment', 16, 'b38ee4af-259f-40cc-9920-a7ba40d71e74', 'default', 'Untitled-3', 'Untitled-3.jpg', 'image/jpeg', 's3', 's3', 70753, '[]', '{\"thumbnail\": true}', '[]', '[]', 16, '2021-10-09 17:06:58', '2021-10-09 17:06:58');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (17, 'Marvel\\Database\\Models\\Attachment', 17, '7e42159e-b818-494c-9372-a3a8188f1a67', 'default', 'chawkb.sports', 'chawkb.sports.png', 'image/png', 's3', 's3', 101358, '[]', '{\"thumbnail\": true}', '[]', '[]', 17, '2021-10-09 17:17:42', '2021-10-09 17:17:42');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (18, 'Marvel\\Database\\Models\\Attachment', 18, '927ff16a-c484-4699-8ebb-cbc20f3c8f63', 'default', 'chawkbwomen', 'chawkbwomen.jpg', 'image/jpeg', 's3', 's3', 114127, '[]', '{\"thumbnail\": true}', '[]', '[]', 18, '2021-10-09 17:18:48', '2021-10-09 17:18:48');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (19, 'Marvel\\Database\\Models\\Attachment', 19, '6199d122-7ce6-4478-9a71-1c7d939645d9', 'default', 'chawkbwomen', 'chawkbwomen.jpg', 'image/jpeg', 's3', 's3', 114127, '[]', '{\"thumbnail\": true}', '[]', '[]', 19, '2021-10-09 17:20:47', '2021-10-09 17:20:47');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (20, 'Marvel\\Database\\Models\\Attachment', 20, '6a60c610-75a7-4ae1-bec0-25b772ffa136', 'default', 'chawkbsunglass', 'chawkbsunglass.jpg', 'image/jpeg', 's3', 's3', 128922, '[]', '{\"thumbnail\": true}', '[]', '[]', 20, '2021-10-09 17:21:10', '2021-10-09 17:21:10');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (21, 'Marvel\\Database\\Models\\Attachment', 21, '2d7f9338-836c-4bb0-a1fa-974886e0009b', 'default', 'chawkbcoupond', 'chawkbcoupond.jpg', 'image/jpeg', 's3', 's3', 20338, '[]', '{\"thumbnail\": true}', '[]', '[]', 21, '2021-10-09 17:21:30', '2021-10-09 17:21:30');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (22, 'Marvel\\Database\\Models\\Attachment', 22, 'd1c86cb2-eb2f-4906-8d41-ea4c4fbaba88', 'default', 'chawkbbackpack', 'chawkbbackpack.jpg', 'image/jpeg', 's3', 's3', 288239, '[]', '{\"thumbnail\": true}', '[]', '[]', 22, '2021-10-09 17:21:55', '2021-10-09 17:21:56');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (23, 'Marvel\\Database\\Models\\Attachment', 23, '3cc168c2-fb34-4f6f-a4bf-fff2406f7fa2', 'default', 'chawkbwomen', 'chawkbwomen.jpg', 'image/jpeg', 's3', 's3', 114127, '[]', '{\"thumbnail\": true}', '[]', '[]', 23, '2021-10-09 17:22:15', '2021-10-09 17:22:15');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (24, 'Marvel\\Database\\Models\\Attachment', 24, 'f728ce68-3756-4bbe-8e8a-85b18249e344', 'default', 'Banner 5', 'Banner-5.png', 'image/png', 's3', 's3', 117129, '[]', '{\"thumbnail\": true}', '[]', '[]', 24, '2021-10-09 17:23:13', '2021-10-09 17:23:13');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (25, 'Marvel\\Database\\Models\\Attachment', 25, 'db35c9bc-7bda-4c87-b29c-d48bf55eb6c3', 'default', 'Banner 5', 'Banner-5.png', 'image/png', 's3', 's3', 117129, '[]', '{\"thumbnail\": true}', '[]', '[]', 25, '2021-10-09 17:23:58', '2021-10-09 17:23:58');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (26, 'Marvel\\Database\\Models\\Attachment', 26, 'af11c038-ae8c-40f1-a9be-61e51d3b78b5', 'default', 'bags', 'bags.png', 'image/png', 's3', 's3', 17083, '[]', '{\"thumbnail\": true}', '[]', '[]', 26, '2021-10-09 17:37:38', '2021-10-09 17:37:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (27, 'Marvel\\Database\\Models\\Attachment', 27, 'e5eb0193-b2d2-4f72-ab33-7a708b647d58', 'default', 'kids', 'kids.png', 'image/png', 's3', 's3', 13277, '[]', '{\"thumbnail\": true}', '[]', '[]', 27, '2021-10-09 17:38:22', '2021-10-09 17:38:23');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (28, 'Marvel\\Database\\Models\\Attachment', 28, '6ee925f5-b541-4428-b74f-709569dc9442', 'default', 'men', 'men.png', 'image/png', 's3', 's3', 15598, '[]', '{\"thumbnail\": true}', '[]', '[]', 28, '2021-10-09 17:38:34', '2021-10-09 17:38:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (29, 'Marvel\\Database\\Models\\Attachment', 29, '349b57bb-5cb3-4cdc-acc8-c04710bdc3ba', 'default', 'sneekers', 'sneekers.png', 'image/png', 's3', 's3', 17150, '[]', '{\"thumbnail\": true}', '[]', '[]', 29, '2021-10-09 17:38:47', '2021-10-09 17:38:47');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (30, 'Marvel\\Database\\Models\\Attachment', 30, 'b76fee2e-0d2a-4a68-b890-619976710eff', 'default', 'sports', 'sports.png', 'image/png', 's3', 's3', 23982, '[]', '{\"thumbnail\": true}', '[]', '[]', 30, '2021-10-09 17:40:03', '2021-10-09 17:40:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (31, 'Marvel\\Database\\Models\\Attachment', 31, '9778d275-3c18-4431-b93d-0d14591945d8', 'default', 'sunglass', 'sunglass.png', 'image/png', 's3', 's3', 17982, '[]', '{\"thumbnail\": true}', '[]', '[]', 31, '2021-10-09 17:40:14', '2021-10-09 17:40:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (32, 'Marvel\\Database\\Models\\Attachment', 32, '7540b424-021c-42ad-a368-e5d58524b156', 'default', 'watch', 'watch.png', 'image/png', 's3', 's3', 15779, '[]', '{\"thumbnail\": true}', '[]', '[]', 32, '2021-10-09 17:40:27', '2021-10-09 17:40:27');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (33, 'Marvel\\Database\\Models\\Attachment', 33, '271f84bc-3ff4-4438-bb7a-741808322635', 'default', 'women', 'women.png', 'image/png', 's3', 's3', 22297, '[]', '{\"thumbnail\": true}', '[]', '[]', 33, '2021-10-09 17:40:40', '2021-10-09 17:40:40');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (34, 'Marvel\\Database\\Models\\Attachment', 34, '66f9cf31-a969-40cd-8f51-4c9364f982a8', 'default', 'banner-mobile-3', 'banner-mobile-3.jpg', 'image/jpeg', 's3', 's3', 36290, '[]', '{\"thumbnail\": true}', '[]', '[]', 34, '2021-10-09 17:52:47', '2021-10-09 17:52:47');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (35, 'Marvel\\Database\\Models\\Attachment', 35, '62532294-7ea1-4667-a949-59f40e5ce1ba', 'default', 'banner-1', 'banner-1.jpg', 'image/jpeg', 's3', 's3', 285505, '[]', '{\"thumbnail\": true}', '[]', '[]', 35, '2021-10-09 17:53:33', '2021-10-09 17:53:33');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (36, 'Marvel\\Database\\Models\\Attachment', 36, 'e3f26c8d-c67c-46da-bf79-484cd0242510', 'default', 'banner-2', 'banner-2.jpg', 'image/jpeg', 's3', 's3', 236636, '[]', '{\"thumbnail\": true}', '[]', '[]', 36, '2021-10-09 17:53:48', '2021-10-09 17:53:49');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (37, 'Marvel\\Database\\Models\\Attachment', 37, 'c1298ab1-4ddc-4444-9d64-59834437bb9e', 'default', 'banner-3', 'banner-3.jpg', 'image/jpeg', 's3', 's3', 19855, '[]', '{\"thumbnail\": true}', '[]', '[]', 37, '2021-10-09 17:54:17', '2021-10-09 17:54:17');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (38, 'Marvel\\Database\\Models\\Attachment', 38, '89d69fff-3aae-4c3b-9a24-bd86e2e95c84', 'default', '1', '1.jpg', 'image/jpeg', 's3', 's3', 136581, '[]', '{\"thumbnail\": true}', '[]', '[]', 38, '2021-10-09 17:55:41', '2021-10-09 17:55:41');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (39, 'Marvel\\Database\\Models\\Attachment', 39, '5b6f6a01-967c-4826-85f3-cc4a6566ecec', 'default', 'AE', 'AE.svg', 'image/svg', 's3', 's3', 2535, '[]', '[]', '[]', '[]', 39, '2021-10-10 13:21:22', '2021-10-10 13:21:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (40, 'Marvel\\Database\\Models\\Attachment', 40, '0d55874e-5a2a-4dbf-bb36-822046aa3c52', 'default', 'logo1', 'logo1.png', 'image/png', 's3', 's3', 4125, '[]', '{\"thumbnail\": true}', '[]', '[]', 40, '2021-10-10 13:21:22', '2021-10-10 13:21:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (41, 'Marvel\\Database\\Models\\Attachment', 41, '608a5395-25eb-41ae-a54a-ef6c41d7aa63', 'default', 'adidas', 'adidas.png', 'image/png', 's3', 's3', 73906, '[]', '{\"thumbnail\": true}', '[]', '[]', 41, '2021-10-10 13:30:48', '2021-10-10 13:30:49');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (42, 'Marvel\\Database\\Models\\Attachment', 42, 'e5cc1862-9fbd-4a5d-b56e-0f3b2d6676ef', 'default', 'fustion', 'fustion.png', 'image/png', 's3', 's3', 4125, '[]', '{\"thumbnail\": true}', '[]', '[]', 42, '2021-10-10 13:31:51', '2021-10-10 13:31:51');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (43, 'Marvel\\Database\\Models\\Attachment', 43, '1b0f48a3-6d99-4342-9feb-4d06b84589c1', 'default', 'puma-logo', 'puma-logo.png', 'image/png', 's3', 's3', 47631, '[]', '{\"thumbnail\": true}', '[]', '[]', 43, '2021-10-10 13:50:07', '2021-10-10 13:50:07');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (44, 'Marvel\\Database\\Models\\Attachment', 44, 'de5506a5-fcca-46b0-8244-3280a0a32a22', 'default', 'vintege', 'vintege.png', 'image/png', 's3', 's3', 4600, '[]', '{\"thumbnail\": true}', '[]', '[]', 44, '2021-10-10 13:50:11', '2021-10-10 13:50:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (45, 'Marvel\\Database\\Models\\Attachment', 45, '9faab4b4-a0a4-48f8-ac60-8373984bf337', 'default', 'dior', 'dior.png', 'image/png', 's3', 's3', 83177, '[]', '{\"thumbnail\": true}', '[]', '[]', 45, '2021-10-10 13:50:50', '2021-10-10 13:50:50');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (46, 'Marvel\\Database\\Models\\Attachment', 46, '10b0b8a0-c40c-405d-aed1-07dc7ce07d35', 'default', 'logo3', 'logo3.png', 'image/png', 's3', 's3', 7335, '[]', '{\"thumbnail\": true}', '[]', '[]', 46, '2021-10-10 13:50:55', '2021-10-10 13:50:55');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (47, 'Marvel\\Database\\Models\\Attachment', 47, 'f48b13f5-2866-4844-a4ee-03cdd05aece7', 'default', 'levi-s', 'levi-s.png', 'image/png', 's3', 's3', 104675, '[]', '{\"thumbnail\": true}', '[]', '[]', 47, '2021-10-10 13:51:22', '2021-10-10 13:51:23');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (48, 'Marvel\\Database\\Models\\Attachment', 48, 'e776c383-e0e3-493a-b06c-42eb188f612f', 'default', 'logo4', 'logo4.png', 'image/png', 's3', 's3', 6376, '[]', '{\"thumbnail\": true}', '[]', '[]', 48, '2021-10-10 13:51:29', '2021-10-10 13:51:29');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (49, 'Marvel\\Database\\Models\\Attachment', 49, '6d5b12bc-1f24-419d-ac51-903eed99e841', 'default', 'logo5', 'logo5.png', 'image/png', 's3', 's3', 4692, '[]', '{\"thumbnail\": true}', '[]', '[]', 49, '2021-10-10 13:55:12', '2021-10-10 13:55:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (50, 'Marvel\\Database\\Models\\Attachment', 50, 'a96d0581-8ba7-40cc-a9b9-fea407dd8f59', 'default', 'Calvin klein', 'Calvin-klein.png', 'image/png', 's3', 's3', 110247, '[]', '{\"thumbnail\": true}', '[]', '[]', 50, '2021-10-10 13:55:43', '2021-10-10 13:55:43');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (51, 'Marvel\\Database\\Models\\Attachment', 51, 'b3cdd16b-c382-488f-8635-f3f3d3979c63', 'default', 'logo5', 'logo5.png', 'image/png', 's3', 's3', 4692, '[]', '{\"thumbnail\": true}', '[]', '[]', 51, '2021-10-10 13:55:56', '2021-10-10 13:55:56');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (52, 'Marvel\\Database\\Models\\Attachment', 52, 'dfcb6825-6d31-44e2-a3ff-b3e475fbd3b6', 'default', 'Calvin klein', 'Calvin-klein.png', 'image/png', 's3', 's3', 110247, '[]', '{\"thumbnail\": true}', '[]', '[]', 52, '2021-10-10 13:56:02', '2021-10-10 13:56:02');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (53, 'Marvel\\Database\\Models\\Attachment', 53, '9ca7e26d-b715-4845-b0a8-a4a9ada90625', 'default', 'Calvin klein', 'Calvin-klein.png', 'image/png', 's3', 's3', 110247, '[]', '{\"thumbnail\": true}', '[]', '[]', 53, '2021-10-10 13:56:19', '2021-10-10 13:56:19');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (54, 'Marvel\\Database\\Models\\Attachment', 54, '7469bda5-d785-43f7-9d40-a5d5ce049c14', 'default', 'logo5', 'logo5.png', 'image/png', 's3', 's3', 4692, '[]', '{\"thumbnail\": true}', '[]', '[]', 54, '2021-10-10 13:56:51', '2021-10-10 13:56:52');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (55, 'Marvel\\Database\\Models\\Attachment', 55, '65a7fa04-9c69-4fdb-8d98-67215cc0af6d', 'default', 'tissot', 'tissot.png', 'image/png', 's3', 's3', 82906, '[]', '{\"thumbnail\": true}', '[]', '[]', 55, '2021-10-10 13:57:50', '2021-10-10 13:57:51');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (56, 'Marvel\\Database\\Models\\Attachment', 56, '20d3eca3-8fba-4f1a-ac9b-39d1b25c9c1a', 'default', 'logo6', 'logo6.png', 'image/png', 's3', 's3', 10811, '[]', '{\"thumbnail\": true}', '[]', '[]', 56, '2021-10-10 13:57:55', '2021-10-10 13:57:56');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (57, 'Marvel\\Database\\Models\\Attachment', 57, '35a870be-f8af-4ade-8819-33a31268bd31', 'default', 'nike', 'nike.png', 'image/png', 's3', 's3', 77110, '[]', '{\"thumbnail\": true}', '[]', '[]', 57, '2021-10-10 13:58:24', '2021-10-10 13:58:25');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (58, 'Marvel\\Database\\Models\\Attachment', 58, '6a9f78b2-b30c-4fb9-950d-2d6232e1c09e', 'default', 'logo7', 'logo7.png', 'image/png', 's3', 's3', 6010, '[]', '{\"thumbnail\": true}', '[]', '[]', 58, '2021-10-10 13:58:29', '2021-10-10 13:58:29');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (59, 'Marvel\\Database\\Models\\Attachment', 59, '711d928c-6628-44dd-a5ce-482166cfeafc', 'default', 'herschel', 'herschel.png', 'image/png', 's3', 's3', 109736, '[]', '{\"thumbnail\": true}', '[]', '[]', 59, '2021-10-10 13:58:54', '2021-10-10 13:58:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (60, 'Marvel\\Database\\Models\\Attachment', 60, '1251386a-c992-4dd7-9c8c-a8841ffde2a8', 'default', 'logo8', 'logo8.png', 'image/png', 's3', 's3', 7658, '[]', '{\"thumbnail\": true}', '[]', '[]', 60, '2021-10-10 13:59:02', '2021-10-10 13:59:02');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (61, 'Marvel\\Database\\Models\\Attachment', 61, '0543c3db-f0f0-4a52-9d48-431b59f59ecd', 'default', 'Hollister', 'Hollister.png', 'image/png', 's3', 's3', 98152, '[]', '{\"thumbnail\": true}', '[]', '[]', 61, '2021-10-10 13:59:24', '2021-10-10 13:59:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (62, 'Marvel\\Database\\Models\\Attachment', 62, 'd67f9206-f67a-4d1a-89f0-5d5b5189102c', 'default', 'logo4', 'logo4.png', 'image/png', 's3', 's3', 6376, '[]', '{\"thumbnail\": true}', '[]', '[]', 62, '2021-10-10 13:59:29', '2021-10-10 13:59:29');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (63, 'Marvel\\Database\\Models\\Attachment', 63, 'ba74fec0-a40c-464e-81d7-afce1ca6f8f8', 'default', 'zara', 'zara.png', 'image/png', 's3', 's3', 129667, '[]', '{\"thumbnail\": true}', '[]', '[]', 63, '2021-10-10 14:00:05', '2021-10-10 14:00:05');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (64, 'Marvel\\Database\\Models\\Attachment', 64, '3b19edee-d781-4be3-9a43-cc56414970e7', 'default', 'logo10', 'logo10.png', 'image/png', 's3', 's3', 3917, '[]', '{\"thumbnail\": true}', '[]', '[]', 64, '2021-10-10 14:00:17', '2021-10-10 14:00:18');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (65, 'Marvel\\Database\\Models\\Attachment', 65, '72056399-9e25-456c-9f89-97b3a4e9b3d7', 'default', 'gucci', 'gucci.png', 'image/png', 's3', 's3', 100904, '[]', '{\"thumbnail\": true}', '[]', '[]', 65, '2021-10-10 14:01:05', '2021-10-10 14:01:05');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (66, 'Marvel\\Database\\Models\\Attachment', 66, '5fdff9e8-ec9c-445d-af37-f9d05407d455', 'default', 'gucci', 'gucci.png', 'image/png', 's3', 's3', 100904, '[]', '{\"thumbnail\": true}', '[]', '[]', 66, '2021-10-10 14:01:07', '2021-10-10 14:01:07');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (67, 'Marvel\\Database\\Models\\Attachment', 67, '8af00cdc-c08f-4cba-8870-8705eb014898', 'default', 'logo11', 'logo11.png', 'image/png', 's3', 's3', 4064, '[]', '{\"thumbnail\": true}', '[]', '[]', 67, '2021-10-10 14:01:32', '2021-10-10 14:01:32');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (68, 'Marvel\\Database\\Models\\Attachment', 68, '56ff1b9d-ea9a-4846-966e-5805f698fcc4', 'default', 'under-armour', 'under-armour.png', 'image/png', 's3', 's3', 74071, '[]', '{\"thumbnail\": true}', '[]', '[]', 68, '2021-10-10 14:01:50', '2021-10-10 14:01:50');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (69, 'Marvel\\Database\\Models\\Attachment', 69, '9e94397a-a717-49ca-810a-6eda82bc5f94', 'default', 'logo12', 'logo12.png', 'image/png', 's3', 's3', 5089, '[]', '{\"thumbnail\": true}', '[]', '[]', 69, '2021-10-10 14:01:55', '2021-10-10 14:01:55');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (70, 'Marvel\\Database\\Models\\Attachment', 70, '0086ffa4-bdc7-4646-9dc7-46ff312a136a', 'default', 'emporio-armani', 'emporio-armani.png', 'image/png', 's3', 's3', 92425, '[]', '{\"thumbnail\": true}', '[]', '[]', 70, '2021-10-10 14:02:19', '2021-10-10 14:02:19');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (71, 'Marvel\\Database\\Models\\Attachment', 71, '96bf72d7-c5ba-418e-a793-ea72c99f2d50', 'default', 'vintege', 'vintege.png', 'image/png', 's3', 's3', 4600, '[]', '{\"thumbnail\": true}', '[]', '[]', 71, '2021-10-10 14:02:52', '2021-10-10 14:02:52');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (72, 'Marvel\\Database\\Models\\Attachment', 72, 'e244d6c4-759e-4472-813c-d4f271a49a09', 'default', 'converse', 'converse.png', 'image/png', 's3', 's3', 61787, '[]', '{\"thumbnail\": true}', '[]', '[]', 72, '2021-10-10 14:03:30', '2021-10-10 14:03:30');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (73, 'Marvel\\Database\\Models\\Attachment', 73, '0ec4564d-c540-4b62-859c-34888839e428', 'default', 'logo14', 'logo14.png', 'image/png', 's3', 's3', 8038, '[]', '{\"thumbnail\": true}', '[]', '[]', 73, '2021-10-10 14:03:36', '2021-10-10 14:03:36');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (74, 'Marvel\\Database\\Models\\Attachment', 74, '1861e056-cd2b-4a16-b493-36279e6a28cb', 'default', 'ray-ban', 'ray-ban.png', 'image/png', 's3', 's3', 78389, '[]', '{\"thumbnail\": true}', '[]', '[]', 74, '2021-10-10 14:03:56', '2021-10-10 14:03:57');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (75, 'Marvel\\Database\\Models\\Attachment', 75, 'd329c582-d24c-4af6-b7f1-90801e667af0', 'default', 'logo15', 'logo15.png', 'image/png', 's3', 's3', 3488, '[]', '{\"thumbnail\": true}', '[]', '[]', 75, '2021-10-10 14:04:00', '2021-10-10 14:04:00');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (76, 'Marvel\\Database\\Models\\Attachment', 76, 'f22a67df-2a5f-46cc-92d8-c0c74892da63', 'default', 'h&m', 'h&m.png', 'image/png', 's3', 's3', 59308, '[]', '{\"thumbnail\": true}', '[]', '[]', 76, '2021-10-10 14:04:23', '2021-10-10 14:04:23');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (77, 'Marvel\\Database\\Models\\Attachment', 77, '5ed77ecf-34a1-4727-996d-563ccb4fb250', 'default', 'logo16', 'logo16.png', 'image/png', 's3', 's3', 6871, '[]', '{\"thumbnail\": true}', '[]', '[]', 77, '2021-10-10 14:04:27', '2021-10-10 14:04:27');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (78, 'Marvel\\Database\\Models\\Attachment', 78, '15530b5d-d84e-41e2-9e24-3eeaeaef728f', 'default', 'p-26-m', 'p-26-m.png', 'image/png', 's3', 's3', 22906, '[]', '{\"thumbnail\": true}', '[]', '[]', 78, '2021-10-10 15:19:50', '2021-10-10 15:19:50');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (79, 'Marvel\\Database\\Models\\Attachment', 79, '869f67af-5ec4-44fe-a1e0-cab12b915f26', 'default', 'D-2', 'D-2.png', 'image/png', 's3', 's3', 151542, '[]', '{\"thumbnail\": true}', '[]', '[]', 79, '2021-10-10 18:43:39', '2021-10-10 18:43:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (80, 'Marvel\\Database\\Models\\Attachment', 80, '12361c42-2478-4073-8347-8c1ab876bfba', 'default', 'G-1', 'G-1.png', 'image/png', 's3', 's3', 69567, '[]', '{\"thumbnail\": true}', '[]', '[]', 80, '2021-10-10 18:44:46', '2021-10-10 18:44:47');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (81, 'Marvel\\Database\\Models\\Attachment', 81, '1ab8991e-e68d-4615-a806-c8f6fdac3707', 'default', 'G', 'G.png', 'image/png', 's3', 's3', 69567, '[]', '{\"thumbnail\": true}', '[]', '[]', 81, '2021-10-10 18:44:54', '2021-10-10 18:44:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (82, 'Marvel\\Database\\Models\\Attachment', 82, 'de4b118a-1406-47eb-906d-ceaece7faa00', 'default', 'G-1', 'G-1.png', 'image/png', 's3', 's3', 69567, '[]', '{\"thumbnail\": true}', '[]', '[]', 82, '2021-10-10 18:44:54', '2021-10-10 18:44:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (83, 'Marvel\\Database\\Models\\Attachment', 83, 'e0eeb04c-6704-41a8-989e-1debb35c0058', 'default', 'D', 'D.png', 'image/png', 's3', 's3', 189090, '[]', '{\"thumbnail\": true}', '[]', '[]', 83, '2021-10-10 18:45:30', '2021-10-10 18:45:31');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (84, 'Marvel\\Database\\Models\\Attachment', 84, '7cc699f5-3fbb-43a0-a4bb-2951f942d1b9', 'default', 'D-1', 'D-1.png', 'image/png', 's3', 's3', 178508, '[]', '{\"thumbnail\": true}', '[]', '[]', 84, '2021-10-10 18:45:31', '2021-10-10 18:45:31');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (85, 'Marvel\\Database\\Models\\Attachment', 85, '72c8b1ef-60d7-4750-9bb8-dec8e617c028', 'default', 'D', 'D.png', 'image/png', 's3', 's3', 189090, '[]', '{\"thumbnail\": true}', '[]', '[]', 85, '2021-10-10 18:49:03', '2021-10-10 18:49:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (86, 'Marvel\\Database\\Models\\Attachment', 86, '9132d68e-df1c-438a-939d-56b01b26302e', 'default', 'D-1', 'D-1.png', 'image/png', 's3', 's3', 178508, '[]', '{\"thumbnail\": true}', '[]', '[]', 86, '2021-10-10 18:49:03', '2021-10-10 18:49:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (87, 'Marvel\\Database\\Models\\Attachment', 87, '4f455d77-6e4d-4467-95ec-3656e50ea9ce', 'default', 'D-2', 'D-2.png', 'image/png', 's3', 's3', 151542, '[]', '{\"thumbnail\": true}', '[]', '[]', 87, '2021-10-10 18:49:24', '2021-10-10 18:49:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (88, 'Marvel\\Database\\Models\\Attachment', 88, 'e2a9926a-2004-4da7-8af7-2223454b4293', 'default', 'D-3', 'D-3.png', 'image/png', 's3', 's3', 213392, '[]', '{\"thumbnail\": true}', '[]', '[]', 88, '2021-10-10 18:49:24', '2021-10-10 18:49:25');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (89, 'Marvel\\Database\\Models\\Attachment', 89, 'd0ddad95-df13-41d1-91ca-16e8a1924dd6', 'default', 'D', 'D.png', 'image/png', 's3', 's3', 189090, '[]', '{\"thumbnail\": true}', '[]', '[]', 89, '2021-10-10 18:50:35', '2021-10-10 18:50:35');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (90, 'Marvel\\Database\\Models\\Attachment', 90, '29504fee-00d3-41d1-b54c-a7896036cd3c', 'default', 'D-1', 'D-1.png', 'image/png', 's3', 's3', 178508, '[]', '{\"thumbnail\": true}', '[]', '[]', 90, '2021-10-10 18:50:35', '2021-10-10 18:50:35');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (91, 'Marvel\\Database\\Models\\Attachment', 91, 'b2d40ecc-cac2-40e1-b3e7-e68746cf929f', 'default', 'D-2', 'D-2.png', 'image/png', 's3', 's3', 151542, '[]', '{\"thumbnail\": true}', '[]', '[]', 91, '2021-10-10 18:50:35', '2021-10-10 18:50:36');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (92, 'Marvel\\Database\\Models\\Attachment', 92, 'd49a725a-67f0-405f-be1d-d00c6cb02245', 'default', 'D-3', 'D-3.png', 'image/png', 's3', 's3', 213392, '[]', '{\"thumbnail\": true}', '[]', '[]', 92, '2021-10-10 18:50:36', '2021-10-10 18:50:36');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (93, 'Marvel\\Database\\Models\\Attachment', 93, 'ddad1e89-a521-4ff5-a610-318f1f740af1', 'default', 'D', 'D.png', 'image/png', 's3', 's3', 189090, '[]', '{\"thumbnail\": true}', '[]', '[]', 93, '2021-10-10 18:50:40', '2021-10-10 18:50:40');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (94, 'Marvel\\Database\\Models\\Attachment', 94, 'df5343c2-2961-45f0-a9e6-ea7a36efcf9b', 'default', 'D-1', 'D-1.png', 'image/png', 's3', 's3', 178508, '[]', '{\"thumbnail\": true}', '[]', '[]', 94, '2021-10-10 18:50:40', '2021-10-10 18:50:40');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (95, 'Marvel\\Database\\Models\\Attachment', 95, '41b6b53b-13c4-4877-a183-6452c3340832', 'default', 'D-2', 'D-2.png', 'image/png', 's3', 's3', 151542, '[]', '{\"thumbnail\": true}', '[]', '[]', 95, '2021-10-10 18:50:55', '2021-10-10 18:50:55');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (96, 'Marvel\\Database\\Models\\Attachment', 96, 'c707c080-a830-4b4f-8279-c461cf1a2e9e', 'default', 'D-3', 'D-3.png', 'image/png', 's3', 's3', 213392, '[]', '{\"thumbnail\": true}', '[]', '[]', 96, '2021-10-10 18:50:55', '2021-10-10 18:50:56');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (97, 'Marvel\\Database\\Models\\Attachment', 97, '3d40f25f-448e-42f1-80c5-fa7ebe8860f2', 'default', 'A-2', 'A-2.png', 'image/png', 's3', 's3', 117712, '[]', '{\"thumbnail\": true}', '[]', '[]', 97, '2021-10-10 18:52:02', '2021-10-10 18:52:02');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (98, 'Marvel\\Database\\Models\\Attachment', 98, '33cd1b35-135a-4fde-9908-04adf8a6a2e9', 'default', 'A', 'A.png', 'image/png', 's3', 's3', 104357, '[]', '{\"thumbnail\": true}', '[]', '[]', 98, '2021-10-10 18:52:19', '2021-10-10 18:52:19');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (99, 'Marvel\\Database\\Models\\Attachment', 99, '7714241c-afb4-45b8-8109-13b7435b42cf', 'default', 'A-1', 'A-1.png', 'image/png', 's3', 's3', 79807, '[]', '{\"thumbnail\": true}', '[]', '[]', 99, '2021-10-10 18:52:19', '2021-10-10 18:52:19');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (100, 'Marvel\\Database\\Models\\Attachment', 100, 'c591c18c-c9ac-424b-b56e-fc81b4330b5a', 'default', 'A-2', 'A-2.png', 'image/png', 's3', 's3', 117712, '[]', '{\"thumbnail\": true}', '[]', '[]', 100, '2021-10-10 18:52:19', '2021-10-10 18:52:19');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (101, 'Marvel\\Database\\Models\\Attachment', 101, '305c097d-5401-4409-aa8c-30d016e59b7f', 'default', 'A-3', 'A-3.png', 'image/png', 's3', 's3', 101611, '[]', '{\"thumbnail\": true}', '[]', '[]', 101, '2021-10-10 18:52:19', '2021-10-10 18:52:20');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (102, 'Marvel\\Database\\Models\\Attachment', 102, '3d4466e0-b7ad-4ea1-a212-0b029f9da079', 'default', 'A', 'A.png', 'image/png', 's3', 's3', 104357, '[]', '{\"thumbnail\": true}', '[]', '[]', 102, '2021-10-10 18:52:23', '2021-10-10 18:52:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (103, 'Marvel\\Database\\Models\\Attachment', 103, '6ef6d5d9-ce19-4301-aa4c-825c69cbe22b', 'default', 'A-1', 'A-1.png', 'image/png', 's3', 's3', 79807, '[]', '{\"thumbnail\": true}', '[]', '[]', 103, '2021-10-10 18:52:24', '2021-10-10 18:52:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (104, 'Marvel\\Database\\Models\\Attachment', 104, '4c4e98bd-cc6d-4c02-951f-72bacfb4c25a', 'default', 'A-2', 'A-2.png', 'image/png', 's3', 's3', 117712, '[]', '{\"thumbnail\": true}', '[]', '[]', 104, '2021-10-10 18:52:24', '2021-10-10 18:52:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (105, 'Marvel\\Database\\Models\\Attachment', 105, '93c7eabe-f0bd-490c-8ffc-30c8318463b1', 'default', 'A-3', 'A-3.png', 'image/png', 's3', 's3', 101611, '[]', '{\"thumbnail\": true}', '[]', '[]', 105, '2021-10-10 18:52:24', '2021-10-10 18:52:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (106, 'Marvel\\Database\\Models\\Attachment', 106, 'd0709ed8-dd87-4d25-8bba-ee74080288ab', 'default', 'A-3', 'A-3.png', 'image/png', 's3', 's3', 101611, '[]', '{\"thumbnail\": true}', '[]', '[]', 106, '2021-10-10 18:53:31', '2021-10-10 18:53:31');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (107, 'Marvel\\Database\\Models\\Attachment', 107, '49f4a7bb-2b39-4312-bc05-1ef4ab166999', 'default', 'H-1', 'H-1.png', 'image/png', 's3', 's3', 38786, '[]', '{\"thumbnail\": true}', '[]', '[]', 107, '2021-10-10 18:58:44', '2021-10-10 18:58:44');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (108, 'Marvel\\Database\\Models\\Attachment', 108, '87327523-cb78-40c2-90ad-a61b36794fc2', 'default', 'H', 'H.png', 'image/png', 's3', 's3', 39402, '[]', '{\"thumbnail\": true}', '[]', '[]', 108, '2021-10-10 18:59:50', '2021-10-10 18:59:51');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (109, 'Marvel\\Database\\Models\\Attachment', 109, '961053d3-6064-40c4-9017-ef91edbd8edf', 'default', 'H-1', 'H-1.png', 'image/png', 's3', 's3', 38786, '[]', '{\"thumbnail\": true}', '[]', '[]', 109, '2021-10-10 18:59:54', '2021-10-10 18:59:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (110, 'Marvel\\Database\\Models\\Attachment', 110, '8c275923-8513-41bc-b833-cbb3886da543', 'default', 'B', 'B.png', 'image/png', 's3', 's3', 118665, '[]', '{\"thumbnail\": true}', '[]', '[]', 110, '2021-10-10 19:29:51', '2021-10-10 19:29:51');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (111, 'Marvel\\Database\\Models\\Attachment', 111, '71bf4347-c3a1-4457-8246-bcbca0b9e67e', 'default', 'B', 'B.png', 'image/png', 's3', 's3', 118665, '[]', '{\"thumbnail\": true}', '[]', '[]', 111, '2021-10-10 19:30:04', '2021-10-10 19:30:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (112, 'Marvel\\Database\\Models\\Attachment', 112, 'e626ee4e-4da5-4891-aba1-5ca67b26eef8', 'default', 'B-1', 'B-1.png', 'image/png', 's3', 's3', 153430, '[]', '{\"thumbnail\": true}', '[]', '[]', 112, '2021-10-10 19:30:04', '2021-10-10 19:30:05');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (113, 'Marvel\\Database\\Models\\Attachment', 113, '5c2ccddc-7d06-4b7a-9ecd-8f5db0546dff', 'default', 'B-2', 'B-2.png', 'image/png', 's3', 's3', 121711, '[]', '{\"thumbnail\": true}', '[]', '[]', 113, '2021-10-10 19:30:05', '2021-10-10 19:30:05');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (114, 'Marvel\\Database\\Models\\Attachment', 114, '9ef40531-fd4a-486d-b08a-174efd0f5d0c', 'default', 'B-3', 'B-3.png', 'image/png', 's3', 's3', 120153, '[]', '{\"thumbnail\": true}', '[]', '[]', 114, '2021-10-10 19:30:05', '2021-10-10 19:30:06');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (115, 'Marvel\\Database\\Models\\Attachment', 115, '178dea41-d21f-4bcd-a399-269c46788521', 'default', 'B-3', 'B-3.png', 'image/png', 's3', 's3', 104577, '[]', '{\"thumbnail\": true}', '[]', '[]', 115, '2021-10-10 19:32:20', '2021-10-10 19:32:20');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (116, 'Marvel\\Database\\Models\\Attachment', 116, '9d09bbec-1c37-49e5-bbac-2f09315293e4', 'default', 'B', 'B.png', 'image/png', 's3', 's3', 102702, '[]', '{\"thumbnail\": true}', '[]', '[]', 116, '2021-10-10 19:32:27', '2021-10-10 19:32:28');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (117, 'Marvel\\Database\\Models\\Attachment', 117, '6d48343d-b764-4e56-9150-7b8731abf114', 'default', 'B-1', 'B-1.png', 'image/png', 's3', 's3', 85301, '[]', '{\"thumbnail\": true}', '[]', '[]', 117, '2021-10-10 19:32:28', '2021-10-10 19:32:28');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (118, 'Marvel\\Database\\Models\\Attachment', 118, '6f0f9953-eb54-4160-9be2-713276524ce0', 'default', 'B-2', 'B-2.png', 'image/png', 's3', 's3', 103081, '[]', '{\"thumbnail\": true}', '[]', '[]', 118, '2021-10-10 19:32:28', '2021-10-10 19:32:28');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (119, 'Marvel\\Database\\Models\\Attachment', 119, '41895638-01b3-440e-bc4a-307d61718c48', 'default', 'B-3', 'B-3.png', 'image/png', 's3', 's3', 104577, '[]', '{\"thumbnail\": true}', '[]', '[]', 119, '2021-10-10 19:32:28', '2021-10-10 19:32:28');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (120, 'Marvel\\Database\\Models\\Attachment', 120, '531ae2a8-71dc-45a6-bacd-92b4c4656909', 'default', 'A', 'A.png', 'image/png', 's3', 's3', 166034, '[]', '{\"thumbnail\": true}', '[]', '[]', 120, '2021-10-10 19:36:45', '2021-10-10 19:36:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (121, 'Marvel\\Database\\Models\\Attachment', 121, '73548aa6-1bf1-4848-a745-52eb8618f2ba', 'default', 'A', 'A.png', 'image/png', 's3', 's3', 166034, '[]', '{\"thumbnail\": true}', '[]', '[]', 121, '2021-10-10 19:37:15', '2021-10-10 19:37:15');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (122, 'Marvel\\Database\\Models\\Attachment', 122, 'c12ec298-9abc-465d-b144-628e04fe0b23', 'default', 'A-1', 'A-1.png', 'image/png', 's3', 's3', 146188, '[]', '{\"thumbnail\": true}', '[]', '[]', 122, '2021-10-10 19:37:15', '2021-10-10 19:37:15');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (123, 'Marvel\\Database\\Models\\Attachment', 123, 'e27b2f37-cf1b-48b7-b517-327b4eb2030f', 'default', 'A-2', 'A-2.png', 'image/png', 's3', 's3', 164163, '[]', '{\"thumbnail\": true}', '[]', '[]', 123, '2021-10-10 19:37:15', '2021-10-10 19:37:15');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (124, 'Marvel\\Database\\Models\\Attachment', 124, 'ff804049-5467-4508-b25b-a2ee278f1251', 'default', 'A-3', 'A-3.png', 'image/png', 's3', 's3', 120151, '[]', '{\"thumbnail\": true}', '[]', '[]', 124, '2021-10-10 19:37:15', '2021-10-10 19:37:16');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (125, 'Marvel\\Database\\Models\\Attachment', 125, '9ccc7380-9927-4300-8b6a-64e997105c7d', 'default', 'E- 1', 'E--1.png', 'image/png', 's3', 's3', 162494, '[]', '{\"thumbnail\": true}', '[]', '[]', 125, '2021-10-10 19:42:43', '2021-10-10 19:42:44');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (126, 'Marvel\\Database\\Models\\Attachment', 126, 'c93c8aac-dbac-4fdd-b48c-c6f9911165e2', 'default', 'E- 1', 'E--1.png', 'image/png', 's3', 's3', 162494, '[]', '{\"thumbnail\": true}', '[]', '[]', 126, '2021-10-10 19:43:08', '2021-10-10 19:43:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (127, 'Marvel\\Database\\Models\\Attachment', 127, '9d6388a9-1f31-491f-a79e-aea755a2a56e', 'default', 'E- 2', 'E--2.png', 'image/png', 's3', 's3', 205349, '[]', '{\"thumbnail\": true}', '[]', '[]', 127, '2021-10-10 19:43:08', '2021-10-10 19:43:09');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (128, 'Marvel\\Database\\Models\\Attachment', 128, 'af9b9bce-b389-4516-9eb8-8cbb61ccf368', 'default', 'E- 3', 'E--3.png', 'image/png', 's3', 's3', 177260, '[]', '{\"thumbnail\": true}', '[]', '[]', 128, '2021-10-10 19:43:09', '2021-10-10 19:43:09');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (129, 'Marvel\\Database\\Models\\Attachment', 129, '6b0327a0-19ec-44cc-adb3-06161cca79b2', 'default', 'E-4', 'E-4.png', 'image/png', 's3', 's3', 160022, '[]', '{\"thumbnail\": true}', '[]', '[]', 129, '2021-10-10 19:43:09', '2021-10-10 19:43:09');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (130, 'Marvel\\Database\\Models\\Attachment', 130, '57b6f2a1-6607-4f4b-8237-30d970f68065', 'default', 'D - 2', 'D---2.png', 'image/png', 's3', 's3', 91374, '[]', '{\"thumbnail\": true}', '[]', '[]', 130, '2021-10-10 19:46:05', '2021-10-10 19:46:05');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (131, 'Marvel\\Database\\Models\\Attachment', 131, 'a5d72d6d-4896-4370-a4cf-57327b14f218', 'default', 'D - 2', 'D---2.png', 'image/png', 's3', 's3', 91374, '[]', '{\"thumbnail\": true}', '[]', '[]', 131, '2021-10-10 19:46:15', '2021-10-10 19:46:15');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (132, 'Marvel\\Database\\Models\\Attachment', 132, 'c97f534d-937c-4d27-a291-23e7a19add4e', 'default', 'D- 1', 'D--1.png', 'image/png', 's3', 's3', 91533, '[]', '{\"thumbnail\": true}', '[]', '[]', 132, '2021-10-10 19:46:15', '2021-10-10 19:46:15');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (133, 'Marvel\\Database\\Models\\Attachment', 133, 'dd7de49d-ba2f-491c-84ef-e2f9cb213240', 'default', '2', '2.png', 'image/png', 's3', 's3', 26330, '[]', '{\"thumbnail\": true}', '[]', '[]', 133, '2021-10-10 19:48:37', '2021-10-10 19:48:37');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (134, 'Marvel\\Database\\Models\\Attachment', 134, 'f23db25b-362e-44e5-baa6-7e9462f4f5c1', 'default', '2', '2.png', 'image/png', 's3', 's3', 26330, '[]', '{\"thumbnail\": true}', '[]', '[]', 134, '2021-10-10 19:48:42', '2021-10-10 19:48:42');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (135, 'Marvel\\Database\\Models\\Attachment', 135, 'e842d324-768b-45b9-97d7-021bce197862', 'default', 'D', 'D.png', 'image/png', 's3', 's3', 22877, '[]', '{\"thumbnail\": true}', '[]', '[]', 135, '2021-10-10 19:50:52', '2021-10-10 19:50:52');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (136, 'Marvel\\Database\\Models\\Attachment', 136, '17df9eff-02ef-49bf-b182-e98a9be4a2e8', 'default', 'D-1', 'D-1.png', 'image/png', 's3', 's3', 22694, '[]', '{\"thumbnail\": true}', '[]', '[]', 136, '2021-10-10 19:50:57', '2021-10-10 19:50:57');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (137, 'Marvel\\Database\\Models\\Attachment', 137, '21d8fa83-6ba0-4168-af73-267c6b91b692', 'default', 'H-3', 'H-3.png', 'image/png', 's3', 's3', 86616, '[]', '{\"thumbnail\": true}', '[]', '[]', 137, '2021-10-10 21:48:59', '2021-10-10 21:48:59');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (138, 'Marvel\\Database\\Models\\Attachment', 138, '0b0a88bb-2b4e-4cbe-8ba4-d8ecebf10d66', 'default', 'H', 'H.png', 'image/png', 's3', 's3', 86653, '[]', '{\"thumbnail\": true}', '[]', '[]', 138, '2021-10-10 21:49:10', '2021-10-10 21:49:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (139, 'Marvel\\Database\\Models\\Attachment', 139, 'c22bb20b-099b-4078-9702-ecac84e1a1c6', 'default', 'H-1', 'H-1.png', 'image/png', 's3', 's3', 261785, '[]', '{\"thumbnail\": true}', '[]', '[]', 139, '2021-10-10 21:49:11', '2021-10-10 21:49:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (140, 'Marvel\\Database\\Models\\Attachment', 140, 'ec1cec37-4b6b-4795-aaf5-972eb130e1f7', 'default', 'H-2', 'H-2.png', 'image/png', 's3', 's3', 165843, '[]', '{\"thumbnail\": true}', '[]', '[]', 140, '2021-10-10 21:49:11', '2021-10-10 21:49:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (141, 'Marvel\\Database\\Models\\Attachment', 141, '7d75d1ec-d3e3-4b5c-bbd1-1718d267f001', 'default', 'H-3', 'H-3.png', 'image/png', 's3', 's3', 86616, '[]', '{\"thumbnail\": true}', '[]', '[]', 141, '2021-10-10 21:49:11', '2021-10-10 21:49:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (142, 'Marvel\\Database\\Models\\Attachment', 142, 'c75200bf-ccf9-48b5-96cf-2edd72e24464', 'default', 'F', 'F.png', 'image/png', 's3', 's3', 66899, '[]', '{\"thumbnail\": true}', '[]', '[]', 142, '2021-10-11 13:13:35', '2021-10-11 13:13:35');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (143, 'Marvel\\Database\\Models\\Attachment', 143, 'e17c0651-5709-42b6-b13f-17bdb1dc4b9a', 'default', 'F', 'F.png', 'image/png', 's3', 's3', 66899, '[]', '{\"thumbnail\": true}', '[]', '[]', 143, '2021-10-11 13:13:41', '2021-10-11 13:13:42');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (144, 'Marvel\\Database\\Models\\Attachment', 144, '78ba177f-cd7f-4aae-825b-6de90de1d008', 'default', 'F-1', 'F-1.png', 'image/png', 's3', 's3', 67451, '[]', '{\"thumbnail\": true}', '[]', '[]', 144, '2021-10-11 13:13:42', '2021-10-11 13:13:42');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (145, 'Marvel\\Database\\Models\\Attachment', 145, '52fe371c-2624-4a9d-adf7-1e01a41ee08e', 'default', 'E', 'E.png', 'image/png', 's3', 's3', 56941, '[]', '{\"thumbnail\": true}', '[]', '[]', 145, '2021-10-11 13:14:38', '2021-10-11 13:14:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (146, 'Marvel\\Database\\Models\\Attachment', 146, '5917448d-544d-45b2-8739-6d06a35c2316', 'default', 'E', 'E.png', 'image/png', 's3', 's3', 56941, '[]', '{\"thumbnail\": true}', '[]', '[]', 146, '2021-10-11 13:14:44', '2021-10-11 13:14:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (147, 'Marvel\\Database\\Models\\Attachment', 147, '0b1713cf-03be-4312-bc58-22779147ec26', 'default', 'E-1', 'E-1.png', 'image/png', 's3', 's3', 57301, '[]', '{\"thumbnail\": true}', '[]', '[]', 147, '2021-10-11 13:14:45', '2021-10-11 13:14:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (148, 'Marvel\\Database\\Models\\Attachment', 148, '19fa3bda-2d92-4600-87e1-5d710833bed9', 'default', 'women5-1', 'women5-1.jpg', 'image/jpeg', 's3', 's3', 286630, '[]', '{\"thumbnail\": true}', '[]', '[]', 148, '2021-10-11 13:19:40', '2021-10-11 13:19:41');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (149, 'Marvel\\Database\\Models\\Attachment', 149, 'cb7936a9-8aff-4bd0-be0f-ddca24952b14', 'default', 'women5-1', 'women5-1.jpg', 'image/jpeg', 's3', 's3', 286630, '[]', '{\"thumbnail\": true}', '[]', '[]', 149, '2021-10-11 13:19:55', '2021-10-11 13:19:56');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (150, 'Marvel\\Database\\Models\\Attachment', 150, '69775278-bbf9-422b-bcd0-54ad15ec1b4e', 'default', 'women-14-1', 'women-14-1.jpg', 'image/jpeg', 's3', 's3', 286205, '[]', '{\"thumbnail\": true}', '[]', '[]', 150, '2021-10-11 13:19:56', '2021-10-11 13:19:56');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (151, 'Marvel\\Database\\Models\\Attachment', 151, '011e560e-3d30-4335-8157-224da47efc2e', 'default', 'women-17-1', 'women-17-1.jpg', 'image/jpeg', 's3', 's3', 353669, '[]', '{\"thumbnail\": true}', '[]', '[]', 151, '2021-10-11 13:19:56', '2021-10-11 13:19:56');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (152, 'Marvel\\Database\\Models\\Attachment', 152, 'c89619af-156a-446c-b08f-8436194ee3fd', 'default', 'women-18-1', 'women-18-1.jpg', 'image/jpeg', 's3', 's3', 237944, '[]', '{\"thumbnail\": true}', '[]', '[]', 152, '2021-10-11 13:19:56', '2021-10-11 13:19:56');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (153, 'Marvel\\Database\\Models\\Attachment', 153, 'a9d67ba1-1e1e-497b-a04c-34fad7cb80a0', 'default', 'G', 'G.png', 'image/png', 's3', 's3', 162972, '[]', '{\"thumbnail\": true}', '[]', '[]', 153, '2021-10-11 13:54:44', '2021-10-11 13:54:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (154, 'Marvel\\Database\\Models\\Attachment', 154, 'b311cd6b-115b-419c-9719-154784ed6329', 'default', 'G', 'G.png', 'image/png', 's3', 's3', 162972, '[]', '{\"thumbnail\": true}', '[]', '[]', 154, '2021-10-11 13:55:02', '2021-10-11 13:55:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (155, 'Marvel\\Database\\Models\\Attachment', 155, '7c9efd28-91dc-456d-a613-8520f3a68c90', 'default', 'G-1', 'G-1.png', 'image/png', 's3', 's3', 215929, '[]', '{\"thumbnail\": true}', '[]', '[]', 155, '2021-10-11 13:55:03', '2021-10-11 13:55:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (156, 'Marvel\\Database\\Models\\Attachment', 156, '521a542a-c06d-4daf-9db1-0bba5aaa6f34', 'default', 'G-2', 'G-2.png', 'image/png', 's3', 's3', 149888, '[]', '{\"thumbnail\": true}', '[]', '[]', 156, '2021-10-11 13:55:03', '2021-10-11 13:55:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (157, 'Marvel\\Database\\Models\\Attachment', 157, 'c06354a2-25c8-4a0a-9b1c-e12f38a8e6e3', 'default', 'G-3', 'G-3.png', 'image/png', 's3', 's3', 203054, '[]', '{\"thumbnail\": true}', '[]', '[]', 157, '2021-10-11 13:55:04', '2021-10-11 13:55:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (158, 'Marvel\\Database\\Models\\Attachment', 158, '9a142676-3c72-415f-96b8-1f67077fa807', 'default', 'Chawkbazar13', 'Chawkbazar13.png', 'image/png', 's3', 's3', 156222, '[]', '{\"thumbnail\": true}', '[]', '[]', 158, '2021-10-11 14:29:34', '2021-10-11 14:29:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (159, 'Marvel\\Database\\Models\\Attachment', 159, 'ef324965-fbb0-49c9-a8fb-a3ae4bc6c8c9', 'default', 'Chawkbazar13', 'Chawkbazar13.png', 'image/png', 's3', 's3', 156222, '[]', '{\"thumbnail\": true}', '[]', '[]', 159, '2021-10-11 14:29:43', '2021-10-11 14:29:43');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (160, 'Marvel\\Database\\Models\\Attachment', 160, '66d13efa-4692-435c-b9b7-3ae859db21b7', 'default', 'Chawkbazar14', 'Chawkbazar14.png', 'image/png', 's3', 's3', 174715, '[]', '{\"thumbnail\": true}', '[]', '[]', 160, '2021-10-11 14:29:43', '2021-10-11 14:29:43');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (161, 'Marvel\\Database\\Models\\Attachment', 161, '766f65a9-fdc4-46ce-97d1-8c5daccce4af', 'default', 'Chawkbazar15', 'Chawkbazar15.png', 'image/png', 's3', 's3', 128366, '[]', '{\"thumbnail\": true}', '[]', '[]', 161, '2021-10-11 14:29:43', '2021-10-11 14:29:43');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (162, 'Marvel\\Database\\Models\\Attachment', 162, '2012ce91-db37-4e01-b5a6-b687e0bbfa41', 'default', 'Chawkbazar16', 'Chawkbazar16.png', 'image/png', 's3', 's3', 142476, '[]', '{\"thumbnail\": true}', '[]', '[]', 162, '2021-10-11 14:29:43', '2021-10-11 14:29:44');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (163, 'Marvel\\Database\\Models\\Attachment', 163, '07a52749-10e3-4f53-8f9e-fd0d9aa25f52', 'default', 'Watches-7', 'Watches-7.png', 'image/png', 's3', 's3', 41385, '[]', '{\"thumbnail\": true}', '[]', '[]', 163, '2021-10-11 14:32:08', '2021-10-11 14:32:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (164, 'Marvel\\Database\\Models\\Attachment', 164, 'cfc7612f-faf0-41a3-84c1-34f97a612d2b', 'default', 'Watches-15', 'Watches-15.jpg', 'image/jpeg', 's3', 's3', 86243, '[]', '{\"thumbnail\": true}', '[]', '[]', 164, '2021-10-11 14:33:03', '2021-10-11 14:33:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (165, 'Marvel\\Database\\Models\\Attachment', 165, '9314f01e-a225-4ed4-9697-1eba941d6875', 'default', 'Watches-10', 'Watches-10.jpg', 'image/jpeg', 's3', 's3', 87177, '[]', '{\"thumbnail\": true}', '[]', '[]', 165, '2021-10-11 14:36:34', '2021-10-11 14:36:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (166, 'Marvel\\Database\\Models\\Attachment', 166, 'e8eb3a32-b126-4922-84ff-2990f1f16cae', 'default', 'Watches-1-1', 'Watches-1-1.jpg', 'image/jpeg', 's3', 's3', 87131, '[]', '{\"thumbnail\": true}', '[]', '[]', 166, '2021-10-11 14:36:39', '2021-10-11 14:36:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (167, 'Marvel\\Database\\Models\\Attachment', 167, '0f052264-eabd-46b8-a1ff-530bb791f3a6', 'default', 'Women', 'Women.png', 'image/png', 's3', 's3', 174228, '[]', '{\"thumbnail\": true}', '[]', '[]', 167, '2021-10-11 14:38:13', '2021-10-11 14:38:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (168, 'Marvel\\Database\\Models\\Attachment', 168, '7ad792af-cb18-4b99-8ff6-fa51459eb10c', 'default', 'Women-1', 'Women-1.png', 'image/png', 's3', 's3', 145531, '[]', '{\"thumbnail\": true}', '[]', '[]', 168, '2021-10-11 14:38:21', '2021-10-11 14:38:21');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (169, 'Marvel\\Database\\Models\\Attachment', 169, 'b555c201-9fa5-401f-9a9b-feb1d21be4ee', 'default', 'Women-2', 'Women-2.png', 'image/png', 's3', 's3', 179435, '[]', '{\"thumbnail\": true}', '[]', '[]', 169, '2021-10-11 14:38:21', '2021-10-11 14:38:21');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (170, 'Marvel\\Database\\Models\\Attachment', 170, '2a7729cc-5670-4061-8f7a-fef2140d67ab', 'default', 'Women-3', 'Women-3.png', 'image/png', 's3', 's3', 251358, '[]', '{\"thumbnail\": true}', '[]', '[]', 170, '2021-10-11 14:38:21', '2021-10-11 14:38:21');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (171, 'Marvel\\Database\\Models\\Attachment', 171, 'ecb0f276-9e60-4bc4-95fd-73bf2068ed62', 'default', 'F-2', 'F-2.png', 'image/png', 's3', 's3', 159627, '[]', '{\"thumbnail\": true}', '[]', '[]', 171, '2021-10-11 14:40:03', '2021-10-11 14:40:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (172, 'Marvel\\Database\\Models\\Attachment', 172, '9caff4b7-6680-4af3-b812-928ae7df54c7', 'default', 'F-3', 'F-3.png', 'image/png', 's3', 's3', 153376, '[]', '{\"thumbnail\": true}', '[]', '[]', 172, '2021-10-11 14:40:14', '2021-10-11 14:40:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (173, 'Marvel\\Database\\Models\\Attachment', 173, '50109951-4dff-4a3c-80f4-2cdb47be573f', 'default', 'C', 'C.png', 'image/png', 's3', 's3', 105937, '[]', '{\"thumbnail\": true}', '[]', '[]', 173, '2021-10-11 14:41:33', '2021-10-11 14:41:33');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (174, 'Marvel\\Database\\Models\\Attachment', 174, 'bd04a93e-a55b-4aea-aab1-d8d1456e4559', 'default', 'C-1', 'C-1.png', 'image/png', 's3', 's3', 116660, '[]', '{\"thumbnail\": true}', '[]', '[]', 174, '2021-10-11 14:42:02', '2021-10-11 14:42:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (175, 'Marvel\\Database\\Models\\Attachment', 175, '44bd357f-a062-43fb-8600-b5841eaf2cce', 'default', 'C-2', 'C-2.png', 'image/png', 's3', 's3', 105490, '[]', '{\"thumbnail\": true}', '[]', '[]', 175, '2021-10-11 14:42:03', '2021-10-11 14:42:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (176, 'Marvel\\Database\\Models\\Attachment', 176, '1ab95324-3b0f-4a81-8f66-56afcdc3d47e', 'default', 'C-3', 'C-3.png', 'image/png', 's3', 's3', 118729, '[]', '{\"thumbnail\": true}', '[]', '[]', 176, '2021-10-11 14:42:04', '2021-10-11 14:42:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (177, 'Marvel\\Database\\Models\\Attachment', 177, 'b57d2efc-c994-412e-841c-503b7d8b2e2d', 'default', 'j', 'j.png', 'image/png', 's3', 's3', 89179, '[]', '{\"thumbnail\": true}', '[]', '[]', 177, '2021-10-11 14:42:51', '2021-10-11 14:42:51');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (178, 'Marvel\\Database\\Models\\Attachment', 178, '38f2f007-d773-48f8-a371-479d4272f091', 'default', 'j-1', 'j-1.png', 'image/png', 's3', 's3', 88244, '[]', '{\"thumbnail\": true}', '[]', '[]', 178, '2021-10-11 14:42:54', '2021-10-11 14:42:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (179, 'Marvel\\Database\\Models\\Attachment', 179, 'f0031f01-8b5e-45bc-9b8b-befb9014b05c', 'default', 'Backpack-4', 'Backpack-4.jpg', 'image/jpeg', 's3', 's3', 93976, '[]', '{\"thumbnail\": true}', '[]', '[]', 179, '2021-10-23 13:01:43', '2021-10-23 13:01:43');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (180, 'Marvel\\Database\\Models\\Attachment', 180, 'e4f8b2c0-d951-4612-b04b-5dfbb504d192', 'default', 'Footwear-1-1', 'Footwear-1-1.jpg', 'image/jpeg', 's3', 's3', 85171, '[]', '{\"thumbnail\": true}', '[]', '[]', 180, '2021-10-23 13:09:07', '2021-10-23 13:09:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (181, 'Marvel\\Database\\Models\\Attachment', 181, '256fb2ee-bb38-4448-baa6-d9bcb11ce003', 'default', 'Backpack-8', 'Backpack-8.jpg', 'image/jpeg', 's3', 's3', 151949, '[]', '{\"thumbnail\": true}', '[]', '[]', 181, '2021-10-23 13:45:54', '2021-10-23 13:45:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (182, 'Marvel\\Database\\Models\\Attachment', 182, '9f8f223f-ff96-4f53-a2f3-6791b473e27b', 'default', 'Footwear-3-1', 'Footwear-3-1.jpg', 'image/jpeg', 's3', 's3', 90207, '[]', '{\"thumbnail\": true}', '[]', '[]', 182, '2021-10-23 13:48:31', '2021-10-23 13:48:32');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (183, 'Marvel\\Database\\Models\\Attachment', 183, 'e3e61ab1-beeb-4864-88d8-0761110cfe70', 'default', 'Footwear-2-1', 'Footwear-2-1.jpg', 'image/jpeg', 's3', 's3', 90615, '[]', '{\"thumbnail\": true}', '[]', '[]', 183, '2021-10-23 13:48:49', '2021-10-23 13:48:49');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (184, 'Marvel\\Database\\Models\\Attachment', 184, '1104a69d-cf6a-49b5-871e-5ca4fadca236', 'default', 'Sunglasess-12-1', 'Sunglasess-12-1.jpg', 'image/jpeg', 's3', 's3', 59210, '[]', '{\"thumbnail\": true}', '[]', '[]', 184, '2021-10-23 16:17:44', '2021-10-23 16:17:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (185, 'Marvel\\Database\\Models\\Attachment', 185, '90ab13fb-c1e8-469b-8e55-240739462a8e', 'default', 'Sunglasess-13-1', 'Sunglasess-13-1.jpg', 'image/jpeg', 's3', 's3', 59066, '[]', '{\"thumbnail\": true}', '[]', '[]', 185, '2021-10-23 16:17:53', '2021-10-23 16:17:53');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (186, 'Marvel\\Database\\Models\\Attachment', 186, '8f8ffe5c-9f6c-4075-9e65-f5dc861719e0', 'default', 'kids-11', 'kids-11.jpg', 'image/jpeg', 's3', 's3', 153687, '[]', '{\"thumbnail\": true}', '[]', '[]', 186, '2021-10-23 19:54:10', '2021-10-23 19:54:10');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (187, 'Marvel\\Database\\Models\\Attachment', 187, 'c175bbf0-70e1-48d3-8d81-af1d578e783e', 'default', 'kids-25', 'kids-25.jpg', 'image/jpeg', 's3', 's3', 153697, '[]', '{\"thumbnail\": true}', '[]', '[]', 187, '2021-10-23 19:54:14', '2021-10-23 19:54:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (188, 'Marvel\\Database\\Models\\Attachment', 188, '4ab097c0-ae5a-463f-8dea-c8eef04e8b42', 'default', 'Backpack-1', 'Backpack-1.jpg', 'image/jpeg', 's3', 's3', 148089, '[]', '{\"thumbnail\": true}', '[]', '[]', 188, '2021-10-23 20:12:44', '2021-10-23 20:12:44');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (189, 'Marvel\\Database\\Models\\Attachment', 189, '3555ca4c-404c-4c01-ad15-28a8d3ae8b63', 'default', 'Footwear-4-1', 'Footwear-4-1.jpg', 'image/jpeg', 's3', 's3', 98624, '[]', '{\"thumbnail\": true}', '[]', '[]', 189, '2021-10-23 20:16:20', '2021-10-23 20:16:20');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (190, 'Marvel\\Database\\Models\\Attachment', 190, '8631100b-06c4-4f73-9a77-50bc55899449', 'default', 'Footwear-5', 'Footwear-5.jpg', 'image/jpeg', 's3', 's3', 98618, '[]', '{\"thumbnail\": true}', '[]', '[]', 190, '2021-10-23 20:16:24', '2021-10-23 20:16:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (191, 'Marvel\\Database\\Models\\Attachment', 191, '9bbac096-8ed4-4c74-9a4a-76ebfd942209', 'default', 'Backpack-5', 'Backpack-5.jpg', 'image/jpeg', 's3', 's3', 129164, '[]', '{\"thumbnail\": true}', '[]', '[]', 191, '2021-10-23 20:20:26', '2021-10-23 20:20:26');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (192, 'Marvel\\Database\\Models\\Attachment', 192, '3bae879c-b735-42ff-a058-af2bd241f547', 'default', 'women9-1', 'women9-1.jpg', 'image/jpeg', 's3', 's3', 233916, '[]', '{\"thumbnail\": true}', '[]', '[]', 192, '2021-10-23 20:30:08', '2021-10-23 20:30:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (193, 'Marvel\\Database\\Models\\Attachment', 193, '031a6b82-8829-474f-9140-2f6bb6f48ba5', 'default', 'women-22-1', 'women-22-1.jpg', 'image/jpeg', 's3', 's3', 234207, '[]', '{\"thumbnail\": true}', '[]', '[]', 193, '2021-10-23 20:30:11', '2021-10-23 20:30:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (194, 'Marvel\\Database\\Models\\Attachment', 194, 'eebbb509-8bee-4134-b11d-7a0fc4f07a0b', 'default', 'women10@2x-1', 'women10@2x-1.jpg', 'image/jpeg', 's3', 's3', 440922, '[]', '{\"thumbnail\": true}', '[]', '[]', 194, '2021-10-23 21:09:12', '2021-10-23 21:09:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (195, 'Marvel\\Database\\Models\\Attachment', 195, '55c7fe01-88c4-4e7e-af8a-dc604c2909ff', 'default', 'women-13-1', 'women-13-1.jpg', 'image/jpeg', 's3', 's3', 133361, '[]', '{\"thumbnail\": true}', '[]', '[]', 195, '2021-10-23 21:09:16', '2021-10-23 21:09:16');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (196, 'Marvel\\Database\\Models\\Attachment', 196, '63cc9398-0709-409b-b5d8-b03cd4a0493f', 'default', 'kids-4', 'kids-4.jpg', 'image/jpeg', 's3', 's3', 176721, '[]', '{\"thumbnail\": true}', '[]', '[]', 196, '2021-10-23 21:11:48', '2021-10-23 21:11:48');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (197, 'Marvel\\Database\\Models\\Attachment', 197, '267b5b3c-2ef7-4478-9e06-751c24a9a2bf', 'default', 'kids-5', 'kids-5.jpg', 'image/jpeg', 's3', 's3', 176416, '[]', '{\"thumbnail\": true}', '[]', '[]', 197, '2021-10-23 21:11:52', '2021-10-23 21:11:52');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (198, 'Marvel\\Database\\Models\\Attachment', 198, 'd5bc0067-4f6b-4fbb-832e-fabe0d09ee54', 'default', 'Grid-14', 'Grid-14.png', 'image/png', 's3', 's3', 375894, '[]', '{\"thumbnail\": true}', '[]', '[]', 198, '2021-10-23 21:16:05', '2021-10-23 21:16:05');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (199, 'Marvel\\Database\\Models\\Attachment', 199, '8b0cec88-2220-43bd-a9f6-5081687b2acc', 'default', 'Chawkbazar26', 'Chawkbazar26.png', 'image/png', 's3', 's3', 115114, '[]', '{\"thumbnail\": true}', '[]', '[]', 199, '2021-10-23 21:16:12', '2021-10-23 21:16:13');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (200, 'Marvel\\Database\\Models\\Attachment', 200, 'f904de66-7d60-4626-991d-6f71b8d05ae5', 'default', 'Watches-16', 'Watches-16.jpg', 'image/jpeg', 's3', 's3', 72716, '[]', '{\"thumbnail\": true}', '[]', '[]', 200, '2021-10-23 21:18:22', '2021-10-23 21:18:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (201, 'Marvel\\Database\\Models\\Attachment', 201, '80aa872c-5f79-43f7-a9a0-d3ed16f8bb6c', 'default', 'Watches-16', 'Watches-16.jpg', 'image/jpeg', 's3', 's3', 72716, '[]', '{\"thumbnail\": true}', '[]', '[]', 201, '2021-10-23 21:18:25', '2021-10-23 21:18:25');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (202, 'Marvel\\Database\\Models\\Attachment', 202, 'bee26d39-8b1e-4eaf-b674-969c76ff6d07', 'default', 'kids-17', 'kids-17.jpg', 'image/jpeg', 's3', 's3', 142513, '[]', '{\"thumbnail\": true}', '[]', '[]', 202, '2021-10-23 21:20:07', '2021-10-23 21:20:07');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (203, 'Marvel\\Database\\Models\\Attachment', 203, 'b92b00d6-04f8-473c-bfa9-d993f315c11b', 'default', 'kids-23', 'kids-23.jpg', 'image/jpeg', 's3', 's3', 142426, '[]', '{\"thumbnail\": true}', '[]', '[]', 203, '2021-10-23 21:20:11', '2021-10-23 21:20:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (204, 'Marvel\\Database\\Models\\Attachment', 204, '6f405f94-db87-45d8-ab79-324f209b9006', 'default', 'Sunglasess-15-1', 'Sunglasess-15-1.jpg', 'image/jpeg', 's3', 's3', 49004, '[]', '{\"thumbnail\": true}', '[]', '[]', 204, '2021-10-23 21:22:08', '2021-10-23 21:22:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (205, 'Marvel\\Database\\Models\\Attachment', 205, '85ec3a83-d8ce-4fec-a2c5-ebdc99380145', 'default', 'Sunglasess-5-1', 'Sunglasess-5-1.jpg', 'image/jpeg', 's3', 's3', 48174, '[]', '{\"thumbnail\": true}', '[]', '[]', 205, '2021-10-23 21:23:58', '2021-10-23 21:23:58');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (206, 'Marvel\\Database\\Models\\Attachment', 206, '96197b45-d274-4c1e-abb7-2727a6a01493', 'default', 'Sunglasess-6', 'Sunglasess-6.jpg', 'image/jpeg', 's3', 's3', 48089, '[]', '{\"thumbnail\": true}', '[]', '[]', 206, '2021-10-23 21:24:02', '2021-10-23 21:24:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (207, 'Marvel\\Database\\Models\\Attachment', 207, '650fc476-8595-4c22-998f-6a0fcf40b3b2', 'default', 'Chawkbazar13', 'Chawkbazar13.png', 'image/png', 's3', 's3', 156222, '[]', '{\"thumbnail\": true}', '[]', '[]', 207, '2021-10-23 21:27:11', '2021-10-23 21:27:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (208, 'Marvel\\Database\\Models\\Attachment', 208, '905d702c-c700-4d4a-a0c0-9941964463d5', 'default', 'Chawkbazar14', 'Chawkbazar14.png', 'image/png', 's3', 's3', 174715, '[]', '{\"thumbnail\": true}', '[]', '[]', 208, '2021-10-23 21:27:14', '2021-10-23 21:27:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (209, 'Marvel\\Database\\Models\\Attachment', 209, '8d1dacea-8dbd-42bf-9860-d43b1512bcbd', 'default', 'Footwear-17', 'Footwear-17.jpg', 'image/jpeg', 's3', 's3', 104214, '[]', '{\"thumbnail\": true}', '[]', '[]', 209, '2021-10-23 21:32:22', '2021-10-23 21:32:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (210, 'Marvel\\Database\\Models\\Attachment', 210, '8560d880-a5e2-40c5-b315-7999cb352c5c', 'default', 'mens-9', 'mens-9.jpg', 'image/jpeg', 's3', 's3', 123759, '[]', '{\"thumbnail\": true}', '[]', '[]', 210, '2021-10-23 21:35:05', '2021-10-23 21:35:05');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (211, 'Marvel\\Database\\Models\\Attachment', 211, '26af81dc-e940-49dd-a70b-4b57a667bb98', 'default', 'mens-13', 'mens-13.jpg', 'image/jpeg', 's3', 's3', 92148, '[]', '{\"thumbnail\": true}', '[]', '[]', 211, '2021-10-23 21:35:11', '2021-10-23 21:35:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (212, 'Marvel\\Database\\Models\\Attachment', 212, '56d2457b-870c-4eec-8bd4-a6b5ee685838', 'default', 'Backpack-6', 'Backpack-6.jpg', 'image/jpeg', 's3', 's3', 170325, '[]', '{\"thumbnail\": true}', '[]', '[]', 212, '2021-10-23 21:38:52', '2021-10-23 21:38:53');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (213, 'Marvel\\Database\\Models\\Attachment', 213, '02d63f7e-c487-4129-9293-3c1e6da85dc7', 'default', 'Chawkbazar17', 'Chawkbazar17.png', 'image/png', 's3', 's3', 195028, '[]', '{\"thumbnail\": true}', '[]', '[]', 213, '2021-10-23 21:41:38', '2021-10-23 21:41:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (214, 'Marvel\\Database\\Models\\Attachment', 214, '0f571034-0326-48fe-ba3d-7953b4a642c1', 'default', 'Chawkbazar20', 'Chawkbazar20.png', 'image/png', 's3', 's3', 199843, '[]', '{\"thumbnail\": true}', '[]', '[]', 214, '2021-10-23 21:41:42', '2021-10-23 21:41:42');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (215, 'Marvel\\Database\\Models\\Attachment', 215, '2379907f-2f2d-4e98-8cb2-a8e5255373b0', 'default', 'Footwear-9', 'Footwear-9.jpg', 'image/jpeg', 's3', 's3', 87066, '[]', '{\"thumbnail\": true}', '[]', '[]', 215, '2021-10-23 21:45:53', '2021-10-23 21:45:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (216, 'Marvel\\Database\\Models\\Attachment', 216, 'f03c9383-37e9-4864-9597-762bc9219b54', 'default', 'Footwear-8', 'Footwear-8.jpg', 'image/jpeg', 's3', 's3', 87079, '[]', '{\"thumbnail\": true}', '[]', '[]', 216, '2021-10-23 21:45:58', '2021-10-23 21:45:58');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (217, 'Marvel\\Database\\Models\\Attachment', 217, 'f4a65632-52a1-408f-be2d-ba7ad4bdff41', 'default', 'mens-2', 'mens-2.jpg', 'image/jpeg', 's3', 's3', 214505, '[]', '{\"thumbnail\": true}', '[]', '[]', 217, '2021-10-23 21:50:34', '2021-10-23 21:50:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (218, 'Marvel\\Database\\Models\\Attachment', 218, '45cc2e4e-1f02-48fd-ab89-96cb2c9f2a1f', 'default', 'mens-7', 'mens-7.jpg', 'image/jpeg', 's3', 's3', 224468, '[]', '{\"thumbnail\": true}', '[]', '[]', 218, '2021-10-23 21:50:38', '2021-10-23 21:50:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (219, 'Marvel\\Database\\Models\\Attachment', 219, '5c667594-c8a3-450d-a69c-71940147c9f7', 'default', 'Watches-6-1', 'Watches-6-1.jpg', 'image/jpeg', 's3', 's3', 101135, '[]', '{\"thumbnail\": true}', '[]', '[]', 219, '2021-10-23 21:54:47', '2021-10-23 21:54:47');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (220, 'Marvel\\Database\\Models\\Attachment', 220, '39fe9d49-eded-4904-81d7-f95275d167ab', 'default', 'Watches-7-1', 'Watches-7-1.jpg', 'image/jpeg', 's3', 's3', 101172, '[]', '{\"thumbnail\": true}', '[]', '[]', 220, '2021-10-23 21:54:51', '2021-10-23 21:54:51');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (221, 'Marvel\\Database\\Models\\Attachment', 221, '625e670b-bcca-4284-aaf8-ea0e85595eae', 'default', 'Footwear-18', 'Footwear-18.jpg', 'image/jpeg', 's3', 's3', 108507, '[]', '{\"thumbnail\": true}', '[]', '[]', 221, '2021-10-23 21:57:11', '2021-10-23 21:57:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (222, 'Marvel\\Database\\Models\\Attachment', 222, 'cae70b88-4091-4748-a1d5-1df5d970b22b', 'default', 'Footwear-19', 'Footwear-19.jpg', 'image/jpeg', 's3', 's3', 108403, '[]', '{\"thumbnail\": true}', '[]', '[]', 222, '2021-10-23 21:57:14', '2021-10-23 21:57:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (223, 'Marvel\\Database\\Models\\Attachment', 223, 'd1752da1-516b-46be-bd93-87cad20336ca', 'default', 'Casual-Wear-4-1', 'Casual-Wear-4-1.jpg', 'image/jpeg', 's3', 's3', 271254, '[]', '{\"thumbnail\": true}', '[]', '[]', 223, '2021-10-23 22:00:46', '2021-10-23 22:00:46');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (224, 'Marvel\\Database\\Models\\Attachment', 224, '4241eda7-ebab-4b44-bc78-d41566f58eab', 'default', 'Casual-Wear-5-1', 'Casual-Wear-5-1.jpg', 'image/jpeg', 's3', 's3', 341697, '[]', '{\"thumbnail\": true}', '[]', '[]', 224, '2021-10-23 22:01:09', '2021-10-23 22:01:09');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (225, 'Marvel\\Database\\Models\\Attachment', 225, '59d7e2ee-9a26-4736-8fce-9f305eddfc77', 'default', 'Backpack-7', 'Backpack-7.jpg', 'image/jpeg', 's3', 's3', 130531, '[]', '{\"thumbnail\": true}', '[]', '[]', 225, '2021-10-23 22:04:37', '2021-10-23 22:04:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (226, 'Marvel\\Database\\Models\\Attachment', 226, '913d5e66-9852-496c-ab77-2d823bbb9836', 'default', 'Sunglasess-2-1', 'Sunglasess-2-1.jpg', 'image/jpeg', 's3', 's3', 56380, '[]', '{\"thumbnail\": true}', '[]', '[]', 226, '2021-10-23 22:08:09', '2021-10-23 22:08:09');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (227, 'Marvel\\Database\\Models\\Attachment', 227, '3a713933-2306-4e9c-b47e-a0b0a383879f', 'default', 'Sunglasess-3-1', 'Sunglasess-3-1.jpg', 'image/jpeg', 's3', 's3', 56209, '[]', '{\"thumbnail\": true}', '[]', '[]', 227, '2021-10-23 22:08:14', '2021-10-23 22:08:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (228, 'Marvel\\Database\\Models\\Attachment', 228, '3eabba42-43ce-4186-9b74-ebde3eba607c', 'default', 'Chawkbazar22', 'Chawkbazar22.png', 'image/png', 's3', 's3', 172407, '[]', '{\"thumbnail\": true}', '[]', '[]', 228, '2021-10-23 22:10:37', '2021-10-23 22:10:37');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (229, 'Marvel\\Database\\Models\\Attachment', 229, 'ed2e2d6e-ab71-475b-987b-17948d0ae377', 'default', 'Chawkbazar21', 'Chawkbazar21.png', 'image/png', 's3', 's3', 173733, '[]', '{\"thumbnail\": true}', '[]', '[]', 229, '2021-10-23 22:10:41', '2021-10-23 22:10:41');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (230, 'Marvel\\Database\\Models\\Attachment', 230, '2c39c6de-0e1a-4910-971a-79dfe4dd160d', 'default', 'Watches-4-1', 'Watches-4-1.jpg', 'image/jpeg', 's3', 's3', 80464, '[]', '{\"thumbnail\": true}', '[]', '[]', 230, '2021-10-23 22:13:34', '2021-10-23 22:13:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (231, 'Marvel\\Database\\Models\\Attachment', 231, '958234f7-5736-4f1e-b2ed-1c61421218f4', 'default', 'Watches-4-1', 'Watches-4-1.jpg', 'image/jpeg', 's3', 's3', 80464, '[]', '{\"thumbnail\": true}', '[]', '[]', 231, '2021-10-23 22:13:38', '2021-10-23 22:13:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (232, 'Marvel\\Database\\Models\\Attachment', 232, '7fe19180-4201-4148-b9e3-3f88ed98dde7', 'default', 'Casual-Wear-1-1', 'Casual-Wear-1-1.jpg', 'image/jpeg', 's3', 's3', 210409, '[]', '{\"thumbnail\": true}', '[]', '[]', 232, '2021-10-23 22:16:37', '2021-10-23 22:16:37');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (233, 'Marvel\\Database\\Models\\Attachment', 233, 'e45ba2aa-45df-417e-b6f9-b6affd19b965', 'default', 'Casual-Wear-8', 'Casual-Wear-8.jpg', 'image/jpeg', 's3', 's3', 210426, '[]', '{\"thumbnail\": true}', '[]', '[]', 233, '2021-10-23 22:16:41', '2021-10-23 22:16:41');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (234, 'Marvel\\Database\\Models\\Attachment', 234, '6c13e390-e2c5-41c1-a5f9-196d0b07a913', 'default', 'Chawkbazar1', 'Chawkbazar1.png', 'image/png', 's3', 's3', 157232, '[]', '{\"thumbnail\": true}', '[]', '[]', 234, '2021-10-23 22:19:04', '2021-10-23 22:19:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (235, 'Marvel\\Database\\Models\\Attachment', 235, '073d41a9-b117-4f82-964a-a7d0cc05afa1', 'default', 'Chawkbazar2', 'Chawkbazar2.png', 'image/png', 's3', 's3', 172083, '[]', '{\"thumbnail\": true}', '[]', '[]', 235, '2021-10-23 22:19:08', '2021-10-23 22:19:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (236, 'Marvel\\Database\\Models\\Attachment', 236, 'c008c075-f963-4e62-8c69-0f8645d32ada', 'default', 'kids-1', 'kids-1.jpg', 'image/jpeg', 's3', 's3', 240482, '[]', '{\"thumbnail\": true}', '[]', '[]', 236, '2021-10-23 22:21:07', '2021-10-23 22:21:07');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (237, 'Marvel\\Database\\Models\\Attachment', 237, '459da7af-da15-4dd4-8911-ec56b742ee8e', 'default', 'kids-3', 'kids-3.jpg', 'image/jpeg', 's3', 's3', 193979, '[]', '{\"thumbnail\": true}', '[]', '[]', 237, '2021-10-23 22:21:10', '2021-10-23 22:21:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (238, 'Marvel\\Database\\Models\\Attachment', 238, 'ed43f42d-bb32-4509-88c6-232b17751f67', 'default', 'blaze-fashion', 'blaze-fashion.png', 'image/png', 's3', 's3', 4396, '[]', '{\"thumbnail\": true}', '[]', '[]', 238, '2021-10-25 07:17:45', '2021-10-25 07:17:46');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (239, 'Marvel\\Database\\Models\\Attachment', 239, '058428fd-16c0-42f4-9f1b-75930d1db83d', 'default', 'club-shoes', 'club-shoes.png', 'image/png', 's3', 's3', 4099, '[]', '{\"thumbnail\": true}', '[]', '[]', 239, '2021-10-25 07:19:30', '2021-10-25 07:19:31');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (240, 'Marvel\\Database\\Models\\Attachment', 240, 'dcf5e5db-0d24-4de8-911f-a614c9ee5b4d', 'default', 'elegance', 'elegance.png', 'image/png', 's3', 's3', 4140, '[]', '{\"thumbnail\": true}', '[]', '[]', 240, '2021-10-25 07:19:44', '2021-10-25 07:19:44');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (241, 'Marvel\\Database\\Models\\Attachment', 241, '5ae65d7a-db2a-4690-9542-f1d2a4b784dd', 'default', 'fashadil', 'fashadil.png', 'image/png', 's3', 's3', 4920, '[]', '{\"thumbnail\": true}', '[]', '[]', 241, '2021-10-25 07:20:12', '2021-10-25 07:20:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (242, 'Marvel\\Database\\Models\\Attachment', 242, '28df1088-e666-4689-8f8c-2d5648635e86', 'default', 'fusion', 'fusion.png', 'image/png', 's3', 's3', 3722, '[]', '{\"thumbnail\": true}', '[]', '[]', 242, '2021-10-25 07:20:21', '2021-10-25 07:20:21');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (243, 'Marvel\\Database\\Models\\Attachment', 243, 'edcf670d-65e7-4d32-8283-8d17eb237b97', 'default', 'hoppister', 'hoppister.png', 'image/png', 's3', 's3', 3895, '[]', '{\"thumbnail\": true}', '[]', '[]', 243, '2021-10-25 07:20:46', '2021-10-25 07:20:46');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (244, 'Marvel\\Database\\Models\\Attachment', 244, '84a50245-9896-4e04-8443-94e484d69795', 'default', 'hunter-shoes', 'hunter-shoes.png', 'image/png', 's3', 's3', 4868, '[]', '{\"thumbnail\": true}', '[]', '[]', 244, '2021-10-25 07:20:54', '2021-10-25 07:20:55');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (245, 'Marvel\\Database\\Models\\Attachment', 245, '1b141d53-295a-4a25-97b6-84ca75c70c15', 'default', 'shovia', 'shovia.png', 'image/png', 's3', 's3', 3814, '[]', '{\"thumbnail\": true}', '[]', '[]', 245, '2021-10-25 07:21:03', '2021-10-25 07:21:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (246, 'Marvel\\Database\\Models\\Attachment', 246, 'bc18606f-8d78-4142-aa88-45cb02553114', 'default', '2x2x-thumbnail', '2x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 7616, '[]', '{\"thumbnail\": true}', '[]', '[]', 246, '2021-10-25 07:35:16', '2021-10-25 07:35:16');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (247, 'Marvel\\Database\\Models\\Attachment', 247, '8dedabb0-d891-480e-9c30-d204f48c14da', 'default', '4x2x-thumbnail', '4x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 8640, '[]', '{\"thumbnail\": true}', '[]', '[]', 247, '2021-10-25 07:37:12', '2021-10-25 07:37:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (248, 'Marvel\\Database\\Models\\Attachment', 248, '3a585487-ae1d-423a-88f0-85fac0f0dfd0', 'default', '5x2x-thumbnail', '5x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 7550, '[]', '{\"thumbnail\": true}', '[]', '[]', 248, '2021-10-25 07:39:11', '2021-10-25 07:39:11');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (249, 'Marvel\\Database\\Models\\Attachment', 249, 'd3b8a812-3be5-4eba-a469-ac4831f4aff4', 'default', '6x2x-thumbnail', '6x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 8827, '[]', '{\"thumbnail\": true}', '[]', '[]', 249, '2021-10-25 07:39:48', '2021-10-25 07:39:48');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (250, 'Marvel\\Database\\Models\\Attachment', 250, 'c876f3d3-9be9-47a7-91f8-e7820d9131a5', 'default', '8x2x-thumbnail', '8x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 8050, '[]', '{\"thumbnail\": true}', '[]', '[]', 250, '2021-10-25 12:35:01', '2021-10-25 12:35:01');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (251, 'Marvel\\Database\\Models\\Attachment', 251, 'fa1d9f4c-d25a-47ed-978c-a8d32155f446', 'default', '10x2x-thumbnail', '10x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 8452, '[]', '{\"thumbnail\": true}', '[]', '[]', 251, '2021-10-25 12:36:20', '2021-10-25 12:36:20');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (252, 'Marvel\\Database\\Models\\Attachment', 252, 'e51f205d-8f6d-4d45-b042-7f78efbad12c', 'default', '12x2x-thumbnail', '12x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 8981, '[]', '{\"thumbnail\": true}', '[]', '[]', 252, '2021-10-25 12:37:22', '2021-10-25 12:37:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (253, 'Marvel\\Database\\Models\\Attachment', 253, '9e6bfdca-15da-4add-9ef0-4968b7017be1', 'default', '15x2x-thumbnail', '15x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 7708, '[]', '{\"thumbnail\": true}', '[]', '[]', 253, '2021-10-25 12:37:43', '2021-10-25 12:37:44');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (254, 'Marvel\\Database\\Models\\Attachment', 254, '551437d3-6df7-48e8-a6d6-543e21fdd4bc', 'default', '18x2x-thumbnail', '18x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 8445, '[]', '{\"thumbnail\": true}', '[]', '[]', 254, '2021-10-25 12:39:01', '2021-10-25 12:39:01');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (255, 'Marvel\\Database\\Models\\Attachment', 255, 'cbafa86f-6653-4498-ac93-9351214e3332', 'default', '20x2x-thumbnail', '20x2x-thumbnail.jpg', 'image/jpeg', 's3', 's3', 9076, '[]', '{\"thumbnail\": true}', '[]', '[]', 255, '2021-10-25 12:39:38', '2021-10-25 12:39:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (256, 'Marvel\\Database\\Models\\Attachment', 256, '52afee64-6b2e-4e66-b09c-264bd92b3042', 'default', 'logo final2x', 'logo-final2x.png', 'image/png', 's3', 's3', 5922, '[]', '{\"thumbnail\": true}', '[]', '[]', 256, '2021-10-27 09:13:12', '2021-10-27 09:13:13');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (257, 'Marvel\\Database\\Models\\Attachment', 257, '5f59488f-5ea3-49fe-94f0-c338c842f129', 'default', 'logo final', 'logo-final.png', 'image/png', 's3', 's3', 2799, '[]', '{\"thumbnail\": true}', '[]', '[]', 257, '2021-10-27 09:13:26', '2021-10-27 09:13:26');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (258, 'Marvel\\Database\\Models\\Attachment', 258, '9cae36a3-799b-4d11-97c3-837ff4bb6091', 'default', 'logo final2x', 'logo-final2x.png', 'image/png', 's3', 's3', 5922, '[]', '{\"thumbnail\": true}', '[]', '[]', 258, '2021-10-27 09:13:39', '2021-10-27 09:13:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (259, 'Marvel\\Database\\Models\\Attachment', 259, 'e930a646-bb3e-460a-866e-5973a3e0e5c3', 'default', 'Group 36179', 'Group-36179.png', 'image/png', 's3', 's3', 10469, '[]', '{\"thumbnail\": true}', '[]', '[]', 259, '2021-10-27 09:50:39', '2021-10-27 09:50:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (260, 'Marvel\\Database\\Models\\Attachment', 260, '0af2dccd-c566-479c-bc68-ef49625523b1', 'default', 'Group 36179', 'Group-36179.png', 'image/png', 's3', 's3', 10469, '[]', '{\"thumbnail\": true}', '[]', '[]', 260, '2021-10-27 09:51:22', '2021-10-27 09:51:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (261, 'Marvel\\Database\\Models\\Attachment', 261, '4d914f86-e3a2-45e1-b578-8f6062756237', 'default', 'Group 36180', 'Group-36180.png', 'image/png', 's3', 's3', 8576, '[]', '{\"thumbnail\": true}', '[]', '[]', 261, '2021-10-27 09:51:59', '2021-10-27 09:51:59');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (262, 'Marvel\\Database\\Models\\Attachment', 262, '35bb9b60-b79a-4e69-b514-ba72e233eb12', 'default', 'Group 36181', 'Group-36181.png', 'image/png', 's3', 's3', 10841, '[]', '{\"thumbnail\": true}', '[]', '[]', 262, '2021-10-27 09:52:25', '2021-10-27 09:52:26');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (263, 'Marvel\\Database\\Models\\Attachment', 263, '578fe0db-e435-4b28-82b0-7108cf8642e0', 'default', 'Group 36186', 'Group-36186.png', 'image/png', 's3', 's3', 12336, '[]', '{\"thumbnail\": true}', '[]', '[]', 263, '2021-10-27 09:52:45', '2021-10-27 09:52:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (264, 'Marvel\\Database\\Models\\Attachment', 264, '078c45dd-b5fd-48d0-96b3-3b8a1a47827d', 'default', 'Group 36185', 'Group-36185.png', 'image/png', 's3', 's3', 8009, '[]', '{\"thumbnail\": true}', '[]', '[]', 264, '2021-10-27 09:53:00', '2021-10-27 09:53:00');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (265, 'Marvel\\Database\\Models\\Attachment', 265, '16c98a5b-f832-492a-a4c2-24a441d0af99', 'default', 'Group 36184', 'Group-36184.png', 'image/png', 's3', 's3', 8723, '[]', '{\"thumbnail\": true}', '[]', '[]', 265, '2021-10-27 09:53:21', '2021-10-27 09:53:21');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (266, 'Marvel\\Database\\Models\\Attachment', 266, '49ec8d93-e0b5-492f-9e8a-26f28cc77262', 'default', 'Group 36183', 'Group-36183.png', 'image/png', 's3', 's3', 8144, '[]', '{\"thumbnail\": true}', '[]', '[]', 266, '2021-10-27 09:53:39', '2021-10-27 09:53:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (267, 'Marvel\\Database\\Models\\Attachment', 267, '4ab83941-23e0-4e05-846f-5d94c274f6a4', 'default', 'Group 36182', 'Group-36182.png', 'image/png', 's3', 's3', 7958, '[]', '{\"thumbnail\": true}', '[]', '[]', 267, '2021-10-27 09:53:52', '2021-10-27 09:53:52');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (268, 'Marvel\\Database\\Models\\Attachment', 268, 'f2b48f76-b767-4ec3-86de-587f7ce4490f', 'default', 'Group 36179', 'Group-36179.png', 'image/png', 's3', 's3', 10469, '[]', '{\"thumbnail\": true}', '[]', '[]', 268, '2021-11-08 06:57:52', '2021-11-08 06:57:53');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (269, 'Marvel\\Database\\Models\\Attachment', 269, '5902275f-091d-47c4-9c6a-8f9ee4cf71de', 'default', 'h&m', 'h&m.png', 'image/png', 's3', 's3', 59308, '[]', '{\"thumbnail\": true}', '[]', '[]', 269, '2021-11-08 07:06:04', '2021-11-08 07:06:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (270, 'Marvel\\Database\\Models\\Attachment', 270, '3bf0f7a2-00f9-4ede-a0dc-d3f59b0344b5', 'default', 'Group 36181', 'Group-36181.png', 'image/png', 's3', 's3', 10841, '[]', '{\"thumbnail\": true}', '[]', '[]', 270, '2021-11-08 07:06:17', '2021-11-08 07:06:17');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (271, 'Marvel\\Database\\Models\\Attachment', 271, '3fc77740-dc8f-458d-894c-ee18a789fe80', 'default', 'logo16', 'logo16.png', 'image/png', 's3', 's3', 6871, '[]', '{\"thumbnail\": true}', '[]', '[]', 271, '2021-11-08 07:08:47', '2021-11-08 07:08:47');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (272, 'Marvel\\Database\\Models\\Attachment', 272, '80405012-e2fe-4c6e-a64d-21e255fab974', 'default', 'club-shoes', 'club-shoes.png', 'image/png', 's3', 's3', 4099, '[]', '{\"thumbnail\": true}', '[]', '[]', 272, '2021-11-08 07:09:47', '2021-11-08 07:09:48');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (273, 'Marvel\\Database\\Models\\Attachment', 273, 'd1120cfc-af4d-49c9-bd6e-5945b00eb7a3', 'default', 'elegance', 'elegance.png', 'image/png', 's3', 's3', 4140, '[]', '{\"thumbnail\": true}', '[]', '[]', 273, '2021-11-08 07:10:19', '2021-11-08 07:10:19');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (274, 'Marvel\\Database\\Models\\Attachment', 274, '054c424e-1294-45fb-b30f-cfcf0b439228', 'default', 'fashadil', 'fashadil.png', 'image/png', 's3', 's3', 4920, '[]', '{\"thumbnail\": true}', '[]', '[]', 274, '2021-11-08 07:13:54', '2021-11-08 07:13:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (275, 'Marvel\\Database\\Models\\Attachment', 275, '1c3b5d78-cb34-497b-bf65-444701099bdd', 'default', 'fusion', 'fusion.png', 'image/png', 's3', 's3', 3722, '[]', '{\"thumbnail\": true}', '[]', '[]', 275, '2021-11-08 07:22:39', '2021-11-08 07:22:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (276, 'Marvel\\Database\\Models\\Attachment', 276, '577c51f3-c9c4-43aa-a87f-7101e104e94f', 'default', 'hoppister', 'hoppister.png', 'image/png', 's3', 's3', 3895, '[]', '{\"thumbnail\": true}', '[]', '[]', 276, '2021-11-08 07:23:07', '2021-11-08 07:23:07');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (277, 'Marvel\\Database\\Models\\Attachment', 277, '5895c3af-3ed2-4388-a5c9-c7a6ec594cfc', 'default', 'shovia', 'shovia.png', 'image/png', 's3', 's3', 3814, '[]', '{\"thumbnail\": true}', '[]', '[]', 277, '2021-11-08 07:31:07', '2021-11-08 07:31:07');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (278, 'Marvel\\Database\\Models\\Attachment', 278, 'cb62d655-8773-4c25-a328-4df39e0990d5', 'default', 'hoppister', 'hoppister.png', 'image/png', 's3', 's3', 3895, '[]', '{\"thumbnail\": true}', '[]', '[]', 278, '2021-11-08 07:31:22', '2021-11-08 07:31:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (279, 'Marvel\\Database\\Models\\Attachment', 279, 'f97af277-1e2f-46ef-8ae8-95006b9585ad', 'default', 'vintege', 'vintege.png', 'image/png', 's3', 's3', 4600, '[]', '{\"thumbnail\": true}', '[]', '[]', 279, '2021-11-08 07:32:20', '2021-11-08 07:32:20');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (280, 'Marvel\\Database\\Models\\Attachment', 280, '5c121826-93de-42f0-822c-3f111f66041c', 'default', 'elegance', 'elegance.png', 'image/png', 's3', 's3', 4140, '[]', '{\"thumbnail\": true}', '[]', '[]', 280, '2021-11-08 07:33:04', '2021-11-08 07:33:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (281, 'Marvel\\Database\\Models\\Attachment', 281, 'b10ea837-6211-4f5d-8d66-f63b5d34606d', 'default', 'shovia', 'shovia.png', 'image/png', 's3', 's3', 3814, '[]', '{\"thumbnail\": true}', '[]', '[]', 281, '2021-11-08 07:33:10', '2021-11-08 07:33:10');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (282, 'Marvel\\Database\\Models\\Attachment', 282, '9788d3ab-fa28-477f-9533-4436eb8be002', 'default', 'Group 36179', 'Group-36179.png', 'image/png', 's3', 's3', 10469, '[]', '{\"thumbnail\": true}', '[]', '[]', 282, '2021-11-08 07:33:38', '2021-11-08 07:33:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (283, 'Marvel\\Database\\Models\\Attachment', 283, '8a0f738c-0227-40cc-8f60-32d388c5723b', 'default', 'Group 36180', 'Group-36180.png', 'image/png', 's3', 's3', 8576, '[]', '{\"thumbnail\": true}', '[]', '[]', 283, '2021-11-08 07:34:26', '2021-11-08 07:34:27');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (284, 'Marvel\\Database\\Models\\Attachment', 284, '81f157de-7b12-4e5f-8504-ef05ef951b02', 'default', 'Group 36184', 'Group-36184.png', 'image/png', 's3', 's3', 8723, '[]', '{\"thumbnail\": true}', '[]', '[]', 284, '2021-11-08 07:35:08', '2021-11-08 07:35:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (285, 'Marvel\\Database\\Models\\Attachment', 285, '44020116-1071-4476-bf65-04c48025294a', 'default', 'Group 36183', 'Group-36183.png', 'image/png', 's3', 's3', 8144, '[]', '{\"thumbnail\": true}', '[]', '[]', 285, '2021-11-08 07:35:40', '2021-11-08 07:35:40');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (286, 'Marvel\\Database\\Models\\Attachment', 286, 'acd0d18e-3207-40eb-927c-7c5a7fc41abc', 'default', 'Group 36186', 'Group-36186.png', 'image/png', 's3', 's3', 12336, '[]', '{\"thumbnail\": true}', '[]', '[]', 286, '2021-11-08 07:36:06', '2021-11-08 07:36:06');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (287, 'Marvel\\Database\\Models\\Attachment', 287, '7f2fbb19-13c1-4c84-b808-91ab80a74d83', 'default', 'Group 36185', 'Group-36185.png', 'image/png', 's3', 's3', 8009, '[]', '{\"thumbnail\": true}', '[]', '[]', 287, '2021-11-08 07:36:39', '2021-11-08 07:36:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (288, 'Marvel\\Database\\Models\\Attachment', 288, 'fa22cc43-c253-467b-b91d-719c5b6e2305', 'default', 'Group 36182', 'Group-36182.png', 'image/png', 's3', 's3', 7958, '[]', '{\"thumbnail\": true}', '[]', '[]', 288, '2021-11-08 07:37:03', '2021-11-08 07:37:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (289, 'Marvel\\Database\\Models\\Attachment', 289, 'f5fc0c6a-4c76-427a-bf00-d85acbfbc96d', 'default', 'Group 36181', 'Group-36181.png', 'image/png', 's3', 's3', 10841, '[]', '{\"thumbnail\": true}', '[]', '[]', 289, '2021-11-08 07:37:20', '2021-11-08 07:37:20');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (290, 'Marvel\\Database\\Models\\Attachment', 290, 'aa4ded0c-3ce0-4e04-a8b9-3c0d134c38fd', 'default', 'blaze-fashion', 'blaze-fashion.png', 'image/png', 's3', 's3', 4396, '[]', '{\"thumbnail\": true}', '[]', '[]', 290, '2021-11-08 07:38:18', '2021-11-08 07:38:18');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (291, 'Marvel\\Database\\Models\\Attachment', 291, '39e2b374-59ac-4685-9e4e-df815af59030', 'default', 'hunter-shoes', 'hunter-shoes.png', 'image/png', 's3', 's3', 4868, '[]', '{\"thumbnail\": true}', '[]', '[]', 291, '2021-11-08 07:38:41', '2021-11-08 07:38:41');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (292, 'Marvel\\Database\\Models\\Attachment', 292, '6c571e48-7b98-442f-8794-5c1cba555d7d', 'default', '10', '10.png', 'image/png', 's3', 's3', 85139, '[]', '{\"thumbnail\": true}', '[]', '[]', 292, '2021-11-08 10:01:31', '2021-11-08 10:01:32');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (293, 'Marvel\\Database\\Models\\Attachment', 293, '7f17adfc-ada9-456b-846d-1c023809dbdd', 'default', '50png', '50png.png', 'image/png', 's3', 's3', 74640, '[]', '{\"thumbnail\": true}', '[]', '[]', 293, '2021-11-08 10:02:00', '2021-11-08 10:02:01');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (294, 'Marvel\\Database\\Models\\Attachment', 294, '6f9601e8-e831-464f-8375-5cad58493160', 'default', '30 (1)', '30-(1).png', 'image/png', 's3', 's3', 78032, '[]', '{\"thumbnail\": true}', '[]', '[]', 294, '2021-11-08 10:03:23', '2021-11-08 10:03:23');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (295, 'Marvel\\Database\\Models\\Attachment', 295, '9be534af-5241-4ea7-b74c-cd51447f200b', 'default', '400', '400.png', 'image/png', 's3', 's3', 40011, '[]', '{\"thumbnail\": true}', '[]', '[]', 295, '2021-11-08 10:03:53', '2021-11-08 10:03:53');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (296, 'Marvel\\Database\\Models\\Attachment', 296, '0314e081-3d0a-4fea-afc7-d396977106de', 'default', '2 0(1)', '2-0(1).png', 'image/png', 's3', 's3', 83535, '[]', '{\"thumbnail\": true}', '[]', '[]', 296, '2021-11-08 10:04:44', '2021-11-08 10:04:44');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (297, 'Marvel\\Database\\Models\\Attachment', 297, '91ea6d36-e5c4-4a8f-955b-d78c4bdf92da', 'default', 'store_owner', 'store_owner.png', 'image/png', 's3', 's3', 100825, '[]', '{\"thumbnail\": true}', '[]', '[]', 297, '2021-11-25 06:21:27', '2021-11-25 06:21:27');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (298, 'Marvel\\Database\\Models\\Attachment', 298, 'b9caaed6-e9af-4576-8a27-c7f8d6860851', 'default', 'pro pic 3', 'pro-pic-3.jpg', 'image/jpeg', 's3', 's3', 53425, '[]', '{\"thumbnail\": true}', '[]', '[]', 298, '2021-11-27 17:16:54', '2021-11-27 17:16:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (299, 'Marvel\\Database\\Models\\Attachment', 299, '8a4aa6da-0792-4cdb-9b0f-05c61859649c', 'default', 'Footwear-15', 'Footwear-15.jpg', 'image/jpeg', 's3', 's3', 101509, '[]', '{\"thumbnail\": true}', '[]', '[]', 299, '2021-11-27 17:53:40', '2021-11-27 17:53:40');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (300, 'Marvel\\Database\\Models\\Attachment', 300, '2a8c0202-978d-44e6-ba01-d55528197446', 'default', 'Footwear-14', 'Footwear-14.jpg', 'image/jpeg', 's3', 's3', 101268, '[]', '{\"thumbnail\": true}', '[]', '[]', 300, '2021-11-27 17:53:48', '2021-11-27 17:53:48');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (301, 'Marvel\\Database\\Models\\Attachment', 301, '99fea1d1-b6ba-42d3-a53a-96681ec94b7e', 'default', 'Chawkbazar7', 'Chawkbazar7.png', 'image/png', 's3', 's3', 168959, '[]', '{\"thumbnail\": true}', '[]', '[]', 301, '2021-11-28 12:58:08', '2021-11-28 12:58:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (302, 'Marvel\\Database\\Models\\Attachment', 302, '7025ca15-5cde-446c-b13d-208588a2fc38', 'default', 'Chawkbazar6', 'Chawkbazar6.png', 'image/png', 's3', 's3', 147835, '[]', '{\"thumbnail\": true}', '[]', '[]', 302, '2021-11-28 12:58:21', '2021-11-28 12:58:21');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (303, 'Marvel\\Database\\Models\\Attachment', 303, '76ed22a1-c6b7-4724-afa7-4cd608f1ff80', 'default', 'Chawkbazar8', 'Chawkbazar8.png', 'image/png', 's3', 's3', 143537, '[]', '{\"thumbnail\": true}', '[]', '[]', 303, '2021-11-28 12:58:21', '2021-11-28 12:58:21');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (304, 'Marvel\\Database\\Models\\Attachment', 304, '96d8c79a-e380-4f96-8958-b7f1d5faf7f7', 'default', 'women', 'women.png', 'image/png', 's3', 's3', 211997, '[]', '{\"thumbnail\": true}', '[]', '[]', 304, '2022-01-10 17:47:49', '2022-01-10 17:47:49');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (305, 'Marvel\\Database\\Models\\Attachment', 305, '2f826614-79c1-43ba-b02f-47868540f9df', 'default', 'watch', 'watch.png', 'image/png', 's3', 's3', 66512, '[]', '{\"thumbnail\": true}', '[]', '[]', 305, '2022-01-10 17:48:06', '2022-01-10 17:48:06');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (306, 'Marvel\\Database\\Models\\Attachment', 306, '72a82265-823a-4104-80f4-4e518cf98c05', 'default', 'sunglass', 'sunglass.png', 'image/png', 's3', 's3', 51428, '[]', '{\"thumbnail\": true}', '[]', '[]', 306, '2022-01-10 17:48:25', '2022-01-10 17:48:25');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (307, 'Marvel\\Database\\Models\\Attachment', 307, 'dec42b05-efb2-44b5-9881-03ee8b0c1f53', 'default', 'sports', 'sports.png', 'image/png', 's3', 's3', 94018, '[]', '{\"thumbnail\": true}', '[]', '[]', 307, '2022-01-10 17:48:39', '2022-01-10 17:48:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (308, 'Marvel\\Database\\Models\\Attachment', 308, 'd7eb0210-4815-41d6-b54b-0d24cfa0a9c2', 'default', 'Sneakers', 'Sneakers.png', 'image/png', 's3', 's3', 107699, '[]', '{\"thumbnail\": true}', '[]', '[]', 308, '2022-01-10 17:48:49', '2022-01-10 17:48:49');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (309, 'Marvel\\Database\\Models\\Attachment', 309, '3769565a-6079-434e-a324-8407c48d2a20', 'default', 'Men', 'Men.png', 'image/png', 's3', 's3', 97423, '[]', '{\"thumbnail\": true}', '[]', '[]', 309, '2022-01-10 17:49:00', '2022-01-10 17:49:00');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (310, 'Marvel\\Database\\Models\\Attachment', 310, '2040026e-9fa3-4cdb-97af-ecf63e9e9dcf', 'default', 'Kids', 'Kids.png', 'image/png', 's3', 's3', 258731, '[]', '{\"thumbnail\": true}', '[]', '[]', 310, '2022-01-10 17:49:12', '2022-01-10 17:49:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (311, 'Marvel\\Database\\Models\\Attachment', 311, '55d1ca02-4df6-456c-a1ff-47fa249f2542', 'default', 'Bag', 'Bag.png', 'image/png', 's3', 's3', 58543, '[]', '{\"thumbnail\": true}', '[]', '[]', 311, '2022-01-10 17:49:22', '2022-01-10 17:49:22');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (312, 'Marvel\\Database\\Models\\Attachment', 312, '7e2521e6-0313-4e7b-93c5-004ed6b2f49f', 'default', 'woman', 'woman.png', 'image/png', 's3', 's3', 1980, '[]', '{\"thumbnail\": true}', '[]', '[]', 312, '2022-03-01 05:02:27', '2022-03-01 05:02:27');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (313, 'Marvel\\Database\\Models\\Attachment', 313, '8129bdf0-17b7-4ff5-848d-1983388283e0', 'default', 'watch', 'watch.png', 'image/png', 's3', 's3', 1295, '[]', '{\"thumbnail\": true}', '[]', '[]', 313, '2022-03-01 05:03:07', '2022-03-01 05:03:07');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (314, 'Marvel\\Database\\Models\\Attachment', 314, '10f2ad49-6af9-4e90-baf6-e00e3fe3c13a', 'default', 'sunglass', 'sunglass.png', 'image/png', 's3', 's3', 1873, '[]', '{\"thumbnail\": true}', '[]', '[]', 314, '2022-03-01 05:03:17', '2022-03-01 05:03:17');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (315, 'Marvel\\Database\\Models\\Attachment', 315, '91c2e5e5-fcc8-4fe1-b141-1752d1789712', 'default', 'sports', 'sports.png', 'image/png', 's3', 's3', 3394, '[]', '{\"thumbnail\": true}', '[]', '[]', 315, '2022-03-01 05:03:25', '2022-03-01 05:03:26');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (316, 'Marvel\\Database\\Models\\Attachment', 316, '6c37309b-7fd6-4248-aef6-3c602d62f746', 'default', 'sneakers', 'sneakers.png', 'image/png', 's3', 's3', 2709, '[]', '{\"thumbnail\": true}', '[]', '[]', 316, '2022-03-01 05:03:33', '2022-03-01 05:03:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (317, 'Marvel\\Database\\Models\\Attachment', 317, '77ceb54b-188f-47c6-96c3-60d2af661ec6', 'default', 'man', 'man.png', 'image/png', 's3', 's3', 2006, '[]', '{\"thumbnail\": true}', '[]', '[]', 317, '2022-03-01 05:03:45', '2022-03-01 05:03:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (318, 'Marvel\\Database\\Models\\Attachment', 318, '47351507-46cd-47e2-9503-f0f2495d4d90', 'default', 'kids', 'kids.png', 'image/png', 's3', 's3', 2467, '[]', '{\"thumbnail\": true}', '[]', '[]', 318, '2022-03-01 05:03:52', '2022-03-01 05:03:53');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (319, 'Marvel\\Database\\Models\\Attachment', 319, 'b1525c82-00ba-493f-a82f-93f89851a2cc', 'default', 'bags', 'bags.png', 'image/png', 's3', 's3', 1870, '[]', '{\"thumbnail\": true}', '[]', '[]', 319, '2022-03-01 05:04:01', '2022-03-01 05:04:01');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (320, 'Marvel\\Database\\Models\\Attachment', 320, 'fd145aae-bbea-4561-979f-5a5747a4c511', 'default', 'Footwear-1', 'Footwear-1.png', 'image/png', 's3', 's3', 248495, '[]', '{\"thumbnail\": true}', '[]', '[]', 320, '2022-03-02 04:47:15', '2022-03-02 04:47:16');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (321, 'Marvel\\Database\\Models\\Attachment', 321, '26ff42eb-91ae-4f55-a6aa-ac0937b441ff', 'default', 'Footwear-1', 'Footwear-1.png', 'image/png', 's3', 's3', 248495, '[]', '{\"thumbnail\": true}', '[]', '[]', 321, '2022-03-02 04:47:25', '2022-03-02 04:47:25');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (322, 'Marvel\\Database\\Models\\Attachment', 322, '5be0e57b-6304-4847-8aba-c350e69cf92f', 'default', 'watch', 'watch.png', 'image/png', 's3', 's3', 276201, '[]', '{\"thumbnail\": true}', '[]', '[]', 322, '2022-03-02 04:47:48', '2022-03-02 04:47:48');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (323, 'Marvel\\Database\\Models\\Attachment', 323, '10cf0e96-74a0-441c-a0d6-7ca5ef6727e3', 'default', 'Footwear', 'Footwear.png', 'image/png', 's3', 's3', 202102, '[]', '{\"thumbnail\": true}', '[]', '[]', 323, '2022-03-02 04:49:48', '2022-03-02 04:49:48');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (324, 'Marvel\\Database\\Models\\Attachment', 324, 'e83424c1-a57c-4d67-bfe6-aa3f57dbef57', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 758134, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 08:38:12', '2023-04-30 08:38:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (325, 'Marvel\\Database\\Models\\Attachment', 325, 'e7ec5ff6-38a5-40ef-9fb1-cc0a8baa97f3', 'default', 'savedee', 'savedee.png', 'image/jpeg', 'public', 'public', 758134, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 08:39:49', '2023-04-30 08:39:49');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (326, 'Marvel\\Database\\Models\\Attachment', 326, 'f593ec54-197c-4f8b-ab90-60d473feac88', 'default', 'savedee', 'savedee.jpeg', 'image/jpeg', 'public', 'public', 758134, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 08:40:02', '2023-04-30 08:40:02');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (327, 'Marvel\\Database\\Models\\Attachment', 327, 'c8d0b312-4ff9-47bc-81b0-1ec19212097f', 'default', 'Screen Shot 2566-04-30 at 13.42.15', 'Screen-Shot-2566-04-30-at-13.42.15.png', 'image/png', 'public', 'public', 566914, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 08:50:23', '2023-04-30 08:50:23');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (328, 'Marvel\\Database\\Models\\Attachment', 328, '25fb6fcd-ee80-4236-9238-f2da54cad81b', 'default', 'IMG_8817', 'IMG_8817.png', 'image/png', 'public', 'public', 1068143, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 08:50:26', '2023-04-30 08:50:27');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (329, 'Marvel\\Database\\Models\\Attachment', 329, '4f807080-47e4-4e75-bf9c-d6c4374373ce', 'default', 'savedee', 'savedee.jpeg', 'image/jpeg', 'public', 'public', 758134, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 08:50:31', '2023-04-30 08:50:31');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (330, 'Marvel\\Database\\Models\\Attachment', 330, 'f6e96e1b-03ec-4d81-b2a9-56dcb2d069f8', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 09:04:39', '2023-04-30 09:04:39');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (331, 'Marvel\\Database\\Models\\Attachment', 331, '1e0a2e14-aa8d-44bb-9c47-577f2653c007', 'default', 'Screen Shot 2566-04-30 at 13.42.15', 'Screen-Shot-2566-04-30-at-13.42.15.png', 'image/png', 'public', 'public', 566914, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 09:05:37', '2023-04-30 09:05:37');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (332, 'Marvel\\Database\\Models\\Attachment', 332, '2d156a78-3f43-4e55-9d03-6cf7d881a8f8', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 14:41:45', '2023-04-30 14:41:45');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (333, 'Marvel\\Database\\Models\\Attachment', 333, '4014f3f9-7286-485c-ba80-48e12d3c8989', 'default', 'IMG_8817', 'IMG_8817.png', 'image/png', 'public', 'public', 1068143, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 14:45:00', '2023-04-30 14:45:00');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (334, 'Marvel\\Database\\Models\\Attachment', 334, '91cd76b8-535b-45fa-a2f8-6a62ce76df50', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 14:46:25', '2023-04-30 14:46:26');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (335, 'Marvel\\Database\\Models\\Attachment', 335, 'f8bcd650-4a1b-4931-99cc-c6038f4a8e01', 'default', 'Screen Shot 2566-04-30 at 13.42.15', 'Screen-Shot-2566-04-30-at-13.42.15.png', 'image/png', 'public', 'public', 566914, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 15:03:31', '2023-04-30 15:03:31');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (336, 'Marvel\\Database\\Models\\Attachment', 336, '5f23ce83-4d68-40e1-88d4-0e157a4fcc35', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 15:38:08', '2023-04-30 15:38:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (337, 'Marvel\\Database\\Models\\Attachment', 337, 'e66244bf-5a01-4e3f-aec0-f69c3a786748', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 15:40:29', '2023-04-30 15:40:29');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (338, 'Marvel\\Database\\Models\\Attachment', 338, '68e5218a-f024-48e4-b4dd-e21170ddde41', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 15:41:34', '2023-04-30 15:41:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (339, 'Marvel\\Database\\Models\\Attachment', 339, '6058daa4-95cc-4e09-864a-79af05d4c364', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-04-30 15:51:33', '2023-04-30 15:51:33');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (340, 'Marvel\\Database\\Models\\Attachment', 340, '6d7c30c4-9fed-42e8-9acc-04a46885c5b4', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:11:18', '2023-05-01 07:11:19');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (341, 'Marvel\\Database\\Models\\Attachment', 341, '831d308f-0e24-4902-ae50-b0ee11fbb97e', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:15:39', '2023-05-01 07:15:40');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (342, 'Marvel\\Database\\Models\\Attachment', 342, 'b805bf94-cf14-4816-a8c1-9bc777db13b9', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:28:34', '2023-05-01 07:28:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (343, 'Marvel\\Database\\Models\\Attachment', 343, 'badcae47-63ed-44f4-b02a-918549000ce1', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:29:32', '2023-05-01 07:29:33');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (344, 'Marvel\\Database\\Models\\Attachment', 344, '72081705-aa03-42b9-b7e8-7db62b33428a', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:35:14', '2023-05-01 07:35:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (345, 'Marvel\\Database\\Models\\Attachment', 345, 'aac794f5-cdc2-44ad-b920-9168a75e6b0c', 'default', 'Screen Shot 2566-04-30 at 13.42.15', 'Screen-Shot-2566-04-30-at-13.42.15.png', 'image/png', 'public', 'public', 566914, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:37:08', '2023-05-01 07:37:08');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (346, 'Marvel\\Database\\Models\\Attachment', 346, '814dce23-4186-485e-b687-a72d8ed0bc07', 'default', 'Screen Shot 2566-04-30 at 13.42.15', 'Screen-Shot-2566-04-30-at-13.42.15.png', 'image/png', 'public', 'public', 566914, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:37:29', '2023-05-01 07:37:29');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (347, 'Marvel\\Database\\Models\\Attachment', 347, '4e49aff3-611f-4777-8b75-aa094beba216', 'default', 'Screen Shot 2566-04-30 at 13.42.15', 'Screen-Shot-2566-04-30-at-13.42.15.png', 'image/png', 'public', 'public', 566914, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:37:47', '2023-05-01 07:37:47');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (348, 'Marvel\\Database\\Models\\Attachment', 348, '607fad52-b920-4f60-bfc8-1435290ba1aa', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:37:53', '2023-05-01 07:37:53');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (349, 'Marvel\\Database\\Models\\Attachment', 349, '15094ed6-6255-41c2-9160-f75d7d5d5cad', 'default', 'savedee', 'savedee.jpg', 'image/jpeg', 'public', 'public', 762829, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-01 07:44:43', '2023-05-01 07:44:43');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (350, 'Marvel\\Database\\Models\\Attachment', 350, '1b6e204d-a25d-4dba-a4cc-e1349f65e872', 'default', 'toyota', 'toyota.png', 'image/png', 'public', 'public', 11450, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:38:15', '2023-05-04 14:38:16');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (351, 'Marvel\\Database\\Models\\Attachment', 351, 'c6124ad7-39c8-44bd-9679-33397f456e68', 'default', 'honda', 'honda.png', 'image/png', 'public', 'public', 10761, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:39:24', '2023-05-04 14:39:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (352, 'Marvel\\Database\\Models\\Attachment', 352, 'ce96d454-a2ec-45be-a2ff-0a3cc5fa8b18', 'default', 'isuzu', 'isuzu.png', 'image/png', 'public', 'public', 4507, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:42:54', '2023-05-04 14:42:54');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (353, 'Marvel\\Database\\Models\\Attachment', 353, '858f4ad5-c1ec-48de-9348-55e23d83e54c', 'default', 'mazda', 'mazda.png', 'image/png', 'public', 'public', 10965, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:43:38', '2023-05-04 14:43:38');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (354, 'Marvel\\Database\\Models\\Attachment', 354, '6fd48068-88ef-4b6b-87fd-77c216b5f6a2', 'default', 'mitsubishi', 'mitsubishi.png', 'image/png', 'public', 'public', 2571, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:44:12', '2023-05-04 14:44:12');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (355, 'Marvel\\Database\\Models\\Attachment', 355, 'a1e6c48c-cd40-4775-b5b8-290cd178d16d', 'default', 'nissan', 'nissan.png', 'image/png', 'public', 'public', 3230, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:45:04', '2023-05-04 14:45:04');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (356, 'Marvel\\Database\\Models\\Attachment', 356, '767a6111-ad4f-4520-a73b-1eaf300674d1', 'default', 'ford', 'ford.png', 'image/png', 'public', 'public', 9292, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:45:36', '2023-05-04 14:45:36');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (357, 'Marvel\\Database\\Models\\Attachment', 357, '9a1324cf-738c-4805-8ee4-74c789d91142', 'default', 'mg', 'mg.png', 'image/png', 'public', 'public', 16635, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:46:03', '2023-05-04 14:46:03');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (358, 'Marvel\\Database\\Models\\Attachment', 358, 'a0ff1524-1472-4ab6-90a8-10513ee48771', 'default', 'mercedes-benz', 'mercedes-benz.png', 'image/png', 'public', 'public', 8518, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:46:24', '2023-05-04 14:46:24');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (359, 'Marvel\\Database\\Models\\Attachment', 359, '9736c2af-22ff-4c04-b46e-be6c21be6ed7', 'default', 'bmw', 'bmw.png', 'image/png', 'public', 'public', 10569, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-04 14:46:59', '2023-05-04 14:46:59');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (360, 'Marvel\\Database\\Models\\Attachment', 360, 'a5735f71-85af-4170-8bfe-32a357847ca8', 'default', '20230321145558-9f90_wm', '20230321145558-9f90_wm.jpeg', 'image/jpeg', 'public', 'public', 127466, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-05 03:17:56', '2023-05-05 03:17:57');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (361, 'Marvel\\Database\\Models\\Attachment', 361, 'b0ff9272-2909-4156-8d27-567f3ec8277c', 'default', '20230321145558-9f90_wm', '20230321145558-9f90_wm.jpeg', 'image/jpeg', 'public', 'public', 127466, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-05 03:18:06', '2023-05-05 03:18:06');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (362, 'Marvel\\Database\\Models\\Attachment', 362, 'f79ed248-63a8-43bf-8819-a895b24131e6', 'default', '20230321145558-9f90_wm', '20230321145558-9f90_wm.jpeg', 'image/jpeg', 'public', 'public', 127466, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-05 03:18:14', '2023-05-05 03:18:14');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (363, 'Marvel\\Database\\Models\\Attachment', 363, '2c31f31e-daf3-4a42-9adc-06a2d35c639d', 'default', '20230205143805-2348_wm', '20230205143805-2348_wm.jpeg', 'image/jpeg', 'public', 'public', 198383, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-05 07:27:59', '2023-05-05 07:27:59');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (364, 'Marvel\\Database\\Models\\Attachment', 364, '47c5cd57-55a8-43f0-bc63-11d550683cc9', 'default', '20230205152919-ccd7_wm', '20230205152919-ccd7_wm.jpeg', 'image/jpeg', 'public', 'public', 195905, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-05 07:28:51', '2023-05-05 07:28:51');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (365, 'Marvel\\Database\\Models\\Attachment', 365, '886b6f4f-6fa5-43b4-9e06-cc9526203cc3', 'default', '20230205152919-ccd7_wm', '20230205152919-ccd7_wm.jpeg', 'image/jpeg', 'public', 'public', 195905, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-05 07:29:59', '2023-05-05 07:29:59');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (366, 'Marvel\\Database\\Models\\Attachment', 366, 'bc626824-f060-4ec6-800a-93fb86730a73', 'default', '20230205161054-63f3_wm', '20230205161054-63f3_wm.jpeg', 'image/jpeg', 'public', 'public', 188307, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-05 07:30:34', '2023-05-05 07:30:34');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (367, 'Marvel\\Database\\Models\\Attachment', 367, '254f677d-aa28-4ed8-9fcd-9e552f6d3e75', 'default', '20230421152801-f09e_wm', '20230421152801-f09e_wm.jpeg', 'image/jpeg', 'public', 'public', 135898, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-05 07:31:59', '2023-05-05 07:31:59');
INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `generated_conversions`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES (368, 'Marvel\\Database\\Models\\Attachment', 368, '2359d669-8293-4745-95d1-439e21e18fd5', 'default', '20230205143805-2348_wm', '20230205143805-2348_wm.jpeg', 'image/jpeg', 'public', 'public', 198383, '[]', '{\"thumbnail\": true}', '[]', '[]', 1, '2023-05-10 07:23:14', '2023-05-10 07:23:14');
COMMIT;

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `messages_conversation_id_foreign` (`conversation_id`),
  KEY `messages_user_id_foreign` (`user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of messages
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2020_04_17_194830_create_permission_tables', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2020_06_02_051901_create_marvel_tables', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2020_10_26_163529_create_media_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2021_04_17_051901_create_new_marvel_tables', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2021_08_08_051901_create_wallet_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2021_09_26_051901_create_product_type_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2021_10_12_193855_create_reviews_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2022_01_19_051901_create_rental_tables', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '2022_01_31_051901_create_marvel_languages_tables', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '2022_03_23_051901_create_marvel_delivery_time_tables', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (15, '2022_03_23_051902_create_marvel_store_notice_tables', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (16, '2022_03_24_124527_add_columns_to_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (17, '2022_04_11_094659_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (18, '2022_05_09_070829_create_messages_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------
BEGIN;
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (1, 'Marvel\\Database\\Models\\User', 1);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (2, 'Marvel\\Database\\Models\\User', 1);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (3, 'Marvel\\Database\\Models\\User', 1);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (2, 'Marvel\\Database\\Models\\User', 2);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (3, 'Marvel\\Database\\Models\\User', 2);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (2, 'Marvel\\Database\\Models\\User', 3);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (1, 'Marvel\\Database\\Models\\User', 4);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (2, 'Marvel\\Database\\Models\\User', 4);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (3, 'Marvel\\Database\\Models\\User', 4);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (2, 'Marvel\\Database\\Models\\User', 5);
INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES (3, 'Marvel\\Database\\Models\\User', 5);
COMMIT;

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for order_product
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_option_id` bigint(20) unsigned DEFAULT NULL,
  `order_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL,
  `subtotal` double NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_product_order_id_foreign` (`order_id`),
  KEY `order_product_product_id_foreign` (`product_id`),
  KEY `order_product_variation_option_id_foreign` (`variation_option_id`),
  CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_product_ibfk_3` FOREIGN KEY (`variation_option_id`) REFERENCES `variation_options` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for order_wallet_points
-- ----------------------------
DROP TABLE IF EXISTS `order_wallet_points`;
CREATE TABLE `order_wallet_points` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_wallet_points_order_id_foreign` (`order_id`),
  CONSTRAINT `order_wallet_points_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of order_wallet_points
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ordered_files
-- ----------------------------
DROP TABLE IF EXISTS `ordered_files`;
CREATE TABLE `ordered_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `digital_file_id` bigint(20) unsigned NOT NULL,
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ordered_files_digital_file_id_foreign` (`digital_file_id`),
  KEY `ordered_files_tracking_number_foreign` (`tracking_number`),
  KEY `ordered_files_customer_id_foreign` (`customer_id`),
  CONSTRAINT `ordered_files_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ordered_files_ibfk_2` FOREIGN KEY (`digital_file_id`) REFERENCES `digital_files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ordered_files_ibfk_3` FOREIGN KEY (`tracking_number`) REFERENCES `orders` (`tracking_number`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of ordered_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `customer_contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `sales_tax` double DEFAULT NULL,
  `paid_total` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `cancelled_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `coupon_id` bigint(20) unsigned DEFAULT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `shop_id` bigint(20) unsigned DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` json DEFAULT NULL,
  `billing_address` json DEFAULT NULL,
  `logistics_provider` bigint(20) unsigned DEFAULT NULL,
  `delivery_fee` double DEFAULT NULL,
  `delivery_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` enum('order-pending','order-processing','order-completed','order-refunded','order-failed','order-cancelled','order-at-local-facility','order-out-for-delivery') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'order-pending',
  `payment_status` enum('payment-pending','payment-processing','payment-success','payment-failed','payment-reversal','payment-cash-on-delivery','payment-cash','payment-wallet','payment-awaiting-for-approval') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'payment-pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_tracking_number_unique` (`tracking_number`),
  KEY `orders_customer_id_foreign` (`customer_id`),
  KEY `orders_shop_id_foreign` (`shop_id`),
  KEY `orders_parent_id_foreign` (`parent_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`parent_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for participants
-- ----------------------------
DROP TABLE IF EXISTS `participants`;
CREATE TABLE `participants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `conversation_id` bigint(20) unsigned NOT NULL,
  `type` enum('shop','user') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `shop_id` bigint(20) unsigned NOT NULL,
  `message_id` bigint(20) unsigned NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `last_read` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participants_conversation_id_foreign` (`conversation_id`),
  KEY `participants_user_id_foreign` (`user_id`),
  KEY `participants_shop_id_foreign` (`shop_id`),
  KEY `participants_message_id_foreign` (`message_id`),
  CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `messages` (`id`) ON DELETE CASCADE,
  CONSTRAINT `participants_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `participants_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of participants
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for payment_gateways
-- ----------------------------
DROP TABLE IF EXISTS `payment_gateways`;
CREATE TABLE `payment_gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `customer_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_gateways_user_id_foreign` (`user_id`),
  CONSTRAINT `payment_gateways_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payment_gateways
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for payment_intents
-- ----------------------------
DROP TABLE IF EXISTS `payment_intents`;
CREATE TABLE `payment_intents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `tracking_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_intent_info` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_intents_order_id_foreign` (`order_id`),
  CONSTRAINT `payment_intents_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payment_intents
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for payment_methods
-- ----------------------------
DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE `payment_methods` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway_id` bigint(20) unsigned DEFAULT NULL,
  `default_card` tinyint(1) DEFAULT '0',
  `fingerprint` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `network` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expires` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_check` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `payment_methods_method_key_unique` (`method_key`),
  UNIQUE KEY `payment_methods_fingerprint_unique` (`fingerprint`),
  KEY `payment_methods_payment_gateway_id_foreign` (`payment_gateway_id`),
  CONSTRAINT `payment_methods_ibfk_1` FOREIGN KEY (`payment_gateway_id`) REFERENCES `payment_gateways` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of payment_methods
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (1, 'super_admin', 'api', '2021-10-09 12:41:26', '2021-10-09 12:41:26');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (2, 'customer', 'api', '2021-10-09 12:41:26', '2021-10-09 12:41:26');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (3, 'store_owner', 'api', '2021-10-09 12:41:26', '2021-10-09 12:41:26');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (4, 'staff', 'api', '2021-10-09 12:41:26', '2021-10-09 12:41:26');
COMMIT;

-- ----------------------------
-- Table structure for person_product
-- ----------------------------
DROP TABLE IF EXISTS `person_product`;
CREATE TABLE `person_product` (
  `resource_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  KEY `person_product_resource_id_foreign` (`resource_id`),
  KEY `person_product_product_id_foreign` (`product_id`),
  CONSTRAINT `person_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `person_product_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of person_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (2, 'Marvel\\Database\\Models\\User', 4, 'auth_token', '0dc8d90f9cb687ec5ffe847a7399fbdf72b81c15a9877637a30d17a6ddadb367', '[\"*\"]', '2023-04-30 15:52:32', NULL, '2023-04-30 07:53:34', '2023-04-30 15:52:32');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (3, 'Marvel\\Database\\Models\\User', 4, 'auth_token', '6b2d9a5efb9299003448ff3059efaefa84a9baf6d307da4896970ae1ae6099c4', '[\"*\"]', '2023-05-02 00:03:37', NULL, '2023-05-01 07:11:05', '2023-05-02 00:03:37');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (4, 'Marvel\\Database\\Models\\User', 4, 'auth_token', '966a4cadd0a723f21c210683523e03729452c3fb2153dd42bd25add1184b0c58', '[\"*\"]', '2023-05-06 07:04:27', NULL, '2023-05-04 14:27:46', '2023-05-06 07:04:27');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (5, 'Marvel\\Database\\Models\\User', 4, 'auth_token', 'a1ab10c7761fde2032517f71a1f5525d1469921955da2536973a4394c35110fc', '[\"*\"]', '2023-05-09 18:22:46', NULL, '2023-05-09 16:56:44', '2023-05-09 18:22:46');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (6, 'Marvel\\Database\\Models\\User', 4, 'auth_token', 'c3ee6efd99b85dd8fbae137ce9ceb5b4d14dd0c1031ce028004f09c8f236bc30', '[\"*\"]', '2023-05-15 04:14:52', NULL, '2023-05-14 08:28:21', '2023-05-15 04:14:52');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (10, 'Marvel\\Database\\Models\\User', 4, 'auth_token', 'e9430f2d9a7d12e5d8afa612c9a24bfcadeb88d01e9a6bd688d1ba92b573b0a6', '[\"*\"]', '2023-05-18 04:17:44', NULL, '2023-05-18 04:16:48', '2023-05-18 04:17:44');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES (11, 'Marvel\\Database\\Models\\User', 4, 'auth_token', '83a5de595d9612b22b7f3de1fe9def7755bd651f5b539b5283c530315415b3ab', '[\"*\"]', '2023-05-24 13:56:55', NULL, '2023-05-24 04:24:55', '2023-05-24 13:56:55');
COMMIT;

-- ----------------------------
-- Table structure for pickup_location_product
-- ----------------------------
DROP TABLE IF EXISTS `pickup_location_product`;
CREATE TABLE `pickup_location_product` (
  `resource_id` bigint(20) unsigned DEFAULT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  KEY `pickup_location_product_resource_id_foreign` (`resource_id`),
  KEY `pickup_location_product_product_id_foreign` (`product_id`),
  CONSTRAINT `pickup_location_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pickup_location_product_ibfk_2` FOREIGN KEY (`resource_id`) REFERENCES `resources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pickup_location_product
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for product_tag
-- ----------------------------
DROP TABLE IF EXISTS `product_tag`;
CREATE TABLE `product_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `tag_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_tag_product_id_foreign` (`product_id`),
  KEY `product_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `product_tag_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `product_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_tag
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type_id` bigint(20) unsigned NOT NULL,
  `price` double DEFAULT NULL,
  `shop_id` bigint(20) unsigned DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `min_price` double(8,2) DEFAULT NULL,
  `max_price` double(8,2) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `in_stock` tinyint(1) NOT NULL DEFAULT '1',
  `is_taxable` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_class_id` bigint(20) unsigned DEFAULT NULL,
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `product_type` enum('simple','variable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simple',
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` json DEFAULT NULL,
  `video` json DEFAULT NULL,
  `gallery` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `manufacturer_id` bigint(20) unsigned DEFAULT NULL,
  `is_digital` tinyint(1) NOT NULL DEFAULT '0',
  `is_external` tinyint(1) NOT NULL DEFAULT '0',
  `external_product_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_product_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked_dates` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_type_id_foreign` (`type_id`),
  KEY `products_shipping_class_id_foreign` (`shipping_class_id`),
  KEY `products_shop_id_foreign` (`shop_id`),
  KEY `products_author_id_foreign` (`author_id`),
  KEY `products_manufacturer_id_foreign` (`manufacturer_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_ibfk_3` FOREIGN KEY (`shipping_class_id`) REFERENCES `shipping_classes` (`id`),
  CONSTRAINT `products_ibfk_4` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_ibfk_5` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for products_copy1
-- ----------------------------
DROP TABLE IF EXISTS `products_copy1`;
CREATE TABLE `products_copy1` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type_id` bigint(20) unsigned NOT NULL,
  `price` double DEFAULT NULL,
  `shop_id` bigint(20) unsigned DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `min_price` double(8,2) DEFAULT NULL,
  `max_price` double(8,2) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `in_stock` tinyint(1) NOT NULL DEFAULT '1',
  `is_taxable` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_class_id` bigint(20) unsigned DEFAULT NULL,
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `product_type` enum('simple','variable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simple',
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` json DEFAULT NULL,
  `video` json DEFAULT NULL,
  `gallery` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `manufacturer_id` bigint(20) unsigned DEFAULT NULL,
  `is_digital` tinyint(1) NOT NULL DEFAULT '0',
  `is_external` tinyint(1) NOT NULL DEFAULT '0',
  `external_product_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_product_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked_dates` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_type_id_foreign` (`type_id`),
  KEY `products_shipping_class_id_foreign` (`shipping_class_id`),
  KEY `products_shop_id_foreign` (`shop_id`),
  KEY `products_author_id_foreign` (`author_id`),
  KEY `products_manufacturer_id_foreign` (`manufacturer_id`),
  CONSTRAINT `products_copy1_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_copy1_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_copy1_ibfk_3` FOREIGN KEY (`shipping_class_id`) REFERENCES `shipping_classes` (`id`),
  CONSTRAINT `products_copy1_ibfk_4` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_copy1_ibfk_5` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products_copy1
-- ----------------------------
BEGIN;
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (1, 'Hoppister Tops', 'hoppister-tops', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 13, NULL, 2, NULL, 'en', 20.00, 25.00, NULL, 1000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 301, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/301/Chawkbazar7.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/301/conversions/Chawkbazar7-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 15:08:54', '2021-12-14 08:05:17', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (2, 'Pike Green Thunder', 'pike-green-thunder', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 14, NULL, 2, NULL, 'en', 599.00, 2000.00, NULL, 2000, 1, 0, NULL, 'publish', 'variable', '1 Pair', NULL, NULL, NULL, '{\"id\": 299, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/299/Footwear-15.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/299/conversions/Footwear-15-thumbnail.jpg\"}', NULL, '[{\"id\": 300, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/300/Footwear-14.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/300/conversions/Footwear-14-thumbnail.jpg\"}]', NULL, '2021-10-10 15:17:39', '2021-12-14 08:05:49', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (3, 'Levi Blue top', 'levi-blue-top', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 16, NULL, 2, NULL, 'en', 180.00, 600.00, NULL, 3500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 97, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/97/A-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/97/conversions/A-2-thumbnail.jpg\"}', NULL, '[{\"id\": 99, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/99/A-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/99/conversions/A-1-thumbnail.jpg\"}, {\"id\": 100, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/100/A-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/100/conversions/A-2-thumbnail.jpg\"}, {\"id\": 106, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/106/A-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/106/conversions/A-3-thumbnail.jpg\"}]', NULL, '2021-10-10 18:57:17', '2021-12-14 08:06:34', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (4, 'Dido Pilot Glass', 'dido-pilot-glass', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 15, 350, 2, 300, 'en', 350.00, 350.00, 'kjkjnjk894561230', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 107, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/107/H-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/107/conversions/H-1-thumbnail.jpg\"}', NULL, '[{\"id\": 108, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/108/H.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/108/conversions/H-thumbnail.jpg\"}, {\"id\": 109, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/109/H-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/109/conversions/H-1-thumbnail.jpg\"}]', NULL, '2021-10-10 19:27:52', '2021-12-14 08:06:41', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (5, 'Hopister Yellow', 'hopister-yellow', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 13, NULL, 2, NULL, 'en', 80.00, 100.00, NULL, 1000, 1, 0, NULL, 'publish', 'variable', '1 Pcs', NULL, NULL, NULL, '{\"id\": 110, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/110/B.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/110/conversions/B-thumbnail.jpg\"}', NULL, '[{\"id\": 112, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/112/B-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/112/conversions/B-1-thumbnail.jpg\"}, {\"id\": 113, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/113/B-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/113/conversions/B-2-thumbnail.jpg\"}, {\"id\": 114, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/114/B-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/114/conversions/B-3-thumbnail.jpg\"}]', NULL, '2021-10-10 19:31:40', '2021-12-14 08:06:49', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (6, 'Tippot Classic', 'tippot-classic', 'The new-model Submariner now features Rolex’s powerhouse calibre 3235 Perpetual movement. An upgrade from the calibre 3135 movement,', 1, 1250, 2, 1200, 'en', 1250.00, 1250.00, 'sdgiaogkdaovmalkm', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 115, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/115/B-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/115/conversions/B-3-thumbnail.jpg\"}', NULL, '[{\"id\": 117, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/117/B-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/117/conversions/B-1-thumbnail.jpg\"}, {\"id\": 118, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/118/B-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/118/conversions/B-2-thumbnail.jpg\"}, {\"id\": 119, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/119/B-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/119/conversions/B-3-thumbnail.jpg\"}]', NULL, '2021-10-10 19:34:45', '2021-12-14 08:06:55', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (7, 'Honda CRV', 'darmani-woolen-comfort', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 11, NULL, 2, NULL, 'en', 500.00, 800.00, NULL, 4500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 367, \"original\": \"http://localhost:8000/storage/367/20230421152801-f09e_wm.jpeg\", \"file_name\": \"20230421152801-f09e_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/367/conversions/20230421152801-f09e_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:38:32', '2023-05-05 07:32:25', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (8, 'BMW', 'p-m-tokyo-talkies', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 3, NULL, 2, NULL, 'en', 50.00, 1500.00, NULL, 3000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:45:43', '2023-05-05 07:30:51', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (9, 'Toyota', 'pior-womes-bangles', 'Structured buffed nappa leather top handle bag in ‘scarlet’ red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening.', 6, 1200, 2, 1150, 'en', 1200.00, 1200.00, 'sdvvsdf4544ddfgh+', 500, 1, 0, NULL, 'publish', 'simple', '1 pcs', NULL, NULL, NULL, '{\"id\": 363, \"original\": \"http://localhost:8000/storage/363/20230205143805-2348_wm.jpeg\", \"file_name\": \"20230205143805-2348_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/363/conversions/20230205143805-2348_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:47:11', '2023-05-05 07:28:25', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (10, 'Tuma Style Cap', 'tuma-style-cap', 'Structured buffed nappa leather top handle bag in ‘scarlet’ red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening.', 12, 170, 2, 150, 'en', 170.00, 170.00, '+898998', 500, 1, 0, NULL, 'publish', 'simple', '1 Pc', NULL, NULL, NULL, '{\"id\": 296, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/296/2-0%281%29.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/296/conversions/2-0%281%29-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:50:30', '2021-12-14 08:09:11', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (11, 'Tay Ben Aviator', 'tay-ben-aviator', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 3, 1500, 2, 1350, 'en', 1500.00, 1500.00, '1500654545', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 295, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/295/400.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/295/conversions/400-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:53:57', '2021-12-14 08:09:16', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (12, 'Zara Army Bag', 'zara-army-bag', 'Structured buffed nappa leather top handle bag in ‘scarlet’ red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening.', 8, 300, 2, 260, 'en', 300.00, 300.00, 'h3', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 365, \"original\": \"http://localhost:8000/storage/365/20230205152919-ccd7_wm.jpeg\", \"file_name\": \"20230205152919-ccd7_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/365/conversions/20230205152919-ccd7_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 21:49:55', '2023-05-05 07:30:10', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (13, 'Pissot Super Dry', 'pissot-super-dry', 'The new-model Submariner now features Rolex’s powerhouse calibre 3235 Perpetual movement. An upgrade from the calibre 3135 movement, it now features a more efficient skeletonized Chronergy escapement and longer power reserve.', 6, 280, 2, 250, 'en', 280.00, 280.00, '89657412330', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 322, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/322/watch.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/322/conversions/watch-thumbnail.jpg\"}', NULL, '[{\"id\": 143, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/143/F.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/143/conversions/F-thumbnail.jpg\"}, {\"id\": 144, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/144/F-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/144/conversions/F-1-thumbnail.jpg\"}]', NULL, '2021-10-11 13:14:25', '2022-03-02 04:47:50', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (14, 'Tuma Grey', 'tuma-grey', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 400.00, 1000.00, NULL, 3000, 1, 0, NULL, 'publish', 'variable', '1 pair', NULL, NULL, NULL, '{\"id\": 294, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/294/30-%281%29.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/294/conversions/30-%281%29-thumbnail.jpg\"}', NULL, '[{\"id\": 147, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/147/E-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/147/conversions/E-1-thumbnail.jpg\"}]', NULL, '2021-10-11 13:16:13', '2021-12-14 08:10:38', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (15, 'Neutral Scoop Neck Top', 'neutral-scoop-neck-top', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 3, NULL, 2, NULL, 'en', 30.00, 1000.00, NULL, 3500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 148, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/148/women5-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/148/conversions/women5-1-thumbnail.jpg\"}', NULL, '[{\"id\": 150, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/150/women-14-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/150/conversions/women-14-1-thumbnail.jpg\"}, {\"id\": 151, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/151/women-17-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/151/conversions/women-17-1-thumbnail.jpg\"}, {\"id\": 152, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/152/women-18-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/152/conversions/women-18-1-thumbnail.jpg\"}]', NULL, '2021-10-11 13:24:46', '2021-12-14 08:11:41', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (16, 'Paddidas Grey T shirt', 'paddidas-grey-t-shirt', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use. Casual wear became popular within the Western world', 13, NULL, 2, NULL, 'en', 20.00, 1000.00, NULL, 3500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 153, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/153/G.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/153/conversions/G-thumbnail.jpg\"}', NULL, '[{\"id\": 156, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/156/G-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/156/conversions/G-2-thumbnail.jpg\"}, {\"id\": 157, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/157/G-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/157/conversions/G-3-thumbnail.jpg\"}]', NULL, '2021-10-11 13:56:12', '2021-12-14 08:12:16', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (17, 'Vittione Highlander', 'vittione-highlander', 'Fendi began life in 1925 as a fur and leather speciality store in Rome.', 10, NULL, 2, NULL, 'en', 750.00, 800.00, NULL, 1000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 158, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/158/Chawkbazar13.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/158/conversions/Chawkbazar13-thumbnail.jpg\"}', NULL, '[{\"id\": 160, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/160/Chawkbazar14.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/160/conversions/Chawkbazar14-thumbnail.jpg\"}, {\"id\": 161, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/161/Chawkbazar15.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/161/conversions/Chawkbazar15-thumbnail.jpg\"}, {\"id\": 162, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/162/Chawkbazar16.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/162/conversions/Chawkbazar16-thumbnail.jpg\"}]', NULL, '2021-10-11 14:30:59', '2021-12-14 08:12:25', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (18, 'Pucchi Fasion watch', 'pucchi-fasion-watch', 'The 2020 Submariner Rolex is now powered by the calibre 3230 Perpetual movement, a brand-new movement that incorporates a Chronergy escapement', 1, 1200, 2, 1000, 'en', 1200.00, 1200.00, '/89465+21320', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 163, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/163/Watches-7.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/163/conversions/Watches-7-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-11 14:33:30', '2021-12-14 08:15:17', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (19, 'Parmani Submariner', 'parmani-submariner', 'The 2020 Submariner Rolex is now powered by the calibre 3230 Perpetual movement, a brand-new movement that incorporates a Chronergy escapement', 12, 1500, 2, 120, 'en', 1500.00, 1500.00, '5/9784615', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 165, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/165/Watches-10.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/165/conversions/Watches-10-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-11 14:37:33', '2021-12-14 08:15:23', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (20, 'Black Crew V neck Tops', 'black-crew-v-neck-tops', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 4, NULL, 2, NULL, 'en', 22.00, 30.00, NULL, 1500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 167, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/167/Women.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/167/conversions/Women-thumbnail.jpg\"}', NULL, '[{\"id\": 169, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/169/Women-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/169/conversions/Women-2-thumbnail.jpg\"}, {\"id\": 170, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/170/Women-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/170/conversions/Women-3-thumbnail.jpg\"}]', NULL, '2021-10-11 14:39:30', '2021-12-14 08:15:29', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (21, 'Pk Warm Stripes', 'pk-warm-stripes', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 10, NULL, 2, NULL, 'en', 18.00, 40.00, NULL, 1000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 171, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/171/F-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/171/conversions/F-2-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-11 14:41:08', '2021-12-14 08:15:43', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (22, 'Funder Armor Yellow Tops', 'funder-armor-yellow-tops', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 16, NULL, 2, NULL, 'en', 30.00, 35.00, NULL, 1500, 1, 0, NULL, 'publish', 'variable', '1 pcs', NULL, NULL, NULL, '{\"id\": 173, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/173/C.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/173/conversions/C-thumbnail.jpg\"}', NULL, '[{\"id\": 175, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/175/C-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/175/conversions/C-2-thumbnail.jpg\"}, {\"id\": 176, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/176/C-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/176/conversions/C-3-thumbnail.jpg\"}]', NULL, '2021-10-11 14:42:33', '2021-12-14 08:15:50', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (23, 'Toyota', 'tuma-kidsa-bag', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 3, NULL, 2, NULL, 'en', 40.00, 50.00, NULL, 1500, 1, 0, NULL, 'publish', 'variable', '1 pcs', NULL, NULL, NULL, '{\"id\": 360, \"original\": \"http://localhost:8000/storage/360/20230321145558-9f90_wm.jpeg\", \"file_name\": \"20230321145558-9f90_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/360/conversions/20230321145558-9f90_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 361, \"original\": \"http://localhost:8000/storage/361/20230321145558-9f90_wm.jpeg\", \"file_name\": \"20230321145558-9f90_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/361/conversions/20230321145558-9f90_wm-thumbnail.jpg\"}, {\"id\": 362, \"original\": \"http://localhost:8000/storage/362/20230321145558-9f90_wm.jpeg\", \"file_name\": \"20230321145558-9f90_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/362/conversions/20230321145558-9f90_wm-thumbnail.jpg\"}]', NULL, '2021-10-11 14:44:01', '2023-05-05 03:18:48', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (24, 'Chevis Womens Bag', 'chevis-womens-bag', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 5, NULL, 2, NULL, 'en', 75.00, 80.00, NULL, 1500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 179, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/179/Backpack-4.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/179/conversions/Backpack-4-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-11 14:45:37', '2021-12-14 08:16:05', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (25, 'Addidas FuelCell Propel V2 Running Shoes', 'addidas-fuelcell-propel-v2-running-shoes', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 45.00, 50.00, NULL, 2000, 1, 0, NULL, 'publish', 'variable', '1 pair', NULL, NULL, NULL, '{\"id\": 323, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/323/Footwear.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/323/conversions/Footwear-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 13:40:16', '2022-03-02 04:49:59', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (26, 'Alex Maqueeen Shoulder Bag', 'alex-maqueeen-shoulder-bag', 'Luxury British fashion house Alexander McQueen is famed for its exquisitely designed handbags and accessories, as showcased through this stunning black Box bag.', 16, 250, 2, 220, 'en', 250.00, 250.00, '8468fas4d86f4asd8fsdafsdaf+', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 181, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/181/Backpack-8.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/181/conversions/Backpack-8-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 13:47:15', '2021-12-14 08:16:21', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (27, 'Armani Retaliate Shoes', 'armani-retaliate-shoes', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 180.00, 200.00, NULL, 2000, 1, 0, NULL, 'publish', 'variable', '1 pair', NULL, NULL, NULL, '{\"id\": 182, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/182/Footwear-3-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/182/conversions/Footwear-3-1-thumbnail.jpg\"}', NULL, '[{\"id\": 183, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/183/Footwear-2-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/183/conversions/Footwear-2-1-thumbnail.jpg\"}]', NULL, '2021-10-23 13:50:44', '2021-12-14 08:16:30', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (28, 'Armani 269S Sunglasses', 'armani-269s-sunglasses', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 13, 120, 2, 80, 'en', 120.00, 120.00, 'asdaeq34234sdasdasd', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 184, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/184/Sunglasess-12-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/184/conversions/Sunglasess-12-1-thumbnail.jpg\"}', NULL, '[{\"id\": 185, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/185/Sunglasess-13-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/185/conversions/Sunglasess-13-1-thumbnail.jpg\"}]', NULL, '2021-10-23 16:19:23', '2021-12-14 08:16:38', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (29, 'Armani Checked Shirt', 'armani-checked-shirt', 'Children’s clothing/ kids wear is usually more casual than adult clothing, fit play and rest. Hosiery is usually used. More recently, however, tons of childrenswear is heavily influenced by trends in adult fashion', 16, NULL, 2, NULL, 'en', 500.00, 900.00, NULL, 300, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 186, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/186/kids-11.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/186/conversions/kids-11-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 20:07:58', '2022-03-02 04:49:24', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (30, 'Chanel Shoulder Bag', 'chanel-shoulder-bag', '100% Authenticity Guaranteed Chanel Classic Jumbo Single Flap Black Caviar Shoulder Bag', 12, 1500, 2, 1300, 'en', 1500.00, 1500.00, 'adsasfsdar34543654fddsfdsf', 300, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 188, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/188/Backpack-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/188/conversions/Backpack-1-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 20:13:50', '2021-12-14 08:16:52', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (31, 'Converse Blazing Black', 'converse-blazing-black', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 14, NULL, 2, NULL, 'en', 1800.00, 5000.00, NULL, 2650, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 189, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/189/Footwear-4-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/189/conversions/Footwear-4-1-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 20:18:14', '2021-12-14 08:16:58', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (32, 'Givenchy Shoulder Bag', 'givenchy-shoulder-bag', 'Established in 1952, Givenchy’s stance on contemporary elegance is perfectly captured through the brand’s premium accessory collections. Crafted from calf leather.', 8, 1500, 2, 1450, 'en', 1500.00, 1500.00, 'sadasds342343fsdfsdf', 100, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 191, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/191/Backpack-5.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/191/conversions/Backpack-5-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 20:21:20', '2021-12-14 08:17:04', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (33, 'Gucci Challenger', 'gucci-challenger', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 15, NULL, 2, NULL, 'en', 899.00, 1000.00, NULL, 200, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 192, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/192/women9-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/192/conversions/women9-1-thumbnail.jpg\"}', NULL, '[{\"id\": 193, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/193/women-22-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/193/conversions/women-22-1-thumbnail.jpg\"}]', NULL, '2021-10-23 20:57:31', '2021-12-14 08:17:10', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (34, 'H & Dri-FIT Fleece', 'h-dri-fit-fleece', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 13, 650, 2, 550, 'en', 650.00, 650.00, 'asadq24234sadasd', 100, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 194, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/194/women10%402x-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/194/conversions/women10%402x-1-thumbnail.jpg\"}', NULL, '[{\"id\": 195, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/195/women-13-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/195/conversions/women-13-1-thumbnail.jpg\"}]', NULL, '2021-10-23 21:10:22', '2021-12-14 08:17:15', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (35, 'H&M Boys Top', 'h-m-boys-top', 'Children’s clothing/ kids wear is usually more casual than adult clothing, fit play and rest. Hosiery is usually used. More recently, however, tons of childrenswear is heavily influenced by trends in adult fashion', 9, NULL, 2, NULL, 'en', 350.00, 1000.00, NULL, 1100, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 196, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/196/kids-4.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/196/conversions/kids-4-thumbnail.jpg\"}', NULL, '[{\"id\": 197, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/197/kids-5.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/197/conversions/kids-5-thumbnail.jpg\"}]', NULL, '2021-10-23 21:14:02', '2021-12-14 08:17:20', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (36, 'Hermes Carlton London', 'hermes-carlton-london', 'Off-White self-striped knitted midi A-line dress, has a scoop neck, sleeveless, straight hem', 6, NULL, 2, NULL, 'en', 300.00, 650.00, NULL, 2700, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 198, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/198/Grid-14.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/198/conversions/Grid-14-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:17:24', '2021-12-14 08:17:26', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (37, 'Hermes Galaxy Watch 3', 'hermes-galaxy-watch-3', 'The Original watch featuring polished rose gold stainless steel case, black dial with minimalist rose gold markers, and a black genuine leather band. The Horse logo lettering on dial and at buckle closure.', 4, 3200, 2, 2996, 'en', 3200.00, 3200.00, 'sadsafsr234234sdfsdsd', 15, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 200, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/200/Watches-16.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/200/conversions/Watches-16-thumbnail.jpg\"}', NULL, '[{\"id\": 201, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/201/Watches-16.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/201/conversions/Watches-16-thumbnail.jpg\"}]', NULL, '2021-10-23 21:19:15', '2021-12-14 08:17:31', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (38, 'Hermes Grey', 'hermes-grey', 'Children’s clothing/ kids wear is usually more casual than adult clothing, fit play and rest. Hosiery is usually used. More recently, however, tons of childrenswear is heavily influenced by trends in adult fashion', 10, 650, 2, 620, 'en', 650.00, 650.00, 'adasds324234fdsfsdf', 100, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 202, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/202/kids-17.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/202/conversions/kids-17-thumbnail.jpg\"}', NULL, '[{\"id\": 203, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/203/kids-23.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/203/conversions/kids-23-thumbnail.jpg\"}]', NULL, '2021-10-23 21:20:55', '2021-12-14 08:19:56', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (39, 'Hermes179S Sunglasses', 'hermes179s-sunglasses', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 15, 250, 2, 230, 'en', 250.00, 250.00, 'saffrwe435tgdfhdf', 250, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 204, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/204/Sunglasess-15-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/204/conversions/Sunglasess-15-1-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:22:59', '2021-12-14 08:19:51', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (40, 'Hipster Hexagonal Polarized Sunglasses', 'hipster-hexagonal-polarized-sunglasses', 'The Original watch featuring polished rose gold stainless steel case, black dial with minimalist rose gold markers, and a black genuine leather band. The Horse logo lettering on dial and at buckle closure.', 2, 300, 2, 279, 'en', 300.00, 300.00, 'dsafra453tgv', 497, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 205, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/205/Sunglasess-5-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/205/conversions/Sunglasess-5-1-thumbnail.jpg\"}', NULL, '[{\"id\": 206, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/206/Sunglasess-6.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/206/conversions/Sunglasess-6-thumbnail.jpg\"}]', NULL, '2021-10-23 21:25:08', '2021-12-14 08:19:45', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (41, 'Louise Vuitton Highlander', 'louise-vuitton-highlander', 'Fendi began life in 1925 as a fur and leather speciality store in Rome.', 11, NULL, 2, NULL, 'en', 950.00, 1150.00, NULL, 698, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 207, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/207/Chawkbazar13.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/207/conversions/Chawkbazar13-thumbnail.jpg\"}', NULL, '[{\"id\": 208, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/208/Chawkbazar14.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/208/conversions/Chawkbazar14-thumbnail.jpg\"}]', NULL, '2021-10-23 21:30:19', '2021-12-14 08:19:40', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (42, 'Louise Vutton Feel the Air', 'louise-vutton-feel-the-air', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 14, NULL, 2, NULL, 'en', 240.00, 260.00, NULL, 1200, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 209, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/209/Footwear-17.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/209/conversions/Footwear-17-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:33:38', '2021-12-14 08:19:34', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (43, 'Louise Vutton Pure Black Shirt', 'louise-vutton-pure-black-shirt', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use. Casual wear became popular within the Western world', 1, NULL, 2, NULL, 'en', 75.00, 90.00, NULL, 700, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 210, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/210/mens-9.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/210/conversions/mens-9-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:36:54', '2021-12-14 08:19:28', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (44, 'Mac Nordace Laptop Bag', 'mac-nordace-laptop-bag', 'Bewitching black, plush padding and faux-fur lining surround and cradle your 15.6 macbook™ in trendsetting luxury. It is the perfect accessory for every season and all occasions.', 8, 550, 2, 500, 'en', 550.00, 550.00, 'sdfas4335sddasd', 50, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 212, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/212/Backpack-6.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/212/conversions/Backpack-6-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:40:27', '2021-12-14 08:19:23', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (45, 'Maniac Red Boys', 'maniac-red-boys', 'Sporty essentials, these Under Armour athletic shorts are smooth and lightweight in moisture-wicking material.', 3, 15, 2, 12, 'en', 15.00, 15.00, 'ghfhg765675fhgfhg', 48, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 213, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/213/Chawkbazar17.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/213/conversions/Chawkbazar17-thumbnail.jpg\"}', NULL, '[{\"id\": 214, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/214/Chawkbazar20.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/214/conversions/Chawkbazar20-thumbnail.jpg\"}]', NULL, '2021-10-23 21:42:55', '2021-12-14 08:19:18', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (46, 'Nike Aviator', 'nike-aviator', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 160.00, 180.00, NULL, 650, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 215, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/215/Footwear-9.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/215/conversions/Footwear-9-thumbnail.jpg\"}', NULL, '[{\"id\": 216, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/216/Footwear-8.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/216/conversions/Footwear-8-thumbnail.jpg\"}]', NULL, '2021-10-23 21:49:36', '2021-12-14 08:19:13', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (47, 'Nike Black', 'nike-black', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use. Casual wear became popular within the Western world', 12, NULL, 2, NULL, 'en', 100.00, 120.00, NULL, 100, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 217, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/217/mens-2.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/217/conversions/mens-2-thumbnail.jpg\"}', NULL, '[{\"id\": 218, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/218/mens-7.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/218/conversions/mens-7-thumbnail.jpg\"}]', NULL, '2021-10-23 21:53:15', '2021-12-14 08:19:07', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (48, 'Nike Car Wheel Watch', 'nike-car-wheel-watch', 'The Original watch featuring polished rose gold stainless steel case, black dial with minimalist rose gold markers, and a black genuine leather band. The Horse logo lettering on dial and at buckle closure.', 6, 250, 2, 230, 'en', 250.00, 250.00, 'sfsdfdfg4354354sfdsdf', 50, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 219, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/219/Watches-6-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/219/conversions/Watches-6-1-thumbnail.jpg\"}', NULL, '[{\"id\": 220, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/220/Watches-7-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/220/conversions/Watches-7-1-thumbnail.jpg\"}]', NULL, '2021-10-23 21:56:11', '2021-12-14 08:19:02', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (49, 'Nike Comfy Vapor Maxpro', 'nike-comfy-vapor-maxpro', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 220.00, 250.00, 'sdfsdfsd43435dsdasd', 2000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 321, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/321/Footwear-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/321/conversions/Footwear-1-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:59:10', '2022-03-02 04:47:28', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (50, 'Nike Pro Mesh Top with Leggins', 'nike-pro-mesh-top-with-leggins', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 2, NULL, 2, NULL, 'en', 30.00, 35.00, NULL, 100, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 223, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/223/Casual-Wear-4-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/223/conversions/Casual-Wear-4-1-thumbnail.jpg\"}', NULL, '[{\"id\": 224, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/224/Casual-Wear-5-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/224/conversions/Casual-Wear-5-1-thumbnail.jpg\"}]', NULL, '2021-10-23 22:03:36', '2021-12-14 08:18:51', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (51, 'Toyota Fortuner', 'philip-lim-leather-shoulder-bag', 'Structured buffed nappa leather top handle bag in ‘scarlet’ red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening.', 8, 260, 2, 250, 'en', 260.00, 260.00, 'sadsade3432435654gfdg', 100, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 364, \"original\": \"http://localhost:8000/storage/364/20230205152919-ccd7_wm.jpeg\", \"file_name\": \"20230205152919-ccd7_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/364/conversions/20230205152919-ccd7_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 22:05:45', '2023-05-05 07:29:19', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (52, 'Reyban Havana Phantos Sunglasses', 'reyban-havana-phantos-sunglasses', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 9, 100, 2, 80, 'en', 100.00, 100.00, 'ffgd56tgdfsd', 50, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 226, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/226/Sunglasess-2-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/226/conversions/Sunglasess-2-1-thumbnail.jpg\"}', NULL, '[{\"id\": 227, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/227/Sunglasess-3-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/227/conversions/Sunglasess-3-1-thumbnail.jpg\"}]', NULL, '2021-10-23 22:09:25', '2021-12-14 08:18:41', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (53, 'Roadster Women Round Neck', 'roadster-women-round-neck', 'Fendi began life in 1925 as a fur and leather speciality store in Rome.', 11, NULL, 2, NULL, 'en', 150.00, 200.00, NULL, 100, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 228, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/228/Chawkbazar22.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/228/conversions/Chawkbazar22-thumbnail.jpg\"}', NULL, '[{\"id\": 229, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/229/Chawkbazar21.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/229/conversions/Chawkbazar21-thumbnail.jpg\"}]', NULL, '2021-10-23 22:12:41', '2021-12-14 08:18:36', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (54, 'The Horse Original', 'the-horse-original', 'The Original watch featuring polished rose gold stainless steel case, black dial with minimalist rose gold markers, and a black genuine leather band. The Horse logo lettering on dial and at buckle closure.', 4, 200, 2, 190, 'en', 200.00, 200.00, 'csdcsd77sdasda', 250, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 230, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/230/Watches-4-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/230/conversions/Watches-4-1-thumbnail.jpg\"}', NULL, '[{\"id\": 231, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/231/Watches-4-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/231/conversions/Watches-4-1-thumbnail.jpg\"}]', NULL, '2021-10-23 22:14:33', '2021-12-14 08:18:31', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (55, 'White Oxford Shirt', 'white-oxford-shirt', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 1, NULL, 2, NULL, 'en', 10.00, 40.00, NULL, 1080, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 232, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/232/Casual-Wear-1-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/232/conversions/Casual-Wear-1-1-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 22:18:00', '2021-12-14 08:18:27', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (56, 'Zara Miss Chase', 'zara-miss-chase', 'Fendi began life in 1925 as a fur and leather speciality store in Rome.', 2, 100, 2, 90, 'en', 100.00, 100.00, 'cscascas67789adasd', 120, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 234, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/234/Chawkbazar1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/234/conversions/Chawkbazar1-thumbnail.jpg\"}', NULL, '[{\"id\": 235, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/235/Chawkbazar2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/235/conversions/Chawkbazar2-thumbnail.jpg\"}]', NULL, '2021-10-23 22:20:09', '2021-12-14 08:18:21', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy1` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (57, 'Zara Monte Carlo', 'zara-monte-carlo', 'Children’s clothing/ kids wear is usually more casual than adult clothing, fit play and rest. Hosiery is usually used. More recently, however, tons of childrenswear is heavily influenced by trends in adult fashion', 10, NULL, 2, NULL, 'en', 80.00, 100.00, NULL, 740, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 368, \"original\": \"http://localhost:8000/storage/368/20230205143805-2348_wm.jpeg\", \"file_name\": \"20230205143805-2348_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/368/conversions/20230205143805-2348_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 22:22:38', '2023-05-10 07:23:27', NULL, NULL, 0, 0, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for products_copy2
-- ----------------------------
DROP TABLE IF EXISTS `products_copy2`;
CREATE TABLE `products_copy2` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `type_id` bigint(20) unsigned NOT NULL,
  `price` double DEFAULT NULL,
  `shop_id` bigint(20) unsigned DEFAULT NULL,
  `sale_price` double DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `min_price` double(8,2) DEFAULT NULL,
  `max_price` double(8,2) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `in_stock` tinyint(1) NOT NULL DEFAULT '1',
  `is_taxable` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_class_id` bigint(20) unsigned DEFAULT NULL,
  `status` enum('publish','draft') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `product_type` enum('simple','variable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'simple',
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` json DEFAULT NULL,
  `video` json DEFAULT NULL,
  `gallery` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) unsigned DEFAULT NULL,
  `manufacturer_id` bigint(20) unsigned DEFAULT NULL,
  `is_digital` tinyint(1) NOT NULL DEFAULT '0',
  `is_external` tinyint(1) NOT NULL DEFAULT '0',
  `external_product_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_product_button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blocked_dates` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_type_id_foreign` (`type_id`),
  KEY `products_shipping_class_id_foreign` (`shipping_class_id`),
  KEY `products_shop_id_foreign` (`shop_id`),
  KEY `products_author_id_foreign` (`author_id`),
  KEY `products_manufacturer_id_foreign` (`manufacturer_id`),
  CONSTRAINT `products_copy2_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_copy2_ibfk_2` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_copy2_ibfk_3` FOREIGN KEY (`shipping_class_id`) REFERENCES `shipping_classes` (`id`),
  CONSTRAINT `products_copy2_ibfk_4` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_copy2_ibfk_5` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products_copy2
-- ----------------------------
BEGIN;
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (1, 'Toyota', 'hoppister-tops', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 13, NULL, 2, NULL, 'en', 20.00, 25.00, NULL, 1000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 15:08:54', '2021-12-14 08:05:17', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (2, 'Toyota', 'pike-green-thunder', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 14, NULL, 2, NULL, 'en', 599.00, 2000.00, NULL, 2000, 1, 0, NULL, 'publish', 'variable', '1 Pair', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 300, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/300/Footwear-14.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/300/conversions/Footwear-14-thumbnail.jpg\"}]', NULL, '2021-10-10 15:17:39', '2021-12-14 08:05:49', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (3, 'Toyota', 'levi-blue-top', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 16, NULL, 2, NULL, 'en', 180.00, 600.00, NULL, 3500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 99, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/99/A-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/99/conversions/A-1-thumbnail.jpg\"}, {\"id\": 100, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/100/A-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/100/conversions/A-2-thumbnail.jpg\"}, {\"id\": 106, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/106/A-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/106/conversions/A-3-thumbnail.jpg\"}]', NULL, '2021-10-10 18:57:17', '2021-12-14 08:06:34', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (4, 'Toyota', 'dido-pilot-glass', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 15, 350, 2, 300, 'en', 350.00, 350.00, 'kjkjnjk894561230', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 108, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/108/H.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/108/conversions/H-thumbnail.jpg\"}, {\"id\": 109, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/109/H-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/109/conversions/H-1-thumbnail.jpg\"}]', NULL, '2021-10-10 19:27:52', '2021-12-14 08:06:41', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (5, 'Toyota', 'hopister-yellow', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 13, NULL, 2, NULL, 'en', 80.00, 100.00, NULL, 1000, 1, 0, NULL, 'publish', 'variable', '1 Pcs', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 112, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/112/B-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/112/conversions/B-1-thumbnail.jpg\"}, {\"id\": 113, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/113/B-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/113/conversions/B-2-thumbnail.jpg\"}, {\"id\": 114, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/114/B-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/114/conversions/B-3-thumbnail.jpg\"}]', NULL, '2021-10-10 19:31:40', '2021-12-14 08:06:49', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (6, 'Toyota', 'tippot-classic', 'The new-model Submariner now features Rolex’s powerhouse calibre 3235 Perpetual movement. An upgrade from the calibre 3135 movement,', 1, 1250, 2, 1200, 'en', 1250.00, 1250.00, 'sdgiaogkdaovmalkm', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 117, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/117/B-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/117/conversions/B-1-thumbnail.jpg\"}, {\"id\": 118, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/118/B-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/118/conversions/B-2-thumbnail.jpg\"}, {\"id\": 119, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/119/B-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/119/conversions/B-3-thumbnail.jpg\"}]', NULL, '2021-10-10 19:34:45', '2021-12-14 08:06:55', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (7, 'Toyota', 'darmani-woolen-comfort', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 11, NULL, 2, NULL, 'en', 500.00, 800.00, NULL, 4500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:38:32', '2023-05-05 07:32:25', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (8, 'Toyota', 'p-m-tokyo-talkies', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 3, NULL, 2, NULL, 'en', 50.00, 1500.00, NULL, 3000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:45:43', '2023-05-05 07:30:51', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (9, 'Toyota', 'pior-womes-bangles', 'Structured buffed nappa leather top handle bag in ‘scarlet’ red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening.', 6, 1200, 2, 1150, 'en', 1200.00, 1200.00, 'sdvvsdf4544ddfgh+', 500, 1, 0, NULL, 'publish', 'simple', '1 pcs', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:47:11', '2023-05-05 07:28:25', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (10, 'Toyota', 'tuma-style-cap', 'Structured buffed nappa leather top handle bag in ‘scarlet’ red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening.', 12, 170, 2, 150, 'en', 170.00, 170.00, '+898998', 500, 1, 0, NULL, 'publish', 'simple', '1 Pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:50:30', '2021-12-14 08:09:11', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (11, 'Toyota', 'tay-ben-aviator', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 3, 1500, 2, 1350, 'en', 1500.00, 1500.00, '1500654545', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 19:53:57', '2021-12-14 08:09:16', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (12, 'Toyota', 'zara-army-bag', 'Structured buffed nappa leather top handle bag in ‘scarlet’ red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening.', 8, 300, 2, 260, 'en', 300.00, 300.00, 'h3', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-10 21:49:55', '2023-05-05 07:30:10', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (13, 'Toyota', 'pissot-super-dry', 'The new-model Submariner now features Rolex’s powerhouse calibre 3235 Perpetual movement. An upgrade from the calibre 3135 movement, it now features a more efficient skeletonized Chronergy escapement and longer power reserve.', 6, 280, 2, 250, 'en', 280.00, 280.00, '89657412330', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 143, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/143/F.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/143/conversions/F-thumbnail.jpg\"}, {\"id\": 144, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/144/F-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/144/conversions/F-1-thumbnail.jpg\"}]', NULL, '2021-10-11 13:14:25', '2022-03-02 04:47:50', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (14, 'Toyota', 'tuma-grey', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 400.00, 1000.00, NULL, 3000, 1, 0, NULL, 'publish', 'variable', '1 pair', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 147, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/147/E-1.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/147/conversions/E-1-thumbnail.jpg\"}]', NULL, '2021-10-11 13:16:13', '2021-12-14 08:10:38', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (15, 'Toyota', 'neutral-scoop-neck-top', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 3, NULL, 2, NULL, 'en', 30.00, 1000.00, NULL, 3500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 150, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/150/women-14-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/150/conversions/women-14-1-thumbnail.jpg\"}, {\"id\": 151, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/151/women-17-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/151/conversions/women-17-1-thumbnail.jpg\"}, {\"id\": 152, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/152/women-18-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/152/conversions/women-18-1-thumbnail.jpg\"}]', NULL, '2021-10-11 13:24:46', '2021-12-14 08:11:41', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (16, 'Toyota', 'paddidas-grey-t-shirt', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use. Casual wear became popular within the Western world', 13, NULL, 2, NULL, 'en', 20.00, 1000.00, NULL, 3500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 156, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/156/G-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/156/conversions/G-2-thumbnail.jpg\"}, {\"id\": 157, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/157/G-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/157/conversions/G-3-thumbnail.jpg\"}]', NULL, '2021-10-11 13:56:12', '2021-12-14 08:12:16', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (17, 'Toyota', 'vittione-highlander', 'Fendi began life in 1925 as a fur and leather speciality store in Rome.', 10, NULL, 2, NULL, 'en', 750.00, 800.00, NULL, 1000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 160, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/160/Chawkbazar14.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/160/conversions/Chawkbazar14-thumbnail.jpg\"}, {\"id\": 161, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/161/Chawkbazar15.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/161/conversions/Chawkbazar15-thumbnail.jpg\"}, {\"id\": 162, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/162/Chawkbazar16.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/162/conversions/Chawkbazar16-thumbnail.jpg\"}]', NULL, '2021-10-11 14:30:59', '2021-12-14 08:12:25', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (18, 'Toyota', 'pucchi-fasion-watch', 'The 2020 Submariner Rolex is now powered by the calibre 3230 Perpetual movement, a brand-new movement that incorporates a Chronergy escapement', 1, 1200, 2, 1000, 'en', 1200.00, 1200.00, '/89465+21320', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-11 14:33:30', '2021-12-14 08:15:17', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (19, 'Toyota', 'parmani-submariner', 'The 2020 Submariner Rolex is now powered by the calibre 3230 Perpetual movement, a brand-new movement that incorporates a Chronergy escapement', 12, 1500, 2, 120, 'en', 1500.00, 1500.00, '5/9784615', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-11 14:37:33', '2021-12-14 08:15:23', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (20, 'Toyota', 'black-crew-v-neck-tops', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 4, NULL, 2, NULL, 'en', 22.00, 30.00, NULL, 1500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 169, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/169/Women-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/169/conversions/Women-2-thumbnail.jpg\"}, {\"id\": 170, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/170/Women-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/170/conversions/Women-3-thumbnail.jpg\"}]', NULL, '2021-10-11 14:39:30', '2021-12-14 08:15:29', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (21, 'Toyota', 'pk-warm-stripes', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 10, NULL, 2, NULL, 'en', 18.00, 40.00, NULL, 1000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-11 14:41:08', '2021-12-14 08:15:43', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (22, 'Toyota', 'funder-armor-yellow-tops', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 16, NULL, 2, NULL, 'en', 30.00, 35.00, NULL, 1500, 1, 0, NULL, 'publish', 'variable', '1 pcs', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 175, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/175/C-2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/175/conversions/C-2-thumbnail.jpg\"}, {\"id\": 176, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/176/C-3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/176/conversions/C-3-thumbnail.jpg\"}]', NULL, '2021-10-11 14:42:33', '2021-12-14 08:15:50', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (23, 'Toyota', 'tuma-kidsa-bag', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 3, NULL, 2, NULL, 'en', 40.00, 50.00, NULL, 1500, 1, 0, NULL, 'publish', 'variable', '1 pcs', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 361, \"original\": \"http://localhost:8000/storage/361/20230321145558-9f90_wm.jpeg\", \"file_name\": \"20230321145558-9f90_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/361/conversions/20230321145558-9f90_wm-thumbnail.jpg\"}, {\"id\": 362, \"original\": \"http://localhost:8000/storage/362/20230321145558-9f90_wm.jpeg\", \"file_name\": \"20230321145558-9f90_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/362/conversions/20230321145558-9f90_wm-thumbnail.jpg\"}]', NULL, '2021-10-11 14:44:01', '2023-05-05 03:18:48', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (24, 'Toyota', 'chevis-womens-bag', 'Fendi began life in 1925 as a fur and leather speciality store in Rome. Despite growing into one of the world’s most renowned luxury labels, the business has retained its family feel, with a focus on fine detail, Italian craftsmanship and the support of local artisans.', 5, NULL, 2, NULL, 'en', 75.00, 80.00, NULL, 1500, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-11 14:45:37', '2021-12-14 08:16:05', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (25, 'Toyota', 'addidas-fuelcell-propel-v2-running-shoes', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 45.00, 50.00, NULL, 2000, 1, 0, NULL, 'publish', 'variable', '1 pair', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 13:40:16', '2022-03-02 04:49:59', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (26, 'Toyota', 'alex-maqueeen-shoulder-bag', 'Luxury British fashion house Alexander McQueen is famed for its exquisitely designed handbags and accessories, as showcased through this stunning black Box bag.', 16, 250, 2, 220, 'en', 250.00, 250.00, '8468fas4d86f4asd8fsdafsdaf+', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 13:47:15', '2021-12-14 08:16:21', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (27, 'Toyota', 'armani-retaliate-shoes', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 180.00, 200.00, NULL, 2000, 1, 0, NULL, 'publish', 'variable', '1 pair', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 183, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/183/Footwear-2-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/183/conversions/Footwear-2-1-thumbnail.jpg\"}]', NULL, '2021-10-23 13:50:44', '2021-12-14 08:16:30', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (28, 'Toyota', 'armani-269s-sunglasses', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 13, 120, 2, 80, 'en', 120.00, 120.00, 'asdaeq34234sdasdasd', 500, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 185, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/185/Sunglasess-13-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/185/conversions/Sunglasess-13-1-thumbnail.jpg\"}]', NULL, '2021-10-23 16:19:23', '2021-12-14 08:16:38', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (29, 'Toyota', 'armani-checked-shirt', 'Children’s clothing/ kids wear is usually more casual than adult clothing, fit play and rest. Hosiery is usually used. More recently, however, tons of childrenswear is heavily influenced by trends in adult fashion', 16, NULL, 2, NULL, 'en', 500.00, 900.00, NULL, 300, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 20:07:58', '2022-03-02 04:49:24', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (30, 'Toyota', 'chanel-shoulder-bag', '100% Authenticity Guaranteed Chanel Classic Jumbo Single Flap Black Caviar Shoulder Bag', 12, 1500, 2, 1300, 'en', 1500.00, 1500.00, 'adsasfsdar34543654fddsfdsf', 300, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 20:13:50', '2021-12-14 08:16:52', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (31, 'Toyota', 'converse-blazing-black', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 14, NULL, 2, NULL, 'en', 1800.00, 5000.00, NULL, 2650, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 20:18:14', '2021-12-14 08:16:58', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (32, 'Toyota', 'givenchy-shoulder-bag', 'Established in 1952, Givenchy’s stance on contemporary elegance is perfectly captured through the brand’s premium accessory collections. Crafted from calf leather.', 8, 1500, 2, 1450, 'en', 1500.00, 1500.00, 'sadasds342343fsdfsdf', 100, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 20:21:20', '2021-12-14 08:17:04', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (33, 'Toyota', 'gucci-challenger', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 15, NULL, 2, NULL, 'en', 899.00, 1000.00, NULL, 200, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 193, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/193/women-22-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/193/conversions/women-22-1-thumbnail.jpg\"}]', NULL, '2021-10-23 20:57:31', '2021-12-14 08:17:10', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (34, 'Toyota', 'h-dri-fit-fleece', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 13, 650, 2, 550, 'en', 650.00, 650.00, 'asadq24234sadasd', 100, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 195, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/195/women-13-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/195/conversions/women-13-1-thumbnail.jpg\"}]', NULL, '2021-10-23 21:10:22', '2021-12-14 08:17:15', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (35, 'Toyota', 'h-m-boys-top', 'Children’s clothing/ kids wear is usually more casual than adult clothing, fit play and rest. Hosiery is usually used. More recently, however, tons of childrenswear is heavily influenced by trends in adult fashion', 9, NULL, 2, NULL, 'en', 350.00, 1000.00, NULL, 1100, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 197, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/197/kids-5.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/197/conversions/kids-5-thumbnail.jpg\"}]', NULL, '2021-10-23 21:14:02', '2021-12-14 08:17:20', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (36, 'Toyota', 'hermes-carlton-london', 'Off-White self-striped knitted midi A-line dress, has a scoop neck, sleeveless, straight hem', 6, NULL, 2, NULL, 'en', 300.00, 650.00, NULL, 2700, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:17:24', '2021-12-14 08:17:26', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (37, 'Toyota', 'hermes-galaxy-watch-3', 'The Original watch featuring polished rose gold stainless steel case, black dial with minimalist rose gold markers, and a black genuine leather band. The Horse logo lettering on dial and at buckle closure.', 4, 3200, 2, 2996, 'en', 3200.00, 3200.00, 'sadsafsr234234sdfsdsd', 15, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 201, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/201/Watches-16.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/201/conversions/Watches-16-thumbnail.jpg\"}]', NULL, '2021-10-23 21:19:15', '2021-12-14 08:17:31', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (38, 'Toyota', 'hermes-grey', 'Children’s clothing/ kids wear is usually more casual than adult clothing, fit play and rest. Hosiery is usually used. More recently, however, tons of childrenswear is heavily influenced by trends in adult fashion', 10, 650, 2, 620, 'en', 650.00, 650.00, 'adasds324234fdsfsdf', 100, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 203, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/203/kids-23.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/203/conversions/kids-23-thumbnail.jpg\"}]', NULL, '2021-10-23 21:20:55', '2021-12-14 08:19:56', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (39, 'Toyota', 'hermes179s-sunglasses', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 15, 250, 2, 230, 'en', 250.00, 250.00, 'saffrwe435tgdfhdf', 250, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:22:59', '2021-12-14 08:19:51', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (40, 'Toyota', 'hipster-hexagonal-polarized-sunglasses', 'The Original watch featuring polished rose gold stainless steel case, black dial with minimalist rose gold markers, and a black genuine leather band. The Horse logo lettering on dial and at buckle closure.', 2, 300, 2, 279, 'en', 300.00, 300.00, 'dsafra453tgv', 497, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 206, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/206/Sunglasess-6.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/206/conversions/Sunglasess-6-thumbnail.jpg\"}]', NULL, '2021-10-23 21:25:08', '2021-12-14 08:19:45', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (41, 'Toyota', 'louise-vuitton-highlander', 'Fendi began life in 1925 as a fur and leather speciality store in Rome.', 11, NULL, 2, NULL, 'en', 950.00, 1150.00, NULL, 698, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 208, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/208/Chawkbazar14.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/208/conversions/Chawkbazar14-thumbnail.jpg\"}]', NULL, '2021-10-23 21:30:19', '2021-12-14 08:19:40', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (42, 'Toyota', 'louise-vutton-feel-the-air', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 14, NULL, 2, NULL, 'en', 240.00, 260.00, NULL, 1200, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:33:38', '2021-12-14 08:19:34', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (43, 'Toyota', 'louise-vutton-pure-black-shirt', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use. Casual wear became popular within the Western world', 1, NULL, 2, NULL, 'en', 75.00, 90.00, NULL, 700, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:36:54', '2021-12-14 08:19:28', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (44, 'Toyota', 'mac-nordace-laptop-bag', 'Bewitching black, plush padding and faux-fur lining surround and cradle your 15.6 macbook™ in trendsetting luxury. It is the perfect accessory for every season and all occasions.', 8, 550, 2, 500, 'en', 550.00, 550.00, 'sdfas4335sddasd', 50, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:40:27', '2021-12-14 08:19:23', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (45, 'Toyota', 'maniac-red-boys', 'Sporty essentials, these Under Armour athletic shorts are smooth and lightweight in moisture-wicking material.', 3, 15, 2, 12, 'en', 15.00, 15.00, 'ghfhg765675fhgfhg', 48, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 214, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/214/Chawkbazar20.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/214/conversions/Chawkbazar20-thumbnail.jpg\"}]', NULL, '2021-10-23 21:42:55', '2021-12-14 08:19:18', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (46, 'Toyota', 'nike-aviator', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 160.00, 180.00, NULL, 650, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 216, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/216/Footwear-8.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/216/conversions/Footwear-8-thumbnail.jpg\"}]', NULL, '2021-10-23 21:49:36', '2021-12-14 08:19:13', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (47, 'Toyota', 'nike-black', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use. Casual wear became popular within the Western world', 12, NULL, 2, NULL, 'en', 100.00, 120.00, NULL, 100, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 218, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/218/mens-7.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/218/conversions/mens-7-thumbnail.jpg\"}]', NULL, '2021-10-23 21:53:15', '2021-12-14 08:19:07', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (48, 'Toyota', 'nike-car-wheel-watch', 'The Original watch featuring polished rose gold stainless steel case, black dial with minimalist rose gold markers, and a black genuine leather band. The Horse logo lettering on dial and at buckle closure.', 6, 250, 2, 230, 'en', 250.00, 250.00, 'sfsdfdfg4354354sfdsdf', 50, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 220, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/220/Watches-7-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/220/conversions/Watches-7-1-thumbnail.jpg\"}]', NULL, '2021-10-23 21:56:11', '2021-12-14 08:19:02', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (49, 'Toyota', 'nike-comfy-vapor-maxpro', 'Footwear refers to garments worn on the feet, which originally serves to purpose of protection against adversities of the environment, usually regarding ground textures and temperature.', 7, NULL, 2, NULL, 'en', 220.00, 250.00, 'sdfsdfsd43435dsdasd', 2000, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 21:59:10', '2022-03-02 04:47:28', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (50, 'Toyota', 'nike-pro-mesh-top-with-leggins', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 2, NULL, 2, NULL, 'en', 30.00, 35.00, NULL, 100, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 224, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/224/Casual-Wear-5-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/224/conversions/Casual-Wear-5-1-thumbnail.jpg\"}]', NULL, '2021-10-23 22:03:36', '2021-12-14 08:18:51', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (51, 'Toyota', 'philip-lim-leather-shoulder-bag', 'Structured buffed nappa leather top handle bag in ‘scarlet’ red. Carry handle at top. Detachable and adjustable shoulder strap with lanyard clasp fastening.', 8, 260, 2, 250, 'en', 260.00, 260.00, 'sadsade3432435654gfdg', 100, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 22:05:45', '2023-05-05 07:29:19', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (52, 'Toyota', 'reyban-havana-phantos-sunglasses', 'Polarized sunglasses reduce glare reflected off of roads, bodies of water, snow and other horizontal surfaces.Restore true color.Vision lenses are 400UV rated, meaning it can block UVA and UVB radiation.', 9, 100, 2, 80, 'en', 100.00, 100.00, 'ffgd56tgdfsd', 50, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 227, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/227/Sunglasess-3-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/227/conversions/Sunglasess-3-1-thumbnail.jpg\"}]', NULL, '2021-10-23 22:09:25', '2021-12-14 08:18:41', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (53, 'Toyota', 'roadster-women-round-neck', 'Fendi began life in 1925 as a fur and leather speciality store in Rome.', 11, NULL, 2, NULL, 'en', 150.00, 200.00, NULL, 100, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 229, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/229/Chawkbazar21.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/229/conversions/Chawkbazar21-thumbnail.jpg\"}]', NULL, '2021-10-23 22:12:41', '2021-12-14 08:18:36', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (54, 'Toyota', 'the-horse-original', 'The Original watch featuring polished rose gold stainless steel case, black dial with minimalist rose gold markers, and a black genuine leather band. The Horse logo lettering on dial and at buckle closure.', 4, 200, 2, 190, 'en', 200.00, 200.00, 'csdcsd77sdasda', 250, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 231, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/231/Watches-4-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/231/conversions/Watches-4-1-thumbnail.jpg\"}]', NULL, '2021-10-23 22:14:33', '2021-12-14 08:18:31', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (55, 'Toyota', 'white-oxford-shirt', 'Casual wear (casual attire or clothing) may be a Western code that’s relaxed, occasional, spontaneous and fitted to everyday use', 1, NULL, 2, NULL, 'en', 10.00, 40.00, NULL, 1080, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', NULL, '2021-10-23 22:18:00', '2021-12-14 08:18:27', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (56, 'Toyota', 'zara-miss-chase', 'Fendi began life in 1925 as a fur and leather speciality store in Rome.', 2, 100, 2, 90, 'en', 100.00, 100.00, 'cscascas67789adasd', 120, 1, 0, NULL, 'publish', 'simple', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[{\"id\": 235, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/235/Chawkbazar2.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/235/conversions/Chawkbazar2-thumbnail.jpg\"}]', NULL, '2021-10-23 22:20:09', '2021-12-14 08:18:21', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO `products_copy2` (`id`, `name`, `slug`, `description`, `type_id`, `price`, `shop_id`, `sale_price`, `language`, `min_price`, `max_price`, `sku`, `quantity`, `in_stock`, `is_taxable`, `shipping_class_id`, `status`, `product_type`, `unit`, `height`, `width`, `length`, `image`, `video`, `gallery`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `manufacturer_id`, `is_digital`, `is_external`, `external_product_url`, `external_product_button_text`, `blocked_dates`) VALUES (57, 'Toyota', 'zara-monte-carlo', 'Children’s clothing/ kids wear is usually more casual than adult clothing, fit play and rest. Hosiery is usually used. More recently, however, tons of childrenswear is heavily influenced by trends in adult fashion', 10, NULL, 2, NULL, 'en', 80.00, 100.00, NULL, 740, 1, 0, NULL, 'publish', 'variable', '1 pc', NULL, NULL, NULL, '{\"id\": 366, \"original\": \"http://localhost:8000/storage/366/20230205161054-63f3_wm.jpeg\", \"file_name\": \"20230205161054-63f3_wm.jpeg\", \"thumbnail\": \"http://localhost:8000/storage/366/conversions/20230205161054-63f3_wm-thumbnail.jpg\"}', NULL, '[]', '2023-05-14 10:27:19', '2021-10-23 22:22:38', '2023-05-14 10:27:19', NULL, NULL, 0, 0, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for products_meta
-- ----------------------------
DROP TABLE IF EXISTS `products_meta`;
CREATE TABLE `products_meta` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_meta_product_id_foreign` (`product_id`),
  KEY `products_meta_key_index` (`key`),
  CONSTRAINT `products_meta_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products_meta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for providers
-- ----------------------------
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `providers_user_id_foreign` (`user_id`),
  CONSTRAINT `providers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of providers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `shop_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_user_id_foreign` (`user_id`),
  KEY `questions_shop_id_foreign` (`shop_id`),
  KEY `questions_product_id_foreign` (`product_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `questions_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of questions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for refunds
-- ----------------------------
DROP TABLE IF EXISTS `refunds`;
CREATE TABLE `refunds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL DEFAULT '0',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `images` json DEFAULT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `shop_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `refunds_order_id_foreign` (`order_id`),
  KEY `refunds_customer_id_foreign` (`customer_id`),
  KEY `refunds_shop_id_foreign` (`shop_id`),
  CONSTRAINT `refunds_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `refunds_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `refunds_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of refunds
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for resources
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `image` json DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL,
  `type` enum('DROPOFF_LOCATION','PICKUP_LOCATION','PERSON','DEPOSIT','FEATURES') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of resources
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `shop_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_option_id` bigint(20) unsigned DEFAULT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double DEFAULT NULL,
  `photos` json DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_user_id_foreign` (`user_id`),
  KEY `reviews_shop_id_foreign` (`shop_id`),
  KEY `reviews_product_id_foreign` (`product_id`),
  KEY `reviews_order_id_foreign` (`order_id`),
  KEY `reviews_variation_option_id_foreign` (`variation_option_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_ibfk_5` FOREIGN KEY (`variation_option_id`) REFERENCES `variation_options` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of reviews
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `options` json NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_language_unique` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of settings
-- ----------------------------
BEGIN;
INSERT INTO `settings` (`id`, `options`, `language`, `created_at`, `updated_at`) VALUES (1, '{\"seo\": {\"ogImage\": {\"id\": 349, \"original\": \"http://localhost:8000/storage/349/savedee.jpg\", \"file_name\": \"savedee.jpg\", \"thumbnail\": \"http://localhost:8000/storage/349/conversions/savedee-thumbnail.jpg\"}, \"ogTitle\": null, \"metaTags\": \"ขายรถยนต์, ตลสดรถ, ตลาดรถยนต์มือสอง\", \"metaTitle\": \"SAVEDEECAR | ซื้อขายรถมือสอง\", \"canonicalUrl\": null, \"ogDescription\": null, \"twitterHandle\": null, \"metaDescription\": \"รวมทุกรุ่นทุกยี่ห้อ ทั้งรถกระบะ รถเก๋ง รถ SUV รถตู้และรถบรรทุกมือสองจากเต็นท์รถและเจ้าของขายเอง ราคาดีที่ SAVEDEECAR หาซื้อรถมือสองสภาพดี ราคาถูก\", \"twitterCardType\": null}, \"logo\": {\"id\": 348, \"original\": \"http://localhost:8000/storage/348/savedee.jpg\", \"file_name\": \"savedee.jpg\", \"thumbnail\": \"http://localhost:8000/storage/348/conversions/savedee-thumbnail.jpg\"}, \"currency\": \"THB\", \"taxClass\": 1, \"siteTitle\": \"SAVEDEECAR\", \"deliveryTime\": [{\"title\": \"Express Delivery\", \"description\": \"90 min express delivery\"}, {\"title\": \"Morning\", \"description\": \"8.00 AM - 11.00 AM\"}, {\"title\": \"Noon\", \"description\": \"11.00 AM - 2.00 PM\"}, {\"title\": \"Afternoon\", \"description\": \"2.00 PM - 5.00 PM\"}, {\"title\": \"Evening\", \"description\": \"5.00 PM - 8.00 PM\"}], \"freeShipping\": false, \"signupPoints\": null, \"siteSubtitle\": \"SAVEDEECAR ซื้อขายรถมือสอง\", \"shippingClass\": 1, \"contactDetails\": {\"contact\": \"+129290122122\", \"socials\": [{\"url\": \"https://www.facebook.com/\", \"icon\": \"FacebookIcon\"}, {\"url\": \"https://twitter.com/\", \"icon\": \"TwitterIcon\"}, {\"url\": \"https://instagram.com/\", \"icon\": \"InstagramIcon\"}], \"website\": \"https://redq.io\", \"location\": {\"lat\": 42.9585979, \"lng\": -76.90872019999999, \"state\": \"NY\", \"country\": \"United States\", \"formattedAddress\": \"NY State Thruway, New York, USA\"}}, \"paymentGateway\": \"stripe\", \"useCashOnDelivery\": false, \"freeShippingAmount\": null, \"minimumOrderAmount\": 0, \"currencyToWalletRatio\": null}', 'en', '2021-10-12 06:20:14', '2023-05-01 07:44:47');
COMMIT;

-- ----------------------------
-- Table structure for shipping_classes
-- ----------------------------
DROP TABLE IF EXISTS `shipping_classes`;
CREATE TABLE `shipping_classes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `is_global` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `type` enum('fixed','percentage','free_shipping') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shipping_classes
-- ----------------------------
BEGIN;
INSERT INTO `shipping_classes` (`id`, `name`, `amount`, `is_global`, `type`, `created_at`, `updated_at`) VALUES (1, 'Global', 50, '1', 'fixed', '2021-10-25 05:06:16', '2021-10-25 05:06:16');
INSERT INTO `shipping_classes` (`id`, `name`, `amount`, `is_global`, `type`, `created_at`, `updated_at`) VALUES (2, 'Free Shippping To USA', 3, '1', 'free_shipping', '2021-11-28 07:36:37', '2021-11-28 07:37:22');
COMMIT;

-- ----------------------------
-- Table structure for shops
-- ----------------------------
DROP TABLE IF EXISTS `shops`;
CREATE TABLE `shops` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `cover_image` json DEFAULT NULL,
  `logo` json DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `address` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `notifications` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shops_owner_id_foreign` (`owner_id`),
  CONSTRAINT `shops_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of shops
-- ----------------------------
BEGIN;
INSERT INTO `shops` (`id`, `owner_id`, `name`, `slug`, `description`, `cover_image`, `logo`, `is_active`, `address`, `settings`, `notifications`, `created_at`, `updated_at`) VALUES (1, 2, 'Chawkbazar Shop', 'chawkbazar-shop', 'This is the chawkbazar Laravel shop owner', '{\"id\": 9, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/9/Untitled-4.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/9/conversions/Untitled-4-thumbnail.jpg\"}', '{\"id\": 12, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/12/chawkBazar573_350.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/12/conversions/chawkBazar573_350-thumbnail.jpg\"}', 0, '{\"zip\": \"8021\", \"city\": \"zurich\", \"state\": null, \"country\": \"Switzerland\", \"street_address\": \"44444\"}', '{\"contact\": \"0799302967\", \"socials\": [], \"website\": null, \"location\": []}', NULL, '2021-10-09 16:24:30', '2021-10-09 16:58:40');
INSERT INTO `shops` (`id`, `owner_id`, `name`, `slug`, `description`, `cover_image`, `logo`, `is_active`, `address`, `settings`, `notifications`, `created_at`, `updated_at`) VALUES (2, 2, 'Chawkbazar Vendor shop', 'chawkbazar-vendor-shop', 'This is a vendor shop of chawkbazar', '{\"id\": 16, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/16/Untitled-3.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/16/conversions/Untitled-3-thumbnail.jpg\"}', '{\"id\": 15, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/15/fashion.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/15/conversions/fashion-thumbnail.jpg\"}', 1, '{\"zip\": \"02210\", \"city\": \"Boston\", \"state\": \"Massachusetts\", \"country\": \"USA\", \"street_address\": \"4360 Hampton Meadows\"}', '{\"contact\": \"01236547852\", \"socials\": [], \"website\": null, \"location\": []}', NULL, '2021-10-09 16:57:34', '2023-05-15 13:29:54');
COMMIT;

-- ----------------------------
-- Table structure for store_notice_read
-- ----------------------------
DROP TABLE IF EXISTS `store_notice_read`;
CREATE TABLE `store_notice_read` (
  `store_notice_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  KEY `store_notice_read_store_notice_id_foreign` (`store_notice_id`),
  KEY `store_notice_read_user_id_foreign` (`user_id`),
  CONSTRAINT `store_notice_read_ibfk_1` FOREIGN KEY (`store_notice_id`) REFERENCES `store_notices` (`id`) ON DELETE CASCADE,
  CONSTRAINT `store_notice_read_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of store_notice_read
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for store_notice_shop
-- ----------------------------
DROP TABLE IF EXISTS `store_notice_shop`;
CREATE TABLE `store_notice_shop` (
  `store_notice_id` bigint(20) unsigned DEFAULT NULL,
  `shop_id` bigint(20) unsigned DEFAULT NULL,
  KEY `store_notice_shop_store_notice_id_foreign` (`store_notice_id`),
  KEY `store_notice_shop_shop_id_foreign` (`shop_id`),
  CONSTRAINT `store_notice_shop_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `store_notice_shop_ibfk_2` FOREIGN KEY (`store_notice_id`) REFERENCES `store_notices` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of store_notice_shop
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for store_notice_user
-- ----------------------------
DROP TABLE IF EXISTS `store_notice_user`;
CREATE TABLE `store_notice_user` (
  `store_notice_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  KEY `store_notice_user_store_notice_id_foreign` (`store_notice_id`),
  KEY `store_notice_user_user_id_foreign` (`user_id`),
  CONSTRAINT `store_notice_user_ibfk_1` FOREIGN KEY (`store_notice_id`) REFERENCES `store_notices` (`id`) ON DELETE CASCADE,
  CONSTRAINT `store_notice_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of store_notice_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for store_notices
-- ----------------------------
DROP TABLE IF EXISTS `store_notices`;
CREATE TABLE `store_notices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `priority` enum('high','medium','low') COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `effective_from` datetime NOT NULL DEFAULT '2023-04-30 05:27:40',
  `expired_at` datetime NOT NULL,
  `type` enum('all_vendor','specific_vendor','all_shop','specific_shop') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `store_notices_created_by_foreign` (`created_by`),
  KEY `store_notices_updated_by_foreign` (`updated_by`),
  CONSTRAINT `store_notices_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  CONSTRAINT `store_notices_ibfk_2` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of store_notices
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` json DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tags
-- ----------------------------
BEGIN;
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'Sports', 'new-sports', 'en', NULL, '{\"id\": 17, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/17/chawkb.sports.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/17/conversions/chawkb.sports-thumbnail.jpg\"}', NULL, '2021-10-09 17:17:51', '2021-10-09 17:17:51', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'Sunglass', 'exclusive-sunglasses', 'en', NULL, '{\"id\": 20, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/20/chawkbsunglass.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/20/conversions/chawkbsunglass-thumbnail.jpg\"}', NULL, '2021-10-09 17:21:17', '2021-10-09 17:21:17', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'Coupons', 'product-coupons', 'en', NULL, '{\"id\": 21, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/21/chawkbcoupond.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/21/conversions/chawkbcoupond-thumbnail.jpg\"}', NULL, '2021-10-09 17:21:38', '2021-10-09 19:19:47', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'Backpack', 'new-backpack', 'en', 'HandBags', '{\"id\": 22, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/22/chawkbbackpack.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/22/conversions/chawkbbackpack-thumbnail.jpg\"}', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:21:58', '2021-11-29 06:01:58', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'Women\'s Collection', 'womens-collection', 'en', 'WomenDress', '{\"id\": 23, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/23/chawkbwomen.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/23/conversions/chawkbwomen-thumbnail.jpg\"}', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:22:18', '2021-11-29 06:02:04', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'Men\'s Collection', 'mens-collection', 'en', 'Pants', '{\"id\": 25, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/25/Banner-5.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/25/conversions/Banner-5-thumbnail.jpg\"}', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:24:03', '2021-11-29 06:02:09', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'Flash Sale', 'flash-sale', 'en', 'Accessories', '[]', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:26:01', '2021-11-29 06:02:13', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'Featured Products', 'featured-products', 'en', 'Accessories', '[]', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:41:16', '2021-11-29 06:02:22', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 'Kids Collection', 'kids-collection', 'en', 'Skirts', '{\"id\": 34, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/34/banner-mobile-3.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/34/conversions/banner-mobile-3-thumbnail.jpg\"}', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:52:56', '2021-11-29 06:02:30', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 'Winter Collection', 'winter-collection', 'en', 'Accessories', '{\"id\": 35, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/35/banner-1.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/35/conversions/banner-1-thumbnail.jpg\"}', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:53:38', '2021-11-29 06:02:33', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 'Gift Collection', 'gift-collection', 'en', 'ShoulderBags', '{\"id\": 36, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/36/banner-2.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/36/conversions/banner-2-thumbnail.jpg\"}', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:54:07', '2021-11-29 06:02:43', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 'Winter Offer', 'winter-offer', 'en', 'Accessories', '{\"id\": 37, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/37/banner-3.jpg\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/37/conversions/banner-3-thumbnail.jpg\"}', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-09 17:54:24', '2021-11-29 06:02:47', NULL);
INSERT INTO `tags` (`id`, `name`, `slug`, `language`, `icon`, `image`, `details`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 'On Sale', 'on-sale', 'en', 'Accessories', '[]', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.', '2021-10-26 07:24:07', '2021-11-29 06:02:50', NULL);
COMMIT;

-- ----------------------------
-- Table structure for tax_classes
-- ----------------------------
DROP TABLE IF EXISTS `tax_classes`;
CREATE TABLE `tax_classes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` double NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_global` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `on_shipping` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tax_classes
-- ----------------------------
BEGIN;
INSERT INTO `tax_classes` (`id`, `country`, `state`, `zip`, `city`, `rate`, `name`, `is_global`, `priority`, `on_shipping`, `created_at`, `updated_at`) VALUES (1, 'United States', 'ny', '10001', 'ny', 2, 'Global', NULL, NULL, 1, '2021-10-25 05:05:58', '2021-11-28 07:25:09');
INSERT INTO `tax_classes` (`id`, `country`, `state`, `zip`, `city`, `rate`, `name`, `is_global`, `priority`, `on_shipping`, `created_at`, `updated_at`) VALUES (2, 'USA', 'NY', '1001', 'NY', 5, 'USA Tax', NULL, NULL, 1, '2021-11-28 07:38:04', '2021-11-28 07:38:04');
COMMIT;

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotional_sliders` json DEFAULT NULL,
  `images` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of types
-- ----------------------------
BEGIN;
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (1, 'Fusion', '[]', 'fusion', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 41, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/41/adidas.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/41/conversions/adidas-thumbnail.jpg\"}, {\"id\": 42, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/42/fustion.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/42/conversions/fustion-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 284, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/284/Group-36184.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/284/conversions/Group-36184-thumbnail.jpg\"}]}]', '2021-10-10 13:31:55', '2021-11-29 05:59:03');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (2, 'Vintgae', '[]', 'vintgae', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 43, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/43/puma-logo.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/43/conversions/puma-logo-thumbnail.jpg\"}, {\"id\": 44, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/44/vintege.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/44/conversions/vintege-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 285, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/285/Group-36183.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/285/conversions/Group-36183-thumbnail.jpg\"}]}]', '2021-10-10 13:50:14', '2021-11-29 05:58:59');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (3, 'Masteriod', '[]', 'masteriod', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 45, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/45/dior.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/45/conversions/dior-thumbnail.jpg\"}, {\"id\": 46, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/46/logo3.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/46/conversions/logo3-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 286, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/286/Group-36186.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/286/conversions/Group-36186-thumbnail.jpg\"}]}]', '2021-10-10 13:50:57', '2021-11-29 05:58:56');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (4, 'Hoppister', '[]', 'hoppister', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 47, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/47/levi-s.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/47/conversions/levi-s-thumbnail.jpg\"}, {\"id\": 48, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/48/logo4.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/48/conversions/logo4-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 287, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/287/Group-36185.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/287/conversions/Group-36185-thumbnail.jpg\"}]}]', '2021-10-10 13:51:31', '2021-11-29 05:58:53');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (5, 'Klien Shoes', '[]', 'klien-shoes', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 53, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/53/Calvin-klein.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/53/conversions/Calvin-klein-thumbnail.jpg\"}, {\"id\": 54, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/54/logo5.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/54/conversions/logo5-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 288, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/288/Group-36182.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/288/conversions/Group-36182-thumbnail.jpg\"}]}]', '2021-10-10 13:56:53', '2021-11-29 05:58:49');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (6, 'Ceseare', '[]', 'ceseare', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 55, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/55/tissot.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/55/conversions/tissot-thumbnail.jpg\"}, {\"id\": 56, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/56/logo6.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/56/conversions/logo6-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 289, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/289/Group-36181.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/289/conversions/Group-36181-thumbnail.jpg\"}]}]', '2021-10-10 13:57:58', '2021-11-29 05:58:45');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (7, 'AB Shoes', '[]', 'ab-shoes', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 57, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/57/nike.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/57/conversions/nike-thumbnail.jpg\"}, {\"id\": 58, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/58/logo7.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/58/conversions/logo7-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 283, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/283/Group-36180.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/283/conversions/Group-36180-thumbnail.jpg\"}]}]', '2021-10-10 13:58:30', '2021-11-29 05:58:41');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (8, 'Phonix Bags', '[]', 'phonix-bags', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 59, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/59/herschel.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/59/conversions/herschel-thumbnail.jpg\"}, {\"id\": 60, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/60/logo8.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/60/conversions/logo8-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 282, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/282/Group-36179.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/282/conversions/Group-36179-thumbnail.jpg\"}]}]', '2021-10-10 13:59:04', '2021-11-29 05:58:37');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (9, 'Hipster', '[]', 'hipster', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 61, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/61/Hollister.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/61/conversions/Hollister-thumbnail.jpg\"}, {\"id\": 62, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/62/logo4.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/62/conversions/logo4-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 281, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/281/shovia.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/281/conversions/shovia-thumbnail.jpg\"}]}]', '2021-10-10 13:59:33', '2021-11-29 05:58:33');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (10, 'Fania Fashion', '[]', 'fania-fashion', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 63, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/63/zara.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/63/conversions/zara-thumbnail.jpg\"}, {\"id\": 64, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/64/logo10.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/64/conversions/logo10-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 291, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/291/hunter-shoes.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/291/conversions/hunter-shoes-thumbnail.jpg\"}]}]', '2021-10-10 14:00:19', '2021-11-29 05:58:29');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (11, 'Hairstore VIntage', '[]', 'hairstore-vintage', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 66, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/66/gucci.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/66/conversions/gucci-thumbnail.jpg\"}, {\"id\": 67, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/67/logo11.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/67/conversions/logo11-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 276, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/276/hoppister.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/276/conversions/hoppister-thumbnail.jpg\"}]}]', '2021-10-10 14:01:33', '2021-11-29 05:58:25');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (12, 'T Fashion', '[]', 't-fashion', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 68, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/68/under-armour.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/68/conversions/under-armour-thumbnail.jpg\"}, {\"id\": 69, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/69/logo12.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/69/conversions/logo12-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 275, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/275/fusion.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/275/conversions/fusion-thumbnail.jpg\"}]}]', '2021-10-10 14:02:00', '2021-11-29 05:58:22');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (13, 'Vintage Design', '[]', 'vintage-design', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 70, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/70/emporio-armani.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/70/conversions/emporio-armani-thumbnail.jpg\"}, {\"id\": 71, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/71/vintege.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/71/conversions/vintege-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 274, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/274/fashadil.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/274/conversions/fashadil-thumbnail.jpg\"}]}]', '2021-10-10 14:03:01', '2021-11-29 05:58:18');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (14, 'Vint Shoes', '[]', 'vint-shoes', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 72, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/72/converse.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/72/conversions/converse-thumbnail.jpg\"}, {\"id\": 73, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/73/logo14.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/73/conversions/logo14-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 273, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/273/elegance.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/273/conversions/elegance-thumbnail.jpg\"}]}]', '2021-10-10 14:03:38', '2021-11-29 05:58:14');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (15, 'Roseban', '[]', 'roseban', 'en', 'DressIcon', NULL, '[{\"key\": \"grid-layout\", \"image\": [{\"id\": 74, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/74/ray-ban.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/74/conversions/ray-ban-thumbnail.jpg\"}, {\"id\": 75, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/75/logo15.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/75/conversions/logo15-thumbnail.jpg\"}]}, {\"key\": \"slider-layout\", \"image\": [{\"id\": 272, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/272/club-shoes.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/272/conversions/club-shoes-thumbnail.jpg\"}]}]', '2021-10-10 14:04:02', '2021-11-29 05:58:10');
INSERT INTO `types` (`id`, `name`, `settings`, `slug`, `language`, `icon`, `promotional_sliders`, `images`, `created_at`, `updated_at`) VALUES (16, 'HM trades', '[]', 'hm-trades', 'en', 'DressIcon', NULL, '[{\"key\": \"slider-layout\", \"image\": [{\"id\": 290, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/290/blaze-fashion.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/290/conversions/blaze-fashion-thumbnail.jpg\"}]}, {\"key\": \"grid-layout\", \"image\": [{\"id\": 269, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/269/h%26m.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/269/conversions/h%26m-thumbnail.jpg\"}, {\"id\": 271, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/271/logo16.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/271/conversions/logo16-thumbnail.jpg\"}]}]', '2021-10-10 14:04:29', '2021-11-29 05:57:37');
COMMIT;

-- ----------------------------
-- Table structure for user_profiles
-- ----------------------------
DROP TABLE IF EXISTS `user_profiles`;
CREATE TABLE `user_profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `avatar` json DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `socials` json DEFAULT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifications` json DEFAULT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_profiles_customer_id_foreign` (`customer_id`),
  CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_profiles
-- ----------------------------
BEGIN;
INSERT INTO `user_profiles` (`id`, `avatar`, `bio`, `socials`, `contact`, `notifications`, `customer_id`, `created_at`, `updated_at`) VALUES (2, '{\"id\": 297, \"original\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/297/store_owner.png\", \"thumbnail\": \"https://chawkbazarlaravel.s3.ap-southeast-1.amazonaws.com/297/conversions/store_owner-thumbnail.jpg\"}', 'This is the store owner and we have 6 shops under our banner. We are running all the shops to give our customers hassle-free service and quality products. Our goal is to provide best possible customer service and products for our clients', NULL, '12365141641631', NULL, 2, '2021-08-18 13:17:53', '2021-11-25 06:21:29');
INSERT INTO `user_profiles` (`id`, `avatar`, `bio`, `socials`, `contact`, `notifications`, `customer_id`, `created_at`, `updated_at`) VALUES (3, NULL, '', NULL, '19365141641631', NULL, 3, '2021-08-18 13:17:53', '2021-08-18 13:17:53');
COMMIT;

-- ----------------------------
-- Table structure for user_shop
-- ----------------------------
DROP TABLE IF EXISTS `user_shop`;
CREATE TABLE `user_shop` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `shop_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_shop_shop_id_foreign` (`shop_id`),
  KEY `user_shop_user_id_foreign` (`user_id`),
  CONSTRAINT `user_shop_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_shop_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_shop
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `shop_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_shop_id_foreign` (`shop_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_active`, `shop_id`) VALUES (2, 'Shop Owner', 'vendor@demo.com', NULL, '$2y$10$5l2e.NYkxAHFeZWMOqvFoew6GjT0/0bB42wukw3I1l.trTbN951kW', NULL, '2021-10-09 16:39:49', '2021-11-25 06:21:22', 1, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_active`, `shop_id`) VALUES (3, 'Customer', 'customer@demo.com', NULL, '$2y$10$DeU1iilF9mg/BBqypizpZ.ysFjuIoHHIycxHmZrAvqTasTErs3P8G', NULL, '2021-11-25 06:22:18', '2021-11-25 06:22:18', 1, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_active`, `shop_id`) VALUES (4, 'admin@gmial.com', 'admin@gmail.com', '2023-04-30 05:28:37', '$2y$10$OTyqdZ8Qi8my86V48kiXWuGyt0uwPlxSuBCNcBvl8c5O1zqkqok9e', NULL, '2023-04-30 05:28:37', '2023-04-30 05:28:37', 1, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_active`, `shop_id`) VALUES (5, 'ดีดีกู๊ดคาร์', 'shop@gmail.com', NULL, '$2y$10$esaIFvyhqqsDcHK076.cJ.cmaUQ6I7U5X0a53ORjdbZwudOOSUgFi', NULL, '2023-05-17 07:17:56', '2023-05-17 07:17:56', 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for variation_options
-- ----------------------------
DROP TABLE IF EXISTS `variation_options`;
CREATE TABLE `variation_options` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` json DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `quantity` bigint(20) unsigned NOT NULL,
  `is_disable` tinyint(1) NOT NULL DEFAULT '0',
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` json NOT NULL,
  `product_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_digital` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `variation_options_product_id_foreign` (`product_id`),
  CONSTRAINT `variation_options_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of variation_options
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for wallets
-- ----------------------------
DROP TABLE IF EXISTS `wallets`;
CREATE TABLE `wallets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `total_points` double NOT NULL DEFAULT '0',
  `points_used` double NOT NULL DEFAULT '0',
  `available_points` double NOT NULL DEFAULT '0',
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wallets_customer_id_foreign` (`customer_id`),
  CONSTRAINT `wallets_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wallets
-- ----------------------------
BEGIN;
INSERT INTO `wallets` (`id`, `total_points`, `points_used`, `available_points`, `customer_id`, `created_at`, `updated_at`) VALUES (1, 0, 0, 0, 5, '2023-05-17 07:17:56', '2023-05-17 07:17:56');
COMMIT;

-- ----------------------------
-- Table structure for wishlists
-- ----------------------------
DROP TABLE IF EXISTS `wishlists`;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_option_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlists_user_id_foreign` (`user_id`),
  KEY `wishlists_product_id_foreign` (`product_id`),
  KEY `wishlists_variation_option_id_foreign` (`variation_option_id`),
  CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `wishlists_ibfk_3` FOREIGN KEY (`variation_option_id`) REFERENCES `variation_options` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wishlists
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for withdraws
-- ----------------------------
DROP TABLE IF EXISTS `withdraws`;
CREATE TABLE `withdraws` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(20) unsigned NOT NULL,
  `amount` double(8,2) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approved','processing','rejected','pending','on_hold') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `details` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `withdraws_shop_id_foreign` (`shop_id`),
  CONSTRAINT `withdraws_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of withdraws
-- ----------------------------
BEGIN;
INSERT INTO `withdraws` (`id`, `shop_id`, `amount`, `payment_method`, `status`, `details`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 2, 500.00, 'cash', 'approved', 'need to with draw 500', NULL, NULL, '2021-11-28 06:39:42', '2021-11-28 07:24:08');
INSERT INTO `withdraws` (`id`, `shop_id`, `amount`, `payment_method`, `status`, `details`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES (2, 2, 250.00, 'cash', 'on_hold', 'Need to withdraw 250', 'urgently required', NULL, '2021-11-28 07:15:08', '2021-11-28 07:20:31');
INSERT INTO `withdraws` (`id`, `shop_id`, `amount`, `payment_method`, `status`, `details`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES (3, 2, 6500.00, 'cash', 'rejected', 'need to withdraw', NULL, NULL, '2021-11-28 07:17:48', '2021-11-28 07:20:51');
INSERT INTO `withdraws` (`id`, `shop_id`, `amount`, `payment_method`, `status`, `details`, `note`, `deleted_at`, `created_at`, `updated_at`) VALUES (4, 2, 600.00, 'cash', 'on_hold', 'need urgently', 'need payment', NULL, '2021-11-28 07:21:20', '2021-11-28 17:13:39');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
