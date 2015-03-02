-- MySQL dump 10.13  Distrib 5.6.23, for osx10.8 (x86_64)
--
-- Host: localhost    Database: lr
-- ------------------------------------------------------
-- Server version	5.6.23

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
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'Standard user',''),(2,'Administrator','{\r\n\"admin\": 1,\r\n\"moderator\": 1\r\n}');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'alex','fa4e25724266db417d41e86c25f94f6358d44a6ebd2e783a32071ed3f874b5f2','=º‚Þ>€©% \"ŸÄ0%ž4«`›!Mb±£ç÷','Alex Garret','2015-02-20 10:07:42',2),(4,'ashley','436af4528860970507e689a2b128bc46b008ef4d10a4768fca959e267b969350','œq])UJ3äë‹Ñ >`qÌhÜçýã1›§°YÐÑë','Ashley Garret','2015-02-20 10:23:51',1),(5,'dale','52b4461d8bfb6881bdaec8f383f40dcdc50298137d6c4178838896f6d181e65f','Š—bëMªõvh.8\'«²Ý‡µFdOüØKØ­à','Dale Garret','2015-02-20 10:41:05',1),(6,'sheeba','950bc7eb63b1447915b5cc8e51a880eff5ccfc3779e9c0156bb98147996f8c81','«û|yÖç›àëºYôÊè1ïWßO_½gª^®–¿','Sheeba Garret','2015-02-20 10:51:26',1),(7,'billy','e493189bda5a1a9401174ebec91f714c572b6f5aa06995a520336cb4eca9f19f','\ZC¥w©ì$\'™ð‘€`‹C\',]Àt…8>l','Billy Garret','2015-02-20 10:55:25',1),(8,'daniel','19d31aa6483541bc0fd5d7f3c06f6a25dbf038d9b517cbe244414458a6df0547','¸üNR”¶7ql¢@èWÅ^é6ÓþZ6Ï„Î¯Gø','Daniel Garret','2015-02-20 10:58:52',1),(9,'william','bc39a527c02edf82e055981cad3ad306d1819b0b0aa6cf28f721caca388df043','\\¬•³Ží}—s¾Ôù‚ü>Ü-µò…L´ãágÍ–àì','William Garret','2015-02-20 16:04:48',1),(10,'jerry','0076cf40aad48f3aa877fff0d1a416180903538edc61a04111f1e8d2f0cc7cbf','ƒ¢åÉáÎU{®Eý,Nô}â­ãê´MZ<‰¡i','Jerry Webster','2015-03-02 19:04:07',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_session`
--

DROP TABLE IF EXISTS `users_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_session`
--

LOCK TABLES `users_session` WRITE;
/*!40000 ALTER TABLE `users_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-02 20:17:04
