/*
Navicat MySQL Data Transfer

Source Server         : zhangqiqi
Source Server Version : 50536
Source Host           : localhost:3306
Source Database       : zhangqq009

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2017-11-06 13:49:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for assistance
-- ----------------------------
DROP TABLE IF EXISTS `assistance`;
CREATE TABLE `assistance` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_name` varchar(255) DEFAULT NULL,
  `a_sex` varchar(255) DEFAULT NULL,
  `a_age` varchar(255) DEFAULT NULL,
  `a_email` varchar(255) DEFAULT NULL,
  `a_phone` varchar(255) DEFAULT NULL,
  `a_address` varchar(255) DEFAULT NULL,
  `a_nation` varchar(255) DEFAULT NULL,
  `a_qq` varchar(255) DEFAULT NULL,
  `a_dept` varchar(255) DEFAULT NULL,
  `a_duty` varchar(255) DEFAULT NULL,
  `a_salary` varchar(255) DEFAULT NULL,
  `a_card` varchar(255) DEFAULT NULL,
  `a_school` varchar(255) DEFAULT NULL,
  `a_project` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assistance
-- ----------------------------
INSERT INTO `assistance` VALUES ('3', '121312', '男', '12313', null, null, null, null, null, '销售部', '经理', null, null, null, null);

-- ----------------------------
-- Table structure for common
-- ----------------------------
DROP TABLE IF EXISTS `common`;
CREATE TABLE `common` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL,
  `c_age` varchar(255) DEFAULT NULL,
  `c_sex` varchar(255) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_phone` varchar(255) DEFAULT NULL,
  `c_address` varchar(255) DEFAULT NULL,
  `c_nation` varchar(255) DEFAULT NULL,
  `c_qq` varchar(255) DEFAULT NULL,
  `c_dept` varchar(255) DEFAULT NULL,
  `c_duty` varchar(255) DEFAULT NULL,
  `c_salary` varchar(255) DEFAULT NULL,
  `c_card` varchar(255) DEFAULT NULL,
  `c_bank` varchar(255) DEFAULT NULL,
  `c_bankid` varchar(255) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `asd` (`s_id`),
  CONSTRAINT `asd` FOREIGN KEY (`s_id`) REFERENCES `salary` (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common
-- ----------------------------
INSERT INTO `common` VALUES ('2', 'Jerry', '22', '女', '2321@asdas', '64655313', '加州', '美', '123123', '销售部', '经理', '2000', '312312', '中行', '3123123', '1');
INSERT INTO `common` VALUES ('17', '张三', '20', '女', '44555', '13524698654', '天津市西青区姚村', '汉', '656292855', '销售部', '经理', '2500', '412728156980563333', '中行', '6217000061236325887', null);
INSERT INTO `common` VALUES ('18', '鸭梨', '22', '女', '5656@qq.com', '12365498710', '中国台湾 高雄市', '汉族', '8989565623', '销售部', '经理', '6500', '412728895632142', '中行', '6217000061116598745', null);
INSERT INTO `common` VALUES ('227', '琦琦', '22', '男', '656@qq.com', '13116183366', '河南省周口市', '汉族', '6562928112', '行政部', '主管', '11220', '412728199506168877', '建行', '6217000065559874665', null);
INSERT INTO `common` VALUES ('228', '李cg', '23', '男', '9898@qq.com', '15698452145', '宁夏回族自治区银川市', '回族', '56987456', '研发部', '主管', '5600', '123456987456321', '中行', '123123123123', null);
INSERT INTO `common` VALUES ('229', '徐yk', '23', '男', '6565@qq.com', '13115186542', '河北省雄安新区', '汉族', '9895641223', '行政部', '主管', '6000', '123123123123123', '中行', '234353545454', null);
INSERT INTO `common` VALUES ('230', '白zp', '24', '男', '1007@qq.com', '6565987432', '河南省新乡市', '汉族', '12321312312', '财务部', '主管', '3123', '412765313213138', '中行', '234423435435543543', null);
INSERT INTO `common` VALUES ('231', '张y', '23', '男', '656233@qq.com', '12312', '天津市南开区', '汉族', '312312', '研发部', '主管', '123213', '124234234324324', '中行', '2342342453454', null);
INSERT INTO `common` VALUES ('233', '宋J', '22', '女', '6983@qq.com', '139864133', '山东省青岛市', '汉族', '98654123', '行政部', '主管', '6000', '412728165489782354', '中行', '1231231231231231', null);
INSERT INTO `common` VALUES ('234', '2', '2', '男', '2', null, null, '2', null, '销售部', '经理', null, null, '中行', null, null);
INSERT INTO `common` VALUES ('235', '2', '3', '女', '3', null, null, null, null, '销售部', '经理', null, null, '中行', null, null);
INSERT INTO `common` VALUES ('236', '3', '3', '男', '3', null, null, null, null, '销售部', '经理', null, null, '中行', null, null);
INSERT INTO `common` VALUES ('240', 'tom', '20', '女', '1007@qq.com', '12345678910', '天津市西情绪', '汉族', '651023', '研发部', '主管', '5600', '123213123123123', '农行', '1321231313', null);
INSERT INTO `common` VALUES ('241', '李四', '232', '女', '2323', '123123', '1231', '1321312', '123', '销售部', '经理', '1321', '131', '中行', '1321', null);
INSERT INTO `common` VALUES ('242', '白泽鹏', '123', '女', '123', '132', '123', '2131', '13', '销售部', '经理', '123', '231', '中行', '123', null);
INSERT INTO `common` VALUES ('243', '请问', '12312', '女', '123123', null, null, null, null, '销售部', '经理', null, null, '中行', null, null);
INSERT INTO `common` VALUES ('244', '蔷薇蔷薇', '123', '男', '1321', '1231', '132', '13231', '123', '销售部', '经理', null, null, '中行', null, null);

-- ----------------------------
-- Table structure for outsource
-- ----------------------------
DROP TABLE IF EXISTS `outsource`;
CREATE TABLE `outsource` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_name` varchar(255) DEFAULT NULL,
  `o_sex` varchar(255) DEFAULT NULL,
  `o_age` varchar(255) DEFAULT NULL,
  `o_email` varchar(255) DEFAULT NULL,
  `o_phone` varchar(255) DEFAULT NULL,
  `o_address` varchar(255) DEFAULT NULL,
  `o_nation` varchar(255) DEFAULT NULL,
  `o_qq` varchar(255) DEFAULT NULL,
  `o_dept` varchar(255) DEFAULT NULL,
  `o_duty` varchar(255) DEFAULT NULL,
  `o_salary` varchar(255) DEFAULT NULL,
  `o_card` varchar(255) DEFAULT NULL,
  `o_buss` varchar(255) DEFAULT NULL,
  `o_project` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outsource
-- ----------------------------
INSERT INTO `outsource` VALUES ('3003', '3', '女', '3', '3', '3', '3', '3', '3', '研发部', '主管', '3', '3', '3', '3');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `s_id` int(11) DEFAULT NULL,
  `s_base` varchar(255) DEFAULT NULL,
  `s_addbase` varchar(255) DEFAULT NULL,
  `s_traffic` varchar(255) DEFAULT NULL,
  `s_phone` varchar(255) DEFAULT NULL,
  `s_out` varchar(255) DEFAULT NULL,
  `s_hos` varchar(255) DEFAULT NULL,
  `s_job` varchar(255) DEFAULT NULL,
  `s_house` varchar(255) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  KEY `s_id` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('1', '2', '2', '2', '2', '2', '2', '2', '2', null);

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_name` varchar(255) DEFAULT NULL,
  `t_sex` varchar(255) DEFAULT NULL,
  `t_age` varchar(255) DEFAULT NULL,
  `t_email` varchar(255) DEFAULT NULL,
  `t_phone` varchar(255) DEFAULT NULL,
  `t_address` varchar(255) DEFAULT NULL,
  `t_nation` varchar(255) DEFAULT NULL,
  `t_qq` varchar(255) DEFAULT NULL,
  `t_dept` varchar(255) DEFAULT NULL,
  `t_duty` varchar(255) DEFAULT NULL,
  `t_salary` varchar(10) DEFAULT NULL,
  `t_card` varchar(255) DEFAULT NULL,
  `t_bank` varchar(255) DEFAULT NULL,
  `t_bankid` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES ('2001', '222222222222222', '男', '1', '1', '1', '1', '1', '2', '销售部', '经理', '2', '2', '中行', '2');
INSERT INTO `train` VALUES ('2005', '1', '女', '1', '1', '1', '1', '1', '1', '研发部', '主管', '1', '1', '工行', '1');
INSERT INTO `train` VALUES ('2006', 'hucy', '男', '22', '1231@QQ', '13523456789', '天津市', '汉', '100721332', '销售部', '经理', '4111', '412728', '农行', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mail` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99925 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('77889', 'admin', '1234', '6562@qq.com', '管理员', '13116185698', 'QIQI');
INSERT INTO `user` VALUES ('99887', 'admin1', '222', '1107@qq.com', '管理员', '', '');
INSERT INTO `user` VALUES ('99888', 'zhangqq', 'happy', '5656@q.com', '人事专员', '', '');
INSERT INTO `user` VALUES ('99914', 'user1', '1234', '5555', '人事专员', '', '');
INSERT INTO `user` VALUES ('99916', 'qwe', '1234', '1007213323@qq.com', '人事专员', '', '');
INSERT INTO `user` VALUES ('99917', 'a6562928', '1234', '121321', 'null', '13116185566', '小志');
INSERT INTO `user` VALUES ('99923', 'user01', '1234', '656@qq.com', '管理员', '13112456987', 'aaa');
INSERT INTO `user` VALUES ('99924', 'user2', '1234', '65629@qq.com', 'null', '131256633', 'qiqi');
