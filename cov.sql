/*
Navicat MySQL Data Transfer

Source Server         : bigbase
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : cov

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-03-22 13:22:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chinadetails1
-- ----------------------------
DROP TABLE IF EXISTS `chinadetails1`;
CREATE TABLE `chinadetails1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(50) DEFAULT NULL COMMENT '省',
  `confirm` int(11) DEFAULT NULL COMMENT '累计确诊',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of chinadetails1
-- ----------------------------
INSERT INTO `chinadetails1` VALUES ('82', '湖北', '68151');
INSERT INTO `chinadetails1` VALUES ('83', '广东', '2251');
INSERT INTO `chinadetails1` VALUES ('84', '河南', '1309');
INSERT INTO `chinadetails1` VALUES ('85', '浙江', '1323');
INSERT INTO `chinadetails1` VALUES ('86', '湖南', '1039');
INSERT INTO `chinadetails1` VALUES ('87', '安徽', '994');
INSERT INTO `chinadetails1` VALUES ('88', '江西', '935');
INSERT INTO `chinadetails1` VALUES ('89', '香港', '11363');
INSERT INTO `chinadetails1` VALUES ('90', '山东', '869');
INSERT INTO `chinadetails1` VALUES ('91', '江苏', '708');
INSERT INTO `chinadetails1` VALUES ('92', '北京', '1049');
INSERT INTO `chinadetails1` VALUES ('93', '重庆', '591');
INSERT INTO `chinadetails1` VALUES ('94', '四川', '937');
INSERT INTO `chinadetails1` VALUES ('95', '上海', '1848');
INSERT INTO `chinadetails1` VALUES ('96', '黑龙江', '1610');
INSERT INTO `chinadetails1` VALUES ('97', '福建', '557');
INSERT INTO `chinadetails1` VALUES ('98', '台湾', '1004');
INSERT INTO `chinadetails1` VALUES ('99', '河北', '1317');
INSERT INTO `chinadetails1` VALUES ('100', '陕西', '562');
INSERT INTO `chinadetails1` VALUES ('101', '广西', '267');
INSERT INTO `chinadetails1` VALUES ('102', '云南', '234');
INSERT INTO `chinadetails1` VALUES ('103', '天津', '368');
INSERT INTO `chinadetails1` VALUES ('104', '海南', '171');
INSERT INTO `chinadetails1` VALUES ('105', '贵州', '147');
INSERT INTO `chinadetails1` VALUES ('106', '辽宁', '406');
INSERT INTO `chinadetails1` VALUES ('107', '甘肃', '187');
INSERT INTO `chinadetails1` VALUES ('108', '山西', '241');
INSERT INTO `chinadetails1` VALUES ('109', '内蒙古', '369');
INSERT INTO `chinadetails1` VALUES ('110', '吉林', '573');
INSERT INTO `chinadetails1` VALUES ('111', '新疆', '980');
INSERT INTO `chinadetails1` VALUES ('112', '宁夏', '75');
INSERT INTO `chinadetails1` VALUES ('113', '澳门', '48');
INSERT INTO `chinadetails1` VALUES ('114', '青海', '18');
INSERT INTO `chinadetails1` VALUES ('115', '西藏', '1');

-- ----------------------------
-- Table structure for chinahistory1
-- ----------------------------
DROP TABLE IF EXISTS `chinahistory1`;
CREATE TABLE `chinahistory1` (
  `day` datetime NOT NULL COMMENT '日期',
  `confirm` int(11) DEFAULT NULL COMMENT '累计确诊',
  `confirm_add` int(11) DEFAULT NULL COMMENT '当日新增确诊',
  `suspect` int(11) DEFAULT NULL COMMENT '剩余疑似',
  `suspect_add` int(11) DEFAULT NULL COMMENT '当日新增疑似',
  `heal` int(11) DEFAULT NULL COMMENT '累计治愈',
  `heal_add` int(11) DEFAULT NULL COMMENT '当日新增治愈',
  `dead` int(11) DEFAULT NULL COMMENT '累计死亡',
  `dead_add` int(11) DEFAULT NULL COMMENT '当日新增死亡',
  PRIMARY KEY (`day`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of chinahistory1
-- ----------------------------
INSERT INTO `chinahistory1` VALUES ('2020-01-23 00:00:00', '835', '835', '1072', '680', '34', '34', '25', '25');
INSERT INTO `chinahistory1` VALUES ('2020-01-24 00:00:00', '1297', '462', '1965', '1118', '38', '4', '41', '16');
INSERT INTO `chinahistory1` VALUES ('2020-01-25 00:00:00', '1985', '688', '2684', '1309', '49', '11', '56', '15');
INSERT INTO `chinahistory1` VALUES ('2020-01-26 00:00:00', '2761', '776', '5794', '3806', '51', '2', '80', '24');
INSERT INTO `chinahistory1` VALUES ('2020-01-27 00:00:00', '4535', '1774', '6973', '2077', '60', '9', '106', '26');
INSERT INTO `chinahistory1` VALUES ('2020-01-28 00:00:00', '5997', '1462', '9239', '3248', '103', '43', '132', '26');
INSERT INTO `chinahistory1` VALUES ('2020-01-29 00:00:00', '7736', '1739', '12167', '4148', '124', '21', '170', '38');
INSERT INTO `chinahistory1` VALUES ('2020-01-30 00:00:00', '9720', '1984', '15238', '4812', '171', '47', '213', '43');
INSERT INTO `chinahistory1` VALUES ('2020-01-31 00:00:00', '11821', '2101', '17988', '5019', '243', '72', '259', '46');
INSERT INTO `chinahistory1` VALUES ('2020-02-01 00:00:00', '14411', '2590', '19544', '4562', '328', '85', '304', '45');
INSERT INTO `chinahistory1` VALUES ('2020-02-02 00:00:00', '17238', '2827', '21558', '5173', '475', '147', '361', '57');
INSERT INTO `chinahistory1` VALUES ('2020-02-03 00:00:00', '20471', '3233', '23214', '5072', '630', '155', '425', '64');
INSERT INTO `chinahistory1` VALUES ('2020-02-04 00:00:00', '24363', '3892', '23260', '3971', '892', '262', '491', '66');
INSERT INTO `chinahistory1` VALUES ('2020-02-05 00:00:00', '28060', '3697', '24702', '5328', '1153', '261', '564', '73');
INSERT INTO `chinahistory1` VALUES ('2020-02-06 00:00:00', '31197', '3137', '26359', '4833', '1542', '389', '637', '73');
INSERT INTO `chinahistory1` VALUES ('2020-02-07 00:00:00', '34594', '3397', '27657', '4214', '2052', '510', '723', '86');
INSERT INTO `chinahistory1` VALUES ('2020-02-08 00:00:00', '37162', '2568', '28942', '3916', '2651', '599', '812', '89');
INSERT INTO `chinahistory1` VALUES ('2020-02-09 00:00:00', '40224', '3062', '23589', '4008', '3283', '632', '909', '97');
INSERT INTO `chinahistory1` VALUES ('2020-02-10 00:00:00', '42708', '2484', '21675', '3536', '3998', '715', '1017', '108');
INSERT INTO `chinahistory1` VALUES ('2020-02-11 00:00:00', '44730', '2022', '16067', '3342', '4742', '744', '1114', '97');
INSERT INTO `chinahistory1` VALUES ('2020-02-12 00:00:00', '58839', '14109', '13435', '2807', '5646', '904', '1260', '146');
INSERT INTO `chinahistory1` VALUES ('2020-02-13 00:00:00', '63932', '5093', '10109', '2450', '6728', '1082', '1381', '121');
INSERT INTO `chinahistory1` VALUES ('2020-02-14 00:00:00', '66575', '2643', '8969', '2277', '8101', '1373', '1524', '143');
INSERT INTO `chinahistory1` VALUES ('2020-02-15 00:00:00', '68584', '2009', '8229', '1918', '9425', '1324', '1666', '142');
INSERT INTO `chinahistory1` VALUES ('2020-02-16 00:00:00', '70637', '2053', '7264', '1563', '10860', '1435', '1772', '106');
INSERT INTO `chinahistory1` VALUES ('2020-02-17 00:00:00', '72528', '1891', '6242', '1432', '12561', '1701', '1870', '98');
INSERT INTO `chinahistory1` VALUES ('2020-02-18 00:00:00', '74276', '1748', '5248', '1185', '14387', '1826', '2006', '136');
INSERT INTO `chinahistory1` VALUES ('2020-02-19 00:00:00', '75101', '825', '4922', '1277', '16168', '1781', '2121', '115');
INSERT INTO `chinahistory1` VALUES ('2020-02-20 00:00:00', '75993', '892', '5206', '1614', '18277', '2109', '2239', '118');
INSERT INTO `chinahistory1` VALUES ('2020-02-21 00:00:00', '76392', '399', '5365', '1361', '20672', '2395', '2348', '109');
INSERT INTO `chinahistory1` VALUES ('2020-02-22 00:00:00', '76846', '454', '4148', '882', '22907', '2235', '2445', '97');
INSERT INTO `chinahistory1` VALUES ('2020-02-23 00:00:00', '77262', '416', '3434', '620', '24757', '1850', '2595', '150');
INSERT INTO `chinahistory1` VALUES ('2020-02-24 00:00:00', '77779', '517', '2824', '530', '27353', '2596', '2666', '71');
INSERT INTO `chinahistory1` VALUES ('2020-02-25 00:00:00', '78190', '411', '2491', '439', '29775', '2422', '2718', '52');
INSERT INTO `chinahistory1` VALUES ('2020-02-26 00:00:00', '78630', '440', '2358', '508', '32531', '2756', '2747', '29');
INSERT INTO `chinahistory1` VALUES ('2020-02-27 00:00:00', '78959', '329', '2308', '452', '36157', '3626', '2791', '44');
INSERT INTO `chinahistory1` VALUES ('2020-02-28 00:00:00', '79389', '430', '1418', '248', '39049', '2892', '2838', '47');
INSERT INTO `chinahistory1` VALUES ('2020-02-29 00:00:00', '79968', '579', '851', '132', '41675', '2626', '2873', '35');
INSERT INTO `chinahistory1` VALUES ('2020-03-01 00:00:00', '80174', '206', '715', '141', '44518', '2843', '2915', '42');
INSERT INTO `chinahistory1` VALUES ('2020-03-02 00:00:00', '80302', '128', '587', '129', '47260', '2742', '2946', '31');
INSERT INTO `chinahistory1` VALUES ('2020-03-03 00:00:00', '80422', '120', '520', '143', '49914', '2654', '2984', '38');
INSERT INTO `chinahistory1` VALUES ('2020-03-04 00:00:00', '80565', '143', '522', '143', '52109', '2195', '3015', '31');
INSERT INTO `chinahistory1` VALUES ('2020-03-05 00:00:00', '80710', '145', '482', '102', '53793', '1684', '3045', '30');
INSERT INTO `chinahistory1` VALUES ('2020-03-06 00:00:00', '80813', '103', '502', '99', '55477', '1684', '3073', '28');
INSERT INTO `chinahistory1` VALUES ('2020-03-07 00:00:00', '80859', '46', '458', '84', '57143', '1666', '3100', '27');
INSERT INTO `chinahistory1` VALUES ('2020-03-08 00:00:00', '80904', '45', '421', '60', '58684', '1541', '3123', '23');
INSERT INTO `chinahistory1` VALUES ('2020-03-09 00:00:00', '80924', '20', '349', '36', '59982', '1298', '3140', '17');
INSERT INTO `chinahistory1` VALUES ('2020-03-10 00:00:00', '80955', '31', '285', '31', '61567', '1585', '3162', '22');
INSERT INTO `chinahistory1` VALUES ('2020-03-11 00:00:00', '80992', '37', '253', '33', '62887', '1320', '3173', '11');
INSERT INTO `chinahistory1` VALUES ('2020-03-12 00:00:00', '81003', '11', '147', '33', '64216', '1329', '3180', '7');
INSERT INTO `chinahistory1` VALUES ('2020-03-13 00:00:00', '81021', '18', '115', '17', '65649', '1433', '3194', '14');
INSERT INTO `chinahistory1` VALUES ('2020-03-14 00:00:00', '81048', '27', '113', '39', '67022', '1373', '3204', '10');
INSERT INTO `chinahistory1` VALUES ('2020-03-15 00:00:00', '81077', '29', '134', '41', '67863', '841', '3218', '14');
INSERT INTO `chinahistory1` VALUES ('2020-03-16 00:00:00', '81116', '39', '128', '45', '68799', '936', '3231', '13');
INSERT INTO `chinahistory1` VALUES ('2020-03-17 00:00:00', '81151', '35', '119', '21', '69725', '926', '3242', '11');
INSERT INTO `chinahistory1` VALUES ('2020-03-18 00:00:00', '81235', '84', '105', '23', '70547', '822', '3250', '8');
INSERT INTO `chinahistory1` VALUES ('2020-03-19 00:00:00', '81300', '65', '104', '31', '71284', '737', '3253', '3');
INSERT INTO `chinahistory1` VALUES ('2020-03-20 00:00:00', '81416', '116', '106', '36', '71876', '592', '3261', '8');
INSERT INTO `chinahistory1` VALUES ('2020-03-21 00:00:00', '81498', '82', '118', '45', '72382', '506', '3267', '6');
INSERT INTO `chinahistory1` VALUES ('2020-03-22 00:00:00', '81600', '102', '136', '47', '72841', '459', '3276', '9');
INSERT INTO `chinahistory1` VALUES ('2020-03-23 00:00:00', '81747', '147', '132', '35', '73299', '458', '3283', '7');
INSERT INTO `chinahistory1` VALUES ('2020-03-24 00:00:00', '81846', '99', '134', '33', '73791', '492', '3287', '4');
INSERT INTO `chinahistory1` VALUES ('2020-03-25 00:00:00', '81960', '114', '159', '58', '74196', '405', '3293', '6');
INSERT INTO `chinahistory1` VALUES ('2020-03-26 00:00:00', '82078', '118', '189', '49', '74737', '541', '3298', '5');
INSERT INTO `chinahistory1` VALUES ('2020-03-27 00:00:00', '82213', '135', '184', '29', '75122', '385', '3301', '3');
INSERT INTO `chinahistory1` VALUES ('2020-03-28 00:00:00', '82341', '128', '174', '28', '75600', '478', '3306', '5');
INSERT INTO `chinahistory1` VALUES ('2020-03-29 00:00:00', '82447', '106', '168', '17', '75937', '337', '3311', '5');
INSERT INTO `chinahistory1` VALUES ('2020-03-30 00:00:00', '82545', '98', '183', '44', '76225', '288', '3314', '3');
INSERT INTO `chinahistory1` VALUES ('2020-03-31 00:00:00', '82631', '86', '172', '26', '76415', '190', '3321', '7');
INSERT INTO `chinahistory1` VALUES ('2020-04-01 00:00:00', '82724', '93', '153', '20', '76610', '195', '3327', '6');
INSERT INTO `chinahistory1` VALUES ('2020-04-02 00:00:00', '82802', '78', '135', '12', '76785', '175', '3331', '4');
INSERT INTO `chinahistory1` VALUES ('2020-04-03 00:00:00', '82875', '73', '114', '11', '76984', '199', '3335', '4');
INSERT INTO `chinahistory1` VALUES ('2020-04-04 00:00:00', '82930', '55', '107', '11', '77210', '226', '3338', '3');
INSERT INTO `chinahistory1` VALUES ('2020-04-05 00:00:00', '83005', '75', '88', '10', '77348', '138', '3340', '2');
INSERT INTO `chinahistory1` VALUES ('2020-04-06 00:00:00', '83071', '66', '89', '12', '77450', '102', '3340', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-07 00:00:00', '83157', '86', '83', '12', '77586', '136', '3342', '2');
INSERT INTO `chinahistory1` VALUES ('2020-04-08 00:00:00', '83249', '92', '73', '17', '77711', '125', '3344', '2');
INSERT INTO `chinahistory1` VALUES ('2020-04-09 00:00:00', '83305', '56', '53', '3', '77838', '127', '3345', '1');
INSERT INTO `chinahistory1` VALUES ('2020-04-10 00:00:00', '83369', '64', '44', '8', '77935', '97', '3349', '4');
INSERT INTO `chinahistory1` VALUES ('2020-04-11 00:00:00', '83482', '113', '82', '49', '78020', '85', '3349', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-12 00:00:00', '83597', '115', '72', '6', '78145', '125', '3351', '2');
INSERT INTO `chinahistory1` VALUES ('2020-04-13 00:00:00', '83696', '99', '72', '3', '78262', '117', '3351', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-14 00:00:00', '83745', '49', '73', '11', '78389', '127', '3352', '1');
INSERT INTO `chinahistory1` VALUES ('2020-04-15 00:00:00', '83797', '52', '63', '4', '77539', '115', '3352', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-16 00:00:00', '84149', '352', '62', '3', '77635', '96', '4642', '1290');
INSERT INTO `chinahistory1` VALUES ('2020-04-17 00:00:00', '84180', '31', '63', '5', '77744', '109', '4642', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-18 00:00:00', '84201', '21', '48', '2', '77825', '81', '4642', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-19 00:00:00', '84237', '36', '43', '2', '77895', '70', '4642', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-20 00:00:00', '84250', '13', '37', '3', '77978', '83', '4642', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-21 00:00:00', '84287', '37', '35', '3', '78042', '64', '4642', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-22 00:00:00', '84302', '15', '20', '0', '78147', '105', '4642', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-23 00:00:00', '84311', '9', '20', '2', '78236', '89', '4642', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-24 00:00:00', '84324', '13', '17', '3', '78362', '126', '4642', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-25 00:00:00', '84338', '14', '12', '0', '78450', '88', '4643', '1');
INSERT INTO `chinahistory1` VALUES ('2020-04-26 00:00:00', '84341', '3', '10', '5', '78558', '108', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-27 00:00:00', '84347', '6', '9', '1', '78664', '106', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-28 00:00:00', '84369', '22', '10', '2', '78729', '65', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-29 00:00:00', '84373', '4', '10', '3', '78785', '56', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-04-30 00:00:00', '84385', '12', '9', '3', '78845', '60', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-01 00:00:00', '84388', '3', '11', '2', '78905', '60', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-02 00:00:00', '84393', '5', '10', '0', '78939', '34', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-03 00:00:00', '84400', '7', '3', '1', '79016', '77', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-04 00:00:00', '84404', '4', '2', '0', '79126', '110', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-05 00:00:00', '84406', '2', '5', '3', '79204', '78', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-06 00:00:00', '84409', '3', '4', '2', '79268', '64', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-07 00:00:00', '84415', '6', '6', '3', '79324', '56', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-08 00:00:00', '84416', '1', '8', '2', '79401', '77', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-09 00:00:00', '84430', '14', '4', '1', '79488', '87', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-10 00:00:00', '84450', '20', '3', '0', '79533', '45', '4643', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-11 00:00:00', '84451', '1', '3', '1', '79566', '33', '4644', '1');
INSERT INTO `chinahistory1` VALUES ('2020-05-12 00:00:00', '84458', '7', '4', '1', '79594', '28', '4644', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-13 00:00:00', '84464', '6', '4', '0', '79621', '27', '4644', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-14 00:00:00', '84469', '5', '4', '1', '79644', '23', '4644', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-15 00:00:00', '84479', '10', '3', '2', '79668', '24', '4645', '1');
INSERT INTO `chinahistory1` VALUES ('2020-05-16 00:00:00', '84484', '5', '4', '2', '79682', '14', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-17 00:00:00', '84494', '10', '4', '1', '79701', '19', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-18 00:00:00', '84500', '6', '3', '1', '79708', '7', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-19 00:00:00', '84505', '5', '7', '3', '79715', '7', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-20 00:00:00', '84507', '2', '7', '1', '79722', '7', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-21 00:00:00', '84520', '13', '7', '0', '79736', '14', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-22 00:00:00', '84522', '2', '7', '0', '79740', '4', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-23 00:00:00', '84525', '3', '6', '2', '79746', '6', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-24 00:00:00', '84536', '11', '9', '3', '79757', '11', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-25 00:00:00', '84543', '7', '4', '0', '79767', '10', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-26 00:00:00', '84544', '1', '5', '0', '79774', '7', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-27 00:00:00', '84547', '3', '5', '1', '79786', '12', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-28 00:00:00', '84547', '0', '5', '0', '79791', '5', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-29 00:00:00', '84565', '18', '5', '1', '79802', '11', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-30 00:00:00', '84570', '5', '4', '0', '79806', '4', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-05-31 00:00:00', '84588', '18', '4', '0', '79812', '6', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-01 00:00:00', '84595', '7', '3', '0', '79822', '10', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-02 00:00:00', '84602', '7', '3', '1', '79824', '2', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-03 00:00:00', '84603', '1', '3', '1', '79831', '7', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-04 00:00:00', '84614', '11', '2', '0', '79842', '11', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-05 00:00:00', '84620', '6', '2', '1', '79848', '6', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-06 00:00:00', '84629', '9', '3', '2', '79854', '6', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-07 00:00:00', '84634', '5', '3', '0', '79865', '11', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-08 00:00:00', '84638', '4', '4', '1', '79875', '10', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-09 00:00:00', '84641', '3', '1', '0', '79883', '8', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-10 00:00:00', '84652', '11', '1', '0', '79888', '5', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-11 00:00:00', '84659', '7', '1', '0', '79896', '8', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-12 00:00:00', '84671', '12', '1', '0', '79903', '7', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-13 00:00:00', '84729', '58', '2', '1', '79906', '3', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-14 00:00:00', '84778', '49', '2', '1', '79913', '7', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-15 00:00:00', '84823', '45', '3', '1', '79922', '9', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-16 00:00:00', '84867', '44', '4', '3', '79926', '4', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-17 00:00:00', '84903', '36', '7', '3', '79944', '18', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-18 00:00:00', '84940', '37', '7', '3', '79949', '5', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-19 00:00:00', '84970', '30', '7', '0', '79963', '14', '4645', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-20 00:00:00', '84997', '27', '11', '4', '79969', '6', '4646', '1');
INSERT INTO `chinahistory1` VALUES ('2020-06-21 00:00:00', '85018', '21', '15', '2', '79970', '1', '4646', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-22 00:00:00', '85070', '52', '15', '2', '79983', '13', '4646', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-23 00:00:00', '85098', '28', '18', '3', '79991', '8', '4647', '1');
INSERT INTO `chinahistory1` VALUES ('2020-06-24 00:00:00', '85119', '21', '18', '3', '79999', '8', '4647', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-25 00:00:00', '85148', '29', '10', '3', '80007', '8', '4648', '1');
INSERT INTO `chinahistory1` VALUES ('2020-06-26 00:00:00', '85172', '24', '10', '3', '80015', '8', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-27 00:00:00', '85190', '18', '8', '1', '80026', '11', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-28 00:00:00', '85204', '14', '10', '4', '80044', '18', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-29 00:00:00', '85227', '23', '7', '1', '80054', '10', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-06-30 00:00:00', '85232', '5', '8', '2', '80068', '14', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-01 00:00:00', '85263', '31', '8', '2', '80087', '19', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-02 00:00:00', '85278', '15', '5', '0', '80102', '15', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-03 00:00:00', '85287', '9', '7', '2', '80117', '15', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-04 00:00:00', '85306', '19', '7', '1', '80144', '27', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-05 00:00:00', '85320', '14', '7', '1', '80157', '13', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-06 00:00:00', '85345', '25', '7', '2', '80168', '11', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-07 00:00:00', '85366', '21', '7', '2', '80192', '24', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-08 00:00:00', '85399', '33', '6', '0', '80240', '48', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-09 00:00:00', '85445', '46', '5', '0', '80268', '28', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-10 00:00:00', '85487', '42', '8', '0', '80293', '25', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-11 00:00:00', '85522', '35', '7', '0', '80314', '21', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-12 00:00:00', '85568', '46', '7', '0', '80345', '31', '4648', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-13 00:00:00', '85623', '55', '7', '0', '80376', '31', '4649', '1');
INSERT INTO `chinahistory1` VALUES ('2020-07-14 00:00:00', '85677', '54', '3', '0', '80407', '31', '4649', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-15 00:00:00', '85697', '20', '3', '0', '80445', '38', '4651', '2');
INSERT INTO `chinahistory1` VALUES ('2020-07-16 00:00:00', '85775', '78', '3', '0', '80476', '31', '4651', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-17 00:00:00', '85857', '82', '4', '1', '80508', '32', '4652', '1');
INSERT INTO `chinahistory1` VALUES ('2020-07-18 00:00:00', '85937', '80', '4', '1', '80535', '27', '4653', '1');
INSERT INTO `chinahistory1` VALUES ('2020-07-19 00:00:00', '86068', '131', '4', '1', '80579', '44', '4653', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-20 00:00:00', '86152', '84', '1', '0', '80605', '26', '4653', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-21 00:00:00', '86226', '74', '1', '0', '80650', '45', '4655', '2');
INSERT INTO `chinahistory1` VALUES ('2020-07-22 00:00:00', '86361', '135', '4', '3', '80685', '35', '4655', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-23 00:00:00', '86500', '139', '2', '1', '80738', '53', '4656', '1');
INSERT INTO `chinahistory1` VALUES ('2020-07-24 00:00:00', '86660', '160', '2', '2', '80782', '44', '4657', '1');
INSERT INTO `chinahistory1` VALUES ('2020-07-25 00:00:00', '86839', '179', '3', '2', '80849', '67', '4659', '2');
INSERT INTO `chinahistory1` VALUES ('2020-07-26 00:00:00', '87028', '189', '3', '2', '80899', '50', '4659', '0');
INSERT INTO `chinahistory1` VALUES ('2020-07-27 00:00:00', '87245', '217', '3', '0', '80906', '7', '4663', '4');
INSERT INTO `chinahistory1` VALUES ('2020-07-28 00:00:00', '87457', '212', '1', '0', '80957', '51', '4664', '1');
INSERT INTO `chinahistory1` VALUES ('2020-07-29 00:00:00', '87680', '223', '2', '1', '81034', '77', '4665', '1');
INSERT INTO `chinahistory1` VALUES ('2020-07-30 00:00:00', '87956', '276', '2', '1', '81120', '86', '4666', '1');
INSERT INTO `chinahistory1` VALUES ('2020-07-31 00:00:00', '88121', '165', '2', '0', '81227', '107', '4668', '2');
INSERT INTO `chinahistory1` VALUES ('2020-08-01 00:00:00', '88301', '180', '2', '0', '81348', '121', '4672', '4');
INSERT INTO `chinahistory1` VALUES ('2020-08-02 00:00:00', '88459', '158', '4', '3', '81459', '111', '4676', '4');
INSERT INTO `chinahistory1` VALUES ('2020-08-03 00:00:00', '88573', '114', '5', '1', '81554', '95', '4679', '3');
INSERT INTO `chinahistory1` VALUES ('2020-08-04 00:00:00', '88682', '109', '5', '1', '81675', '121', '4683', '4');
INSERT INTO `chinahistory1` VALUES ('2020-08-05 00:00:00', '88804', '122', '2', '0', '81858', '183', '4684', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-06 00:00:00', '88937', '133', '3', '2', '82033', '175', '4687', '3');
INSERT INTO `chinahistory1` VALUES ('2020-08-07 00:00:00', '89057', '120', '7', '5', '82230', '197', '4688', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-08 00:00:00', '89149', '92', '6', '0', '82410', '180', '4688', '0');
INSERT INTO `chinahistory1` VALUES ('2020-08-09 00:00:00', '89270', '121', '7', '1', '82566', '156', '4693', '5');
INSERT INTO `chinahistory1` VALUES ('2020-08-10 00:00:00', '89383', '113', '3', '2', '82688', '122', '4696', '3');
INSERT INTO `chinahistory1` VALUES ('2020-08-11 00:00:00', '89444', '61', '3', '1', '82883', '195', '4699', '3');
INSERT INTO `chinahistory1` VALUES ('2020-08-12 00:00:00', '89526', '82', '4', '1', '83083', '200', '4704', '5');
INSERT INTO `chinahistory1` VALUES ('2020-08-13 00:00:00', '89625', '99', '5', '2', '83253', '170', '4707', '3');
INSERT INTO `chinahistory1` VALUES ('2020-08-14 00:00:00', '89695', '70', '5', '2', '83407', '154', '4708', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-15 00:00:00', '89761', '66', '3', '1', '83559', '152', '4710', '2');
INSERT INTO `chinahistory1` VALUES ('2020-08-16 00:00:00', '89859', '98', '4', '2', '83648', '89', '4710', '0');
INSERT INTO `chinahistory1` VALUES ('2020-08-17 00:00:00', '89926', '67', '3', '0', '83737', '89', '4710', '0');
INSERT INTO `chinahistory1` VALUES ('2020-08-18 00:00:00', '89980', '54', '2', '0', '83858', '121', '4712', '2');
INSERT INTO `chinahistory1` VALUES ('2020-08-19 00:00:00', '90013', '33', '2', '0', '84027', '169', '4713', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-20 00:00:00', '90053', '40', '0', '0', '84122', '95', '4716', '3');
INSERT INTO `chinahistory1` VALUES ('2020-08-21 00:00:00', '90103', '50', '1', '1', '84254', '132', '4716', '0');
INSERT INTO `chinahistory1` VALUES ('2020-08-22 00:00:00', '90141', '38', '3', '2', '84372', '118', '4717', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-23 00:00:00', '90182', '41', '2', '1', '84446', '74', '4718', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-24 00:00:00', '90205', '23', '2', '0', '84516', '70', '4718', '0');
INSERT INTO `chinahistory1` VALUES ('2020-08-25 00:00:00', '90239', '34', '0', '0', '84626', '110', '4719', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-26 00:00:00', '90271', '32', '0', '0', '84715', '89', '4720', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-27 00:00:00', '90301', '30', '3', '2', '84799', '84', '4722', '2');
INSERT INTO `chinahistory1` VALUES ('2020-08-28 00:00:00', '90323', '22', '0', '0', '84883', '84', '4725', '3');
INSERT INTO `chinahistory1` VALUES ('2020-08-29 00:00:00', '90351', '28', '0', '0', '84948', '65', '4728', '3');
INSERT INTO `chinahistory1` VALUES ('2020-08-30 00:00:00', '90383', '32', '0', '0', '85005', '57', '4729', '1');
INSERT INTO `chinahistory1` VALUES ('2020-08-31 00:00:00', '90402', '19', '0', '0', '85058', '53', '4730', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-01 00:00:00', '90422', '20', '0', '0', '85122', '64', '4731', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-02 00:00:00', '90442', '20', '0', '0', '85169', '47', '4734', '3');
INSERT INTO `chinahistory1` VALUES ('2020-09-03 00:00:00', '90475', '33', '0', '0', '85211', '42', '4735', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-04 00:00:00', '90498', '23', '0', '0', '85257', '46', '4735', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-05 00:00:00', '90517', '19', '2', '2', '85314', '57', '4735', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-06 00:00:00', '90551', '34', '1', '0', '85350', '36', '4737', '2');
INSERT INTO `chinahistory1` VALUES ('2020-09-07 00:00:00', '90573', '22', '1', '0', '85380', '30', '4739', '2');
INSERT INTO `chinahistory1` VALUES ('2020-09-08 00:00:00', '90582', '9', '1', '0', '85411', '31', '4740', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-09 00:00:00', '90595', '13', '1', '0', '85436', '25', '4740', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-10 00:00:00', '90623', '28', '1', '0', '85480', '44', '4740', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-11 00:00:00', '90643', '20', '1', '1', '85505', '25', '4740', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-12 00:00:00', '90666', '23', '0', '0', '85533', '28', '4741', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-13 00:00:00', '90695', '29', '3', '3', '85566', '33', '4741', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-14 00:00:00', '90718', '23', '2', '0', '85583', '17', '4742', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-15 00:00:00', '90734', '16', '0', '0', '85605', '22', '4743', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-16 00:00:00', '90753', '19', '1', '1', '85634', '29', '4743', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-17 00:00:00', '90797', '44', '2', '1', '85662', '28', '4743', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-18 00:00:00', '90814', '17', '1', '1', '85684', '22', '4744', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-19 00:00:00', '90840', '26', '2', '1', '85710', '26', '4744', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-20 00:00:00', '90876', '36', '1', '0', '85721', '11', '4744', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-21 00:00:00', '90890', '14', '0', '0', '85739', '18', '4744', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-22 00:00:00', '90908', '18', '0', '0', '85759', '20', '4744', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-23 00:00:00', '90918', '10', '0', '0', '85788', '29', '4745', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-24 00:00:00', '90933', '15', '1', '1', '85806', '18', '4745', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-25 00:00:00', '90951', '18', '2', '1', '85827', '21', '4746', '1');
INSERT INTO `chinahistory1` VALUES ('2020-09-26 00:00:00', '90966', '15', '2', '0', '85844', '17', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-27 00:00:00', '90993', '27', '0', '0', '85865', '21', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-28 00:00:00', '91018', '25', '1', '1', '85884', '19', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-29 00:00:00', '91041', '23', '2', '2', '85913', '29', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-09-30 00:00:00', '91061', '20', '3', '3', '85950', '37', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-01 00:00:00', '91082', '21', '3', '0', '85968', '18', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-02 00:00:00', '91101', '19', '4', '1', '85984', '16', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-03 00:00:00', '91121', '20', '7', '3', '86000', '16', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-04 00:00:00', '91146', '25', '6', '0', '86019', '19', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-05 00:00:00', '91170', '24', '4', '0', '86030', '11', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-06 00:00:00', '91188', '18', '4', '0', '86056', '26', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-07 00:00:00', '91212', '24', '5', '1', '86083', '27', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-08 00:00:00', '91252', '40', '5', '0', '86104', '21', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-09 00:00:00', '91278', '26', '4', '0', '86136', '32', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-10 00:00:00', '91305', '27', '9', '5', '86153', '17', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-11 00:00:00', '91333', '28', '9', '1', '86167', '14', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-12 00:00:00', '91359', '26', '7', '0', '86185', '18', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-13 00:00:00', '91388', '29', '5', '2', '86202', '17', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-14 00:00:00', '91399', '11', '7', '2', '86217', '15', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-15 00:00:00', '91436', '37', '5', '1', '86239', '22', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-16 00:00:00', '91460', '24', '5', '0', '86254', '15', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-17 00:00:00', '91490', '30', '4', '1', '86286', '32', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-18 00:00:00', '91507', '17', '3', '0', '86312', '26', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-19 00:00:00', '91546', '39', '6', '3', '86333', '21', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-20 00:00:00', '91565', '19', '5', '0', '86371', '38', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-21 00:00:00', '91588', '23', '5', '0', '86395', '24', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-22 00:00:00', '91621', '33', '7', '2', '86427', '32', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-23 00:00:00', '91653', '32', '5', '0', '86448', '21', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-24 00:00:00', '91675', '22', '5', '1', '86480', '32', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-25 00:00:00', '91701', '26', '6', '1', '86506', '26', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-26 00:00:00', '91725', '24', '2', '0', '86526', '20', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-27 00:00:00', '91772', '47', '0', '0', '86537', '11', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-28 00:00:00', '91821', '49', '0', '0', '86560', '23', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-29 00:00:00', '91852', '31', '6', '6', '86599', '39', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-30 00:00:00', '91893', '41', '5', '2', '86626', '27', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-10-31 00:00:00', '91921', '28', '0', '0', '86654', '28', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-01 00:00:00', '91955', '34', '1', '1', '86684', '30', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-02 00:00:00', '92015', '60', '2', '2', '86712', '28', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-03 00:00:00', '92045', '30', '2', '1', '86737', '25', '4746', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-04 00:00:00', '92077', '32', '4', '3', '86766', '29', '4747', '1');
INSERT INTO `chinahistory1` VALUES ('2020-11-05 00:00:00', '92121', '44', '26', '23', '86793', '27', '4748', '1');
INSERT INTO `chinahistory1` VALUES ('2020-11-06 00:00:00', '92164', '43', '23', '0', '86831', '38', '4748', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-07 00:00:00', '92195', '31', '6', '4', '86876', '45', '4748', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-08 00:00:00', '92242', '47', '5', '1', '86901', '25', '4748', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-09 00:00:00', '92271', '29', '2', '0', '86925', '24', '4748', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-10 00:00:00', '92299', '28', '1', '0', '86955', '30', '4749', '1');
INSERT INTO `chinahistory1` VALUES ('2020-11-11 00:00:00', '92336', '37', '2', '1', '86985', '30', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-12 00:00:00', '92372', '36', '2', '0', '87027', '42', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-13 00:00:00', '92404', '32', '1', '0', '87059', '32', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-14 00:00:00', '92428', '24', '2', '1', '87087', '28', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-15 00:00:00', '92452', '24', '3', '1', '87114', '27', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-16 00:00:00', '92476', '24', '2', '0', '87154', '40', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-17 00:00:00', '92490', '14', '0', '0', '87208', '54', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-18 00:00:00', '92513', '23', '0', '0', '87244', '36', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-19 00:00:00', '92544', '31', '1', '1', '87277', '33', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-20 00:00:00', '92588', '44', '0', '0', '87303', '26', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-21 00:00:00', '92648', '60', '0', '0', '87321', '18', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-22 00:00:00', '92733', '85', '0', '0', '87346', '25', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-23 00:00:00', '92829', '96', '1', '1', '87370', '24', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-24 00:00:00', '92914', '85', '2', '1', '87399', '29', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-25 00:00:00', '93025', '111', '5', '3', '87444', '45', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-26 00:00:00', '93113', '88', '4', '0', '87459', '15', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-27 00:00:00', '93225', '112', '4', '0', '87496', '37', '4749', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-28 00:00:00', '93329', '104', '7', '4', '87528', '32', '4750', '1');
INSERT INTO `chinahistory1` VALUES ('2020-11-29 00:00:00', '93465', '136', '7', '0', '87570', '42', '4750', '0');
INSERT INTO `chinahistory1` VALUES ('2020-11-30 00:00:00', '93577', '112', '6', '0', '87586', '16', '4750', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-01 00:00:00', '93668', '91', '7', '1', '87621', '35', '4750', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-02 00:00:00', '93797', '129', '8', '2', '87677', '56', '4751', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-03 00:00:00', '93905', '108', '8', '1', '87720', '43', '4752', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-04 00:00:00', '94038', '133', '8', '0', '87777', '57', '4753', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-05 00:00:00', '94160', '122', '9', '2', '87837', '60', '4753', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-06 00:00:00', '94293', '133', '4', '2', '87906', '69', '4753', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-07 00:00:00', '94383', '90', '2', '1', '87978', '72', '4753', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-08 00:00:00', '94500', '117', '3', '2', '88067', '89', '4753', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-09 00:00:00', '94618', '118', '3', '2', '88168', '101', '4755', '2');
INSERT INTO `chinahistory1` VALUES ('2020-12-10 00:00:00', '94749', '131', '3', '0', '88298', '130', '4755', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-11 00:00:00', '94849', '100', '3', '0', '88411', '113', '4755', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-12 00:00:00', '94950', '101', '2', '1', '88546', '135', '4756', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-13 00:00:00', '95064', '114', '2', '0', '88648', '102', '4758', '2');
INSERT INTO `chinahistory1` VALUES ('2020-12-14 00:00:00', '95167', '103', '2', '0', '88730', '82', '4761', '3');
INSERT INTO `chinahistory1` VALUES ('2020-12-15 00:00:00', '95279', '112', '3', '1', '88823', '93', '4764', '3');
INSERT INTO `chinahistory1` VALUES ('2020-12-16 00:00:00', '95375', '96', '7', '1', '88939', '116', '4764', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-17 00:00:00', '95491', '116', '4', '0', '89047', '108', '4766', '2');
INSERT INTO `chinahistory1` VALUES ('2020-12-18 00:00:00', '95580', '89', '5', '1', '89158', '111', '4770', '4');
INSERT INTO `chinahistory1` VALUES ('2020-12-19 00:00:00', '95716', '136', '4', '0', '89294', '136', '4770', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-20 00:00:00', '95816', '100', '7', '4', '89410', '116', '4771', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-21 00:00:00', '95916', '100', '1', '0', '89492', '82', '4772', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-22 00:00:00', '95998', '82', '0', '0', '89601', '109', '4773', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-23 00:00:00', '96074', '76', '0', '0', '89743', '142', '4774', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-24 00:00:00', '96159', '85', '0', '0', '89843', '100', '4776', '2');
INSERT INTO `chinahistory1` VALUES ('2020-12-25 00:00:00', '96240', '81', '0', '0', '89974', '131', '4777', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-26 00:00:00', '96324', '84', '0', '0', '90074', '100', '4777', '0');
INSERT INTO `chinahistory1` VALUES ('2020-12-27 00:00:00', '96417', '93', '0', '0', '90176', '102', '4778', '1');
INSERT INTO `chinahistory1` VALUES ('2020-12-28 00:00:00', '96513', '96', '0', '0', '90247', '71', '4782', '4');
INSERT INTO `chinahistory1` VALUES ('2020-12-29 00:00:00', '96592', '79', '0', '0', '90360', '113', '4784', '2');
INSERT INTO `chinahistory1` VALUES ('2020-12-30 00:00:00', '96673', '81', '0', '0', '90484', '124', '4788', '4');
INSERT INTO `chinahistory1` VALUES ('2020-12-31 00:00:00', '96762', '89', '1', '1', '90597', '113', '4789', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-01 00:00:00', '96829', '67', '1', '1', '90716', '119', '4790', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-02 00:00:00', '96894', '65', '1', '0', '90788', '72', '4791', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-03 00:00:00', '96972', '78', '1', '0', '90851', '63', '4791', '0');
INSERT INTO `chinahistory1` VALUES ('2021-01-04 00:00:00', '97061', '89', '1', '0', '90914', '63', '4794', '3');
INSERT INTO `chinahistory1` VALUES ('2021-01-05 00:00:00', '97127', '66', '3', '2', '91008', '94', '4794', '0');
INSERT INTO `chinahistory1` VALUES ('2021-01-06 00:00:00', '97217', '90', '0', '0', '91106', '98', '4795', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-07 00:00:00', '97306', '89', '0', '0', '91188', '82', '4795', '0');
INSERT INTO `chinahistory1` VALUES ('2021-01-08 00:00:00', '97387', '81', '0', '0', '91262', '74', '4796', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-09 00:00:00', '97518', '131', '1', '0', '91351', '89', '4798', '2');
INSERT INTO `chinahistory1` VALUES ('2021-01-10 00:00:00', '97652', '134', '0', '0', '91418', '67', '4799', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-11 00:00:00', '97754', '102', '0', '0', '91500', '82', '4800', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-12 00:00:00', '97933', '179', '1', '1', '91588', '88', '4801', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-13 00:00:00', '98117', '184', '1', '0', '91685', '97', '4803', '2');
INSERT INTO `chinahistory1` VALUES ('2021-01-14 00:00:00', '98290', '173', '1', '1', '91760', '75', '4803', '0');
INSERT INTO `chinahistory1` VALUES ('2021-01-15 00:00:00', '98459', '169', '1', '1', '91841', '81', '4803', '0');
INSERT INTO `chinahistory1` VALUES ('2021-01-16 00:00:00', '98625', '166', '2', '1', '91908', '67', '4804', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-17 00:00:00', '98794', '169', '3', '2', '91959', '51', '4804', '0');
INSERT INTO `chinahistory1` VALUES ('2021-01-18 00:00:00', '99026', '232', '2', '0', '92020', '61', '4805', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-19 00:00:00', '99191', '165', '0', '0', '92089', '69', '4807', '2');
INSERT INTO `chinahistory1` VALUES ('2021-01-20 00:00:00', '99414', '223', '5', '5', '92148', '59', '4808', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-21 00:00:00', '99589', '175', '5', '0', '92216', '68', '4809', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-22 00:00:00', '99767', '178', '5', '0', '92297', '81', '4810', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-23 00:00:00', '99931', '164', '2', '1', '92383', '86', '4810', '0');
INSERT INTO `chinahistory1` VALUES ('2021-01-24 00:00:00', '100136', '205', '2', '1', '92497', '114', '4811', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-25 00:00:00', '100291', '155', '4', '3', '92565', '68', '4814', '3');
INSERT INTO `chinahistory1` VALUES ('2021-01-26 00:00:00', '100431', '140', '2', '1', '92718', '153', '4816', '2');
INSERT INTO `chinahistory1` VALUES ('2021-01-27 00:00:00', '100548', '117', '1', '0', '92881', '163', '4818', '2');
INSERT INTO `chinahistory1` VALUES ('2021-01-28 00:00:00', '100641', '93', '2', '2', '93037', '156', '4820', '2');
INSERT INTO `chinahistory1` VALUES ('2021-01-29 00:00:00', '100747', '106', '2', '0', '93244', '207', '4821', '1');
INSERT INTO `chinahistory1` VALUES ('2021-01-30 00:00:00', '100877', '130', '2', '0', '93449', '205', '4823', '2');
INSERT INTO `chinahistory1` VALUES ('2021-01-31 00:00:00', '100974', '97', '1', '0', '93613', '164', '4825', '2');
INSERT INTO `chinahistory1` VALUES ('2021-02-01 00:00:00', '101039', '65', '1', '0', '93726', '113', '4826', '1');
INSERT INTO `chinahistory1` VALUES ('2021-02-02 00:00:00', '101092', '53', '1', '1', '93894', '168', '4828', '2');
INSERT INTO `chinahistory1` VALUES ('2021-02-03 00:00:00', '101143', '51', '1', '1', '94115', '221', '4829', '1');
INSERT INTO `chinahistory1` VALUES ('2021-02-04 00:00:00', '101187', '44', '4', '3', '94298', '183', '4831', '2');
INSERT INTO `chinahistory1` VALUES ('2021-02-05 00:00:00', '101241', '54', '2', '1', '94447', '149', '4831', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-06 00:00:00', '101272', '31', '3', '2', '94597', '150', '4831', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-07 00:00:00', '101316', '44', '3', '0', '94729', '132', '4831', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-08 00:00:00', '101363', '47', '2', '1', '94839', '110', '4831', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-09 00:00:00', '101408', '45', '2', '0', '95001', '162', '4833', '2');
INSERT INTO `chinahistory1` VALUES ('2021-02-10 00:00:00', '101429', '21', '2', '1', '95142', '141', '4834', '1');
INSERT INTO `chinahistory1` VALUES ('2021-02-11 00:00:00', '101463', '34', '2', '0', '95274', '132', '4836', '2');
INSERT INTO `chinahistory1` VALUES ('2021-02-12 00:00:00', '101496', '33', '1', '0', '95398', '124', '4837', '1');
INSERT INTO `chinahistory1` VALUES ('2021-02-13 00:00:00', '101515', '19', '1', '0', '95503', '105', '4838', '1');
INSERT INTO `chinahistory1` VALUES ('2021-02-14 00:00:00', '101536', '21', '1', '0', '95589', '86', '4838', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-15 00:00:00', '101561', '25', '1', '0', '95659', '70', '4838', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-16 00:00:00', '101576', '15', '6', '5', '95739', '80', '4840', '2');
INSERT INTO `chinahistory1` VALUES ('2021-02-17 00:00:00', '101604', '28', '6', '1', '95845', '106', '4842', '2');
INSERT INTO `chinahistory1` VALUES ('2021-02-18 00:00:00', '101624', '20', '4', '0', '95926', '81', '4842', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-19 00:00:00', '101646', '22', '2', '0', '95998', '72', '4842', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-20 00:00:00', '101669', '23', '3', '2', '96074', '76', '4842', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-21 00:00:00', '101700', '31', '3', '1', '96134', '60', '4842', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-22 00:00:00', '101726', '26', '1', '0', '96186', '52', '4842', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-23 00:00:00', '101750', '24', '3', '3', '96225', '39', '4842', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-24 00:00:00', '101778', '28', '4', '1', '96361', '136', '4843', '1');
INSERT INTO `chinahistory1` VALUES ('2021-02-25 00:00:00', '101802', '24', '1', '0', '96424', '63', '4843', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-26 00:00:00', '101836', '34', '2', '1', '96467', '43', '4843', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-27 00:00:00', '101878', '42', '3', '1', '96522', '55', '4843', '0');
INSERT INTO `chinahistory1` VALUES ('2021-02-28 00:00:00', '101920', '42', '1', '0', '96568', '46', '4844', '1');
INSERT INTO `chinahistory1` VALUES ('2021-03-01 00:00:00', '101945', '25', '1', '0', '96600', '32', '4845', '1');
INSERT INTO `chinahistory1` VALUES ('2021-03-02 00:00:00', '101968', '23', '2', '2', '96640', '40', '4845', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-03 00:00:00', '101995', '27', '2', '1', '96681', '41', '4845', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-04 00:00:00', '102015', '20', '2', '2', '96706', '25', '4846', '1');
INSERT INTO `chinahistory1` VALUES ('2021-03-05 00:00:00', '102036', '21', '0', '0', '96732', '26', '4846', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-06 00:00:00', '102064', '28', '1', '1', '96767', '35', '4848', '2');
INSERT INTO `chinahistory1` VALUES ('2021-03-07 00:00:00', '102101', '37', '1', '0', '96783', '16', '4848', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-08 00:00:00', '102125', '24', '0', '0', '96801', '18', '4848', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-09 00:00:00', '102152', '27', '3', '3', '96835', '34', '4848', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-10 00:00:00', '102172', '20', '2', '0', '96859', '24', '4849', '1');
INSERT INTO `chinahistory1` VALUES ('2021-03-11 00:00:00', '102203', '31', '1', '1', '96887', '28', '4849', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-12 00:00:00', '102276', '73', '0', '0', '96914', '27', '4849', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-13 00:00:00', '102333', '57', '1', '1', '96953', '39', '4849', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-14 00:00:00', '102363', '30', '1', '0', '96990', '37', '4849', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-15 00:00:00', '102411', '48', '0', '0', '97011', '21', '4849', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-16 00:00:00', '102433', '22', '4', '4', '97038', '27', '4849', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-17 00:00:00', '102450', '17', '6', '2', '97079', '41', '4849', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-18 00:00:00', '102479', '29', '4', '1', '97112', '33', '4849', '0');
INSERT INTO `chinahistory1` VALUES ('2021-03-19 00:00:00', '102502', '23', '4', '1', '97132', '20', '4849', '0');

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `searchname` varchar(50) DEFAULT NULL COMMENT '省',
  `searchvalue` int(11) DEFAULT NULL COMMENT '累计确诊',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES ('1', '奥运', '197451');
INSERT INTO `search` VALUES ('2', '宏大', '197451');
INSERT INTO `search` VALUES ('3', '场面', '197451');
INSERT INTO `search` VALUES ('4', '不会', '197451');
INSERT INTO `search` VALUES ('5', '人工呼吸', '212345');
INSERT INTO `search` VALUES ('6', '小伙', '212345');
INSERT INTO `search` VALUES ('7', '倒地', '212345');
INSERT INTO `search` VALUES ('8', '武汉', '212345');
INSERT INTO `search` VALUES ('9', '老人', '212345');
INSERT INTO `search` VALUES ('10', '抗疫', '224152');
INSERT INTO `search` VALUES ('11', '煤气', '224152');
INSERT INTO `search` VALUES ('12', '护士', '224152');
INSERT INTO `search` VALUES ('13', '事故', '224152');
INSERT INTO `search` VALUES ('14', '武汉', '224152');
INSERT INTO `search` VALUES ('15', '一线', '224152');
INSERT INTO `search` VALUES ('16', '返校', '241204');
INSERT INTO `search` VALUES ('17', '高校', '241204');
INSERT INTO `search` VALUES ('18', '首批', '241204');
INSERT INTO `search` VALUES ('19', '学生', '241204');
INSERT INTO `search` VALUES ('20', '北京', '241204');
INSERT INTO `search` VALUES ('21', '再添', '264562');
INSERT INTO `search` VALUES ('22', '新冠灭', '264562');
INSERT INTO `search` VALUES ('23', '活疫苗', '264562');
INSERT INTO `search` VALUES ('24', '中国', '264562');
INSERT INTO `search` VALUES ('25', '王辰', '289856');
INSERT INTO `search` VALUES ('26', '新冠', '289856');
INSERT INTO `search` VALUES ('27', '倏然', '289856');
INSERT INTO `search` VALUES ('28', '病毒', '289856');
INSERT INTO `search` VALUES ('29', '院士', '289856');
INSERT INTO `search` VALUES ('30', '不会', '289856');
INSERT INTO `search` VALUES ('31', '停课', '327458');
INSERT INTO `search` VALUES ('32', '韩国', '327458');
INSERT INTO `search` VALUES ('33', '学校', '327458');
INSERT INTO `search` VALUES ('34', '雍和宫', '356524');
