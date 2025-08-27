/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424 (10.4.24-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : db_inventoryweb

 Target Server Type    : MySQL
 Target Server Version : 100424 (10.4.24-MariaDB)
 File Encoding         : 65001

 Date: 27/08/2025 13:34:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2022_10_31_061811_create_menu_table', 1);
INSERT INTO `migrations` VALUES (4, '2022_11_01_041110_create_table_role', 1);
INSERT INTO `migrations` VALUES (5, '2022_11_01_083314_create_table_user', 1);
INSERT INTO `migrations` VALUES (6, '2022_11_03_023905_create_table_submenu', 1);
INSERT INTO `migrations` VALUES (7, '2022_11_03_064417_create_tbl_akses', 1);
INSERT INTO `migrations` VALUES (8, '2022_11_08_024215_create_tbl_web', 1);
INSERT INTO `migrations` VALUES (9, '2022_11_15_131148_create_tbl_jenisbarang', 2);
INSERT INTO `migrations` VALUES (10, '2022_11_15_173700_create_tbl_satuan', 3);
INSERT INTO `migrations` VALUES (11, '2022_11_15_180434_create_tbl_merk', 4);
INSERT INTO `migrations` VALUES (12, '2022_11_16_120018_create_tbl_appreance', 5);
INSERT INTO `migrations` VALUES (13, '2022_11_25_141731_create_tbl_barang', 6);
INSERT INTO `migrations` VALUES (14, '2022_11_26_011349_create_tbl_customer', 7);
INSERT INTO `migrations` VALUES (16, '2022_11_28_151108_create_tbl_barangmasuk', 8);
INSERT INTO `migrations` VALUES (17, '2022_11_30_115904_create_tbl_barangkeluar', 9);
INSERT INTO `migrations` VALUES (18, '2025_08_27_045753_create_tbl_login_history_table', 10);

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_akses
-- ----------------------------
DROP TABLE IF EXISTS `tbl_akses`;
CREATE TABLE `tbl_akses`  (
  `akses_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `submenu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `othermenu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`akses_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 568 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_akses
-- ----------------------------
INSERT INTO `tbl_akses` VALUES (224, '1667444041', NULL, NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (225, '1667444041', NULL, NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (226, '1667444041', NULL, NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (227, '1667444041', NULL, NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (228, '1668509889', NULL, NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (229, '1668509889', NULL, NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (230, '1668509889', NULL, NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (231, '1668509889', NULL, NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (232, '1668510437', NULL, NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (233, '1668510437', NULL, NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (234, '1668510437', NULL, NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (235, '1668510437', NULL, NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (236, '1668510568', NULL, NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (237, '1668510568', NULL, NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (238, '1668510568', NULL, NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (239, '1668510568', NULL, NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (240, NULL, '9', NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (241, NULL, '9', NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (242, NULL, '9', NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (243, NULL, '9', NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (248, NULL, '17', NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (249, NULL, '17', NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (250, NULL, '17', NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (251, NULL, '17', NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (252, NULL, '10', NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (253, NULL, '10', NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (254, NULL, '10', NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (255, NULL, '10', NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (260, NULL, '18', NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (261, NULL, '18', NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (262, NULL, '18', NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (263, NULL, '18', NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (264, NULL, '19', NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (265, NULL, '19', NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (266, NULL, '19', NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (267, NULL, '19', NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (268, NULL, '20', NULL, '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (269, NULL, '20', NULL, '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (270, NULL, '20', NULL, '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (271, NULL, '20', NULL, '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (272, NULL, NULL, '1', '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (273, NULL, NULL, '2', '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (274, NULL, NULL, '3', '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (275, NULL, NULL, '4', '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (276, NULL, NULL, '5', '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (277, NULL, NULL, '6', '1', 'view', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (278, NULL, NULL, '1', '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (279, NULL, NULL, '2', '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (280, NULL, NULL, '3', '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (281, NULL, NULL, '4', '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (282, NULL, NULL, '5', '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (283, NULL, NULL, '6', '1', 'create', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (284, NULL, NULL, '1', '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (285, NULL, NULL, '2', '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (286, NULL, NULL, '3', '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (287, NULL, NULL, '4', '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (288, NULL, NULL, '5', '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (289, NULL, NULL, '6', '1', 'update', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (290, NULL, NULL, '1', '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (291, NULL, NULL, '2', '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (292, NULL, NULL, '3', '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (293, NULL, NULL, '4', '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (294, NULL, NULL, '5', '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (295, NULL, NULL, '6', '1', 'delete', '2022-11-24 12:07:30', '2022-11-24 12:07:30');
INSERT INTO `tbl_akses` VALUES (296, '1667444041', NULL, NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (297, '1667444041', NULL, NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (298, '1667444041', NULL, NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (299, '1667444041', NULL, NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (300, '1668509889', NULL, NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (301, '1668509889', NULL, NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (302, '1668509889', NULL, NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (303, '1668509889', NULL, NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (304, '1668510437', NULL, NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (305, '1668510437', NULL, NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (306, '1668510437', NULL, NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (307, '1668510437', NULL, NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (308, '1668510568', NULL, NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (309, '1668510568', NULL, NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (310, '1668510568', NULL, NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (311, '1668510568', NULL, NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (312, NULL, '9', NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (313, NULL, '9', NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (314, NULL, '9', NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (315, NULL, '9', NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (320, NULL, '17', NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (321, NULL, '17', NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (322, NULL, '17', NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (323, NULL, '17', NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (324, NULL, '10', NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (325, NULL, '10', NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (326, NULL, '10', NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (327, NULL, '10', NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (332, NULL, '18', NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (333, NULL, '18', NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (334, NULL, '18', NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (335, NULL, '18', NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (336, NULL, '19', NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (337, NULL, '19', NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (338, NULL, '19', NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (339, NULL, '19', NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (340, NULL, '20', NULL, '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (341, NULL, '20', NULL, '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (342, NULL, '20', NULL, '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (343, NULL, '20', NULL, '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (344, NULL, NULL, '1', '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (345, NULL, NULL, '2', '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (346, NULL, NULL, '3', '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (347, NULL, NULL, '4', '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (349, NULL, NULL, '6', '2', 'view', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (350, NULL, NULL, '1', '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (351, NULL, NULL, '2', '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (352, NULL, NULL, '3', '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (353, NULL, NULL, '4', '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (354, NULL, NULL, '5', '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (355, NULL, NULL, '6', '2', 'create', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (356, NULL, NULL, '1', '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (357, NULL, NULL, '2', '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (358, NULL, NULL, '3', '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (359, NULL, NULL, '4', '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (360, NULL, NULL, '5', '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (361, NULL, NULL, '6', '2', 'update', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (362, NULL, NULL, '1', '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (363, NULL, NULL, '2', '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (364, NULL, NULL, '3', '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (365, NULL, NULL, '4', '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (366, NULL, NULL, '5', '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (367, NULL, NULL, '6', '2', 'delete', '2022-11-24 13:04:11', '2022-11-24 13:04:11');
INSERT INTO `tbl_akses` VALUES (368, '1667444041', NULL, NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (369, '1667444041', NULL, NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (370, '1667444041', NULL, NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (371, '1667444041', NULL, NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (372, '1668509889', NULL, NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (373, '1668509889', NULL, NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (374, '1668509889', NULL, NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (375, '1668509889', NULL, NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (376, '1668510437', NULL, NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (377, '1668510437', NULL, NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (378, '1668510437', NULL, NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (379, '1668510437', NULL, NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (381, '1668510568', NULL, NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (382, '1668510568', NULL, NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (383, '1668510568', NULL, NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (384, NULL, '9', NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (385, NULL, '9', NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (386, NULL, '9', NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (387, NULL, '9', NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (392, NULL, '17', NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (393, NULL, '17', NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (394, NULL, '17', NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (395, NULL, '17', NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (396, NULL, '10', NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (397, NULL, '10', NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (398, NULL, '10', NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (399, NULL, '10', NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (404, NULL, '18', NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (405, NULL, '18', NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (406, NULL, '18', NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (407, NULL, '18', NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (408, NULL, '19', NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (409, NULL, '19', NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (410, NULL, '19', NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (411, NULL, '19', NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (412, NULL, '20', NULL, '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (413, NULL, '20', NULL, '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (414, NULL, '20', NULL, '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (415, NULL, '20', NULL, '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (417, NULL, NULL, '2', '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (418, NULL, NULL, '3', '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (419, NULL, NULL, '4', '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (420, NULL, NULL, '5', '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (421, NULL, NULL, '6', '3', 'view', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (422, NULL, NULL, '1', '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (423, NULL, NULL, '2', '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (424, NULL, NULL, '3', '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (425, NULL, NULL, '4', '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (426, NULL, NULL, '5', '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (427, NULL, NULL, '6', '3', 'create', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (428, NULL, NULL, '1', '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (429, NULL, NULL, '2', '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (430, NULL, NULL, '3', '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (431, NULL, NULL, '4', '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (432, NULL, NULL, '5', '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (433, NULL, NULL, '6', '3', 'update', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (434, NULL, NULL, '1', '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (435, NULL, NULL, '2', '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (436, NULL, NULL, '3', '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (437, NULL, NULL, '4', '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (438, NULL, NULL, '5', '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (439, NULL, NULL, '6', '3', 'delete', '2022-11-24 13:08:11', '2022-11-24 13:08:11');
INSERT INTO `tbl_akses` VALUES (440, '1669390641', NULL, NULL, '1', 'view', '2022-11-25 15:37:59', '2022-11-25 15:37:59');
INSERT INTO `tbl_akses` VALUES (441, '1669390641', NULL, NULL, '1', 'create', '2022-11-25 15:38:06', '2022-11-25 15:38:06');
INSERT INTO `tbl_akses` VALUES (442, '1669390641', NULL, NULL, '1', 'update', '2022-11-25 15:38:07', '2022-11-25 15:38:07');
INSERT INTO `tbl_akses` VALUES (443, '1669390641', NULL, NULL, '1', 'delete', '2022-11-25 15:38:08', '2022-11-25 15:38:08');
INSERT INTO `tbl_akses` VALUES (444, '1669390641', NULL, NULL, '2', 'view', '2022-11-25 15:38:23', '2022-11-25 15:38:23');
INSERT INTO `tbl_akses` VALUES (445, '1669390641', NULL, NULL, '2', 'create', '2022-11-25 15:38:31', '2022-11-25 15:38:31');
INSERT INTO `tbl_akses` VALUES (446, '1669390641', NULL, NULL, '2', 'update', '2022-11-25 15:38:31', '2022-11-25 15:38:31');
INSERT INTO `tbl_akses` VALUES (447, '1669390641', NULL, NULL, '2', 'delete', '2022-11-25 15:38:32', '2022-11-25 15:38:32');
INSERT INTO `tbl_akses` VALUES (448, '1669390641', NULL, NULL, '3', 'view', '2022-11-25 15:38:49', '2022-11-25 15:38:49');
INSERT INTO `tbl_akses` VALUES (449, '1669390641', NULL, NULL, '3', 'create', '2022-11-25 15:38:55', '2022-11-25 15:38:55');
INSERT INTO `tbl_akses` VALUES (450, '1669390641', NULL, NULL, '3', 'update', '2022-11-25 15:38:55', '2022-11-25 15:38:55');
INSERT INTO `tbl_akses` VALUES (451, '1669390641', NULL, NULL, '3', 'delete', '2022-11-25 15:38:57', '2022-11-25 15:38:57');
INSERT INTO `tbl_akses` VALUES (452, NULL, '21', NULL, '1', 'view', '2022-11-30 12:57:38', '2022-11-30 12:57:38');
INSERT INTO `tbl_akses` VALUES (453, NULL, '22', NULL, '1', 'view', '2022-11-30 12:57:39', '2022-11-30 12:57:39');
INSERT INTO `tbl_akses` VALUES (454, NULL, '23', NULL, '1', 'view', '2022-11-30 12:57:40', '2022-11-30 12:57:40');
INSERT INTO `tbl_akses` VALUES (455, NULL, '21', NULL, '1', 'create', '2022-11-30 12:57:53', '2022-11-30 12:57:53');
INSERT INTO `tbl_akses` VALUES (456, NULL, '22', NULL, '1', 'create', '2022-11-30 12:57:54', '2022-11-30 12:57:54');
INSERT INTO `tbl_akses` VALUES (457, NULL, '23', NULL, '1', 'create', '2022-11-30 12:57:55', '2022-11-30 12:57:55');
INSERT INTO `tbl_akses` VALUES (458, NULL, '23', NULL, '1', 'update', '2022-11-30 12:57:56', '2022-11-30 12:57:56');
INSERT INTO `tbl_akses` VALUES (459, NULL, '22', NULL, '1', 'update', '2022-11-30 12:57:56', '2022-11-30 12:57:56');
INSERT INTO `tbl_akses` VALUES (460, NULL, '21', NULL, '1', 'update', '2022-11-30 12:57:57', '2022-11-30 12:57:57');
INSERT INTO `tbl_akses` VALUES (461, NULL, '21', NULL, '1', 'delete', '2022-11-30 12:57:57', '2022-11-30 12:57:57');
INSERT INTO `tbl_akses` VALUES (462, NULL, '22', NULL, '1', 'delete', '2022-11-30 12:57:58', '2022-11-30 12:57:58');
INSERT INTO `tbl_akses` VALUES (463, NULL, '23', NULL, '1', 'delete', '2022-11-30 12:57:58', '2022-11-30 12:57:58');
INSERT INTO `tbl_akses` VALUES (464, NULL, '21', NULL, '2', 'view', '2022-11-30 12:58:28', '2022-11-30 12:58:28');
INSERT INTO `tbl_akses` VALUES (465, NULL, '22', NULL, '2', 'view', '2022-11-30 12:58:29', '2022-11-30 12:58:29');
INSERT INTO `tbl_akses` VALUES (466, NULL, '23', NULL, '2', 'view', '2022-11-30 12:58:31', '2022-11-30 12:58:31');
INSERT INTO `tbl_akses` VALUES (467, NULL, '21', NULL, '2', 'create', '2022-11-30 12:59:04', '2022-11-30 12:59:04');
INSERT INTO `tbl_akses` VALUES (468, NULL, '21', NULL, '2', 'update', '2022-11-30 12:59:05', '2022-11-30 12:59:05');
INSERT INTO `tbl_akses` VALUES (469, NULL, '21', NULL, '2', 'delete', '2022-11-30 12:59:06', '2022-11-30 12:59:06');
INSERT INTO `tbl_akses` VALUES (470, NULL, '22', NULL, '2', 'delete', '2022-11-30 12:59:07', '2022-11-30 12:59:07');
INSERT INTO `tbl_akses` VALUES (471, NULL, '22', NULL, '2', 'update', '2022-11-30 12:59:08', '2022-11-30 12:59:08');
INSERT INTO `tbl_akses` VALUES (472, NULL, '22', NULL, '2', 'create', '2022-11-30 12:59:09', '2022-11-30 12:59:09');
INSERT INTO `tbl_akses` VALUES (473, NULL, '23', NULL, '2', 'create', '2022-11-30 12:59:10', '2022-11-30 12:59:10');
INSERT INTO `tbl_akses` VALUES (474, NULL, '23', NULL, '2', 'update', '2022-11-30 12:59:11', '2022-11-30 12:59:11');
INSERT INTO `tbl_akses` VALUES (475, NULL, '23', NULL, '2', 'delete', '2022-11-30 12:59:12', '2022-11-30 12:59:12');
INSERT INTO `tbl_akses` VALUES (476, NULL, '21', NULL, '3', 'view', '2022-11-30 12:59:47', '2022-11-30 12:59:47');
INSERT INTO `tbl_akses` VALUES (477, NULL, '22', NULL, '3', 'view', '2022-11-30 12:59:48', '2022-11-30 12:59:48');
INSERT INTO `tbl_akses` VALUES (478, NULL, '23', NULL, '3', 'view', '2022-11-30 12:59:48', '2022-11-30 12:59:48');
INSERT INTO `tbl_akses` VALUES (479, NULL, '21', NULL, '3', 'create', '2022-11-30 13:00:24', '2022-11-30 13:00:24');
INSERT INTO `tbl_akses` VALUES (480, NULL, '21', NULL, '3', 'update', '2022-11-30 13:00:25', '2022-11-30 13:00:25');
INSERT INTO `tbl_akses` VALUES (481, NULL, '21', NULL, '3', 'delete', '2022-11-30 13:00:26', '2022-11-30 13:00:26');
INSERT INTO `tbl_akses` VALUES (482, NULL, '22', NULL, '3', 'delete', '2022-11-30 13:00:27', '2022-11-30 13:00:27');
INSERT INTO `tbl_akses` VALUES (483, NULL, '22', NULL, '3', 'update', '2022-11-30 13:00:28', '2022-11-30 13:00:28');
INSERT INTO `tbl_akses` VALUES (484, NULL, '22', NULL, '3', 'create', '2022-11-30 13:00:29', '2022-11-30 13:00:29');
INSERT INTO `tbl_akses` VALUES (485, NULL, '23', NULL, '3', 'create', '2022-11-30 13:00:30', '2022-11-30 13:00:30');
INSERT INTO `tbl_akses` VALUES (486, NULL, '23', NULL, '3', 'update', '2022-11-30 13:00:30', '2022-11-30 13:00:30');
INSERT INTO `tbl_akses` VALUES (487, NULL, '23', NULL, '3', 'delete', '2022-11-30 13:00:31', '2022-11-30 13:00:31');
INSERT INTO `tbl_akses` VALUES (488, '1667444041', NULL, NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (489, '1667444041', NULL, NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (490, '1667444041', NULL, NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (491, '1667444041', NULL, NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (493, '1668509889', NULL, NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (494, '1668509889', NULL, NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (495, '1668509889', NULL, NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (497, '1669390641', NULL, NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (498, '1669390641', NULL, NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (499, '1669390641', NULL, NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (501, '1668510437', NULL, NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (502, '1668510437', NULL, NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (503, '1668510437', NULL, NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (504, '1668510568', NULL, NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (505, '1668510568', NULL, NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (506, '1668510568', NULL, NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (507, '1668510568', NULL, NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (508, NULL, '9', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (509, NULL, '9', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (510, NULL, '9', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (511, NULL, '9', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (512, NULL, '17', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (513, NULL, '17', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (514, NULL, '17', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (515, NULL, '17', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (516, NULL, '21', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (517, NULL, '21', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (518, NULL, '21', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (519, NULL, '21', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (520, NULL, '10', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (521, NULL, '10', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (522, NULL, '10', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (523, NULL, '10', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (524, NULL, '18', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (525, NULL, '18', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (526, NULL, '18', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (527, NULL, '18', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (528, NULL, '22', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (529, NULL, '22', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (530, NULL, '22', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (531, NULL, '22', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (532, NULL, '19', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (533, NULL, '19', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (534, NULL, '19', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (535, NULL, '19', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (536, NULL, '23', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (537, NULL, '23', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (538, NULL, '23', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (539, NULL, '23', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (540, NULL, '20', NULL, '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (541, NULL, '20', NULL, '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (542, NULL, '20', NULL, '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (543, NULL, '20', NULL, '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (545, NULL, NULL, '2', '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (546, NULL, NULL, '3', '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (547, NULL, NULL, '4', '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (548, NULL, NULL, '5', '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (549, NULL, NULL, '6', '4', 'view', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (550, NULL, NULL, '1', '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (551, NULL, NULL, '2', '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (552, NULL, NULL, '3', '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (553, NULL, NULL, '4', '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (554, NULL, NULL, '5', '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (555, NULL, NULL, '6', '4', 'create', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (556, NULL, NULL, '1', '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (557, NULL, NULL, '2', '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (558, NULL, NULL, '3', '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (559, NULL, NULL, '4', '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (560, NULL, NULL, '5', '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (561, NULL, NULL, '6', '4', 'update', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (562, NULL, NULL, '1', '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (563, NULL, NULL, '2', '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (564, NULL, NULL, '3', '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (565, NULL, NULL, '4', '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (566, NULL, NULL, '5', '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');
INSERT INTO `tbl_akses` VALUES (567, NULL, NULL, '6', '4', 'delete', '2022-12-06 09:34:31', '2022-12-06 09:34:31');

-- ----------------------------
-- Table structure for tbl_appreance
-- ----------------------------
DROP TABLE IF EXISTS `tbl_appreance`;
CREATE TABLE `tbl_appreance`  (
  `appreance_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `appreance_layout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `appreance_theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `appreance_menu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `appreance_header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `appreance_sidestyle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`appreance_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_appreance
-- ----------------------------
INSERT INTO `tbl_appreance` VALUES (2, '1', 'sidebar-mini', 'light-mode', 'light-menu', 'header-light', 'default-menu', '2022-11-22 09:45:47', '2022-11-24 13:00:20');

-- ----------------------------
-- Table structure for tbl_barang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE `tbl_barang`  (
  `barang_id` int NOT NULL AUTO_INCREMENT,
  `jenisbarang_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `satuan_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `merk_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `barang_kode` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `barang_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `barang_slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `barang_harga` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `barang_stok` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `barang_gambar` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`barang_id`, `barang_kode`, `barang_nama`, `barang_harga`, `barang_stok`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_barang
-- ----------------------------
INSERT INTO `tbl_barang` VALUES (5, '12', '7', '2', 'BRG-1669390175622', 'Motherboard', 'motherboard', '4000000', '0', 'image.png', '2022-11-25 15:30:12', '2022-11-25 15:30:12');
INSERT INTO `tbl_barang` VALUES (6, '13', '1', '7', 'BRG-1669390220236', 'Baut 24mm', 'baut-24mm', '1000000', '0', 'image.png', '2022-11-25 15:30:50', '2022-11-29 14:30:37');

-- ----------------------------
-- Table structure for tbl_barangkeluar
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barangkeluar`;
CREATE TABLE `tbl_barangkeluar`  (
  `bk_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `bk_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tujuan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bk_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_barangkeluar
-- ----------------------------
INSERT INTO `tbl_barangkeluar` VALUES (2, 'BK-1669811950758', 'BRG-1669390220236', '2022-11-01', 'Gudang Tasikmalaya', '20', '2022-11-30 12:39:22', '2022-11-30 12:47:14');
INSERT INTO `tbl_barangkeluar` VALUES (3, 'BK-1669812439198', 'BRG-1669390175622', '2022-11-02', 'Gudang Prindapan', '5', '2022-11-30 12:47:39', '2023-07-26 04:18:25');

-- ----------------------------
-- Table structure for tbl_barangmasuk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_barangmasuk`;
CREATE TABLE `tbl_barangmasuk`  (
  `bm_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `bm_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_tanggal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`bm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_barangmasuk
-- ----------------------------
INSERT INTO `tbl_barangmasuk` VALUES (1, 'BM-1669730554623', 'BRG-1669390220236', '2', '2022-11-01', '50', 1, '2022-11-29 14:02:43', '2022-11-29 14:20:13');
INSERT INTO `tbl_barangmasuk` VALUES (2, 'BM-1669731639801', 'BRG-1669390175622', '2', '2022-11-30', '10', 1, '2022-11-29 14:20:55', '2022-11-29 14:20:55');

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer`  (
  `customer_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `customer_notelp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES (2, 'Radhian Sobarna', 'radhian-sobarna', 'Sumedang', '087817379229', '2022-11-26 01:36:34', '2022-11-26 01:43:58');

-- ----------------------------
-- Table structure for tbl_jenisbarang
-- ----------------------------
DROP TABLE IF EXISTS `tbl_jenisbarang`;
CREATE TABLE `tbl_jenisbarang`  (
  `jenisbarang_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `jenisbarang_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_ket` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`jenisbarang_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_jenisbarang
-- ----------------------------
INSERT INTO `tbl_jenisbarang` VALUES (11, 'Elektronik', 'elektronik', NULL, '2022-11-25 15:24:18', '2022-11-25 15:25:39');
INSERT INTO `tbl_jenisbarang` VALUES (12, 'Perangkat Komputer', 'perangkat-komputer', NULL, '2022-11-25 15:26:15', '2022-11-25 15:27:16');
INSERT INTO `tbl_jenisbarang` VALUES (13, 'Besi', 'besi', NULL, '2022-11-25 15:27:33', '2022-11-25 15:27:33');

-- ----------------------------
-- Table structure for tbl_login_history
-- ----------------------------
DROP TABLE IF EXISTS `tbl_login_history`;
CREATE TABLE `tbl_login_history`  (
  `history_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`history_id`) USING BTREE,
  INDEX `tbl_login_history_user_id_foreign`(`user_id` ASC) USING BTREE,
  CONSTRAINT `tbl_login_history_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_login_history
-- ----------------------------
INSERT INTO `tbl_login_history` VALUES (1, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36', '2025-08-27 06:10:25', NULL, '2025-08-27 06:10:25', '2025-08-27 06:10:25');

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu`  (
  `menu_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1669390642 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1667444041, 'Dashboard', 'dashboard', 'home', '/dashboard', '1', '1', '2022-11-15 10:51:04', '2022-11-15 10:51:04');
INSERT INTO `tbl_menu` VALUES (1668509889, 'Master Barang', 'master-barang', 'package', '-', '2', '2', '2022-11-15 10:58:09', '2022-11-15 11:03:15');
INSERT INTO `tbl_menu` VALUES (1668510437, 'Transaksi', 'transaksi', 'repeat', '-', '4', '2', '2022-11-15 11:07:17', '2022-11-25 15:37:36');
INSERT INTO `tbl_menu` VALUES (1668510568, 'Laporan', 'laporan', 'printer', '-', '5', '2', '2022-11-15 11:09:28', '2022-11-25 15:37:28');
INSERT INTO `tbl_menu` VALUES (1669390641, 'Supplier', 'supplier', 'user', '/customer', '3', '1', '2022-11-25 15:37:21', '2022-11-25 15:37:36');

-- ----------------------------
-- Table structure for tbl_merk
-- ----------------------------
DROP TABLE IF EXISTS `tbl_merk`;
CREATE TABLE `tbl_merk`  (
  `merk_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `merk_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`merk_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_merk
-- ----------------------------
INSERT INTO `tbl_merk` VALUES (1, 'Huawei', 'huawei', NULL, '2022-11-15 18:14:09', '2022-11-15 18:14:09');
INSERT INTO `tbl_merk` VALUES (2, 'Lenovo', 'lenovo', NULL, '2022-11-15 18:14:33', '2022-11-15 18:14:45');
INSERT INTO `tbl_merk` VALUES (7, 'Steel', 'steel', NULL, '2022-11-25 15:29:27', '2022-11-25 15:29:27');

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role`  (
  `role_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, 'Super Admin', 'super-admin', '-', '2022-11-15 10:51:04', '2022-11-15 10:51:04');
INSERT INTO `tbl_role` VALUES (2, 'Admin', 'admin', '-', '2022-11-15 10:51:04', '2022-11-15 10:51:04');
INSERT INTO `tbl_role` VALUES (3, 'Operator', 'operator', '-', '2022-11-15 10:51:04', '2022-11-15 10:51:04');
INSERT INTO `tbl_role` VALUES (4, 'Manajer', 'manajer', NULL, '2022-12-06 09:33:27', '2022-12-06 09:33:27');

-- ----------------------------
-- Table structure for tbl_satuan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_satuan`;
CREATE TABLE `tbl_satuan`  (
  `satuan_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `satuan_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`satuan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_satuan
-- ----------------------------
INSERT INTO `tbl_satuan` VALUES (1, 'Kg', 'kg', NULL, '2022-11-15 17:50:38', '2022-11-24 12:39:04');
INSERT INTO `tbl_satuan` VALUES (5, 'Pcs', 'pcs', NULL, '2022-11-24 12:39:15', '2022-11-24 12:39:21');
INSERT INTO `tbl_satuan` VALUES (7, 'Qty', 'qty', NULL, '2022-11-24 12:39:59', '2022-11-24 12:39:59');

-- ----------------------------
-- Table structure for tbl_submenu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_submenu`;
CREATE TABLE `tbl_submenu`  (
  `submenu_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_sort` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`submenu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_submenu
-- ----------------------------
INSERT INTO `tbl_submenu` VALUES (9, '1668510437', 'Barang Masuk', 'barang-masuk', '/barang-masuk', '1', '2022-11-15 11:08:19', '2022-11-15 11:08:19');
INSERT INTO `tbl_submenu` VALUES (10, '1668510437', 'Barang Keluar', 'barang-keluar', '/barang-keluar', '2', '2022-11-15 11:08:19', '2022-11-15 11:08:19');
INSERT INTO `tbl_submenu` VALUES (17, '1668509889', 'Jenis', 'jenis', '/jenisbarang', '1', '2022-11-24 12:06:48', '2022-11-24 12:06:48');
INSERT INTO `tbl_submenu` VALUES (18, '1668509889', 'Satuan', 'satuan', '/satuan', '2', '2022-11-24 12:06:48', '2022-11-24 12:06:48');
INSERT INTO `tbl_submenu` VALUES (19, '1668509889', 'Merk', 'merk', '/merk', '3', '2022-11-24 12:06:48', '2022-11-24 12:06:48');
INSERT INTO `tbl_submenu` VALUES (20, '1668509889', 'Barang', 'barang', '/barang', '4', '2022-11-24 12:06:48', '2022-11-24 12:06:48');
INSERT INTO `tbl_submenu` VALUES (21, '1668510568', 'Lap Barang Masuk', 'lap-barang-masuk', '/lap-barang-masuk', '1', '2022-11-30 12:56:24', '2022-11-30 12:56:24');
INSERT INTO `tbl_submenu` VALUES (22, '1668510568', 'Lap Barang Keluar', 'lap-barang-keluar', '/lap-barang-keluar', '2', '2022-11-30 12:56:24', '2022-11-30 12:56:24');
INSERT INTO `tbl_submenu` VALUES (23, '1668510568', 'Lap Stok Barang', 'lap-stok-barang', '/lap-stok-barang', '3', '2022-11-30 12:56:24', '2022-11-30 12:56:24');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nmlengkap` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, '1', 'Super Administrator', 'superadmin', 'superadmin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 10:51:04', '2022-11-15 10:51:04');
INSERT INTO `tbl_user` VALUES (2, '2', 'Administrator', 'admin', 'admin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 10:51:04', '2022-11-15 10:51:04');
INSERT INTO `tbl_user` VALUES (3, '3', 'Operator', 'operator', 'operator@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-11-15 10:51:04', '2022-11-15 10:51:04');
INSERT INTO `tbl_user` VALUES (4, '4', 'Manajer', 'manajer', 'manajer@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2022-12-06 09:33:54', '2022-12-06 09:33:54');

-- ----------------------------
-- Table structure for tbl_web
-- ----------------------------
DROP TABLE IF EXISTS `tbl_web`;
CREATE TABLE `tbl_web`  (
  `web_id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `web_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_deskripsi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`web_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_web
-- ----------------------------
INSERT INTO `tbl_web` VALUES (1, 'Inventoryweb', 'default.png', 'Mengelola Data Barang Masuk & Barang Keluar', '2022-11-15 10:51:04', '2022-11-22 09:41:39');

SET FOREIGN_KEY_CHECKS = 1;
