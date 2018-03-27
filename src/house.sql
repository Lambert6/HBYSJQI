/*
Navicat MySQL Data Transfer

Source Server         : BYSJ
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : house

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-03-27 16:46:27
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assistance
-- ----------------------------
INSERT INTO `assistance` VALUES ('15', '胡成玉', '男', '23', '656@qq.com', '15689897878', '本科', '是', '1-1-1', '500', '婚房', '鼓楼', '非常强烈', '张琦琦', '2');
INSERT INTO `assistance` VALUES ('17', '陈鸭梨', '女', '24', '6562@qq.com', '13116182330', '研究生', '否', '2-1-1<H>', '3000000', '婚房', '师大附小学区房', '非常强烈', '张琦琦', '5');
INSERT INTO `assistance` VALUES ('18', '李文东', '男', '45', '8989@qq.com', '13116182330', '高中', '是', '2-1-1<H>', '2000000', '养老', '水上公园', '一般', '陈倩倩', '9');
INSERT INTO `assistance` VALUES ('19', '王姐', '女', '25', '898@qq.com', '17754631233', '研究生', '否', '2-1-1<H>', '3000000', '买婚房', '广开四马路', '强烈', '孙宽有', '2');
INSERT INTO `assistance` VALUES ('20', '李晓华', '男', '34', '2323@qq.com', '13525698978', '本科', '是', '2-1-1<H>', '4000000', '学区房', '师大附小学区', '一般', '方花花', '3');
INSERT INTO `assistance` VALUES ('21', '轩大爷', '男', '70', '89898@qq.com', '18956565656', '高中', '否', '1-1-1', '2000000', '养老', '长虹公园附近', '一般', '刘磊', '9');
INSERT INTO `assistance` VALUES ('22', '陈姐', '女', '35', '656@qq.com', '15989894569', '博士', '是', '2-1-1<H>', '3000000', '工作，学区', '广开五马路附近', '强烈', '王志鹏', '4');
INSERT INTO `assistance` VALUES ('23', '胡小姐姐', '女', '17', '8989@qq.com', '15989898989', '高中', '是', '1-1-1', '2300', '租学校附近', '南开附中', '非常强烈', '吴笑笑', '1');
INSERT INTO `assistance` VALUES ('24', '荣哥', '男', '45', '5656@qq.com', '15456565656', '中专', '是', '2-1-1<H>', '5000000', '改善+工作', '海泰科技园附近', '一般', '李虎虎', '9');
INSERT INTO `assistance` VALUES ('25', '李同学', '男', '25', '56565@qq.com', '13589784566', '本科', '是', '1-1-1', '2000', '大学生，学校附近', '工大', '非常强烈', '张倩倩', '2');
INSERT INTO `assistance` VALUES ('26', '王姐', '男', '45', '5656@qq.com', '18956562323', '本科', '是', '1-1-1', '2000000', '改善', '水上公园附近', '非常强烈', '张琦琦', '3');

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
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common
-- ----------------------------
INSERT INTO `common` VALUES ('18', '陈小花', '22', '女', '5656@qq.com', '12365498710', '中国台湾 高雄市', '汉族', '8989565623', '销售部', '经理', '6500', '412728895632142', '中行', '6217000061116598745', null);
INSERT INTO `common` VALUES ('227', '张琦琦', '22', '男', '656@qq.com', '13116183366', '河南省周口市', '汉族', '6562928112', '销售部', '经理', '11220', '412728199506168877', '中行', '6217000065559874665', null);
INSERT INTO `common` VALUES ('228', '李成光', '23', '男', '9898@qq.com', '15698452145', '宁夏回族自治区银川市', '回族', '56987456', '销售部', '经理', '5600', '123456987456321', '中行', '1231231231236217000065559874665', null);
INSERT INTO `common` VALUES ('229', '涂菊菊', '23', '男', '6565@qq.com', '13115186542', '河北省雄安新区', '汉族', '9895641223', '销售部', '经理', '6000', '123123123123123', '中行', '234353545454', null);
INSERT INTO `common` VALUES ('230', '白冰冰', '24', '女', '1007@qq.com', '6565987432', '河南省新乡市', '汉族', '12321312312', '销售部', '经理', '3123', '412765313213138', '中行', '234423435435543543', null);
INSERT INTO `common` VALUES ('231', '张宇', '23', '男', '656233@qq.com', '12312', '天津市南开区', '汉族', '312312', '研发部', '主管', '123213', '124234234324324', '中行', '2342342453454', null);
INSERT INTO `common` VALUES ('233', '宋津', '22', '男', '6983@qq.com', '139864133', '山东省青岛市', '汉族', '98654123', '行政部', '主管', '6000', '412728165489782354', '中行', '1231231231231231', null);
INSERT INTO `common` VALUES ('242', '张琦琦', '23', '男', '656@qq.com', '13116182330', '河南省周口市', '汉族', '6562928', '销售部', '经理', '2000', '412728199507135566', '中行', '6228482088021115119', null);
INSERT INTO `common` VALUES ('243', '李成光', '24', '男', '898@qq.com', '13116182330', '甘肃省白银市', '汉族', '1007213323', '研发部', '主管', '3000', '412728199645062356', '农行', '62284820006598119', null);
INSERT INTO `common` VALUES ('244', '张三', '25', '男', '898@qq.com', '13156568989', '河北省保定市', '汉族', '102356897', '财务部', '主管', '2300', '412728199654540202', '工行', '622848608802111559', null);
INSERT INTO `common` VALUES ('245', '李四', '25', '女', '2323@qq.com', '13589897878', '江苏省宿迁市', '汉族', '100856893', '行政部', '主管', '5600', '100200198745612356', '建行', '622565689890000119', null);
INSERT INTO `common` VALUES ('246', '白花花', '26', '男', '5566@qq.com', '18956561234', '湖南省襄樊市', '汉族', '656292845', '行政部', '主管', '4500', '201306199189781235', '建行', '6000565684065119', null);
INSERT INTO `common` VALUES ('247', '胡雪', '31', '男', '2323@qq.com', '15456231598', '湖北省武汉市', '汉族', '1008568941', '研发部', '主管', '4000', '102306198789561234', '工行', '1045698756213546', null);

-- ----------------------------
-- Table structure for custom
-- ----------------------------
DROP TABLE IF EXISTS `custom`;
CREATE TABLE `custom` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `edu` varchar(255) DEFAULT NULL,
  `nation` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `interesting` varchar(255) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `isdelete` varchar(255) DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `ww` FOREIGN KEY (`id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updatedate` datetime DEFAULT NULL,
  `isdelete` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3034 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of outsource
-- ----------------------------
INSERT INTO `outsource` VALUES ('3017', '福安花园2-15-1501', '1-1-1', '15989894545', '东', '15', '2310000', '1989', '75', '30800', '李成光', '13156895656', '王丽', null, null);
INSERT INTO `outsource` VALUES ('3018', '临江里5-1-102', '1-1-1', '13116182330', '东', '1', '2880000', '1996', '96', '30000', '李小花', '13116182330', '胡成玉', null, null);
INSERT INTO `outsource` VALUES ('3019', '川北里11-2-601', '1-1-1', '13312568989', '东', '6', '2100000', '1998', '70', '30000', '张倩倩', '13116182330', '泪汪汪', null, null);
INSERT INTO `outsource` VALUES ('3020', '大园新居4-1-503', '2-1-1<H>', '13116185544', '西南', '5', '4800000', '2003', '120', '40000', '刘盼盼', '13116182330', '刘磊', null, null);
INSERT INTO `outsource` VALUES ('3027', '天华里2-3-501', '2-1-1<H>', '15689784563', '南', '5', '1995000', '1989', '57', '35000', '张哥', '18656894563', '曾立', null, null);
INSERT INTO `outsource` VALUES ('3028', '地华里11-3-201', '2-1-1<H>', '13312058989', '西北', '2', '2310000', '1994', '56', '412500', '李光明', '13116182330', '张琦琦', null, null);
INSERT INTO `outsource` VALUES ('3029', '杏花里9-6-601', '3-1-1', '13312058989', '东南', '6', '3180000', '2004', '60', '53000', '魏花花', '13156895656', '何相悦', null, null);
INSERT INTO `outsource` VALUES ('3030', '卧虎里6-3-103', '1-1-1', '15845451236', '东', '1', '1500000', '2006', '50', '30000', '李阿姨', '15856564545', '何相悦', null, null);
INSERT INTO `outsource` VALUES ('3031', '北江里6-4-504', '2-1-1<H>', '15987456321', '南', '5', '1000000', '2001', '40', '25000', '张叔叔', '15689897456', '凡留华', null, null);
INSERT INTO `outsource` VALUES ('3032', '清丽花园5-1-1004', '3-1-1', '13116182330', '东南', '10', '6500000', '2005', '120', '51500', '刘哒哒', '15945698745', '张琦琦', null, null);
INSERT INTO `outsource` VALUES ('3033', '日华里9-4-302', '1-1-1', '15945698745', '东', '3', '3000000', '2005', '50', '60000', '查姐', '15945897856', '张倩倩', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=2035 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES ('2023', '李成光', null, '1998', '565@qq.com', '13116182330', '福雅花园8-4-405', '2-1-1<H>', '2300', '东', '4', '王丽', 'A4', null, null);
INSERT INTO `train` VALUES ('2024', '李浩宇', null, '2006', '898@qq.com', '13116182330', '迎水东里4-2-301', '1-1-1', '1800', '东南', '3', '王昊天', 'A3', null, null);
INSERT INTO `train` VALUES ('2025', '徐玉梅', null, '2008', '898@qq.com', '13116185642', '林川北里3-2-101', '3-2-2', '4600', '东北', '1', '方花', 'M5', null, null);
INSERT INTO `train` VALUES ('2026', '曹世莉', null, '2009', '565@qq.com', '18749276589', '大园新居3-5-202', '3-1-1', '3600', '西北', '2', '刘志华', 'A3', null, null);
INSERT INTO `train` VALUES ('2027', '张晓华', null, '1998', '2323@qq.com', '13116182330', '莲花公寓6-1-1001', '2-1-1<H>', '2300', '北', '10', '孙安海', 'A2', null, null);
INSERT INTO `train` VALUES ('2028', '轩辕萌萌', null, '2003', '8989@qq.com', '13556564545', '迎水里5-2-302', '3-2-2', '3500', '西北', '3', '李晓协', 'A3', null, null);
INSERT INTO `train` VALUES ('2029', '欧浩', null, '2009', '2020@163.com', '13523235656', '大宇里9-4-201', '3-1-1', '3000', '东', '2', '李胜云', 'A3', null, null);
INSERT INTO `train` VALUES ('2030', '李哥', null, '2005', '5656@qq.com', '13156568989', '杏花里2-1-501', '1-1-1', '1500', '南', '5', '李正阳', 'A2', null, null);
INSERT INTO `train` VALUES ('2031', '华哥', null, '2004', '2323@qq.com', '13123238989', '博雅华公寓9-1-2001', '2-1-1<H>', '2500', '西北', '20', '包大卫', 'A3', null, null);
INSERT INTO `train` VALUES ('2032', '荣解放', null, '2009', '5656@qq.com', '13115698745', '月华里5-1-503', '3-1-1', '3000', '南', '5', '曹超力', 'M6', null, null);
INSERT INTO `train` VALUES ('2034', '李大姐', null, '1989', '8989@qq.com', '15965658989', '西江里9-4-501', '1-1-1', '1800', '东南', '5', '文虎虎', 'A1', null, null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'admin', '123456', '656292842@qq.com', '超级管理员', '13116182330', 'QIQI');
INSERT INTO `user` VALUES ('3', 'admin1', '123456', '1007213323@qq.com', '经理', '13116182330', 'qiqi');
INSERT INTO `user` VALUES ('4', '经纪人', '123456', '8989@qq.com', '经纪人', '13118233000', 'qiqi');
