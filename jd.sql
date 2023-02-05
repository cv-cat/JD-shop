/*
 Navicat Premium Data Transfer

 Source Server         : zc666
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : jd

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 27/11/2022 20:19:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for lunbo
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo`  (
  `autoID` int NOT NULL AUTO_INCREMENT,
  `pPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  PRIMARY KEY (`autoID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES (1, 'banner.jpg', 1);
INSERT INTO `lunbo` VALUES (2, 'banner1.jpg', 1);
INSERT INTO `lunbo` VALUES (3, 'banner2.jpg', 1);
INSERT INTO `lunbo` VALUES (4, 'banner3.jpg', 1);
INSERT INTO `lunbo` VALUES (5, 'l.jpg', 2);
INSERT INTO `lunbo` VALUES (6, 'r.jpg', 2);
INSERT INTO `lunbo` VALUES (7, 'today01.png', 3);
INSERT INTO `lunbo` VALUES (8, 'today02.png', 3);
INSERT INTO `lunbo` VALUES (9, 'today03.png', 3);
INSERT INTO `lunbo` VALUES (10, 'today04.png', 3);
INSERT INTO `lunbo` VALUES (17, 'banner3.jpg', 1);
INSERT INTO `lunbo` VALUES (83, 'recom01.webp', 4);
INSERT INTO `lunbo` VALUES (84, 'recom02.webp', 4);
INSERT INTO `lunbo` VALUES (85, 'recom03.webp', 4);
INSERT INTO `lunbo` VALUES (86, 'recom04.webp', 4);
INSERT INTO `lunbo` VALUES (87, 'recom05.webp', 4);
INSERT INTO `lunbo` VALUES (88, 'recom06.webp', 4);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `autoID` int NOT NULL AUTO_INCREMENT,
  `satisfied` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `idea` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`autoID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, '非常满意', '             henhdwadwadwa                                           ', '2121', '15751076989');
INSERT INTO `message` VALUES (2, '非常满意', '             6846146516516                                           ', '61565', '13852511551');
INSERT INTO `message` VALUES (3, '非常满意', '                  wdeffesefes                                      ', 'efew', '15251651151');
INSERT INTO `message` VALUES (4, '非常不满意', '              21323123123                                          ', '121223', '15751076989');
INSERT INTO `message` VALUES (5, '一般', '的伟大大碗大碗大碗大碗大碗大碗1为112我我2我2我2我2我2我2我2我2我2我2我2我2我2我2我2我2我2我2我                               ', '大屋顶', '15751076989');
INSERT INTO `message` VALUES (6, '非常满意', '                 阿伟大碗大碗大碗大碗大碗大碗大碗大碗大碗大碗大碗大碗的11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111                                       ', '啊达瓦', '13852131367');
INSERT INTO `message` VALUES (7, '非常满意', '             11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111                                           ', '注册', '15751076989');
INSERT INTO `message` VALUES (8, '非常不满意', '               的法网大威的阿瓦达阿瓦达阿瓦达啊吴大维的啊伟大伟大阿瓦达阿瓦达阿瓦达阿瓦达阿瓦大王的阿文达瓦达瓦阿文大王的阿瓦达阿文等等阿文                                         ', 'yanling', '15051769891');

-- ----------------------------
-- Table structure for myshopping
-- ----------------------------
DROP TABLE IF EXISTS `myshopping`;
CREATE TABLE `myshopping`  (
  `autoID` int NOT NULL AUTO_INCREMENT,
  `pID` int NOT NULL,
  `buyCount` int NOT NULL,
  `uName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` int NOT NULL,
  `buyTime` date NOT NULL,
  PRIMARY KEY (`autoID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of myshopping
-- ----------------------------
INSERT INTO `myshopping` VALUES (11, 15, 30, 'admin', 1, '2021-10-19');
INSERT INTO `myshopping` VALUES (85, 36, 2, 'admin', 2, '2021-11-22');
INSERT INTO `myshopping` VALUES (86, 86, 2, 'admin', 2, '2021-12-22');
INSERT INTO `myshopping` VALUES (87, 85, 3, 'admin', 0, '2021-12-22');
INSERT INTO `myshopping` VALUES (89, 86, 2, 'admin', 0, '2021-12-22');
INSERT INTO `myshopping` VALUES (91, 15, 1, 'rong', 2, '2021-12-30');
INSERT INTO `myshopping` VALUES (92, 40, 1, 'rong', 2, '2021-12-30');
INSERT INTO `myshopping` VALUES (93, 43, 1, 'rong', 2, '2021-12-30');
INSERT INTO `myshopping` VALUES (94, 15, 1, '123456zZ', 0, '2022-01-04');
INSERT INTO `myshopping` VALUES (95, 15, 1, 'admin', 0, '2022-01-27');

-- ----------------------------
-- Table structure for pinfo
-- ----------------------------
DROP TABLE IF EXISTS `pinfo`;
CREATE TABLE `pinfo`  (
  `pID` int NOT NULL AUTO_INCREMENT,
  `pName` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pPhoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float(10, 2) NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `comments` int NULL DEFAULT NULL,
  PRIMARY KEY (`pID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pinfo
-- ----------------------------
INSERT INTO `pinfo` VALUES (1, 'Apple iPhone 11', 'floor-2-b01.png', 4399.00, 1000, 2, 32323);
INSERT INTO `pinfo` VALUES (2, 'HUAWEI nov 9', 'floor-2-1.png', 3299.00, 1001, 2, 434);
INSERT INTO `pinfo` VALUES (3, 'Apple iPhone 13 mini (A2629) 256GB 蓝色 手机 支持移动联通电信5G ', 'floor-2-2.png', 6999.00, 1002, 2, 21213);
INSERT INTO `pinfo` VALUES (4, 'MIX FOLD 小米折叠屏手机 5G 2K+折叠屏 骁龙888 一亿像素 哈曼卡顿立体声四扬声器 12GB+512GB 黑色手机', 'floor-2-3.png', 16999.00, 1003, 2, 323);
INSERT INTO `pinfo` VALUES (5, 'vivo X70 Pro 8GB+256GB 星云 5G手机 蔡司光学镜头 大底微云台主摄 专业影像芯片V1 高跑分旗舰芯片', 'floor-2-4.png', 3399.00, 1004, 2, 2345);
INSERT INTO `pinfo` VALUES (6, 'OPPO Find X3 8+128GB 镜黑 5000万双主摄IMX766 10亿色臻彩屏 60倍显微镜 骁龙870 年度旗舰 5G手机', 'floor-2-5.png', 2399.00, 1005, 2, 232);
INSERT INTO `pinfo` VALUES (7, '荣耀 Magic3 Pro 骁龙888Plus 6.76英寸超曲屏 多主摄计算摄影 66W有线50W无线双超级快充 8GB+256GB 晨晖金', 'floor-2-6.png', 6199.00, 1007, 2, 46565);
INSERT INTO `pinfo` VALUES (8, '联想(Lenovo)拯救者R9000P 16英寸游戏笔记本电脑(新锐龙 8核 R7-5800H 16G 512G RTX3060 2.5k 165Hz)', 'floor-3-b01.png', 11999.00, 200, 3, 878);
INSERT INTO `pinfo` VALUES (9, '盛尊i9 11900k/16G/P2200专业设计师3D渲染建模影视后期4K视频剪辑台式电脑主机整机 配置一：单主机', 'floor-3-1.png', 8999.00, 201, 3, 548);
INSERT INTO `pinfo` VALUES (10, 'Lenovo ============', 'floor-3-2.png', 6999.00, 201, 3, 879);
INSERT INTO `pinfo` VALUES (11, '护眼全面屏丨全新11代酷睿丨华', 'floor-3-3.png', 4888.00, 203, 3, 342435);
INSERT INTO `pinfo` VALUES (12, '惠普HP 暗影精灵6Pro台式  11代i7-11700F GTX1660Ti 6G独显 16G 256G+1T', 'floor-3-4.png', 6599.00, 204, 3, 3454);
INSERT INTO `pinfo` VALUES (13, '惠普 战99高性能台式机，15L大机箱接口丰富，105万小时无故障认证！更有战66台式机，批量购买至高返300元E卡', 'floor-3-5.png', 6999.00, 205, 3, 676897);
INSERT INTO `pinfo` VALUES (14, '戴尔笔记本 Dell灵越15Plus 英特尔酷睿 15.6英寸轻薄全能本设计师 i7-11800H 16G 512G RTX3050Ti 银', 'floor-3-6.png', 17999.00, 206, 3, 433557);
INSERT INTO `pinfo` VALUES (15, '智能光控烧水壶 茶具全套', 'floor-1-b01.png', 299.00, 207, 1, 234354);
INSERT INTO `pinfo` VALUES (16, '三星曲面屏', 'floor-1-1.png', 5699.00, 208, 1, 343);
INSERT INTO `pinfo` VALUES (17, '家用多功能电烤箱 25升 机械式操控 上下独立控温 专业烘焙易操作', 'floor-1-2.png', 699.00, 209, 1, 12323);
INSERT INTO `pinfo` VALUES (18, '乐视 55英寸 4K超高清全面屏 量子点3.0四核智能语音网络液晶', 'floor-1-3.png', 3999.00, 210, 1, 546);
INSERT INTO `pinfo` VALUES (19, '65寸4K 超清人工智能液晶教育电视全面屏', 'floor-1-4.png', 4999.00, 211, 1, 768);
INSERT INTO `pinfo` VALUES (20, '美的(Midea) 新能效 锐爽 大3匹 智能家电 变频冷暖 客厅圆柱', 'floor-1-5.png', 1999.00, 212, 1, 232);
INSERT INTO `pinfo` VALUES (21, '落地扇遥控款立式风扇家用风扇办公室', 'floor-1-6.png', 209.00, 213, 1, 768798);
INSERT INTO `pinfo` VALUES (35, '【超级爆款】华为 HUAWEI P30 Pro 超感光徕卡四摄10倍混合变焦麒麟980芯片屏', 'good-1.png', 4758.00, 29, 4, 51131);
INSERT INTO `pinfo` VALUES (36, '英雄钢笔黑丽雅钢笔墨水套装', 'good-2.png', 1234.00, 12, 4, 321531);
INSERT INTO `pinfo` VALUES (37, '联想拯救者电竞手机2Pro12+256GB', 'good-3.png', 4999.00, 4665, 4, 46343);
INSERT INTO `pinfo` VALUES (38, '【轻奢牛皮】手工定制马丁靴', 'good-4.png', 299.00, 5465, 4, 46464);
INSERT INTO `pinfo` VALUES (39, '小米有品 全格旋盖保温杯400ml', 'good-5.png', 199.00, 45, 4, 66464);
INSERT INTO `pinfo` VALUES (40, '小米米家电动滑板车Pro', 'good-6.png', 699.00, 457, 4, 46);
INSERT INTO `pinfo` VALUES (41, '父母的语言家教方法3套装书', 'good-7.png', 69.00, 4557, 4, 546);
INSERT INTO `pinfo` VALUES (42, '苹果13 pro max 5G 远峰蓝 128GB', 'good-8.png', 5499.00, 76656, 4, 75);
INSERT INTO `pinfo` VALUES (43, '五常大米陆家围子稻花香米5KG', 'good-9.png', 29.00, 68, 4, 525436);
INSERT INTO `pinfo` VALUES (44, '心相印卷纸180g 27卷心柔系列', 'good-10.png', 19.00, 5686, 4, 943934);
INSERT INTO `pinfo` VALUES (45, '惠寻18包国风抽纸整箱', 'good-11.png', 39.00, 5656, 4, 99443);
INSERT INTO `pinfo` VALUES (46, '大自然环保无漆木门', 'good-12.png', 199.00, 5656, 4, 49949);
INSERT INTO `pinfo` VALUES (47, '迪士尼艾莎公主书包', 'good-13.png', 399.00, 235, 4, 406993);
INSERT INTO `pinfo` VALUES (48, 'OPPO A93s 8+256GB 初夏光海 5G', 'good-14.png', 2999.00, 876, 4, 4252463);
INSERT INTO `pinfo` VALUES (49, '【超值抢购】儿童帆布鞋', 'good-15.png', 49.00, 6357, 4, 43539);
INSERT INTO `pinfo` VALUES (50, '四季沐歌3300W电热水龙头', 'good-16.png', 109.00, 43365, 4, 644394);
INSERT INTO `pinfo` VALUES (51, '今锦上鲜活大闸蟹礼盒8只大蟹', 'good-17.png', 49.00, 345, 4, 254);
INSERT INTO `pinfo` VALUES (52, '赖氏传承 贵州茅台镇酱香型白酒', 'good-18.png', 449.00, 57, 4, 52394);
INSERT INTO `pinfo` VALUES (53, '微星 幻影15 电竞游戏本', 'good-19.png', 8999.00, 764, 4, 4939434);
INSERT INTO `pinfo` VALUES (54, '美的3匹乐享自清洁风管机', 'good-20.png', 1899.00, 57457, 4, 44943);
INSERT INTO `pinfo` VALUES (55, '充电宝2万毫安22.5W快充', 'good-21.png', 89.00, 547, 4, 493);
INSERT INTO `pinfo` VALUES (56, '花花公子毛衣男', 'good-22.png', 189.00, 547, 4, 9433);
INSERT INTO `pinfo` VALUES (57, 'WMF德国进口 高压锅 炉火通用', 'good-23.png', 1099.00, 7876, 4, 4632);
INSERT INTO `pinfo` VALUES (58, 'OATLY噢麦力咖啡大师1L*6', 'good-24.png', 89.00, 6744, 4, 4364);
INSERT INTO `pinfo` VALUES (59, '吉列剃须刀锋隐致顺引力盒', 'good-25.png', 199.00, 467, 4, 82343);
INSERT INTO `pinfo` VALUES (60, '【扫码送百挂精灵】海尔爆款燃热', 'good-26.png', 349.00, 4535, 4, 4863);
INSERT INTO `pinfo` VALUES (61, '舒肤佳洗手液4支套装', 'good-27.png', 129.00, 8786, 4, 8428);
INSERT INTO `pinfo` VALUES (62, '合生元儿童益生菌60袋装', 'good-28.png', 39.00, 3455373, 4, 894346);
INSERT INTO `pinfo` VALUES (63, '雪花秀滋盈肌本水乳洁8件套', 'good-29.png', 179.00, 54767, 4, 4253);
INSERT INTO `pinfo` VALUES (64, '【价保11.11】海尔13套洗碗机', 'good-30.png', 349.00, 68765, 4, 463463);
INSERT INTO `pinfo` VALUES (65, '品胜 苹果PD20W快充套装', 'good-31.png', 59.00, 3576, 4, 875752);
INSERT INTO `pinfo` VALUES (66, 'AOC 24.5寸IPS电竞显示器', 'good-32.png', 809.00, 687465, 4, 785872);
INSERT INTO `pinfo` VALUES (67, '阿玛尼时尚休闲男士腕表', 'good-33.png', 1099.00, 676574, 4, 454887);
INSERT INTO `pinfo` VALUES (68, '神度 他达拉非片 5mg*15片', 'good-34.png', 39.00, 67565, 4, 4537);
INSERT INTO `pinfo` VALUES (69, '【爆款】容声10公斤直驱洗烘滚筒', 'good-35.png', 109.00, 35356, 4, 879);
INSERT INTO `pinfo` VALUES (70, '2021年吉祥文化琴瑟和鸣金银币', 'good-36.png', 109.00, 35645, 4, 574);
INSERT INTO `pinfo` VALUES (71, '京选UV杀菌便携干衣机', 'good-37.png', 409.00, 53765, 4, 35345);
INSERT INTO `pinfo` VALUES (72, '秋田满满有机胚芽米500g', 'good-38.png', 109.00, 34563, 4, 354345);
INSERT INTO `pinfo` VALUES (73, '创维酷开43吋无屏闪16G电视4K', 'good-39.png', 679.00, 3546765, 4, 3457);
INSERT INTO `pinfo` VALUES (74, '宏碁(Acer)非凡S3', 'good-40.png', 2899.00, 657457, 4, 453745);
INSERT INTO `pinfo` VALUES (75, '芝华仕 智慧助眠按摩椅', 'good-41.png', 1199.00, 876, 4, 547457);
INSERT INTO `pinfo` VALUES (76, '乔丹飞影PB马拉松竞速碳板跑鞋', 'good-42.png', 688.00, 543, 4, 45735);
INSERT INTO `pinfo` VALUES (77, '【78元2件】红蜻蜓棉质时尚衬衫', 'good-43.png', 188.00, 4356, 4, 5474357);
INSERT INTO `pinfo` VALUES (78, 'VATTA夹克男大码工装加绒外套', 'good-44.png', 388.00, 35634, 4, 45745);
INSERT INTO `pinfo` VALUES (79, '多功能心率血压智能手环', 'good-45.png', 188.00, 56, 4, 4346);
INSERT INTO `pinfo` VALUES (80, '力士幽莲魅肤沐浴露1000ml', 'good-46.png', 168.00, 5363, 4, 324);
INSERT INTO `pinfo` VALUES (81, 'JD快递 阳光玫瑰3斤大果', 'good-47.png', 58.00, 435634, 4, 324234);
INSERT INTO `pinfo` VALUES (82, '100%纯棉┃新疆棉长袖T恤女', 'good-48.png', 109.00, 45645, 4, 4343);
INSERT INTO `pinfo` VALUES (83, '菜刀', 'recom01.webp', 19.00, 32432, 4, 3232);
INSERT INTO `pinfo` VALUES (84, '路由器', 'recom02.webp', 109.00, 233, 4, 4654);
INSERT INTO `pinfo` VALUES (85, '路由器', 'recom03.webp', 219.00, 234, 4, 45776);
INSERT INTO `pinfo` VALUES (86, '白酒', 'recom04.webp', 199.00, 4353, 4, 34343);
INSERT INTO `pinfo` VALUES (87, '洗头膏', 'recom05.webp', 89.00, 4334, 4, 564);
INSERT INTO `pinfo` VALUES (88, '茅台', 'recom06.webp', 1999.00, 565, 4, 3432);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userPwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `regTime` date NOT NULL,
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tel`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('13112121515', '9928226353@qq.com', 'dwdaddw', '992822653qq', NULL, '2022-03-12', NULL);
INSERT INTO `users` VALUES ('13315313135', '34978916455@qq.com', 'admin332', '992822653', NULL, '2021-10-17', NULL);
INSERT INTO `users` VALUES ('13545454545', '992822653@qq.com', '992822653', '992822653qq', NULL, '2022-03-12', NULL);
INSERT INTO `users` VALUES ('13548484844', '3497262626@qq.com', 'adw2', '123456789', NULL, '2021-10-18', NULL);
INSERT INTO `users` VALUES ('13548877484', '154844578@qq.com', 'admin3', '56464121', NULL, '2021-10-17', NULL);
INSERT INTO `users` VALUES ('13548946464', '34978919222@qq.com', 'adw21', '992822653', NULL, '2021-10-18', NULL);
INSERT INTO `users` VALUES ('13852131367', 'zhenzongfeng@163.com', '123456zZ', '123456zZ', NULL, '2022-01-04', NULL);
INSERT INTO `users` VALUES ('15050093578', '631697635@qq.com', 'rong', '123456kk', NULL, '2021-12-30', NULL);
INSERT INTO `users` VALUES ('15151313131', '3497891212@qq.com', '3135oko', '12345678', NULL, '2021-10-18', NULL);
INSERT INTO `users` VALUES ('15154992822', '1516516156@qq.com', 'cz1111', '9992121', 'gg.jpg', '2021-10-15', '女');
INSERT INTO `users` VALUES ('15156165161', '3497891976@qq.com', 'ad221221', '123456789', NULL, '2021-10-17', NULL);
INSERT INTO `users` VALUES ('15315615165', '3497891996@qq.com', 'IUHIU4', '992822653', NULL, '2021-10-19', NULL);
INSERT INTO `users` VALUES ('15365923151', '2311971787@qq.com', '朱炳兆nb', '123456789', 'top1.jpg', '2021-10-19', NULL);
INSERT INTO `users` VALUES ('15421212121', '3497891999@qq.com', 'admin33', '992822653', NULL, '2021-10-17', NULL);
INSERT INTO `users` VALUES ('15751076981', '3497891546@qq.com', 'admin1', '992822653', NULL, '2021-10-17', NULL);
INSERT INTO `users` VALUES ('15751076983', '2419139052@qq.com', 'admin32', '992822653', NULL, '2021-10-18', NULL);
INSERT INTO `users` VALUES ('15751076989', '992822654@qq.com', 'admin', 'admin', 'top1.jpg', '2008-02-03', '男');
INSERT INTO `users` VALUES ('16516516516', '34978919212@qq.com', 'adw22', '123456789', NULL, '2021-10-18', NULL);
INSERT INTO `users` VALUES ('16564654654', '3497891948@qq.com', 'wad21', '123456789', NULL, '2021-10-18', NULL);
INSERT INTO `users` VALUES ('18013609726', '1584040529@qq.com', 'wjwj', '246337wj', 'top1.jpg', '2021-10-18', NULL);
INSERT INTO `users` VALUES ('18020267243', '1948694831@qq.com', 'dgfwd', 'wj335188', NULL, '2021-10-20', NULL);
INSERT INTO `users` VALUES ('18836229205', '3157454856@qq.com', 'adwa1', '449849', NULL, '2021-10-16', NULL);
INSERT INTO `users` VALUES ('18862629205', '3497891997@qq.com', 'tom1111', 'tom123', '13.gif', '2007-11-17', '女');
INSERT INTO `users` VALUES ('18862629206', '3084003877@qq.com', 'niit111', 'niit122112', '4.gif', '2009-07-04', '女');

SET FOREIGN_KEY_CHECKS = 1;
