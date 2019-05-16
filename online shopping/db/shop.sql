/*
MySQL Data Transfer
Source Host: localhost
Source Database: shop
Target Host: localhost
Target Database: shop
Date: 6/3/2011 6:01:32 PM
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for adminmsgs
-- ----------------------------
DROP TABLE IF EXISTS `adminmsgs`;
CREATE TABLE `adminmsgs` (
  `ecode` int(50) NOT NULL auto_increment,
  `afrom` varchar(50) NOT NULL,
  `subject` varchar(50) default NULL,
  `message` varchar(300) default NULL,
  PRIMARY KEY  (`ecode`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for auction
-- ----------------------------
DROP TABLE IF EXISTS `auction`;
CREATE TABLE `auction` (
  `pid` varchar(50) NOT NULL default 'x',
  `proname` varchar(100) NOT NULL,
  `intialrate` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for customermsgs
-- ----------------------------
DROP TABLE IF EXISTS `customermsgs`;
CREATE TABLE `customermsgs` (
  `ecode` int(50) NOT NULL auto_increment,
  `ato` varchar(50) default NULL,
  `afrom` varchar(50) NOT NULL default 'Administrator',
  `subject` varchar(50) default NULL,
  `message` varchar(300) default NULL,
  PRIMARY KEY  (`ecode`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for prodetails
-- ----------------------------
DROP TABLE IF EXISTS `prodetails`;
CREATE TABLE `prodetails` (
  `pid` int(50) NOT NULL auto_increment,
  `pro` varchar(50) NOT NULL,
  `rate` varchar(50) default NULL,
  `des` varchar(400) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for userdetails
-- ----------------------------
DROP TABLE IF EXISTS `userdetails`;
CREATE TABLE `userdetails` (
  `nname` varchar(50) NOT NULL,
  `nmail` varchar(50) NOT NULL,
  `npass` varchar(50) NOT NULL,
  `nq` varchar(200) NOT NULL,
  `nans` varchar(50) NOT NULL,
  `nphone` varchar(50) NOT NULL,
  `nsex` varchar(50) NOT NULL,
  `nadd` varchar(255) NOT NULL,
  `ncity` varchar(50) NOT NULL,
  `nstate` varchar(50) NOT NULL,
  `npin` varchar(50) NOT NULL,
  PRIMARY KEY  (`nmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'online');
INSERT INTO `adminmsgs` VALUES ('9', 'Sachin Romesh Tendulkar', 'regarding quality', 'gihgio\r\n');
INSERT INTO `adminmsgs` VALUES ('12', 'M.S.Dhoni', 'hello', 'hiyo');
INSERT INTO `adminmsgs` VALUES ('13', 'Rahul  Dravid wall', 'hey', 'hello');
INSERT INTO `adminmsgs` VALUES ('14', 'Sachin Romesh Tendulkar', 'hi', 'dsdsdwsd');
INSERT INTO `auction` VALUES ('p1', 'laptop', '20000', '45000', 'Sachin Romesh Tendulkar');
INSERT INTO `auction` VALUES ('p2', 'dvd', '5000', '60000', 'Sourav Charles Ganguly');
INSERT INTO `auction` VALUES ('p3', 'lcd', '12000', '30000', 'Rahul  Dravid wall');
INSERT INTO `customermsgs` VALUES ('3', 'Sachin Romesh Tendulkar', 'Administrator', 'hello', 'hio');
INSERT INTO `customermsgs` VALUES ('4', 'Rahul  Dravid wall', 'Administrator', 'hello', 'hhhiiii');
INSERT INTO `customermsgs` VALUES ('6', 'M.S.Dhoni', 'Administrator', 'helo ', 'igfigi');
INSERT INTO `customermsgs` VALUES ('7', 'Sourav Charles Ganguly', 'Administrator', 'hey', 'xxxxxxxxxxxx');
INSERT INTO `customermsgs` VALUES ('8', 'Sachin Romesh Tendulkar', 'Administrator', 'hi', 'dfd');
INSERT INTO `prodetails` VALUES ('1', 'key board', '450', 'sasa');
INSERT INTO `prodetails` VALUES ('3', 'web camera', '250', 'webcam is used for video chat');
INSERT INTO `prodetails` VALUES ('4', 'wires', '100', 'sdsfsdf');
INSERT INTO `prodetails` VALUES ('5', 'mouse', '250', 'mouse is input device');
INSERT INTO `prodetails` VALUES ('6', 'computer table', '400', 'hardware');
INSERT INTO `userdetails` VALUES ('M.S.Dhoni', 'msd@gmail.com', 'msd', 'who r u ?', 'captain', '6865858', 'male', 'ranchi', 'up', 'up', '87896');
INSERT INTO `userdetails` VALUES ('Rahul  Dravid wall', 'rahul@gmail.com', 'dravid', 'which is your state?', 'karnataka', '9968968', 'male', 'cbe', 'cbe', 'Tn', '68587897');
INSERT INTO `userdetails` VALUES ('Sachin Romesh Tendulkar', 'sac@gmail.com', 'sachin', 'who r u ?', 'god', '789656', 'male', 'cbe', 'cbe', 'Tn', '68587897');
INSERT INTO `userdetails` VALUES ('Sourav Charles Ganguly', 'sourav@gmail.com', 'dada', 'what is your nick name?', 'dada', '6879658758', 'male', 'kol', 'kol', 'bengal', '797908');
