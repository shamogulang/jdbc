操作的数据库表：
CREATE TABLE `city` (
  `pk` int(11) NOT NULL AUTO_INCREMENT,
  `p_code` int(11) DEFAULT NULL COMMENT '省份代号',
  `c_code` int(11) DEFAULT NULL COMMENT '城市代号',
  `name` varchar(45) DEFAULT NULL COMMENT '城市名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0显示 1不显示',
  PRIMARY KEY (`pk`),
  KEY `index_pcode_ccode` (`p_code`,`c_code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='城市';

插入记录：
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('1', '13', '1301', '石家庄市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('2', '13', '1302', '唐山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('3', '13', '1303', '秦皇岛市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('4', '13', '1304', '邯郸市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('5', '13', '1305', '邢台市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('6', '13', '1306', '保定市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('7', '13', '1307', '张家口市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('8', '13', '1308', '承德市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('9', '13', '1309', '沧州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('10', '13', '1311', '衡水市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('11', '14', '1401', '太原市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('12', '14', '1402', '大同市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('13', '14', '1403', '阳泉市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('14', '14', '1404', '长治市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('15', '14', '1405', '晋城市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('16', '14', '1406', '朔州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('17', '14', '1407', '晋中市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('18', '14', '1408', '运城市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('19', '14', '1409', '忻州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('20', '14', '1411', '吕梁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('21', '15', '1501', '呼和浩特市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('22', '15', '1502', '包头市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('23', '15', '1503', '乌海市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('24', '15', '1504', '赤峰市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('25', '15', '1505', '通辽市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('26', '15', '1506', '鄂尔多斯市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('27', '15', '1507', '呼伦贝尔市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('28', '15', '1508', '巴彦淖尔市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('29', '15', '1509', '乌兰察布市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('30', '15', '1522', '兴安盟', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('31', '15', '1525', '锡林郭勒盟', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('32', '15', '1529', '阿拉善盟', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('33', '21', '2101', '沈阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('34', '21', '2102', '大连市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('35', '21', '2103', '鞍山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('36', '21', '2104', '抚顺市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('37', '21', '2105', '本溪市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('38', '21', '2106', '丹东市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('39', '21', '2107', '锦州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('40', '21', '2108', '营口市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('41', '21', '2109', '阜新市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('42', '21', '2111', '盘锦市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('43', '21', '2112', '铁岭市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('44', '21', '2113', '朝阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('45', '21', '2114', '葫芦岛市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('46', '22', '2201', '长春市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('47', '22', '2202', '吉林市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('48', '22', '2203', '四平市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('49', '22', '2204', '辽源市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('50', '22', '2205', '通化市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('51', '22', '2206', '白山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('52', '22', '2207', '松原市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('53', '22', '2208', '白城市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('54', '22', '2224', '延边朝鲜族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('55', '23', '2301', '哈尔滨市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('56', '23', '2302', '齐齐哈尔市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('57', '23', '2303', '鸡西市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('58', '23', '2304', '鹤岗市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('59', '23', '2305', '双鸭山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('60', '23', '2306', '大庆市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('61', '23', '2307', '伊春市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('62', '23', '2308', '佳木斯市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('63', '23', '2309', '七台河市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('64', '23', '2311', '黑河市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('65', '23', '2312', '绥化市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('66', '23', '2327', '大兴安岭地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('67', '32', '3201', '南京市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('68', '32', '3202', '无锡市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('69', '32', '3203', '徐州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('70', '32', '3204', '常州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('71', '32', '3205', '苏州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('72', '32', '3206', '南通市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('73', '32', '3207', '连云港市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('74', '32', '3208', '淮安市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('75', '32', '3209', '盐城市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('76', '32', '3211', '镇江市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('77', '32', '3212', '泰州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('78', '32', '3213', '宿迁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('79', '33', '3301', '杭州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('80', '33', '3302', '宁波市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('81', '33', '3303', '温州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('82', '33', '3304', '嘉兴市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('83', '33', '3305', '湖州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('84', '33', '3306', '绍兴市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('85', '33', '3307', '金华市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('86', '33', '3308', '衢州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('87', '33', '3309', '舟山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('88', '33', '3311', '丽水市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('89', '34', '3401', '合肥市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('90', '34', '3402', '芜湖市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('91', '34', '3403', '蚌埠市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('92', '34', '3404', '淮南市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('93', '34', '3405', '马鞍山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('94', '34', '3406', '淮北市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('95', '34', '3407', '铜陵市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('96', '34', '3408', '安庆市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('97', '34', '3411', '滁州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('98', '34', '3412', '阜阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('99', '34', '3413', '宿州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('100', '34', '3415', '六安市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('101', '34', '3416', '亳州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('102', '34', '3417', '池州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('103', '34', '3418', '宣城市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('104', '35', '3501', '福州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('105', '35', '3502', '厦门市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('106', '35', '3503', '莆田市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('107', '35', '3504', '三明市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('108', '35', '3505', '泉州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('109', '35', '3506', '漳州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('110', '35', '3507', '南平市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('111', '35', '3508', '龙岩市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('112', '35', '3509', '宁德市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('113', '36', '3601', '南昌市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('114', '36', '3602', '景德镇市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('115', '36', '3603', '萍乡市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('116', '36', '3604', '九江市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('117', '36', '3605', '新余市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('118', '36', '3606', '鹰潭市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('119', '36', '3607', '赣州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('120', '36', '3608', '吉安市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('121', '36', '3609', '宜春市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('122', '36', '3611', '上饶市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('123', '37', '3701', '济南市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('124', '37', '3702', '青岛市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('125', '37', '3703', '淄博市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('126', '37', '3704', '枣庄市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('127', '37', '3705', '东营市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('128', '37', '3706', '烟台市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('129', '37', '3707', '潍坊市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('130', '37', '3708', '济宁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('131', '37', '3709', '泰安市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('132', '37', '3711', '日照市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('133', '37', '3712', '莱芜市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('134', '37', '3713', '临沂市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('135', '37', '3714', '德州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('136', '37', '3715', '聊城市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('137', '37', '3716', '滨州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('138', '37', '3717', '菏泽市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('139', '41', '4101', '郑州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('140', '41', '4102', '开封市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('141', '41', '4103', '洛阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('142', '41', '4104', '平顶山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('143', '41', '4105', '安阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('144', '41', '4106', '鹤壁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('145', '41', '4107', '新乡市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('146', '41', '4108', '焦作市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('147', '41', '4109', '濮阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('148', '41', '4111', '漯河市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('149', '41', '4112', '三门峡市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('150', '41', '4113', '南阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('151', '41', '4114', '商丘市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('152', '41', '4115', '信阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('153', '41', '4116', '周口市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('154', '41', '4117', '驻马店市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('155', '42', '4201', '武汉市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('156', '42', '4202', '黄石市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('157', '42', '4203', '十堰市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('158', '42', '4205', '宜昌市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('159', '42', '4206', '襄阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('160', '42', '4207', '鄂州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('161', '42', '4208', '荆门市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('162', '42', '4209', '孝感市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('163', '42', '4211', '黄冈市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('164', '42', '4212', '咸宁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('165', '42', '4213', '随州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('166', '42', '4228', '恩施土家族苗族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('167', '43', '4301', '长沙市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('168', '43', '4302', '株洲市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('169', '43', '4303', '湘潭市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('170', '43', '4304', '衡阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('171', '43', '4305', '邵阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('172', '43', '4306', '岳阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('173', '43', '4307', '常德市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('174', '43', '4308', '张家界市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('175', '43', '4309', '益阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('176', '43', '4311', '永州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('177', '43', '4312', '怀化市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('178', '43', '4313', '娄底市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('179', '43', '4331', '湘西土家族苗族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('180', '44', '4401', '广州市', '0');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('181', '44', '4402', '韶关市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('182', '44', '4403', '深圳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('183', '44', '4404', '珠海市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('184', '44', '4405', '汕头市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('185', '44', '4406', '佛山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('186', '44', '4407', '江门市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('187', '44', '4408', '湛江市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('188', '44', '4409', '茂名市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('189', '44', '4412', '肇庆市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('190', '44', '4413', '惠州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('191', '44', '4414', '梅州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('192', '44', '4415', '汕尾市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('193', '44', '4416', '河源市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('194', '44', '4417', '阳江市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('195', '44', '4418', '清远市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('196', '44', '4419', '东莞市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('197', '44', '4451', '潮州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('198', '44', '4452', '揭阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('199', '44', '4453', '云浮市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('200', '45', '4501', '南宁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('201', '45', '4502', '柳州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('202', '45', '4503', '桂林市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('203', '45', '4504', '梧州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('204', '45', '4505', '北海市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('205', '45', '4506', '防城港市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('206', '45', '4507', '钦州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('207', '45', '4508', '贵港市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('208', '45', '4509', '玉林市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('209', '45', '4511', '贺州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('210', '45', '4512', '河池市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('211', '45', '4513', '来宾市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('212', '45', '4514', '崇左市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('213', '46', '4601', '海口市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('214', '46', '4602', '三亚市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('215', '51', '5101', '成都市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('216', '51', '5103', '自贡市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('217', '51', '5104', '攀枝花市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('218', '51', '5105', '泸州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('219', '51', '5106', '德阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('220', '51', '5107', '绵阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('221', '51', '5108', '广元市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('222', '51', '5109', '遂宁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('223', '51', '5111', '乐山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('224', '51', '5113', '南充市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('225', '51', '5114', '眉山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('226', '51', '5115', '宜宾市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('227', '51', '5116', '广安市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('228', '51', '5117', '达州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('229', '51', '5118', '雅安市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('230', '51', '5119', '巴中市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('231', '51', '5132', '阿坝藏族羌族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('232', '51', '5133', '甘孜藏族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('233', '51', '5134', '凉山彝族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('234', '52', '5201', '贵阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('235', '52', '5202', '六盘水市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('236', '52', '5203', '遵义市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('237', '52', '5204', '安顺市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('238', '52', '5205', '毕节市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('239', '52', '5206', '铜仁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('240', '52', '5223', '黔西南布依族苗族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('241', '52', '5226', '黔东南苗族侗族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('242', '52', '5227', '黔南布依族苗族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('243', '53', '5301', '昆明市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('244', '53', '5303', '曲靖市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('245', '53', '5304', '玉溪市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('246', '53', '5305', '保山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('247', '53', '5306', '昭通市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('248', '53', '5307', '丽江市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('249', '53', '5308', '普洱市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('250', '53', '5309', '临沧市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('251', '53', '5323', '楚雄彝族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('252', '53', '5325', '红河哈尼族彝族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('253', '53', '5326', '文山壮族苗族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('254', '53', '5328', '西双版纳傣族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('255', '53', '5329', '大理白族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('256', '53', '5331', '德宏傣族景颇族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('257', '53', '5333', '怒江傈僳族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('258', '53', '5334', '迪庆藏族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('259', '54', '5401', '拉萨市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('260', '54', '5421', '昌都地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('261', '54', '5422', '山南地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('262', '54', '5423', '日喀则地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('263', '54', '5424', '那曲地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('264', '54', '5425', '阿里地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('265', '54', '5426', '林芝地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('266', '61', '6101', '西安市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('267', '61', '6102', '铜川市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('268', '61', '6103', '宝鸡市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('269', '61', '6104', '咸阳市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('270', '61', '6105', '渭南市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('271', '61', '6106', '延安市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('272', '61', '6107', '汉中市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('273', '61', '6108', '榆林市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('274', '61', '6109', '安康市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('275', '62', '6201', '兰州市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('276', '62', '6202', '嘉峪关市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('277', '62', '6203', '金昌市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('278', '62', '6204', '白银市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('279', '62', '6205', '天水市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('280', '62', '6206', '武威市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('281', '62', '6207', '张掖市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('282', '62', '6208', '平凉市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('283', '62', '6209', '酒泉市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('284', '62', '6211', '定西市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('285', '62', '6212', '陇南市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('286', '62', '6229', '临夏回族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('287', '63', '6301', '西宁市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('288', '63', '6321', '海东地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('289', '63', '6322', '海北藏族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('290', '63', '6323', '黄南藏族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('291', '63', '6325', '海南藏族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('292', '63', '6326', '果洛藏族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('293', '63', '6327', '玉树藏族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('294', '63', '6328', '海西蒙古族藏族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('295', '64', '6401', '银川市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('296', '64', '6402', '石嘴山市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('297', '64', '6403', '吴忠市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('298', '64', '6404', '固原市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('299', '64', '6405', '中卫市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('300', '65', '6501', '乌鲁木齐市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('301', '65', '6502', '克拉玛依市', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('302', '65', '6521', '吐鲁番地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('303', '65', '6522', '哈密地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('304', '65', '6523', '昌吉回族自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('305', '65', '6527', '博尔塔拉蒙古自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('306', '65', '6528', '巴音郭楞蒙古自治州', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('307', '65', '6529', '阿克苏地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('308', '65', '6531', '喀什地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('309', '65', '6532', '和田地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('310', '65', '6542', '塔城地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('311', '65', '6543', '阿勒泰地区', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('512', '44', '1', '广州', '0');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('513', '31', '0', '上海', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('514', '31', '31', '上海', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('515', '1', '31', '上海', '1');
INSERT INTO `grafana`.`city` (`pk`, `p_code`, `c_code`, `name`, `status`) VALUES ('516', '41', '4107', '新乡市', '1');

CREATE TABLE `tb_employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(32) NOT NULL DEFAULT '',
  `lastName` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;


INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('5', 'tom1xx', '29');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('6', 'tom101', '30');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('96', 'Max3', 'Su3');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('97', 'Max3', 'Su3');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('98', 'Max3', 'Su3');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('99', 'Max3', 'Su3');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('100', '130', 'Su');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('101', 'Max1', 'jeff');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('102', 'Max2', 'Su2');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('103', 'Max3', 'Su3');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('106', 'Max3', 'Su3');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('107', 'jeff', 'chan');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('108', 'jeff', 'chan');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('109', 'jeff', 'chan1');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('110', 'jeff', 'chan');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('111', 'jeff', 'chan1');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('112', 'jeff', 'chan1');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('113', '123', 'Eric💤');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('114', '1234', 'Eric👻');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('115', 'jeff', 'chan');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('116', 'jeff', 'chan');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('117', 'jeff', 'chan');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('118', 'jeff1x', 'chan');
INSERT INTO `grafana`.`tb_employee` (`id`, `firstName`, `lastName`) VALUES ('120', 'xxxx', 'xx');

创建存储过程:

delimiter $$
CREATE PROCEDURE del_byid(IN mid INT)
BEGIN
  DELETE FROM tb_employee where id = mid;
END $$

CALL del_byid(120);//调用存储过程，会删除id为120的记录


delimiter $$
CREATE PROCEDURE get_byid(IN mid INT,OUT lastName VARCHAR(255))
BEGIN
  SELECT tb.lastName into lastName FROM tb_employee tb where id = mid;
END $$

call get_byid(114,@a);
SELECT @a;

delimiter $$
CREATE PROCEDURE get_all()
BEGIN
  SELECT *  FROM tb_employee;
END $$

CALL get_all();

创建方法：

set global log_bin_trust_function_creators=TRUE
delimiter $$
CREATE FUNCTION get_sum(num1 INT,num2 INT)
RETURNS INT
BEGIN
   DECLARE a,b INT;
   set a=num1,b=num2;
  RETURN a+b;
END $$