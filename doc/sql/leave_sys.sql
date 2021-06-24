/*
 Navicat Premium Data Transfer

 Source Server         : fonrye
 Source Server Type    : MySQL
 Source Server Version : 50729
 Source Host           : localhost:3306
 Source Schema         : leave_sys

 Target Server Type    : MySQL
 Target Server Version : 50729
 File Encoding         : 65001

 Date: 27/05/2021 15:50:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_account
-- ----------------------------
DROP TABLE IF EXISTS `sys_account`;
CREATE TABLE `sys_account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1-学生 2-管理员 3-辅导员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_account
-- ----------------------------
INSERT INTO `sys_account` VALUES (1, '1', '1', '1');
INSERT INTO `sys_account` VALUES (2, '2', '2', '2');
INSERT INTO `sys_account` VALUES (3, '3', '3', '3');

-- ----------------------------
-- Table structure for sys_classes
-- ----------------------------
DROP TABLE IF EXISTS `sys_classes`;
CREATE TABLE `sys_classes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `depID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 123 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_classes
-- ----------------------------
INSERT INTO `sys_classes` VALUES (3, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (4, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (5, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (6, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (12, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (14, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (22, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (25, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (26, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (27, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (28, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (29, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (30, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (31, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (32, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (33, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (34, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (35, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (36, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (37, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (38, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (39, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (40, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (44, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (45, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (46, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (47, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (48, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (49, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (50, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (51, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (52, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (53, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (54, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (55, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (56, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (57, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (58, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (59, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (60, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (61, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (62, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (63, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (64, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (65, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (66, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (67, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (75, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (76, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (77, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (78, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (79, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (80, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (81, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (82, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (83, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (84, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (85, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (86, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (87, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (88, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (89, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (90, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (91, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (92, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (93, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (94, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (95, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (96, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (97, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (98, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (99, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (100, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (101, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (102, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (103, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (104, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (105, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (106, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (107, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (108, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (109, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (110, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (111, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (112, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (113, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (114, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (115, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (116, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (117, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (118, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (119, '18软件工程1班', 'A201801', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (120, '18软件工程2班', 'A201802', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (121, '18软件工程3班', 'A201803', 'G1', '2018', '软件工程');
INSERT INTO `sys_classes` VALUES (122, '18软件工程4班', 'A201804', 'G1', '2018', '软件工程');

-- ----------------------------
-- Table structure for sys_course
-- ----------------------------
DROP TABLE IF EXISTS `sys_course`;
CREATE TABLE `sys_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `year` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `term` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hour` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_course
-- ----------------------------
INSERT INTO `sys_course` VALUES (1, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (2, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (3, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (4, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (6, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (7, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (8, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (15, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (16, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (17, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (18, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (19, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (20, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (28, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (29, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (30, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (31, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (32, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (33, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (34, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (35, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (36, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (37, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');
INSERT INTO `sys_course` VALUES (38, 'cour1801', 'c109', '数据库原理', '2022', '2', '27h');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `depName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES (1, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (2, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (3, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (6, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (9, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (10, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (11, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (12, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (13, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (14, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (15, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (16, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (17, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (18, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (19, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (20, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (21, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (22, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (23, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (24, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (25, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (26, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (27, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (28, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (29, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (30, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (31, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (32, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (34, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (35, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (36, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (37, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (38, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (39, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (40, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (41, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (42, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (43, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (44, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (45, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (46, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (47, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (48, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (49, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (50, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (51, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (52, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (53, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (54, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (55, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (56, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (57, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (58, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (59, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (60, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (61, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (65, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (66, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (67, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (68, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (69, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (70, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (71, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (72, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (73, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (74, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (75, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (76, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (77, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (78, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (79, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (80, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (81, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (82, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (83, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (84, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (85, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (86, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (87, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (88, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (89, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (90, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (91, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (92, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (93, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (94, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (95, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (96, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (97, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (98, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (99, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (100, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (101, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (102, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (103, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (104, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (105, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (106, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (107, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (108, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (109, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (110, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (111, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (112, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (113, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (114, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (115, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (116, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (117, 'G3', '外国语学院');
INSERT INTO `sys_department` VALUES (118, 'G1', '大数据与软件工程学院');
INSERT INTO `sys_department` VALUES (119, 'G2', '电子与信息工程学院');
INSERT INTO `sys_department` VALUES (120, 'G3', '外国语学院');

-- ----------------------------
-- Table structure for sys_instructor
-- ----------------------------
DROP TABLE IF EXISTS `sys_instructor`;
CREATE TABLE `sys_instructor`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `depid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_instructor
-- ----------------------------
INSERT INTO `sys_instructor` VALUES (1, 'Admin', '123', '3333333333333', '北京市朝阳区霄云路50号');
INSERT INTO `sys_instructor` VALUES (2, 'Tellsea', 'fsdf', 'sss', '北京市朝阳区霄云路25乙102-103室');
INSERT INTO `sys_instructor` VALUES (3, 'Susan', 'fdstt4', '4354354@qq.com', '宝山区水产西路680弄4号906室');
INSERT INTO `sys_instructor` VALUES (4, 'Tomcat', 't5454tg', '4354353@qq.com', '北京海淀区上地五街群英科技园5号楼2层');
INSERT INTO `sys_instructor` VALUES (5, 'Scott', '54ty45gh45', 'fdsfsfgwer@avd.ng', '杭州市 余杭区 阿里巴巴西溪园区');
INSERT INTO `sys_instructor` VALUES (6, 'Bigbang', '54y54', '543543@qq.com', '大连沙河口区服务业大厦');
INSERT INTO `sys_instructor` VALUES (7, 'SuperMan', '54y54', 'dsfdsf@fgd.cn', '北京北京方向A座，房天下大厦');
INSERT INTO `sys_instructor` VALUES (9, '杨幂', '45y5y5', 'fsdfsdfs@fgd.cn', '北京市 海淀区 北京市海淀区人民政府');
INSERT INTO `sys_instructor` VALUES (10, '吴奇隆', '54y54y', 'dsffdsgrweg@avd.ng', '北京海淀区上地五街群英科技园5号楼');
INSERT INTO `sys_instructor` VALUES (11, '周杰伦', 'y45y54y', '78mo987mi@fgd.cn', '北京朝阳区保利东郡9号楼D座1101');
INSERT INTO `sys_instructor` VALUES (12, '山羊羊', '54uty', 'sdtgt4ger@fgd.cn', '南通崇川区中南百货');
INSERT INTO `sys_instructor` VALUES (13, '欧巴', 'tretre', 'fgwergreg@fgd.cn', '北京北京方向A座，房天下大厦');
INSERT INTO `sys_instructor` VALUES (14, '44444', '444', 'fan@qq.com', 'ccccccccccc');
INSERT INTO `sys_instructor` VALUES (15, 'd', 'd', '666666666666', 'd');
INSERT INTO `sys_instructor` VALUES (16, 'ddddddddd', 'dd', 'ddd', 'dd55555555555555');
INSERT INTO `sys_instructor` VALUES (17, 'Admin', '123', '3333333333333', '北京市朝阳区霄云路50号');
INSERT INTO `sys_instructor` VALUES (18, 'Tellsea', 'fsdf', 'sss', '北京市朝阳区霄云路25乙102-103室');
INSERT INTO `sys_instructor` VALUES (19, 'Susan', 'fdstt4', '4354354@qq.com', '宝山区水产西路680弄4号906室');
INSERT INTO `sys_instructor` VALUES (20, 'Tomcat', 't5454tg', '4354353@qq.com', '北京海淀区上地五街群英科技园5号楼2层');
INSERT INTO `sys_instructor` VALUES (21, 'Scott', '54ty45gh45', 'fdsfsfgwer@avd.ng', '杭州市 余杭区 阿里巴巴西溪园区');
INSERT INTO `sys_instructor` VALUES (22, 'Bigbang', '54y54', '543543@qq.com', '大连沙河口区服务业大厦');
INSERT INTO `sys_instructor` VALUES (23, 'SuperMan', '54y54', 'dsfdsf@fgd.cn', '北京北京方向A座，房天下大厦');
INSERT INTO `sys_instructor` VALUES (24, '杨幂', '45y5y5', 'fsdfsdfs@fgd.cn', '北京市 海淀区 北京市海淀区人民政府');
INSERT INTO `sys_instructor` VALUES (25, '吴奇隆', '54y54y', 'dsffdsgrweg@avd.ng', '北京海淀区上地五街群英科技园5号楼');
INSERT INTO `sys_instructor` VALUES (26, '周杰伦', 'y45y54y', '78mo987mi@fgd.cn', '北京朝阳区保利东郡9号楼D座1101');
INSERT INTO `sys_instructor` VALUES (27, '山羊羊', '54uty', 'sdtgt4ger@fgd.cn', '南通崇川区中南百货');
INSERT INTO `sys_instructor` VALUES (28, '欧巴', 'tretre', 'fgwergreg@fgd.cn', '北京北京方向A座，房天下大厦');
INSERT INTO `sys_instructor` VALUES (29, '44444', '444', 'fan@qq.com', 'ccccccccccc');
INSERT INTO `sys_instructor` VALUES (30, 'd', 'd', '666666666666', 'd');
INSERT INTO `sys_instructor` VALUES (31, 'ddddddddd', 'dd', 'ddd', 'dd55555555555555');
INSERT INTO `sys_instructor` VALUES (32, 'Admin', '123', '3333333333333', '北京市朝阳区霄云路50号');
INSERT INTO `sys_instructor` VALUES (33, 'Tellsea', 'fsdf', 'sss', '北京市朝阳区霄云路25乙102-103室');
INSERT INTO `sys_instructor` VALUES (34, 'Susan', 'fdstt4', '4354354@qq.com', '宝山区水产西路680弄4号906室');
INSERT INTO `sys_instructor` VALUES (35, 'Tomcat', 't5454tg', '4354353@qq.com', '北京海淀区上地五街群英科技园5号楼2层');
INSERT INTO `sys_instructor` VALUES (36, 'Scott', '54ty45gh45', 'fdsfsfgwer@avd.ng', '杭州市 余杭区 阿里巴巴西溪园区');
INSERT INTO `sys_instructor` VALUES (37, 'Bigbang', '54y54', '543543@qq.com', '大连沙河口区服务业大厦');
INSERT INTO `sys_instructor` VALUES (38, 'SuperMan', '54y54', 'dsfdsf@fgd.cn', '北京北京方向A座，房天下大厦');
INSERT INTO `sys_instructor` VALUES (39, '杨幂', '45y5y5', 'fsdfsdfs@fgd.cn', '北京市 海淀区 北京市海淀区人民政府');
INSERT INTO `sys_instructor` VALUES (40, '吴奇隆', '54y54y', 'dsffdsgrweg@avd.ng', '北京海淀区上地五街群英科技园5号楼');
INSERT INTO `sys_instructor` VALUES (41, '周杰伦', 'y45y54y', '78mo987mi@fgd.cn', '北京朝阳区保利东郡9号楼D座1101');
INSERT INTO `sys_instructor` VALUES (42, '山羊羊', '54uty', 'sdtgt4ger@fgd.cn', '南通崇川区中南百货');
INSERT INTO `sys_instructor` VALUES (43, '欧巴', 'tretre', 'fgwergreg@fgd.cn', '北京北京方向A座，房天下大厦');
INSERT INTO `sys_instructor` VALUES (44, '44444', '444', 'fan@qq.com', 'ccccccccccc');
INSERT INTO `sys_instructor` VALUES (45, 'd', 'd', '666666666666', 'd');
INSERT INTO `sys_instructor` VALUES (46, 'ddddddddd', 'dd', 'ddd', 'dd55555555555555');
INSERT INTO `sys_instructor` VALUES (47, 'Admin', '123', '3333333333333', '北京市朝阳区霄云路50号');
INSERT INTO `sys_instructor` VALUES (48, 'Tellsea', 'fsdf', 'sss', '北京市朝阳区霄云路25乙102-103室');
INSERT INTO `sys_instructor` VALUES (49, 'Susan', 'fdstt4', '4354354@qq.com', '宝山区水产西路680弄4号906室');
INSERT INTO `sys_instructor` VALUES (50, 'Tomcat', 't5454tg', '4354353@qq.com', '北京海淀区上地五街群英科技园5号楼2层');
INSERT INTO `sys_instructor` VALUES (51, 'Scott', '54ty45gh45', 'fdsfsfgwer@avd.ng', '杭州市 余杭区 阿里巴巴西溪园区');
INSERT INTO `sys_instructor` VALUES (52, 'Bigbang', '54y54', '543543@qq.com', '大连沙河口区服务业大厦');
INSERT INTO `sys_instructor` VALUES (53, 'SuperMan', '54y54', 'dsfdsf@fgd.cn', '北京北京方向A座，房天下大厦');
INSERT INTO `sys_instructor` VALUES (54, '杨幂', '45y5y5', 'fsdfsdfs@fgd.cn', '北京市 海淀区 北京市海淀区人民政府');
INSERT INTO `sys_instructor` VALUES (55, '吴奇隆', '54y54y', 'dsffdsgrweg@avd.ng', '北京海淀区上地五街群英科技园5号楼');
INSERT INTO `sys_instructor` VALUES (56, '周杰伦', 'y45y54y', '78mo987mi@fgd.cn', '北京朝阳区保利东郡9号楼D座1101');
INSERT INTO `sys_instructor` VALUES (57, '山羊羊', '54uty', 'sdtgt4ger@fgd.cn', '南通崇川区中南百货');
INSERT INTO `sys_instructor` VALUES (58, '欧巴', 'tretre', 'fgwergreg@fgd.cn', '北京北京方向A座，房天下大厦');
INSERT INTO `sys_instructor` VALUES (59, '44444', '444', 'fan@qq.com', 'ccccccccccc');
INSERT INTO `sys_instructor` VALUES (60, 'd', 'd', '666666666666', 'd');
INSERT INTO `sys_instructor` VALUES (61, 'ddddddddd', 'dd', 'ddd', 'dd55555555555555');

-- ----------------------------
-- Table structure for sys_leave
-- ----------------------------
DROP TABLE IF EXISTS `sys_leave`;
CREATE TABLE `sys_leave`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leaveID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `courseID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `daynum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stuNo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applytime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0:未审核，1：同\r\n意，2 不同意',
  `audittime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `opinion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_leave
-- ----------------------------
INSERT INTO `sys_leave` VALUES (1, '19200', 'c108', '身体不舒服', '10', '201809601433', '2021-10-5', '0', '2021-10-10', '这个学生可以回家休养');
INSERT INTO `sys_leave` VALUES (2, '13132', 'c34', '不适合运动', '2', '231323244', '2021-10-5', '2', '2021-10-10', '不能请假');
INSERT INTO `sys_leave` VALUES (3, '1', '1', '11', '', '', '11', '', '', NULL);

-- ----------------------------
-- Table structure for sys_student
-- ----------------------------
DROP TABLE IF EXISTS `sys_student`;
CREATE TABLE `sys_student`  (
  `id` int(11) NOT NULL COMMENT 'id',
  `stuID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `classID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班号',
  `stuName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通讯地址',
  `stuTel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生电话',
  `contact` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contactTel` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_student
-- ----------------------------
INSERT INTO `sys_student` VALUES (1, 's20181', 'c181', '周晴朗1', '女', '广州长隆别墅区', '1222222222', '刘亦菲1', '16666');
INSERT INTO `sys_student` VALUES (2, 's20182', 'c182', '周晴朗2', '女', '广州长隆别墅区', '2222222222', '刘亦菲2', '26666');
INSERT INTO `sys_student` VALUES (3, 's20183', 'c183', '周晴朗3', '女', '广州长隆别墅区', '3222222222', '刘亦菲3', '36666');
INSERT INTO `sys_student` VALUES (4, 's20184', 'c184', '周晴朗4', '女', '广州长隆别墅区', '4222222222', '刘亦菲4', '46666');
INSERT INTO `sys_student` VALUES (5, 's20185', 'c185', '周晴朗5', '女', '广州长隆别墅区', '5222222222', '刘亦菲5', '56666');
INSERT INTO `sys_student` VALUES (7, 's20187', 'c187', '周晴朗7', '女', '广州长隆别墅区', '7222222222', '刘亦菲7', '76666');
INSERT INTO `sys_student` VALUES (8, 's20188', 'c188', '周晴朗8', '女', '广州长隆别墅区', '8222222222', '刘亦菲8', '86666');
INSERT INTO `sys_student` VALUES (9, 's20189', 'c189', '周晴朗9', '女', '广州长隆别墅区', '9222222222', '刘亦菲9', '96666');
INSERT INTO `sys_student` VALUES (10, 's201810', 'c1810', '周晴朗10', '女', '广州长隆别墅区', '10222222222', '刘亦菲10', '106666');
INSERT INTO `sys_student` VALUES (11, 's201811', 'c1811', '周晴朗11', '女', '广州长隆别墅区', '11222222222', '刘亦菲11', '116666');
INSERT INTO `sys_student` VALUES (12, 's201812', 'c1812', '周晴朗12', '女', '广州长隆别墅区', '12222222222', '刘亦菲12', '126666');
INSERT INTO `sys_student` VALUES (13, 's201813', 'c1813', '周晴朗13', '女', '广州长隆别墅区', '13222222222', '刘亦菲13', '136666');
INSERT INTO `sys_student` VALUES (14, 's201814', 'c1814', '周晴朗14', '女', '广州长隆别墅区', '14222222222', '刘亦菲14', '146666');
INSERT INTO `sys_student` VALUES (15, 's201815', 'c1815', '周晴朗15', '女', '广州长隆别墅区', '15222222222', '刘亦菲15', '156666');
INSERT INTO `sys_student` VALUES (16, 's201816', 'c1816', '周晴朗16', '女', '广州长隆别墅区', '16222222222', '刘亦菲16', '166666');
INSERT INTO `sys_student` VALUES (17, 's201817', 'c1817', '周晴朗17', '女', '广州长隆别墅区', '17222222222', '刘亦菲17', '176666');
INSERT INTO `sys_student` VALUES (18, 's201818', 'c1818', '周晴朗18', '女', '广州长隆别墅区', '18222222222', '刘亦菲18', '186666');
INSERT INTO `sys_student` VALUES (19, 's201819', 'c1819', '周晴朗19', '女', '广州长隆别墅区', '19222222222', '刘亦菲19', '196666');
INSERT INTO `sys_student` VALUES (20, 's201820', 'c1820', '周晴朗20', '女', '广州长隆别墅区', '20222222222', '刘亦菲20', '206666');
INSERT INTO `sys_student` VALUES (22, 's201822', 'c1822', '周晴朗22', '女', '广州长隆别墅区', '22222222222', '刘亦菲22', '226666');
INSERT INTO `sys_student` VALUES (23, 's201823', 'c1823', '周晴朗23', '女', '广州长隆别墅区', '23222222222', '刘亦菲23', '236666');
INSERT INTO `sys_student` VALUES (24, 's201824', 'c1824', '周晴朗24', '女', '广州长隆别墅区', '24222222222', '刘亦菲24', '246666');
INSERT INTO `sys_student` VALUES (25, 's201825', 'c1825', '周晴朗25', '女', '广州长隆别墅区', '25222222222', '刘亦菲25', '256666');
INSERT INTO `sys_student` VALUES (26, 's201826', 'c1826', '周晴朗26', '女', '广州长隆别墅区', '26222222222', '刘亦菲26', '266666');
INSERT INTO `sys_student` VALUES (40, 's201840', 'c1840', '周晴朗40', '女', '广州长隆别墅区', '40222222222', '刘亦菲40', '406666');
INSERT INTO `sys_student` VALUES (41, 's201841', 'c1841', '周晴朗41', '女', '广州长隆别墅区', '41222222222', '刘亦菲41', '416666');
INSERT INTO `sys_student` VALUES (42, 's201842', 'c1842', '周晴朗42', '女', '广州长隆别墅区', '42222222222', '刘亦菲42', '426666');
INSERT INTO `sys_student` VALUES (46, 's202246', 'c2246', '吴彦祖46', '男', '广州珠江帝景苑', '46222222222', '贾斯汀46', '469999');
INSERT INTO `sys_student` VALUES (47, 's202247', 'c2247', '吴彦祖47', '男', '广州珠江帝景苑', '47222222222', '贾斯汀47', '479999');
INSERT INTO `sys_student` VALUES (48, 's202248', 'c2248', '吴彦祖48', '男', '广州珠江帝景苑', '48222222222', '贾斯汀48', '489999');
INSERT INTO `sys_student` VALUES (49, 's202249', 'c2249', '吴彦祖49', '男', '广州珠江帝景苑', '49222222222', '贾斯汀49', '499999');
INSERT INTO `sys_student` VALUES (50, 's202250', 'c2250', '吴彦祖50', '男', '广州珠江帝景苑', '50222222222', '贾斯汀50', '509999');
INSERT INTO `sys_student` VALUES (51, 's202251', 'c2251', '吴彦祖51', '男', '广州珠江帝景苑', '51222222222', '贾斯汀51', '519999');
INSERT INTO `sys_student` VALUES (52, 's202252', 'c2252', '吴彦祖52', '男', '广州珠江帝景苑', '52222222222', '贾斯汀52', '529999');
INSERT INTO `sys_student` VALUES (53, 's202253', 'c2253', '吴彦祖53', '男', '广州珠江帝景苑', '53222222222', '贾斯汀53', '539999');
INSERT INTO `sys_student` VALUES (54, 's202254', 'c2254', '吴彦祖54', '男', '广州珠江帝景苑', '54222222222', '贾斯汀54', '549999');
INSERT INTO `sys_student` VALUES (55, 's202255', 'c2255', '吴彦祖55', '男', '广州珠江帝景苑', '55222222222', '贾斯汀55', '559999');
INSERT INTO `sys_student` VALUES (56, 's202256', 'c2256', '吴彦祖56', '男', '广州珠江帝景苑', '56222222222', '贾斯汀56', '569999');
INSERT INTO `sys_student` VALUES (57, 's202257', 'c2257', '吴彦祖57', '男', '广州珠江帝景苑', '57222222222', '贾斯汀57', '579999');
INSERT INTO `sys_student` VALUES (58, 's202258', 'c2258', '吴彦祖58', '男', '广州珠江帝景苑', '58222222222', '贾斯汀58', '589999');
INSERT INTO `sys_student` VALUES (59, 's202259', 'c2259', '吴彦祖59', '男', '广州珠江帝景苑', '59222222222', '贾斯汀59', '599999');
INSERT INTO `sys_student` VALUES (60, 's202260', 'c2260', '吴彦祖60', '男', '广州珠江帝景苑', '60222222222', '贾斯汀60', '609999');
INSERT INTO `sys_student` VALUES (61, 's202261', 'c2261', '吴彦祖61', '男', '广州珠江帝景苑', '61222222222', '贾斯汀61', '619999');
INSERT INTO `sys_student` VALUES (62, 's202262', 'c2262', '吴彦祖62', '男', '广州珠江帝景苑', '62222222222', '贾斯汀62', '629999');
INSERT INTO `sys_student` VALUES (63, 's202263', 'c2263', '吴彦祖63', '男', '广州珠江帝景苑', '63222222222', '贾斯汀63', '639999');
INSERT INTO `sys_student` VALUES (64, 's202264', 'c2264', '吴彦祖64', '男', '广州珠江帝景苑', '64222222222', '贾斯汀64', '649999');
INSERT INTO `sys_student` VALUES (65, 's202265', 'c2265', '吴彦祖65', '男', '广州珠江帝景苑', '65222222222', '贾斯汀65', '659999');
INSERT INTO `sys_student` VALUES (66, 's202266', 'c2266', '吴彦祖66', '男', '广州珠江帝景苑', '66222222222', '贾斯汀66', '669999');
INSERT INTO `sys_student` VALUES (67, 's202267', 'c2267', '吴彦祖67', '男', '广州珠江帝景苑', '67222222222', '贾斯汀67', '679999');
INSERT INTO `sys_student` VALUES (68, 's202268', 'c2268', '吴彦祖68', '男', '广州珠江帝景苑', '68222222222', '贾斯汀68', '689999');
INSERT INTO `sys_student` VALUES (69, 's202269', 'c2269', '吴彦祖69', '男', '广州珠江帝景苑', '69222222222', '贾斯汀69', '699999');
INSERT INTO `sys_student` VALUES (70, 's202270', 'c2270', '吴彦祖70', '男', '广州珠江帝景苑', '70222222222', '贾斯汀70', '709999');
INSERT INTO `sys_student` VALUES (71, 's202271', 'c2271', '吴彦祖71', '男', '广州珠江帝景苑', '71222222222', '贾斯汀71', '719999');
INSERT INTO `sys_student` VALUES (72, 's202272', 'c2272', '吴彦祖72', '男', '广州珠江帝景苑', '72222222222', '贾斯汀72', '729999');
INSERT INTO `sys_student` VALUES (73, 's202273', 'c2273', '吴彦祖73', '男', '广州珠江帝景苑', '73222222222', '贾斯汀73', '739999');
INSERT INTO `sys_student` VALUES (74, 's202274', 'c2274', '吴彦祖74', '男', '广州珠江帝景苑', '74222222222', '贾斯汀74', '749999');
INSERT INTO `sys_student` VALUES (75, 's202275', 'c2275', '吴彦祖75', '男', '广州珠江帝景苑', '75222222222', '贾斯汀75', '759999');
INSERT INTO `sys_student` VALUES (76, 's202276', 'c2276', '吴彦祖76', '男', '广州珠江帝景苑', '76222222222', '贾斯汀76', '769999');
INSERT INTO `sys_student` VALUES (77, 's202277', 'c2277', '吴彦祖77', '男', '广州珠江帝景苑', '77222222222', '贾斯汀77', '779999');
INSERT INTO `sys_student` VALUES (78, 's202278', 'c2278', '吴彦祖78', '男', '广州珠江帝景苑', '78222222222', '贾斯汀78', '789999');
INSERT INTO `sys_student` VALUES (79, 's202279', 'c2279', '吴彦祖79', '男', '广州珠江帝景苑', '79222222222', '贾斯汀79', '799999');
INSERT INTO `sys_student` VALUES (80, 's202280', 'c2280', '吴彦祖80', '男', '广州珠江帝景苑', '80222222222', '贾斯汀80', '809999');
INSERT INTO `sys_student` VALUES (81, 's202281', 'c2281', '吴彦祖81', '男', '广州珠江帝景苑', '81222222222', '贾斯汀81', '819999');
INSERT INTO `sys_student` VALUES (82, 's202282', 'c2282', '吴彦祖82', '男', '广州珠江帝景苑', '82222222222', '贾斯汀82', '829999');
INSERT INTO `sys_student` VALUES (83, 's202283', 'c2283', '吴彦祖83', '男', '广州珠江帝景苑', '83222222222', '贾斯汀83', '839999');
INSERT INTO `sys_student` VALUES (84, 's202284', 'c2284', '吴彦祖84', '男', '广州珠江帝景苑', '84222222222', '贾斯汀84', '849999');
INSERT INTO `sys_student` VALUES (85, 's202285', 'c2285', '吴彦祖85', '男', '广州珠江帝景苑', '85222222222', '贾斯汀85', '859999');
INSERT INTO `sys_student` VALUES (86, 's202286', 'c2286', '吴彦祖86', '男', '广州珠江帝景苑', '86222222222', '贾斯汀86', '869999');
INSERT INTO `sys_student` VALUES (87, 's202287', 'c2287', '吴彦祖87', '男', '广州珠江帝景苑', '87222222222', '贾斯汀87', '879999');
INSERT INTO `sys_student` VALUES (88, 's202288', 'c2288', '吴彦祖88', '男', '广州珠江帝景苑', '88222222222', '贾斯汀88', '889999');

SET FOREIGN_KEY_CHECKS = 1;
