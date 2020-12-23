/*
 Navicat Premium Data Transfer

 Source Server         : 本地MySQL_8.0
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3307
 Source Schema         : scs_pw

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 23/12/2020 18:15:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for billing_account
-- ----------------------------
DROP TABLE IF EXISTS `billing_account`;
CREATE TABLE `billing_account`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '单位名称',
  `unit_short` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '单位简称',
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '账户名称',
  `linkman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '联系人',
  `linkman_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '联系人电话',
  `finance_linkman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '财务联系人',
  `finance_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '财务电话',
  `leader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '主管领导',
  `leader_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '主管领导电话',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '计费账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of billing_account
-- ----------------------------
INSERT INTO `billing_account` VALUES (1, '陕西省专用通信局', '专用通信局', '通信局', '1', '1', '2', '2', '3', '3', '2020-12-13 18:32:43', '2020-12-13 18:32:43');
INSERT INTO `billing_account` VALUES (2, '陕西省电信股份有限公司', '陕西电信', '陕西电信账号', '1', '1', '2', '2', '3', '3', '2020-12-13 18:32:43', '2020-12-13 18:32:43');

-- ----------------------------
-- Table structure for laravel_logger_activity
-- ----------------------------
DROP TABLE IF EXISTS `laravel_logger_activity`;
CREATE TABLE `laravel_logger_activity`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `userType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int(11) NULL DEFAULT NULL,
  `route` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `ipAddress` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `userAgent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `referer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `methodType` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laravel_logger_activity
-- ----------------------------
INSERT INTO `laravel_logger_activity` VALUES (1, 'Viewed api/menu/router', NULL, 'Registered', 3, 'http://localhost:9804/api/menu/router', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'GET', '2020-12-22 10:44:36', '2020-12-22 10:44:36', NULL);
INSERT INTO `laravel_logger_activity` VALUES (2, 'Created api/custom/list', NULL, 'Registered', 3, 'http://localhost:9804/api/custom/list', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'POST', '2020-12-22 10:44:42', '2020-12-22 10:44:42', NULL);
INSERT INTO `laravel_logger_activity` VALUES (3, 'Viewed api/menu/router', NULL, 'Registered', 3, 'http://localhost:9804/api/menu/router', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'GET', '2020-12-22 10:46:46', '2020-12-22 10:46:46', NULL);
INSERT INTO `laravel_logger_activity` VALUES (4, 'Created api/custom/list', NULL, 'Registered', 3, 'http://localhost:9804/api/custom/list', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'POST', '2020-12-22 10:50:57', '2020-12-22 10:50:57', NULL);
INSERT INTO `laravel_logger_activity` VALUES (5, 'Created api/custom/list', NULL, 'Registered', 3, 'http://localhost:9804/api/custom/list', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'POST', '2020-12-22 10:51:01', '2020-12-22 10:51:01', NULL);
INSERT INTO `laravel_logger_activity` VALUES (6, 'Created api/custom/list', NULL, 'Registered', 3, 'http://localhost:9804/api/custom/list', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'POST', '2020-12-22 10:51:01', '2020-12-22 10:51:01', NULL);
INSERT INTO `laravel_logger_activity` VALUES (7, 'Viewed api/menu/router', NULL, 'Registered', 3, 'http://localhost:9804/api/menu/router', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'GET', '2020-12-22 10:53:43', '2020-12-22 10:53:43', NULL);
INSERT INTO `laravel_logger_activity` VALUES (8, 'Created api/custom/list', NULL, 'Registered', 3, 'http://localhost:9804/api/custom/list', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'POST', '2020-12-22 10:53:44', '2020-12-22 10:53:44', NULL);
INSERT INTO `laravel_logger_activity` VALUES (9, 'Created api/custom/list', NULL, 'Registered', 3, 'http://localhost:9804/api/custom/list', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'POST', '2020-12-22 10:58:22', '2020-12-22 10:58:22', NULL);
INSERT INTO `laravel_logger_activity` VALUES (10, 'Created api/custom/list', NULL, 'Registered', 3, 'http://localhost:9804/api/custom/list', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', 'zh-CN,zh;q=0.9,en;q=0.8', 'http://localhost:9804/', 'POST', '2020-12-22 11:02:15', '2020-12-22 11:02:15', NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2017_03_03_100000_create_options_table', 1);
INSERT INTO `migrations` VALUES (3, '2018_12_07_113125_create_sys_menus_table', 1);
INSERT INTO `migrations` VALUES (4, '2018_12_16_213605_create_sys_roles_table', 1);
INSERT INTO `migrations` VALUES (5, '2018_12_16_214318_create_sys_roles_menus_table', 1);
INSERT INTO `migrations` VALUES (6, '2019_01_07_111419_create_sys_departments_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_01_09_192434_create_sys_operation_logs_table', 1);
INSERT INTO `migrations` VALUES (8, '2019_01_14_103115_create_sys_dict_categories_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_01_14_103133_create_sys_dict_data_table', 1);
INSERT INTO `migrations` VALUES (10, '2019_03_18_160436_create_sys_roles_departments_table', 1);
INSERT INTO `migrations` VALUES (11, '2019_06_05_160436_create_sys_notices_table', 1);
INSERT INTO `migrations` VALUES (12, '2019_08_26_164529_add_foreign_key_to_users_table', 1);
INSERT INTO `migrations` VALUES (13, '2019_08_26_171551_add_foreign_key_to_sys_roles_menus_table', 1);
INSERT INTO `migrations` VALUES (14, '2019_08_26_171631_add_foreign_key_to_sys_roles_departments_table', 1);
INSERT INTO `migrations` VALUES (20, '2020_09_16_180952_create_sys_users_roles_table', 1);
INSERT INTO `migrations` VALUES (24, '2020_10_22_155522_create_permission_tables', 3);
INSERT INTO `migrations` VALUES (25, '2020_10_23_105142_create_sys_menus_new_table', 4);
INSERT INTO `migrations` VALUES (26, '2020_10_27_161902_create_sys_permissions_table', 5);
INSERT INTO `migrations` VALUES (27, '2020_10_27_162020_create_sys_roles_permissions_table', 6);
INSERT INTO `migrations` VALUES (43, '2020_01_10_160226_create_workflow_table', 9);
INSERT INTO `migrations` VALUES (44, '2020_01_10_162225_create_workflow_node_table', 9);
INSERT INTO `migrations` VALUES (45, '2020_01_10_162501_create_workflow_node_program_table', 9);
INSERT INTO `migrations` VALUES (46, '2020_01_10_163346_create_workflow_log_table', 9);
INSERT INTO `migrations` VALUES (47, '2020_01_11_102204_create_workflow_process_table', 9);
INSERT INTO `migrations` VALUES (48, '2020_10_19_145917_create_scs_custom_history_table', 10);
INSERT INTO `migrations` VALUES (51, '2020_10_20_112956_create_scs_machine_line_info_history_table', 10);
INSERT INTO `migrations` VALUES (52, '2020_10_20_112956_create_scs_machine_line_table', 10);
INSERT INTO `migrations` VALUES (53, '2020_10_28_145558_create_scs_custom_change_record_table', 10);
INSERT INTO `migrations` VALUES (54, '2020_10_20_114807_create_scs_apply_node_log_table', 11);
INSERT INTO `migrations` VALUES (55, '2020_10_21_095647_create_sys_files_table', 12);
INSERT INTO `migrations` VALUES (56, '2020_10_28_145558_create_scs_change_record_table', 13);
INSERT INTO `migrations` VALUES (57, '2020_11_15_185723_create_scs_custom_expenses_table', 14);
INSERT INTO `migrations` VALUES (58, '0000_00_00_000000_create_websockets_statistics_entries_table', 15);
INSERT INTO `migrations` VALUES (60, '2020_11_30_145340_create_scs_station_resource_table', 16);
INSERT INTO `migrations` VALUES (61, '2020_11_30_145423_create_scs_outline_resource_table', 16);
INSERT INTO `migrations` VALUES (62, '2020_11_30_145853_create_scs_number_table', 16);
INSERT INTO `migrations` VALUES (63, '2020_11_30_150232_create_scs_number_row_table', 16);
INSERT INTO `migrations` VALUES (64, '2020_11_30_150307_create_scs_main_column_table', 16);
INSERT INTO `migrations` VALUES (65, '2018_08_08_100000_create_telescope_entries_table', 17);
INSERT INTO `migrations` VALUES (66, '2020_11_30_145143_create_scs_station_table', 18);
INSERT INTO `migrations` VALUES (67, '2020_12_03_145853_create_scs_number_history_table', 19);
INSERT INTO `migrations` VALUES (68, '2020_12_05_143100_create_phone_number_table', 19);
INSERT INTO `migrations` VALUES (69, '2020_12_07_120252_create_tariff_standard_table', 19);
INSERT INTO `migrations` VALUES (70, '2020_12_10_161536_create_billing_account_table', 19);
INSERT INTO `migrations` VALUES (71, '2020_12_10_163445_create_phone_log_table', 19);
INSERT INTO `migrations` VALUES (72, '2020_10_19_145917_create_scs_custom_table', 20);
INSERT INTO `migrations` VALUES (73, '2020_10_19_155614_create_scs_install_table', 20);
INSERT INTO `migrations` VALUES (74, '2020_11_15_185723_create_scs_business_cost_table', 20);
INSERT INTO `migrations` VALUES (75, '2020_12_05_143100_create_scs_phone_number_table', 21);
INSERT INTO `migrations` VALUES (76, '2020_12_07_120252_create_scs_tariff_standard_table', 21);
INSERT INTO `migrations` VALUES (77, '2020_12_10_161536_create_scs_billing_account_table', 21);
INSERT INTO `migrations` VALUES (78, '2020_12_10_163445_create_scs_phone_log_table', 21);
INSERT INTO `migrations` VALUES (79, '2020_12_16_180706_create_scs_departments_table', 21);
INSERT INTO `migrations` VALUES (80, '2020_12_17_095632_create_scs_units_table', 21);
INSERT INTO `migrations` VALUES (81, '2020_12_17_114018_create_scs_association_table', 21);
INSERT INTO `migrations` VALUES (82, '2017_11_04_103444_create_laravel_logger_activity_table', 22);
INSERT INTO `migrations` VALUES (83, '2020_12_19_144440_create_scs_call_history_table', 22);

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `options_key_unique`(`key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of options
-- ----------------------------

-- ----------------------------
-- Table structure for phone_log
-- ----------------------------
DROP TABLE IF EXISTS `phone_log`;
CREATE TABLE `phone_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '电话号码',
  `organization_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '单位名称',
  `organization_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '单位地址',
  `tariff_standard_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '资费标准表id',
  `billing_account_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '计费账户表id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '计费账户关联号码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_log
-- ----------------------------

-- ----------------------------
-- Table structure for phone_number
-- ----------------------------
DROP TABLE IF EXISTS `phone_number`;
CREATE TABLE `phone_number`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '电话号码',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '号码状态 0未使用 1使用中',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '电话号码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phone_number
-- ----------------------------
INSERT INTO `phone_number` VALUES (1, '12345678', 0, '2020-12-13 16:42:21', '2020-12-13 21:16:06');
INSERT INTO `phone_number` VALUES (2, '65290001', 0, '2020-12-13 16:42:43', '2020-12-14 19:11:36');

-- ----------------------------
-- Table structure for scs_apply_node_log
-- ----------------------------
DROP TABLE IF EXISTS `scs_apply_node_log`;
CREATE TABLE `scs_apply_node_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `apply_id` int(11) NULL DEFAULT NULL COMMENT '节点id',
  `apply_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `node_id` int(11) NULL DEFAULT NULL COMMENT '节点id',
  `entry_time` datetime(0) NULL DEFAULT NULL COMMENT '进入时间',
  `signing_time` datetime(0) NULL DEFAULT NULL COMMENT '签收时间',
  `completion_time` datetime(0) NULL DEFAULT NULL COMMENT '完成时间',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '办理人',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 132 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_apply_node_log
-- ----------------------------
INSERT INTO `scs_apply_node_log` VALUES (64, 41, 'scs_install', 2, '2020-11-22 22:28:50', '2020-11-22 22:36:00', '2020-11-22 22:36:03', 7, NULL, NULL, '2020-11-22 22:36:03');
INSERT INTO `scs_apply_node_log` VALUES (65, 41, 'scs_install', 3, '2020-11-22 22:28:50', '2020-11-22 22:35:18', '2020-11-22 22:35:39', 4, NULL, NULL, '2020-11-22 22:35:39');
INSERT INTO `scs_apply_node_log` VALUES (66, 41, 'scs_install', 4, '2020-11-22 22:28:50', '2020-11-22 22:34:28', '2020-11-22 22:34:50', 8, NULL, NULL, '2020-11-22 22:34:50');
INSERT INTO `scs_apply_node_log` VALUES (67, 41, 'scs_install', 5, '2020-11-22 22:36:03', '2020-11-22 22:36:29', '2020-11-22 22:36:35', 5, NULL, NULL, '2020-11-22 22:36:35');
INSERT INTO `scs_apply_node_log` VALUES (68, 42, 'scs_install', 2, '2020-11-25 12:12:48', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (69, 42, 'scs_install', 3, '2020-11-25 12:12:48', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (70, 42, 'scs_install', 4, '2020-11-25 12:12:48', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (71, 43, 'scs_install', 2, '2020-11-30 16:55:03', '2020-11-30 17:00:39', '2020-11-30 17:03:25', 7, NULL, NULL, '2020-11-30 17:03:25');
INSERT INTO `scs_apply_node_log` VALUES (72, 43, 'scs_install', 3, '2020-11-30 16:55:03', '2020-11-30 17:04:04', '2020-11-30 17:04:29', 4, NULL, NULL, '2020-11-30 17:04:29');
INSERT INTO `scs_apply_node_log` VALUES (73, 43, 'scs_install', 4, '2020-11-30 16:55:03', '2020-11-30 16:57:51', '2020-11-30 16:58:41', 8, NULL, NULL, '2020-11-30 16:58:41');
INSERT INTO `scs_apply_node_log` VALUES (74, 43, 'scs_install', 5, '2020-11-30 17:04:29', '2020-11-30 17:05:32', '2020-11-30 17:08:07', 5, NULL, NULL, '2020-11-30 17:08:07');
INSERT INTO `scs_apply_node_log` VALUES (75, 44, 'scs_install', 2, '2020-12-01 11:35:35', '2020-12-01 14:42:17', '2020-12-01 14:42:29', 7, NULL, NULL, '2020-12-01 14:42:29');
INSERT INTO `scs_apply_node_log` VALUES (76, 44, 'scs_install', 3, '2020-12-01 11:35:35', '2020-12-01 14:45:34', '2020-12-01 15:00:17', 4, NULL, NULL, '2020-12-01 15:00:17');
INSERT INTO `scs_apply_node_log` VALUES (77, 44, 'scs_install', 4, '2020-12-01 11:35:35', '2020-12-01 11:42:56', '2020-12-01 14:41:46', 8, NULL, NULL, '2020-12-01 14:41:46');
INSERT INTO `scs_apply_node_log` VALUES (78, 45, 'scs_install', 2, '2020-12-01 13:46:06', '2020-12-01 13:47:50', '2020-12-01 13:47:58', 7, NULL, NULL, '2020-12-01 13:47:58');
INSERT INTO `scs_apply_node_log` VALUES (79, 45, 'scs_install', 3, '2020-12-01 13:46:06', '2020-12-01 13:48:20', '2020-12-01 13:48:54', 4, NULL, NULL, '2020-12-01 13:48:54');
INSERT INTO `scs_apply_node_log` VALUES (80, 45, 'scs_install', 4, '2020-12-01 13:46:06', '2020-12-01 13:46:33', '2020-12-01 13:46:51', 8, NULL, NULL, '2020-12-01 13:46:51');
INSERT INTO `scs_apply_node_log` VALUES (81, 45, 'scs_install', 5, '2020-12-01 13:48:54', '2020-12-01 13:49:29', '2020-12-01 13:49:46', 5, NULL, NULL, '2020-12-01 13:49:46');
INSERT INTO `scs_apply_node_log` VALUES (82, 44, 'scs_install', 5, '2020-12-01 15:00:17', '2020-12-01 15:05:45', NULL, NULL, NULL, NULL, '2020-12-01 15:05:45');
INSERT INTO `scs_apply_node_log` VALUES (83, 1, 'scs_install', 2, '2020-12-13 20:45:13', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (84, 1, 'scs_install', 3, '2020-12-13 20:45:13', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (85, 1, 'scs_install', 4, '2020-12-13 20:45:13', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (86, 2, 'scs_install', 2, '2020-12-13 21:13:09', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (87, 2, 'scs_install', 3, '2020-12-13 21:13:09', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (88, 2, 'scs_install', 4, '2020-12-13 21:13:09', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (89, 3, 'scs_install', 2, '2020-12-13 21:16:06', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (90, 3, 'scs_install', 3, '2020-12-13 21:16:06', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (91, 3, 'scs_install', 4, '2020-12-13 21:16:06', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (92, 4, 'scs_install', 2, '2020-12-13 21:41:51', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (93, 4, 'scs_install', 3, '2020-12-13 21:41:51', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (94, 4, 'scs_install', 4, '2020-12-13 21:41:51', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (95, 5, 'scs_install', 2, '2020-12-13 21:43:50', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (96, 5, 'scs_install', 3, '2020-12-13 21:43:50', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (97, 5, 'scs_install', 4, '2020-12-13 21:43:50', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (98, 6, 'scs_install', 2, '2020-12-14 19:11:36', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (99, 6, 'scs_install', 3, '2020-12-14 19:11:36', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (100, 6, 'scs_install', 4, '2020-12-14 19:11:36', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (101, 7, 'scs_install', 2, '2020-12-18 15:55:14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (102, 7, 'scs_install', 3, '2020-12-18 15:55:14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (103, 7, 'scs_install', 4, '2020-12-18 15:55:14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (104, 8, 'scs_install', 2, '2020-12-18 16:18:10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (105, 8, 'scs_install', 3, '2020-12-18 16:18:10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (106, 8, 'scs_install', 4, '2020-12-18 16:18:10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (107, 9, 'scs_install', 2, '2020-12-18 16:18:58', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (108, 9, 'scs_install', 3, '2020-12-18 16:18:58', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (109, 9, 'scs_install', 4, '2020-12-18 16:18:58', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (110, 10, 'scs_install', 2, '2020-12-20 18:33:01', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (111, 10, 'scs_install', 3, '2020-12-20 18:33:01', '2020-12-21 11:10:21', NULL, NULL, NULL, NULL, '2020-12-21 11:10:21');
INSERT INTO `scs_apply_node_log` VALUES (112, 10, 'scs_install', 4, '2020-12-20 18:33:01', '2020-12-21 11:00:42', '2020-12-21 11:01:02', 8, NULL, NULL, '2020-12-21 11:01:02');
INSERT INTO `scs_apply_node_log` VALUES (113, 11, 'scs_install', 2, '2020-12-20 19:45:07', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (114, 11, 'scs_install', 3, '2020-12-20 19:45:07', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (115, 11, 'scs_install', 4, '2020-12-20 19:45:07', '2020-12-20 19:51:01', '2020-12-21 11:00:11', 8, NULL, NULL, '2020-12-21 11:00:11');
INSERT INTO `scs_apply_node_log` VALUES (116, 12, 'scs_install', 2, '2020-12-21 11:07:19', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (117, 12, 'scs_install', 3, '2020-12-21 11:07:19', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (118, 12, 'scs_install', 4, '2020-12-21 11:07:19', '2020-12-21 11:07:40', '2020-12-21 11:07:56', 8, NULL, NULL, '2020-12-21 11:07:56');
INSERT INTO `scs_apply_node_log` VALUES (119, 13, 'scs_install', 2, '2020-12-21 11:30:18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (120, 13, 'scs_install', 3, '2020-12-21 11:30:18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (121, 13, 'scs_install', 4, '2020-12-21 11:30:18', '2020-12-21 11:30:35', '2020-12-21 11:30:58', 8, NULL, NULL, '2020-12-21 11:30:58');
INSERT INTO `scs_apply_node_log` VALUES (122, 14, 'scs_install', 2, '2020-12-21 11:33:50', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (123, 14, 'scs_install', 3, '2020-12-21 11:33:50', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `scs_apply_node_log` VALUES (124, 14, 'scs_install', 4, '2020-12-21 11:33:50', '2020-12-21 11:33:57', '2020-12-21 11:47:23', 8, NULL, NULL, '2020-12-21 11:47:23');
INSERT INTO `scs_apply_node_log` VALUES (125, 15, 'scs_install', 2, '2020-12-21 14:59:36', '2020-12-21 15:02:10', '2020-12-21 15:02:15', 7, NULL, NULL, '2020-12-21 15:02:15');
INSERT INTO `scs_apply_node_log` VALUES (126, 15, 'scs_install', 3, '2020-12-21 14:59:36', '2020-12-21 15:01:11', '2020-12-21 15:01:28', 4, NULL, NULL, '2020-12-21 15:01:28');
INSERT INTO `scs_apply_node_log` VALUES (127, 15, 'scs_install', 4, '2020-12-21 14:59:36', '2020-12-21 15:00:14', '2020-12-21 15:00:38', 8, NULL, NULL, '2020-12-21 15:00:38');
INSERT INTO `scs_apply_node_log` VALUES (128, 15, 'scs_install', 5, '2020-12-21 15:02:15', '2020-12-21 15:08:47', '2020-12-21 15:08:58', 5, NULL, NULL, '2020-12-21 15:08:58');
INSERT INTO `scs_apply_node_log` VALUES (129, 16, 'scs_install', 2, '2020-12-21 15:48:56', '2020-12-21 15:51:13', NULL, NULL, NULL, NULL, '2020-12-21 15:51:13');
INSERT INTO `scs_apply_node_log` VALUES (130, 16, 'scs_install', 3, '2020-12-21 15:48:56', '2020-12-21 15:50:35', '2020-12-21 15:50:53', 4, NULL, NULL, '2020-12-21 15:50:53');
INSERT INTO `scs_apply_node_log` VALUES (131, 16, 'scs_install', 4, '2020-12-21 15:48:56', '2020-12-21 15:49:45', '2020-12-21 15:50:11', 8, NULL, NULL, '2020-12-21 15:50:11');

-- ----------------------------
-- Table structure for scs_association
-- ----------------------------
DROP TABLE IF EXISTS `scs_association`;
CREATE TABLE `scs_association`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `billing_account_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '计费账户表id',
  `units_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '单位表id',
  `phone_number_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '号码库表id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6470 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '账户,单位,号码,关联关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_association
-- ----------------------------
INSERT INTO `scs_association` VALUES (2, 1, 1, 7, '2020-12-18 11:22:18', '2020-12-18 11:22:18');
INSERT INTO `scs_association` VALUES (3, 2, 3, 8, '2020-12-18 11:22:18', '2020-12-18 11:22:18');
INSERT INTO `scs_association` VALUES (4, 3, 4, 9, '2020-12-18 11:22:19', '2020-12-18 11:22:19');
INSERT INTO `scs_association` VALUES (5, 3, 4, 10, '2020-12-18 11:22:19', '2020-12-18 11:22:19');
INSERT INTO `scs_association` VALUES (6, 3, 4, 11, '2020-12-18 11:22:19', '2020-12-18 11:22:19');

-- ----------------------------
-- Table structure for scs_billing_account
-- ----------------------------
DROP TABLE IF EXISTS `scs_billing_account`;
CREATE TABLE `scs_billing_account`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '账户名称',
  `linkman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '联系人',
  `linkman_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '联系人电话',
  `finance_linkman` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '财务联系人',
  `finance_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '财务电话',
  `leader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '主管领导',
  `leader_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '主管领导电话',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '计费账户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_billing_account
-- ----------------------------
INSERT INTO `scs_billing_account` VALUES (1, '省人民代表大会常务委员会(省人大)', '', '', '', '', '', '', '2020-12-18 11:06:31', '2020-12-18 11:06:31');
INSERT INTO `scs_billing_account` VALUES (2, '中国人民政治协商会议陕西省委员会（省政协）', '', '', '', '', '', '', '2020-12-18 11:22:18', '2020-12-18 11:22:18');
INSERT INTO `scs_billing_account` VALUES (3, '省纪委监委', '', '', '', '', '', '', '2020-12-18 11:22:18', '2020-12-18 11:22:18');
INSERT INTO `scs_billing_account` VALUES (4, '省委政法委', '', '', '', '', '', '', '2020-12-18 11:22:20', '2020-12-18 11:22:20');
INSERT INTO `scs_billing_account` VALUES (5, '中共陕西省委高等教育工作委员会', '', '', '', '', '', '', '2020-12-18 11:22:20', '2020-12-18 11:22:20');

-- ----------------------------
-- Table structure for scs_business_cost
-- ----------------------------
DROP TABLE IF EXISTS `scs_business_cost`;
CREATE TABLE `scs_business_cost`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `install_cost` decimal(8, 2) NULL DEFAULT NULL COMMENT '装机费',
  `move_cost` decimal(8, 2) NULL DEFAULT NULL COMMENT '移机费',
  `monthly_rent` decimal(8, 2) NULL DEFAULT NULL COMMENT '月租费',
  `monthly_cost` decimal(8, 2) NULL DEFAULT NULL COMMENT '包月费',
  `phone_cost` decimal(8, 2) NULL DEFAULT NULL COMMENT '话机费',
  `engineering_cost` decimal(8, 2) NULL DEFAULT NULL COMMENT '工程费',
  `apply_id` int(11) NULL DEFAULT NULL COMMENT '流程ID',
  `apply_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '流程类型',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_business_cost
-- ----------------------------
INSERT INTO `scs_business_cost` VALUES (5, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 11, NULL, '2020-12-21 11:00:11', '2020-12-21 11:00:11');
INSERT INTO `scs_business_cost` VALUES (6, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 10, NULL, '2020-12-21 11:01:02', '2020-12-21 11:01:02');
INSERT INTO `scs_business_cost` VALUES (7, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 12, NULL, '2020-12-21 11:07:56', '2020-12-21 11:07:56');
INSERT INTO `scs_business_cost` VALUES (8, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 13, NULL, '2020-12-21 11:30:58', '2020-12-21 11:30:58');
INSERT INTO `scs_business_cost` VALUES (9, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 14, NULL, '2020-12-21 11:47:23', '2020-12-21 11:47:23');
INSERT INTO `scs_business_cost` VALUES (10, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15, NULL, '2020-12-21 15:00:38', '2020-12-21 15:00:38');
INSERT INTO `scs_business_cost` VALUES (11, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15, NULL, '2020-12-21 15:01:28', '2020-12-21 15:01:28');
INSERT INTO `scs_business_cost` VALUES (12, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 15, NULL, '2020-12-21 15:02:15', '2020-12-21 15:02:15');
INSERT INTO `scs_business_cost` VALUES (13, 1.00, 1.00, 1.00, 1.00, 1.00, 1.00, 15, NULL, '2020-12-21 15:08:58', '2020-12-21 15:08:58');
INSERT INTO `scs_business_cost` VALUES (14, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 16, NULL, '2020-12-21 15:50:11', '2020-12-21 15:50:11');
INSERT INTO `scs_business_cost` VALUES (15, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 16, NULL, '2020-12-21 15:50:53', '2020-12-21 15:50:53');

-- ----------------------------
-- Table structure for scs_call_history
-- ----------------------------
DROP TABLE IF EXISTS `scs_call_history`;
CREATE TABLE `scs_call_history`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '序列号',
  `dialing_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '主叫号码',
  `incoming_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '被叫号码',
  `start_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '开始通话日期',
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '开始通话时间',
  `end_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '结束通话日期',
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '结束通话时间',
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '通话时长',
  `call_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '市话' COMMENT '通话类型',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '通话记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_call_history
-- ----------------------------

-- ----------------------------
-- Table structure for scs_change_record
-- ----------------------------
DROP TABLE IF EXISTS `scs_change_record`;
CREATE TABLE `scs_change_record`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '变更项目',
  `before_change` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '变更前',
  `after_change` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '变更后',
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作人',
  `custom_id` int(11) NULL DEFAULT NULL COMMENT '客户id',
  `record_id` int(11) NULL DEFAULT NULL COMMENT '记录id',
  `record_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '记录类型',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_change_record
-- ----------------------------
INSERT INTO `scs_change_record` VALUES (54, '主干电缆线对', '1', '1-1-45', '3', 90, 78, 'scs_machine_line', '2020-11-30 17:13:25', NULL);
INSERT INTO `scs_change_record` VALUES (55, '用户单位', '陕西电信股份有限公司', '陕西电信股份有限公司610办公室', '3', 177, 177, 'scs_custom', '2020-12-01 10:36:13', NULL);
INSERT INTO `scs_change_record` VALUES (56, '用户名称', '温详', '张朝阳', '3', 177, 177, 'scs_custom', '2020-12-01 10:46:19', NULL);
INSERT INTO `scs_change_record` VALUES (57, '用户简称', '1wx-sxdxgfyxgs-sxdx', '1zcy-sxdxgfyxgsbgs-sxdx', '3', 177, 177, 'scs_custom', '2020-12-01 10:46:19', NULL);

-- ----------------------------
-- Table structure for scs_custom
-- ----------------------------
DROP TABLE IF EXISTS `scs_custom`;
CREATE TABLE `scs_custom`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话号码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '原用户姓名',
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '账户名称',
  `job` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职务',
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '单位名称',
  `unit_short` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '单位简称',
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户简称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户地址',
  `billing_account_id` int(11) NULL DEFAULT 1 COMMENT '关联计费管理账号ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '状态',
  `user_attr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户属性',
  `user_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户级别',
  `phone_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '话机类型',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `is_filed` int(11) NULL DEFAULT 0 COMMENT '是否已归档',
  `nameKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名字符',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6530 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_custom
-- ----------------------------
INSERT INTO `scs_custom` VALUES (57, '62990001', '张三', '嗯嗯', '账户1', '主任', '单位1', '单位1', '1zs-dw-dw', '科技四路', 1, '0', '0', '2', NULL, NULL, NULL, 0, '1zs', '2020-12-15 18:31:40', '2020-12-23 16:30:11');
INSERT INTO `scs_custom` VALUES (58, '62990002', '李四', '礼物', '账户2', '开发', '单位2', '单位2', '1ls-dw-dw', '文艺南路', 1, '0', '0', '2', NULL, NULL, NULL, 0, '1ls', '2020-12-15 18:31:40', '2020-12-23 11:10:50');
INSERT INTO `scs_custom` VALUES (59, '62990003', '王五', '嗯嗯', '账户3', '主任', '单位3', '单位3', '1ww-dw-dw', '丈八北路', 1, '0', '0', '2', NULL, NULL, NULL, 0, '1ww', '2020-12-15 18:31:40', '2020-12-23 11:13:33');

-- ----------------------------
-- Table structure for scs_install
-- ----------------------------
DROP TABLE IF EXISTS `scs_install`;
CREATE TABLE `scs_install`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '工单编号',
  `new_yw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '新业务',
  `person_liable_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '责任人',
  `person_liable_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '责任人电话',
  `custom_id` int(11) NULL DEFAULT NULL COMMENT '客户ID',
  `create_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `update_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_install
-- ----------------------------
INSERT INTO `scs_install` VALUES (1, '20201213001', '国内长途,国际长途,来电显示', '12', '12', 1, '3', NULL, '2020-12-13 20:45:05', '2020-12-13 20:45:05');
INSERT INTO `scs_install` VALUES (2, '20201213002', '国际长途,来电显示', '22', '22', 2, '3', NULL, '2020-12-13 21:13:05', '2020-12-13 21:13:05');
INSERT INTO `scs_install` VALUES (3, '20201213003', '国内长途,国际长途', '234', '234', 3, '3', NULL, '2020-12-13 21:16:06', '2020-12-13 21:16:06');
INSERT INTO `scs_install` VALUES (4, '20201213004', '国内长途,国际长途', '1', '1', 4, '3', NULL, '2020-12-13 21:41:51', '2020-12-13 21:41:51');
INSERT INTO `scs_install` VALUES (5, '20201213005', '国内长途,国际长途,呼叫转移', '34', '34', 5, '3', NULL, '2020-12-13 21:43:50', '2020-12-13 21:43:50');
INSERT INTO `scs_install` VALUES (6, '20201214001', '国内长途,国际长途,来电显示,主叫显示,呼叫转移', NULL, NULL, 6, '3', NULL, '2020-12-14 19:11:36', '2020-12-14 19:11:36');
INSERT INTO `scs_install` VALUES (7, '20201218001', '主叫显示,国际长途,国内长途', NULL, NULL, 6519, '3', NULL, '2020-12-18 15:55:13', '2020-12-18 15:55:13');
INSERT INTO `scs_install` VALUES (8, '20201218002', '呼叫转移,主叫显示', NULL, NULL, 6521, '3', NULL, '2020-12-18 16:18:10', '2020-12-18 16:18:10');
INSERT INTO `scs_install` VALUES (9, '20201218003', '呼叫转移,来电显示,国际长途', NULL, NULL, 6522, '3', NULL, '2020-12-18 16:18:58', '2020-12-18 16:18:58');
INSERT INTO `scs_install` VALUES (10, '20201220001', '国内长途,国际长途', NULL, NULL, 6523, '3', NULL, '2020-12-20 18:33:01', '2020-12-20 18:33:01');
INSERT INTO `scs_install` VALUES (11, '20201220002', '国内长途,国际长途,来电显示', NULL, NULL, 6524, '3', NULL, '2020-12-20 19:45:07', '2020-12-20 19:45:07');
INSERT INTO `scs_install` VALUES (12, '20201221001', '主叫显示,呼叫转移', NULL, NULL, 6525, '3', NULL, '2020-12-21 11:07:19', '2020-12-21 11:07:19');
INSERT INTO `scs_install` VALUES (13, '20201221002', '国内长途,国际长途,来电显示,主叫显示,呼叫转移', NULL, NULL, 6526, '3', NULL, '2020-12-21 11:30:18', '2020-12-21 11:30:18');
INSERT INTO `scs_install` VALUES (14, '20201221003', '国内长途,国际长途,来电显示,主叫显示,呼叫转移', NULL, NULL, 6527, '3', NULL, '2020-12-21 11:33:50', '2020-12-21 11:33:50');
INSERT INTO `scs_install` VALUES (15, '20201221004', '国内长途,国际长途,来电显示,主叫显示,呼叫转移', NULL, NULL, 6528, '3', NULL, '2020-12-21 14:59:36', '2020-12-21 14:59:36');
INSERT INTO `scs_install` VALUES (16, '20201221005', '国内长途,国际长途,来电显示,主叫显示,呼叫转移', NULL, NULL, 6529, '3', NULL, '2020-12-21 15:48:56', '2020-12-21 15:48:56');

-- ----------------------------
-- Table structure for scs_machine_line
-- ----------------------------
DROP TABLE IF EXISTS `scs_machine_line`;
CREATE TABLE `scs_machine_line`  (
  `phone_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_buy_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `line_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '线路类型',
  `hor_terminal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '横列端子',
  `trunk_cable_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '主干电缆号',
  `wiring_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配线号',
  `trunk_cable_pair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '主干电缆线对',
  `wiring_sequence` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配线序',
  `main_cable_pair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '主缆线对',
  `wiring_line` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配线直列',
  `join_box_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱名称',
  `junction_box_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分线盒号',
  `join_box_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱类型',
  `wiring_line_area_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配线区名称',
  `join_box_pair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱入线对',
  `junction_box_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分线盒地址',
  `join_box_out_pair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱出线对',
  `junction_box_pair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分线盒线对',
  `join_box_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱地址',
  `junction_box_capacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分线盒容量',
  `join_box_name_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱名称2',
  `join_box_type_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱类型2',
  `join_box_pair_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱入线对2',
  `join_box_out_pair_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱出线对2',
  `join_box_addr_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交接箱地址2',
  `dupli_box` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '复盒1',
  `dupli_box_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '复盒2',
  `custom_id` int(11) NULL DEFAULT NULL COMMENT '客户id',
  `switch_module_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交换机模块号',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `pcm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'pcm',
  `parent_station` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '母局信息',
  `module` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '模块局信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6676 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_machine_line
-- ----------------------------
INSERT INTO `scs_machine_line` VALUES (NULL, NULL, 205, NULL, '友谊路局配线架:2-4-108', '3901:820', '省人大交接箱', '友谊路局配线架:3-1-20', NULL, '3901', '20', '820', '315', NULL, NULL, NULL, NULL, '省人大交接箱:20-315', '省人大-配线电缆:315', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 'H`330:108', '2020-12-15 18:31:40', '2020-12-15 18:31:40', '友谊路PCM（人大）:20', '科技四路母局', '友谊路模块局');
INSERT INTO `scs_machine_line` VALUES (NULL, NULL, 206, NULL, '省委配线架:2-7-9', '3901配线区-2#:97', '390102', '省委配线架:2-1-97', NULL, '3901配线区-2#', '97', '97', '3', NULL, NULL, NULL, NULL, '390102:97-3', '390102:3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, '省委H`102:9', '2020-12-15 18:31:40', '2020-12-15 18:31:40', NULL, '省委端局', '省委模块局');
INSERT INTO `scs_machine_line` VALUES (NULL, NULL, 207, NULL, '省委配线架:3-1-112', '省委西院主干电缆:1756', '省委2号楼', '省委配线架:3-8-56', NULL, '省委西院主干电缆', '1756', '1756', '1196', NULL, NULL, NULL, NULL, '省委2号楼:1756-1196', '省委西院配线电缆:7696', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, '省委H`103:240', '2020-12-15 18:31:40', '2020-12-15 18:31:40', NULL, '省委端局', '省委模块局');
INSERT INTO `scs_machine_line` VALUES (NULL, NULL, 208, NULL, '省委配线架:3-1-107', '省委西院主干电缆:1772', '省委2号楼', '省委配线架:3-8-72', NULL, '省委西院主干电缆', '1772', '1772', '1365', NULL, NULL, NULL, NULL, '省委2号楼:1772-1365', '省委西院配线电缆:7865', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, '省委H`103:235', '2020-12-15 18:31:40', '2020-12-15 18:31:40', NULL, '省委端局', '省委模块局');
INSERT INTO `scs_machine_line` VALUES (NULL, NULL, 209, NULL, '省委配线架:3-1-126', '省委西院主干电缆:1665', '省委2号楼', '省委配线架:3-7-65', NULL, '省委西院主干电缆', NULL, '1665', '6426', NULL, NULL, NULL, NULL, '省委2号楼:1665-、省委1号楼:-6426', '省委西院配线电缆:6426', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 61, '省委H`103:254', '2020-12-15 18:31:40', '2020-12-15 18:31:40', NULL, '省委端局', '省委模块局');

-- ----------------------------
-- Table structure for scs_main_column
-- ----------------------------
DROP TABLE IF EXISTS `scs_main_column`;
CREATE TABLE `scs_main_column`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `station_id` int(11) NULL DEFAULT NULL,
  `main` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '主干',
  `column` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '直列',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_main_column
-- ----------------------------
INSERT INTO `scs_main_column` VALUES (1, 1, '03-1', '1-1-1', '2020-11-30 15:40:33', NULL);
INSERT INTO `scs_main_column` VALUES (2, 1, '03-2', '1-1-2', '2020-11-30 15:40:53', NULL);
INSERT INTO `scs_main_column` VALUES (3, 1, '03-3', '1-1-3', '2020-11-30 15:41:13', NULL);
INSERT INTO `scs_main_column` VALUES (4, 1, '03-4', '1-1-4', '2020-11-30 15:41:33', NULL);
INSERT INTO `scs_main_column` VALUES (5, 1, '03-5', '1-1-5', '2020-11-30 15:41:53', NULL);
INSERT INTO `scs_main_column` VALUES (6, 1, '03-6', '1-1-6', '2020-11-30 15:42:13', NULL);
INSERT INTO `scs_main_column` VALUES (7, 1, '03-7', '1-1-7', '2020-11-30 15:42:33', NULL);
INSERT INTO `scs_main_column` VALUES (8, 1, '03-8', '1-1-8', '2020-11-30 15:42:53', NULL);
INSERT INTO `scs_main_column` VALUES (9, 1, '03-9', '1-1-9', '2020-11-30 15:43:13', NULL);
INSERT INTO `scs_main_column` VALUES (10, 1, '03-10', '1-1-10', '2020-11-30 15:43:33', NULL);
INSERT INTO `scs_main_column` VALUES (11, 1, '03-11', '1-1-11', '2020-11-30 15:43:53', NULL);
INSERT INTO `scs_main_column` VALUES (12, 1, '03-12', '1-1-12', '2020-11-30 15:44:13', NULL);
INSERT INTO `scs_main_column` VALUES (13, 1, '03-13', '1-1-13', '2020-11-30 15:44:33', NULL);
INSERT INTO `scs_main_column` VALUES (14, 1, '03-14', '1-1-14', '2020-11-30 15:44:53', NULL);
INSERT INTO `scs_main_column` VALUES (15, 1, '03-15', '1-1-15', '2020-11-30 15:45:13', NULL);
INSERT INTO `scs_main_column` VALUES (16, 1, '03-16', '1-1-16', '2020-11-30 15:45:33', NULL);
INSERT INTO `scs_main_column` VALUES (17, 1, '03-17', '1-1-17', '2020-11-30 15:45:53', NULL);
INSERT INTO `scs_main_column` VALUES (18, 1, '03-18', '1-1-18', '2020-11-30 15:46:13', NULL);
INSERT INTO `scs_main_column` VALUES (19, 1, '03-19', '1-1-19', '2020-11-30 15:46:33', NULL);
INSERT INTO `scs_main_column` VALUES (20, 1, '03-20', '1-1-20', '2020-11-30 15:46:53', NULL);
INSERT INTO `scs_main_column` VALUES (21, 1, '03-21', '1-1-21', '2020-11-30 15:47:13', NULL);
INSERT INTO `scs_main_column` VALUES (22, 1, '03-22', '1-1-22', '2020-11-30 15:47:33', NULL);
INSERT INTO `scs_main_column` VALUES (23, 1, '03-23', '1-1-23', '2020-11-30 15:47:53', NULL);
INSERT INTO `scs_main_column` VALUES (24, 1, '03-24', '1-1-24', '2020-11-30 15:48:13', NULL);
INSERT INTO `scs_main_column` VALUES (25, 1, '03-25', '1-1-25', '2020-11-30 15:48:33', NULL);
INSERT INTO `scs_main_column` VALUES (26, 1, '03-26', '1-1-26', '2020-11-30 15:48:53', NULL);
INSERT INTO `scs_main_column` VALUES (27, 1, '03-27', '1-1-27', '2020-11-30 15:49:13', NULL);
INSERT INTO `scs_main_column` VALUES (28, 1, '03-28', '1-1-28', '2020-11-30 15:49:33', NULL);
INSERT INTO `scs_main_column` VALUES (29, 1, '03-29', '1-1-29', '2020-11-30 15:49:53', NULL);
INSERT INTO `scs_main_column` VALUES (30, 1, '03-30', '1-1-30', '2020-11-30 15:50:13', NULL);
INSERT INTO `scs_main_column` VALUES (31, 1, '03-31', '1-1-31', '2020-11-30 15:50:33', NULL);
INSERT INTO `scs_main_column` VALUES (32, 1, '03-32', '1-1-32', '2020-11-30 15:50:53', NULL);
INSERT INTO `scs_main_column` VALUES (33, 1, '03-33', '1-1-33', '2020-11-30 15:51:13', NULL);
INSERT INTO `scs_main_column` VALUES (34, 1, '03-34', '1-1-34', '2020-11-30 15:51:33', NULL);
INSERT INTO `scs_main_column` VALUES (35, 1, '03-35', '1-1-35', '2020-11-30 15:51:53', NULL);
INSERT INTO `scs_main_column` VALUES (36, 1, '03-36', '1-1-36', '2020-11-30 15:52:13', NULL);
INSERT INTO `scs_main_column` VALUES (37, 1, '03-37', '1-1-37', '2020-11-30 15:52:33', NULL);
INSERT INTO `scs_main_column` VALUES (38, 1, '03-38', '1-1-38', '2020-11-30 15:52:53', NULL);
INSERT INTO `scs_main_column` VALUES (39, 1, '03-39', '1-1-39', '2020-11-30 15:53:13', NULL);
INSERT INTO `scs_main_column` VALUES (40, 1, '03-40', '1-1-40', '2020-11-30 15:53:33', NULL);
INSERT INTO `scs_main_column` VALUES (41, 1, '03-41', '1-1-41', '2020-11-30 15:53:53', NULL);
INSERT INTO `scs_main_column` VALUES (42, 1, '03-42', '1-1-42', '2020-11-30 15:54:13', NULL);
INSERT INTO `scs_main_column` VALUES (43, 1, '03-43', '1-1-43', '2020-11-30 15:54:33', NULL);
INSERT INTO `scs_main_column` VALUES (44, 1, '03-44', '1-1-44', '2020-11-30 15:54:53', NULL);
INSERT INTO `scs_main_column` VALUES (45, 1, '03-45', '1-1-45', '2020-11-30 15:55:13', NULL);
INSERT INTO `scs_main_column` VALUES (46, 1, '03-46', '1-1-46', '2020-11-30 15:55:33', NULL);
INSERT INTO `scs_main_column` VALUES (47, 1, '03-47', '1-1-47', '2020-11-30 15:55:53', NULL);
INSERT INTO `scs_main_column` VALUES (48, 1, '03-48', '1-1-48', '2020-11-30 15:56:13', NULL);
INSERT INTO `scs_main_column` VALUES (49, 1, '03-49', '1-1-49', '2020-11-30 15:56:33', NULL);
INSERT INTO `scs_main_column` VALUES (50, 1, '03-50', '1-1-50', '2020-11-30 15:56:53', NULL);

-- ----------------------------
-- Table structure for scs_number_history
-- ----------------------------
DROP TABLE IF EXISTS `scs_number_history`;
CREATE TABLE `scs_number_history`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `custom_id` int(11) NOT NULL COMMENT '客户ID',
  `number_id` int(11) NOT NULL COMMENT '号码ID',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_number_history
-- ----------------------------

-- ----------------------------
-- Table structure for scs_number_row
-- ----------------------------
DROP TABLE IF EXISTS `scs_number_row`;
CREATE TABLE `scs_number_row`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `station_id` int(11) NULL DEFAULT NULL,
  `number_id` int(11) NOT NULL COMMENT '号码ID',
  `row_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '横列',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `switch_module_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '交换机模块号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_number_row
-- ----------------------------
INSERT INTO `scs_number_row` VALUES (1, 1, 1, '1-1-0-0', '2020-11-30 15:37:57', NULL, 'H`200:25');
INSERT INTO `scs_number_row` VALUES (2, 1, 2, '1-1-0-1', '2020-11-30 15:39:01', NULL, 'H`200:26');
INSERT INTO `scs_number_row` VALUES (3, 1, 3, '1-1-0-2', '2020-12-01 15:39:01', NULL, 'H`200:27');
INSERT INTO `scs_number_row` VALUES (4, 1, 4, '1-1-0-3', '2020-12-02 15:39:01', NULL, 'H`200:28');
INSERT INTO `scs_number_row` VALUES (5, 1, 5, '1-1-0-4', '2020-12-03 15:39:01', NULL, 'H`200:29');
INSERT INTO `scs_number_row` VALUES (6, 1, 6, '1-1-0-5', '2020-12-04 15:39:01', NULL, 'H`200:30');
INSERT INTO `scs_number_row` VALUES (7, 1, 7, '1-1-0-6', '2020-12-05 15:39:01', NULL, 'H`200:31');
INSERT INTO `scs_number_row` VALUES (8, 1, 8, '1-1-0-7', '2020-12-06 15:39:01', NULL, 'H`200:32');
INSERT INTO `scs_number_row` VALUES (9, 1, 9, '1-1-1-0', '2020-12-07 15:39:01', NULL, 'H`200:33');
INSERT INTO `scs_number_row` VALUES (10, 1, 10, '1-1-1-1', '2020-12-08 15:39:01', NULL, 'H`200:34');
INSERT INTO `scs_number_row` VALUES (11, 1, 11, '1-1-1-2', '2020-12-09 15:39:01', NULL, 'H`200:35');
INSERT INTO `scs_number_row` VALUES (12, 1, 12, '1-1-1-3', '2020-12-10 15:39:01', NULL, 'H`200:36');
INSERT INTO `scs_number_row` VALUES (13, 1, 13, '1-1-1-4', '2020-12-11 15:39:01', NULL, 'H`200:37');
INSERT INTO `scs_number_row` VALUES (14, 1, 14, '1-1-1-5', '2020-12-12 15:39:01', NULL, 'H`200:38');
INSERT INTO `scs_number_row` VALUES (15, 1, 15, '1-1-1-6', '2020-12-13 15:39:01', NULL, 'H`200:39');
INSERT INTO `scs_number_row` VALUES (16, 1, 16, '1-1-1-7', '2020-12-14 15:39:01', NULL, 'H`200:40');
INSERT INTO `scs_number_row` VALUES (17, 1, 17, '1-1-2-0', '2020-12-15 15:39:01', NULL, 'H`200:41');
INSERT INTO `scs_number_row` VALUES (18, 1, 18, '1-1-2-1', '2020-12-16 15:39:01', NULL, 'H`200:42');
INSERT INTO `scs_number_row` VALUES (19, 1, 19, '1-1-2-2', '2020-12-17 15:39:01', NULL, 'H`200:43');
INSERT INTO `scs_number_row` VALUES (20, 1, 20, '1-1-2-3', '2020-12-18 15:39:01', NULL, 'H`200:44');
INSERT INTO `scs_number_row` VALUES (21, 1, 21, '1-1-2-4', '2020-12-19 15:39:01', NULL, 'H`200:45');
INSERT INTO `scs_number_row` VALUES (22, 1, 22, '1-1-2-5', '2020-12-20 15:39:01', NULL, 'H`200:46');
INSERT INTO `scs_number_row` VALUES (23, 1, 23, '1-1-2-6', '2020-12-21 15:39:01', NULL, 'H`200:47');
INSERT INTO `scs_number_row` VALUES (24, 1, 24, '1-1-2-7', '2020-12-22 15:39:01', NULL, 'H`200:48');
INSERT INTO `scs_number_row` VALUES (25, 1, 25, '1-1-3-0', '2020-12-23 15:39:01', NULL, 'H`200:49');
INSERT INTO `scs_number_row` VALUES (26, 1, 26, '1-1-3-1', '2020-12-24 15:39:01', NULL, 'H`200:50');
INSERT INTO `scs_number_row` VALUES (27, 1, 27, '1-1-3-2', '2020-12-25 15:39:01', NULL, 'H`200:51');
INSERT INTO `scs_number_row` VALUES (28, 1, 28, '1-1-3-3', '2020-12-26 15:39:01', NULL, 'H`200:52');
INSERT INTO `scs_number_row` VALUES (29, 1, 29, '1-1-3-4', '2020-12-27 15:39:01', NULL, 'H`200:53');
INSERT INTO `scs_number_row` VALUES (30, 1, 30, '1-1-3-5', '2020-12-28 15:39:01', NULL, 'H`200:54');
INSERT INTO `scs_number_row` VALUES (31, 1, 31, '1-1-3-6', '2020-12-29 15:39:01', NULL, 'H`200:55');
INSERT INTO `scs_number_row` VALUES (32, 1, 32, '1-1-3-7', '2020-12-30 15:39:01', NULL, 'H`200:56');
INSERT INTO `scs_number_row` VALUES (33, 1, 33, '1-1-4-0', '2020-12-31 15:39:01', NULL, 'H`200:57');
INSERT INTO `scs_number_row` VALUES (34, 1, 34, '1-1-4-1', '2021-01-01 15:39:01', NULL, 'H`200:58');
INSERT INTO `scs_number_row` VALUES (35, 1, 35, '1-1-4-2', '2021-01-02 15:39:01', NULL, 'H`200:59');
INSERT INTO `scs_number_row` VALUES (36, 1, 36, '1-1-4-3', '2021-01-03 15:39:01', NULL, 'H`200:60');
INSERT INTO `scs_number_row` VALUES (37, 1, 37, '1-1-4-4', '2021-01-04 15:39:01', NULL, 'H`200:61');
INSERT INTO `scs_number_row` VALUES (38, 1, 38, '1-1-4-5', '2021-01-05 15:39:01', NULL, 'H`200:62');
INSERT INTO `scs_number_row` VALUES (39, 1, 39, '1-1-4-6', '2021-01-06 15:39:01', NULL, 'H`200:63');
INSERT INTO `scs_number_row` VALUES (40, 1, 40, '1-1-4-7', '2021-01-07 15:39:01', NULL, 'H`200:64');
INSERT INTO `scs_number_row` VALUES (41, 1, 41, '1-1-5-0', '2021-01-08 15:39:01', NULL, 'H`200:65');
INSERT INTO `scs_number_row` VALUES (42, 1, 42, '1-1-5-1', '2021-01-09 15:39:01', NULL, 'H`200:66');
INSERT INTO `scs_number_row` VALUES (43, 1, 43, '1-1-5-2', '2021-01-10 15:39:01', NULL, 'H`200:67');
INSERT INTO `scs_number_row` VALUES (44, 1, 44, '1-1-5-3', '2021-01-11 15:39:01', NULL, 'H`200:68');
INSERT INTO `scs_number_row` VALUES (45, 1, 45, '1-1-5-4', '2021-01-12 15:39:01', NULL, 'H`200:69');
INSERT INTO `scs_number_row` VALUES (46, 1, 46, '1-1-5-5', '2021-01-13 15:39:01', NULL, 'H`200:70');
INSERT INTO `scs_number_row` VALUES (47, 1, 47, '1-1-5-6', '2021-01-14 15:39:01', NULL, 'H`200:71');
INSERT INTO `scs_number_row` VALUES (48, 1, 48, '1-1-5-7', '2021-01-15 15:39:01', NULL, 'H`200:72');

-- ----------------------------
-- Table structure for scs_outline_resource
-- ----------------------------
DROP TABLE IF EXISTS `scs_outline_resource`;
CREATE TABLE `scs_outline_resource`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_outline_resource
-- ----------------------------

-- ----------------------------
-- Table structure for scs_phone_log
-- ----------------------------
DROP TABLE IF EXISTS `scs_phone_log`;
CREATE TABLE `scs_phone_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '账户名称',
  `billing_account_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '账户表id',
  `tariff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '资费标准名称',
  `tariff_amount` decimal(8, 2) NULL COMMENT '资费金额',
  `tariff_standard_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '资费标准表id',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '电话号码',
  `phone_number_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '号码库表id',
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '单位名称',
  `unit_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '单位表id',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '号码,资费标准关联关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_phone_log
-- ----------------------------

-- ----------------------------
-- Table structure for scs_phone_number
-- ----------------------------
DROP TABLE IF EXISTS `scs_phone_number`;
CREATE TABLE `scs_phone_number`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '电话号码',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '号码状态 0未使用 1使用中',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6474 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '电话号码库' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_phone_number
-- ----------------------------
INSERT INTO `scs_phone_number` VALUES (6464, '63990001', 0, '2020-12-18 11:31:41', '2020-12-18 11:31:41');
INSERT INTO `scs_phone_number` VALUES (6465, '63990002', 0, '2020-12-18 11:31:41', '2020-12-18 16:18:10');
INSERT INTO `scs_phone_number` VALUES (6466, '63990003', 0, '2020-12-18 11:31:41', '2020-12-18 16:18:58');
INSERT INTO `scs_phone_number` VALUES (6467, '63990004', 0, '2020-12-18 11:31:41', '2020-12-20 18:33:01');
INSERT INTO `scs_phone_number` VALUES (6468, '63990005', 0, '2020-12-18 11:31:41', '2020-12-20 19:45:07');
INSERT INTO `scs_phone_number` VALUES (6469, '63990006', 0, '2020-12-18 11:31:41', '2020-12-21 11:07:18');
INSERT INTO `scs_phone_number` VALUES (6470, '63990007', 0, '2020-12-18 11:31:41', '2020-12-21 11:30:18');
INSERT INTO `scs_phone_number` VALUES (6471, '63990008', 0, '2020-12-18 11:31:41', '2020-12-21 11:33:50');
INSERT INTO `scs_phone_number` VALUES (6472, '63990009', 0, '2020-12-18 11:31:41', '2020-12-21 14:59:36');
INSERT INTO `scs_phone_number` VALUES (6473, '63990010', 0, '2020-12-18 11:31:41', '2020-12-21 15:48:56');

-- ----------------------------
-- Table structure for scs_station
-- ----------------------------
DROP TABLE IF EXISTS `scs_station`;
CREATE TABLE `scs_station`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '站点名称',
  `sort` int(11) NOT NULL COMMENT '排序值',
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '父级ID',
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '站点地址',
  `phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '站点联系电话',
  `enabled` int(11) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '描述',
  `create_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人ID',
  `update_user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '修改人ID',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_station
-- ----------------------------
INSERT INTO `scs_station` VALUES (1, '科技四路局', 0, 0, '雁塔区科技四路', '1222222', 1, NULL, '1', NULL, '2020-12-03 17:36:14', '2020-12-03 17:36:14');
INSERT INTO `scs_station` VALUES (4, '省政府', 0, 1, '西安市高新开发区中心位置', '12223', 1, '312313', '1', NULL, '2020-12-03 17:43:09', '2020-12-03 17:43:09');

-- ----------------------------
-- Table structure for scs_station_resource
-- ----------------------------
DROP TABLE IF EXISTS `scs_station_resource`;
CREATE TABLE `scs_station_resource`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_station_resource
-- ----------------------------

-- ----------------------------
-- Table structure for scs_tariff_standard
-- ----------------------------
DROP TABLE IF EXISTS `scs_tariff_standard`;
CREATE TABLE `scs_tariff_standard`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tariff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '资费标准名称',
  `tariff_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '资费标准类型 0市话 1国内长途 2国际长途',
  `tariff_amount` decimal(8, 2) NOT NULL COMMENT '资费金额',
  `start_at` date NULL DEFAULT NULL COMMENT '资费标准开始时间',
  `end_at` date NULL DEFAULT NULL COMMENT '资费标准结束时间',
  `enabled` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用 0否 1是',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资费标准表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_tariff_standard
-- ----------------------------

-- ----------------------------
-- Table structure for scs_units
-- ----------------------------
DROP TABLE IF EXISTS `scs_units`;
CREATE TABLE `scs_units`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '单位名称',
  `unit_short` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '单位简称',
  `unit_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '单位地址',
  `unit_name_py` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '单位名称拼音',
  `unit_short_py` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '单位简称拼音',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '单位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scs_units
-- ----------------------------
INSERT INTO `scs_units` VALUES (2, '省人民代表大会常务委员会(省人大)', '省人民代表大会常务委员会(省人大)', '', 'srmdbdhcwwyhsrd', 'srmdbdhcwwyhsrd', '2020-12-18 11:06:31', '2020-12-18 11:06:31');
INSERT INTO `scs_units` VALUES (3, '省政协', '省政协', '', 'szx', 'szx', '2020-12-18 11:22:18', '2020-12-18 11:22:18');
INSERT INTO `scs_units` VALUES (4, '省纪委监委', '省纪委监委', '', 'sjwjw', 'sjwjw', '2020-12-18 11:22:19', '2020-12-18 11:22:19');

-- ----------------------------
-- Table structure for sys_departments
-- ----------------------------
DROP TABLE IF EXISTS `sys_departments`;
CREATE TABLE `sys_departments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `sort` int(11) NOT NULL COMMENT '排序值',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '父级ID',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '修改人',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_departments
-- ----------------------------
INSERT INTO `sys_departments` VALUES (1, '陕西省', 1, 1, 0, NULL, '超级管理员', '管理员', '2020-10-20 16:57:18', '2020-10-30 14:21:22');
INSERT INTO `sys_departments` VALUES (2, '西安市', 1, 1, 1, NULL, '超级管理员', '管理员', '2019-05-27 16:57:18', '2020-10-30 14:28:13');
INSERT INTO `sys_departments` VALUES (3, '宝鸡市', 0, 1, 1, NULL, '管理员', '管理员', '2020-10-30 14:25:58', '2020-12-03 16:52:53');
INSERT INTO `sys_departments` VALUES (4, '咸阳市', 3, 1, 1, NULL, '管理员', NULL, '2020-10-30 14:26:07', NULL);
INSERT INTO `sys_departments` VALUES (5, '铜川市', 4, 1, 1, NULL, '管理员', NULL, '2020-10-30 14:26:36', NULL);
INSERT INTO `sys_departments` VALUES (6, '渭南市', 5, 1, 1, NULL, '管理员', NULL, '2020-10-30 14:26:47', NULL);
INSERT INTO `sys_departments` VALUES (7, '延安市', 6, 1, 1, NULL, '管理员', NULL, '2020-10-30 14:27:00', NULL);
INSERT INTO `sys_departments` VALUES (8, '榆林市', 7, 1, 1, NULL, '管理员', NULL, '2020-10-30 14:27:10', NULL);
INSERT INTO `sys_departments` VALUES (9, '汉中市', 8, 1, 1, NULL, '管理员', NULL, '2020-10-30 14:27:20', NULL);
INSERT INTO `sys_departments` VALUES (10, '安康市', 9, 1, 1, NULL, '管理员', NULL, '2020-10-30 14:27:56', NULL);
INSERT INTO `sys_departments` VALUES (11, '商洛市', 10, 1, 1, NULL, '管理员', NULL, '2020-10-30 14:28:08', NULL);

-- ----------------------------
-- Table structure for sys_dict_categories
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_categories`;
CREATE TABLE `sys_dict_categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '唯一名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `created_user_id` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `updated_user_id` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_categories
-- ----------------------------
INSERT INTO `sys_dict_categories` VALUES (1, '性别', 'sex', NULL, 1, NULL, '2019-01-25 10:22:35', '2019-01-25 10:22:35');
INSERT INTO `sys_dict_categories` VALUES (2, '用户类型', 'user_type', '用户类型', 1, NULL, '2019-08-19 18:01:22', '2019-08-19 18:01:22');
INSERT INTO `sys_dict_categories` VALUES (3, '节点状态', 'node_status', NULL, 1, NULL, '2020-11-02 16:36:25', '2020-11-02 16:36:25');
INSERT INTO `sys_dict_categories` VALUES (4, '客户状态', 'yonghuzhuangtai', '客户状态', 1, 1, '2020-11-10 10:58:13', '2020-11-10 11:03:39');
INSERT INTO `sys_dict_categories` VALUES (5, '客户话机类型', 'kehuhuajileixing', '客户话机类型', 1, NULL, '2020-11-10 11:03:26', '2020-11-10 11:03:26');
INSERT INTO `sys_dict_categories` VALUES (6, '客户线路类型', 'kehuxianluleixing', '客户线路类型', 1, NULL, '2020-11-10 11:08:02', '2020-11-10 11:08:02');
INSERT INTO `sys_dict_categories` VALUES (7, '客户级别', 'kehujibie', '客户级别', 1, NULL, '2020-11-10 11:12:54', '2020-11-10 11:12:54');
INSERT INTO `sys_dict_categories` VALUES (8, '客户属性', 'kehushuxing', '客户属性', 1, NULL, '2020-11-10 11:14:08', '2020-11-10 11:14:08');
INSERT INTO `sys_dict_categories` VALUES (9, '号码表状态', 'phone_status', NULL, 1, NULL, '2020-12-13 17:39:21', '2020-12-13 17:39:21');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '名称',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '字段值',
  `dict_id` int(10) UNSIGNED NOT NULL COMMENT '字典ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `created_user_id` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `updated_user_id` int(11) NULL DEFAULT NULL COMMENT '修改人',
  `sort` int(11) NOT NULL COMMENT '排序值',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_dict_data_dict_id_foreign`(`dict_id`) USING BTREE,
  CONSTRAINT `sys_dict_data_dict_id_foreign` FOREIGN KEY (`dict_id`) REFERENCES `sys_dict_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, '男', '1', 1, NULL, 1, NULL, 0, 1, '2019-01-25 10:23:00', '2019-01-25 10:23:00');
INSERT INTO `sys_dict_data` VALUES (2, '女', '2', 1, NULL, 1, NULL, 1, 1, '2019-01-25 10:23:23', '2019-01-25 10:23:23');
INSERT INTO `sys_dict_data` VALUES (3, '管理人员', '0', 2, '管理人员', 1, NULL, 2, 1, '2019-03-20 21:36:53', '2019-03-20 21:36:53');
INSERT INTO `sys_dict_data` VALUES (4, '保存', '1', 3, NULL, 1, NULL, 0, 1, '2020-11-02 16:36:59', '2020-11-02 16:36:59');
INSERT INTO `sys_dict_data` VALUES (5, '提交', '2', 3, NULL, 1, NULL, 0, 1, '2020-11-02 16:37:11', '2020-11-02 16:37:11');
INSERT INTO `sys_dict_data` VALUES (6, '撤单', '0', 3, NULL, 1, 1, 0, 1, '2020-11-02 16:37:40', '2020-11-02 16:39:28');
INSERT INTO `sys_dict_data` VALUES (7, '归档', '3', 3, NULL, 1, NULL, 0, 1, '2020-11-02 16:39:46', '2020-11-02 16:39:46');
INSERT INTO `sys_dict_data` VALUES (8, '竣工', '4', 3, NULL, 1, NULL, 0, 1, '2020-11-02 16:42:21', '2020-11-02 16:42:21');
INSERT INTO `sys_dict_data` VALUES (9, '欠费', '1', 4, '欠费', 1, 1, 1, 1, '2020-11-10 10:58:35', '2020-11-10 11:02:36');
INSERT INTO `sys_dict_data` VALUES (10, '工程停机', '2', 4, '工程停机', 1, 1, 2, 1, '2020-11-10 10:58:49', '2020-11-10 11:02:28');
INSERT INTO `sys_dict_data` VALUES (11, '停机保号', '3', 4, '停机保号', 1, 1, 3, 1, '2020-11-10 10:59:02', '2020-11-10 11:02:20');
INSERT INTO `sys_dict_data` VALUES (12, '违章停机', '4', 4, '违章停机', 1, 1, 4, 1, '2020-11-10 10:59:16', '2020-11-10 11:02:13');
INSERT INTO `sys_dict_data` VALUES (13, '拆机', '5', 4, '拆机', 1, 1, 5, 1, '2020-11-10 10:59:28', '2020-11-10 11:02:05');
INSERT INTO `sys_dict_data` VALUES (14, '用户改号', '6', 4, '用户改号', 1, 1, 6, 1, '2020-11-10 10:59:42', '2020-11-10 11:01:58');
INSERT INTO `sys_dict_data` VALUES (15, '用户移机', '7', 4, '用户移机', 1, 1, 7, 1, '2020-11-10 11:00:03', '2020-11-10 11:01:50');
INSERT INTO `sys_dict_data` VALUES (16, '预占', '8', 4, '预占', 1, 1, 8, 1, '2020-11-10 11:00:15', '2020-11-10 11:01:43');
INSERT INTO `sys_dict_data` VALUES (17, '开通', '0', 4, '开通', 1, NULL, 0, 1, '2020-11-10 11:01:29', '2020-11-10 11:01:29');
INSERT INTO `sys_dict_data` VALUES (18, 'HA106P1/TSC', '0', 5, 'HA106P1/TSC', 1, NULL, 0, 1, '2020-11-10 11:04:16', '2020-11-10 11:04:16');
INSERT INTO `sys_dict_data` VALUES (19, 'PDH276-2', '1', 5, 'PDH276-2', 1, NULL, 1, 1, '2020-11-10 11:04:32', '2020-11-10 11:04:32');
INSERT INTO `sys_dict_data` VALUES (20, 'JDH239', '2', 5, 'JDH239', 1, NULL, 2, 1, '2020-11-10 11:04:47', '2020-11-10 11:04:47');
INSERT INTO `sys_dict_data` VALUES (21, '低泄射传真机', '3', 5, '低泄射传真机', 1, NULL, 3, 1, '2020-11-10 11:05:17', '2020-11-10 11:05:17');
INSERT INTO `sys_dict_data` VALUES (22, '光MODEM', '4', 5, '光MODEM', 1, NULL, 4, 1, '2020-11-10 11:05:38', '2020-11-10 11:05:38');
INSERT INTO `sys_dict_data` VALUES (23, '实线MODEM', '5', 5, '实线MODEM', 1, NULL, 5, 1, '2020-11-10 11:05:59', '2020-11-10 11:05:59');
INSERT INTO `sys_dict_data` VALUES (24, 'HA28P1/TSC', '6', 5, 'HA28P1/TSC', 1, NULL, 6, 1, '2020-11-10 11:06:25', '2020-11-10 11:06:25');
INSERT INTO `sys_dict_data` VALUES (25, '实线', '0', 6, '实线', 1, NULL, 0, 1, '2020-11-10 11:08:23', '2020-11-10 11:08:23');
INSERT INTO `sys_dict_data` VALUES (26, 'ISDN', '1', 6, 'ISDN', 1, NULL, 1, 1, '2020-11-10 11:08:38', '2020-11-10 11:08:38');
INSERT INTO `sys_dict_data` VALUES (27, 'ADSL', '2', 6, 'ADSL', 1, NULL, 2, 1, '2020-11-10 11:08:58', '2020-11-10 11:08:58');
INSERT INTO `sys_dict_data` VALUES (28, '1+1载波', '3', 6, '1+1载波', 1, NULL, 3, 1, '2020-11-10 11:09:19', '2020-11-10 11:09:19');
INSERT INTO `sys_dict_data` VALUES (29, '0+8载波', '4', 6, '0+8载波', 1, NULL, 4, 1, '2020-11-10 11:09:34', '2020-11-10 11:09:34');
INSERT INTO `sys_dict_data` VALUES (30, '中继线', '5', 6, '中继线', 1, NULL, 5, 1, '2020-11-10 11:09:55', '2020-11-10 11:09:55');
INSERT INTO `sys_dict_data` VALUES (31, '0+4载波', '6', 6, '0+4载波', 1, NULL, 6, 1, '2020-11-10 11:10:08', '2020-11-10 11:10:08');
INSERT INTO `sys_dict_data` VALUES (32, '专线', '7', 6, '专线', 1, NULL, 7, 1, '2020-11-10 11:10:35', '2020-11-10 11:10:35');
INSERT INTO `sys_dict_data` VALUES (33, '光环路', '8', 6, '光环路', 1, NULL, 8, 1, '2020-11-10 11:10:47', '2020-11-10 11:10:47');
INSERT INTO `sys_dict_data` VALUES (34, 'X25', '9', 6, 'X25', 1, NULL, 9, 1, '2020-11-10 11:11:07', '2020-11-10 11:11:07');
INSERT INTO `sys_dict_data` VALUES (35, 'DDN专线', '10', 6, 'DDN专线', 1, NULL, 10, 1, '2020-11-10 11:11:27', '2020-11-10 11:11:27');
INSERT INTO `sys_dict_data` VALUES (36, '载波电话线', '11', 6, '载波电话线', 1, NULL, 11, 1, '2020-11-10 11:11:48', '2020-11-10 11:11:48');
INSERT INTO `sys_dict_data` VALUES (37, '1+1实线', '12', 6, '1+1实线', 1, NULL, 12, 1, '2020-11-10 11:12:05', '2020-11-10 11:12:05');
INSERT INTO `sys_dict_data` VALUES (38, '普通用户', '0', 7, '普通用户', 1, 1, 0, 1, '2020-11-10 11:13:14', '2020-11-10 11:13:37');
INSERT INTO `sys_dict_data` VALUES (39, '重要用户', '1', 7, '重要用户', 1, NULL, 1, 1, '2020-11-10 11:13:27', '2020-11-10 11:13:27');
INSERT INTO `sys_dict_data` VALUES (40, '办公', '0', 8, '办公', 1, NULL, 0, 1, '2020-11-10 11:14:24', '2020-11-10 11:14:24');
INSERT INTO `sys_dict_data` VALUES (41, '传真', '1', 8, '传真', 1, NULL, 1, 1, '2020-11-10 11:14:38', '2020-11-10 11:14:38');
INSERT INTO `sys_dict_data` VALUES (42, '住宅', '2', 8, '住宅', 1, NULL, 2, 1, '2020-11-10 11:14:50', '2020-11-10 11:14:50');
INSERT INTO `sys_dict_data` VALUES (43, '数据', '3', 8, '数据', 1, NULL, 3, 1, '2020-11-10 11:15:00', '2020-11-10 11:15:00');
INSERT INTO `sys_dict_data` VALUES (44, '省级用户', '2', 7, '省级用户', 1, NULL, 2, 1, '2020-11-11 13:59:35', '2020-11-11 13:59:35');
INSERT INTO `sys_dict_data` VALUES (45, '市级用户', '3', 7, '市级用户', 1, NULL, 3, 1, '2020-11-11 13:59:56', '2020-11-11 13:59:56');
INSERT INTO `sys_dict_data` VALUES (46, '未使用', '0', 9, NULL, 1, NULL, 0, 1, '2020-12-13 17:39:42', '2020-12-13 17:39:42');
INSERT INTO `sys_dict_data` VALUES (47, '使用中', '1', 9, NULL, 1, NULL, 1, 1, '2020-12-13 17:39:54', '2020-12-13 17:39:54');
INSERT INTO `sys_dict_data` VALUES (48, '拆机处理中', '9', 4, NULL, 1, NULL, 0, 1, '2020-12-15 18:26:28', '2020-12-15 18:26:28');
INSERT INTO `sys_dict_data` VALUES (49, '移机处理中', '10', 4, NULL, 1, NULL, 0, 1, '2020-12-15 18:27:39', '2020-12-15 18:27:39');
INSERT INTO `sys_dict_data` VALUES (50, '移机过户处理中', '11', 4, NULL, 1, NULL, 0, 1, '2020-12-15 18:28:01', '2020-12-15 18:28:01');
INSERT INTO `sys_dict_data` VALUES (51, '已归档', '12', 4, NULL, 1, NULL, 0, 1, '2020-12-15 18:29:18', '2020-12-15 18:29:18');

-- ----------------------------
-- Table structure for sys_files
-- ----------------------------
DROP TABLE IF EXISTS `sys_files`;
CREATE TABLE `sys_files`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `disk_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '存储文件名',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原文件名',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件路径',
  `file_size` int(11) NOT NULL COMMENT '文件大小',
  `file_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文件类型',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '自定义名称',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '描述',
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '关联字段',
  `model_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'Model ID',
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'Model',
  `sort_order` int(11) NULL DEFAULT NULL COMMENT '排序值',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '修改人',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_files_field_index`(`field`) USING BTREE,
  INDEX `sys_files_model_id_index`(`model_id`) USING BTREE,
  INDEX `sys_files_model_type_index`(`model_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_files
-- ----------------------------
INSERT INTO `sys_files` VALUES (3, '1605003549-微信截图_20201109144245.png', '微信截图_20201109144245.png', 'http://localhost:9801//storage/custom/file/微信截图_20201109144245.png', 33908, 'png', NULL, NULL, NULL, '45', 'scs_custom', NULL, '业务', NULL, '2020-11-10 18:19:09', NULL);
INSERT INTO `sys_files` VALUES (4, '1605003705-微信截图_20201109114315.png', '微信截图_20201109114315.png', 'http://localhost:9801//storage/custom/file/微信截图_20201109114315.png', 122115, 'png', NULL, NULL, NULL, '45', 'scs_custom', NULL, NULL, NULL, '2020-11-10 18:21:45', NULL);
INSERT INTO `sys_files` VALUES (5, '1605003799-微信截图_20201013165203.png', '微信截图_20201013165203.png', 'http://localhost:9801//storage/custom/file/微信截图_20201013165203.png', 109442, 'png', NULL, NULL, NULL, '45', 'scs_custom', NULL, '业务', NULL, '2020-11-10 18:23:19', NULL);
INSERT INTO `sys_files` VALUES (6, '1605003960-项目计划分解.xlsx', '项目计划分解.xlsx', 'http://localhost:9801//storage/custom/file/项目计划分解.xlsx', 10592, 'xlsx', NULL, NULL, NULL, '46', 'scs_custom', NULL, NULL, NULL, '2020-11-10 18:26:00', '2020-11-10 18:26:04');
INSERT INTO `sys_files` VALUES (7, '1605003976-1604978851-加气现存记录陕G18165.xls', '1604978851-加气现存记录陕G18165.xls', 'http://localhost:9801//storage/custom/file/1604978851-加气现存记录陕G18165.xls', 15872, 'xls', NULL, NULL, NULL, '46', 'scs_custom', NULL, '业务', NULL, '2020-11-10 18:26:16', NULL);
INSERT INTO `sys_files` VALUES (8, '1605003980-微信截图_20201109114315.png', '微信截图_20201109114315.png', 'http://localhost:9801//storage/custom/file/微信截图_20201109114315.png', 122115, 'png', NULL, NULL, NULL, '46', 'scs_custom', NULL, '业务', NULL, '2020-11-10 18:26:20', NULL);
INSERT INTO `sys_files` VALUES (9, '1605011422-微信截图_20201110182958.png', '微信截图_20201110182958.png', 'http://localhost:9801//storage/custom/file/微信截图_20201110182958.png', 113536, 'png', NULL, NULL, NULL, '47', 'scs_custom', NULL, NULL, NULL, '2020-11-10 20:30:22', '2020-11-10 20:30:27');
INSERT INTO `sys_files` VALUES (10, '1605011591-微信截图_20201109144245.png', '微信截图_20201109144245.png', 'http://localhost:9801//storage/custom/file/微信截图_20201109144245.png', 33908, 'png', NULL, NULL, NULL, '48', 'scs_custom', NULL, NULL, NULL, '2020-11-10 20:33:11', '2020-11-10 20:33:18');
INSERT INTO `sys_files` VALUES (11, '1605011875-微信截图_20201110182958.png', '微信截图_20201110182958.png', 'http://localhost:9801//storage/custom/file/微信截图_20201110182958.png', 113536, 'png', NULL, NULL, NULL, '48', 'scs_custom', NULL, '业务', NULL, '2020-11-10 20:37:55', NULL);
INSERT INTO `sys_files` VALUES (12, '1605432285-bing_20191009_1920x1080.jpg', 'bing_20191009_1920x1080.jpg', 'http://localhost:9802//storage/install/file/bing_20191009_1920x1080.jpg', 332815, 'jpg', NULL, NULL, NULL, '30', 'scs_install', NULL, NULL, NULL, '2020-11-15 17:24:45', '2020-11-15 17:25:15');
INSERT INTO `sys_files` VALUES (15, '1605464910-微信截图_20201013165155.png', '微信截图_20201013165155.png', 'http://localhost:9802//storage/install/file/微信截图_20201013165155.png', 113836, 'png', NULL, NULL, NULL, '36', 'scs_install', NULL, '业务', NULL, '2020-11-16 02:28:30', '2020-11-16 02:30:42');
INSERT INTO `sys_files` VALUES (16, '1605466029-login-bg.7628d7f.jpg', 'login-bg.7628d7f.jpg', 'http://localhost:9802//storage/install/file/login-bg.7628d7f.jpg', 77570, 'jpg', NULL, NULL, NULL, '36', 'scs_install', NULL, '业务', NULL, '2020-11-16 02:47:09', '2020-11-16 02:47:33');
INSERT INTO `sys_files` VALUES (17, '1605464484-bing_20191009_1920x1080.jpg', 'bing_20191009_1920x1080.jpg', 'http://localhost:9802//storage/install/file/bing_20191009_1920x1080.jpg', 332815, 'jpg', NULL, NULL, NULL, '35', 'scs_install', NULL, NULL, NULL, '2020-11-16 02:21:24', '2020-11-16 02:21:54');
INSERT INTO `sys_files` VALUES (18, '1607863365-111.xlsx', '111.xlsx', 'http://localhost:9804//storage/install/file/111.xlsx', 10592, 'xlsx', '文件一', NULL, NULL, '1', 'scs_install', NULL, '业务', NULL, '2020-12-13 20:42:45', '2020-12-13 20:45:10');
INSERT INTO `sys_files` VALUES (19, '1607863387-Eov-6cRXUAQs06H.png', 'Eov-6cRXUAQs06H.png', 'http://localhost:9804//storage/install/file/Eov-6cRXUAQs06H.png', 9914, 'png', '文件二', NULL, NULL, '1', 'scs_install', NULL, '业务', NULL, '2020-12-13 20:43:07', '2020-12-13 20:45:10');
INSERT INTO `sys_files` VALUES (20, '1607865172-111.xlsx', '111.xlsx', 'http://localhost:9804//storage/install/file/111.xlsx', 10592, 'xlsx', '2222', NULL, NULL, '2', 'scs_install', NULL, '业务', NULL, '2020-12-13 21:12:52', '2020-12-13 21:13:05');
INSERT INTO `sys_files` VALUES (21, '1607865359-Eov-6cRXUAQs06H.png', 'Eov-6cRXUAQs06H.png', 'http://localhost:9804//storage/install/file/Eov-6cRXUAQs06H.png', 9914, 'png', NULL, NULL, NULL, '3', 'scs_install', NULL, '业务', NULL, '2020-12-13 21:15:59', '2020-12-13 21:16:06');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '英文标题',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '前端组件',
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '父级ID',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `link_type` int(11) NOT NULL DEFAULT 0 COMMENT '链接类型',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第三方链接',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'icon',
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self' COMMENT '链接跳转类型',
  `enabled` int(11) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序值',
  `created_user_id` int(11) NULL DEFAULT NULL COMMENT '创建用户ID',
  `updated_user_id` int(11) NULL DEFAULT NULL COMMENT '修改用户ID',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES (1, '首页', 'base', NULL, 0, NULL, '/', 0, NULL, 'md-home', '_self', 1, 0, 1, NULL, '2019-03-25 20:44:45', '2019-03-25 20:45:32');
INSERT INTO `sys_menus` VALUES (2, '首页', 'home', 'views/sys/home/home', 1, NULL, '/home', 0, NULL, 'md-home', '_self', 1, 0, 1, 1, '2019-03-25 20:46:08', '2020-08-31 13:55:19');
INSERT INTO `sys_menus` VALUES (3, '系统管理', 'sys-manage', NULL, 0, '系统管理', '/sys-manage', 0, NULL, 'md-briefcase', '_self', 1, 14, 1, 1, '2019-03-25 20:46:08', '2020-11-30 18:58:15');
INSERT INTO `sys_menus` VALUES (4, '用户管理', 'users', 'views/user/users', 3, '用户管理', 'users', 0, NULL, NULL, '_self', 1, 1, 1, 1, '2020-01-18 16:54:11', '2020-01-18 16:55:27');
INSERT INTO `sys_menus` VALUES (5, '角色权限管理', 'role-manage', 'views/sys/role-manage/roleManage', 3, '角色权限管理', 'role-manage', 0, NULL, NULL, '_self', 1, 2, 1, 1, '2020-01-18 16:55:08', '2020-01-18 16:55:08');
INSERT INTO `sys_menus` VALUES (6, '部门管理', 'department-manage', 'views/sys/department-manage/departmentManage', 3, '部门管理', 'department-manage/departmentManage', 0, NULL, NULL, '_self', 1, 3, 1, 1, '2020-01-18 16:58:43', '2020-01-18 16:58:43');
INSERT INTO `sys_menus` VALUES (7, '菜单管理', 'menuManage', 'views/sys/menu-manage/menuManage', 3, '重构菜单', 'menuManage', 0, NULL, NULL, '_self', 1, 4, 1, 1, '2020-01-18 16:59:15', '2020-01-18 16:59:15');
INSERT INTO `sys_menus` VALUES (8, '事件日志', 'eventlogs', 'views/sys/monitor/monitor', 3, '日志显示了程序中的潜在错误, 比如异常和调试信息。', 'eventlogs', 1, 'http://localhost:9804/logs', NULL, '_self', 1, 5, 1, 1, '2020-01-19 18:16:19', '2020-11-30 18:58:45');
INSERT INTO `sys_menus` VALUES (9, '操作日志', 'operationlogs', 'views/sys/operationlogs', 3, '记录系统功能操作日志', 'operationlogs', 0, NULL, NULL, '_self', 1, 6, 1, 1, '2020-01-11 18:05:42', '2020-01-12 14:32:19');
INSERT INTO `sys_menus` VALUES (10, '数据字典管理', 'dict', 'views/sys/dict-manage/dictManage', 3, '数据字典管理', 'dict-manage/dictManage', 0, NULL, NULL, '_self', 1, 8, 1, 1, '2020-01-11 18:06:20', '2020-11-20 15:39:17');
INSERT INTO `sys_menus` VALUES (11, '个人中心', 'profile', 'views/sys/profile/profile', 3, '个人中心', '/sys/profile', 0, NULL, NULL, '_self', 1, 9, 1, 1, '2020-01-11 18:07:34', '2020-11-20 15:39:14');
INSERT INTO `sys_menus` VALUES (14, '业务管理', 'business', NULL, 0, NULL, '/business', 0, NULL, 'ios-call', '_self', 0, 2, 1, 1, '2020-10-30 15:39:10', '2020-11-30 19:46:15');
INSERT INTO `sys_menus` VALUES (15, '装机申请', 'installed', 'views/business/installed/installed', 14, '', 'installed', 0, '', '', '_self', 1, 0, 1, NULL, '2020-10-30 15:37:37', '2020-10-30 15:37:39');
INSERT INTO `sys_menus` VALUES (16, '拆机申请', 'teardown', 'views/business/teardown/teardown', 14, NULL, 'teardown', 0, NULL, NULL, '_self', 0, 0, 1, 1, '2020-10-30 15:37:51', '2020-11-20 15:38:37');
INSERT INTO `sys_menus` VALUES (17, '新增装机', 'installed-form-add', 'views/business/installed-form/installed-form-add', 28, '', 'installed-form-add', 0, '', '', '_self', 1, 0, 1, NULL, '2020-10-30 15:38:08', '2020-10-30 15:38:10');
INSERT INTO `sys_menus` VALUES (18, '客户管理', 'custom', NULL, 0, NULL, '/custom', 0, NULL, 'md-person', '_self', 1, 1, 1, 1, '2020-11-01 17:07:54', '2020-11-30 19:31:30');
INSERT INTO `sys_menus` VALUES (19, '客户查询', 'cusManage', 'views/custom/custom', 18, NULL, 'cusManage', 0, NULL, NULL, '_self', 1, 1, 1, 1, '2020-11-01 17:08:58', '2020-11-30 19:31:04');
INSERT INTO `sys_menus` VALUES (20, '装机详情', 'installed-form', 'views/business/installed-form/installed-form', 28, '', 'installed-form', 0, '', '', '_self', 1, 0, 1, NULL, '2020-10-30 15:38:08', '2020-10-30 15:38:10');
INSERT INTO `sys_menus` VALUES (21, '查看客户', 'previewCustom', 'views/custom/previewCustom', 18, NULL, 'previewCustom', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-03 11:37:23', '2020-11-03 11:37:23');
INSERT INTO `sys_menus` VALUES (22, '客户详情', 'editCustom', 'views/custom/editCustom', 18, NULL, 'editCustom', 0, NULL, NULL, '_self', 1, 0, 1, 1, '2020-11-03 14:26:25', '2020-11-20 15:38:29');
INSERT INTO `sys_menus` VALUES (23, '新增客户', 'addCustom', 'views/custom/addCustom', 18, NULL, 'addCustom', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-03 14:26:25', '2020-11-03 14:26:25');
INSERT INTO `sys_menus` VALUES (24, '编辑装机', 'installed-form-edit', 'views/business/installed-form/installed-form-edit', 28, '', 'installed-form-edit', 0, '', '', '_self', 1, 0, 1, NULL, '2020-10-30 15:38:08', '2020-10-30 15:38:10');
INSERT INTO `sys_menus` VALUES (25, '资源管理', 'resources', NULL, 0, NULL, '/resources', 0, NULL, 'ios-cube', '_self', 1, 10, 1, 1, '2020-11-27 10:56:47', '2020-11-30 18:57:34');
INSERT INTO `sys_menus` VALUES (26, '站点管理', 'station', 'views/resource/station/station', 25, NULL, 'station', 0, NULL, NULL, '_self', 1, 0, 1, 1, '2020-11-27 10:57:55', '2020-11-27 15:28:45');
INSERT INTO `sys_menus` VALUES (27, '站点资源管理', 'stationResource', 'views/empty/empty', 25, NULL, 'stationResource', 0, NULL, NULL, '_self', 1, 1, 1, NULL, '2020-11-27 15:21:53', '2020-11-27 15:21:53');
INSERT INTO `sys_menus` VALUES (28, '装类受理', 'installShouli', '', 0, NULL, '/installShouli', 0, NULL, 'ios-construct', '_self', 1, 3, 1, 1, '2020-11-30 18:31:27', '2020-11-30 19:23:25');
INSERT INTO `sys_menus` VALUES (29, '装机', 'install', 'views/business/installed/installed', 28, NULL, 'install', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:32:31', '2020-11-30 18:32:31');
INSERT INTO `sys_menus` VALUES (30, '装副机', 'installFuji', 'views/empty/empty', 28, NULL, 'installFuji', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:33:00', '2020-11-30 18:33:00');
INSERT INTO `sys_menus` VALUES (31, '装分机', 'installFenji', 'views/empty/empty', 28, NULL, 'installFenji', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:33:40', '2020-11-30 18:33:40');
INSERT INTO `sys_menus` VALUES (32, '装传真', 'installChuanzhen', 'views/empty/empty', 28, NULL, 'installChuanzhen', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:33:58', '2020-11-30 18:33:58');
INSERT INTO `sys_menus` VALUES (33, '移类受理', 'move', NULL, 0, NULL, '/move', 0, NULL, 'md-move', '_self', 1, 4, 1, 1, '2020-11-30 18:34:19', '2020-11-30 19:23:44');
INSERT INTO `sys_menus` VALUES (34, '移机', 'yiji', 'views/empty/empty', 33, NULL, 'yiji', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:34:56', '2020-11-30 18:34:56');
INSERT INTO `sys_menus` VALUES (35, '改类受理', 'edit', NULL, 0, NULL, '/edit', 0, NULL, 'ios-hammer', '_self', 1, 5, 1, 1, '2020-11-30 18:35:12', '2020-11-30 19:25:22');
INSERT INTO `sys_menus` VALUES (36, '过户', 'guohu', 'views/empty/empty', 35, NULL, 'guohu', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:35:30', '2020-11-30 18:35:30');
INSERT INTO `sys_menus` VALUES (37, '换号', 'huanhao', 'views/empty/empty', 35, NULL, 'huanhao', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:35:56', '2020-11-30 18:35:56');
INSERT INTO `sys_menus` VALUES (38, '停机保号', 'tingjibaohao', 'views/empty/empty', 35, NULL, 'tingjibaohao', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:36:17', '2020-11-30 18:36:17');
INSERT INTO `sys_menus` VALUES (39, '停机保号复话', 'tjbhfh', 'views/empty/empty', 35, NULL, 'tjbhfh', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:36:38', '2020-11-30 18:36:38');
INSERT INTO `sys_menus` VALUES (40, '更改程控业务', 'genggaichengkongyewu', 'views/empty/empty', 35, NULL, 'genggaichengkongyewu', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:37:03', '2020-11-30 18:37:03');
INSERT INTO `sys_menus` VALUES (41, '更改拨号权限', 'genggaibohaaoquanxian', 'views/empty/empty', 35, NULL, 'genggaibohaaoquanxian', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:37:37', '2020-11-30 18:37:37');
INSERT INTO `sys_menus` VALUES (42, '换话机', 'huanhuaji', 'views/empty/empty', 35, NULL, 'huanhuaji', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:37:53', '2020-11-30 18:37:53');
INSERT INTO `sys_menus` VALUES (43, '信息变更', 'changeInfo', 'views/empty/empty', 35, NULL, 'changeInfo', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:38:13', '2020-11-30 18:38:13');
INSERT INTO `sys_menus` VALUES (44, '更名', 'changeName', 'views/empty/empty', 35, NULL, 'changeName', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:38:27', '2020-11-30 18:38:27');
INSERT INTO `sys_menus` VALUES (45, '拆类受理', 'chai', NULL, 0, NULL, '/chai', 0, NULL, 'md-reverse-camera', '_self', 1, 6, 1, 1, '2020-11-30 18:38:49', '2020-11-30 19:25:51');
INSERT INTO `sys_menus` VALUES (46, '拆机', 'chaiji', 'views/empty/empty', 45, NULL, 'chaiji', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:39:16', '2020-11-30 18:39:16');
INSERT INTO `sys_menus` VALUES (47, '拆副机', 'chaiFuji', 'views/empty/empty', 45, NULL, 'chaiFuji', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:39:36', '2020-11-30 18:39:36');
INSERT INTO `sys_menus` VALUES (48, '拆分机', 'chaiFenji', 'views/empty/empty', 45, NULL, 'chaiFenji', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:39:51', '2020-11-30 18:39:51');
INSERT INTO `sys_menus` VALUES (49, '拆传真', 'chaiChuanzhen', 'views/empty/empty', 45, NULL, 'chaiChuanzhen', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:40:12', '2020-11-30 18:40:12');
INSERT INTO `sys_menus` VALUES (50, '工单修改', 'gongdanEdit', NULL, 0, NULL, '/gongdanEdit', 0, NULL, 'ios-grid', '_self', 1, 7, 1, 1, '2020-11-30 18:41:01', '2020-11-30 19:26:04');
INSERT INTO `sys_menus` VALUES (51, '工单修改', 'gongdanUpdate', 'views/empty/empty', 50, NULL, 'gongdanUpdate', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:41:29', '2020-11-30 18:41:29');
INSERT INTO `sys_menus` VALUES (52, '计费管理', 'expensesManage', NULL, 0, NULL, '/expensesManage', 0, NULL, 'md-card', '_self', 1, 8, 1, 1, '2020-11-30 18:42:30', '2020-11-30 19:26:24');
INSERT INTO `sys_menus` VALUES (53, '按计费帐户查询', 'jifeiAccount', 'views/empty/empty', 52, NULL, 'jifeiAccount', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:42:51', '2020-11-30 18:42:51');
INSERT INTO `sys_menus` VALUES (54, '按号码查询话单', 'numSearch', 'views/empty/empty', 52, NULL, 'numSearch', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:43:20', '2020-11-30 18:43:20');
INSERT INTO `sys_menus` VALUES (55, '资费设置', 'expensesSet', NULL, 0, NULL, '/expensesSet', 0, NULL, 'ios-aperture', '_self', 1, 9, 1, 1, '2020-11-30 18:43:45', '2020-11-30 19:26:47');
INSERT INTO `sys_menus` VALUES (56, '资费标准', 'tariffStandard', 'views/expenses/tariffStandard', 55, NULL, 'tariffStandard', 0, NULL, NULL, '_self', 1, 1, 1, 1, '2020-11-30 18:44:32', '2020-12-09 16:35:49');
INSERT INTO `sys_menus` VALUES (57, '计费帐户管理', 'billingAccount', 'views/expenses/billingAccount', 55, NULL, 'billingAccount', 0, NULL, NULL, '_self', 1, 0, 1, 1, '2020-11-30 18:45:32', '2020-12-10 18:42:10');
INSERT INTO `sys_menus` VALUES (58, '外线资源管理', 'outlineManage', 'views/empty/empty', 25, NULL, 'outlineManage', 0, NULL, NULL, '_self', 1, 2, 1, 1, '2020-11-30 18:46:14', '2020-12-01 09:44:56');
INSERT INTO `sys_menus` VALUES (59, '坏线管理', 'badLine', 'views/empty/empty', 25, NULL, 'badLine', 0, NULL, NULL, '_self', 1, 3, 1, 1, '2020-11-30 18:46:35', '2020-12-01 09:45:01');
INSERT INTO `sys_menus` VALUES (60, '数据关联', 'dataAssociation', NULL, 0, NULL, '/dataAssociation', 0, NULL, 'md-link', '_self', 1, 11, 1, 1, '2020-11-30 18:47:10', '2020-11-30 19:27:05');
INSERT INTO `sys_menus` VALUES (61, '横列端子', 'row', 'views/empty/empty', 60, NULL, 'row', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:47:32', '2020-11-30 18:47:32');
INSERT INTO `sys_menus` VALUES (62, '直列端子', 'column', 'views/empty/empty', 60, NULL, 'column', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:48:43', '2020-11-30 18:48:43');
INSERT INTO `sys_menus` VALUES (63, '统计分析', 'analyze', 'views/empty/empty', 0, NULL, '/analyze', 0, NULL, 'md-analytics', '_self', 1, 12, 1, 1, '2020-11-30 18:49:20', '2020-11-30 19:27:19');
INSERT INTO `sys_menus` VALUES (64, '用户统计', 'userAnalyze', 'views/empty/empty', 63, NULL, 'userAnalyze', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:49:58', '2020-11-30 18:49:58');
INSERT INTO `sys_menus` VALUES (65, '工单统计', 'numAnalyze', 'views/empty/empty', 63, NULL, 'numAnalyze', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:50:25', '2020-11-30 18:50:25');
INSERT INTO `sys_menus` VALUES (66, '资费统计', 'expensesAnalyze', 'views/empty/empty', 63, NULL, 'expensesAnalyze', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:50:58', '2020-11-30 18:50:58');
INSERT INTO `sys_menus` VALUES (67, '消息通知', 'message', NULL, 0, NULL, '/message', 0, NULL, 'md-alert', '_self', 1, 13, 1, 1, '2020-11-30 18:51:32', '2020-11-30 19:27:40');
INSERT INTO `sys_menus` VALUES (68, '工单消息', 'gongdanMessage', 'views/empty/empty', 67, NULL, 'gongdanMessage', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:52:08', '2020-11-30 18:52:08');
INSERT INTO `sys_menus` VALUES (69, '系统通知', 'systemMessage', 'views/empty/empty', 67, NULL, 'systemMessage', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:52:33', '2020-11-30 18:52:33');
INSERT INTO `sys_menus` VALUES (70, '综合查询', 'zongheSearch', NULL, 0, NULL, '/zongheSearch', 0, NULL, 'md-search', '_self', 1, 2, 1, 1, '2020-11-30 18:54:49', '2020-11-30 19:22:08');
INSERT INTO `sys_menus` VALUES (71, '按用户信息查询', 'serachByUser', 'views/custom_copy/custom', 70, NULL, 'serachByUser', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 18:55:44', '2020-11-30 18:55:44');
INSERT INTO `sys_menus` VALUES (72, '按线路信息查询', 'searchByLine', 'views/custom_copy/customLine', 70, NULL, 'searchByLine', 0, NULL, NULL, '_self', 1, 1, 1, NULL, '2020-11-30 18:56:07', '2020-11-30 18:56:07');
INSERT INTO `sys_menus` VALUES (73, '空白站位', 'empty1', 'views/empty/empty', 33, NULL, 'empty1', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 19:28:38', '2020-11-30 19:28:38');
INSERT INTO `sys_menus` VALUES (74, '空白站位2', 'empty2', 'views/empty/empty', 50, NULL, 'empty2', 0, NULL, NULL, '_self', 1, 0, 1, NULL, '2020-11-30 19:29:05', '2020-11-30 19:29:05');
INSERT INTO `sys_menus` VALUES (75, '添加计费账户', 'addBillingAccount', 'views/expenses/addBillingAccount', 55, NULL, 'addBillingAccount', 0, NULL, NULL, '_self', 1, 4, 1, 1, '2020-12-11 15:46:43', '2020-12-11 15:47:18');

-- ----------------------------
-- Table structure for sys_menus_new
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus_new`;
CREATE TABLE `sys_menus_new`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '英文名称',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '前端组件',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `link_type` int(11) NOT NULL DEFAULT 0 COMMENT '链接类型',
  `third_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '第三方链接',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'icon',
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self' COMMENT '链接跳转类型',
  `enabled` int(11) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `sort` decimal(10, 1) NOT NULL COMMENT '排序值',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '修改人',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sys_menus_new_name_unique`(`name`) USING BTREE,
  INDEX `sys_menus_new__lft__rgt_parent_id_index`(`_lft`, `_rgt`, `parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menus_new
-- ----------------------------
INSERT INTO `sys_menus_new` VALUES (3, '111', 'Foo', NULL, NULL, 1, 6, NULL, '/111', 0, NULL, NULL, '_self', 1, 3.0, NULL, '管理员', '2020-10-23 11:40:50', '2020-10-23 19:41:53');
INSERT INTO `sys_menus_new` VALUES (4, '222', 'Bar', NULL, NULL, 2, 5, 3, '/222', 0, NULL, NULL, '_self', 1, 1.0, NULL, NULL, '2020-10-23 11:40:51', '2020-10-23 11:40:51');
INSERT INTO `sys_menus_new` VALUES (5, '222', 'Baz', NULL, NULL, 3, 4, 4, '/222', 0, NULL, NULL, '_self', 1, 2.0, NULL, NULL, '2020-10-23 11:40:51', '2020-10-23 11:40:51');
INSERT INTO `sys_menus_new` VALUES (6, '444', '444', '444', NULL, 7, 10, NULL, '444', 0, NULL, 'md-add-circle', '_self', 1, 1.0, '管理员', NULL, '2020-10-23 17:51:40', '2020-10-23 17:51:40');
INSERT INTO `sys_menus_new` VALUES (8, '444', '555', '444', NULL, 11, 12, NULL, '444', 0, NULL, 'md-add-circle', '_self', 1, 4.0, '管理员', NULL, '2020-10-23 17:54:03', '2020-10-23 17:54:03');
INSERT INTO `sys_menus_new` VALUES (9, '444', '666', '444', NULL, 13, 14, NULL, '444', 0, NULL, 'md-add-circle', '_self', 1, 5.0, '管理员', NULL, '2020-10-23 17:54:57', '2020-10-23 17:54:57');
INSERT INTO `sys_menus_new` VALUES (10, '444', '999', '444', NULL, 15, 16, NULL, '444', 0, NULL, 'ios-add', '_self', 1, 7.0, '管理员', NULL, '2020-10-23 18:34:50', '2020-10-23 18:34:50');
INSERT INTO `sys_menus_new` VALUES (11, '666', '4444', '666', NULL, 8, 9, 6, '66', 0, NULL, 'ios-add', '_self', 1, 3.0, '管理员', '管理员', '2020-10-23 19:22:19', '2020-10-23 19:35:22');

-- ----------------------------
-- Table structure for sys_notices
-- ----------------------------
DROP TABLE IF EXISTS `sys_notices`;
CREATE TABLE `sys_notices`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `send_user_id` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notices
-- ----------------------------

-- ----------------------------
-- Table structure for sys_operation_logs
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_logs`;
CREATE TABLE `sys_operation_logs`  (
  `params` json NOT NULL,
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '操作名称',
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求类型',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求路径',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip地址',
  `ip_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ip信息',
  `user_id` int(11) NOT NULL COMMENT '操作用户',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_operation_logs
-- ----------------------------
INSERT INTO `sys_operation_logs` VALUES ('null', 1, '用户登录', 'POST', 'api/login', '::1', '', 1, '2020-10-20 15:47:31', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 2, '用户登录', 'POST', 'api/login', '::1', '', 1, '2020-10-20 16:53:07', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 3, '用户登录', 'POST', 'api/login', '::1', '', 1, '2020-10-20 17:36:29', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 4, '用户登录', 'POST', 'api/login', '::1', '', 1, '2020-10-21 16:33:41', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 5, '删除用户', 'POST', 'api/user/deleteUserData', '::1', '', 1, '2020-10-21 17:05:01', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 6, '修改用户', 'POST', 'api/user/editRegistUser', '::1', '', 1, '2020-10-21 18:14:21', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 7, '修改用户', 'POST', 'api/user/editRegistUser', '::1', '', 1, '2020-10-21 18:14:34', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 8, '修改用户', 'POST', 'api/user/editRegistUser', '::1', '', 1, '2020-10-21 18:14:44', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 9, '创建角色', 'POST', 'api/role/add', '::1', '', 1, '2020-10-22 10:55:24', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 10, '设置菜单权限', 'POST', 'api/role/setrolemenus', '::1', '', 1, '2020-10-22 10:55:46', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 11, '创建用户', 'POST', 'api/user/register', '::1', '', 1, '2020-10-22 18:16:37', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 12, '用户登录', 'POST', 'api/login', '::1', '', 1, '2020-10-23 09:20:48', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 13, '用户登录', 'POST', 'api/login', '::1', '', 1, '2020-10-23 09:34:55', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 14, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 15:51:15', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 15, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 15:51:48', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 16, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 15:52:44', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 17, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 15:54:29', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 18, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 16:53:30', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 19, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 16:54:15', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 20, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 17:00:11', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 21, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 17:05:18', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 22, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 17:08:39', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 23, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 17:12:51', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 24, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 17:13:40', NULL);
INSERT INTO `sys_operation_logs` VALUES ('null', 25, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 17:16:30', NULL);
INSERT INTO `sys_operation_logs` VALUES ('{\"icon\": \"md-add-circle\", \"name\": \"666\", \"path\": \"444\", \"sort\": 0, \"title\": \"444\", \"enabled\": 1, \"component\": \"444\", \"create_by\": \"管理员\", \"link_type\": 0, \"parent_id\": 0}', 26, '创建菜单', 'POST', 'api/menuNew/addRootMenu', '::1', '', 1, '2020-10-23 17:54:58', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 27, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 17:55:06', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 28, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 18:32:20', NULL);
INSERT INTO `sys_operation_logs` VALUES ('{\"icon\": \"ios-add\", \"name\": \"999\", \"path\": \"444\", \"sort\": 0, \"title\": \"444\", \"enabled\": 1, \"component\": \"444\", \"create_by\": \"管理员\", \"link_type\": 0, \"parent_id\": 0}', 29, '创建菜单', 'POST', 'api/menuNew/addRootMenu', '::1', '', 1, '2020-10-23 18:34:50', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 30, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 18:34:50', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 31, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 19:18:13', NULL);
INSERT INTO `sys_operation_logs` VALUES ('{\"icon\": \"ios-add\", \"name\": \"6666\", \"path\": \"66\", \"sort\": 0, \"title\": \"666\", \"enabled\": 1, \"component\": \"666\", \"create_by\": \"管理员\", \"link_type\": 0, \"parent_id\": 6}', 32, '创建菜单', 'POST', 'api/menuNew/addMenu', '::1', '', 1, '2020-10-23 19:22:45', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 33, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 19:22:46', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 34, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 19:30:07', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 35, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 19:32:06', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 36, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 19:34:31', NULL);
INSERT INTO `sys_operation_logs` VALUES ('{\"id\": 11, \"_lft\": 8, \"_rgt\": 9, \"icon\": \"ios-add\", \"name\": \"4444\", \"path\": \"66\", \"sort\": 3, \"title\": \"666\", \"expand\": true, \"target\": \"_self\", \"enabled\": 1, \"nodeKey\": 4, \"children\": [], \"selected\": true, \"component\": \"666\", \"create_by\": \"管理员\", \"link_type\": 0, \"parent_id\": 6, \"third_url\": null, \"update_by\": \"管理员\", \"created_at\": \"2020-10-23 19:22:19\", \"updated_at\": \"2020-10-23 19:22:19\", \"description\": null}', 37, '修改菜单', 'POST', 'api/menuNew/update', '::1', '', 1, '2020-10-23 19:35:22', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 38, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 19:35:22', NULL);
INSERT INTO `sys_operation_logs` VALUES ('{\"id\": 3, \"_lft\": 1, \"_rgt\": 6, \"icon\": null, \"name\": \"Foo\", \"path\": \"/111\", \"sort\": 3, \"title\": \"111\", \"expand\": false, \"target\": \"_self\", \"enabled\": 1, \"nodeKey\": 0, \"children\": [{\"id\": 4, \"_lft\": 2, \"_rgt\": 5, \"icon\": null, \"name\": \"Bar\", \"path\": \"/222\", \"sort\": \"0.0\", \"title\": \"222\", \"expand\": false, \"target\": \"_self\", \"enabled\": 1, \"nodeKey\": 1, \"children\": [{\"id\": 5, \"_lft\": 3, \"_rgt\": 4, \"icon\": null, \"name\": \"Baz\", \"path\": \"/222\", \"sort\": \"0.0\", \"title\": \"222\", \"expand\": true, \"target\": \"_self\", \"enabled\": 1, \"nodeKey\": 2, \"children\": [], \"component\": null, \"create_by\": null, \"link_type\": 0, \"parent_id\": 4, \"third_url\": null, \"update_by\": null, \"created_at\": \"2020-10-23 11:40:51\", \"updated_at\": \"2020-10-23 11:40:51\", \"description\": null}], \"component\": null, \"create_by\": null, \"link_type\": 0, \"parent_id\": 3, \"third_url\": null, \"update_by\": null, \"created_at\": \"2020-10-23 11:40:51\", \"updated_at\": \"2020-10-23 11:40:51\", \"description\": null}], \"selected\": true, \"component\": null, \"create_by\": null, \"link_type\": 0, \"parent_id\": null, \"third_url\": null, \"update_by\": \"管理员\", \"created_at\": \"2020-10-23 11:40:50\", \"updated_at\": \"2020-10-23 11:40:50\", \"description\": null}', 39, '修改菜单', 'POST', 'api/menuNew/update', '::1', '', 1, '2020-10-23 19:41:53', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 40, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 19:41:53', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 41, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-23 19:42:21', NULL);
INSERT INTO `sys_operation_logs` VALUES ('[]', 42, '获取菜单列表', 'POST', 'api/menuNew/menuList', '::1', '', 1, '2020-10-27 15:19:08', NULL);

-- ----------------------------
-- Table structure for sys_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_permissions`;
CREATE TABLE `sys_permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名',
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '展示名',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1174 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permissions
-- ----------------------------
INSERT INTO `sys_permissions` VALUES (1, 'users.id:create', 'users.id:create', '2020-10-27 18:37:57', '2020-10-27 18:37:57');
INSERT INTO `sys_permissions` VALUES (2, 'test:create', 'test:create', '2020-10-28 11:24:15', '2020-10-28 11:24:15');
INSERT INTO `sys_permissions` VALUES (3, 'akbus_workflow.id:create', 'akbus_workflow.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (4, 'akbus_workflow.id:read', 'akbus_workflow.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (5, 'akbus_workflow.id:update', 'akbus_workflow.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (6, 'akbus_workflow.id:delete', 'akbus_workflow.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (7, 'akbus_workflow.workflow_name:create', 'akbus_workflow.工作流名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (8, 'akbus_workflow.workflow_name:read', 'akbus_workflow.工作流名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (9, 'akbus_workflow.workflow_name:update', 'akbus_workflow.工作流名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (10, 'akbus_workflow.workflow_name:delete', 'akbus_workflow.工作流名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (11, 'akbus_workflow.workflow_key:create', 'akbus_workflow.工作流标记:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (12, 'akbus_workflow.workflow_key:read', 'akbus_workflow.工作流标记:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (13, 'akbus_workflow.workflow_key:update', 'akbus_workflow.工作流标记:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (14, 'akbus_workflow.workflow_key:delete', 'akbus_workflow.工作流标记:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (15, 'akbus_workflow.enabled:create', 'akbus_workflow.是否启用:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (16, 'akbus_workflow.enabled:read', 'akbus_workflow.是否启用:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (17, 'akbus_workflow.enabled:update', 'akbus_workflow.是否启用:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (18, 'akbus_workflow.enabled:delete', 'akbus_workflow.是否启用:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (19, 'akbus_workflow.created_at:create', 'akbus_workflow.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (20, 'akbus_workflow.created_at:read', 'akbus_workflow.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (21, 'akbus_workflow.created_at:update', 'akbus_workflow.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (22, 'akbus_workflow.created_at:delete', 'akbus_workflow.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (23, 'akbus_workflow.updated_at:create', 'akbus_workflow.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (24, 'akbus_workflow.updated_at:read', 'akbus_workflow.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (25, 'akbus_workflow.updated_at:update', 'akbus_workflow.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (26, 'akbus_workflow.updated_at:delete', 'akbus_workflow.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (27, 'akbus_workflow_log.id:create', 'akbus_workflow_log.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (28, 'akbus_workflow_log.id:read', 'akbus_workflow_log.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (29, 'akbus_workflow_log.id:update', 'akbus_workflow_log.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (30, 'akbus_workflow_log.id:delete', 'akbus_workflow_log.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (31, 'akbus_workflow_log.apply_key:create', 'akbus_workflow_log.申请单key:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (32, 'akbus_workflow_log.apply_key:read', 'akbus_workflow_log.申请单key:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (33, 'akbus_workflow_log.apply_key:update', 'akbus_workflow_log.申请单key:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (34, 'akbus_workflow_log.apply_key:delete', 'akbus_workflow_log.申请单key:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (35, 'akbus_workflow_log.apply_id:create', 'akbus_workflow_log.申请单ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (36, 'akbus_workflow_log.apply_id:read', 'akbus_workflow_log.申请单ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (37, 'akbus_workflow_log.apply_id:update', 'akbus_workflow_log.申请单ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (38, 'akbus_workflow_log.apply_id:delete', 'akbus_workflow_log.申请单ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (39, 'akbus_workflow_log.node_id:create', 'akbus_workflow_log.当前所处工作流节点ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (40, 'akbus_workflow_log.node_id:read', 'akbus_workflow_log.当前所处工作流节点ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (41, 'akbus_workflow_log.node_id:update', 'akbus_workflow_log.当前所处工作流节点ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (42, 'akbus_workflow_log.node_id:delete', 'akbus_workflow_log.当前所处工作流节点ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (43, 'akbus_workflow_log.status:create', 'akbus_workflow_log.当前状态:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (44, 'akbus_workflow_log.status:read', 'akbus_workflow_log.当前状态:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (45, 'akbus_workflow_log.status:update', 'akbus_workflow_log.当前状态:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (46, 'akbus_workflow_log.status:delete', 'akbus_workflow_log.当前状态:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (47, 'akbus_workflow_log.result_name:create', 'akbus_workflow_log.审批结果名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (48, 'akbus_workflow_log.result_name:read', 'akbus_workflow_log.审批结果名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (49, 'akbus_workflow_log.result_name:update', 'akbus_workflow_log.审批结果名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (50, 'akbus_workflow_log.result_name:delete', 'akbus_workflow_log.审批结果名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (51, 'akbus_workflow_log.reason:create', 'akbus_workflow_log.操作理由:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (52, 'akbus_workflow_log.reason:read', 'akbus_workflow_log.操作理由:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (53, 'akbus_workflow_log.reason:update', 'akbus_workflow_log.操作理由:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (54, 'akbus_workflow_log.reason:delete', 'akbus_workflow_log.操作理由:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (55, 'akbus_workflow_log.created_at:create', 'akbus_workflow_log.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (56, 'akbus_workflow_log.created_at:read', 'akbus_workflow_log.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (57, 'akbus_workflow_log.created_at:update', 'akbus_workflow_log.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (58, 'akbus_workflow_log.created_at:delete', 'akbus_workflow_log.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (59, 'akbus_workflow_log.updated_at:create', 'akbus_workflow_log.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (60, 'akbus_workflow_log.updated_at:read', 'akbus_workflow_log.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (61, 'akbus_workflow_log.updated_at:update', 'akbus_workflow_log.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (62, 'akbus_workflow_log.updated_at:delete', 'akbus_workflow_log.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (63, 'akbus_workflow_node.id:create', 'akbus_workflow_node.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (64, 'akbus_workflow_node.id:read', 'akbus_workflow_node.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (65, 'akbus_workflow_node.id:update', 'akbus_workflow_node.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (66, 'akbus_workflow_node.id:delete', 'akbus_workflow_node.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (67, 'akbus_workflow_node.workflow_id:create', 'akbus_workflow_node.人员ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (68, 'akbus_workflow_node.workflow_id:read', 'akbus_workflow_node.人员ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (69, 'akbus_workflow_node.workflow_id:update', 'akbus_workflow_node.人员ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (70, 'akbus_workflow_node.workflow_id:delete', 'akbus_workflow_node.人员ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (71, 'akbus_workflow_node.node_name:create', 'akbus_workflow_node.节点名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (72, 'akbus_workflow_node.node_name:read', 'akbus_workflow_node.节点名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (73, 'akbus_workflow_node.node_name:update', 'akbus_workflow_node.节点名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (74, 'akbus_workflow_node.node_name:delete', 'akbus_workflow_node.节点名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (75, 'akbus_workflow_node.node_key:create', 'akbus_workflow_node.节点标记:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (76, 'akbus_workflow_node.node_key:read', 'akbus_workflow_node.节点标记:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (77, 'akbus_workflow_node.node_key:update', 'akbus_workflow_node.节点标记:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (78, 'akbus_workflow_node.node_key:delete', 'akbus_workflow_node.节点标记:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (79, 'akbus_workflow_node.role_id:create', 'akbus_workflow_node.角色ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (80, 'akbus_workflow_node.role_id:read', 'akbus_workflow_node.角色ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (81, 'akbus_workflow_node.role_id:update', 'akbus_workflow_node.角色ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (82, 'akbus_workflow_node.role_id:delete', 'akbus_workflow_node.角色ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (83, 'akbus_workflow_node.type:create', 'akbus_workflow_node.节点类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (84, 'akbus_workflow_node.type:read', 'akbus_workflow_node.节点类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (85, 'akbus_workflow_node.type:update', 'akbus_workflow_node.节点类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (86, 'akbus_workflow_node.type:delete', 'akbus_workflow_node.节点类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (87, 'akbus_workflow_node.created_at:create', 'akbus_workflow_node.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (88, 'akbus_workflow_node.created_at:read', 'akbus_workflow_node.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (89, 'akbus_workflow_node.created_at:update', 'akbus_workflow_node.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (90, 'akbus_workflow_node.created_at:delete', 'akbus_workflow_node.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (91, 'akbus_workflow_node.updated_at:create', 'akbus_workflow_node.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (92, 'akbus_workflow_node.updated_at:read', 'akbus_workflow_node.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (93, 'akbus_workflow_node.updated_at:update', 'akbus_workflow_node.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (94, 'akbus_workflow_node.updated_at:delete', 'akbus_workflow_node.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (95, 'akbus_workflow_node_program.id:create', 'akbus_workflow_node_program.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (96, 'akbus_workflow_node_program.id:read', 'akbus_workflow_node_program.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (97, 'akbus_workflow_node_program.id:update', 'akbus_workflow_node_program.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (98, 'akbus_workflow_node_program.id:delete', 'akbus_workflow_node_program.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (99, 'akbus_workflow_node_program.node_id:create', 'akbus_workflow_node_program.节点ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (100, 'akbus_workflow_node_program.node_id:read', 'akbus_workflow_node_program.节点ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (101, 'akbus_workflow_node_program.node_id:update', 'akbus_workflow_node_program.节点ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (102, 'akbus_workflow_node_program.node_id:delete', 'akbus_workflow_node_program.节点ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (103, 'akbus_workflow_node_program.name:create', 'akbus_workflow_node_program.流转名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (104, 'akbus_workflow_node_program.name:read', 'akbus_workflow_node_program.流转名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (105, 'akbus_workflow_node_program.name:update', 'akbus_workflow_node_program.流转名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (106, 'akbus_workflow_node_program.name:delete', 'akbus_workflow_node_program.流转名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (107, 'akbus_workflow_node_program.next_node_id:create', 'akbus_workflow_node_program.下个节点ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (108, 'akbus_workflow_node_program.next_node_id:read', 'akbus_workflow_node_program.下个节点ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (109, 'akbus_workflow_node_program.next_node_id:update', 'akbus_workflow_node_program.下个节点ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (110, 'akbus_workflow_node_program.next_node_id:delete', 'akbus_workflow_node_program.下个节点ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (111, 'akbus_workflow_node_program.condition:create', 'akbus_workflow_node_program.条件:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (112, 'akbus_workflow_node_program.condition:read', 'akbus_workflow_node_program.条件:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (113, 'akbus_workflow_node_program.condition:update', 'akbus_workflow_node_program.条件:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (114, 'akbus_workflow_node_program.condition:delete', 'akbus_workflow_node_program.条件:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (115, 'akbus_workflow_node_program.result_name:create', 'akbus_workflow_node_program.审批结果名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (116, 'akbus_workflow_node_program.result_name:read', 'akbus_workflow_node_program.审批结果名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (117, 'akbus_workflow_node_program.result_name:update', 'akbus_workflow_node_program.审批结果名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (118, 'akbus_workflow_node_program.result_name:delete', 'akbus_workflow_node_program.审批结果名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (119, 'akbus_workflow_node_program.result_key:create', 'akbus_workflow_node_program.审批结果标识:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (120, 'akbus_workflow_node_program.result_key:read', 'akbus_workflow_node_program.审批结果标识:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (121, 'akbus_workflow_node_program.result_key:update', 'akbus_workflow_node_program.审批结果标识:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (122, 'akbus_workflow_node_program.result_key:delete', 'akbus_workflow_node_program.审批结果标识:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (123, 'akbus_workflow_node_program.result_status:create', 'akbus_workflow_node_program.审批结果状态值:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (124, 'akbus_workflow_node_program.result_status:read', 'akbus_workflow_node_program.审批结果状态值:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (125, 'akbus_workflow_node_program.result_status:update', 'akbus_workflow_node_program.审批结果状态值:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (126, 'akbus_workflow_node_program.result_status:delete', 'akbus_workflow_node_program.审批结果状态值:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (127, 'akbus_workflow_node_program.created_at:create', 'akbus_workflow_node_program.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (128, 'akbus_workflow_node_program.created_at:read', 'akbus_workflow_node_program.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (129, 'akbus_workflow_node_program.created_at:update', 'akbus_workflow_node_program.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (130, 'akbus_workflow_node_program.created_at:delete', 'akbus_workflow_node_program.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (131, 'akbus_workflow_node_program.updated_at:create', 'akbus_workflow_node_program.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (132, 'akbus_workflow_node_program.updated_at:read', 'akbus_workflow_node_program.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (133, 'akbus_workflow_node_program.updated_at:update', 'akbus_workflow_node_program.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (134, 'akbus_workflow_node_program.updated_at:delete', 'akbus_workflow_node_program.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (135, 'akbus_workflow_process.id:create', 'akbus_workflow_process.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (136, 'akbus_workflow_process.id:read', 'akbus_workflow_process.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (137, 'akbus_workflow_process.id:update', 'akbus_workflow_process.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (138, 'akbus_workflow_process.id:delete', 'akbus_workflow_process.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (139, 'akbus_workflow_process.apply_key:create', 'akbus_workflow_process.申请单key:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (140, 'akbus_workflow_process.apply_key:read', 'akbus_workflow_process.申请单key:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (141, 'akbus_workflow_process.apply_key:update', 'akbus_workflow_process.申请单key:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (142, 'akbus_workflow_process.apply_key:delete', 'akbus_workflow_process.申请单key:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (143, 'akbus_workflow_process.apply_id:create', 'akbus_workflow_process.申请单ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (144, 'akbus_workflow_process.apply_id:read', 'akbus_workflow_process.申请单ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (145, 'akbus_workflow_process.apply_id:update', 'akbus_workflow_process.申请单ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (146, 'akbus_workflow_process.apply_id:delete', 'akbus_workflow_process.申请单ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (147, 'akbus_workflow_process.node_id:create', 'akbus_workflow_process.当前所处工作流节点ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (148, 'akbus_workflow_process.node_id:read', 'akbus_workflow_process.当前所处工作流节点ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (149, 'akbus_workflow_process.node_id:update', 'akbus_workflow_process.当前所处工作流节点ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (150, 'akbus_workflow_process.node_id:delete', 'akbus_workflow_process.当前所处工作流节点ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (151, 'akbus_workflow_process.status:create', 'akbus_workflow_process.当前状态:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (152, 'akbus_workflow_process.status:read', 'akbus_workflow_process.当前状态:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (153, 'akbus_workflow_process.status:update', 'akbus_workflow_process.当前状态:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (154, 'akbus_workflow_process.status:delete', 'akbus_workflow_process.当前状态:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (155, 'akbus_workflow_process.reason:create', 'akbus_workflow_process.操作理由:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (156, 'akbus_workflow_process.reason:read', 'akbus_workflow_process.操作理由:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (157, 'akbus_workflow_process.reason:update', 'akbus_workflow_process.操作理由:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (158, 'akbus_workflow_process.reason:delete', 'akbus_workflow_process.操作理由:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (159, 'akbus_workflow_process.created_at:create', 'akbus_workflow_process.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (160, 'akbus_workflow_process.created_at:read', 'akbus_workflow_process.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (161, 'akbus_workflow_process.created_at:update', 'akbus_workflow_process.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (162, 'akbus_workflow_process.created_at:delete', 'akbus_workflow_process.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (163, 'akbus_workflow_process.updated_at:create', 'akbus_workflow_process.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (164, 'akbus_workflow_process.updated_at:read', 'akbus_workflow_process.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (165, 'akbus_workflow_process.updated_at:update', 'akbus_workflow_process.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (166, 'akbus_workflow_process.updated_at:delete', 'akbus_workflow_process.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (167, 'migrations.id:create', 'migrations.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (168, 'migrations.id:read', 'migrations.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (169, 'migrations.id:update', 'migrations.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (170, 'migrations.id:delete', 'migrations.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (171, 'migrations.migration:create', 'migrations.migration:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (172, 'migrations.migration:read', 'migrations.migration:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (173, 'migrations.migration:update', 'migrations.migration:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (174, 'migrations.migration:delete', 'migrations.migration:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (175, 'migrations.batch:create', 'migrations.batch:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (176, 'migrations.batch:read', 'migrations.batch:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (177, 'migrations.batch:update', 'migrations.batch:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (178, 'migrations.batch:delete', 'migrations.batch:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (179, 'options.id:create', 'options.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (180, 'options.id:read', 'options.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (181, 'options.id:update', 'options.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (182, 'options.id:delete', 'options.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (183, 'options.key:create', 'options.key:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (184, 'options.key:read', 'options.key:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (185, 'options.key:update', 'options.key:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (186, 'options.key:delete', 'options.key:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (187, 'options.value:create', 'options.value:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (188, 'options.value:read', 'options.value:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (189, 'options.value:update', 'options.value:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (190, 'options.value:delete', 'options.value:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (191, 'sys_departments.id:create', 'sys_departments.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (192, 'sys_departments.id:read', 'sys_departments.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (193, 'sys_departments.id:update', 'sys_departments.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (194, 'sys_departments.id:delete', 'sys_departments.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (195, 'sys_departments.title:create', 'sys_departments.名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (196, 'sys_departments.title:read', 'sys_departments.名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (197, 'sys_departments.title:update', 'sys_departments.名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (198, 'sys_departments.title:delete', 'sys_departments.名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (199, 'sys_departments.sort:create', 'sys_departments.排序值:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (200, 'sys_departments.sort:read', 'sys_departments.排序值:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (201, 'sys_departments.sort:update', 'sys_departments.排序值:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (202, 'sys_departments.sort:delete', 'sys_departments.排序值:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (203, 'sys_departments.status:create', 'sys_departments.是否启用:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (204, 'sys_departments.status:read', 'sys_departments.是否启用:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (205, 'sys_departments.status:update', 'sys_departments.是否启用:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (206, 'sys_departments.status:delete', 'sys_departments.是否启用:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (207, 'sys_departments.parent_id:create', 'sys_departments.父级ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (208, 'sys_departments.parent_id:read', 'sys_departments.父级ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (209, 'sys_departments.parent_id:update', 'sys_departments.父级ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (210, 'sys_departments.parent_id:delete', 'sys_departments.父级ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (211, 'sys_departments.description:create', 'sys_departments.描述:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (212, 'sys_departments.description:read', 'sys_departments.描述:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (213, 'sys_departments.description:update', 'sys_departments.描述:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (214, 'sys_departments.description:delete', 'sys_departments.描述:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (215, 'sys_departments.create_by:create', 'sys_departments.创建人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (216, 'sys_departments.create_by:read', 'sys_departments.创建人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (217, 'sys_departments.create_by:update', 'sys_departments.创建人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (218, 'sys_departments.create_by:delete', 'sys_departments.创建人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (219, 'sys_departments.update_by:create', 'sys_departments.修改人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (220, 'sys_departments.update_by:read', 'sys_departments.修改人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (221, 'sys_departments.update_by:update', 'sys_departments.修改人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (222, 'sys_departments.update_by:delete', 'sys_departments.修改人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (223, 'sys_departments.created_at:create', 'sys_departments.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (224, 'sys_departments.created_at:read', 'sys_departments.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (225, 'sys_departments.created_at:update', 'sys_departments.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (226, 'sys_departments.created_at:delete', 'sys_departments.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (227, 'sys_departments.updated_at:create', 'sys_departments.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (228, 'sys_departments.updated_at:read', 'sys_departments.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (229, 'sys_departments.updated_at:update', 'sys_departments.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (230, 'sys_departments.updated_at:delete', 'sys_departments.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (231, 'sys_dict_categories.id:create', 'sys_dict_categories.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (232, 'sys_dict_categories.id:read', 'sys_dict_categories.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (233, 'sys_dict_categories.id:update', 'sys_dict_categories.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (234, 'sys_dict_categories.id:delete', 'sys_dict_categories.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (235, 'sys_dict_categories.title:create', 'sys_dict_categories.名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (236, 'sys_dict_categories.title:read', 'sys_dict_categories.名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (237, 'sys_dict_categories.title:update', 'sys_dict_categories.名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (238, 'sys_dict_categories.title:delete', 'sys_dict_categories.名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (239, 'sys_dict_categories.type:create', 'sys_dict_categories.唯一名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (240, 'sys_dict_categories.type:read', 'sys_dict_categories.唯一名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (241, 'sys_dict_categories.type:update', 'sys_dict_categories.唯一名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (242, 'sys_dict_categories.type:delete', 'sys_dict_categories.唯一名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (243, 'sys_dict_categories.description:create', 'sys_dict_categories.描述:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (244, 'sys_dict_categories.description:read', 'sys_dict_categories.描述:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (245, 'sys_dict_categories.description:update', 'sys_dict_categories.描述:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (246, 'sys_dict_categories.description:delete', 'sys_dict_categories.描述:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (247, 'sys_dict_categories.created_user_id:create', 'sys_dict_categories.创建人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (248, 'sys_dict_categories.created_user_id:read', 'sys_dict_categories.创建人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (249, 'sys_dict_categories.created_user_id:update', 'sys_dict_categories.创建人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (250, 'sys_dict_categories.created_user_id:delete', 'sys_dict_categories.创建人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (251, 'sys_dict_categories.updated_user_id:create', 'sys_dict_categories.修改人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (252, 'sys_dict_categories.updated_user_id:read', 'sys_dict_categories.修改人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (253, 'sys_dict_categories.updated_user_id:update', 'sys_dict_categories.修改人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (254, 'sys_dict_categories.updated_user_id:delete', 'sys_dict_categories.修改人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (255, 'sys_dict_categories.created_at:create', 'sys_dict_categories.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (256, 'sys_dict_categories.created_at:read', 'sys_dict_categories.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (257, 'sys_dict_categories.created_at:update', 'sys_dict_categories.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (258, 'sys_dict_categories.created_at:delete', 'sys_dict_categories.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (259, 'sys_dict_categories.updated_at:create', 'sys_dict_categories.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (260, 'sys_dict_categories.updated_at:read', 'sys_dict_categories.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (261, 'sys_dict_categories.updated_at:update', 'sys_dict_categories.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (262, 'sys_dict_categories.updated_at:delete', 'sys_dict_categories.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (263, 'sys_dict_data.id:create', 'sys_dict_data.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (264, 'sys_dict_data.id:read', 'sys_dict_data.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (265, 'sys_dict_data.id:update', 'sys_dict_data.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (266, 'sys_dict_data.id:delete', 'sys_dict_data.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (267, 'sys_dict_data.dict_id:create', 'sys_dict_data.字典ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (268, 'sys_dict_data.dict_id:read', 'sys_dict_data.字典ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (269, 'sys_dict_data.dict_id:update', 'sys_dict_data.字典ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (270, 'sys_dict_data.dict_id:delete', 'sys_dict_data.字典ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (271, 'sys_dict_data.title:create', 'sys_dict_data.名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (272, 'sys_dict_data.title:read', 'sys_dict_data.名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (273, 'sys_dict_data.title:update', 'sys_dict_data.名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (274, 'sys_dict_data.title:delete', 'sys_dict_data.名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (275, 'sys_dict_data.value:create', 'sys_dict_data.字段值:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (276, 'sys_dict_data.value:read', 'sys_dict_data.字段值:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (277, 'sys_dict_data.value:update', 'sys_dict_data.字段值:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (278, 'sys_dict_data.value:delete', 'sys_dict_data.字段值:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (279, 'sys_dict_data.description:create', 'sys_dict_data.描述:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (280, 'sys_dict_data.description:read', 'sys_dict_data.描述:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (281, 'sys_dict_data.description:update', 'sys_dict_data.描述:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (282, 'sys_dict_data.description:delete', 'sys_dict_data.描述:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (283, 'sys_dict_data.created_user_id:create', 'sys_dict_data.创建人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (284, 'sys_dict_data.created_user_id:read', 'sys_dict_data.创建人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (285, 'sys_dict_data.created_user_id:update', 'sys_dict_data.创建人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (286, 'sys_dict_data.created_user_id:delete', 'sys_dict_data.创建人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (287, 'sys_dict_data.updated_user_id:create', 'sys_dict_data.修改人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (288, 'sys_dict_data.updated_user_id:read', 'sys_dict_data.修改人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (289, 'sys_dict_data.updated_user_id:update', 'sys_dict_data.修改人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (290, 'sys_dict_data.updated_user_id:delete', 'sys_dict_data.修改人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (291, 'sys_dict_data.sort:create', 'sys_dict_data.排序值:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (292, 'sys_dict_data.sort:read', 'sys_dict_data.排序值:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (293, 'sys_dict_data.sort:update', 'sys_dict_data.排序值:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (294, 'sys_dict_data.sort:delete', 'sys_dict_data.排序值:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (295, 'sys_dict_data.status:create', 'sys_dict_data.是否启用:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (296, 'sys_dict_data.status:read', 'sys_dict_data.是否启用:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (297, 'sys_dict_data.status:update', 'sys_dict_data.是否启用:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (298, 'sys_dict_data.status:delete', 'sys_dict_data.是否启用:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (299, 'sys_dict_data.created_at:create', 'sys_dict_data.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (300, 'sys_dict_data.created_at:read', 'sys_dict_data.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (301, 'sys_dict_data.created_at:update', 'sys_dict_data.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (302, 'sys_dict_data.created_at:delete', 'sys_dict_data.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (303, 'sys_dict_data.updated_at:create', 'sys_dict_data.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (304, 'sys_dict_data.updated_at:read', 'sys_dict_data.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (305, 'sys_dict_data.updated_at:update', 'sys_dict_data.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (306, 'sys_dict_data.updated_at:delete', 'sys_dict_data.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (307, 'sys_files.id:create', 'sys_files.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (308, 'sys_files.id:read', 'sys_files.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (309, 'sys_files.id:update', 'sys_files.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (310, 'sys_files.id:delete', 'sys_files.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (311, 'sys_files.disk_name:create', 'sys_files.存储名:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (312, 'sys_files.disk_name:read', 'sys_files.存储名:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (313, 'sys_files.disk_name:update', 'sys_files.存储名:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (314, 'sys_files.disk_name:delete', 'sys_files.存储名:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (315, 'sys_files.file_name:create', 'sys_files.文件名:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (316, 'sys_files.file_name:read', 'sys_files.文件名:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (317, 'sys_files.file_name:update', 'sys_files.文件名:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (318, 'sys_files.file_name:delete', 'sys_files.文件名:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (319, 'sys_files.file_size:create', 'sys_files.文件大小:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (320, 'sys_files.file_size:read', 'sys_files.文件大小:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (321, 'sys_files.file_size:update', 'sys_files.文件大小:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (322, 'sys_files.file_size:delete', 'sys_files.文件大小:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (323, 'sys_files.content_type:create', 'sys_files.文件类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (324, 'sys_files.content_type:read', 'sys_files.文件类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (325, 'sys_files.content_type:update', 'sys_files.文件类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (326, 'sys_files.content_type:delete', 'sys_files.文件类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (327, 'sys_files.title:create', 'sys_files.自定义名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (328, 'sys_files.title:read', 'sys_files.自定义名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (329, 'sys_files.title:update', 'sys_files.自定义名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (330, 'sys_files.title:delete', 'sys_files.自定义名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (331, 'sys_files.description:create', 'sys_files.描述:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (332, 'sys_files.description:read', 'sys_files.描述:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (333, 'sys_files.description:update', 'sys_files.描述:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (334, 'sys_files.description:delete', 'sys_files.描述:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (335, 'sys_files.field:create', 'sys_files.关联字段:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (336, 'sys_files.field:read', 'sys_files.关联字段:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (337, 'sys_files.field:update', 'sys_files.关联字段:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (338, 'sys_files.field:delete', 'sys_files.关联字段:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (339, 'sys_files.model_id:create', 'sys_files.Model ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (340, 'sys_files.model_id:read', 'sys_files.Model ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (341, 'sys_files.model_id:update', 'sys_files.Model ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (342, 'sys_files.model_id:delete', 'sys_files.Model ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (343, 'sys_files.model_type:create', 'sys_files.Model:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (344, 'sys_files.model_type:read', 'sys_files.Model:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (345, 'sys_files.model_type:update', 'sys_files.Model:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (346, 'sys_files.model_type:delete', 'sys_files.Model:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (347, 'sys_files.sort_order:create', 'sys_files.排序值:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (348, 'sys_files.sort_order:read', 'sys_files.排序值:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (349, 'sys_files.sort_order:update', 'sys_files.排序值:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (350, 'sys_files.sort_order:delete', 'sys_files.排序值:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (351, 'sys_files.created_at:create', 'sys_files.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (352, 'sys_files.created_at:read', 'sys_files.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (353, 'sys_files.created_at:update', 'sys_files.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (354, 'sys_files.created_at:delete', 'sys_files.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (355, 'sys_files.updated_at:create', 'sys_files.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (356, 'sys_files.updated_at:read', 'sys_files.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (357, 'sys_files.updated_at:update', 'sys_files.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (358, 'sys_files.updated_at:delete', 'sys_files.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (359, 'sys_menus.id:create', 'sys_menus.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (360, 'sys_menus.id:read', 'sys_menus.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (361, 'sys_menus.id:update', 'sys_menus.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (362, 'sys_menus.id:delete', 'sys_menus.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (363, 'sys_menus.title:create', 'sys_menus.标题:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (364, 'sys_menus.title:read', 'sys_menus.标题:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (365, 'sys_menus.title:update', 'sys_menus.标题:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (366, 'sys_menus.title:delete', 'sys_menus.标题:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (367, 'sys_menus.name:create', 'sys_menus.英文标题:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (368, 'sys_menus.name:read', 'sys_menus.英文标题:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (369, 'sys_menus.name:update', 'sys_menus.英文标题:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (370, 'sys_menus.name:delete', 'sys_menus.英文标题:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (371, 'sys_menus.component:create', 'sys_menus.前端组件:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (372, 'sys_menus.component:read', 'sys_menus.前端组件:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (373, 'sys_menus.component:update', 'sys_menus.前端组件:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (374, 'sys_menus.component:delete', 'sys_menus.前端组件:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (375, 'sys_menus.parent_id:create', 'sys_menus.父级ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (376, 'sys_menus.parent_id:read', 'sys_menus.父级ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (377, 'sys_menus.parent_id:update', 'sys_menus.父级ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (378, 'sys_menus.parent_id:delete', 'sys_menus.父级ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (379, 'sys_menus.description:create', 'sys_menus.描述:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (380, 'sys_menus.description:read', 'sys_menus.描述:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (381, 'sys_menus.description:update', 'sys_menus.描述:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (382, 'sys_menus.description:delete', 'sys_menus.描述:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (383, 'sys_menus.path:create', 'sys_menus.地址:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (384, 'sys_menus.path:read', 'sys_menus.地址:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (385, 'sys_menus.path:update', 'sys_menus.地址:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (386, 'sys_menus.path:delete', 'sys_menus.地址:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (387, 'sys_menus.link_type:create', 'sys_menus.链接类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (388, 'sys_menus.link_type:read', 'sys_menus.链接类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (389, 'sys_menus.link_type:update', 'sys_menus.链接类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (390, 'sys_menus.link_type:delete', 'sys_menus.链接类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (391, 'sys_menus.url:create', 'sys_menus.第三方链接:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (392, 'sys_menus.url:read', 'sys_menus.第三方链接:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (393, 'sys_menus.url:update', 'sys_menus.第三方链接:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (394, 'sys_menus.url:delete', 'sys_menus.第三方链接:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (395, 'sys_menus.icon:create', 'sys_menus.icon:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (396, 'sys_menus.icon:read', 'sys_menus.icon:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (397, 'sys_menus.icon:update', 'sys_menus.icon:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (398, 'sys_menus.icon:delete', 'sys_menus.icon:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (399, 'sys_menus.target:create', 'sys_menus.链接跳转类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (400, 'sys_menus.target:read', 'sys_menus.链接跳转类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (401, 'sys_menus.target:update', 'sys_menus.链接跳转类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (402, 'sys_menus.target:delete', 'sys_menus.链接跳转类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (403, 'sys_menus.enabled:create', 'sys_menus.是否启用:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (404, 'sys_menus.enabled:read', 'sys_menus.是否启用:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (405, 'sys_menus.enabled:update', 'sys_menus.是否启用:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (406, 'sys_menus.enabled:delete', 'sys_menus.是否启用:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (407, 'sys_menus.sort:create', 'sys_menus.排序值:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (408, 'sys_menus.sort:read', 'sys_menus.排序值:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (409, 'sys_menus.sort:update', 'sys_menus.排序值:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (410, 'sys_menus.sort:delete', 'sys_menus.排序值:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (411, 'sys_menus.created_user_id:create', 'sys_menus.创建用户ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (412, 'sys_menus.created_user_id:read', 'sys_menus.创建用户ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (413, 'sys_menus.created_user_id:update', 'sys_menus.创建用户ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (414, 'sys_menus.created_user_id:delete', 'sys_menus.创建用户ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (415, 'sys_menus.updated_user_id:create', 'sys_menus.修改用户ID:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (416, 'sys_menus.updated_user_id:read', 'sys_menus.修改用户ID:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (417, 'sys_menus.updated_user_id:update', 'sys_menus.修改用户ID:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (418, 'sys_menus.updated_user_id:delete', 'sys_menus.修改用户ID:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (419, 'sys_menus.created_at:create', 'sys_menus.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (420, 'sys_menus.created_at:read', 'sys_menus.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (421, 'sys_menus.created_at:update', 'sys_menus.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (422, 'sys_menus.created_at:delete', 'sys_menus.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (423, 'sys_menus.updated_at:create', 'sys_menus.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (424, 'sys_menus.updated_at:read', 'sys_menus.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (425, 'sys_menus.updated_at:update', 'sys_menus.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (426, 'sys_menus.updated_at:delete', 'sys_menus.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (427, 'sys_menus_new.id:create', 'sys_menus_new.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (428, 'sys_menus_new.id:read', 'sys_menus_new.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (429, 'sys_menus_new.id:update', 'sys_menus_new.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (430, 'sys_menus_new.id:delete', 'sys_menus_new.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (431, 'sys_menus_new.title:create', 'sys_menus_new.标题:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (432, 'sys_menus_new.title:read', 'sys_menus_new.标题:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (433, 'sys_menus_new.title:update', 'sys_menus_new.标题:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (434, 'sys_menus_new.title:delete', 'sys_menus_new.标题:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (435, 'sys_menus_new.name:create', 'sys_menus_new.英文名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (436, 'sys_menus_new.name:read', 'sys_menus_new.英文名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (437, 'sys_menus_new.name:update', 'sys_menus_new.英文名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (438, 'sys_menus_new.name:delete', 'sys_menus_new.英文名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (439, 'sys_menus_new.component:create', 'sys_menus_new.前端组件:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (440, 'sys_menus_new.component:read', 'sys_menus_new.前端组件:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (441, 'sys_menus_new.component:update', 'sys_menus_new.前端组件:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (442, 'sys_menus_new.component:delete', 'sys_menus_new.前端组件:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (443, 'sys_menus_new.description:create', 'sys_menus_new.描述:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (444, 'sys_menus_new.description:read', 'sys_menus_new.描述:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (445, 'sys_menus_new.description:update', 'sys_menus_new.描述:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (446, 'sys_menus_new.description:delete', 'sys_menus_new.描述:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (447, 'sys_menus_new._lft:create', 'sys_menus_new._lft:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (448, 'sys_menus_new._lft:read', 'sys_menus_new._lft:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (449, 'sys_menus_new._lft:update', 'sys_menus_new._lft:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (450, 'sys_menus_new._lft:delete', 'sys_menus_new._lft:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (451, 'sys_menus_new._rgt:create', 'sys_menus_new._rgt:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (452, 'sys_menus_new._rgt:read', 'sys_menus_new._rgt:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (453, 'sys_menus_new._rgt:update', 'sys_menus_new._rgt:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (454, 'sys_menus_new._rgt:delete', 'sys_menus_new._rgt:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (455, 'sys_menus_new.parent_id:create', 'sys_menus_new.parent_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (456, 'sys_menus_new.parent_id:read', 'sys_menus_new.parent_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (457, 'sys_menus_new.parent_id:update', 'sys_menus_new.parent_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (458, 'sys_menus_new.parent_id:delete', 'sys_menus_new.parent_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (459, 'sys_menus_new.path:create', 'sys_menus_new.地址:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (460, 'sys_menus_new.path:read', 'sys_menus_new.地址:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (461, 'sys_menus_new.path:update', 'sys_menus_new.地址:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (462, 'sys_menus_new.path:delete', 'sys_menus_new.地址:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (463, 'sys_menus_new.link_type:create', 'sys_menus_new.链接类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (464, 'sys_menus_new.link_type:read', 'sys_menus_new.链接类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (465, 'sys_menus_new.link_type:update', 'sys_menus_new.链接类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (466, 'sys_menus_new.link_type:delete', 'sys_menus_new.链接类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (467, 'sys_menus_new.third_url:create', 'sys_menus_new.第三方链接:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (468, 'sys_menus_new.third_url:read', 'sys_menus_new.第三方链接:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (469, 'sys_menus_new.third_url:update', 'sys_menus_new.第三方链接:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (470, 'sys_menus_new.third_url:delete', 'sys_menus_new.第三方链接:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (471, 'sys_menus_new.icon:create', 'sys_menus_new.icon:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (472, 'sys_menus_new.icon:read', 'sys_menus_new.icon:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (473, 'sys_menus_new.icon:update', 'sys_menus_new.icon:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (474, 'sys_menus_new.icon:delete', 'sys_menus_new.icon:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (475, 'sys_menus_new.target:create', 'sys_menus_new.链接跳转类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (476, 'sys_menus_new.target:read', 'sys_menus_new.链接跳转类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (477, 'sys_menus_new.target:update', 'sys_menus_new.链接跳转类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (478, 'sys_menus_new.target:delete', 'sys_menus_new.链接跳转类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (479, 'sys_menus_new.enabled:create', 'sys_menus_new.是否启用:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (480, 'sys_menus_new.enabled:read', 'sys_menus_new.是否启用:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (481, 'sys_menus_new.enabled:update', 'sys_menus_new.是否启用:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (482, 'sys_menus_new.enabled:delete', 'sys_menus_new.是否启用:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (483, 'sys_menus_new.sort:create', 'sys_menus_new.排序值:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (484, 'sys_menus_new.sort:read', 'sys_menus_new.排序值:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (485, 'sys_menus_new.sort:update', 'sys_menus_new.排序值:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (486, 'sys_menus_new.sort:delete', 'sys_menus_new.排序值:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (487, 'sys_menus_new.create_by:create', 'sys_menus_new.创建人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (488, 'sys_menus_new.create_by:read', 'sys_menus_new.创建人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (489, 'sys_menus_new.create_by:update', 'sys_menus_new.创建人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (490, 'sys_menus_new.create_by:delete', 'sys_menus_new.创建人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (491, 'sys_menus_new.update_by:create', 'sys_menus_new.修改人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (492, 'sys_menus_new.update_by:read', 'sys_menus_new.修改人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (493, 'sys_menus_new.update_by:update', 'sys_menus_new.修改人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (494, 'sys_menus_new.update_by:delete', 'sys_menus_new.修改人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (495, 'sys_menus_new.created_at:create', 'sys_menus_new.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (496, 'sys_menus_new.created_at:read', 'sys_menus_new.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (497, 'sys_menus_new.created_at:update', 'sys_menus_new.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (498, 'sys_menus_new.created_at:delete', 'sys_menus_new.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (499, 'sys_menus_new.updated_at:create', 'sys_menus_new.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (500, 'sys_menus_new.updated_at:read', 'sys_menus_new.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (501, 'sys_menus_new.updated_at:update', 'sys_menus_new.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (502, 'sys_menus_new.updated_at:delete', 'sys_menus_new.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (503, 'sys_notices.id:create', 'sys_notices.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (504, 'sys_notices.id:read', 'sys_notices.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (505, 'sys_notices.id:update', 'sys_notices.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (506, 'sys_notices.id:delete', 'sys_notices.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (507, 'sys_notices.title:create', 'sys_notices.title:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (508, 'sys_notices.title:read', 'sys_notices.title:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (509, 'sys_notices.title:update', 'sys_notices.title:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (510, 'sys_notices.title:delete', 'sys_notices.title:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (511, 'sys_notices.description:create', 'sys_notices.description:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (512, 'sys_notices.description:read', 'sys_notices.description:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (513, 'sys_notices.description:update', 'sys_notices.description:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (514, 'sys_notices.description:delete', 'sys_notices.description:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (515, 'sys_notices.user_id:create', 'sys_notices.user_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (516, 'sys_notices.user_id:read', 'sys_notices.user_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (517, 'sys_notices.user_id:update', 'sys_notices.user_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (518, 'sys_notices.user_id:delete', 'sys_notices.user_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (519, 'sys_notices.type:create', 'sys_notices.type:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (520, 'sys_notices.type:read', 'sys_notices.type:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (521, 'sys_notices.type:update', 'sys_notices.type:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (522, 'sys_notices.type:delete', 'sys_notices.type:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (523, 'sys_notices.send_user_id:create', 'sys_notices.send_user_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (524, 'sys_notices.send_user_id:read', 'sys_notices.send_user_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (525, 'sys_notices.send_user_id:update', 'sys_notices.send_user_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (526, 'sys_notices.send_user_id:delete', 'sys_notices.send_user_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (527, 'sys_notices.created_at:create', 'sys_notices.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (528, 'sys_notices.created_at:read', 'sys_notices.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (529, 'sys_notices.created_at:update', 'sys_notices.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (530, 'sys_notices.created_at:delete', 'sys_notices.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (531, 'sys_notices.updated_at:create', 'sys_notices.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (532, 'sys_notices.updated_at:read', 'sys_notices.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (533, 'sys_notices.updated_at:update', 'sys_notices.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (534, 'sys_notices.updated_at:delete', 'sys_notices.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (535, 'sys_operation_logs.id:create', 'sys_operation_logs.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (536, 'sys_operation_logs.id:read', 'sys_operation_logs.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (537, 'sys_operation_logs.id:update', 'sys_operation_logs.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (538, 'sys_operation_logs.id:delete', 'sys_operation_logs.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (539, 'sys_operation_logs.params:create', 'sys_operation_logs.params:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (540, 'sys_operation_logs.params:read', 'sys_operation_logs.params:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (541, 'sys_operation_logs.params:update', 'sys_operation_logs.params:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (542, 'sys_operation_logs.params:delete', 'sys_operation_logs.params:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (543, 'sys_operation_logs.title:create', 'sys_operation_logs.操作名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (544, 'sys_operation_logs.title:read', 'sys_operation_logs.操作名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (545, 'sys_operation_logs.title:update', 'sys_operation_logs.操作名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (546, 'sys_operation_logs.title:delete', 'sys_operation_logs.操作名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (547, 'sys_operation_logs.method:create', 'sys_operation_logs.请求类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (548, 'sys_operation_logs.method:read', 'sys_operation_logs.请求类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (549, 'sys_operation_logs.method:update', 'sys_operation_logs.请求类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (550, 'sys_operation_logs.method:delete', 'sys_operation_logs.请求类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (551, 'sys_operation_logs.path:create', 'sys_operation_logs.请求路径:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (552, 'sys_operation_logs.path:read', 'sys_operation_logs.请求路径:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (553, 'sys_operation_logs.path:update', 'sys_operation_logs.请求路径:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (554, 'sys_operation_logs.path:delete', 'sys_operation_logs.请求路径:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (555, 'sys_operation_logs.ip:create', 'sys_operation_logs.ip地址:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (556, 'sys_operation_logs.ip:read', 'sys_operation_logs.ip地址:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (557, 'sys_operation_logs.ip:update', 'sys_operation_logs.ip地址:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (558, 'sys_operation_logs.ip:delete', 'sys_operation_logs.ip地址:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (559, 'sys_operation_logs.ip_place:create', 'sys_operation_logs.ip信息:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (560, 'sys_operation_logs.ip_place:read', 'sys_operation_logs.ip信息:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (561, 'sys_operation_logs.ip_place:update', 'sys_operation_logs.ip信息:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (562, 'sys_operation_logs.ip_place:delete', 'sys_operation_logs.ip信息:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (563, 'sys_operation_logs.user_id:create', 'sys_operation_logs.操作用户:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (564, 'sys_operation_logs.user_id:read', 'sys_operation_logs.操作用户:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (565, 'sys_operation_logs.user_id:update', 'sys_operation_logs.操作用户:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (566, 'sys_operation_logs.user_id:delete', 'sys_operation_logs.操作用户:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (567, 'sys_operation_logs.created_at:create', 'sys_operation_logs.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (568, 'sys_operation_logs.created_at:read', 'sys_operation_logs.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (569, 'sys_operation_logs.created_at:update', 'sys_operation_logs.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (570, 'sys_operation_logs.created_at:delete', 'sys_operation_logs.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (571, 'sys_operation_logs.updated_at:create', 'sys_operation_logs.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (572, 'sys_operation_logs.updated_at:read', 'sys_operation_logs.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (573, 'sys_operation_logs.updated_at:update', 'sys_operation_logs.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (574, 'sys_operation_logs.updated_at:delete', 'sys_operation_logs.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (575, 'sys_permissions.id:create', 'sys_permissions.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (576, 'sys_permissions.id:read', 'sys_permissions.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (577, 'sys_permissions.id:update', 'sys_permissions.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (578, 'sys_permissions.id:delete', 'sys_permissions.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (579, 'sys_permissions.name:create', 'sys_permissions.角色名:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (580, 'sys_permissions.name:read', 'sys_permissions.角色名:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (581, 'sys_permissions.name:update', 'sys_permissions.角色名:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (582, 'sys_permissions.name:delete', 'sys_permissions.角色名:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (583, 'sys_permissions.display_name:create', 'sys_permissions.展示名:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (584, 'sys_permissions.display_name:read', 'sys_permissions.展示名:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (585, 'sys_permissions.display_name:update', 'sys_permissions.展示名:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (586, 'sys_permissions.display_name:delete', 'sys_permissions.展示名:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (587, 'sys_permissions.created_at:create', 'sys_permissions.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (588, 'sys_permissions.created_at:read', 'sys_permissions.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (589, 'sys_permissions.created_at:update', 'sys_permissions.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (590, 'sys_permissions.created_at:delete', 'sys_permissions.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (591, 'sys_permissions.updated_at:create', 'sys_permissions.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (592, 'sys_permissions.updated_at:read', 'sys_permissions.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (593, 'sys_permissions.updated_at:update', 'sys_permissions.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (594, 'sys_permissions.updated_at:delete', 'sys_permissions.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (595, 'sys_roles.id:create', 'sys_roles.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (596, 'sys_roles.id:read', 'sys_roles.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (597, 'sys_roles.id:update', 'sys_roles.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (598, 'sys_roles.id:delete', 'sys_roles.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (599, 'sys_roles.name:create', 'sys_roles.角色名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (600, 'sys_roles.name:read', 'sys_roles.角色名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (601, 'sys_roles.name:update', 'sys_roles.角色名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (602, 'sys_roles.name:delete', 'sys_roles.角色名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (603, 'sys_roles.description:create', 'sys_roles.描述:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (604, 'sys_roles.description:read', 'sys_roles.描述:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (605, 'sys_roles.description:update', 'sys_roles.描述:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (606, 'sys_roles.description:delete', 'sys_roles.描述:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (607, 'sys_roles.is_default:create', 'sys_roles.是否设置为注册用户默认角色:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (608, 'sys_roles.is_default:read', 'sys_roles.是否设置为注册用户默认角色:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (609, 'sys_roles.is_default:update', 'sys_roles.是否设置为注册用户默认角色:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (610, 'sys_roles.is_default:delete', 'sys_roles.是否设置为注册用户默认角色:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (611, 'sys_roles.data_type:create', 'sys_roles.数据权限类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (612, 'sys_roles.data_type:read', 'sys_roles.数据权限类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (613, 'sys_roles.data_type:update', 'sys_roles.数据权限类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (614, 'sys_roles.data_type:delete', 'sys_roles.数据权限类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (615, 'sys_roles.created_at:create', 'sys_roles.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (616, 'sys_roles.created_at:read', 'sys_roles.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (617, 'sys_roles.created_at:update', 'sys_roles.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (618, 'sys_roles.created_at:delete', 'sys_roles.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (619, 'sys_roles.updated_at:create', 'sys_roles.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (620, 'sys_roles.updated_at:read', 'sys_roles.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (621, 'sys_roles.updated_at:update', 'sys_roles.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (622, 'sys_roles.updated_at:delete', 'sys_roles.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (623, 'sys_roles_departments.id:create', 'sys_roles_departments.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (624, 'sys_roles_departments.id:read', 'sys_roles_departments.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (625, 'sys_roles_departments.id:update', 'sys_roles_departments.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (626, 'sys_roles_departments.id:delete', 'sys_roles_departments.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (627, 'sys_roles_departments.department_id:create', 'sys_roles_departments.department_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (628, 'sys_roles_departments.department_id:read', 'sys_roles_departments.department_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (629, 'sys_roles_departments.department_id:update', 'sys_roles_departments.department_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (630, 'sys_roles_departments.department_id:delete', 'sys_roles_departments.department_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (631, 'sys_roles_departments.role_id:create', 'sys_roles_departments.role_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (632, 'sys_roles_departments.role_id:read', 'sys_roles_departments.role_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (633, 'sys_roles_departments.role_id:update', 'sys_roles_departments.role_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (634, 'sys_roles_departments.role_id:delete', 'sys_roles_departments.role_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (635, 'sys_roles_menus.id:create', 'sys_roles_menus.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (636, 'sys_roles_menus.id:read', 'sys_roles_menus.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (637, 'sys_roles_menus.id:update', 'sys_roles_menus.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (638, 'sys_roles_menus.id:delete', 'sys_roles_menus.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (639, 'sys_roles_menus.role_id:create', 'sys_roles_menus.role_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (640, 'sys_roles_menus.role_id:read', 'sys_roles_menus.role_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (641, 'sys_roles_menus.role_id:update', 'sys_roles_menus.role_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (642, 'sys_roles_menus.role_id:delete', 'sys_roles_menus.role_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (643, 'sys_roles_menus.menu_id:create', 'sys_roles_menus.menu_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (644, 'sys_roles_menus.menu_id:read', 'sys_roles_menus.menu_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (645, 'sys_roles_menus.menu_id:update', 'sys_roles_menus.menu_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (646, 'sys_roles_menus.menu_id:delete', 'sys_roles_menus.menu_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (647, 'sys_roles_menus.checked:create', 'sys_roles_menus.checked:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (648, 'sys_roles_menus.checked:read', 'sys_roles_menus.checked:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (649, 'sys_roles_menus.checked:update', 'sys_roles_menus.checked:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (650, 'sys_roles_menus.checked:delete', 'sys_roles_menus.checked:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (651, 'sys_roles_permissions.id:create', 'sys_roles_permissions.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (652, 'sys_roles_permissions.id:read', 'sys_roles_permissions.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (653, 'sys_roles_permissions.id:update', 'sys_roles_permissions.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (654, 'sys_roles_permissions.id:delete', 'sys_roles_permissions.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (655, 'sys_roles_permissions.permission_id:create', 'sys_roles_permissions.permission_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (656, 'sys_roles_permissions.permission_id:read', 'sys_roles_permissions.permission_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (657, 'sys_roles_permissions.permission_id:update', 'sys_roles_permissions.permission_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (658, 'sys_roles_permissions.permission_id:delete', 'sys_roles_permissions.permission_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (659, 'sys_roles_permissions.role_id:create', 'sys_roles_permissions.role_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (660, 'sys_roles_permissions.role_id:read', 'sys_roles_permissions.role_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (661, 'sys_roles_permissions.role_id:update', 'sys_roles_permissions.role_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (662, 'sys_roles_permissions.role_id:delete', 'sys_roles_permissions.role_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (663, 'sys_users_roles.id:create', 'sys_users_roles.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (664, 'sys_users_roles.id:read', 'sys_users_roles.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (665, 'sys_users_roles.id:update', 'sys_users_roles.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (666, 'sys_users_roles.id:delete', 'sys_users_roles.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (667, 'sys_users_roles.role_id:create', 'sys_users_roles.role_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (668, 'sys_users_roles.role_id:read', 'sys_users_roles.role_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (669, 'sys_users_roles.role_id:update', 'sys_users_roles.role_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (670, 'sys_users_roles.role_id:delete', 'sys_users_roles.role_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (671, 'sys_users_roles.user_id:create', 'sys_users_roles.user_id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (672, 'sys_users_roles.user_id:read', 'sys_users_roles.user_id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (673, 'sys_users_roles.user_id:update', 'sys_users_roles.user_id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (674, 'sys_users_roles.user_id:delete', 'sys_users_roles.user_id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (675, 'users.id:read', 'users.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (676, 'users.id:update', 'users.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (677, 'users.id:delete', 'users.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (678, 'users.department_id:create', 'users.部门id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (679, 'users.department_id:read', 'users.部门id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (680, 'users.department_id:update', 'users.部门id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (681, 'users.department_id:delete', 'users.部门id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (682, 'users.username:create', 'users.用户名:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (683, 'users.username:read', 'users.用户名:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (684, 'users.username:update', 'users.用户名:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (685, 'users.username:delete', 'users.用户名:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (686, 'users.name:create', 'users.姓名:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (687, 'users.name:read', 'users.姓名:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (688, 'users.name:update', 'users.姓名:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (689, 'users.name:delete', 'users.姓名:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (690, 'users.phone:create', 'users.电话:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (691, 'users.phone:read', 'users.电话:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (692, 'users.phone:update', 'users.电话:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (693, 'users.phone:delete', 'users.电话:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (694, 'users.email:create', 'users.邮箱:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (695, 'users.email:read', 'users.邮箱:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (696, 'users.email:update', 'users.邮箱:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (697, 'users.email:delete', 'users.邮箱:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (698, 'users.avatar:create', 'users.头像:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (699, 'users.avatar:read', 'users.头像:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (700, 'users.avatar:update', 'users.头像:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (701, 'users.avatar:delete', 'users.头像:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (702, 'users.password:create', 'users.密码:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (703, 'users.password:read', 'users.密码:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (704, 'users.password:update', 'users.密码:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (705, 'users.password:delete', 'users.密码:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (706, 'users.desc:create', 'users.详细信息:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (707, 'users.desc:read', 'users.详细信息:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (708, 'users.desc:update', 'users.详细信息:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (709, 'users.desc:delete', 'users.详细信息:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (710, 'users.user_type:create', 'users.职务:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (711, 'users.user_type:read', 'users.职务:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (712, 'users.user_type:update', 'users.职务:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (713, 'users.user_type:delete', 'users.职务:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (714, 'users.remember_token:create', 'users.token:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (715, 'users.remember_token:read', 'users.token:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (716, 'users.remember_token:update', 'users.token:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (717, 'users.remember_token:delete', 'users.token:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (718, 'users.job_title:create', 'users.职位/职务:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (719, 'users.job_title:read', 'users.职位/职务:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (720, 'users.job_title:update', 'users.职位/职务:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (721, 'users.job_title:delete', 'users.职位/职务:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (722, 'users.security_level:create', 'users.安全级别:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (723, 'users.security_level:read', 'users.安全级别:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (724, 'users.security_level:update', 'users.安全级别:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (725, 'users.security_level:delete', 'users.安全级别:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (726, 'users.last_login:create', 'users.last_login:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (727, 'users.last_login:read', 'users.last_login:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (728, 'users.last_login:update', 'users.last_login:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (729, 'users.last_login:delete', 'users.last_login:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (730, 'users.created_at:create', 'users.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (731, 'users.created_at:read', 'users.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (732, 'users.created_at:update', 'users.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (733, 'users.created_at:delete', 'users.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (734, 'users.updated_at:create', 'users.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (735, 'users.updated_at:read', 'users.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (736, 'users.updated_at:update', 'users.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (737, 'users.updated_at:delete', 'users.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (738, 'scs_custom.id:create', 'scs_custom.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (739, 'scs_custom.id:read', 'scs_custom.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (740, 'scs_custom.id:update', 'scs_custom.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (741, 'scs_custom.id:delete', 'scs_custom.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (742, 'scs_custom.phone:create', 'scs_custom.电话号码:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (743, 'scs_custom.phone:read', 'scs_custom.电话号码:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (744, 'scs_custom.phone:update', 'scs_custom.电话号码:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (745, 'scs_custom.phone:delete', 'scs_custom.电话号码:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (746, 'scs_custom.person_name:create', 'scs_custom.责任人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (747, 'scs_custom.person_name:read', 'scs_custom.责任人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (748, 'scs_custom.person_name:update', 'scs_custom.责任人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (749, 'scs_custom.person_name:delete', 'scs_custom.责任人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (750, 'scs_custom.person_phone:create', 'scs_custom.责任人电话:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (751, 'scs_custom.person_phone:read', 'scs_custom.责任人电话:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (752, 'scs_custom.person_phone:update', 'scs_custom.责任人电话:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (753, 'scs_custom.person_phone:delete', 'scs_custom.责任人电话:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (754, 'scs_custom.name:create', 'scs_custom.用户名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (755, 'scs_custom.name:read', 'scs_custom.用户名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (756, 'scs_custom.name:update', 'scs_custom.用户名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (757, 'scs_custom.name:delete', 'scs_custom.用户名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (758, 'scs_custom.network_phone:create', 'scs_custom.普网电话:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (759, 'scs_custom.network_phone:read', 'scs_custom.普网电话:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (760, 'scs_custom.network_phone:update', 'scs_custom.普网电话:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (761, 'scs_custom.network_phone:delete', 'scs_custom.普网电话:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (762, 'scs_custom.username:create', 'scs_custom.用户简称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (763, 'scs_custom.username:read', 'scs_custom.用户简称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (764, 'scs_custom.username:update', 'scs_custom.用户简称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (765, 'scs_custom.username:delete', 'scs_custom.用户简称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (766, 'scs_custom.leader_name:create', 'scs_custom.主管领导:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (767, 'scs_custom.leader_name:read', 'scs_custom.主管领导:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (768, 'scs_custom.leader_name:update', 'scs_custom.主管领导:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (769, 'scs_custom.leader_name:delete', 'scs_custom.主管领导:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (770, 'scs_custom.leader_phone:create', 'scs_custom.主管领导电话:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (771, 'scs_custom.leader_phone:read', 'scs_custom.主管领导电话:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (772, 'scs_custom.leader_phone:update', 'scs_custom.主管领导电话:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (773, 'scs_custom.leader_phone:delete', 'scs_custom.主管领导电话:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (774, 'scs_custom.room_dnum:create', 'scs_custom.用户地址:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (775, 'scs_custom.room_dnum:read', 'scs_custom.用户地址:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (776, 'scs_custom.room_dnum:update', 'scs_custom.用户地址:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (777, 'scs_custom.room_dnum:delete', 'scs_custom.用户地址:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (778, 'scs_custom.user_unit:create', 'scs_custom.用户单位:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (779, 'scs_custom.user_unit:read', 'scs_custom.用户单位:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (780, 'scs_custom.user_unit:update', 'scs_custom.用户单位:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (781, 'scs_custom.user_unit:delete', 'scs_custom.用户单位:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (782, 'scs_custom.status:create', 'scs_custom.状态:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (783, 'scs_custom.status:read', 'scs_custom.状态:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (784, 'scs_custom.status:update', 'scs_custom.状态:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (785, 'scs_custom.status:delete', 'scs_custom.状态:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (786, 'scs_custom.user_attr:create', 'scs_custom.用户属性:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (787, 'scs_custom.user_attr:read', 'scs_custom.用户属性:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (788, 'scs_custom.user_attr:update', 'scs_custom.用户属性:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (789, 'scs_custom.user_attr:delete', 'scs_custom.用户属性:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (790, 'scs_custom.user_level:create', 'scs_custom.用户级别:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (791, 'scs_custom.user_level:read', 'scs_custom.用户级别:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (792, 'scs_custom.user_level:update', 'scs_custom.用户级别:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (793, 'scs_custom.user_level:delete', 'scs_custom.用户级别:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (794, 'scs_custom.phone_type:create', 'scs_custom.话机类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (795, 'scs_custom.phone_type:read', 'scs_custom.话机类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (796, 'scs_custom.phone_type:update', 'scs_custom.话机类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (797, 'scs_custom.phone_type:delete', 'scs_custom.话机类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (798, 'scs_custom.remark:create', 'scs_custom.备注:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (799, 'scs_custom.remark:read', 'scs_custom.备注:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (800, 'scs_custom.remark:update', 'scs_custom.备注:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (801, 'scs_custom.remark:delete', 'scs_custom.备注:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (802, 'scs_custom.created_at:create', 'scs_custom.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (803, 'scs_custom.created_at:read', 'scs_custom.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (804, 'scs_custom.created_at:update', 'scs_custom.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (805, 'scs_custom.created_at:delete', 'scs_custom.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (806, 'scs_custom.updated_at:create', 'scs_custom.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (807, 'scs_custom.updated_at:read', 'scs_custom.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (808, 'scs_custom.updated_at:update', 'scs_custom.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (809, 'scs_custom.updated_at:delete', 'scs_custom.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (810, 'scs_custom_change_record.id:create', 'scs_custom_change_record.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (811, 'scs_custom_change_record.id:read', 'scs_custom_change_record.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (812, 'scs_custom_change_record.id:update', 'scs_custom_change_record.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (813, 'scs_custom_change_record.id:delete', 'scs_custom_change_record.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (814, 'scs_custom_change_record.project:create', 'scs_custom_change_record.变更项目:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (815, 'scs_custom_change_record.project:read', 'scs_custom_change_record.变更项目:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (816, 'scs_custom_change_record.project:update', 'scs_custom_change_record.变更项目:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (817, 'scs_custom_change_record.project:delete', 'scs_custom_change_record.变更项目:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (818, 'scs_custom_change_record.before_change:create', 'scs_custom_change_record.变更前:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (819, 'scs_custom_change_record.before_change:read', 'scs_custom_change_record.变更前:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (820, 'scs_custom_change_record.before_change:update', 'scs_custom_change_record.变更前:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (821, 'scs_custom_change_record.before_change:delete', 'scs_custom_change_record.变更前:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (822, 'scs_custom_change_record.after_change:create', 'scs_custom_change_record.变更后:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (823, 'scs_custom_change_record.after_change:read', 'scs_custom_change_record.变更后:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (824, 'scs_custom_change_record.after_change:update', 'scs_custom_change_record.变更后:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (825, 'scs_custom_change_record.after_change:delete', 'scs_custom_change_record.变更后:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (826, 'scs_custom_change_record.user_id:create', 'scs_custom_change_record.操作人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (827, 'scs_custom_change_record.user_id:read', 'scs_custom_change_record.操作人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (828, 'scs_custom_change_record.user_id:update', 'scs_custom_change_record.操作人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (829, 'scs_custom_change_record.user_id:delete', 'scs_custom_change_record.操作人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (830, 'scs_custom_change_record.created_at:create', 'scs_custom_change_record.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (831, 'scs_custom_change_record.created_at:read', 'scs_custom_change_record.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (832, 'scs_custom_change_record.created_at:update', 'scs_custom_change_record.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (833, 'scs_custom_change_record.created_at:delete', 'scs_custom_change_record.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (834, 'scs_custom_change_record.updated_at:create', 'scs_custom_change_record.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (835, 'scs_custom_change_record.updated_at:read', 'scs_custom_change_record.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (836, 'scs_custom_change_record.updated_at:update', 'scs_custom_change_record.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (837, 'scs_custom_change_record.updated_at:delete', 'scs_custom_change_record.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (838, 'scs_custom_history.id:create', 'scs_custom_history.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (839, 'scs_custom_history.id:read', 'scs_custom_history.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (840, 'scs_custom_history.id:update', 'scs_custom_history.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (841, 'scs_custom_history.id:delete', 'scs_custom_history.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (842, 'scs_custom_history.name:create', 'scs_custom_history.姓名:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (843, 'scs_custom_history.name:read', 'scs_custom_history.姓名:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (844, 'scs_custom_history.name:update', 'scs_custom_history.姓名:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (845, 'scs_custom_history.name:delete', 'scs_custom_history.姓名:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (846, 'scs_custom_history.mobile:create', 'scs_custom_history.联系电话:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (847, 'scs_custom_history.mobile:read', 'scs_custom_history.联系电话:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (848, 'scs_custom_history.mobile:update', 'scs_custom_history.联系电话:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (849, 'scs_custom_history.mobile:delete', 'scs_custom_history.联系电话:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (850, 'scs_custom_history.phone:create', 'scs_custom_history.电话号码:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (851, 'scs_custom_history.phone:read', 'scs_custom_history.电话号码:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (852, 'scs_custom_history.phone:update', 'scs_custom_history.电话号码:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (853, 'scs_custom_history.phone:delete', 'scs_custom_history.电话号码:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (854, 'scs_custom_history.unit_name:create', 'scs_custom_history.单位名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (855, 'scs_custom_history.unit_name:read', 'scs_custom_history.单位名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (856, 'scs_custom_history.unit_name:update', 'scs_custom_history.单位名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (857, 'scs_custom_history.unit_name:delete', 'scs_custom_history.单位名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (858, 'scs_custom_history.contact_department:create', 'scs_custom_history.联系部门:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (859, 'scs_custom_history.contact_department:read', 'scs_custom_history.联系部门:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (860, 'scs_custom_history.contact_department:update', 'scs_custom_history.联系部门:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (861, 'scs_custom_history.contact_department:delete', 'scs_custom_history.联系部门:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (862, 'scs_custom_history.indust:create', 'scs_custom_history.行业性质:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (863, 'scs_custom_history.indust:read', 'scs_custom_history.行业性质:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (864, 'scs_custom_history.indust:update', 'scs_custom_history.行业性质:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (865, 'scs_custom_history.indust:delete', 'scs_custom_history.行业性质:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (866, 'scs_custom_history.financial_contact_name:create', 'scs_custom_history.财务联系人姓名:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (867, 'scs_custom_history.financial_contact_name:read', 'scs_custom_history.财务联系人姓名:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (868, 'scs_custom_history.financial_contact_name:update', 'scs_custom_history.财务联系人姓名:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (869, 'scs_custom_history.financial_contact_name:delete', 'scs_custom_history.财务联系人姓名:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (870, 'scs_custom_history.financial_contact_phone:create', 'scs_custom_history.财务联系人电话:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (871, 'scs_custom_history.financial_contact_phone:read', 'scs_custom_history.财务联系人电话:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (872, 'scs_custom_history.financial_contact_phone:update', 'scs_custom_history.财务联系人电话:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (873, 'scs_custom_history.financial_contact_phone:delete', 'scs_custom_history.财务联系人电话:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (874, 'scs_custom_history.product_type:create', 'scs_custom_history.产品类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (875, 'scs_custom_history.product_type:read', 'scs_custom_history.产品类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (876, 'scs_custom_history.product_type:update', 'scs_custom_history.产品类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (877, 'scs_custom_history.product_type:delete', 'scs_custom_history.产品类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (878, 'scs_custom_history.network_type:create', 'scs_custom_history.网络类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (879, 'scs_custom_history.network_type:read', 'scs_custom_history.网络类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (880, 'scs_custom_history.network_type:update', 'scs_custom_history.网络类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (881, 'scs_custom_history.network_type:delete', 'scs_custom_history.网络类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (882, 'scs_custom_history.room_dnum:create', 'scs_custom_history.地址信息-房号:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (883, 'scs_custom_history.room_dnum:read', 'scs_custom_history.地址信息-房号:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (884, 'scs_custom_history.room_dnum:update', 'scs_custom_history.地址信息-房号:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (885, 'scs_custom_history.room_dnum:delete', 'scs_custom_history.地址信息-房号:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (886, 'scs_custom_history.user_type:create', 'scs_custom_history.用户类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (887, 'scs_custom_history.user_type:read', 'scs_custom_history.用户类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (888, 'scs_custom_history.user_type:update', 'scs_custom_history.用户类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (889, 'scs_custom_history.user_type:delete', 'scs_custom_history.用户类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (890, 'scs_custom_history.extension_num:create', 'scs_custom_history.装分机数量:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (891, 'scs_custom_history.extension_num:read', 'scs_custom_history.装分机数量:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (892, 'scs_custom_history.extension_num:update', 'scs_custom_history.装分机数量:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (893, 'scs_custom_history.extension_num:delete', 'scs_custom_history.装分机数量:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (894, 'scs_custom_history.fax_num:create', 'scs_custom_history.装传真数量:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (895, 'scs_custom_history.fax_num:read', 'scs_custom_history.装传真数量:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (896, 'scs_custom_history.fax_num:update', 'scs_custom_history.装传真数量:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (897, 'scs_custom_history.fax_num:delete', 'scs_custom_history.装传真数量:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (898, 'scs_custom_history.operator_info:create', 'scs_custom_history.经办人信息:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (899, 'scs_custom_history.operator_info:read', 'scs_custom_history.经办人信息:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (900, 'scs_custom_history.operator_info:update', 'scs_custom_history.经办人信息:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (901, 'scs_custom_history.operator_info:delete', 'scs_custom_history.经办人信息:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (902, 'scs_custom_history.operator_phone:create', 'scs_custom_history.联系电话:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (903, 'scs_custom_history.operator_phone:read', 'scs_custom_history.联系电话:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (904, 'scs_custom_history.operator_phone:update', 'scs_custom_history.联系电话:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (905, 'scs_custom_history.operator_phone:delete', 'scs_custom_history.联系电话:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (906, 'scs_custom_history.process_level:create', 'scs_custom_history.处理级别:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (907, 'scs_custom_history.process_level:read', 'scs_custom_history.处理级别:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (908, 'scs_custom_history.process_level:update', 'scs_custom_history.处理级别:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (909, 'scs_custom_history.process_level:delete', 'scs_custom_history.处理级别:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (910, 'scs_custom_history.hongji_person:create', 'scs_custom_history.红机责任人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (911, 'scs_custom_history.hongji_person:read', 'scs_custom_history.红机责任人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (912, 'scs_custom_history.hongji_person:update', 'scs_custom_history.红机责任人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (913, 'scs_custom_history.hongji_person:delete', 'scs_custom_history.红机责任人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (914, 'scs_custom_history.contacts:create', 'scs_custom_history.联系人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (915, 'scs_custom_history.contacts:read', 'scs_custom_history.联系人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (916, 'scs_custom_history.contacts:update', 'scs_custom_history.联系人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (917, 'scs_custom_history.contacts:delete', 'scs_custom_history.联系人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (918, 'scs_custom_history.created_at:create', 'scs_custom_history.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (919, 'scs_custom_history.created_at:read', 'scs_custom_history.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (920, 'scs_custom_history.created_at:update', 'scs_custom_history.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (921, 'scs_custom_history.created_at:delete', 'scs_custom_history.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (922, 'scs_custom_history.updated_at:create', 'scs_custom_history.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (923, 'scs_custom_history.updated_at:read', 'scs_custom_history.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (924, 'scs_custom_history.updated_at:update', 'scs_custom_history.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (925, 'scs_custom_history.updated_at:delete', 'scs_custom_history.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (926, 'scs_machine_line_info.id:create', 'scs_machine_line_info.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (927, 'scs_machine_line_info.id:read', 'scs_machine_line_info.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (928, 'scs_machine_line_info.id:update', 'scs_machine_line_info.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (929, 'scs_machine_line_info.id:delete', 'scs_machine_line_info.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (930, 'scs_machine_line_info.line_type:create', 'scs_machine_line_info.线路类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (931, 'scs_machine_line_info.line_type:read', 'scs_machine_line_info.线路类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (932, 'scs_machine_line_info.line_type:update', 'scs_machine_line_info.线路类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (933, 'scs_machine_line_info.line_type:delete', 'scs_machine_line_info.线路类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (934, 'scs_machine_line_info.hor_terminal:create', 'scs_machine_line_info.横列端子:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (935, 'scs_machine_line_info.hor_terminal:read', 'scs_machine_line_info.横列端子:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (936, 'scs_machine_line_info.hor_terminal:update', 'scs_machine_line_info.横列端子:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (937, 'scs_machine_line_info.hor_terminal:delete', 'scs_machine_line_info.横列端子:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (938, 'scs_machine_line_info.trunk_cable_num:create', 'scs_machine_line_info.主干电缆号:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (939, 'scs_machine_line_info.trunk_cable_num:read', 'scs_machine_line_info.主干电缆号:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (940, 'scs_machine_line_info.trunk_cable_num:update', 'scs_machine_line_info.主干电缆号:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (941, 'scs_machine_line_info.trunk_cable_num:delete', 'scs_machine_line_info.主干电缆号:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (942, 'scs_machine_line_info.wiring_num:create', 'scs_machine_line_info.配线号:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (943, 'scs_machine_line_info.wiring_num:read', 'scs_machine_line_info.配线号:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (944, 'scs_machine_line_info.wiring_num:update', 'scs_machine_line_info.配线号:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (945, 'scs_machine_line_info.wiring_num:delete', 'scs_machine_line_info.配线号:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (946, 'scs_machine_line_info.trunk_cable_pair:create', 'scs_machine_line_info.主干电缆线对:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (947, 'scs_machine_line_info.trunk_cable_pair:read', 'scs_machine_line_info.主干电缆线对:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (948, 'scs_machine_line_info.trunk_cable_pair:update', 'scs_machine_line_info.主干电缆线对:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (949, 'scs_machine_line_info.trunk_cable_pair:delete', 'scs_machine_line_info.主干电缆线对:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (950, 'scs_machine_line_info.wiring_sequence:create', 'scs_machine_line_info.配线序:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (951, 'scs_machine_line_info.wiring_sequence:read', 'scs_machine_line_info.配线序:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (952, 'scs_machine_line_info.wiring_sequence:update', 'scs_machine_line_info.配线序:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (953, 'scs_machine_line_info.wiring_sequence:delete', 'scs_machine_line_info.配线序:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (954, 'scs_machine_line_info.main_cable_pair:create', 'scs_machine_line_info.主缆线对:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (955, 'scs_machine_line_info.main_cable_pair:read', 'scs_machine_line_info.主缆线对:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (956, 'scs_machine_line_info.main_cable_pair:update', 'scs_machine_line_info.主缆线对:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (957, 'scs_machine_line_info.main_cable_pair:delete', 'scs_machine_line_info.主缆线对:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (958, 'scs_machine_line_info.wiring_line:create', 'scs_machine_line_info.配线直列:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (959, 'scs_machine_line_info.wiring_line:read', 'scs_machine_line_info.配线直列:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (960, 'scs_machine_line_info.wiring_line:update', 'scs_machine_line_info.配线直列:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (961, 'scs_machine_line_info.wiring_line:delete', 'scs_machine_line_info.配线直列:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (962, 'scs_machine_line_info.join_box_name:create', 'scs_machine_line_info.交接箱名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (963, 'scs_machine_line_info.join_box_name:read', 'scs_machine_line_info.交接箱名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (964, 'scs_machine_line_info.join_box_name:update', 'scs_machine_line_info.交接箱名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (965, 'scs_machine_line_info.join_box_name:delete', 'scs_machine_line_info.交接箱名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (966, 'scs_machine_line_info.junction_box_num:create', 'scs_machine_line_info.分线盒号:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (967, 'scs_machine_line_info.junction_box_num:read', 'scs_machine_line_info.分线盒号:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (968, 'scs_machine_line_info.junction_box_num:update', 'scs_machine_line_info.分线盒号:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (969, 'scs_machine_line_info.junction_box_num:delete', 'scs_machine_line_info.分线盒号:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (970, 'scs_machine_line_info.join_box_type:create', 'scs_machine_line_info.交接箱类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (971, 'scs_machine_line_info.join_box_type:read', 'scs_machine_line_info.交接箱类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (972, 'scs_machine_line_info.join_box_type:update', 'scs_machine_line_info.交接箱类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (973, 'scs_machine_line_info.join_box_type:delete', 'scs_machine_line_info.交接箱类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (974, 'scs_machine_line_info.wiring_line_area_name:create', 'scs_machine_line_info.配线区名称:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (975, 'scs_machine_line_info.wiring_line_area_name:read', 'scs_machine_line_info.配线区名称:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (976, 'scs_machine_line_info.wiring_line_area_name:update', 'scs_machine_line_info.配线区名称:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (977, 'scs_machine_line_info.wiring_line_area_name:delete', 'scs_machine_line_info.配线区名称:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (978, 'scs_machine_line_info.join_box_pair:create', 'scs_machine_line_info.交接箱入线对:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (979, 'scs_machine_line_info.join_box_pair:read', 'scs_machine_line_info.交接箱入线对:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (980, 'scs_machine_line_info.join_box_pair:update', 'scs_machine_line_info.交接箱入线对:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (981, 'scs_machine_line_info.join_box_pair:delete', 'scs_machine_line_info.交接箱入线对:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (982, 'scs_machine_line_info.junction_box_addr:create', 'scs_machine_line_info.分线盒地址:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (983, 'scs_machine_line_info.junction_box_addr:read', 'scs_machine_line_info.分线盒地址:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (984, 'scs_machine_line_info.junction_box_addr:update', 'scs_machine_line_info.分线盒地址:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (985, 'scs_machine_line_info.junction_box_addr:delete', 'scs_machine_line_info.分线盒地址:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (986, 'scs_machine_line_info.join_box_out_pair:create', 'scs_machine_line_info.交接箱出线对:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (987, 'scs_machine_line_info.join_box_out_pair:read', 'scs_machine_line_info.交接箱出线对:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (988, 'scs_machine_line_info.join_box_out_pair:update', 'scs_machine_line_info.交接箱出线对:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (989, 'scs_machine_line_info.join_box_out_pair:delete', 'scs_machine_line_info.交接箱出线对:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (990, 'scs_machine_line_info.junction_box_pair:create', 'scs_machine_line_info.分线盒线对:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (991, 'scs_machine_line_info.junction_box_pair:read', 'scs_machine_line_info.分线盒线对:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (992, 'scs_machine_line_info.junction_box_pair:update', 'scs_machine_line_info.分线盒线对:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (993, 'scs_machine_line_info.junction_box_pair:delete', 'scs_machine_line_info.分线盒线对:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (994, 'scs_machine_line_info.join_box_addr:create', 'scs_machine_line_info.交接箱地址:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (995, 'scs_machine_line_info.join_box_addr:read', 'scs_machine_line_info.交接箱地址:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (996, 'scs_machine_line_info.join_box_addr:update', 'scs_machine_line_info.交接箱地址:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (997, 'scs_machine_line_info.join_box_addr:delete', 'scs_machine_line_info.交接箱地址:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (998, 'scs_machine_line_info.junction_box_capacity:create', 'scs_machine_line_info.分线盒容量:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (999, 'scs_machine_line_info.junction_box_capacity:read', 'scs_machine_line_info.分线盒容量:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1000, 'scs_machine_line_info.junction_box_capacity:update', 'scs_machine_line_info.分线盒容量:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1001, 'scs_machine_line_info.junction_box_capacity:delete', 'scs_machine_line_info.分线盒容量:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1002, 'scs_machine_line_info.join_box_name_two:create', 'scs_machine_line_info.交接箱名称2:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1003, 'scs_machine_line_info.join_box_name_two:read', 'scs_machine_line_info.交接箱名称2:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1004, 'scs_machine_line_info.join_box_name_two:update', 'scs_machine_line_info.交接箱名称2:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1005, 'scs_machine_line_info.join_box_name_two:delete', 'scs_machine_line_info.交接箱名称2:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1006, 'scs_machine_line_info.join_box_type_two:create', 'scs_machine_line_info.交接箱类型2:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1007, 'scs_machine_line_info.join_box_type_two:read', 'scs_machine_line_info.交接箱类型2:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1008, 'scs_machine_line_info.join_box_type_two:update', 'scs_machine_line_info.交接箱类型2:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1009, 'scs_machine_line_info.join_box_type_two:delete', 'scs_machine_line_info.交接箱类型2:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1010, 'scs_machine_line_info.join_box_pair_two:create', 'scs_machine_line_info.交接箱入线对2:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1011, 'scs_machine_line_info.join_box_pair_two:read', 'scs_machine_line_info.交接箱入线对2:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1012, 'scs_machine_line_info.join_box_pair_two:update', 'scs_machine_line_info.交接箱入线对2:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1013, 'scs_machine_line_info.join_box_pair_two:delete', 'scs_machine_line_info.交接箱入线对2:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1014, 'scs_machine_line_info.join_box_out_pair_two:create', 'scs_machine_line_info.交接箱出线对2:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1015, 'scs_machine_line_info.join_box_out_pair_two:read', 'scs_machine_line_info.交接箱出线对2:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1016, 'scs_machine_line_info.join_box_out_pair_two:update', 'scs_machine_line_info.交接箱出线对2:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1017, 'scs_machine_line_info.join_box_out_pair_two:delete', 'scs_machine_line_info.交接箱出线对2:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1018, 'scs_machine_line_info.join_box_addr_two:create', 'scs_machine_line_info.交接箱地址2:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1019, 'scs_machine_line_info.join_box_addr_two:read', 'scs_machine_line_info.交接箱地址2:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1020, 'scs_machine_line_info.join_box_addr_two:update', 'scs_machine_line_info.交接箱地址2:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1021, 'scs_machine_line_info.join_box_addr_two:delete', 'scs_machine_line_info.交接箱地址2:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1022, 'scs_machine_line_info.dupli_box:create', 'scs_machine_line_info.复盒1:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1023, 'scs_machine_line_info.dupli_box:read', 'scs_machine_line_info.复盒1:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1024, 'scs_machine_line_info.dupli_box:update', 'scs_machine_line_info.复盒1:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1025, 'scs_machine_line_info.dupli_box:delete', 'scs_machine_line_info.复盒1:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1026, 'scs_machine_line_info.dupli_box_two:create', 'scs_machine_line_info.复盒2:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1027, 'scs_machine_line_info.dupli_box_two:read', 'scs_machine_line_info.复盒2:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1028, 'scs_machine_line_info.dupli_box_two:update', 'scs_machine_line_info.复盒2:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1029, 'scs_machine_line_info.dupli_box_two:delete', 'scs_machine_line_info.复盒2:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1030, 'scs_machine_line_info.created_at:create', 'scs_machine_line_info.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1031, 'scs_machine_line_info.created_at:read', 'scs_machine_line_info.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1032, 'scs_machine_line_info.created_at:update', 'scs_machine_line_info.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1033, 'scs_machine_line_info.created_at:delete', 'scs_machine_line_info.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1034, 'scs_machine_line_info.updated_at:create', 'scs_machine_line_info.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1035, 'scs_machine_line_info.updated_at:read', 'scs_machine_line_info.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1036, 'scs_machine_line_info.updated_at:update', 'scs_machine_line_info.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1037, 'scs_machine_line_info.updated_at:delete', 'scs_machine_line_info.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1038, 'scs_machine_line_info_history.id:create', 'scs_machine_line_info_history.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1039, 'scs_machine_line_info_history.id:read', 'scs_machine_line_info_history.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1040, 'scs_machine_line_info_history.id:update', 'scs_machine_line_info_history.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1041, 'scs_machine_line_info_history.id:delete', 'scs_machine_line_info_history.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1042, 'scs_machine_line_info_history.route:create', 'scs_machine_line_info_history.路由:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1043, 'scs_machine_line_info_history.route:read', 'scs_machine_line_info_history.路由:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1044, 'scs_machine_line_info_history.route:update', 'scs_machine_line_info_history.路由:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1045, 'scs_machine_line_info_history.route:delete', 'scs_machine_line_info_history.路由:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1046, 'scs_machine_line_info_history.user_board_network_address:create', 'scs_machine_line_info_history.用户板网络地址:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1047, 'scs_machine_line_info_history.user_board_network_address:read', 'scs_machine_line_info_history.用户板网络地址:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1048, 'scs_machine_line_info_history.user_board_network_address:update', 'scs_machine_line_info_history.用户板网络地址:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1049, 'scs_machine_line_info_history.user_board_network_address:delete', 'scs_machine_line_info_history.用户板网络地址:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1050, 'scs_machine_line_info_history.user_board_ion:create', 'scs_machine_line_info_history.用户板离子:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1051, 'scs_machine_line_info_history.user_board_ion:read', 'scs_machine_line_info_history.用户板离子:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1052, 'scs_machine_line_info_history.user_board_ion:update', 'scs_machine_line_info_history.用户板离子:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1053, 'scs_machine_line_info_history.user_board_ion:delete', 'scs_machine_line_info_history.用户板离子:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1054, 'scs_machine_line_info_history.local_distribution_frame:create', 'scs_machine_line_info_history.局端配线架:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1055, 'scs_machine_line_info_history.local_distribution_frame:read', 'scs_machine_line_info_history.局端配线架:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1056, 'scs_machine_line_info_history.local_distribution_frame:update', 'scs_machine_line_info_history.局端配线架:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1057, 'scs_machine_line_info_history.local_distribution_frame:delete', 'scs_machine_line_info_history.局端配线架:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1058, 'scs_machine_line_info_history.bureau_inner_terminal:create', 'scs_machine_line_info_history.局端内测端子:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1059, 'scs_machine_line_info_history.bureau_inner_terminal:read', 'scs_machine_line_info_history.局端内测端子:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1060, 'scs_machine_line_info_history.bureau_inner_terminal:update', 'scs_machine_line_info_history.局端内测端子:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1061, 'scs_machine_line_info_history.bureau_inner_terminal:delete', 'scs_machine_line_info_history.局端内测端子:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1062, 'scs_machine_line_info_history.bureau_out_terminal:create', 'scs_machine_line_info_history.局端外侧端子:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1063, 'scs_machine_line_info_history.bureau_out_terminal:read', 'scs_machine_line_info_history.局端外侧端子:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1064, 'scs_machine_line_info_history.bureau_out_terminal:update', 'scs_machine_line_info_history.局端外侧端子:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1065, 'scs_machine_line_info_history.bureau_out_terminal:delete', 'scs_machine_line_info_history.局端外侧端子:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1066, 'scs_machine_line_info_history.trunk_cable:create', 'scs_machine_line_info_history.主干电缆（如：03,04,05）:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1067, 'scs_machine_line_info_history.trunk_cable:read', 'scs_machine_line_info_history.主干电缆（如：03,04,05）:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1068, 'scs_machine_line_info_history.trunk_cable:update', 'scs_machine_line_info_history.主干电缆（如：03,04,05）:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1069, 'scs_machine_line_info_history.trunk_cable:delete', 'scs_machine_line_info_history.主干电缆（如：03,04,05）:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1070, 'scs_machine_line_info_history.trunk_cable_num:create', 'scs_machine_line_info_history.主干电缆线序编号:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1071, 'scs_machine_line_info_history.trunk_cable_num:read', 'scs_machine_line_info_history.主干电缆线序编号:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1072, 'scs_machine_line_info_history.trunk_cable_num:update', 'scs_machine_line_info_history.主干电缆线序编号:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1073, 'scs_machine_line_info_history.trunk_cable_num:delete', 'scs_machine_line_info_history.主干电缆线序编号:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1074, 'scs_machine_line_info_history.junction_box:create', 'scs_machine_line_info_history.分线盒:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1075, 'scs_machine_line_info_history.junction_box:read', 'scs_machine_line_info_history.分线盒:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1076, 'scs_machine_line_info_history.junction_box:update', 'scs_machine_line_info_history.分线盒:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1077, 'scs_machine_line_info_history.junction_box:delete', 'scs_machine_line_info_history.分线盒:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1078, 'scs_machine_line_info_history.junction_box_segment:create', 'scs_machine_line_info_history.分线盒段子:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1079, 'scs_machine_line_info_history.junction_box_segment:read', 'scs_machine_line_info_history.分线盒段子:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1080, 'scs_machine_line_info_history.junction_box_segment:update', 'scs_machine_line_info_history.分线盒段子:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1081, 'scs_machine_line_info_history.junction_box_segment:delete', 'scs_machine_line_info_history.分线盒段子:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1082, 'scs_machine_line_info_history.junction_box_address:create', 'scs_machine_line_info_history.分线盒地址:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1083, 'scs_machine_line_info_history.junction_box_address:read', 'scs_machine_line_info_history.分线盒地址:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1084, 'scs_machine_line_info_history.junction_box_address:update', 'scs_machine_line_info_history.分线盒地址:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1085, 'scs_machine_line_info_history.junction_box_address:delete', 'scs_machine_line_info_history.分线盒地址:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1086, 'scs_machine_line_info_history.created_at:create', 'scs_machine_line_info_history.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1087, 'scs_machine_line_info_history.created_at:read', 'scs_machine_line_info_history.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1088, 'scs_machine_line_info_history.created_at:update', 'scs_machine_line_info_history.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1089, 'scs_machine_line_info_history.created_at:delete', 'scs_machine_line_info_history.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1090, 'scs_machine_line_info_history.updated_at:create', 'scs_machine_line_info_history.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1091, 'scs_machine_line_info_history.updated_at:read', 'scs_machine_line_info_history.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1092, 'scs_machine_line_info_history.updated_at:update', 'scs_machine_line_info_history.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1093, 'scs_machine_line_info_history.updated_at:delete', 'scs_machine_line_info_history.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1094, 'scs_work_order.id:create', 'scs_work_order.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1095, 'scs_work_order.id:read', 'scs_work_order.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1096, 'scs_work_order.id:update', 'scs_work_order.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1097, 'scs_work_order.id:delete', 'scs_work_order.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1098, 'scs_work_order.order_num:create', 'scs_work_order.工单编号:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1099, 'scs_work_order.order_num:read', 'scs_work_order.工单编号:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1100, 'scs_work_order.order_num:update', 'scs_work_order.工单编号:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1101, 'scs_work_order.order_num:delete', 'scs_work_order.工单编号:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1102, 'scs_work_order.phone:create', 'scs_work_order.电话号码:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1103, 'scs_work_order.phone:read', 'scs_work_order.电话号码:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1104, 'scs_work_order.phone:update', 'scs_work_order.电话号码:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1105, 'scs_work_order.phone:delete', 'scs_work_order.电话号码:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1106, 'scs_work_order.business_bureau:create', 'scs_work_order.营业局:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1107, 'scs_work_order.business_bureau:read', 'scs_work_order.营业局:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1108, 'scs_work_order.business_bureau:update', 'scs_work_order.营业局:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1109, 'scs_work_order.business_bureau:delete', 'scs_work_order.营业局:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1110, 'scs_work_order.business_type:create', 'scs_work_order.业务类型:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1111, 'scs_work_order.business_type:read', 'scs_work_order.业务类型:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1112, 'scs_work_order.business_type:update', 'scs_work_order.业务类型:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1113, 'scs_work_order.business_type:delete', 'scs_work_order.业务类型:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1114, 'scs_work_order.order_status:create', 'scs_work_order.工单状态:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1115, 'scs_work_order.order_status:read', 'scs_work_order.工单状态:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1116, 'scs_work_order.order_status:update', 'scs_work_order.工单状态:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1117, 'scs_work_order.order_status:delete', 'scs_work_order.工单状态:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1118, 'scs_work_order.acceptance_method:create', 'scs_work_order.受理方式:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1119, 'scs_work_order.acceptance_method:read', 'scs_work_order.受理方式:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1120, 'scs_work_order.acceptance_method:update', 'scs_work_order.受理方式:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1121, 'scs_work_order.acceptance_method:delete', 'scs_work_order.受理方式:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1122, 'scs_work_order.acceptor:create', 'scs_work_order.受理人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1123, 'scs_work_order.acceptor:read', 'scs_work_order.受理人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1124, 'scs_work_order.acceptor:update', 'scs_work_order.受理人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1125, 'scs_work_order.acceptor:delete', 'scs_work_order.受理人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1126, 'scs_work_order.acceptance_time:create', 'scs_work_order.受理时间:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1127, 'scs_work_order.acceptance_time:read', 'scs_work_order.受理时间:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1128, 'scs_work_order.acceptance_time:update', 'scs_work_order.受理时间:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1129, 'scs_work_order.acceptance_time:delete', 'scs_work_order.受理时间:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1130, 'scs_work_order.created_at:create', 'scs_work_order.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1131, 'scs_work_order.created_at:read', 'scs_work_order.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1132, 'scs_work_order.created_at:update', 'scs_work_order.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1133, 'scs_work_order.created_at:delete', 'scs_work_order.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1134, 'scs_work_order.updated_at:create', 'scs_work_order.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1135, 'scs_work_order.updated_at:read', 'scs_work_order.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1136, 'scs_work_order.updated_at:update', 'scs_work_order.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1137, 'scs_work_order.updated_at:delete', 'scs_work_order.updated_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1138, 'scs_workflow_node_log.id:create', 'scs_workflow_node_log.id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1139, 'scs_workflow_node_log.id:read', 'scs_workflow_node_log.id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1140, 'scs_workflow_node_log.id:update', 'scs_workflow_node_log.id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1141, 'scs_workflow_node_log.id:delete', 'scs_workflow_node_log.id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1142, 'scs_workflow_node_log.node_id:create', 'scs_workflow_node_log.节点id:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1143, 'scs_workflow_node_log.node_id:read', 'scs_workflow_node_log.节点id:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1144, 'scs_workflow_node_log.node_id:update', 'scs_workflow_node_log.节点id:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1145, 'scs_workflow_node_log.node_id:delete', 'scs_workflow_node_log.节点id:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1146, 'scs_workflow_node_log.entry_time:create', 'scs_workflow_node_log.进入时间:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1147, 'scs_workflow_node_log.entry_time:read', 'scs_workflow_node_log.进入时间:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1148, 'scs_workflow_node_log.entry_time:update', 'scs_workflow_node_log.进入时间:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1149, 'scs_workflow_node_log.entry_time:delete', 'scs_workflow_node_log.进入时间:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1150, 'scs_workflow_node_log.signing_time:create', 'scs_workflow_node_log.签收时间:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1151, 'scs_workflow_node_log.signing_time:read', 'scs_workflow_node_log.签收时间:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1152, 'scs_workflow_node_log.signing_time:update', 'scs_workflow_node_log.签收时间:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1153, 'scs_workflow_node_log.signing_time:delete', 'scs_workflow_node_log.签收时间:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1154, 'scs_workflow_node_log.completion_time:create', 'scs_workflow_node_log.完成时间:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1155, 'scs_workflow_node_log.completion_time:read', 'scs_workflow_node_log.完成时间:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1156, 'scs_workflow_node_log.completion_time:update', 'scs_workflow_node_log.完成时间:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1157, 'scs_workflow_node_log.completion_time:delete', 'scs_workflow_node_log.完成时间:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1158, 'scs_workflow_node_log.user_id:create', 'scs_workflow_node_log.办理人:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1159, 'scs_workflow_node_log.user_id:read', 'scs_workflow_node_log.办理人:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1160, 'scs_workflow_node_log.user_id:update', 'scs_workflow_node_log.办理人:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1161, 'scs_workflow_node_log.user_id:delete', 'scs_workflow_node_log.办理人:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1162, 'scs_workflow_node_log.remark:create', 'scs_workflow_node_log.备注:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1163, 'scs_workflow_node_log.remark:read', 'scs_workflow_node_log.备注:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1164, 'scs_workflow_node_log.remark:update', 'scs_workflow_node_log.备注:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1165, 'scs_workflow_node_log.remark:delete', 'scs_workflow_node_log.备注:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1166, 'scs_workflow_node_log.created_at:create', 'scs_workflow_node_log.created_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1167, 'scs_workflow_node_log.created_at:read', 'scs_workflow_node_log.created_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1168, 'scs_workflow_node_log.created_at:update', 'scs_workflow_node_log.created_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1169, 'scs_workflow_node_log.created_at:delete', 'scs_workflow_node_log.created_at:delete', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1170, 'scs_workflow_node_log.updated_at:create', 'scs_workflow_node_log.updated_at:create', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1171, 'scs_workflow_node_log.updated_at:read', 'scs_workflow_node_log.updated_at:read', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1172, 'scs_workflow_node_log.updated_at:update', 'scs_workflow_node_log.updated_at:update', NULL, NULL);
INSERT INTO `sys_permissions` VALUES (1173, 'scs_workflow_node_log.updated_at:delete', 'scs_workflow_node_log.updated_at:delete', NULL, NULL);

-- ----------------------------
-- Table structure for sys_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '描述',
  `is_default` int(11) NOT NULL DEFAULT 0 COMMENT '是否设置为注册用户默认角色',
  `data_type` int(11) NOT NULL COMMENT '数据权限类型',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES (1, '超级管理员', '超级管理员，拥有所有权限', 1, 0, '2018-12-17 18:47:02', '2019-04-09 09:33:07');
INSERT INTO `sys_roles` VALUES (7, '业务', NULL, 0, 0, '2020-11-02 15:19:51', NULL);
INSERT INTO `sys_roles` VALUES (8, '测量', NULL, 0, 0, '2020-11-02 15:20:03', NULL);
INSERT INTO `sys_roles` VALUES (9, '线路', NULL, 0, 0, '2020-11-02 15:20:17', NULL);
INSERT INTO `sys_roles` VALUES (10, '机房', NULL, 0, 0, '2020-11-02 15:20:31', NULL);
INSERT INTO `sys_roles` VALUES (11, '收费', NULL, 0, 0, '2020-11-02 15:20:39', NULL);
INSERT INTO `sys_roles` VALUES (12, '陕西省', NULL, 0, 0, '2020-11-27 15:25:40', NULL);

-- ----------------------------
-- Table structure for sys_roles_departments
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_departments`;
CREATE TABLE `sys_roles_departments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `department_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_roles_departments_department_id_foreign`(`department_id`) USING BTREE,
  INDEX `sys_roles_departments_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `sys_roles_departments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `sys_departments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_roles_departments_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles_departments
-- ----------------------------

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `checked` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sys_roles_menus_menu_id_foreign`(`menu_id`) USING BTREE,
  INDEX `sys_roles_menus_role_id_foreign`(`role_id`) USING BTREE,
  CONSTRAINT `sys_roles_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `sys_menus` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sys_roles_menus_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `sys_roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 889 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
INSERT INTO `sys_roles_menus` VALUES (489, 7, 1, 1);
INSERT INTO `sys_roles_menus` VALUES (490, 7, 2, 1);
INSERT INTO `sys_roles_menus` VALUES (491, 7, 18, 1);
INSERT INTO `sys_roles_menus` VALUES (492, 7, 21, 1);
INSERT INTO `sys_roles_menus` VALUES (493, 7, 22, 1);
INSERT INTO `sys_roles_menus` VALUES (494, 7, 23, 1);
INSERT INTO `sys_roles_menus` VALUES (495, 7, 19, 1);
INSERT INTO `sys_roles_menus` VALUES (496, 7, 70, 1);
INSERT INTO `sys_roles_menus` VALUES (497, 7, 71, 1);
INSERT INTO `sys_roles_menus` VALUES (498, 7, 72, 1);
INSERT INTO `sys_roles_menus` VALUES (499, 7, 28, 1);
INSERT INTO `sys_roles_menus` VALUES (500, 7, 29, 1);
INSERT INTO `sys_roles_menus` VALUES (501, 7, 30, 1);
INSERT INTO `sys_roles_menus` VALUES (502, 7, 31, 1);
INSERT INTO `sys_roles_menus` VALUES (503, 7, 32, 1);
INSERT INTO `sys_roles_menus` VALUES (504, 7, 17, 1);
INSERT INTO `sys_roles_menus` VALUES (505, 7, 20, 1);
INSERT INTO `sys_roles_menus` VALUES (506, 7, 24, 1);
INSERT INTO `sys_roles_menus` VALUES (507, 7, 33, 1);
INSERT INTO `sys_roles_menus` VALUES (508, 7, 34, 1);
INSERT INTO `sys_roles_menus` VALUES (509, 7, 73, 1);
INSERT INTO `sys_roles_menus` VALUES (510, 7, 35, 1);
INSERT INTO `sys_roles_menus` VALUES (511, 7, 36, 1);
INSERT INTO `sys_roles_menus` VALUES (512, 7, 37, 1);
INSERT INTO `sys_roles_menus` VALUES (513, 7, 38, 1);
INSERT INTO `sys_roles_menus` VALUES (514, 7, 39, 1);
INSERT INTO `sys_roles_menus` VALUES (515, 7, 40, 1);
INSERT INTO `sys_roles_menus` VALUES (516, 7, 41, 1);
INSERT INTO `sys_roles_menus` VALUES (517, 7, 42, 1);
INSERT INTO `sys_roles_menus` VALUES (518, 7, 43, 1);
INSERT INTO `sys_roles_menus` VALUES (519, 7, 44, 1);
INSERT INTO `sys_roles_menus` VALUES (520, 7, 45, 1);
INSERT INTO `sys_roles_menus` VALUES (521, 7, 46, 1);
INSERT INTO `sys_roles_menus` VALUES (522, 7, 47, 1);
INSERT INTO `sys_roles_menus` VALUES (523, 7, 48, 1);
INSERT INTO `sys_roles_menus` VALUES (524, 7, 49, 1);
INSERT INTO `sys_roles_menus` VALUES (525, 7, 50, 1);
INSERT INTO `sys_roles_menus` VALUES (526, 7, 51, 1);
INSERT INTO `sys_roles_menus` VALUES (527, 7, 74, 1);
INSERT INTO `sys_roles_menus` VALUES (528, 7, 67, 1);
INSERT INTO `sys_roles_menus` VALUES (529, 7, 68, 1);
INSERT INTO `sys_roles_menus` VALUES (530, 7, 69, 1);
INSERT INTO `sys_roles_menus` VALUES (531, 8, 1, 1);
INSERT INTO `sys_roles_menus` VALUES (532, 8, 2, 1);
INSERT INTO `sys_roles_menus` VALUES (533, 8, 18, 1);
INSERT INTO `sys_roles_menus` VALUES (534, 8, 21, 1);
INSERT INTO `sys_roles_menus` VALUES (535, 8, 22, 1);
INSERT INTO `sys_roles_menus` VALUES (536, 8, 23, 1);
INSERT INTO `sys_roles_menus` VALUES (537, 8, 19, 1);
INSERT INTO `sys_roles_menus` VALUES (538, 8, 70, 1);
INSERT INTO `sys_roles_menus` VALUES (539, 8, 71, 1);
INSERT INTO `sys_roles_menus` VALUES (540, 8, 72, 1);
INSERT INTO `sys_roles_menus` VALUES (541, 8, 28, 1);
INSERT INTO `sys_roles_menus` VALUES (542, 8, 29, 1);
INSERT INTO `sys_roles_menus` VALUES (543, 8, 30, 1);
INSERT INTO `sys_roles_menus` VALUES (544, 8, 31, 1);
INSERT INTO `sys_roles_menus` VALUES (545, 8, 32, 1);
INSERT INTO `sys_roles_menus` VALUES (546, 8, 17, 1);
INSERT INTO `sys_roles_menus` VALUES (547, 8, 20, 1);
INSERT INTO `sys_roles_menus` VALUES (548, 8, 24, 1);
INSERT INTO `sys_roles_menus` VALUES (549, 8, 33, 1);
INSERT INTO `sys_roles_menus` VALUES (550, 8, 34, 1);
INSERT INTO `sys_roles_menus` VALUES (551, 8, 73, 1);
INSERT INTO `sys_roles_menus` VALUES (552, 8, 35, 1);
INSERT INTO `sys_roles_menus` VALUES (553, 8, 36, 1);
INSERT INTO `sys_roles_menus` VALUES (554, 8, 37, 1);
INSERT INTO `sys_roles_menus` VALUES (555, 8, 38, 1);
INSERT INTO `sys_roles_menus` VALUES (556, 8, 39, 1);
INSERT INTO `sys_roles_menus` VALUES (557, 8, 40, 1);
INSERT INTO `sys_roles_menus` VALUES (558, 8, 41, 1);
INSERT INTO `sys_roles_menus` VALUES (559, 8, 42, 1);
INSERT INTO `sys_roles_menus` VALUES (560, 8, 43, 1);
INSERT INTO `sys_roles_menus` VALUES (561, 8, 44, 1);
INSERT INTO `sys_roles_menus` VALUES (562, 8, 45, 1);
INSERT INTO `sys_roles_menus` VALUES (563, 8, 46, 1);
INSERT INTO `sys_roles_menus` VALUES (564, 8, 47, 1);
INSERT INTO `sys_roles_menus` VALUES (565, 8, 48, 1);
INSERT INTO `sys_roles_menus` VALUES (566, 8, 49, 1);
INSERT INTO `sys_roles_menus` VALUES (567, 8, 50, 1);
INSERT INTO `sys_roles_menus` VALUES (568, 8, 51, 1);
INSERT INTO `sys_roles_menus` VALUES (569, 8, 74, 1);
INSERT INTO `sys_roles_menus` VALUES (570, 8, 67, 1);
INSERT INTO `sys_roles_menus` VALUES (571, 8, 68, 1);
INSERT INTO `sys_roles_menus` VALUES (572, 8, 69, 1);
INSERT INTO `sys_roles_menus` VALUES (573, 9, 1, 1);
INSERT INTO `sys_roles_menus` VALUES (574, 9, 2, 1);
INSERT INTO `sys_roles_menus` VALUES (575, 9, 18, 1);
INSERT INTO `sys_roles_menus` VALUES (576, 9, 21, 1);
INSERT INTO `sys_roles_menus` VALUES (577, 9, 22, 1);
INSERT INTO `sys_roles_menus` VALUES (578, 9, 23, 1);
INSERT INTO `sys_roles_menus` VALUES (579, 9, 19, 1);
INSERT INTO `sys_roles_menus` VALUES (580, 9, 70, 1);
INSERT INTO `sys_roles_menus` VALUES (581, 9, 71, 1);
INSERT INTO `sys_roles_menus` VALUES (582, 9, 72, 1);
INSERT INTO `sys_roles_menus` VALUES (583, 9, 28, 1);
INSERT INTO `sys_roles_menus` VALUES (584, 9, 29, 1);
INSERT INTO `sys_roles_menus` VALUES (585, 9, 30, 1);
INSERT INTO `sys_roles_menus` VALUES (586, 9, 31, 1);
INSERT INTO `sys_roles_menus` VALUES (587, 9, 32, 1);
INSERT INTO `sys_roles_menus` VALUES (588, 9, 17, 1);
INSERT INTO `sys_roles_menus` VALUES (589, 9, 20, 1);
INSERT INTO `sys_roles_menus` VALUES (590, 9, 24, 1);
INSERT INTO `sys_roles_menus` VALUES (591, 9, 33, 1);
INSERT INTO `sys_roles_menus` VALUES (592, 9, 34, 1);
INSERT INTO `sys_roles_menus` VALUES (593, 9, 73, 1);
INSERT INTO `sys_roles_menus` VALUES (594, 9, 35, 1);
INSERT INTO `sys_roles_menus` VALUES (595, 9, 36, 1);
INSERT INTO `sys_roles_menus` VALUES (596, 9, 37, 1);
INSERT INTO `sys_roles_menus` VALUES (597, 9, 38, 1);
INSERT INTO `sys_roles_menus` VALUES (598, 9, 39, 1);
INSERT INTO `sys_roles_menus` VALUES (599, 9, 40, 1);
INSERT INTO `sys_roles_menus` VALUES (600, 9, 41, 1);
INSERT INTO `sys_roles_menus` VALUES (601, 9, 42, 1);
INSERT INTO `sys_roles_menus` VALUES (602, 9, 43, 1);
INSERT INTO `sys_roles_menus` VALUES (603, 9, 44, 1);
INSERT INTO `sys_roles_menus` VALUES (604, 9, 45, 1);
INSERT INTO `sys_roles_menus` VALUES (605, 9, 46, 1);
INSERT INTO `sys_roles_menus` VALUES (606, 9, 47, 1);
INSERT INTO `sys_roles_menus` VALUES (607, 9, 48, 1);
INSERT INTO `sys_roles_menus` VALUES (608, 9, 49, 1);
INSERT INTO `sys_roles_menus` VALUES (609, 9, 50, 1);
INSERT INTO `sys_roles_menus` VALUES (610, 9, 51, 1);
INSERT INTO `sys_roles_menus` VALUES (611, 9, 74, 1);
INSERT INTO `sys_roles_menus` VALUES (612, 9, 67, 1);
INSERT INTO `sys_roles_menus` VALUES (613, 9, 68, 1);
INSERT INTO `sys_roles_menus` VALUES (614, 9, 69, 1);
INSERT INTO `sys_roles_menus` VALUES (615, 10, 1, 1);
INSERT INTO `sys_roles_menus` VALUES (616, 10, 2, 1);
INSERT INTO `sys_roles_menus` VALUES (617, 10, 18, 1);
INSERT INTO `sys_roles_menus` VALUES (618, 10, 21, 1);
INSERT INTO `sys_roles_menus` VALUES (619, 10, 22, 1);
INSERT INTO `sys_roles_menus` VALUES (620, 10, 23, 1);
INSERT INTO `sys_roles_menus` VALUES (621, 10, 19, 1);
INSERT INTO `sys_roles_menus` VALUES (622, 10, 70, 1);
INSERT INTO `sys_roles_menus` VALUES (623, 10, 71, 1);
INSERT INTO `sys_roles_menus` VALUES (624, 10, 72, 1);
INSERT INTO `sys_roles_menus` VALUES (625, 10, 28, 1);
INSERT INTO `sys_roles_menus` VALUES (626, 10, 29, 1);
INSERT INTO `sys_roles_menus` VALUES (627, 10, 30, 1);
INSERT INTO `sys_roles_menus` VALUES (628, 10, 31, 1);
INSERT INTO `sys_roles_menus` VALUES (629, 10, 32, 1);
INSERT INTO `sys_roles_menus` VALUES (630, 10, 17, 1);
INSERT INTO `sys_roles_menus` VALUES (631, 10, 20, 1);
INSERT INTO `sys_roles_menus` VALUES (632, 10, 24, 1);
INSERT INTO `sys_roles_menus` VALUES (633, 10, 33, 1);
INSERT INTO `sys_roles_menus` VALUES (634, 10, 34, 1);
INSERT INTO `sys_roles_menus` VALUES (635, 10, 73, 1);
INSERT INTO `sys_roles_menus` VALUES (636, 10, 35, 1);
INSERT INTO `sys_roles_menus` VALUES (637, 10, 36, 1);
INSERT INTO `sys_roles_menus` VALUES (638, 10, 37, 1);
INSERT INTO `sys_roles_menus` VALUES (639, 10, 38, 1);
INSERT INTO `sys_roles_menus` VALUES (640, 10, 39, 1);
INSERT INTO `sys_roles_menus` VALUES (641, 10, 40, 1);
INSERT INTO `sys_roles_menus` VALUES (642, 10, 41, 1);
INSERT INTO `sys_roles_menus` VALUES (643, 10, 42, 1);
INSERT INTO `sys_roles_menus` VALUES (644, 10, 43, 1);
INSERT INTO `sys_roles_menus` VALUES (645, 10, 44, 1);
INSERT INTO `sys_roles_menus` VALUES (646, 10, 45, 1);
INSERT INTO `sys_roles_menus` VALUES (647, 10, 46, 1);
INSERT INTO `sys_roles_menus` VALUES (648, 10, 47, 1);
INSERT INTO `sys_roles_menus` VALUES (649, 10, 48, 1);
INSERT INTO `sys_roles_menus` VALUES (650, 10, 49, 1);
INSERT INTO `sys_roles_menus` VALUES (651, 10, 50, 1);
INSERT INTO `sys_roles_menus` VALUES (652, 10, 51, 1);
INSERT INTO `sys_roles_menus` VALUES (653, 10, 74, 1);
INSERT INTO `sys_roles_menus` VALUES (654, 10, 67, 1);
INSERT INTO `sys_roles_menus` VALUES (655, 10, 68, 1);
INSERT INTO `sys_roles_menus` VALUES (656, 10, 69, 1);
INSERT INTO `sys_roles_menus` VALUES (702, 12, 1, 1);
INSERT INTO `sys_roles_menus` VALUES (703, 12, 2, 1);
INSERT INTO `sys_roles_menus` VALUES (704, 12, 18, 1);
INSERT INTO `sys_roles_menus` VALUES (705, 12, 21, 1);
INSERT INTO `sys_roles_menus` VALUES (706, 12, 22, 1);
INSERT INTO `sys_roles_menus` VALUES (707, 12, 23, 1);
INSERT INTO `sys_roles_menus` VALUES (708, 12, 19, 1);
INSERT INTO `sys_roles_menus` VALUES (709, 12, 70, 1);
INSERT INTO `sys_roles_menus` VALUES (710, 12, 71, 1);
INSERT INTO `sys_roles_menus` VALUES (711, 12, 72, 1);
INSERT INTO `sys_roles_menus` VALUES (712, 12, 28, 1);
INSERT INTO `sys_roles_menus` VALUES (713, 12, 29, 1);
INSERT INTO `sys_roles_menus` VALUES (714, 12, 30, 1);
INSERT INTO `sys_roles_menus` VALUES (715, 12, 31, 1);
INSERT INTO `sys_roles_menus` VALUES (716, 12, 32, 1);
INSERT INTO `sys_roles_menus` VALUES (717, 12, 17, 1);
INSERT INTO `sys_roles_menus` VALUES (718, 12, 20, 1);
INSERT INTO `sys_roles_menus` VALUES (719, 12, 24, 1);
INSERT INTO `sys_roles_menus` VALUES (720, 12, 33, 1);
INSERT INTO `sys_roles_menus` VALUES (721, 12, 34, 1);
INSERT INTO `sys_roles_menus` VALUES (722, 12, 73, 1);
INSERT INTO `sys_roles_menus` VALUES (723, 12, 35, 1);
INSERT INTO `sys_roles_menus` VALUES (724, 12, 36, 1);
INSERT INTO `sys_roles_menus` VALUES (725, 12, 37, 1);
INSERT INTO `sys_roles_menus` VALUES (726, 12, 38, 1);
INSERT INTO `sys_roles_menus` VALUES (727, 12, 39, 1);
INSERT INTO `sys_roles_menus` VALUES (728, 12, 40, 1);
INSERT INTO `sys_roles_menus` VALUES (729, 12, 41, 1);
INSERT INTO `sys_roles_menus` VALUES (730, 12, 42, 1);
INSERT INTO `sys_roles_menus` VALUES (731, 12, 43, 1);
INSERT INTO `sys_roles_menus` VALUES (732, 12, 44, 1);
INSERT INTO `sys_roles_menus` VALUES (733, 12, 45, 1);
INSERT INTO `sys_roles_menus` VALUES (734, 12, 46, 1);
INSERT INTO `sys_roles_menus` VALUES (735, 12, 47, 1);
INSERT INTO `sys_roles_menus` VALUES (736, 12, 48, 1);
INSERT INTO `sys_roles_menus` VALUES (737, 12, 49, 1);
INSERT INTO `sys_roles_menus` VALUES (738, 12, 50, 1);
INSERT INTO `sys_roles_menus` VALUES (739, 12, 51, 1);
INSERT INTO `sys_roles_menus` VALUES (740, 12, 74, 1);
INSERT INTO `sys_roles_menus` VALUES (741, 12, 52, 1);
INSERT INTO `sys_roles_menus` VALUES (742, 12, 53, 1);
INSERT INTO `sys_roles_menus` VALUES (743, 12, 54, 1);
INSERT INTO `sys_roles_menus` VALUES (744, 12, 55, 1);
INSERT INTO `sys_roles_menus` VALUES (745, 12, 56, 1);
INSERT INTO `sys_roles_menus` VALUES (746, 12, 57, 1);
INSERT INTO `sys_roles_menus` VALUES (747, 12, 25, 1);
INSERT INTO `sys_roles_menus` VALUES (748, 12, 58, 1);
INSERT INTO `sys_roles_menus` VALUES (749, 12, 59, 1);
INSERT INTO `sys_roles_menus` VALUES (750, 12, 26, 1);
INSERT INTO `sys_roles_menus` VALUES (751, 12, 27, 1);
INSERT INTO `sys_roles_menus` VALUES (752, 12, 60, 1);
INSERT INTO `sys_roles_menus` VALUES (753, 12, 61, 1);
INSERT INTO `sys_roles_menus` VALUES (754, 12, 62, 1);
INSERT INTO `sys_roles_menus` VALUES (755, 12, 63, 1);
INSERT INTO `sys_roles_menus` VALUES (756, 12, 64, 1);
INSERT INTO `sys_roles_menus` VALUES (757, 12, 65, 1);
INSERT INTO `sys_roles_menus` VALUES (758, 12, 66, 1);
INSERT INTO `sys_roles_menus` VALUES (759, 12, 67, 1);
INSERT INTO `sys_roles_menus` VALUES (760, 12, 68, 1);
INSERT INTO `sys_roles_menus` VALUES (761, 12, 69, 1);
INSERT INTO `sys_roles_menus` VALUES (763, 1, 1, 1);
INSERT INTO `sys_roles_menus` VALUES (764, 1, 2, 1);
INSERT INTO `sys_roles_menus` VALUES (765, 1, 18, 1);
INSERT INTO `sys_roles_menus` VALUES (766, 1, 21, 1);
INSERT INTO `sys_roles_menus` VALUES (767, 1, 22, 1);
INSERT INTO `sys_roles_menus` VALUES (768, 1, 23, 1);
INSERT INTO `sys_roles_menus` VALUES (769, 1, 19, 1);
INSERT INTO `sys_roles_menus` VALUES (770, 1, 14, 1);
INSERT INTO `sys_roles_menus` VALUES (771, 1, 15, 1);
INSERT INTO `sys_roles_menus` VALUES (772, 1, 16, 1);
INSERT INTO `sys_roles_menus` VALUES (773, 1, 70, 1);
INSERT INTO `sys_roles_menus` VALUES (774, 1, 71, 1);
INSERT INTO `sys_roles_menus` VALUES (775, 1, 72, 1);
INSERT INTO `sys_roles_menus` VALUES (776, 1, 28, 1);
INSERT INTO `sys_roles_menus` VALUES (777, 1, 17, 1);
INSERT INTO `sys_roles_menus` VALUES (778, 1, 20, 1);
INSERT INTO `sys_roles_menus` VALUES (779, 1, 24, 1);
INSERT INTO `sys_roles_menus` VALUES (780, 1, 29, 1);
INSERT INTO `sys_roles_menus` VALUES (781, 1, 30, 1);
INSERT INTO `sys_roles_menus` VALUES (782, 1, 31, 1);
INSERT INTO `sys_roles_menus` VALUES (783, 1, 32, 1);
INSERT INTO `sys_roles_menus` VALUES (784, 1, 33, 1);
INSERT INTO `sys_roles_menus` VALUES (785, 1, 34, 1);
INSERT INTO `sys_roles_menus` VALUES (786, 1, 73, 1);
INSERT INTO `sys_roles_menus` VALUES (787, 1, 35, 1);
INSERT INTO `sys_roles_menus` VALUES (788, 1, 36, 1);
INSERT INTO `sys_roles_menus` VALUES (789, 1, 37, 1);
INSERT INTO `sys_roles_menus` VALUES (790, 1, 38, 1);
INSERT INTO `sys_roles_menus` VALUES (791, 1, 39, 1);
INSERT INTO `sys_roles_menus` VALUES (792, 1, 40, 1);
INSERT INTO `sys_roles_menus` VALUES (793, 1, 41, 1);
INSERT INTO `sys_roles_menus` VALUES (794, 1, 42, 1);
INSERT INTO `sys_roles_menus` VALUES (795, 1, 43, 1);
INSERT INTO `sys_roles_menus` VALUES (796, 1, 44, 1);
INSERT INTO `sys_roles_menus` VALUES (797, 1, 45, 1);
INSERT INTO `sys_roles_menus` VALUES (798, 1, 46, 1);
INSERT INTO `sys_roles_menus` VALUES (799, 1, 47, 1);
INSERT INTO `sys_roles_menus` VALUES (800, 1, 48, 1);
INSERT INTO `sys_roles_menus` VALUES (801, 1, 49, 1);
INSERT INTO `sys_roles_menus` VALUES (802, 1, 50, 1);
INSERT INTO `sys_roles_menus` VALUES (803, 1, 51, 1);
INSERT INTO `sys_roles_menus` VALUES (804, 1, 74, 1);
INSERT INTO `sys_roles_menus` VALUES (805, 1, 52, 1);
INSERT INTO `sys_roles_menus` VALUES (806, 1, 53, 1);
INSERT INTO `sys_roles_menus` VALUES (807, 1, 54, 1);
INSERT INTO `sys_roles_menus` VALUES (808, 1, 55, 1);
INSERT INTO `sys_roles_menus` VALUES (809, 1, 57, 1);
INSERT INTO `sys_roles_menus` VALUES (810, 1, 56, 1);
INSERT INTO `sys_roles_menus` VALUES (812, 1, 25, 1);
INSERT INTO `sys_roles_menus` VALUES (813, 1, 26, 1);
INSERT INTO `sys_roles_menus` VALUES (814, 1, 27, 1);
INSERT INTO `sys_roles_menus` VALUES (815, 1, 58, 1);
INSERT INTO `sys_roles_menus` VALUES (816, 1, 59, 1);
INSERT INTO `sys_roles_menus` VALUES (817, 1, 60, 1);
INSERT INTO `sys_roles_menus` VALUES (818, 1, 61, 1);
INSERT INTO `sys_roles_menus` VALUES (819, 1, 62, 1);
INSERT INTO `sys_roles_menus` VALUES (820, 1, 63, 1);
INSERT INTO `sys_roles_menus` VALUES (821, 1, 64, 1);
INSERT INTO `sys_roles_menus` VALUES (822, 1, 65, 1);
INSERT INTO `sys_roles_menus` VALUES (823, 1, 66, 1);
INSERT INTO `sys_roles_menus` VALUES (824, 1, 67, 1);
INSERT INTO `sys_roles_menus` VALUES (825, 1, 68, 1);
INSERT INTO `sys_roles_menus` VALUES (826, 1, 69, 1);
INSERT INTO `sys_roles_menus` VALUES (827, 1, 3, 1);
INSERT INTO `sys_roles_menus` VALUES (828, 1, 4, 1);
INSERT INTO `sys_roles_menus` VALUES (829, 1, 5, 1);
INSERT INTO `sys_roles_menus` VALUES (830, 1, 6, 1);
INSERT INTO `sys_roles_menus` VALUES (831, 1, 7, 1);
INSERT INTO `sys_roles_menus` VALUES (832, 1, 8, 1);
INSERT INTO `sys_roles_menus` VALUES (833, 1, 9, 1);
INSERT INTO `sys_roles_menus` VALUES (834, 1, 10, 1);
INSERT INTO `sys_roles_menus` VALUES (835, 1, 11, 1);
INSERT INTO `sys_roles_menus` VALUES (836, 11, 1, 1);
INSERT INTO `sys_roles_menus` VALUES (837, 11, 2, 1);
INSERT INTO `sys_roles_menus` VALUES (838, 11, 18, 1);
INSERT INTO `sys_roles_menus` VALUES (839, 11, 21, 1);
INSERT INTO `sys_roles_menus` VALUES (840, 11, 22, 1);
INSERT INTO `sys_roles_menus` VALUES (841, 11, 23, 1);
INSERT INTO `sys_roles_menus` VALUES (842, 11, 19, 1);
INSERT INTO `sys_roles_menus` VALUES (843, 11, 70, 1);
INSERT INTO `sys_roles_menus` VALUES (844, 11, 71, 1);
INSERT INTO `sys_roles_menus` VALUES (845, 11, 72, 1);
INSERT INTO `sys_roles_menus` VALUES (846, 11, 28, 1);
INSERT INTO `sys_roles_menus` VALUES (847, 11, 17, 1);
INSERT INTO `sys_roles_menus` VALUES (848, 11, 20, 1);
INSERT INTO `sys_roles_menus` VALUES (849, 11, 24, 1);
INSERT INTO `sys_roles_menus` VALUES (850, 11, 29, 1);
INSERT INTO `sys_roles_menus` VALUES (851, 11, 30, 1);
INSERT INTO `sys_roles_menus` VALUES (852, 11, 31, 1);
INSERT INTO `sys_roles_menus` VALUES (853, 11, 32, 1);
INSERT INTO `sys_roles_menus` VALUES (854, 11, 33, 1);
INSERT INTO `sys_roles_menus` VALUES (855, 11, 34, 1);
INSERT INTO `sys_roles_menus` VALUES (856, 11, 73, 1);
INSERT INTO `sys_roles_menus` VALUES (857, 11, 35, 1);
INSERT INTO `sys_roles_menus` VALUES (858, 11, 36, 1);
INSERT INTO `sys_roles_menus` VALUES (859, 11, 37, 1);
INSERT INTO `sys_roles_menus` VALUES (860, 11, 38, 1);
INSERT INTO `sys_roles_menus` VALUES (861, 11, 39, 1);
INSERT INTO `sys_roles_menus` VALUES (862, 11, 40, 1);
INSERT INTO `sys_roles_menus` VALUES (863, 11, 41, 1);
INSERT INTO `sys_roles_menus` VALUES (864, 11, 42, 1);
INSERT INTO `sys_roles_menus` VALUES (865, 11, 43, 1);
INSERT INTO `sys_roles_menus` VALUES (866, 11, 44, 1);
INSERT INTO `sys_roles_menus` VALUES (867, 11, 45, 1);
INSERT INTO `sys_roles_menus` VALUES (868, 11, 46, 1);
INSERT INTO `sys_roles_menus` VALUES (869, 11, 47, 1);
INSERT INTO `sys_roles_menus` VALUES (870, 11, 48, 1);
INSERT INTO `sys_roles_menus` VALUES (871, 11, 49, 1);
INSERT INTO `sys_roles_menus` VALUES (872, 11, 50, 1);
INSERT INTO `sys_roles_menus` VALUES (873, 11, 51, 1);
INSERT INTO `sys_roles_menus` VALUES (874, 11, 74, 1);
INSERT INTO `sys_roles_menus` VALUES (875, 11, 52, 1);
INSERT INTO `sys_roles_menus` VALUES (876, 11, 53, 1);
INSERT INTO `sys_roles_menus` VALUES (877, 11, 54, 1);
INSERT INTO `sys_roles_menus` VALUES (878, 11, 55, 1);
INSERT INTO `sys_roles_menus` VALUES (879, 11, 57, 1);
INSERT INTO `sys_roles_menus` VALUES (880, 11, 56, 1);
INSERT INTO `sys_roles_menus` VALUES (882, 11, 63, 1);
INSERT INTO `sys_roles_menus` VALUES (883, 11, 64, 1);
INSERT INTO `sys_roles_menus` VALUES (884, 11, 65, 1);
INSERT INTO `sys_roles_menus` VALUES (885, 11, 66, 1);
INSERT INTO `sys_roles_menus` VALUES (886, 11, 67, 1);
INSERT INTO `sys_roles_menus` VALUES (887, 11, 68, 1);
INSERT INTO `sys_roles_menus` VALUES (888, 11, 69, 1);

-- ----------------------------
-- Table structure for sys_roles_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_permissions`;
CREATE TABLE `sys_roles_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_roles_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES (1, 1, 1);
INSERT INTO `sys_users_roles` VALUES (12, 9, 4);
INSERT INTO `sys_users_roles` VALUES (14, 11, 5);
INSERT INTO `sys_users_roles` VALUES (15, 7, 3);
INSERT INTO `sys_users_roles` VALUES (16, 8, 7);
INSERT INTO `sys_users_roles` VALUES (17, 10, 8);
INSERT INTO `sys_users_roles` VALUES (19, 12, 9);

-- ----------------------------
-- Table structure for tariff_standard
-- ----------------------------
DROP TABLE IF EXISTS `tariff_standard`;
CREATE TABLE `tariff_standard`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tariff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '资费标准名称',
  `tariff_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '资费标准类型 0市话 1国内长途 2国际长途',
  `tariff_amount` decimal(8, 2) NOT NULL COMMENT '资费金额',
  `start_at` date NULL DEFAULT NULL COMMENT '资费标准开始时间',
  `end_at` date NULL DEFAULT NULL COMMENT '资费标准结束时间',
  `enabled` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用 0否 1是',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资费标准表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tariff_standard
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '详细信息',
  `department_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '部门id',
  `user_type` int(11) NULL DEFAULT NULL COMMENT '职务',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'token',
  `job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '职位/职务',
  `security_level` int(11) NOT NULL COMMENT '安全级别',
  `last_login` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `users_department_id_foreign`(`department_id`) USING BTREE,
  CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `sys_departments` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '管理员', NULL, 'admin@admin.com', NULL, '$2y$10$q7IuhSqsnGL5g3CNQEypleEuDMZrJyQImZqwSlLEORMoGHBp9u9.u', '管理员', 1, 0, NULL, NULL, 0, '2020-11-02 11:02:50', '2020-10-20 15:19:50', '2020-11-02 11:02:50');
INSERT INTO `users` VALUES (3, 'yewu', '业务', NULL, NULL, NULL, '$2y$10$GUemiBTpA9AhEAQ8ae9yFuSJ42LCqObaj03xH5lqMKDFbKkNzw3Qu', NULL, 2, 0, NULL, NULL, 74, NULL, '2020-10-21 18:01:44', '2020-11-10 15:41:27');
INSERT INTO `users` VALUES (4, 'xianlu', '线路', NULL, NULL, NULL, '$2y$10$LhAw0wbsYRFe74y1BInK8e11FE1.UmAq7FimfzGiYM4xGmPySHK7C', NULL, 2, 0, NULL, NULL, 58, NULL, '2020-10-21 18:08:21', '2020-11-03 11:12:17');
INSERT INTO `users` VALUES (5, 'shoufei', '收费', NULL, NULL, NULL, '$2y$10$n1VEXziCBkVZLAQ.pLryO.LakBfD1F6g8tzV0IxSdlN/6aEK4TC1q', NULL, 2, 0, NULL, NULL, 58, NULL, '2020-10-21 18:12:35', '2020-11-03 11:12:50');
INSERT INTO `users` VALUES (7, 'celiang', '测量', NULL, NULL, NULL, '$2y$10$0dxHzoJDJ6Lt0bhS5vPPR.AJXwpFaywkge/xfta0FVNFDa.EvWMjy', NULL, 2, 0, NULL, NULL, 50, NULL, '2020-11-15 22:30:52', NULL);
INSERT INTO `users` VALUES (8, 'jifang', '机房', NULL, NULL, NULL, '$2y$10$zjG4V07gGuqXvTWFbwI.TuLlmsQt29lA0167Gx2tXcpwrTtNZRNQ6', NULL, 2, 0, NULL, NULL, 50, NULL, '2020-11-15 22:31:21', NULL);
INSERT INTO `users` VALUES (9, 'shanxi', '陕西', NULL, NULL, NULL, '$2y$10$/kL1KbXsf6TuU5Kh36IYveblhrCMewQCu3cLplj7dm/yxIUAPEiB2', NULL, 1, 0, NULL, NULL, 50, NULL, '2020-11-27 10:21:46', '2020-11-27 15:26:58');

-- ----------------------------
-- Table structure for workflow
-- ----------------------------
DROP TABLE IF EXISTS `workflow`;
CREATE TABLE `workflow`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `workflow_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '工作流名称',
  `workflow_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '工作流标记',
  `enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否启用',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `workflow_workflow_key_unique`(`workflow_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workflow
-- ----------------------------
INSERT INTO `workflow` VALUES (1, '装机申请', 'workfolw_install', 1, '2020-11-02 15:49:44', '2020-11-02 15:49:44');

-- ----------------------------
-- Table structure for workflow_log
-- ----------------------------
DROP TABLE IF EXISTS `workflow_log`;
CREATE TABLE `workflow_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `apply_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请单key',
  `apply_id` int(11) NULL DEFAULT NULL COMMENT '申请单ID',
  `node_id` int(11) NULL DEFAULT NULL COMMENT '当前所处工作流节点ID',
  `status` int(11) NULL DEFAULT NULL COMMENT '当前状态',
  `result_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审批结果名称',
  `reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作理由',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workflow_log
-- ----------------------------
INSERT INTO `workflow_log` VALUES (44, 'scs_install', 41, 1, 1, '保存', NULL, '2020-11-22 22:28:28', '2020-11-22 22:28:28');
INSERT INTO `workflow_log` VALUES (45, 'scs_install', 41, 1, 1, '保存', NULL, '2020-11-22 22:28:46', '2020-11-22 22:28:46');
INSERT INTO `workflow_log` VALUES (46, 'scs_install', 41, 1, 2, '提交', NULL, '2020-11-22 22:28:50', '2020-11-22 22:28:50');
INSERT INTO `workflow_log` VALUES (47, 'scs_install', 41, 2, 4, '竣工', NULL, '2020-11-22 22:36:03', '2020-11-22 22:36:03');
INSERT INTO `workflow_log` VALUES (48, 'scs_install', 41, 5, 3, '归档', NULL, '2020-11-22 22:36:35', '2020-11-22 22:36:35');
INSERT INTO `workflow_log` VALUES (49, 'scs_install', 42, 1, 2, '提交', NULL, '2020-11-25 12:12:48', '2020-11-25 12:12:48');
INSERT INTO `workflow_log` VALUES (50, 'scs_install', 43, 1, 2, '提交', NULL, '2020-11-30 16:55:03', '2020-11-30 16:55:03');
INSERT INTO `workflow_log` VALUES (51, 'scs_install', 43, 3, 4, '竣工', NULL, '2020-11-30 17:04:29', '2020-11-30 17:04:29');
INSERT INTO `workflow_log` VALUES (52, 'scs_install', 43, 5, 3, '归档', NULL, '2020-11-30 17:08:07', '2020-11-30 17:08:07');
INSERT INTO `workflow_log` VALUES (53, 'scs_install', 44, 1, 2, '提交', NULL, '2020-12-01 11:35:35', '2020-12-01 11:35:35');
INSERT INTO `workflow_log` VALUES (54, 'scs_install', 45, 1, 1, '保存', NULL, '2020-12-01 13:44:17', '2020-12-01 13:44:17');
INSERT INTO `workflow_log` VALUES (55, 'scs_install', 45, 1, 1, '保存', NULL, '2020-12-01 13:45:46', '2020-12-01 13:45:46');
INSERT INTO `workflow_log` VALUES (56, 'scs_install', 45, 1, 2, '提交', NULL, '2020-12-01 13:46:06', '2020-12-01 13:46:06');
INSERT INTO `workflow_log` VALUES (57, 'scs_install', 45, 3, 4, '竣工', NULL, '2020-12-01 13:48:54', '2020-12-01 13:48:54');
INSERT INTO `workflow_log` VALUES (58, 'scs_install', 45, 5, 3, '归档', NULL, '2020-12-01 13:49:46', '2020-12-01 13:49:46');
INSERT INTO `workflow_log` VALUES (59, 'scs_install', 44, 3, 4, '竣工', NULL, '2020-12-01 15:00:17', '2020-12-01 15:00:17');
INSERT INTO `workflow_log` VALUES (60, 'scs_install', 1, 1, 2, '提交', NULL, '2020-12-13 20:45:13', '2020-12-13 20:45:13');
INSERT INTO `workflow_log` VALUES (61, 'scs_install', 2, 1, 2, '提交', NULL, '2020-12-13 21:13:09', '2020-12-13 21:13:09');
INSERT INTO `workflow_log` VALUES (62, 'scs_install', 3, 1, 2, '提交', NULL, '2020-12-13 21:16:06', '2020-12-13 21:16:06');
INSERT INTO `workflow_log` VALUES (63, 'scs_install', 4, 1, 2, '提交', NULL, '2020-12-13 21:41:51', '2020-12-13 21:41:51');
INSERT INTO `workflow_log` VALUES (64, 'scs_install', 5, 1, 2, '提交', NULL, '2020-12-13 21:43:50', '2020-12-13 21:43:50');
INSERT INTO `workflow_log` VALUES (65, 'scs_install', 6, 1, 2, '提交', NULL, '2020-12-14 19:11:36', '2020-12-14 19:11:36');
INSERT INTO `workflow_log` VALUES (66, 'scs_install', 7, 1, 2, '提交', NULL, '2020-12-18 15:55:14', '2020-12-18 15:55:14');
INSERT INTO `workflow_log` VALUES (67, 'scs_install', 8, 1, 2, '提交', NULL, '2020-12-18 16:18:10', '2020-12-18 16:18:10');
INSERT INTO `workflow_log` VALUES (68, 'scs_install', 9, 1, 2, '提交', NULL, '2020-12-18 16:18:58', '2020-12-18 16:18:58');
INSERT INTO `workflow_log` VALUES (69, 'scs_install', 10, 1, 2, '提交', NULL, '2020-12-20 18:33:01', '2020-12-20 18:33:01');
INSERT INTO `workflow_log` VALUES (70, 'scs_install', 11, 1, 2, '提交', NULL, '2020-12-20 19:45:07', '2020-12-20 19:45:07');
INSERT INTO `workflow_log` VALUES (71, 'scs_install', 12, 1, 2, '提交', NULL, '2020-12-21 11:07:19', '2020-12-21 11:07:19');
INSERT INTO `workflow_log` VALUES (72, 'scs_install', 13, 1, 2, '提交', NULL, '2020-12-21 11:30:18', '2020-12-21 11:30:18');
INSERT INTO `workflow_log` VALUES (73, 'scs_install', 14, 1, 2, '提交', NULL, '2020-12-21 11:33:50', '2020-12-21 11:33:50');
INSERT INTO `workflow_log` VALUES (74, 'scs_install', 15, 1, 2, '提交', NULL, '2020-12-21 14:59:36', '2020-12-21 14:59:36');
INSERT INTO `workflow_log` VALUES (75, 'scs_install', 15, 2, 4, '竣工', NULL, '2020-12-21 15:02:15', '2020-12-21 15:02:15');
INSERT INTO `workflow_log` VALUES (76, 'scs_install', 15, 5, 3, '归档', NULL, '2020-12-21 15:08:58', '2020-12-21 15:08:58');
INSERT INTO `workflow_log` VALUES (77, 'scs_install', 16, 1, 2, '提交', NULL, '2020-12-21 15:48:56', '2020-12-21 15:48:56');

-- ----------------------------
-- Table structure for workflow_node
-- ----------------------------
DROP TABLE IF EXISTS `workflow_node`;
CREATE TABLE `workflow_node`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `node_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '节点名称',
  `node_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '节点标记',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色ID',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '节点类型',
  `workflow_id` bigint(20) UNSIGNED NOT NULL COMMENT '人员ID',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `workflow_node_node_key_unique`(`node_key`) USING BTREE,
  INDEX `workflow_node_workflow_id_foreign`(`workflow_id`) USING BTREE,
  CONSTRAINT `workflow_node_workflow_id_foreign` FOREIGN KEY (`workflow_id`) REFERENCES `workflow` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workflow_node
-- ----------------------------
INSERT INTO `workflow_node` VALUES (1, '业务', 'install_yw', 7, NULL, 1, '2020-11-02 15:51:43', '2020-11-02 15:51:43');
INSERT INTO `workflow_node` VALUES (2, '测量', 'install_cl', 8, NULL, 1, '2020-11-02 15:51:43', '2020-11-02 15:51:43');
INSERT INTO `workflow_node` VALUES (3, '线路', 'install_xl', 9, NULL, 1, '2020-11-02 15:51:43', '2020-11-02 15:51:43');
INSERT INTO `workflow_node` VALUES (4, '机房', 'install_jf', 10, NULL, 1, '2020-11-02 15:51:43', '2020-11-02 15:51:43');
INSERT INTO `workflow_node` VALUES (5, '话务', 'install_hw', 11, NULL, 1, '2020-11-02 15:51:43', '2020-11-02 15:51:43');

-- ----------------------------
-- Table structure for workflow_node_program
-- ----------------------------
DROP TABLE IF EXISTS `workflow_node_program`;
CREATE TABLE `workflow_node_program`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '流转名称',
  `node_id` bigint(20) UNSIGNED NOT NULL COMMENT '节点ID',
  `next_node_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '下个节点ID',
  `condition` json NULL COMMENT '条件',
  `result_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审批结果名称',
  `result_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审批结果标识',
  `result_status` int(11) NULL DEFAULT NULL COMMENT '审批结果状态值',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `workflow_node_program_node_id_foreign`(`node_id`) USING BTREE,
  CONSTRAINT `workflow_node_program_node_id_foreign` FOREIGN KEY (`node_id`) REFERENCES `workflow_node` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workflow_node_program
-- ----------------------------
INSERT INTO `workflow_node_program` VALUES (1, '业务保存申请', 1, '1', NULL, '保存', 'save', 1, '2020-01-11 14:29:21', NULL);
INSERT INTO `workflow_node_program` VALUES (2, '业务保存提交', 1, '2,3,4', NULL, '提交', 'submit', 2, '2020-01-11 14:29:21', NULL);
INSERT INTO `workflow_node_program` VALUES (3, '机房竣工', 2, '5', NULL, '竣工', 'completed', 4, '2020-01-11 14:29:21', NULL);
INSERT INTO `workflow_node_program` VALUES (4, '测量竣工', 3, '5', NULL, '竣工', 'completed', 4, '2020-01-11 14:29:21', NULL);
INSERT INTO `workflow_node_program` VALUES (5, '线路竣工', 4, '5', NULL, '竣工', 'completed', 4, '2020-01-11 14:29:21', NULL);
INSERT INTO `workflow_node_program` VALUES (6, '线路撤单', 4, '5', NULL, '撤单', 'cancel', 0, '2020-01-11 14:29:21', NULL);
INSERT INTO `workflow_node_program` VALUES (7, '话务归档', 5, '0', NULL, '归档', 'file', 3, '2020-01-11 14:29:21', NULL);

-- ----------------------------
-- Table structure for workflow_process
-- ----------------------------
DROP TABLE IF EXISTS `workflow_process`;
CREATE TABLE `workflow_process`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `apply_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请单key',
  `apply_id` int(11) NULL DEFAULT NULL COMMENT '申请单ID',
  `node_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '当前所处工作流节点ID',
  `status` int(11) NULL DEFAULT NULL COMMENT '当前状态',
  `result_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '操作结果',
  `reason` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审批结果名称',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of workflow_process
-- ----------------------------
INSERT INTO `workflow_process` VALUES (27, 'scs_install', 41, '0', 3, '归档', NULL, '2020-11-22 22:28:28', '2020-11-22 22:36:35');
INSERT INTO `workflow_process` VALUES (28, 'scs_install', 42, '2,3,4', 2, '提交', NULL, '2020-11-25 12:12:48', '2020-11-25 12:12:48');
INSERT INTO `workflow_process` VALUES (29, 'scs_install', 43, '0', 3, '归档', NULL, '2020-11-30 16:55:03', '2020-11-30 17:08:07');
INSERT INTO `workflow_process` VALUES (30, 'scs_install', 44, '5', 4, '竣工', NULL, '2020-12-01 11:35:35', '2020-12-01 15:00:17');
INSERT INTO `workflow_process` VALUES (31, 'scs_install', 45, '0', 3, '归档', NULL, '2020-12-01 13:44:17', '2020-12-01 13:49:46');
INSERT INTO `workflow_process` VALUES (32, 'scs_install', 1, '2,3,4', 2, '提交', NULL, '2020-12-13 20:45:13', '2020-12-13 20:45:13');
INSERT INTO `workflow_process` VALUES (33, 'scs_install', 2, '2,3,4', 2, '提交', NULL, '2020-12-13 21:13:09', '2020-12-13 21:13:09');
INSERT INTO `workflow_process` VALUES (34, 'scs_install', 3, '2,3,4', 2, '提交', NULL, '2020-12-13 21:16:06', '2020-12-13 21:16:06');
INSERT INTO `workflow_process` VALUES (35, 'scs_install', 4, '2,3,4', 2, '提交', NULL, '2020-12-13 21:41:51', '2020-12-13 21:41:51');
INSERT INTO `workflow_process` VALUES (36, 'scs_install', 5, '2,3,4', 2, '提交', NULL, '2020-12-13 21:43:50', '2020-12-13 21:43:50');
INSERT INTO `workflow_process` VALUES (37, 'scs_install', 6, '2,3,4', 2, '提交', NULL, '2020-12-14 19:11:36', '2020-12-14 19:11:36');
INSERT INTO `workflow_process` VALUES (38, 'scs_install', 7, '2,3,4', 2, '提交', NULL, '2020-12-18 15:55:14', '2020-12-18 15:55:14');
INSERT INTO `workflow_process` VALUES (39, 'scs_install', 8, '2,3,4', 2, '提交', NULL, '2020-12-18 16:18:10', '2020-12-18 16:18:10');
INSERT INTO `workflow_process` VALUES (40, 'scs_install', 9, '2,3,4', 2, '提交', NULL, '2020-12-18 16:18:58', '2020-12-18 16:18:58');
INSERT INTO `workflow_process` VALUES (41, 'scs_install', 10, '2,3,4', 2, '提交', NULL, '2020-12-20 18:33:01', '2020-12-20 18:33:01');
INSERT INTO `workflow_process` VALUES (42, 'scs_install', 11, '2,3,4', 2, '提交', NULL, '2020-12-20 19:45:07', '2020-12-20 19:45:07');
INSERT INTO `workflow_process` VALUES (43, 'scs_install', 12, '2,3,4', 2, '提交', NULL, '2020-12-21 11:07:19', '2020-12-21 11:07:19');
INSERT INTO `workflow_process` VALUES (44, 'scs_install', 13, '2,3,4', 2, '提交', NULL, '2020-12-21 11:30:18', '2020-12-21 11:30:18');
INSERT INTO `workflow_process` VALUES (45, 'scs_install', 14, '2,3,4', 2, '提交', NULL, '2020-12-21 11:33:50', '2020-12-21 11:33:50');
INSERT INTO `workflow_process` VALUES (46, 'scs_install', 15, '0', 3, '归档', NULL, '2020-12-21 14:59:36', '2020-12-21 15:08:58');
INSERT INTO `workflow_process` VALUES (47, 'scs_install', 16, '2,3,4', 2, '提交', NULL, '2020-12-21 15:48:56', '2020-12-21 15:48:56');

SET FOREIGN_KEY_CHECKS = 1;
