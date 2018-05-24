/*
 Navicat MySQL Data Transfer

 Source Server         : 172.16.0.50
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : 172.16.0.50:3306
 Source Schema         : tcc

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 23/05/2018 20:58:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for TCC_TRANSACTION_CAP
-- ----------------------------
DROP TABLE IF EXISTS `TCC_TRANSACTION_CAP`;
CREATE TABLE `TCC_TRANSACTION_CAP`  (
  `TRANSACTION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOMAIN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `GLOBAL_TX_ID` varbinary(32) NOT NULL,
  `BRANCH_QUALIFIER` varbinary(32) NOT NULL,
  `CONTENT` varbinary(8000) NULL DEFAULT NULL,
  `STATUS` int(11) NULL DEFAULT NULL,
  `TRANSACTION_TYPE` int(11) NULL DEFAULT NULL,
  `RETRIED_COUNT` int(11) NULL DEFAULT NULL,
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime(0) NULL DEFAULT NULL,
  `VERSION` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`TRANSACTION_ID`) USING BTREE,
  UNIQUE INDEX `UX_TX_BQ`(`GLOBAL_TX_ID`, `BRANCH_QUALIFIER`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
