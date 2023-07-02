-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping
-- ------------------------------------------------------
-- Server version	8.0.23
create database  shop;
use shop;
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

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','tuShOfiBrA8+br7ENrMS8A=='),(2,'rwj','HAMVRZRssPCADKqGjGWJtQ==');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL DEFAULT '0' COMMENT '数量',
  `good_id` int NOT NULL COMMENT '商品ID',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='购物车';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (6,4,57,1),(7,5,61,1);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluates`
--

DROP TABLE IF EXISTS `evaluates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluates` (
  `gid` int NOT NULL,
  `oid` int NOT NULL,
  `uid` int NOT NULL,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `systime` datetime NOT NULL,
  PRIMARY KEY (`gid`,`oid`),
  KEY `ofk` (`oid`),
  KEY `ufk` (`uid`),
  CONSTRAINT `gfk` FOREIGN KEY (`gid`) REFERENCES `goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ofk` FOREIGN KEY (`oid`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ufk` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluates`
--

LOCK TABLES `evaluates` WRITE;
/*!40000 ALTER TABLE `evaluates` DISABLE KEYS */;
INSERT INTO `evaluates` VALUES (63,66,6,'小黄人很好看','2022-08-18 23:25:36'),(64,66,6,'魔方很好玩','2022-08-19 08:33:27');
/*!40000 ALTER TABLE `evaluates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `intro` varchar(255) DEFAULT NULL COMMENT '介绍',
  `spec` varchar(255) DEFAULT NULL COMMENT '规格',
  `price` int NOT NULL DEFAULT '0' COMMENT '价格',
  `stock` int NOT NULL DEFAULT '0' COMMENT '库存',
  `sales` int NOT NULL DEFAULT '0' COMMENT '销量',
  `content` text COMMENT '详情',
  `type_id` int NOT NULL DEFAULT '0' COMMENT '分类ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (63,'../upload/20220818201845488.jpg','小黄人','超可爱的儿童玩具-小黄人','45mm',30,64,2,'超有趣的摆件',2),(64,'../upload/20220818220059502.jpg','益智魔方','奇艺魔方三阶3二四五阶套装全套儿童专业比赛专用初学者益智玩具','三色',24,29,1,'<ul id=\"J_AttrUL\" style=\"color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;background-color:#FFFFFF;\">\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		证书编号：2021152202036069\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		证书状态：有效\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		申请人名称：汕头市澄海区莲下奇艺塑料厂\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		制造商名称：汕头市澄海区莲下奇艺塑料厂\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		产品名称：塑胶玩具\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		3C产品型号：111、113、114、115、116、118、119、120、121、122、124、125、12...\r\n	</li>\r\n	<li id=\"J_attrBrandName\" style=\"vertical-align:top;color:#666666;\">\r\n		品牌:&nbsp;奇艺\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		型号:&nbsp;159\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		适用年龄:&nbsp;6岁&nbsp;7岁&nbsp;8岁&nbsp;9岁&nbsp;10岁&nbsp;11岁&nbsp;12岁&nbsp;13岁&nbsp;14岁&nbsp;14岁以上\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		材质:&nbsp;塑料\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		产地:&nbsp;中国大陆\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		适用性别:&nbsp;男女通用\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		玩具类型:&nbsp;塑胶玩具\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		颜色分类:&nbsp;3阶炫彩磨砂 送指导书送底座送教学视频&nbsp;礼盒套餐二&nbsp;5阶黑底送指导书送底座送教学视频&nbsp;礼盒套餐一&nbsp;4阶炫彩磨砂 送指导书送底座送教学视频&nbsp;【3阶+4阶+5阶】（炫彩磨砂）送指导书送配件送教学视频&nbsp;5阶白底送指导书送底座送教学视频&nbsp;3阶金字塔（黑白底随机发）送指导书送底座送教学视频&nbsp;3阶果冻 送指导书送底座送教学视频&nbsp;礼盒套餐三&nbsp;2阶黑底送指导书送底座送教学视频&nbsp;2阶白底送指导书送底座送教学视频&nbsp;4阶白底送指导书送底座送教学视频&nbsp;【3阶+4阶】（炫彩磨砂）送指导书送配件送教学视频&nbsp;店长推荐：魔方8件套（送指导书送配件送教学视频）&nbsp;5阶炫彩磨砂 送指导书送底座送教学视频&nbsp;3阶镜面（金银色随机发） 送指导书送底座送教学视频&nbsp;3阶白底&nbsp;3阶次元竞速 送指导书送底座送教学视频&nbsp;4阶黑底送指导书送底座送教学视频&nbsp;【2阶+3阶+4阶+5阶】（黑底）送指导书送配件送教学视频&nbsp;3阶黑底送指导书送底座送教学视频&nbsp;【2阶+3阶】（黑底）送指导书送配件送教学视频&nbsp;【2阶+3阶+4阶】（黑底）送指导书送配件送教学视频\r\n	</li>\r\n</ul>',2),(65,'../upload/20220818220429978.jpg','玩具轿车','红色玩具轿车适合男孩','红色',56,66,0,'<ul class=\"attributes-list\" style=\"font-family:tahoma, arial, &quot;background-color:#FFFFFF;\">\r\n	<li style=\"text-indent:5px;\">\r\n		适用年龄:&nbsp;3岁 4岁 5岁 6岁\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		产地:&nbsp;中国大陆\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		价格区间:&nbsp;501-1000元\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		适用性别:&nbsp;男女通用\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		玩具类型:&nbsp;电玩具\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		颜色分类:&nbsp;小牛双驱【红色】自驾+遥控+ 小牛双驱【白色】自驾+遥控+ 小牛双驱【红色】全功能 小牛双驱【白色】全功能 小牛双驱【黄色】全功能 小牛双驱【绿色】全功能 小牛双驱【烤漆红】全功能 小牛双驱【烤漆蓝】全功能 小牛四驱【红色】全功能+ 小牛四驱【白色】全功能+ 小牛四驱【黄色】全功能+ 小牛四驱【绿色】全功能+ 小牛四驱【烤漆红】全功能+ 小牛四驱【烤漆蓝】全功能+ 小牛四驱【红色】全功能+皮座 小牛四驱【白色】全功能+皮座 小牛四驱【黄色】全功能+皮座 小牛四驱【绿色】全功能+皮座 小牛四驱【烤漆红】全功能+皮座 小牛四驱【烤漆蓝】全功能+皮座\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		货号:&nbsp;HD-012\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		驱动类型:&nbsp;电力驱动\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		电玩车类型:&nbsp;汽车\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		整车最大负载强度:&nbsp;30kg(含)-40kg(含)\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		车身塑料厚度:&nbsp;2.5mm(含)-3mm(不含)\r\n	</li>\r\n	<li style=\"text-indent:5px;\">\r\n		蓄电池充放电次数:&nbsp;600次以上\r\n	</li>\r\n</ul>',2),(66,'../upload/20220818220955724.jpg','圆珠笔','润滑圆珠笔','3mm',6,26,0,'',3),(67,'../upload/20220818221207564.jpg','a5笔记本子超厚商务复古2022年简约ins风大学生日记本加厚记事本b5办公软皮工作会议记录本新款定制可印logo','大学生日记本加厚记事本b5办公软皮工作会议记录本新款定制可印logo','A5',10,88,0,'<ul id=\"J_AttrUL\" style=\"color:#404040;font-family:tahoma, arial, 微软雅黑, sans-serif;background-color:#FFFFFF;\">\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		产品名称：Muulee/木雷 600-BJB\r\n	</li>\r\n	<li id=\"J_attrBrandName\" style=\"vertical-align:top;color:#666666;\">\r\n		品牌:&nbsp;Muulee/木雷\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		型号:&nbsp;600-BJB\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		风格:&nbsp;人文&nbsp;人物&nbsp;商务\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		流行元素:&nbsp;其他/other\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		颜色分类:&nbsp;603/羊巴皮A5-黑&nbsp;603/羊巴皮A5-灰&nbsp;603/羊巴皮A5-棕&nbsp;603/羊巴皮A5-深蓝&nbsp;603/羊巴皮A5-湖水绿&nbsp;603/羊巴皮A5-红&nbsp;603/羊巴皮B5-黑&nbsp;603/羊巴皮B5-灰&nbsp;603/羊巴皮B5-棕&nbsp;603/羊巴皮B5-深蓝&nbsp;603/羊巴皮B5-湖水绿&nbsp;603/羊巴皮B5-红&nbsp;639/圆扣款A5-黑色&nbsp;639/圆扣款A5-蓝灰色&nbsp;639/圆扣款A5-棕色&nbsp;639/圆扣款A5-墨绿色&nbsp;639/圆扣款A5-粉色&nbsp;639/圆扣款A5-红色&nbsp;638/福扣款A5-大地棕&nbsp;638/福扣款A5-复古红&nbsp;638/福扣款A5-经典黑&nbsp;638/福扣款A5-魅力蓝&nbsp;638/福扣款A5-深空灰&nbsp;638/福扣款A5-松石绿&nbsp;601/窗花扣A5黑色&nbsp;601/窗花扣A5灰色&nbsp;601/窗花扣A5咖啡色&nbsp;601/窗花扣A5蓝色&nbsp;601/窗花扣A5红色&nbsp;601/窗花扣A5棕色&nbsp;601/窗花扣A5-墨绿色&nbsp;601/窗花扣B5黑色&nbsp;601/窗花扣B5灰色&nbsp;601/窗花扣B5咖啡色&nbsp;601/窗花扣B5蓝色&nbsp;601/窗花扣B5棕色&nbsp;601/窗花扣B5红色&nbsp;613/窗花扣A5活页款-黑色&nbsp;613/窗花扣A5活页款-湖蓝色&nbsp;613/窗花扣A5活页款-灰色&nbsp;613/窗花扣A5活页款-深蓝色&nbsp;613/窗花扣A5活页款-咖啡色&nbsp;603/羊巴皮A5黑色-牛皮纸礼盒&nbsp;603/羊巴皮A5灰色-牛皮纸礼盒&nbsp;603/羊巴皮A5棕色-牛皮纸礼盒&nbsp;603/羊巴皮A5深蓝-牛皮纸礼盒&nbsp;603/羊巴皮A5红色-牛皮纸礼盒&nbsp;603/羊巴皮A5湖水绿-牛皮纸礼盒&nbsp;601/A5黑色-牛皮纸礼盒&nbsp;601/A5灰色-牛皮纸礼盒&nbsp;601/A5咖色-牛皮纸礼盒&nbsp;601/A5蓝色-牛皮纸礼盒&nbsp;601/A5棕色-牛皮纸礼盒&nbsp;601/A5红色-牛皮纸礼盒&nbsp;603/羊巴皮A5黑色-天地盖礼盒&nbsp;603/羊巴皮A5棕色-天地盖礼盒&nbsp;603/羊巴皮A5灰色-天地盖礼盒&nbsp;603/羊巴皮A5深蓝-天地盖礼盒&nbsp;603/羊巴皮A5红色-天地盖礼盒&nbsp;603/羊巴皮A5湖水绿-天地盖礼盒&nbsp;601/A5黑色-天地盖礼盒&nbsp;601/AA5灰色-天地盖礼盒&nbsp;601/AA5蓝色-天地盖礼盒&nbsp;601/AA5棕色-天地盖礼盒&nbsp;601/AA5红色-天地盖礼盒&nbsp;601/AA5咖色-天地盖礼盒&nbsp;601/AA5墨绿色-天地盖礼盒&nbsp;【企业定制】支持全方位定制/多种工艺可选&nbsp;B5墨绿色&nbsp;607-A5黑色&nbsp;607-A5灰色&nbsp;607-A5深蓝&nbsp;607-A5棕色&nbsp;607-A5灰蓝色&nbsp;10007/A5淡雅灰【加厚款160张】&nbsp;10007/A5典雅黑【加厚款160张】&nbsp;10007/A5蒂芙尼蓝【加厚款160张】&nbsp;10007/A5凋叶棕【加厚款160张】&nbsp;10007/A5海涛蓝【加厚款160张】&nbsp;10007/A5玉簪绿【加厚款160张】\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		包装数量:&nbsp;单本装\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		封面材质:&nbsp;PU\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		生产企业:&nbsp;南昌谷联贸易有限公司\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		适用场景:&nbsp;书写&nbsp;会议\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		幅面:&nbsp;A5\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		记事本分类:&nbsp;通用笔记本\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		装订方式:&nbsp;其他/other\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		适用人群:&nbsp;学生&nbsp;白领\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		上市时间:&nbsp;2019-11-01\r\n	</li>\r\n	<li style=\"vertical-align:top;color:#666666;\">\r\n		内页材质:&nbsp;道林纸\r\n	</li>\r\n</ul>',3),(69,'../upload/20220818222235636.jpg','儿童健身室内运动体育锻炼器材家用体能玩具小孩感统训练少儿用品','儿童健身室内运动体育锻炼器材家用体能玩具','【80-100cm】拳套1对',100,45,0,'',6),(70,'../upload/20220818222404871.jpg','平衡板','儿童运动器材感统训练家用户外玩具平衡板体育小学生滑板车锻炼','豪华骷颅黑',78,34,0,'',6),(71,'../upload/20220819083527186.jpg','铅笔','五彩铅笔','五彩6支装',15,44,0,'',3),(72,'../upload/20220819084539735.jpg','毛绒玩偶','女生玩偶','40cm',27,33,0,'',2),(73,'../upload/20220819085502494.jpg','迪迦奥特曼','【模玩熊】Alphamax 布衣 迪迦奥特曼 迪迦 TIGA 手办','件',24,88,0,'',2);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `price` int NOT NULL DEFAULT '0' COMMENT '购买时价格',
  `amount` int NOT NULL DEFAULT '0' COMMENT '购买数量',
  `order_id` int NOT NULL DEFAULT '0' COMMENT '订单ID',
  `good_id` int NOT NULL DEFAULT '0' COMMENT '商品ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='订单项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (58,10,1,46,46),(59,108,1,47,61),(60,999,1,48,51),(61,108,1,49,61),(62,999,1,49,51),(63,108,1,50,61),(64,99,1,51,59),(65,239,1,52,60),(66,999,3,53,51),(67,23,2,54,62),(68,108,1,55,61),(69,999,1,55,51),(70,100,1,56,53),(71,23,1,56,62),(72,66,1,57,41),(73,49,1,58,58),(74,108,1,59,61),(75,108,1,60,61),(76,10,1,61,46),(77,25,1,62,42),(78,25,1,63,42),(79,100,1,64,45),(80,99,1,65,57),(81,30,2,66,63),(82,24,1,66,64);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `total` int NOT NULL DEFAULT '0' COMMENT '订单金额',
  `amount` int NOT NULL DEFAULT '0' COMMENT '商品总数',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint NOT NULL DEFAULT '0' COMMENT '支付方式 (1微信/2支付宝/3积分)',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `systime` datetime DEFAULT NULL COMMENT '下单时间',
  `user_id` int NOT NULL DEFAULT '0' COMMENT '下单用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (66,84,2,5,1,'杰克','13724210820','星光大道','2022-08-18 22:24:46',6);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tops`
--

DROP TABLE IF EXISTS `tops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '推荐类型(1今日推荐)',
  `good_id` int NOT NULL DEFAULT '0' COMMENT '商品ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='推荐商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tops`
--

LOCK TABLES `tops` WRITE;
/*!40000 ALTER TABLE `tops` DISABLE KEYS */;
INSERT INTO `tops` VALUES (31,1,63),(32,1,64),(33,1,67),(34,1,71),(35,1,72);
/*!40000 ALTER TABLE `tops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `types` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `num` int DEFAULT '0' COMMENT '排序号 (从小到大)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (2,'玩具',2),(3,'文具',3),(6,'体育器械',3);
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人',
  `phone` varchar(255) DEFAULT NULL COMMENT '收货电话',
  `address` varchar(255) DEFAULT NULL COMMENT '收货地址',
  `point` double(11,2) unsigned zerofill DEFAULT '00000000.00' COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user','R8FVKb/D6MgqaUITDhjuYQ==','','','',00000107.12),(2,'rwj','HAMVRZRssPCADKqGjGWJtQ==','','','',00000092.00),(3,'m','yJOXpxCuYkm+zIQrRHPdpQ==','3213','231123','13212',00000000.00),(4,'fa','yJOXpxCuYkm+zIQrRHPdpQ==','faf','178947891738','??',00000009.00),(6,'jack','yJOXpxCuYkm+zIQrRHPdpQ==','杰克','13724210820','星光大道',00000045.00),(7,'tom','yJOXpxCuYkm+zIQrRHPdpQ==','汤姆','123234','广州市',00000001.00);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-19  9:00:06
