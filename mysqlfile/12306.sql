/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : 12306

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2021-01-10 20:03:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cityinfo`
-- ----------------------------
DROP TABLE IF EXISTS `cityinfo`;
CREATE TABLE `cityinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saletime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cityinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `contactinfo`
-- ----------------------------
DROP TABLE IF EXISTS `contactinfo`;
CREATE TABLE `contactinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discountcard` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `traveltype` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contactinfo
-- ----------------------------
INSERT INTO contactinfo VALUES ('1', null, '321321321@126.com', '511622199007191817', '黄小明', '13615819710', '1', '1', '1');

-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO hibernate_sequence VALUES ('1');

-- ----------------------------
-- Table structure for `mapcityinfo`
-- ----------------------------
DROP TABLE IF EXISTS `mapcityinfo`;
CREATE TABLE `mapcityinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityid1` int(11) DEFAULT NULL,
  `cityid2` int(11) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mapcityinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `mapstopinfo`
-- ----------------------------
DROP TABLE IF EXISTS `mapstopinfo`;
CREATE TABLE `mapstopinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `lefts` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `parktime` int(11) DEFAULT NULL,
  `ticketgate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trainid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of mapstopinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `maptraininfo`
-- ----------------------------
DROP TABLE IF EXISTS `maptraininfo`;
CREATE TABLE `maptraininfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firststation` int(11) DEFAULT NULL,
  `laststation` int(11) DEFAULT NULL,
  `modelid` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stopnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of maptraininfo
-- ----------------------------

-- ----------------------------
-- Table structure for `orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `paydate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `seatinfo`
-- ----------------------------
DROP TABLE IF EXISTS `seatinfo`;
CREATE TABLE `seatinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modelid` int(11) DEFAULT NULL,
  `rownumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seatlevel` int(11) DEFAULT NULL,
  `seatnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of seatinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `soldticket`
-- ----------------------------
DROP TABLE IF EXISTS `soldticket`;
CREATE TABLE `soldticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contactid` int(11) DEFAULT NULL,
  `fromstopid` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `rownumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seatlevel` int(11) DEFAULT NULL,
  `seatnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tostopid` int(11) DEFAULT NULL,
  `trainid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of soldticket
-- ----------------------------

-- ----------------------------
-- Table structure for `stopinfo`
-- ----------------------------
DROP TABLE IF EXISTS `stopinfo`;
CREATE TABLE `stopinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arrive` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cityid` int(11) DEFAULT NULL,
  `lefts` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `parktime` int(11) DEFAULT NULL,
  `ticketgate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trainid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of stopinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `traininfo`
-- ----------------------------
DROP TABLE IF EXISTS `traininfo`;
CREATE TABLE `traininfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changetime` int(11) DEFAULT NULL,
  `day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firststation` int(11) DEFAULT NULL,
  `laststation` int(11) DEFAULT NULL,
  `modelid` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `stopnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of traininfo
-- ----------------------------
INSERT INTO traininfo VALUES ('1', null, '', null, null, null, '', null, null);

-- ----------------------------
-- Table structure for `trainmodel`
-- ----------------------------
DROP TABLE IF EXISTS `trainmodel`;
CREATE TABLE `trainmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of trainmodel
-- ----------------------------
INSERT INTO trainmodel VALUES ('1', '');

-- ----------------------------
-- Table structure for `unsoldticket`
-- ----------------------------
DROP TABLE IF EXISTS `unsoldticket`;
CREATE TABLE `unsoldticket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromstopid` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `rownumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seatlevel` int(11) DEFAULT NULL,
  `seatnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tostopid` int(11) DEFAULT NULL,
  `trainid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of unsoldticket
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discountnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idnumber` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `traveltype` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO userinfo VALUES ('1', null, '321321321@126.com', '511622199007191817', '黄小明', '123456abc', '13615819710', '1', '0', '1', 'hxm123');
