CREATE DATABASE  IF NOT EXISTS `customers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `customers`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: customers
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `city` (
  `cityID` int(11) NOT NULL AUTO_INCREMENT,
  `City` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cityID`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Acton'),(2,'Alabaster'),(3,'Alexandria'),(4,'Amelia'),(5,'Anaheim'),(6,'Arcadia'),(7,'Arlington Heights'),(8,'Asheville'),(9,'Atlanta'),(10,'Auburn'),(11,'Austin'),(12,'Avalon'),(13,'Baltimore'),(14,'Barnes City'),(15,'Beaumont'),(16,'Bethesda'),(17,'Bethpage'),(18,'Birmingham'),(19,'Blackwell'),(20,'Blandford'),(21,'Bloomsburg'),(22,'Bluffton'),(23,'Bohemia'),(24,'Boston'),(25,'Bridgeville'),(26,'Brisbane'),(27,'Buffalo'),(28,'Burr Ridge'),(29,'California'),(30,'Cambridge'),(31,'Camden'),(32,'Canastota'),(33,'Carmi'),(34,'Centennial'),(35,'Champaign'),(36,'Chantilly'),(37,'Charbaneau'),(38,'Chester'),(39,'Chicago'),(40,'Cincinnati'),(41,'Circleville'),(42,'City Of Commerce'),(43,'Clearfield'),(44,'Cleburne'),(45,'Collingswood'),(46,'Columbus'),(47,'Concord'),(48,'Conway'),(49,'Cordova'),(50,'Dallas'),(51,'Davenport'),(52,'Daytona Beach'),(53,'Deerfield Beach'),(54,'Deming'),(55,'Denver'),(56,'Detroit'),(57,'Dothan'),(58,'East Boston'),(59,'East Greenbush'),(60,'East Lansing'),(61,'East Moline'),(62,'Eau Claire'),(63,'El Monte'),(64,'El Paso'),(65,'Eugene'),(66,'Eureka'),(67,'Evansville'),(68,'Fairbanks'),(69,'Farmingdale'),(70,'Fayetteville'),(71,'Fergus Falls'),(72,'Flagstaff'),(73,'Flint'),(74,'Fort Lauderdale'),(75,'Fort Walton Beach'),(76,'Fort Washington'),(77,'Fredericksburg'),(78,'Fremont'),(79,'Fresno'),(80,'Frisco'),(81,'Gadsden'),(82,'Gardena'),(83,'Glade Creek'),(84,'Golden'),(85,'Goshen'),(86,'Graham'),(87,'Grand Rapids'),(88,'Greensboro'),(89,'Greenup'),(90,'Grenada'),(91,'Hartford'),(92,'Hazelwood'),(93,'Helena'),(94,'Hersman'),(95,'Hicksville'),(96,'Honolulu'),(97,'Houston'),(98,'Huntsville'),(99,'Ideal'),(100,'Independence'),(101,'Indianapolis'),(102,'Irvine'),(103,'Jackman'),(104,'Jackson'),(105,'Jacksonville'),(106,'Johnson City'),(107,'Kansas City'),(108,'Kearny'),(109,'Kenner'),(110,'Kent'),(111,'Kentwood'),(112,'King Of Prussia'),(113,'Knoxville'),(114,'La Grange (Dutchess)'),(115,'Laguna Beach'),(116,'Lawrenceville'),(117,'Lehi'),(118,'Lincoln'),(119,'Linden'),(120,'Lisle'),(121,'London'),(122,'Longview'),(123,'Los Angeles'),(124,'Louisville'),(125,'Lumberton'),(126,'Lynnwood'),(127,'Madison'),(128,'Marshall'),(129,'Maumee'),(130,'Mcallen'),(131,'Mcdermitt'),(132,'Memphis'),(133,'Menomonee Falls'),(134,'Metuchen'),(135,'Miami'),(136,'Milwaukee'),(137,'Mobile'),(138,'Montgomery'),(139,'Mountain View'),(140,'Natchitoches'),(141,'Neola'),(142,'Nevada'),(143,'New Albany'),(144,'New Orleans'),(145,'New York'),(146,'Newark'),(147,'Northridge'),(148,'Norwalk'),(149,'Oakland'),(150,'Oklahoma City'),(151,'Olney'),(152,'Ontario'),(153,'Paducah'),(154,'Panama City'),(155,'Patterson'),(156,'Pell City'),(157,'Penasco'),(158,'Peoria'),(159,'Philadelphia'),(160,'Phoenix'),(161,'Piscataway'),(162,'Pittsburgh'),(163,'Plantation'),(164,'Pleasanton'),(165,'Port St Joe'),(166,'Portage Des Sioux'),(167,'Portland'),(168,'Prairie Hill'),(169,'Providence'),(170,'Raleigh'),(171,'Ratcliff'),(172,'Richmond'),(173,'Rochelle Park'),(174,'Rogers'),(175,'Ruidoso'),(176,'Rutland'),(177,'Saint Cloud'),(178,'Saint Louis'),(179,'Salisbury'),(180,'San Antonio'),(181,'San Diego'),(182,'San Francisco'),(183,'Santa Rosa'),(184,'Savannah'),(185,'Seattle'),(186,'Secaucus'),(187,'Seminole'),(188,'Seymour'),(189,'Sioux City'),(190,'Smithville'),(191,'Sorento'),(192,'South Burlington'),(193,'Southfield'),(194,'St Louis'),(195,'Stamford'),(196,'Stockton'),(197,'Stone Mountain'),(198,'Sumter'),(199,'Sunrise'),(200,'Swansboro'),(201,'Sylmar'),(202,'Syracuse'),(203,'Tacoma'),(204,'Tijeras'),(205,'Toledo'),(206,'Triadelphia'),(207,'Trumbull'),(208,'Tucker'),(209,'Urbandale'),(210,'Utica'),(211,'Vineland'),(212,'Virginia Beach'),(213,'Wallingford'),(214,'Waltham'),(215,'Wampee'),(216,'Warrensville Heights'),(217,'Washburn'),(218,'Washington'),(219,'Waynesburg'),(220,'Wenatchee'),(221,'West Chicago'),(222,'West Palm Beach'),(223,'Wheeling'),(224,'White Plains'),(225,'White Springs'),(226,'Willard'),(227,'Winder'),(228,'Worcester');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-12 15:52:20
