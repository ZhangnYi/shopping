-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', '123');
INSERT INTO `admins` VALUES (2, 'rwj', 'yJOXpxCuYkm+zIQrRHPdpQ==');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '数量',
  `good_id` int(11) NOT NULL COMMENT '商品ID',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (6, 4, 57, 1);
INSERT INTO `carts` VALUES (7, 5, 61, 1);
INSERT INTO `carts` VALUES (8, 1, 73, 8);

-- ----------------------------
-- Table structure for evaluates
-- ----------------------------
DROP TABLE IF EXISTS `evaluates`;
CREATE TABLE `evaluates`  (
  `gid` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `systime` datetime(0) NOT NULL,
  PRIMARY KEY (`gid`, `oid`) USING BTREE,
  INDEX `ofk`(`oid`) USING BTREE,
  INDEX `ufk`(`uid`) USING BTREE,
  CONSTRAINT `gfk` FOREIGN KEY (`gid`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ofk` FOREIGN KEY (`oid`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ufk` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluates
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `intro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格',
  `price` int(11) NOT NULL DEFAULT 0 COMMENT '价格',
  `stock` int(11) NOT NULL DEFAULT 0 COMMENT '库存',
  `sales` int(11) NOT NULL DEFAULT 0 COMMENT '销量',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '详情',
  `type_id` int(11) NOT NULL DEFAULT 0 COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (63, '../upload/20230612093102361.jpg', '怪物猎人：世界', '新的生命之地。狩猎, 就是本能! 「Monster Hunter: World」中,玩家可以体验终极的狩猎生活,活用新建构的世界中各种各样的地形与生态环境享受狩猎的惊喜与兴奋。', '豪华版', 203, 852, 148, '<p><br></p>', 2);
INSERT INTO `goods` VALUES (64, '../upload/20230612100442822.jpg', '刺客信条：起源', '《ASSASSIN’S CREED ORIGINS》是一次全新的开始 *《Assassin’s Creed》Discovery Tour现已免费更新！* 王权和阴谋统治下的古埃及时代正慢慢消失在争权夺位的冷酷之战中。重返刺客兄弟会起源的最初时刻，揭开不为人知的秘密和被遗忘的神秘事件。', '完整版', 298, 888, 112, '<p><br></p>', 2);
INSERT INTO `goods` VALUES (65, '../upload/20230612100311583.jpg', '街头霸王6', '系列最新作《Street Fighter 6》将于2023年6月2日发售！ 本作以RE ENGINE开发，并由系列前所未有的大型模式“环球游历”、“斗技战场”以及“格斗中心”构成。新的“Street Fighter”和前所未有的全新体验正在等待着你的到来。', '豪华版', 348, 871, 129, '<p><br></p>', 2);
INSERT INTO `goods` VALUES (66, '../upload/20230612100405671.jpg', 'CS：GO', '《反恐精英：全球攻势》（CS: GO）延续了 1999 年原作在团队竞技类游戏上取得的成就。 CS: GO 的特色包含全新的地图、人物、武器、全新的游戏模式，并提供翻新后的 CS 经典内容（de_dust2 等）。', '完整版', 0, 788, 212, '<p><br></p>', 2);
INSERT INTO `goods` VALUES (67, '../upload/20230612100157985.jpg', '永劫无间', '挥舞利刃，斩杀！端起火枪，爆头！享受远近结合的华丽战斗！ 在房顶跑酷，在树林中飞索穿梭，广大的地图任君高速前行！ 活用英雄能力，用风沙、隐身，甚至化身金刚大佛碾碎敌人！ 独一无二的60人生存竞技，成为最后的赢家！', '豪华版', 98, 878, 122, '<p><br></p>', 3);
INSERT INTO `goods` VALUES (69, '../upload/20230612100335504.jpg', '赛博朋克2077', '《赛博朋克 2077》是一款开放世界动作冒险 RPG 游戏。故事发生在暗黑未来的夜之城，一座五光十色、危机四伏的超级大都会，权力更迭和无尽的身体改造是这里不变的主题。', '豪华版', 298, 568, 432, '<p><br></p>', 6);
INSERT INTO `goods` VALUES (70, '../upload/20230612094049247.jpg', '荒野大镖客：救赎2', 'Red Dead Redemption 2 已荣获超过 175 项年度游戏奖项且获得超过 250 个满分评价，游戏中述说亚瑟·摩根和声名狼藉的范德林德帮派的传奇故事，体验在 19 世纪的最后岁月里横跨美国的亡命之旅。除此之外，还可免费享受 Red Dead 在线模式中与众多玩家共享的逼真世界。', '豪华版', 279, 156, 844, '<p><br></p>', 6);
INSERT INTO `goods` VALUES (71, '../upload/20230612093738989.jpg', '鬼泣5', '最强的恶魔猎人强势回归！动作游戏迷翘首以待，传说中的Stylish Action《Devil May Cry》终于復活！', '完整版', 198, 756, 244, '<p><br></p>', 3);
INSERT INTO `goods` VALUES (72, '../upload/20230612093811324.jpg', '巫师三', '您是利维亚的杰洛特，收钱办事的怪物杀手。您可以在眼前这片怪物横行、饱受战火摧残的土地上尽情探索。您手上的委托？追踪预言之子——希里，一件足以改变世界面貌的活生生的武器。', '豪华版', 127, 748, 252, '<p><br></p>', 2);
INSERT INTO `goods` VALUES (73, '../upload/20230612092750077.jpg', 'Apex', '一款免费大逃杀英雄射击游戏。在这款革命性的新一代大逃杀英雄射击游戏中，掌控日益丰富且拥有强大技能的传奇角色，深度体验战术小队玩法及创新游戏元素。', '完整版', 0, 654, 346, '', 2);

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `price` int(11) NOT NULL DEFAULT 0 COMMENT '购买时价格',
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '购买数量',
  `order_id` int(11) NOT NULL DEFAULT 0 COMMENT '订单ID',
  `good_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单项' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES (58, 10, 1, 46, 46);
INSERT INTO `items` VALUES (59, 108, 1, 47, 61);
INSERT INTO `items` VALUES (60, 999, 1, 48, 51);
INSERT INTO `items` VALUES (61, 108, 1, 49, 61);
INSERT INTO `items` VALUES (62, 999, 1, 49, 51);
INSERT INTO `items` VALUES (63, 108, 1, 50, 61);
INSERT INTO `items` VALUES (64, 99, 1, 51, 59);
INSERT INTO `items` VALUES (65, 239, 1, 52, 60);
INSERT INTO `items` VALUES (66, 999, 3, 53, 51);
INSERT INTO `items` VALUES (67, 23, 2, 54, 62);
INSERT INTO `items` VALUES (68, 108, 1, 55, 61);
INSERT INTO `items` VALUES (69, 999, 1, 55, 51);
INSERT INTO `items` VALUES (70, 100, 1, 56, 53);
INSERT INTO `items` VALUES (71, 23, 1, 56, 62);
INSERT INTO `items` VALUES (72, 66, 1, 57, 41);
INSERT INTO `items` VALUES (73, 49, 1, 58, 58);
INSERT INTO `items` VALUES (74, 108, 1, 59, 61);
INSERT INTO `items` VALUES (75, 108, 1, 60, 61);
INSERT INTO `items` VALUES (76, 10, 1, 61, 46);
INSERT INTO `items` VALUES (77, 25, 1, 62, 42);
INSERT INTO `items` VALUES (78, 25, 1, 63, 42);
INSERT INTO `items` VALUES (79, 100, 1, 64, 45);
INSERT INTO `items` VALUES (80, 99, 1, 65, 57);
INSERT INTO `items` VALUES (81, 30, 2, 66, 63);
INSERT INTO `items` VALUES (82, 24, 1, 66, 64);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `total` int(11) NOT NULL DEFAULT 0 COMMENT '订单金额',
  `amount` int(11) NOT NULL DEFAULT 0 COMMENT '商品总数',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(4) NOT NULL DEFAULT 0 COMMENT '支付方式 (1微信/2支付宝/3积分)',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `systime` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '下单用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (66, 84, 2, 5, 1, '杰克', '13724210820', '星光大道', '2022-08-18 22:24:46', 6);

-- ----------------------------
-- Table structure for tops
-- ----------------------------
DROP TABLE IF EXISTS `tops`;
CREATE TABLE `tops`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '推荐类型(1今日推荐)',
  `good_id` int(11) NOT NULL DEFAULT 0 COMMENT '商品ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推荐商品' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tops
-- ----------------------------
INSERT INTO `tops` VALUES (32, 1, 64);
INSERT INTO `tops` VALUES (33, 1, 67);
INSERT INTO `tops` VALUES (34, 1, 71);
INSERT INTO `tops` VALUES (35, 1, 72);

-- ----------------------------
-- Table structure for types
-- ----------------------------
DROP TABLE IF EXISTS `types`;
CREATE TABLE `types`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `num` int(11) NULL DEFAULT 0 COMMENT '排序号 (从小到大)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of types
-- ----------------------------
INSERT INTO `types` VALUES (2, '动作', 1);
INSERT INTO `types` VALUES (3, '格斗', 2);
INSERT INTO `types` VALUES (6, '剧情', 3);
INSERT INTO `types` VALUES (7, '射击', 4);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货地址',
  `point` double(11, 2) UNSIGNED ZEROFILL NULL DEFAULT 00000000.00 COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'rwj', '123', '', '', '', 00000092.00);
INSERT INTO `users` VALUES (6, 'jack', '123', '杰克', '13724210820', '星光大道', 00000045.00);
INSERT INTO `users` VALUES (8, 'pp', 'yJOXpxCuYkm+zIQrRHPdpQ==', 'dd', '111', '广东科技学院', 00000000.00);

SET FOREIGN_KEY_CHECKS = 1;
