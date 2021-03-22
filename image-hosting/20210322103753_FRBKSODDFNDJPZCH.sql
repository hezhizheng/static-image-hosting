/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.1.11
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 192.168.1.11:3306
 Source Schema         : dg_tfbmall

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 30/12/2020 17:18:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_datacenter_jobs
-- ----------------------------
DROP TABLE IF EXISTS `tb_datacenter_jobs`;
CREATE TABLE `tb_datacenter_jobs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `command` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event_payorder` tinyint(1) NOT NULL DEFAULT 0,
  `event_inpage` tinyint(1) NOT NULL DEFAULT 0,
  `event_goodsshare` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = ' ' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_datacenter_jobs
-- ----------------------------
INSERT INTO `tb_datacenter_jobs` VALUES (1, '偏移激励活动-选品维度', 'datas/award/xpwd', 1, 1, 1);
INSERT INTO `tb_datacenter_jobs` VALUES (3, '偏移激励活动-历史数据', 'datas/award/history', 1, 0, 1);

SET FOREIGN_KEY_CHECKS = 1;
