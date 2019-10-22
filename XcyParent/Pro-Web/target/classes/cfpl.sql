/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : cfpl

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2019-07-06 11:32:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) DEFAULT NULL,
  `adminPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '111', '111');
INSERT INTO `admin` VALUES ('2', '222', '222');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `projectName` varchar(255) DEFAULT NULL,
  `projectSkill` varchar(255) DEFAULT NULL,
  `projectBeforeUrl` varchar(255) DEFAULT NULL,
  `projectAfterUrl` varchar(255) DEFAULT NULL,
  `projectDetail` varchar(255) DEFAULT NULL,
  `projectImg1` varchar(255) DEFAULT NULL,
  `projectImg2` varchar(255) DEFAULT NULL,
  `projectImg3` varchar(255) DEFAULT NULL,
  `projectImg4` varchar(255) DEFAULT NULL,
  `projectImg5` varchar(255) DEFAULT NULL,
  `tId` int(11) DEFAULT NULL,
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('42', '视频学习网站', 'ajax/maven/ssm', 'http://10.8.157.35:8082/Video-Web-1.0-SNAPSHOT/index.jsp', 'http://10.8.157.35:8082/Video-Web-1.0-SNAPSHOT/goLogin.jsp', '项目使用了SSM框架，简单大方，功能齐全，代码健壮。项目分为前端用户界面，和后台管理页面，操作简单，看一眼就会 使用。', 'http://10.8.157.29:8081/imgs/video/1.png', 'http://10.8.157.29:8081/imgs/video/2.png', 'http://10.8.157.29:8081/imgs/video/3.png', 'http://10.8.157.29:8081/imgs/video/4.png', 'http://10.8.157.29:8081/imgs/video/5.png', '2');
INSERT INTO `project` VALUES ('47', '人脸识别', 'ajax/百度人脸识别技术', 'http://10.8.157.35:8082/face/index.jsp', '', '简单的demo练习', '', '', '', '', '', '1');
INSERT INTO `project` VALUES ('52', '搜索提示', 'ajax/js/jquery', 'http://10.8.157.35:8082/testAjax/ajax.jsp', '', '简单的ajax和js练习', '', '', '', '', '', '3');
INSERT INTO `project` VALUES ('53', '魔方小游戏', 'js/css3/html', 'file:///C:/Users/%E8%8C%82/Documents/Tencent%20Files/1270086576/FileRecv/index.html', null, '使用H5技术魔方真实模仿游戏', null, null, null, null, null, '2');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacherId` int(11) NOT NULL AUTO_INCREMENT,
  `teacherName` varchar(255) DEFAULT NULL,
  `teacherDetail` varchar(255) DEFAULT NULL,
  `teacherImg` varchar(255) DEFAULT NULL,
  `teacherQQ` varchar(255) DEFAULT NULL,
  `teacherWX` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teacherId`)
) ENGINE=InnoDB AUTO_INCREMENT=34246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '刘晓磊', '一阶段讲师', 'http://10.8.157.29:8081/imgs/3a04e682fc2246c291145b55de17f97c.jpg', 'http://10.8.157.29:8081/imgs/b14bbe55709143e89e17a6c1c2797d84.jpg', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png');
INSERT INTO `teacher` VALUES ('2', '闫振伟', '二阶段讲师，外号熊大', 'http://10.8.157.29:8081/imgs/2008fe54ef034d8b995dbddb3cabe507.jpeg', 'http://10.8.157.29:8081/imgs/2966d80e2091494db0106622d3c83993.jpg', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png');
INSERT INTO `teacher` VALUES ('3', '任瑞', '三阶段讲师，打字速度超快', 'http://10.8.157.29:8081/imgs/409906ca7e0843948c3f10a23573f643.jpg', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png');
INSERT INTO `teacher` VALUES ('4', '邢鹏辉', '四阶段讲师，情报不详', 'http://10.8.157.29:8081/imgs/4cbd5442066444cfafcd3e983b7c3098.jpg', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png');
INSERT INTO `teacher` VALUES ('23', '12333333333', '132', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png');
INSERT INTO `teacher` VALUES ('24', '12333333333', '132', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png');
INSERT INTO `teacher` VALUES ('34235', '云姐', '123321', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png');
INSERT INTO `teacher` VALUES ('34244', '刘三姐', '你说的很对很对很对 就是你老婆说啥都对一样', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png', 'http://10.8.157.29:8081/imgs/cb8e6d79bd2e44f2b7ad231e4a1709d8.png');
INSERT INTO `teacher` VALUES ('34245', '刘三姐', '讲话，里带篇，谁说女子，道边关', '111', '111', '111');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '757607407@qq.com', '123456', '1111');
INSERT INTO `user` VALUES ('2', 'sda', '123', null);
INSERT INTO `user` VALUES ('3', '1270086576@qq.com', '123456', null);
