-- MySQL dump 10.13  Distrib 5.6.38, for Linux (x86_64)
--
-- Host: localhost    Database: ardipall_AB_haldus
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `AINE`
--

DROP TABLE IF EXISTS `AINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AINE` (
  `a_kood` int(4) NOT NULL AUTO_INCREMENT,
  `nimetus` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  PRIMARY KEY (`a_kood`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AINE`
--

LOCK TABLES `AINE` WRITE;
/*!40000 ALTER TABLE `AINE` DISABLE KEYS */;
INSERT INTO `AINE` VALUES (1,'Kutsealane inglise keel'),(2,'Adobe Illustratori kasutamine'),(3,'Adobe Photoshopi kasutamine'),(4,'Aedvilja ttlemise tehn.'),(5,'Aedvilja ttlemise tehnoloogia'),(6,'Ajalugu'),(7,'Alternatiivsed kontoritpaketid'),(8,'Andmebaasid'),(9,'Andmebaaside alused'),(10,'Andmebaaside projekteerimine'),(11,'Andmebaaside projekteerimine ja haldus'),(12,'Andmeturbe alused'),(13,'Andmeturve'),(14,'Andmettlus ja statistika'),(15,'Arhiivinduse alused'),(16,'Arvutipetus'),(17,'Asjaajamine'),(18,'Asjaajamisse alused'),(19,'Avalik esinemine'),(20,'Baarit'),(21,'Betoonitd'),(22,'Bioloogia'),(23,'Catering'),(24,'CCNA1-arvutivrkude alused'),(25,'CCNA2-ruuterite ja marsruutimise alused'),(26,'CCNA3-Kommunikatsiooni alused ja marsruutimine'),(27,'CCNA4-Laivrgu tehnoloogiad'),(28,'Dekoratiivviimistlus-tehnikad'),(29,'Dieettoitlustamine'),(30,'Dokumendi- ja arhiivihaldus'),(31,'Dokumendihalduspraktika'),(32,'Eelarveline raamatupidamine'),(33,'Eesti keel'),(34,'Eesti maastikud'),(35,'Eesti rekreatsioonigeograafia'),(36,'Eesti turismigeograafia'),(37,'Eesti kossteemid'),(38,'Eetika alused'),(39,'Ehitamise alused'),(40,'Ehitamise phialused'),(41,'Ehitiste konstruktsioonid'),(42,'Ehituse alused'),(43,'Ehituskonstruktsioonid'),(44,'Ehitusmdistamine'),(45,'Ehitusmdistamine ja mrkimine'),(46,'Ehitusrenoveerimise alused'),(47,'Ehitustriistad ja pinnattlus'),(48,'e-kaubandus'),(49,'Eksam'),(50,'Eksamid, kursusetd'),(51,'EL majandus ja tturg'),(52,'Elektripetus'),(53,'Elektroonika alused'),(54,'Elektrotehnika'),(55,'Elektrotehnika ja automaatika elemendid'),(56,'Enesearengu kursus'),(57,'Enesevljendus'),(58,'Eriala toetav eesti keel'),(59,'Eriala toetav inglise keel'),(60,'Eriala toetav keh.kasv'),(61,'Eriala toetav saksa keel'),(62,'Eritoitumine'),(63,'Esitluse loomine'),(64,'Esitlusgraafika ja multimeedia'),(65,'Esmaabi'),(66,'e-teenused'),(67,'Etikett'),(68,'Ettevtlus ja turundus'),(69,'Ettevtluse alused'),(70,'Ettevttepraktika'),(71,'EUCIPi eksamiks valmistumine'),(72,'Euroopa turismigeograafia'),(73,'Failihaldus'),(74,'Finantsanals'),(75,'Finantsraamatupidamine'),(76,'Finantsraamatupidamine arvutil'),(77,'Finantsvahendus'),(78,'Fsika');
/*!40000 ALTER TABLE `AINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AINE_OPILANE`
--

DROP TABLE IF EXISTS `AINE_OPILANE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AINE_OPILANE` (
  `aine_kood` int(4) DEFAULT NULL,
  `o_isikukood` char(11) COLLATE utf8_estonian_ci DEFAULT NULL,
  `opetaja_kood` char(11) COLLATE utf8_estonian_ci DEFAULT NULL,
  `hinne` varchar(1) COLLATE utf8_estonian_ci DEFAULT NULL,
  `kuupaev` date DEFAULT NULL,
  KEY `aine_kood` (`aine_kood`),
  KEY `o_isikukood` (`o_isikukood`),
  KEY `opetaja_kood` (`opetaja_kood`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AINE_OPILANE`
--

LOCK TABLES `AINE_OPILANE` WRITE;
/*!40000 ALTER TABLE `AINE_OPILANE` DISABLE KEYS */;
INSERT INTO `AINE_OPILANE` VALUES (4,'48810242787','47004122783','3','2007-03-05'),(5,'38810222497','37909122763','4','2007-03-05'),(6,'38712062497','47001222783','4','2007-03-05'),(7,'38911212491','47304122782','5','2007-03-05'),(8,'38806062494','46604122785','5','2007-03-05'),(9,'39006022497','35612122733','5','2007-03-05'),(10,'49010262577','37709092783','5','2007-03-05'),(11,'48910222497','47810122783','5','2007-03-05'),(12,'49112162497','47309092783','3','2007-03-05'),(13,'49012292493','46103122783','3','2007-03-05'),(14,'48910212197','45903032783','3','2007-01-16'),(15,'38811202495','37112042785','3','2007-01-16'),(16,'38710022497','38011082783','5','2007-01-16'),(17,'39212262427','47001012783','5','2007-01-16'),(18,'38904292497','45008122783','5','2007-01-16'),(19,'49111162497','47002122783','3','2007-01-16'),(20,'38809262497','36902022783','4','2007-01-16'),(21,'49107232497','47004122737','4','2007-01-16'),(22,'38911222492','37405122789','4','2007-01-16'),(23,'49009162497','45510042783','4','2007-01-16'),(24,'39112312497','47012042686','5','2007-01-16'),(25,'48901312397','35104042783','4','2007-01-16'),(26,'38910262497','45806112783','3','2007-01-16'),(27,'49011292497','47111122781','4','2007-01-16');
/*!40000 ALTER TABLE `AINE_OPILANE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `AUTODE_OMANIKUD`
--

DROP TABLE IF EXISTS `AUTODE_OMANIKUD`;
/*!50001 DROP VIEW IF EXISTS `AUTODE_OMANIKUD`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `AUTODE_OMANIKUD` AS SELECT 
 1 AS `Eesnimi`,
 1 AS `Perenimi`,
 1 AS `email`,
 1 AS `Mudel`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `AUTOOMANIK`
--

DROP TABLE IF EXISTS `AUTOOMANIK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AUTOOMANIK` (
  `Omaniku_id` int(11) NOT NULL,
  `Mudeli_id` int(10) unsigned NOT NULL,
  KEY `Omaniku_id` (`Omaniku_id`),
  KEY `Mudeli_id` (`Mudeli_id`),
  CONSTRAINT `AUTOOMANIK_ibfk_1` FOREIGN KEY (`Omaniku_id`) REFERENCES `OMANIK` (`Omanik_ID`),
  CONSTRAINT `AUTOOMANIK_ibfk_2` FOREIGN KEY (`Mudeli_id`) REFERENCES `MUDEL` (`Mudeli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTOOMANIK`
--

LOCK TABLES `AUTOOMANIK` WRITE;
/*!40000 ALTER TABLE `AUTOOMANIK` DISABLE KEYS */;
INSERT INTO `AUTOOMANIK` VALUES (2,3),(5,24),(19,11),(34,38),(35,41);
/*!40000 ALTER TABLE `AUTOOMANIK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MUDEL`
--

DROP TABLE IF EXISTS `MUDEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MUDEL` (
  `Mudeli_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Mudel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Kytuse_tyyp` enum('B','D') COLLATE utf8_unicode_ci DEFAULT NULL,
  `Toomaht` int(11) NOT NULL,
  `Voimsus` float(4,2) DEFAULT NULL,
  `Tyhimass` int(10) unsigned NOT NULL,
  `Pikkus` int(10) unsigned NOT NULL,
  `Laius` int(10) unsigned NOT NULL,
  `Teljevahe` int(10) unsigned NOT NULL,
  `Kaigukast` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Mudeli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MUDEL`
--

LOCK TABLES `MUDEL` WRITE;
/*!40000 ALTER TABLE `MUDEL` DISABLE KEYS */;
INSERT INTO `MUDEL` VALUES (1,'Chevy Aveo U-VA','B',1150,55.90,1075,3880,1670,2480,'5S Manual'),(2,'Chevy Beat PS, LS , LT','B',1199,59.21,965,3640,1595,2375,'5S Manual'),(3,'Chevy Spark PS, LS, LT','B',1000,46.34,840,3495,1495,2345,'5S Manual'),(4,'Fiat 500','B',1248,55.16,930,3446,1627,2300,'5S Manual'),(5,'Fiat Grande Punto 1.2 FIRE Petrol','B',1172,50.01,1140,3987,1687,2510,'5S Manual'),(6,'Fiat Grande Punto 1.3 MULTIJET Diesel','D',1248,55.90,1145,3987,1687,2510,'5S Manual'),(7,'Fiat Grande Punto 1.4 FIRE Petrol','B',1368,66.19,1190,3987,1687,2510,'5S Manual'),(8,'Fiat Palio 1.1 STILE','B',1108,41.92,1065,3827,1620,2373,'5S Manual'),(9,'Fiat Palio 1.6 STILE SPORT','B',1596,73.55,1065,3827,1620,2373,'5S Manual'),(10,'Ford Figo 1.2 Petrol','B',1196,52.22,1100,3795,1680,2489,'5S Manual'),(11,'Ford Figo 1.4 Diesel','D',1399,50.75,1150,3795,1680,2489,'5S Manual'),(12,'Honda Jazz','B',1198,66.19,1055,3900,1695,2500,'5S Manual'),(13,'Hyundai Getz 1.1 Petrol','B',1086,48.98,995,3825,1665,2455,'5S Manual'),(14,'Hyundai Getz 1.3 Petrol','B',1341,60.97,1033,3825,1665,2455,'5S Manual'),(15,'Hyundai i10 1.1 iRDE','B',1086,48.98,860,3565,1595,2380,'5S Manual'),(16,'Hyundai i10 1.2 Kappa','B',1197,58.84,952,3565,1595,2380,'5S Manual/4S Auto'),(17,'Hyundai i20 1.2 Kappa','B',1197,58.84,1222,3940,1710,2525,'5S Manual'),(18,'Hyundai i20 1.4 CRDi','D',1396,66.19,1222,3940,1710,2525,'5S Manual'),(19,'Hyundai i20 1.4 Gamma','B',1396,73.55,1222,3940,1710,2525,'4S Auto'),(20,'Hyundai Santro','B',1086,46.34,854,3565,1525,2380,'5S Manual'),(21,'Maruti 800','B',796,27.95,683,3335,1440,2175,'5S Manual'),(22,'Maruti A Star','B',998,49.28,880,3500,1600,2360,'5S Manual'),(23,'Maruti Alto','B',796,34.57,735,3495,1475,2360,'5S Manual'),(24,'Maruti Estilo','B',998,50.01,865,3600,1495,2360,'5S Manual'),(25,'Maruti Ritz Diesel','D',1248,55.16,1110,3715,1680,2360,'5S Manual'),(26,'Maruti Ritz Petrol','B',1197,62.52,1030,3715,1680,2360,'5S Manual'),(27,'Maruti Swift Diesel','D',1248,55.16,1075,3760,1690,2390,'5S Manual'),(28,'Maruti Swift Petrol','B',1197,62.52,1010,3760,1690,2390,'5S Manual'),(29,'Maruti Wagon R','B',1061,47.81,840,3520,1490,2360,'5S Manual/3S Auto'),(30,'Skoda Fabia 1.2 Petrol','B',1198,52.22,1050,3992,1642,2462,'5S Manual'),(31,'Skoda Fabia 1.4 Diesel','D',1422,52.22,1125,3992,1642,2462,'5S Manual'),(32,'TATA Indica V2 DLE & Xeta','B',1422,0.00,995,3690,1665,2400,'5S Manual'),(33,'TATA Indica V2 DLS & Xeta','D',1396,39.35,1000,3690,1665,2400,'5S Manual'),(34,'TATA Indica Vista Quadrajet','D',1248,55.16,1140,3795,1695,2470,'5S Manual'),(35,'TATA Indica Vista SAFIRE','B',1172,47.81,1075,3795,1695,2470,'5S Manual'),(36,'TATA Indica Vista TDI','D',1405,52.22,1135,3795,1695,2470,'5S Manual'),(37,'TATA Nano, CX, LX','B',624,25.74,635,3099,1495,1130,'4S Manual'),(38,'VW Beetle','B',1984,85.32,1337,4129,1721,2502,'6S Triptronic'),(39,'VW Polo 1.2 L Diesel','D',1199,55.16,1164,3970,1682,2456,'5S Manual'),(40,'VW Polo 1.2 L Petrol','B',1198,55.16,1164,3970,1682,2456,'5S Manual'),(41,'VW Polo 1.6 L Petrol','B',1598,77.23,1164,3970,1682,2456,'5S Manual');
/*!40000 ALTER TABLE `MUDEL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OMANIK`
--

DROP TABLE IF EXISTS `OMANIK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OMANIK` (
  `Omanik_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Eesnimi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Perenimi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Isikukood` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `Aadress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Telefon` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Omanik_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OMANIK`
--

LOCK TABLES `OMANIK` WRITE;
/*!40000 ALTER TABLE `OMANIK` DISABLE KEYS */;
INSERT INTO `OMANIK` VALUES (1,'Kalle','Kohin','38910262497','Tartu Pärna 23-12','56789576','kalle12@hot.ee'),(2,'Tiia','Tuisk','49011292497','Tartu Riia 126','50468977','tiia.tuisk@hotmail.com'),(3,'Pille','Pill','49110302488','Tartu Jalaka 12-3','51689789','pillekas@gmail.com'),(4,'Kati','Kask','49010162558','Tartu Kopli 1','53459878','kati_k@kool.ee'),(5,'Malle','Moos','48910012697','Tartu Võru 54-21','56423789',''),(6,'Mari','Maasikas','48810242787','Tartu Aida 3-14','50458977',''),(7,'Joosep','Jalakas','38810222497','Tartu ','556457575','joosepjalakas@ut.ee'),(8,'Tiit','Tikk','38712062497','Tartu','547799133','tiit.tikk@astiit.ee'),(9,'Ragnar','Roos','38911212491','Tartu','7715478','rax_x@gmail.com'),(10,'Robert','Rohi','38806062494','Tartu Võru 36','588787362','robi@uuuskool.ee'),(11,'Kevin','Kivi','39006022497','Tartu Turu 5-12','59791547','kivi@hot.ee'),(12,'Sille','Siil','49010262577','Tartu Võru 69','454667993','siilike@udus.ee'),(13,'Lilli','Lill','48910222497','Tartu Pärna 34','487541247','lilli.lill@kodu.ee'),(14,'Luisa','Tuul','49112162497','Tartu Vanemuise 56-23','558787887','tuul@puhub.ee'),(15,'Sandra','Saar','49012292493','Tartu Narva mnt 34-12','589456534',''),(16,'Kadri','Kade','48910212197','Tartu Võru 89','','kati@kokk.ee'),(17,'Vaiko','Kook','38811202495','Tartu Pikk 56-10','7689898',''),(18,'Veiko','Vesi','38710022497','Tartu Lai 76-11','5877693','veiko@vesi.com'),(19,'Hannes','Hein','39212262427','Tartu Betooni 24','','heina@tool.ee'),(20,'Leo','Loots','38904292497','Tartu Pepleri 2-1','569873223','loots@maja.ee'),(21,'Liia','Lips','49111162497','Tartu Pärna 6','69876222','lipsik@lk.ee'),(22,'Kalev','Komm','38809262497','Tartu Võru 33','5464645747','kalevikomm@komm.com'),(23,'Rita','Rehv','49107232497','Tartu Riia 120','52323424','rita.rehv@rehvivah.ee'),(24,'Janek','Jooksik','38911222492','Tartu Raatuse 22-4','56787900','janek@hot.ee'),(25,'Jane','Jänes','49009162497','Tartu Piima 12','5424324325','jane321@hot.ee'),(26,'Mart','Karu','39112312497','Tartu Aleksandri 3-2','587979797','mart.karu@teiekool.ee'),(27,'Kati','Karu','48901312397','Tartu Jalaka 23-3','74645679','kati.karu@teiekool.ee'),(30,'Kalle','K','38912122762',NULL,NULL,NULL),(31,'Kalle','Kosk','38912122762',NULL,NULL,NULL),(32,'Kalle','Kiisk','39012122762',NULL,NULL,NULL),(33,'Meelis','Vaar','48906235730','Tartu','57182738','meelisvaar@gmail.com'),(34,'Jakob','Karp','37957309471','Tallinn','58683750','jakob.karp@gmail.com'),(35,'Ardi','Pallon','39710202727','Tartu, Raudtee 24','53084344','ardipallon@gmail.com');
/*!40000 ALTER TABLE `OMANIK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `OMANIK_NAINE`
--

DROP TABLE IF EXISTS `OMANIK_NAINE`;
/*!50001 DROP VIEW IF EXISTS `OMANIK_NAINE`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `OMANIK_NAINE` AS SELECT 
 1 AS `eesnimi`,
 1 AS `Perenimi`,
 1 AS `telefon`,
 1 AS `isikukood`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `OPETAJA`
--

DROP TABLE IF EXISTS `OPETAJA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OPETAJA` (
  `opetaja_isikuk` char(11) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `eesnimi` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `perenimi` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `juhend_grupp` int(4) DEFAULT NULL,
  PRIMARY KEY (`opetaja_isikuk`),
  KEY `juhend_grupp` (`juhend_grupp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OPETAJA`
--

LOCK TABLES `OPETAJA` WRITE;
/*!40000 ALTER TABLE `OPETAJA` DISABLE KEYS */;
INSERT INTO `OPETAJA` VALUES ('47004122783','Olga','Kask',NULL),('37909122763','Oliver','Kuusk',NULL),('47001222783','Pille','Katus',NULL),('47304122782','Piret','Siil',NULL),('46604122785','Piret','Karu',NULL),('35612122733','Priit','Rebane',NULL),('37709092783','Priit','Jnes',NULL),('47810122783','Sirje','Koer',NULL),('47309092783','Sirje','Kass',NULL),('46103122783','Sirje','Rebane',NULL),('37112042785','Tarmo','Saar',NULL),('38011082783','Tauno','Kuusik',NULL),('45008122783','Thea','Tammik',NULL),('47002122783','Tiina','Lilleaed',NULL),('36902022783','Tiit','Lilleaed',NULL),('37405122789','Toomas','Leht',NULL),('45510042783','Triin','Oks',NULL),('47012042686','Tuuliki','Kadaks',NULL),('35104042783','Urmas','Okas',NULL),('45806112783','Viia','Mgi',NULL),('47111122781','Vilve','Org',NULL),('45501042783','lle','Jgi',NULL),('47304102783','Aime','Niit',NULL),('47701042283','Aina','Jrv',NULL),('46511252783','Aino','Oja',NULL),('45109182783','Aita','Vihm',NULL),('36308232783','Aivar','Tuul',NULL),('37305122789','Aivar','Rand',NULL),('37504302683','Aivar','Kastan',NULL),('47612312783','Aivi','Prn',NULL),('47011112278','Anne','Kuusik',NULL),('36506242583','Ilmar','Kuusemets',NULL),('37204022787','Imre','Juhe',NULL),('37909122583','Indrek','Traat',NULL),('37308142783','Juhan','Juurikas',NULL),('45903032783','Sirje','Mnd',1),('47001012783','Terje','Tamm',2),('47004122737','Tiiu','Rohi',3),('47210282884','Aile','Aas',4),('37107072773','Andrus','Kaasik',5);
/*!40000 ALTER TABLE `OPETAJA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OPILANE`
--

DROP TABLE IF EXISTS `OPILANE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OPILANE` (
  `isikukood` char(11) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `eesnimi` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `perenimi` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `sugu` varchar(1) COLLATE utf8_estonian_ci DEFAULT NULL,
  `o_aadress` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `k_aadress` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `telefon` int(20) DEFAULT NULL,
  `g_kood` int(4) DEFAULT NULL,
  PRIMARY KEY (`isikukood`),
  KEY `g_kood` (`g_kood`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OPILANE`
--

LOCK TABLES `OPILANE` WRITE;
/*!40000 ALTER TABLE `OPILANE` DISABLE KEYS */;
INSERT INTO `OPILANE` VALUES ('38910262497','Kalle','Kohin','m','Tartu','Tartu',50789456,1),('49011292497','Tiia','Tuisk','n','Tartu','Tallinn',0,2),('49110362488','Pille','Pill','n','Tartu','Prnu',0,3),('49010162558','Kati','Kask','n','Tartu','Vru',0,4),('48910012697','Malle','Moos','n','Tartu','Otep',0,5),('48810242787','Mari','Maasikas','n','Tartu','Rngu',0,1),('38810222497','Joosep','Jalakas','m','Tartu','Tartu',0,2),('38712062497','Tiit','Tikk','m','Tartu','Plva',0,3),('38911212491','Ragnar','Roos','m','Tartu','Prnu',0,4),('38806062494','Robert','Rohi','m','Tartu','Vru',0,5),('39006022497','Kevin','Kivi','m','Tartu','Otep',0,1),('49010262577','Sille','Siil','n','Tartu','Rngu',0,2),('48910222497','Lilli','Lill','n','Tartu','Tartu',0,2),('49112162497','Luisa','Tuul','n','Tartu','Valga',0,3),('49012292493','Sandra','Saar','n','Tartu','Prnu',0,3),('48910212197','Kadri','Kade','n','Tartu','Vru',0,4),('38811202495','Vaiko','Kook','m','Tartu','Otep',0,5),('38710022497','Veiko','Vesi','m','Tartu','Rngu',0,1),('39212262427','Hannes','Hein','m','Tartu','Tartu',0,1),('38904292497','Leo','Loots','m','Tartu','Plva',0,5),('49111162497','Liia','Lips','n','Tartu','Prnu',0,2),('38809262497','Kalev','Komm','m','Tartu','Vru',0,2),('49107232497','Rita','Rehv','n','Tartu','Otep',0,2),('38911222492','Janek','Jooksik','m','Tartu','Rngu',0,3),('49009162497','Jane','Jnes','n','Tartu','Tartu',0,4),('39112312497','Mart','Karu','m','Tartu','Plva',0,5),('48901312397','Kati','Karummm','n','Tartu','Prnu',0,3);
/*!40000 ALTER TABLE `OPILANE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OSAKOND`
--

DROP TABLE IF EXISTS `OSAKOND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OSAKOND` (
  `o_kood` int(3) NOT NULL AUTO_INCREMENT,
  `nimi` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `juhataja` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  PRIMARY KEY (`o_kood`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OSAKOND`
--

LOCK TABLES `OSAKOND` WRITE;
/*!40000 ALTER TABLE `OSAKOND` DISABLE KEYS */;
INSERT INTO `OSAKOND` VALUES (1,'IKT','Reet Arvuti'),(2,'Toitlustamine','Juta Kk'),(3,'Hotellimajandus','Tiia Maja'),(4,'Puit','Kalle Kapp');
/*!40000 ALTER TABLE `OSAKOND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `O_GRUPP`
--

DROP TABLE IF EXISTS `O_GRUPP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `O_GRUPP` (
  `o_gr_kood` int(4) NOT NULL AUTO_INCREMENT,
  `o_gr_nimi` varchar(20) COLLATE utf8_estonian_ci DEFAULT NULL,
  `nimi` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `eriala` varchar(100) COLLATE utf8_estonian_ci DEFAULT NULL,
  `o_kood` int(3) DEFAULT NULL,
  PRIMARY KEY (`o_gr_kood`),
  KEY `o_kood` (`o_kood`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `O_GRUPP`
--

LOCK TABLES `O_GRUPP` WRITE;
/*!40000 ALTER TABLE `O_GRUPP` DISABLE KEYS */;
INSERT INTO `O_GRUPP` VALUES (1,'ARV07','Arvutiteenindus','IKT',1),(2,'KKK06','Kokk','KOK',2),(3,'RMT07','Raamatupidamine','IKT',1),(4,'HTL05','Hotellindus','HOT',3),(5,'TSL05','Tisler','PUIT',4),(6,'VS17','Noorem tarkvaraarendaja','IKT',1);
/*!40000 ALTER TABLE `O_GRUPP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `AUTODE_OMANIKUD`
--

/*!50001 DROP VIEW IF EXISTS `AUTODE_OMANIKUD`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardipallon`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `AUTODE_OMANIKUD` AS select `OMANIK`.`Eesnimi` AS `Eesnimi`,`OMANIK`.`Perenimi` AS `Perenimi`,`OMANIK`.`email` AS `email`,`MUDEL`.`Mudel` AS `Mudel` from ((`AUTOOMANIK` join `MUDEL` on((`AUTOOMANIK`.`Mudeli_id` = `MUDEL`.`Mudeli_id`))) join `OMANIK` on((`AUTOOMANIK`.`Omaniku_id` = `OMANIK`.`Omanik_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OMANIK_NAINE`
--

/*!50001 DROP VIEW IF EXISTS `OMANIK_NAINE`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`ardipallon`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `OMANIK_NAINE` AS select `OMANIK`.`Eesnimi` AS `eesnimi`,`OMANIK`.`Perenimi` AS `Perenimi`,`OMANIK`.`Telefon` AS `telefon`,`OMANIK`.`Isikukood` AS `isikukood` from `OMANIK` where (select ((substr(`OMANIK`.`Isikukood`,1,1) % 2) = 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-12 15:01:56
