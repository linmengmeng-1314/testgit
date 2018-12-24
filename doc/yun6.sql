/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : yun6

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2018-12-24 15:34:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `sex` tinyint(1) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '123', '123', '张三', '23', '1', '2018-12-11', null, '2018-12-15 22:02:39', '2018-12-16 10:17:59');
INSERT INTO `tb_user` VALUES ('2', 'hello', '123', '111', '23', '1', '2018-12-14', '123', '2018-12-11 08:37:41', '2018-12-17 08:38:29');
INSERT INTO `tb_user` VALUES ('3', 'haha', '123', '哈哈', '23', '2', '2018-12-04', '1', '2018-12-17 08:37:36', '2018-12-17 08:37:40');
INSERT INTO `tb_user` VALUES ('4', 'xiao', '123', '小明', '23', '2', '2018-12-03', '2', null, '2018-12-17 08:39:16');
