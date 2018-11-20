/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80013
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 80013
File Encoding         : 65001

Date: 2018-11-20 18:06:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL,
  `btitle` varchar(255) NOT NULL,
  `bauthor` varchar(255) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'book1', 'author1');
INSERT INTO `book` VALUES ('2', 'book2', 'author2');
INSERT INTO `book` VALUES ('3', 'book3', 'author3');
INSERT INTO `book` VALUES ('4', 'book4', 'author4');
INSERT INTO `book` VALUES ('5', 'book5', 'author5');

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `brid` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `brtime` datetime NOT NULL,
  PRIMARY KEY (`brid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow
-- ----------------------------
INSERT INTO `borrow` VALUES ('11', '2', '1', '2018-11-19 05:15:00');
INSERT INTO `borrow` VALUES ('12', '3', '1', '2018-11-19 05:15:01');
INSERT INTO `borrow` VALUES ('13', '5', '1', '2018-11-19 05:15:30');
INSERT INTO `borrow` VALUES ('15', '4', '2', '2018-11-19 18:31:22');
INSERT INTO `borrow` VALUES ('16', '5', '2', '2018-11-19 18:31:25');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `ntitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ncontent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', 'notice1', 'content');
INSERT INTO `notice` VALUES ('2', 'notie2', '...');
INSERT INTO `notice` VALUES ('3', 'notice3', '...');
INSERT INTO `notice` VALUES ('4', 'notice4', 'bbb');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `upwd` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `usex` int(11) DEFAULT NULL,
  `uphone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123456', '123456', '1', '1789999999');
INSERT INTO `user` VALUES ('2', '123456', '654321', '1', '1233231313');
