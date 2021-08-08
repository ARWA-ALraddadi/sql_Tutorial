CREATE DATABASE  IF NOT EXISTS `2016_Quiz2_Medicines` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `2016_Quiz2_Medicines`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: localhost    Database: Medicines
-- ------------------------------------------------------
-- Server version	5.6.19

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
-- Table structure for table `Brands`
--

DROP TABLE IF EXISTS `Brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Brands` (
  `brandName` varchar(30) NOT NULL,
  `strength` varchar(10) NOT NULL,
  `genericName` varchar(30) NOT NULL,
  `manufacturerID` varchar(30) NOT NULL,
  PRIMARY KEY (`brandName`,`strength`),
  KEY `genericName` (`genericName`),
  CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`genericName`) REFERENCES `Medicines` (`genericName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Brands`
--

LOCK TABLES `Brands` WRITE;
/*!40000 ALTER TABLE `Brands` DISABLE KEYS */;
INSERT INTO `Brands` VALUES ('Amoxil','250mg','Amoxicillin','1'),('Norvapine','10mg','Amlodipine','1'),('Norvapine','5mg','Amlodipine','1'),('Norvasc','5mg','Amlodipine','2'),('Zoloft','100mg','Sertraline','3'),('Zoloft','50mg','Sertraline','3');
/*!40000 ALTER TABLE `Brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manufacturer`
--

DROP TABLE IF EXISTS `Manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Manufacturer` (
  `manufacturerID` int(4) NOT NULL,
  PRIMARY KEY (`manufacturerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer`
--

LOCK TABLES `Manufacturer` WRITE;
/*!40000 ALTER TABLE `Manufacturer` DISABLE KEYS */;
INSERT INTO `Manufacturer` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `Manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medicines`
--

DROP TABLE IF EXISTS `Medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Medicines` (
  `genericName` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  PRIMARY KEY (`genericName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicines`
--

LOCK TABLES `Medicines` WRITE;
/*!40000 ALTER TABLE `Medicines` DISABLE KEYS */;
INSERT INTO `Medicines` VALUES ('Amlodipine','CCB'),('Amoxicillin','Penicillin'),('Captopril','ACEi'),('Ceftriaxone','Cephalospo'),('Diazepam','Benzodiaz'),('Escitalopram','SSRI'),('Frusemide','LoopDiure'),('Metoprolol','bblocker'),('Risperidone','AAntipsycho'),('Sertraline','SSRI'),('Temazepam','Benzodiaz'),('Pantoprazole','PPI');
/*!40000 ALTER TABLE `Medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'Medicines'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-19 14:40:42
