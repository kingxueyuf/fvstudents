-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: future_valley
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `kid`
--

DROP TABLE IF EXISTS `kid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kid` (
  `kid_id` varchar(255) NOT NULL,
  `kid_name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kid_id`),
  UNIQUE KEY `id_UNIQUE` (`kid_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kid`
--

LOCK TABLES `kid` WRITE;
/*!40000 ALTER TABLE `kid` DISABLE KEYS */;
INSERT INTO `kid` VALUES ('00B001','Robinson Xue','00A001','Yufan Xue');
/*!40000 ALTER TABLE `kid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kid_activity`
--

DROP TABLE IF EXISTS `kid_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kid_activity` (
  `activity_id` varchar(255) NOT NULL,
  `kid_id` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `picture_1_path` varchar(255) DEFAULT NULL,
  `picture_2_path` varchar(255) DEFAULT NULL,
  `picture_3_path` varchar(255) DEFAULT NULL,
  `picture_4_path` varchar(255) DEFAULT NULL,
  `picture_5_path` varchar(255) DEFAULT NULL,
  `picture_6_path` varchar(255) DEFAULT NULL,
  `picture_7_path` varchar(255) DEFAULT NULL,
  `picture_8_path` varchar(255) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `activity_category` varchar(255) DEFAULT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `teacher_comment` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activity_id`),
  UNIQUE KEY `id_UNIQUE` (`activity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kid_activity`
--

LOCK TABLES `kid_activity` WRITE;
/*!40000 ALTER TABLE `kid_activity` DISABLE KEYS */;
INSERT INTO `kid_activity` VALUES ('00C001','00B001','00A001','Yufan Xue','robinson_1.jpg','robinson_2.jpg','robinson_3.jpg','robinson_4.jpg','robinson_5.jpg','robinson_6.jpg','robinson_7.jpg','robinson_8.jpg','2018-01-28 23:59:59','#Play',NULL,'Tifa','\"Robinson come to Ranch 99 supermarket\"');
/*!40000 ALTER TABLE `kid_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kid_activity_comment`
--

DROP TABLE IF EXISTS `kid_activity_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kid_activity_comment` (
  `comment_id` varchar(255) NOT NULL,
  `activity_id` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `comment_date` varchar(255) DEFAULT NULL,
  `comment_by_id` varchar(255) DEFAULT NULL,
  `comment_by_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  UNIQUE KEY `id_UNIQUE` (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kid_activity_comment`
--

LOCK TABLES `kid_activity_comment` WRITE;
/*!40000 ALTER TABLE `kid_activity_comment` DISABLE KEYS */;
INSERT INTO `kid_activity_comment` VALUES ('00D001','00C001','Today\'s snack is great','2018-01-27 2:00:00 pm','00A001','Yufan Xue'),('00D002','00C001','Today\'s snack is great, could you give more snacks','2018-01-27 2:10:00 pm','00A001','Yufan Xue');
/*!40000 ALTER TABLE `kid_activity_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent`
--

DROP TABLE IF EXISTS `parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parent` (
  `parent_id` varchar(255) NOT NULL,
  `parent_account` varchar(255) NOT NULL,
  `parent_password` varchar(45) NOT NULL,
  `parent_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`parent_id`),
  UNIQUE KEY `id_UNIQUE` (`parent_id`),
  UNIQUE KEY `account_UNIQUE` (`parent_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent`
--

LOCK TABLES `parent` WRITE;
/*!40000 ALTER TABLE `parent` DISABLE KEYS */;
INSERT INTO `parent` VALUES ('00A001','kingxueyuf','19920802','Yufan Xue');
/*!40000 ALTER TABLE `parent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `teacher_id` varchar(255) NOT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `teacher_account` varchar(255) DEFAULT NULL,
  `teacher_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `teacher_id_UNIQUE` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('00E001','Tifa Zhan','tifa.zhan','123456');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-28 12:13:18
