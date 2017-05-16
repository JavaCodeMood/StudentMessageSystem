/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : studentdb

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2017-05-16 23:45:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `Id` int(4) NOT NULL AUTO_INCREMENT,
  `Number` varchar(16) NOT NULL COMMENT '学号',
  `Name` varchar(25) NOT NULL COMMENT '姓名',
  `Sex` varchar(2) NOT NULL COMMENT '性别',
  `Address` varchar(50) NOT NULL COMMENT '住址',
  `Phone` varchar(25) NOT NULL COMMENT '联系电话',
  `Email` varchar(25) NOT NULL COMMENT '邮箱地址',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2', '20132001', '武则天', '女', '北京市紫荆城', '15587654361', '5636736387@163.com');
INSERT INTO `student` VALUES ('3', '20132002', '后裔', '男', '日出东方', '523156138878', '36623672163.com');
