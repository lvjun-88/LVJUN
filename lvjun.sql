/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : lvjun

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 25/04/2021 15:08:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser`  (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admininfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES (2, 'admin', '123123', '', '1123', '123123@qq');

-- ----------------------------
-- Table structure for alikes
-- ----------------------------
DROP TABLE IF EXISTS `alikes`;
CREATE TABLE `alikes`  (
  `alikeid` int(11) NOT NULL AUTO_INCREMENT,
  `alikeaid` int(11) NULL DEFAULT NULL,
  `alikeuid` int(11) NULL DEFAULT NULL,
  `aliketime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`alikeid`) USING BTREE,
  INDEX `alikeaid`(`alikeaid`) USING BTREE,
  INDEX `alikeuid`(`alikeuid`) USING BTREE,
  CONSTRAINT `alikeaid` FOREIGN KEY (`alikeaid`) REFERENCES `articles` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `alikeuid` FOREIGN KEY (`alikeuid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alikes
-- ----------------------------

-- ----------------------------
-- Table structure for articlecomments
-- ----------------------------
DROP TABLE IF EXISTS `articlecomments`;
CREATE TABLE `articlecomments`  (
  `acid` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论编号',
  `uid` int(11) NULL DEFAULT NULL COMMENT '用户账号',
  `aid` int(11) NULL DEFAULT NULL COMMENT '文章编号',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论',
  `actime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `atake` int(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`acid`) USING BTREE,
  INDEX `uida`(`uid`) USING BTREE,
  INDEX `aid`(`aid`) USING BTREE,
  CONSTRAINT `aid` FOREIGN KEY (`aid`) REFERENCES `articles` (`aid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uida` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of articlecomments
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `aimg` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'aimg.png',
  `aname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章标题',
  `ainfo` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章内容',
  `atime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `atid` int(11) NULL DEFAULT NULL COMMENT '类型编号',
  `uid` int(11) NULL DEFAULT NULL COMMENT '文章作者',
  `alike` int(11) NULL DEFAULT 0,
  `alooks` int(255) NULL DEFAULT 0,
  `acommentcounts` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`aid`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `atid`(`atid`) USING BTREE,
  CONSTRAINT `atid` FOREIGN KEY (`atid`) REFERENCES `articletypes` (`atid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for articletypes
-- ----------------------------
DROP TABLE IF EXISTS `articletypes`;
CREATE TABLE `articletypes`  (
  `atid` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型编号',
  `atype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文章类型',
  PRIMARY KEY (`atid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of articletypes
-- ----------------------------
INSERT INTO `articletypes` VALUES (1, 'java');
INSERT INTO `articletypes` VALUES (2, 'python');
INSERT INTO `articletypes` VALUES (3, 'c');
INSERT INTO `articletypes` VALUES (4, 'ssm');

-- ----------------------------
-- Table structure for chats
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats`  (
  `cid` int(255) NOT NULL AUTO_INCREMENT,
  `fsid` int(255) NULL DEFAULT NULL,
  `fsinfo` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fstime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jsid` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `fsid`(`fsid`) USING BTREE,
  INDEX `jsid`(`jsid`) USING BTREE,
  CONSTRAINT `fsid` FOREIGN KEY (`fsid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `jsid` FOREIGN KEY (`jsid`) REFERENCES `users` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chats
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户账号',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `usex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `uemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `uphoneid` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `usignature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '这个人很懒,啥也没写' COMMENT '个性签名',
  `uage` int(11) NULL DEFAULT NULL COMMENT '用户年龄',
  `uicon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'uicon.png' COMMENT '个人头像',
  `uresume` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人简介',
  `uarea` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户区域',
  `utime` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uwximag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'uwximag.png',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (23, 'lvjun', '123123', NULL, '12333@qq.cq', '13312312312', '12', NULL, 'uicon.png', NULL, NULL, '2021-04-25 14:58:55', 'uwximag.png');
INSERT INTO `users` VALUES (24, 'helvjun', '123123', NULL, '321@qq.cs', '12312312312', '这个人很懒,啥也没写', NULL, 'uicon.png', NULL, NULL, '2021-04-25 14:58:09', 'uwximag.png');

-- ----------------------------
-- Table structure for web
-- ----------------------------
DROP TABLE IF EXISTS `web`;
CREATE TABLE `web`  (
  `webid` int(11) NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimage1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimagename1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimageurl1` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimage2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimagename2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimageurl2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimage3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimagename3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webimageurl3` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webtwo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webbeian` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`webid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web
-- ----------------------------
INSERT INTO `web` VALUES (1, 'HLvJun首页', 'be8cfbf1-ec92-4f55-aa7a-e98ae58e5ea3.png', '6bf14f72-7bca-4dfc-a5c4-99e4f0e8e629.png', '标题1', 'https://www.baidu.com/s?ie=UTF-8&wd=baidu', 'd5d1ff71-3e8e-4907-84fb-b69d3515fcae.png', '标题2', 'https://www.baidu.com/s?ie=UTF-8&wd=baidu', '406a817b-05ee-46d4-9eac-e4196bef6aa0.png', '标题3', 'https://www.baidu.com/s?ie=UTF-8&wd=baidu', '2f0d3694-69c5-4c40-b108-e1707b1caa7b.png', '© 2021. All Rights Reserved. HLvJun.cn   版权所有ICP证： ICP备18038192号');

SET FOREIGN_KEY_CHECKS = 1;
