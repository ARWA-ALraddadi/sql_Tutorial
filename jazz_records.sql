
CREATE DATABASE  IF NOT EXISTS `JazzRecords` /*!40100 DEFAULT CHARACTER SET utf8 */; 
USE `2018_Tutorial_Week8_JazzRecords`;
-- MySQL dump 10.13  Distrib 5.7.10, for osx10.11 (x86_64)
--
-- Host: 192.168.99.100    Database: jazz_records
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `albums` (
  `album_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (8,'Warner 25 Anos',6),(13,'The Best Of Billy Cobham',10),(38,'Heart of the Night',53),
(48,'The Essential Miles Davis [Disc 1]',68),(49,'The Essential Miles Davis [Disc 2]',68),(51,'Up An\' Atom',69),
(68,'Outbreak',79),(87,'Quanta Gente Veio ver--Bônus De Carnaval',27),(93,'Blue Moods',89),(157,'Miles Ahead',68),
(204,'Morning Dance',53),(262,'Quiet Songs',197),(267,'Worlds',202);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artists` (
  `artist_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (6,'Antônio Carlos Jobim'),(10,'Billy Cobham'),(27,'Gilberto Gil'),(53,'Spyro Gyra'),
(68,'Miles Davis'),(69,'Gene Krupa'),(79,'Dennis Chambers'),(89,'Incognito'),(197,'Aisha Duo'),(202,'Aaron Goldberg');
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Luís Gonçalves','Av. Brigadeiro Faria Lima, 2170','São José dos Campos','SP','Brazil','12227-000','+55 (12) 3923-5555','luisg@embraer.com.br'),
(2,'Leonie Köhler','Theodor-Heuss-Straße 34','Stuttgart',NULL,'Germany','70174','+49 0711 2842222','leonekohler@surfeu.de'),
(3,'François Tremblay','1498 rue Bélanger','Montréal','QC','Canada','H2G 1A7','+1 (514) 721-4711','ftremblay@gmail.com'),
(4,'Bjørn Hansen','Ullevålsveien 14','Oslo',NULL,'Norway','0171','+47 22 44 22 22','bjorn.hansen@yahoo.no'),
(5,'František Wichterlová','Klanova 9/506','Prague',NULL,'Czech Republic','14700','+420 2 4172 5555','frantisekw@jetbrains.com'),
(6,'Helena Holý','Rilská 3174/6','Prague',NULL,'Czech Republic','14300','+420 2 4177 0449','hholy@gmail.com'),
(7,'Astrid Gruber','Rotenturmstraße 4, 1010 Innere Stadt','Vienne',NULL,'Austria','1010','+43 01 5134505','astrid.gruber@apple.at'),
(8,'Daan Peeters','Grétrystraat 63','Brussels',NULL,'Belgium','1000','+32 02 219 03 03','daan_peeters@apple.be'),
(9,'Kara Nielsen','Sønder Boulevard 51','Copenhagen',NULL,'Denmark','1720','+453 3331 9991','kara.nielsen@jubii.dk'),
(10,'Eduardo Martins','Rua Dr. Falcão Filho, 155','São Paulo','SP','Brazil','01007-010','+55 (11) 3033-5446','eduardo@woodstock.com.br'),
(11,'Alexandre Rocha','Av. Paulista, 2022','São Paulo','SP','Brazil','01310-200','+55 (11) 3055-3278','alero@uol.com.br'),
(12,'Roberto Almeida','Praça Pio X, 119','Rio de Janeiro','RJ','Brazil','20040-020','+55 (21) 2271-7000','roberto.almeida@riotur.gov.br'),
(13,'Fernanda Ramos','Qe 7 Bloco G','Brasília','DF','Brazil','71020-677','+55 (61) 3363-5547','fernadaramos4@uol.com.br'),
(14,'Mark Philips','8210 111 ST NW','Edmonton','AB','Canada','T6G 2C7','+1 (780) 434-4554','mphilips12@shaw.ca'),
(15,'Jennifer Peterson','700 W Pender Street','Vancouver','BC','Canada','V6C 1G8','+1 (604) 688-2255','jenniferp@rogers.ca'),
(16,'Frank Harris','1600 Amphitheatre Parkway','Mountain View','CA','USA','94043-1351','+1 (650) 253-0000','fharris@google.com'),
(17,'Jack Smith','1 Microsoft Way','Redmond','WA','USA','98052-8300','+1 (425) 882-8080','jacksmith@microsoft.com'),
(18,'Michelle Brooks','627 Broadway','New York','NY','USA','10012-2612','+1 (212) 221-3546','michelleb@aol.com'),
(19,'Tim Goyer','1 Infinite Loop','Cupertino','CA','USA','95014','+1 (408) 996-1010','tgoyer@apple.com'),
(20,'Dan Miller','541 Del Medio Avenue','Mountain View','CA','USA','94040-111','+1 (650) 644-3358','dmiller@comcast.com'),
(21,'Kathy Chase','801 W 4th Street','Reno','NV','USA','89503','+1 (775) 223-7665','kachase@hotmail.com'),
(22,'Heather Leacock','120 S Orange Ave','Orlando','FL','USA','32801','+1 (407) 999-7788','hleacock@gmail.com'),
(23,'John Gordon','69 Salem Street','Boston','MA','USA','2113','+1 (617) 522-1333','johngordon22@yahoo.com'),
(24,'Frank Ralston','162 E Superior Street','Chicago','IL','USA','60611','+1 (312) 332-3232','fralston@gmail.com'),
(25,'Victor Stevens','319 N. Frances Street','Madison','WI','USA','53703','+1 (608) 257-0597','vstevens@yahoo.com'),
(26,'Richard Cunningham','2211 W Berry Street','Fort Worth','TX','USA','76110','+1 (817) 924-7272','ricunningham@hotmail.com'),
(27,'Patrick Gray','1033 N Park Ave','Tucson','AZ','USA','85719','+1 (520) 622-4200','patrick.gray@aol.com'),
(28,'Julia Barnett','302 S 700 E','Salt Lake City','UT','USA','84102','+1 (801) 531-7272','jubarnett@gmail.com'),
(29,'Robert Brown','796 Dundas Street West','Toronto','ON','Canada','M6J 1V1','+1 (416) 363-8888','robbrown@shaw.ca'),
(30,'Edward Francis','230 Elgin Street','Ottawa','ON','Canada','K2P 1L7','+1 (613) 234-3322','edfrancis@yachoo.ca'),
(31,'Martha Silk','194A Chain Lake Drive','Halifax','NS','Canada','B3S 1C5','+1 (902) 450-0450','marthasilk@gmail.com'),
(32,'Aaron Mitchell','696 Osborne Street','Winnipeg','MB','Canada','R3L 2B9','+1 (204) 452-6452','aaronmitchell@yahoo.ca'),
(33,'Ellie Sullivan','5112 48 Street','Yellowknife','NT','Canada','X1A 1N6','+1 (867) 920-2233','ellie.sullivan@shaw.ca'),
(34,'João Fernandes','Rua da Assunção 53','Lisbon',NULL,'Portugal',NULL,'+351 (213) 466-111','jfernandes@yahoo.pt'),
(35,'Madalena Sampaio','Rua dos Campeões Europeus de Viena, 4350','Porto',NULL,'Portugal',NULL,'+351 (225) 022-448','masampaio@sapo.pt'),
(36,'Hannah Schneider','Tauentzienstraße 8','Berlin',NULL,'Germany','10789','+49 030 26550280','hannah.schneider@yahoo.de'),
(37,'Fynn Zimmermann','Berger Straße 10','Frankfurt',NULL,'Germany','60316','+49 069 40598889','fzimmermann@yahoo.de'),
(38,'Niklas Schröder','Barbarossastraße 19','Berlin',NULL,'Germany','10779','+49 030 2141444','nschroder@surfeu.de'),
(39,'Camille Bernard','4, Rue Milton','Paris',NULL,'France','75009','+33 01 49 70 65 65','camille.bernard@yahoo.fr'),
(40,'Dominique Lefebvre','8, Rue Hanovre','Paris',NULL,'France','75002','+33 01 47 42 71 71','dominiquelefebvre@gmail.com'),
(41,'Marc Dubois','11, Place Bellecour','Lyon',NULL,'France','69002','+33 04 78 30 30 30','marc.dubois@hotmail.com'),
(42,'Wyatt Girard','9, Place Louis Barthou','Bordeaux',NULL,'France','33000','+33 05 56 96 96 96','wyatt.girard@yahoo.fr'),
(43,'Isabelle Mercier','68, Rue Jouvence','Dijon',NULL,'France','21000','+33 03 80 73 66 99','isabelle_mercier@apple.fr'),
(44,'Terhi Hämäläinen','Porthaninkatu 9','Helsinki',NULL,'Finland','00530','+358 09 870 2000','terhi.hamalainen@apple.fi'),
(45,'Ladislav Kovács','Erzsébet krt. 58.','Budapest',NULL,'Hungary','H-1073',NULL,'ladislav_kovacs@apple.hu'),
(46,'Hugh O\'Reilly','3 Chatham Street','Dublin','Dublin','Ireland',NULL,'+353 01 6792424','hughoreilly@apple.ie'),
(47,'Lucas Mancini','Via Degli Scipioni, 43','Rome','RM','Italy','00192','+39 06 39733434','lucas.mancini@yahoo.it'),
(48,'Johannes Van der Berg','Lijnbaansgracht 120bg','Amsterdam','VV','Netherlands','1016','+31 020 6223130','johavanderberg@yahoo.nl'),
(49,'Stanisław Wójcik','Ordynacka 10','Warsaw',NULL,'Poland','00-358','+48 22 828 37 39','stanisław.wójcik@wp.pl'),
(50,'Enrique Muñoz','C/ San Bernardo 85','Madrid',NULL,'Spain','28015','+34 914 454 454','enrique_munoz@yahoo.es'),
(51,'Joakim Johansson','Celsiusg. 9','Stockholm',NULL,'Sweden','11230','+46 08-651 52 52','joakim.johansson@yahoo.se'),
(52,'Emma Jones','202 Hoxton Street','London',NULL,'United Kingdom','N1 5LH','+44 020 7707 0707','emma_jones@hotmail.com'),
(53,'Phil Hughes','113 Lupus St','London',NULL,'United Kingdom','SW1V 3EN','+44 020 7976 5722','phil.hughes@gmail.com'),
(54,'Steve Murray','110 Raeburn Pl','Edinburgh ',NULL,'United Kingdom','EH4 1HH','+44 0131 315 3300','steve.murray@yahoo.uk'),
(55,'Mark Taylor','421 Bourke Street','Sidney','NSW','Australia','2010','+61 (02) 9332 3633','mark.taylor@yahoo.au'),
(56,'Diego Gutiérrez','307 Macacha Güemes','Buenos Aires',NULL,'Argentina','1106','+54 (0)11 4311 4333','diego.gutierrez@yahoo.ar'),
(57,'Luis Rojas','Calle Lira, 198','Santiago',NULL,'Chile',NULL,'+56 (0)2 635 4444','luisrojas@yahoo.cl'),
(58,'Manoj Pareek','12,Community Centre','Delhi',NULL,'India','110017','+91 0124 39883988','manoj.pareek@rediff.com'),
(59,'Puja Srivastava','3,Raj Bhavan Road','Bangalore',NULL,'India','560001','+91 080 22289999','puja_srivastava@yahoo.in');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `reports_to` int(11) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `reports_to` (`reports_to`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`reports_to`) REFERENCES `employees` (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Andrew Adams','General Manager',NULL,'1962-02-18 00:00:00','11120 Jasper Ave NW','Edmonton','AB','Canada','T5K 2N1','+1 (780) 428-9482','andrew@chinookcorp.com'),
(2,'Nancy Edwards','Sales Manager',1,'1958-12-08 00:00:00','825 8 Ave SW','Calgary','AB','Canada','T2P 2T3','+1 (403) 262-3443','nancy@chinookcorp.com'),
(3,'Jane Peacock','Sales Support Agent',2,'1973-08-29 00:00:00','1111 6 Ave SW','Calgary','AB','Canada','T2P 5M5','+1 (403) 262-3443','jane@chinookcorp.com'),
(4,'Margaret Park','Sales Support Agent',2,'1947-09-19 00:00:00','683 10 Street SW','Calgary','AB','Canada','T2P 5G3','+1 (403) 263-4423','margaret@chinookcorp.com'),
(5,'Steve Johnson','Sales Support Agent',2,'1965-03-03 00:00:00','7727B 41 Ave','Calgary','AB','Canada','T3B 1Y7','1 (780) 836-9987','steve@chinookcorp.com'),
(6,'Michael Mitchell','IT Manager',1,'1973-07-01 00:00:00','5827 Bowness Road NW','Calgary','AB','Canada','T3B 0C5','+1 (403) 246-9887','michael@chinookcorp.com'),
(7,'Robert King','IT Staff',6,'1970-05-29 00:00:00','590 Columbia Boulevard West','Lethbridge','AB','Canada','T1K 5N8','+1 (403) 456-9986','robert@chinookcorp.com'),
(8,'Laura Callahan','IT Staff',6,'1968-01-09 00:00:00','923 7 ST NW','Lethbridge','AB','Canada','T1H 1Y8','+1 (403) 467-3351','laura@chinookcorp.com');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_postcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (4,14,'2009-01-06 00:00:00','8210 111 ST NW','Edmonton','AB','Canada','T6G 2C7'),
(5,23,'2009-01-11 00:00:00','69 Salem Street','Boston','MA','USA','2113'),
(13,16,'2009-02-19 00:00:00','1600 Amphitheatre Parkway','Mountain View','CA','USA','94043-1351'),
(14,17,'2009-03-04 00:00:00','1 Microsoft Way','Redmond','WA','USA','98052-8300'),
(15,19,'2009-03-04 00:00:00','1 Infinite Loop','Cupertino','CA','USA','95014'),
(19,40,'2009-03-14 00:00:00','8, Rue Hanovre','Paris',NULL,'France','75002'),
(26,19,'2009-04-14 00:00:00','1 Infinite Loop','Cupertino','CA','USA','95014'),
(38,21,'2009-06-07 00:00:00','801 W 4th Street','Reno','NV','USA','89503'),
(60,23,'2009-09-11 00:00:00','69 Salem Street','Boston','MA','USA','2113'),
(75,49,'2009-11-17 00:00:00','Ordynacka 10','Warsaw',NULL,'Poland','00-358'),
(109,53,'2010-04-16 00:00:00','113 Lupus St','London',NULL,'United Kingdom','SW1V 3EN'),
(110,3,'2010-04-21 00:00:00','1498 rue Bélanger','Montréal','QC','Canada','H2G 1A7'),
(122,5,'2010-06-14 00:00:00','Klanova 9/506','Prague',NULL,'Czech Republic','14700'),
(124,20,'2010-06-22 00:00:00','541 Del Medio Avenue','Mountain View','CA','USA','94040-111'),
(131,58,'2010-07-23 00:00:00','12,Community Centre','Delhi',NULL,'India','110017'),
(138,37,'2010-08-23 00:00:00','Berger Straße 10','Frankfurt',NULL,'Germany','60316'),
(144,7,'2010-09-18 00:00:00','Rotenturmstraße 4, 1010 Innere Stadt','Vienne',NULL,'Austria','1010'),
(165,3,'2010-12-20 00:00:00','1498 rue Bélanger','Montréal','QC','Canada','H2G 1A7'),
(181,43,'2011-03-05 00:00:00','68, Rue Jouvence','Dijon',NULL,'France','21000'),
(182,44,'2011-03-18 00:00:00','Porthaninkatu 9','Helsinki',NULL,'Finland','00530'),
(183,46,'2011-03-18 00:00:00','3 Chatham Street','Dublin','Dublin','Ireland',NULL),
(215,42,'2011-07-30 00:00:00','9, Place Louis Barthou','Bordeaux',NULL,'France','33000'),
(228,50,'2011-09-25 00:00:00','C/ San Bernardo 85','Madrid',NULL,'Spain','28015'),
(229,59,'2011-09-30 00:00:00','3,Raj Bhavan Road','Bangalore',NULL,'India','560001'),
(236,38,'2011-10-31 00:00:00','Barbarossastraße 19','Berlin',NULL,'Germany','10779'),
(249,46,'2011-12-27 00:00:00','3 Chatham Street','Dublin','Dublin','Ireland',NULL),
(271,51,'2012-04-03 00:00:00','Celsiusg. 9','Stockholm',NULL,'Sweden','11230'),
(290,32,'2012-06-27 00:00:00','696 Osborne Street','Winnipeg','MB','Canada','R3L 2B9'),
(320,22,'2012-11-06 00:00:00','120 S Orange Ave','Orlando','FL','USA','32801'),
(333,30,'2013-01-02 00:00:00','230 Elgin Street','Ottawa','ON','Canada','K2P 1L7'),
(334,39,'2013-01-07 00:00:00','4, Rue Milton','Paris',NULL,'France','75009'),
(335,53,'2013-01-15 00:00:00','113 Lupus St','London',NULL,'United Kingdom','SW1V 3EN'),
(336,54,'2013-01-28 00:00:00','110 Raeburn Pl','Edinburgh ',NULL,'United Kingdom','EH4 1HH'),
(337,56,'2013-01-28 00:00:00','307 Macacha Güemes','Buenos Aires',NULL,'Argentina','1106'),
(338,58,'2013-01-29 00:00:00','12,Community Centre','Delhi',NULL,'India','110017'),
(339,3,'2013-01-30 00:00:00','1498 rue Bélanger','Montréal','QC','Canada','H2G 1A7'),
(341,18,'2013-02-07 00:00:00','627 Broadway','New York','NY','USA','10012-2612'),
(352,16,'2013-04-01 00:00:00','1600 Amphitheatre Parkway','Mountain View','CA','USA','94043-1351'),
(355,35,'2013-04-10 00:00:00','Rua dos Campeões Europeus de Viena, 4350','Porto',NULL,'Portugal',NULL),
(376,31,'2013-07-12 00:00:00','194A Chain Lake Drive','Halifax','NS','Canada','B3S 1C5'),
(396,18,'2013-10-08 00:00:00','627 Broadway','New York','NY','USA','10012-2612');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoiceline`
--

DROP TABLE IF EXISTS `invoiceline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoiceline` (
  `invoiceline_id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  `unit` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`invoiceline_id`),
  KEY `invoice_id` (`invoice_id`),
  KEY `track_id` (`track_id`),
  CONSTRAINT `invoiceline_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`invoice_id`),
  CONSTRAINT `invoiceline_ibfk_2` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceline`
--

LOCK TABLES `invoiceline` WRITE;
/*!40000 ALTER TABLE `invoiceline` DISABLE KEYS */;
INSERT INTO `invoiceline` VALUES (17,4,66,0.99),(18,4,72,0.99),(25,5,126,0.99),(74,13,462,0.99),(75,14,463,0.99),(76,14,464,0.99),
(77,15,466,0.99),(102,19,599,0.99),(103,19,608,0.99),(104,19,617,0.99),(105,19,626,0.99),(106,19,635,0.99),(107,19,644,0.99),
(142,26,849,0.99),(200,38,1188,0.99),(201,38,1192,0.99),(202,38,1196,0.99),(318,60,1904,0.99),(319,60,1910,0.99),(414,75,2527,0.99),
(591,109,67,0.99),(592,110,76,0.99),(598,110,130,0.99),(653,122,457,0.99),(654,122,461,0.99),(655,122,465,0.99),(675,124,603,0.99),
(676,124,612,0.99),(678,124,630,0.99),(679,124,639,0.99),(714,131,844,0.99),(755,138,1103,0.99),(775,144,1191,0.99),(776,144,1197,0.99),
(892,165,1905,0.99),(893,165,1911,0.99),(986,181,2527,0.99),(987,182,2528,0.99),(988,182,2529,0.99),(989,183,2531,0.99),(1164,215,71,0.99),
(1170,215,125,0.99),(1229,228,460,0.99),(1230,228,466,0.99),(1247,229,598,0.99),(1248,229,607,0.99),(1249,229,616,0.99),(1250,229,625,0.99),
(1251,229,634,0.99),(1287,236,848,0.99),(1349,249,1192,0.99),(1350,249,1198,0.99),(1466,271,1909,0.99),(1566,290,2526,0.99),
(1567,290,2530,0.99),(1736,320,66,0.99),(1737,320,75,0.99),(1743,320,129,0.99),(1803,333,461,0.99),(1804,333,467,0.99),(1820,334,602,0.99),
(1821,334,611,0.99),(1822,335,625,0.99),(1823,336,626,0.99),(1824,336,627,0.99),(1825,337,629,0.99),(1826,337,631,0.99),(1827,338,633,0.99),
(1828,338,635,0.99),(1829,338,637,0.99),(1830,338,639,0.99),(1831,339,643,0.99),(1859,341,843,0.99),(1906,352,1103,0.99),(1922,355,1190,0.99),
(1923,355,1199,0.99),(2038,376,1904,0.99),(2039,376,1913,0.99),(2141,396,2525,0.99),(2142,396,2531,0.99);
/*!40000 ALTER TABLE `invoiceline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks` (
  `track_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `album_id` int(11) DEFAULT NULL,
  `artist` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`track_id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `tracks_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES (63,'Desafinado',8,NULL,0.99),(64,'Garota De Ipanema',8,NULL,0.99),(65,'Samba De Uma Nota Só (One Note Samba)',8,NULL,0.99),
(66,'Por Causa De Você',8,NULL,0.99),(67,'Ligia',8,NULL,0.99),(68,'Fotografia',8,NULL,0.99),(69,'Dindi (Dindi)',8,NULL,0.99),
(70,'Se Todos Fossem Iguais A Você (Instrumental)',8,NULL,0.99),(71,'Falando De Amor',8,NULL,0.99),(72,'Angela',8,NULL,0.99),
(73,'Corcovado (Quiet Nights Of Quiet Stars)',8,NULL,0.99),(74,'Outra Vez',8,NULL,0.99),(75,'O Boto (Bôto)',8,NULL,0.99),
(76,'Canta, Canta Mais',8,NULL,0.99),(123,'Quadrant',13,'Billy Cobham',0.99),(124,'Snoopy\'s search-Red baron',13,'Billy Cobham',0.99),
(125,'Spanish moss-\"A sound portrait\"-Spanish moss',13,'Billy Cobham',0.99),(126,'Moon germs',13,'Billy Cobham',0.99),(127,'Stratus',13,'Billy Cobham',0.99),
(128,'The pleasant pheasant',13,'Billy Cobham',0.99),(129,'Solo-Panhandler',13,'Billy Cobham',0.99),(130,'Do what cha wanna',13,'George Duke',0.99),
(456,'Heart of the Night',38,NULL,0.99),(457,'De La Luz',38,NULL,0.99),(458,'Westwood Moon',38,NULL,0.99),(459,'Midnight',38,NULL,0.99),
(460,'Playtime',38,NULL,0.99),(461,'Surrender',38,NULL,0.99),(462,'Valentino\'s',38,NULL,0.99),(463,'Believe',38,NULL,0.99),
(464,'As We Sleep',38,NULL,0.99),(465,'When Evening Falls',38,NULL,0.99),(466,'J Squared',38,NULL,0.99),(467,'Best Thing',38,NULL,0.99),
(597,'Now\'s The Time',48,'Miles Davis',0.99),(598,'Jeru',48,'Miles Davis',0.99),(599,'Compulsion',48,'Miles Davis',0.99),
(600,'Tempus Fugit',48,'Miles Davis',0.99),(601,'Walkin\'',48,'Miles Davis',0.99),(602,'\'Round Midnight',48,'Miles Davis',0.99),
(603,'Bye Bye Blackbird',48,'Miles Davis',0.99),(604,'New Rhumba',48,'Miles Davis',0.99),(605,'Generique',48,'Miles Davis',0.99),
(606,'Summertime',48,'Miles Davis',0.99),(607,'So What',48,'Miles Davis',0.99),(608,'The Pan Piper',48,'Miles Davis',0.99),
(609,'Someday My Prince Will Come',48,'Miles Davis',0.99),(610,'My Funny Valentine (Live)',49,'Miles Davis',0.99),
(611,'E.S.P.',49,'Miles Davis',0.99),(612,'Nefertiti',49,'Miles Davis',0.99),(613,'Petits Machins (Little Stuff)',49,'Miles Davis',0.99),
(614,'Miles Runs The Voodoo Down',49,'Miles Davis',0.99),(615,'Little Church (Live)',49,'Miles Davis',0.99),(616,'Black Satin',49,'Miles Davis',0.99),
(617,'Jean Pierre (Live)',49,'Miles Davis',0.99),(618,'Time After Time',49,'Miles Davis',0.99),(619,'Portia',49,'Miles Davis',0.99),
(624,'Jeepers Creepers',51,NULL,0.99),(625,'Blue Rythm Fantasy',51,NULL,0.99),(626,'Drum Boogie',51,NULL,0.99),(627,'Let Me Off Uptown',51,NULL,0.99),
(628,'Leave Us Leap',51,NULL,0.99),(629,'Opus No.1',51,NULL,0.99),(630,'Boogie Blues',51,NULL,0.99),(631,'How High The Moon',51,NULL,0.99),
(632,'Disc Jockey Jump',51,NULL,0.99),(633,'Up An\' Atom',51,NULL,0.99),(634,'Bop Boogie',51,NULL,0.99),(635,'Lemon Drop',51,NULL,0.99),
(636,'Coronation Drop',51,NULL,0.99),(637,'Overtime',51,NULL,0.99),(638,'Imagination',51,NULL,0.99),(639,'Don\'t Take Your Love From Me',51,NULL,0.99),
(640,'Midget',51,NULL,0.99),(641,'I\'m Coming Virginia',51,NULL,0.99),(642,'Payin\' Them Dues Blues',51,NULL,0.99),(643,'Jungle Drums',51,NULL,0.99),
(644,'Showcase',51,NULL,0.99),(645,'Swedish Schnapps',51,NULL,0.99),(842,'Roll Call',68,'Jim Beard',0.99),
(843,'Otay',68,'John Scofield, Robert Aries, Milton Chambers and Gary Grainger',0.99),
(844,'Groovus Interruptus',68,'Jim Beard',0.99),(845,'Paris On Mine',68,'Jon Herington',0.99),
(846,'In Time',68,'Sylvester Stewart',0.99),(847,'Plan B',68,'Dean Brown, Dennis Chambers & Jim Beard',0.99),
(848,'Outbreak',68,'Jim Beard & Jon Herington',0.99),(849,'Baltimore, DC',68,'John Scofield',0.99),
(850,'Talkin Loud and Saying Nothin',68,'James Brown & Bobby Byrd',0.99),(1102,'Doce De Carnaval (Candy All)',87,NULL,0.99),
(1103,'Lamento De Carnaval',87,NULL,0.99),(1104,'Pretinha',87,NULL,0.99),(1188,'Colibri',93,'Richard Bull',0.99),
(1189,'Love Is The Colour',93,'R. Carless',0.99),(1190,'Magnetic Ocean',93,'Patrick Claher/Richard Bull',0.99),
(1191,'Deep Waters',93,'Richard Bull',0.99),(1192,'L\'Arc En Ciel De Miles',93,'Kevin Robinson/Richard Bull',0.99),
(1193,'Gypsy',93,'Kevin Robinson',0.99),(1194,'Journey Into Sunlight',93,'Jean Paul Maunick',0.99),(1195,'Sunchild',93,'Graham Harvey',0.99),
(1196,'Millenium',93,'Maxton Gig Beesley Jnr.',0.99),(1197,'Thinking \'Bout Tomorrow',93,'Fayyaz Virgi/Richard Bull',0.99),
(1198,'Jacob\'s Ladder',93,'Julian Crampton',0.99),(1199,'She Wears Black',93,'G Harvey/R Hope-Taylor',0.99),
(1200,'Dark Side Of The Cog',93,'Jean Paul Maunick',0.99),(1902,'Springsville',157,'J. Carisi',0.99),(1903,'The Maids Of Cadiz',157,'L. Delibes',0.99),
(1904,'The Duke',157,'Dave Brubeck',0.99),(1905,'My Ship',157,'Ira Gershwin, Kurt Weill',0.99),(1906,'Miles Ahead',157,'Miles Davis, Gil Evans',0.99),
(1907,'Blues For Pablo',157,'Gil Evans',0.99),(1908,'New Rhumba',157,'A. Jamal',0.99),(1909,'The Meaning Of The Blues',157,'R. Troup, L. Worth',0.99),
(1910,'Lament',157,'J.J. Johnson',0.99),(1911,'I Don\'t Wanna Be Kissed (By Anyone But You)',157,'H. Spina, J. Elliott',0.99),
(1912,'Springsville (Alternate Take)',157,'J. Carisi',0.99),(1913,'Blues For Pablo (Alternate Take)',157,'Gil Evans',0.99),
(1914,'The Meaning Of The Blues/Lament (Alternate Take)',157,'J.J. Johnson/R. Troup, L. Worth',0.99),
(1915,'I Don\'t Wanna Be Kissed (By Anyone But You) (Alternate Take)',157,'H. Spina, J. Elliott',0.99),
(2523,'Morning Dance',204,'Jay Beckenstein',0.99),(2524,'Jubilee',204,'Jeremy Wall',0.99),
(2525,'Rasul',204,'Jeremy Wall',0.99),(2526,'Song For Lorraine',204,'Jay Beckenstein',0.99),(2527,'Starburst',204,'Jeremy Wall',0.99),
(2528,'Heliopolis',204,'Jay Beckenstein',0.99),(2529,'It Doesn\'t Matter',204,'Chet Catallo',0.99),(2530,'Little Linda',204,'Jeremy Wall',0.99),
(2531,'End Of Romanticism',204,'Rick Strauss',0.99),(3349,'Amanda',262,'Luca Gusella',0.99),(3350,'Despertar',262,'Andrea Dulbecco',0.99),
(3357,'OAM\'s Blues',267,'Aaron Goldberg',0.99);

/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-09 12:07:44
