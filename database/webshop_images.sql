CREATE DATABASE  IF NOT EXISTS `webshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `webshop`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: webshop
-- ------------------------------------------------------
-- Server version	5.7.5-m15-log

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stem` varchar(45) DEFAULT NULL,
  `attribution_url` varchar(60) DEFAULT NULL,
  `attribution_name` varchar(45) DEFAULT NULL,
  `image_extension` varchar(5) DEFAULT NULL,
  `rankings` int(11) DEFAULT '0',
  `average_ranking` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'car001','http://aeontanvir.com','Mark-D2H3','jpg',6,4.12052),(2,'car002','http://aeontanvir.com','Bolbo-N8','jpg',3,3),(3,'car003','http://aeontanvir.com','Maruti-100','jpg',6,3.33333),(4,'car004','http://aeontanvir.com','Ford-MM5','jpg',3,3),(5,'car005','http://aeontanvir.com','Scorpion5','jpg',4,3),(6,'car006','http://aeontanvir.com','JarkP-520','jpg',3,3),(7,'car007','http://aeontanvir.com','Salsa Park ','jpg',3,3),(8,'car008','http://aeontanvir.com','Lite Pone','jpg',3,3),(9,'car009','http://aeontanvir.com','Zimmp RK5','jpg',3,3),(10,'car010','http://aeontanvir.com','Mark Doso','jpg',3,3),(11,'car011','http://aeontanvir.com','Tuisty DTR007','jpg',4,3.5),(12,'car012','http://aeontanvir.com','Mark Linion','jpg',3,3),(13,'car013','http://aeontanvir.com','Parma 650','jpg',3,3),(14,'car014','http://aeontanvir.com','Norpion 702','jpg',3,3),(15,'car015','http://aeontanvir.com','Saila 558','jpg',3,3),(16,'car016','http://aeontanvir.com','Mariana DDL','jpg',3,3),(17,'car017','http://aeontanvir.com','Arokao 550','jpg',3,3),(18,'car018','http://aeontanvir.com','Mashmallo 50','jpg',3,3),(19,'car019','http://aeontanvir.com','JarkaMal 854','jpg',3,3),(20,'car020','http://aeontanvir.com','Toyota 458','jpg',3,3),(21,'car021','http://aeontanvir.com','Toyota 697','jpg',3,3),(22,'car022','http://aeontanvir.com','Sarcauses 98D','jpg',3,3),(23,'car023','http://aeontanvir.com','Alion XPRO','jpg',3,3),(24,'car024','http://aeontanvir.com','Allion J2','jpg',3,3),(25,'car025','http://aeontanvir.com','Laniama 87','jpg',3,3),(26,'car026','http://aeontanvir.com','Spacial Car','jpg',3,3),(27,'car027','http://aeontanvir.com','Spacial Car','jpg',3,3),(28,'car028','http://aeontanvir.com','Spacial Car','jpg',3,3),(29,'car029','http://aeontanvir.com','Spacial Car','jpg',3,3),(30,'car030','http://aeontanvir.com','Spacial Car','jpg',3,3),(31,'car031','http://aeontanvir.com','Spacial Car','jpg',3,3),(32,'car032','http://aeontanvir.com','Spacial Car','jpg',3,3),(33,'car033','http://aeontanvir.com','Spacial Car','jpg',3,3),(34,'car034','http://aeontanvir.com','Spacial Car','jpg',3,3),(35,'car035','http://aeontanvir.com','Spacial Car','jpg',3,3),(36,'car036','http://aeontanvir.com','Spacial Car','jpg',3,3),(37,'car037','http://aeontanvir.com','Spacial Car','jpg',3,3),(38,'car038','http://aeontanvir.com','Spacial Car','jpg',3,3),(39,'car039','http://aeontanvir.com','Spacial Car','jpg',3,3),(40,'car040','http://aeontanvir.com','Spacial Car','jpg',3,3),(41,'car041','http://aeontanvir.com','Spacial Car','jpg',3,3),(42,'car042','http://aeontanvir.com','Spacial Car','jpg',3,3),(43,'car043','http://aeontanvir.com','Spacial Car','jpg',3,3),(44,'car044','http://aeontanvir.com','Spacial Car','jpg',3,3),(45,'car045','http://aeontanvir.com','Spacial Car','jpg',3,3),(46,'car046','http://aeontanvir.com','Spacial Car','jpg',3,3),(47,'car047','http://aeontanvir.com','Spacial Car','jpg',3,3),(48,'car048','http://aeontanvir.com','Spacial Car','jpg',3,3),(49,'car049','http://aeontanvir.com','Spacial Car','jpg',3,3),(50,'car050','http://aeontanvir.com','Spacial Car','jpg',3,3);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-20 17:09:51
