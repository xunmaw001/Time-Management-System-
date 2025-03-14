-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspm0n160
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359429408 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-03-10 06:47:20',1,1,'提问1','回复1',1),(82,'2021-03-10 06:47:20',2,2,'提问2','回复2',2),(83,'2021-03-10 06:47:20',3,3,'提问3','回复3',3),(84,'2021-03-10 06:47:20',4,4,'提问4','回复4',4),(85,'2021-03-10 06:47:20',5,5,'提问5','回复5',5),(86,'2021-03-10 06:47:20',6,6,'提问6','回复6',6),(1615359429407,'2021-03-10 06:57:09',1615359229279,NULL,'‍在吗\r\n','在的\r\n',0);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspm0n160/upload/1615359164057.jpg'),(2,'picture2','http://localhost:8080/jspm0n160/upload/1615359180295.png'),(3,'picture3','http://localhost:8080/jspm0n160/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongxiangmu`
--

DROP TABLE IF EXISTS `discusshuodongxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuodongxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359359675 DEFAULT CHARSET=utf8 COMMENT='活动项目评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongxiangmu`
--

LOCK TABLES `discusshuodongxiangmu` WRITE;
/*!40000 ALTER TABLE `discusshuodongxiangmu` DISABLE KEYS */;
INSERT INTO `discusshuodongxiangmu` VALUES (141,'2021-03-10 06:47:20',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-03-10 06:47:20',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-03-10 06:47:20',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-03-10 06:47:20',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-03-10 06:47:20',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-03-10 06:47:20',6,6,'用户名6','评论内容6','回复内容6'),(1615359359674,'2021-03-10 06:55:59',1615359142888,1615359229279,NULL,'测试',NULL);
/*!40000 ALTER TABLE `discusshuodongxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusslizhishipin`
--

DROP TABLE IF EXISTS `discusslizhishipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusslizhishipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359345398 DEFAULT CHARSET=utf8 COMMENT='励志视频评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusslizhishipin`
--

LOCK TABLES `discusslizhishipin` WRITE;
/*!40000 ALTER TABLE `discusslizhishipin` DISABLE KEYS */;
INSERT INTO `discusslizhishipin` VALUES (131,'2021-03-10 06:47:20',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-10 06:47:20',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-10 06:47:20',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-10 06:47:20',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-10 06:47:20',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-10 06:47:20',6,6,'用户名6','评论内容6','回复内容6'),(1615359345397,'2021-03-10 06:55:45',1615359098890,1615359229279,NULL,'测试',NULL);
/*!40000 ALTER TABLE `discusslizhishipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszaixianxuexi`
--

DROP TABLE IF EXISTS `discusszaixianxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusszaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359319885 DEFAULT CHARSET=utf8 COMMENT='在线学习评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszaixianxuexi`
--

LOCK TABLES `discusszaixianxuexi` WRITE;
/*!40000 ALTER TABLE `discusszaixianxuexi` DISABLE KEYS */;
INSERT INTO `discusszaixianxuexi` VALUES (121,'2021-03-10 06:47:20',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-10 06:47:20',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-10 06:47:20',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-10 06:47:20',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-10 06:47:20',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-10 06:47:20',6,6,'用户名6','评论内容6','回复内容6'),(1615359319884,'2021-03-10 06:55:19',1615359051131,1615359229279,NULL,'测试',NULL);
/*!40000 ALTER TABLE `discusszaixianxuexi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fenleiliebiao`
--

DROP TABLE IF EXISTS `fenleiliebiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fenleiliebiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615358996919 DEFAULT CHARSET=utf8 COMMENT='分类列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fenleiliebiao`
--

LOCK TABLES `fenleiliebiao` WRITE;
/*!40000 ALTER TABLE `fenleiliebiao` DISABLE KEYS */;
INSERT INTO `fenleiliebiao` VALUES (1615358976428,'2021-03-10 06:49:35','java'),(1615358983376,'2021-03-10 06:49:42','php'),(1615358990942,'2021-03-10 06:49:50','体育'),(1615358996918,'2021-03-10 06:49:56','运动');
/*!40000 ALTER TABLE `fenleiliebiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359410610 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-03-10 06:47:20','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-03-10 06:47:20','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-03-10 06:47:20','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-03-10 06:47:20','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-03-10 06:47:20','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-03-10 06:47:20','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615359394911,'2021-03-10 06:56:34','交流论坛','<p>交流论坛交流论坛交流论坛交流论坛</p>',0,1615359229279,'001','开放'),(1615359410609,'2021-03-10 06:56:50',NULL,'回帖/跟帖',1615359394911,1615359229279,'001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongbaoming`
--

DROP TABLE IF EXISTS `huodongbaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongbaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodong` varchar(200) DEFAULT NULL COMMENT '活动',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shijian` varchar(200) DEFAULT NULL COMMENT '时间',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `jihedian` varchar(200) DEFAULT NULL COMMENT '集合点',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `baomingrenshu` int(11) DEFAULT NULL COMMENT '报名人数',
  `yingfujine` varchar(200) DEFAULT NULL COMMENT '应付金额',
  `baomingshijian` datetime DEFAULT NULL COMMENT '报名时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359370211 DEFAULT CHARSET=utf8 COMMENT='活动报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongbaoming`
--

LOCK TABLES `huodongbaoming` WRITE;
/*!40000 ALTER TABLE `huodongbaoming` DISABLE KEYS */;
INSERT INTO `huodongbaoming` VALUES (61,'2021-03-10 06:47:20','活动1','类型1','时间1','地点1','集合点1',1,'账号1','姓名1',1,'应付金额1','2021-03-10 14:47:20','是','','未支付'),(62,'2021-03-10 06:47:20','活动2','类型2','时间2','地点2','集合点2',2,'账号2','姓名2',2,'应付金额2','2021-03-10 14:47:20','是','','未支付'),(63,'2021-03-10 06:47:20','活动3','类型3','时间3','地点3','集合点3',3,'账号3','姓名3',3,'应付金额3','2021-03-10 14:47:20','是','','未支付'),(64,'2021-03-10 06:47:20','活动4','类型4','时间4','地点4','集合点4',4,'账号4','姓名4',4,'应付金额4','2021-03-10 14:47:20','是','','未支付'),(65,'2021-03-10 06:47:20','活动5','类型5','时间5','地点5','集合点5',5,'账号5','姓名5',5,'应付金额5','2021-03-10 14:47:20','是','','未支付'),(66,'2021-03-10 06:47:20','活动6','类型6','时间6','地点6','集合点6',6,'账号6','姓名6',6,'应付金额6','2021-03-10 14:47:20','是','','未支付'),(1615359370210,'2021-03-10 06:56:10','活动测试','运动','2021-03-11 15:51:43','测试','测试',200,'001','张三',3,'600','2021-03-10 14:56:09','是','1111','已支付');
/*!40000 ALTER TABLE `huodongbaoming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxiangmu`
--

DROP TABLE IF EXISTS `huodongxiangmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxiangmu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodong` varchar(200) DEFAULT NULL COMMENT '活动',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `jihedian` varchar(200) DEFAULT NULL COMMENT '集合点',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `feiyong` int(11) DEFAULT NULL COMMENT '费用',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359142889 DEFAULT CHARSET=utf8 COMMENT='活动项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxiangmu`
--

LOCK TABLES `huodongxiangmu` WRITE;
/*!40000 ALTER TABLE `huodongxiangmu` DISABLE KEYS */;
INSERT INTO `huodongxiangmu` VALUES (51,'2021-03-10 06:47:20','活动1','类型1','http://localhost:8080/jspm0n160/upload/huodongxiangmu_fengmian1.jpg','集合点1','2021-03-10 14:47:20','地点1',1,'详情1',1,1,1),(52,'2021-03-10 06:47:20','活动2','类型2','http://localhost:8080/jspm0n160/upload/huodongxiangmu_fengmian2.jpg','集合点2','2021-03-10 14:47:20','地点2',2,'详情2',2,2,2),(53,'2021-03-10 06:47:20','活动3','类型3','http://localhost:8080/jspm0n160/upload/huodongxiangmu_fengmian3.jpg','集合点3','2021-03-10 14:47:20','地点3',3,'详情3',3,3,3),(54,'2021-03-10 06:47:20','活动4','类型4','http://localhost:8080/jspm0n160/upload/huodongxiangmu_fengmian4.jpg','集合点4','2021-03-10 14:47:20','地点4',4,'详情4',4,4,4),(55,'2021-03-10 06:47:20','活动5','类型5','http://localhost:8080/jspm0n160/upload/huodongxiangmu_fengmian5.jpg','集合点5','2021-03-10 14:47:20','地点5',5,'详情5',5,5,5),(56,'2021-03-10 06:47:20','活动6','类型6','http://localhost:8080/jspm0n160/upload/huodongxiangmu_fengmian6.jpg','集合点6','2021-03-10 14:47:20','地点6',6,'详情6',6,6,6),(1615359142888,'2021-03-10 06:52:22','活动测试','运动','http://localhost:8080/jspm0n160/upload/1615359126595.jpg','测试','2021-03-11 15:51:43','测试',200,'<img src=\"http://localhost:8080/jspm0n160/upload/1615359140835.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm0n160/upload/1615359140835.jpg\">\r\n',1,0,3);
/*!40000 ALTER TABLE `huodongxiangmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lizhishipin`
--

DROP TABLE IF EXISTS `lizhishipin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lizhishipin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jianjie` longtext COMMENT '简介',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359098891 DEFAULT CHARSET=utf8 COMMENT='励志视频';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lizhishipin`
--

LOCK TABLES `lizhishipin` WRITE;
/*!40000 ALTER TABLE `lizhishipin` DISABLE KEYS */;
INSERT INTO `lizhishipin` VALUES (41,'2021-03-10 06:47:20','标题1','类型1','http://localhost:8080/jspm0n160/upload/lizhishipin_fengmian1.jpg','','2021-03-10','简介1','详情1',1,1,'2021-03-10 14:47:20',1),(42,'2021-03-10 06:47:20','标题2','类型2','http://localhost:8080/jspm0n160/upload/lizhishipin_fengmian2.jpg','','2021-03-10','简介2','详情2',2,2,'2021-03-10 14:47:20',2),(43,'2021-03-10 06:47:20','标题3','类型3','http://localhost:8080/jspm0n160/upload/lizhishipin_fengmian3.jpg','','2021-03-10','简介3','详情3',3,3,'2021-03-10 14:47:20',3),(44,'2021-03-10 06:47:20','标题4','类型4','http://localhost:8080/jspm0n160/upload/lizhishipin_fengmian4.jpg','','2021-03-10','简介4','详情4',4,4,'2021-03-10 14:47:20',4),(45,'2021-03-10 06:47:20','标题5','类型5','http://localhost:8080/jspm0n160/upload/lizhishipin_fengmian5.jpg','','2021-03-10','简介5','详情5',5,5,'2021-03-10 14:47:20',5),(46,'2021-03-10 06:47:20','标题6','类型6','http://localhost:8080/jspm0n160/upload/lizhishipin_fengmian6.jpg','','2021-03-10','简介6','详情6',6,6,'2021-03-10 14:47:20',6),(1615359098890,'2021-03-10 06:51:38','视频测试','php','http://localhost:8080/jspm0n160/upload/1615359071090.jpg','http://localhost:8080/jspm0n160/upload/1615359078479.mp4','2021-03-10','视频测试视频测试视频测试测试','视频测试视频测试视频测试视频测试<img src=\"http://localhost:8080/jspm0n160/upload/1615359096595.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm0n160/upload/1615359096595.jpg\">\r\n',1,0,'2021-03-10 14:55:48',2);
/*!40000 ALTER TABLE `lizhishipin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mubiaozhiding`
--

DROP TABLE IF EXISTS `mubiaozhiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mubiaozhiding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mubiao` varchar(200) DEFAULT NULL COMMENT '目标',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `jihua` longtext COMMENT '计划',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359272780 DEFAULT CHARSET=utf8 COMMENT='目标制定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mubiaozhiding`
--

LOCK TABLES `mubiaozhiding` WRITE;
/*!40000 ALTER TABLE `mubiaozhiding` DISABLE KEYS */;
INSERT INTO `mubiaozhiding` VALUES (71,'2021-03-10 06:47:20','账号1','姓名1','目标1','周计划','未完成','2021-03-10 14:47:20','计划1'),(72,'2021-03-10 06:47:20','账号2','姓名2','目标2','周计划','未完成','2021-03-10 14:47:20','计划2'),(73,'2021-03-10 06:47:20','账号3','姓名3','目标3','周计划','未完成','2021-03-10 14:47:20','计划3'),(74,'2021-03-10 06:47:20','账号4','姓名4','目标4','周计划','未完成','2021-03-10 14:47:20','计划4'),(75,'2021-03-10 06:47:20','账号5','姓名5','目标5','周计划','未完成','2021-03-10 14:47:20','计划5'),(76,'2021-03-10 06:47:20','账号6','姓名6','目标6','周计划','未完成','2021-03-10 14:47:20','计划6'),(1615359272779,'2021-03-10 06:54:32','001','张三','测试','周计划','未完成','2021-03-10 14:54:18','测试商城商城商城从测试\r\n');
/*!40000 ALTER TABLE `mubiaozhiding` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615359209860 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-03-10 06:47:20','标题1','简介1','http://localhost:8080/jspm0n160/upload/news_picture1.jpg','内容1'),(112,'2021-03-10 06:47:20','标题2','简介2','http://localhost:8080/jspm0n160/upload/news_picture2.jpg','内容2'),(113,'2021-03-10 06:47:20','标题3','简介3','http://localhost:8080/jspm0n160/upload/news_picture3.jpg','内容3'),(114,'2021-03-10 06:47:20','标题4','简介4','http://localhost:8080/jspm0n160/upload/news_picture4.jpg','内容4'),(115,'2021-03-10 06:47:20','标题5','简介5','http://localhost:8080/jspm0n160/upload/news_picture5.jpg','内容5'),(116,'2021-03-10 06:47:20','标题6','简介6','http://localhost:8080/jspm0n160/upload/news_picture6.jpg','内容6'),(1615359209859,'2021-03-10 06:53:29','测试','测试测试商城商城','http://localhost:8080/jspm0n160/upload/1615359203146.jpg','<img src=\"http://localhost:8080/jspm0n160/upload/1615359208496.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm0n160/upload/1615359208496.jpg\">\r\n');
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
) ENGINE=InnoDB AUTO_INCREMENT=1615359356938 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615359315427,'2021-03-10 06:55:14',1615359229279,1615359051131,'zaixianxuexi','知识测试','http://localhost:8080/jspm0n160/upload/1615359017088.jpg'),(1615359337605,'2021-03-10 06:55:37',1615359229279,1615359098890,'lizhishipin','视频测试','http://localhost:8080/jspm0n160/upload/1615359071090.jpg'),(1615359356937,'2021-03-10 06:55:56',1615359229279,1615359142888,'huodongxiangmu','活动测试','http://localhost:8080/jspm0n160/upload/1615359126595.jpg');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','oq4fuebeqp5ylslu9l2nccabjv4021sp','2021-03-10 06:49:11','2021-03-10 07:57:43'),(2,1615359229279,'001','yonghu','用户','tpbbwko25c4daeea01o8t7ppg66ncpic','2021-03-10 06:53:57','2021-03-10 07:54:56');
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-10 06:47:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359229280 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-10 06:47:19','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/jspm0n160/upload/yonghu_zhaopian1.jpg'),(12,'2021-03-10 06:47:19','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/jspm0n160/upload/yonghu_zhaopian2.jpg'),(13,'2021-03-10 06:47:19','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/jspm0n160/upload/yonghu_zhaopian3.jpg'),(14,'2021-03-10 06:47:19','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/jspm0n160/upload/yonghu_zhaopian4.jpg'),(15,'2021-03-10 06:47:19','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/jspm0n160/upload/yonghu_zhaopian5.jpg'),(16,'2021-03-10 06:47:19','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/jspm0n160/upload/yonghu_zhaopian6.jpg'),(1615359229279,'2021-03-10 06:53:49','001','001','张三','男',23,'13800000000','123@qq.com','http://localhost:8080/jspm0n160/upload/1615359251354.png');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zaixianxuexi`
--

DROP TABLE IF EXISTS `zaixianxuexi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zaixianxuexi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhishi` varchar(200) DEFAULT NULL COMMENT '知识',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `fujian` varchar(200) DEFAULT NULL COMMENT '附件',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `jianjie` longtext COMMENT '简介',
  `xiangqing` longtext COMMENT '详情',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615359051132 DEFAULT CHARSET=utf8 COMMENT='在线学习';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaixianxuexi`
--

LOCK TABLES `zaixianxuexi` WRITE;
/*!40000 ALTER TABLE `zaixianxuexi` DISABLE KEYS */;
INSERT INTO `zaixianxuexi` VALUES (31,'2021-03-10 06:47:19','知识1','类型1','http://localhost:8080/jspm0n160/upload/zaixianxuexi_fengmian1.jpg','','2021-03-10','简介1','详情1',1,1,'2021-03-10 14:47:19',1),(32,'2021-03-10 06:47:19','知识2','类型2','http://localhost:8080/jspm0n160/upload/zaixianxuexi_fengmian2.jpg','','2021-03-10','简介2','详情2',2,2,'2021-03-10 14:47:19',2),(33,'2021-03-10 06:47:19','知识3','类型3','http://localhost:8080/jspm0n160/upload/zaixianxuexi_fengmian3.jpg','','2021-03-10','简介3','详情3',3,3,'2021-03-10 14:47:19',3),(34,'2021-03-10 06:47:19','知识4','类型4','http://localhost:8080/jspm0n160/upload/zaixianxuexi_fengmian4.jpg','','2021-03-10','简介4','详情4',4,4,'2021-03-10 14:47:19',4),(35,'2021-03-10 06:47:19','知识5','类型5','http://localhost:8080/jspm0n160/upload/zaixianxuexi_fengmian5.jpg','','2021-03-10','简介5','详情5',5,5,'2021-03-10 14:47:19',5),(36,'2021-03-10 06:47:19','知识6','类型6','http://localhost:8080/jspm0n160/upload/zaixianxuexi_fengmian6.jpg','','2021-03-10','简介6','详情6',6,6,'2021-03-10 14:47:19',6),(1615359051131,'2021-03-10 06:50:50','知识测试','java','http://localhost:8080/jspm0n160/upload/1615359017088.jpg','http://localhost:8080/jspm0n160/file/download?fileName=1615359023673.docx','2021-03-10','知识测试知识测试知识测试知识测试知识测试知识测试','编辑器可传文字/图片<img src=\"http://localhost:8080/jspm0n160/upload/1615359049177.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm0n160/upload/1615359049177.jpg\">\r\n',1,0,'2021-03-10 14:58:17',4);
/*!40000 ALTER TABLE `zaixianxuexi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-10 15:52:11
