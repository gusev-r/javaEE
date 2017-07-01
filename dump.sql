-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: contacts
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `contact_interest`
--

DROP TABLE IF EXISTS `contact_interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_interest` (
  `contact_id` int(11) NOT NULL,
  `interest_id` int(11) NOT NULL,
  KEY `fk_contc_id_idx` (`contact_id`),
  KEY `fk_inter_id_idx` (`interest_id`),
  CONSTRAINT `fk_contc_id` FOREIGN KEY (`contact_id`) REFERENCES `my_contacts` (`contact_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_inter_id` FOREIGN KEY (`interest_id`) REFERENCES `interests` (`interest_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_interest`
--

LOCK TABLES `contact_interest` WRITE;
/*!40000 ALTER TABLE `contact_interest` DISABLE KEYS */;
INSERT INTO `contact_interest` VALUES (1,1),(1,2),(2,3),(2,4),(3,1),(3,2),(4,4);
/*!40000 ALTER TABLE `contact_interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interests` (
  `interest_id` int(11) NOT NULL,
  `interest` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`interest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interests`
--

LOCK TABLES `interests` WRITE;
/*!40000 ALTER TABLE `interests` DISABLE KEYS */;
INSERT INTO `interests` VALUES (1,'Программирование'),(2,'Дизайн'),(3,'Животные'),(4,'Путешествие');
/*!40000 ALTER TABLE `interests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_contacts`
--

DROP TABLE IF EXISTS `my_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `my_contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(45) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `birhday` date DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `prof_id` int(11) NOT NULL,
  `zip_code` int(11) NOT NULL,
  PRIMARY KEY (`contact_id`),
  KEY `fk_zip_idx` (`zip_code`),
  KEY `fk_profession_idx` (`prof_id`),
  CONSTRAINT `fk_profession` FOREIGN KEY (`prof_id`) REFERENCES `professions` (`prof_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_zip` FOREIGN KEY (`zip_code`) REFERENCES `zip_code` (`zip_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_contacts`
--

LOCK TABLES `my_contacts` WRITE;
/*!40000 ALTER TABLE `my_contacts` DISABLE KEYS */;
INSERT INTO `my_contacts` VALUES (1,'Харди','Эн','am86@b.com','Ж','1989-10-08','777888999',1,1),(2,'Инне','Элизабет','eliz94@b.com','Ж','1994-09-07','555666444',3,2),(3,'Нолан','Кристоффер','god@b.com','М','1995-07-07','333222111',1,1),(4,'Харди','Том','azimov@b.com','M','1983-05-04','555999777',3,3),(8,'Элизабет','Шоу','elizabeth@googl.com','Ж','1989-09-07','892018899',1,1),(9,'Симонова','Лиза','simon@mail.ru','Ж','1997-02-09','333222111',1,1);
/*!40000 ALTER TABLE `my_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professions`
--

DROP TABLE IF EXISTS `professions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professions` (
  `prof_id` int(11) NOT NULL AUTO_INCREMENT,
  `profession` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`prof_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professions`
--

LOCK TABLES `professions` WRITE;
/*!40000 ALTER TABLE `professions` DISABLE KEYS */;
INSERT INTO `professions` VALUES (1,'Разработчик'),(2,'Дизайнер'),(3,'Банкир'),(4,'Архитектор');
/*!40000 ALTER TABLE `professions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zip_code`
--

DROP TABLE IF EXISTS `zip_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zip_code` (
  `zip_code` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`zip_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zip_code`
--

LOCK TABLES `zip_code` WRITE;
/*!40000 ALTER TABLE `zip_code` DISABLE KEYS */;
INSERT INTO `zip_code` VALUES (1,'Тверь','Тверская область'),(2,'Москва','Московская область'),(3,'Санкт-Петербург','Ленинградская область');
/*!40000 ALTER TABLE `zip_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'contacts'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-01 15:20:07
