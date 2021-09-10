-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssme8koa
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bangfuren`
--

DROP TABLE IF EXISTS `bangfuren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bangfuren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhengzheng` varchar(200) DEFAULT NULL COMMENT '身份证正',
  `shenfenzhengfan` varchar(200) DEFAULT NULL COMMENT '身份证反',
  `gongzuodanwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='帮扶人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangfuren`
--

LOCK TABLES `bangfuren` WRITE;
/*!40000 ALTER TABLE `bangfuren` DISABLE KEYS */;
INSERT INTO `bangfuren` VALUES (11,'2021-03-01 11:53:36','帮扶人1','123456','姓名1','男','http://localhost:8080/ssme8koa/upload/bangfuren_touxiang1.jpg','年龄1','13823888881','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengzheng1.jpg','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengfan1.jpg','工作单位1','家庭住址1'),(12,'2021-03-01 11:53:36','帮扶人2','123456','姓名2','男','http://localhost:8080/ssme8koa/upload/bangfuren_touxiang2.jpg','年龄2','13823888882','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengzheng2.jpg','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengfan2.jpg','工作单位2','家庭住址2'),(13,'2021-03-01 11:53:36','帮扶人3','123456','姓名3','男','http://localhost:8080/ssme8koa/upload/bangfuren_touxiang3.jpg','年龄3','13823888883','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengzheng3.jpg','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengfan3.jpg','工作单位3','家庭住址3'),(14,'2021-03-01 11:53:36','帮扶人4','123456','姓名4','男','http://localhost:8080/ssme8koa/upload/bangfuren_touxiang4.jpg','年龄4','13823888884','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengzheng4.jpg','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengfan4.jpg','工作单位4','家庭住址4'),(15,'2021-03-01 11:53:36','帮扶人5','123456','姓名5','男','http://localhost:8080/ssme8koa/upload/bangfuren_touxiang5.jpg','年龄5','13823888885','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengzheng5.jpg','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengfan5.jpg','工作单位5','家庭住址5'),(16,'2021-03-01 11:53:36','帮扶人6','123456','姓名6','男','http://localhost:8080/ssme8koa/upload/bangfuren_touxiang6.jpg','年龄6','13823888886','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengzheng6.jpg','http://localhost:8080/ssme8koa/upload/bangfuren_shenfenzhengfan6.jpg','工作单位6','家庭住址6');
/*!40000 ALTER TABLE `bangfuren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bangfuwuzi`
--

DROP TABLE IF EXISTS `bangfuwuzi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bangfuwuzi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youjianbianhao` varchar(200) NOT NULL COMMENT '邮件编号',
  `wupinmingcheng` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `wupinleixing` varchar(200) DEFAULT NULL COMMENT '物品类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `jijianriqi` date DEFAULT NULL COMMENT '寄件日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youjianbianhao` (`youjianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='帮扶物资';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangfuwuzi`
--

LOCK TABLES `bangfuwuzi` WRITE;
/*!40000 ALTER TABLE `bangfuwuzi` DISABLE KEYS */;
INSERT INTO `bangfuwuzi` VALUES (51,'2021-03-01 11:53:36','邮件编号1','物品名称1','物品类型1','http://localhost:8080/ssme8koa/upload/bangfuwuzi_tupian1.jpg',1,'2021-03-01','账号1','姓名1'),(52,'2021-03-01 11:53:36','邮件编号2','物品名称2','物品类型2','http://localhost:8080/ssme8koa/upload/bangfuwuzi_tupian2.jpg',2,'2021-03-01','账号2','姓名2'),(53,'2021-03-01 11:53:36','邮件编号3','物品名称3','物品类型3','http://localhost:8080/ssme8koa/upload/bangfuwuzi_tupian3.jpg',3,'2021-03-01','账号3','姓名3'),(54,'2021-03-01 11:53:36','邮件编号4','物品名称4','物品类型4','http://localhost:8080/ssme8koa/upload/bangfuwuzi_tupian4.jpg',4,'2021-03-01','账号4','姓名4'),(55,'2021-03-01 11:53:36','邮件编号5','物品名称5','物品类型5','http://localhost:8080/ssme8koa/upload/bangfuwuzi_tupian5.jpg',5,'2021-03-01','账号5','姓名5'),(56,'2021-03-01 11:53:36','邮件编号6','物品名称6','物品类型6','http://localhost:8080/ssme8koa/upload/bangfuwuzi_tupian6.jpg',6,'2021-03-01','账号6','姓名6');
/*!40000 ALTER TABLE `bangfuwuzi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bangfuxinxi`
--

DROP TABLE IF EXISTS `bangfuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bangfuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ertongxingming` varchar(200) DEFAULT NULL COMMENT '儿童姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `bangfuwupin` varchar(200) DEFAULT NULL COMMENT '帮扶物品',
  `bangfujine` int(11) DEFAULT NULL COMMENT '帮扶金额',
  `bangfuneirong` longtext COMMENT '帮扶内容',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `gongzuodanwei` varchar(200) DEFAULT NULL COMMENT '工作单位',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='帮扶信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bangfuxinxi`
--

LOCK TABLES `bangfuxinxi` WRITE;
/*!40000 ALTER TABLE `bangfuxinxi` DISABLE KEYS */;
INSERT INTO `bangfuxinxi` VALUES (41,'2021-03-01 11:53:36','儿童姓名1','性别1','年龄1','联系电话1','帮扶物品1',1,'帮扶内容1','账号1','姓名1','家庭住址1','工作单位1','是','','未支付'),(42,'2021-03-01 11:53:36','儿童姓名2','性别2','年龄2','联系电话2','帮扶物品2',2,'帮扶内容2','账号2','姓名2','家庭住址2','工作单位2','是','','未支付'),(43,'2021-03-01 11:53:36','儿童姓名3','性别3','年龄3','联系电话3','帮扶物品3',3,'帮扶内容3','账号3','姓名3','家庭住址3','工作单位3','是','','未支付'),(44,'2021-03-01 11:53:36','儿童姓名4','性别4','年龄4','联系电话4','帮扶物品4',4,'帮扶内容4','账号4','姓名4','家庭住址4','工作单位4','是','','未支付'),(45,'2021-03-01 11:53:36','儿童姓名5','性别5','年龄5','联系电话5','帮扶物品5',5,'帮扶内容5','账号5','姓名5','家庭住址5','工作单位5','是','','未支付'),(46,'2021-03-01 11:53:36','儿童姓名6','性别6','年龄6','联系电话6','帮扶物品6',6,'帮扶内容6','账号6','姓名6','家庭住址6','工作单位6','是','','未支付');
/*!40000 ALTER TABLE `bangfuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssme8koa/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssme8koa/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssme8koa/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ertongxinxi`
--

DROP TABLE IF EXISTS `ertongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ertongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingcheng` varchar(200) NOT NULL COMMENT '名称',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `bangfuneirong` longtext COMMENT '帮扶内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='儿童信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ertongxinxi`
--

LOCK TABLES `ertongxinxi` WRITE;
/*!40000 ALTER TABLE `ertongxinxi` DISABLE KEYS */;
INSERT INTO `ertongxinxi` VALUES (31,'2021-03-01 11:53:36','名称1','姓名1','性别1','年龄1','年级1','http://localhost:8080/ssme8koa/upload/ertongxinxi_tupian1.jpg','帮扶内容1','2021-03-01'),(32,'2021-03-01 11:53:36','名称2','姓名2','性别2','年龄2','年级2','http://localhost:8080/ssme8koa/upload/ertongxinxi_tupian2.jpg','帮扶内容2','2021-03-01'),(33,'2021-03-01 11:53:36','名称3','姓名3','性别3','年龄3','年级3','http://localhost:8080/ssme8koa/upload/ertongxinxi_tupian3.jpg','帮扶内容3','2021-03-01'),(34,'2021-03-01 11:53:36','名称4','姓名4','性别4','年龄4','年级4','http://localhost:8080/ssme8koa/upload/ertongxinxi_tupian4.jpg','帮扶内容4','2021-03-01'),(35,'2021-03-01 11:53:36','名称5','姓名5','性别5','年龄5','年级5','http://localhost:8080/ssme8koa/upload/ertongxinxi_tupian5.jpg','帮扶内容5','2021-03-01'),(36,'2021-03-01 11:53:36','名称6','姓名6','性别6','年龄6','年级6','http://localhost:8080/ssme8koa/upload/ertongxinxi_tupian6.jpg','帮扶内容6','2021-03-01');
/*!40000 ALTER TABLE `ertongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liushouertong`
--

DROP TABLE IF EXISTS `liushouertong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liushouertong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ertongxingming` varchar(200) NOT NULL COMMENT '儿童姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xuexiao` varchar(200) DEFAULT NULL COMMENT '学校',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `fumu` varchar(200) DEFAULT NULL COMMENT '父母',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `xianjurenkou` varchar(200) DEFAULT NULL COMMENT '现居人口',
  `jiatingmiaoshu` longtext COMMENT '家庭描述',
  `shifoubangfu` varchar(200) DEFAULT NULL COMMENT '是否帮扶',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='留守儿童';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liushouertong`
--

LOCK TABLES `liushouertong` WRITE;
/*!40000 ALTER TABLE `liushouertong` DISABLE KEYS */;
INSERT INTO `liushouertong` VALUES (21,'2021-03-01 11:53:36','儿童姓名1','男','http://localhost:8080/ssme8koa/upload/liushouertong_touxiang1.jpg','年龄1','学校1','年级1','父母1','13823888881','家庭住址1','现居人口1','家庭描述1','未帮扶'),(22,'2021-03-01 11:53:36','儿童姓名2','男','http://localhost:8080/ssme8koa/upload/liushouertong_touxiang2.jpg','年龄2','学校2','年级2','父母2','13823888882','家庭住址2','现居人口2','家庭描述2','未帮扶'),(23,'2021-03-01 11:53:36','儿童姓名3','男','http://localhost:8080/ssme8koa/upload/liushouertong_touxiang3.jpg','年龄3','学校3','年级3','父母3','13823888883','家庭住址3','现居人口3','家庭描述3','未帮扶'),(24,'2021-03-01 11:53:36','儿童姓名4','男','http://localhost:8080/ssme8koa/upload/liushouertong_touxiang4.jpg','年龄4','学校4','年级4','父母4','13823888884','家庭住址4','现居人口4','家庭描述4','未帮扶'),(25,'2021-03-01 11:53:36','儿童姓名5','男','http://localhost:8080/ssme8koa/upload/liushouertong_touxiang5.jpg','年龄5','学校5','年级5','父母5','13823888885','家庭住址5','现居人口5','家庭描述5','未帮扶'),(26,'2021-03-01 11:53:36','儿童姓名6','男','http://localhost:8080/ssme8koa/upload/liushouertong_touxiang6.jpg','年龄6','学校6','年级6','父母6','13823888886','家庭住址6','现居人口6','家庭描述6','未帮扶');
/*!40000 ALTER TABLE `liushouertong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (81,'2021-03-01 11:53:36',1,'用户名1','留言内容1','回复内容1'),(82,'2021-03-01 11:53:36',2,'用户名2','留言内容2','回复内容2'),(83,'2021-03-01 11:53:36',3,'用户名3','留言内容3','回复内容3'),(84,'2021-03-01 11:53:36',4,'用户名4','留言内容4','回复内容4'),(85,'2021-03-01 11:53:36',5,'用户名5','留言内容5','回复内容5'),(86,'2021-03-01 11:53:36',6,'用户名6','留言内容6','回复内容6');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='活动公示';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (71,'2021-03-01 11:53:36','标题1','简介1','http://localhost:8080/ssme8koa/upload/news_picture1.jpg','内容1'),(72,'2021-03-01 11:53:36','标题2','简介2','http://localhost:8080/ssme8koa/upload/news_picture2.jpg','内容2'),(73,'2021-03-01 11:53:36','标题3','简介3','http://localhost:8080/ssme8koa/upload/news_picture3.jpg','内容3'),(74,'2021-03-01 11:53:36','标题4','简介4','http://localhost:8080/ssme8koa/upload/news_picture4.jpg','内容4'),(75,'2021-03-01 11:53:36','标题5','简介5','http://localhost:8080/ssme8koa/upload/news_picture5.jpg','内容5'),(76,'2021-03-01 11:53:36','标题6','简介6','http://localhost:8080/ssme8koa/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-01 11:53:36');
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

-- Dump completed on 2021-03-03 18:03:02
