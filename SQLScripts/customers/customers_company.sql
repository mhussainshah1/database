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
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `company` (
  `companyID` int(11) NOT NULL AUTO_INCREMENT,
  `Company` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'A. L. Price'),(2,'ABC Markets'),(3,'ABCO Foods'),(4,'Access Asia'),(5,'Accord Investments'),(6,'Afforda'),(7,'Afforda Merchant Services'),(8,'Afterthoughts'),(9,'Albers Super Markets'),(10,'All Wound Up'),(11,'Asian Answers'),(12,'Atlas Realty'),(13,'Beefsteak Charlie\'s'),(14,'Belle Ladi'),(15,'Belle Lady'),(16,'Best Products'),(17,'Bettendorf\'s'),(18,'Better Business Ideas and Services'),(19,'Big Daddy\'s Restaurants'),(20,'Bold Ideas'),(21,'Brand Names'),(22,'Bresler\'s Ice Cream'),(23,'Britches of Georgetown'),(24,'Brooks Fashions'),(25,'Buehler Foods'),(26,'Buena Vista Garden Maintenance'),(27,'Cala Foods'),(28,'Cardinal Stores'),(29,'Casa Bonita'),(30,'Casual Corner'),(31,'Cellophane Square'),(32,'Chandler\'s'),(33,'Channel Home Centers'),(34,'Cherry & Webb'),(35,'Chi-Chi\'s'),(36,'Chief Auto Parts'),(37,'Circuit City'),(38,'Circuit Design'),(39,'Clemens Markets'),(40,'Coast to Coast Hardware'),(41,'Coconut\'s'),(42,'Compact Disc Center'),(43,'Computer City'),(44,'Consumers Food and Drug'),(45,'Coon Chicken Inn'),(46,'Crafts & More'),(47,'Crafts Canada'),(48,'Crazy Tiger'),(49,'Creative Wealth Management'),(50,'Crown Books'),(51,'Cut Above'),(52,'De Pinna'),(53,'DGS HomeSource'),(54,'Dreamscape Garden Care'),(55,'Eagle Food Centers'),(56,'Edge Yard Service'),(57,'Electric Avenue'),(58,'Elek-Tek'),(59,'Enrich Garden Services'),(60,'Exact Solutions'),(61,'EXPO Design Center'),(62,'Father & Son'),(63,'Finast'),(64,'Fireball'),(65,'Flexus'),(66,'Food Giant'),(67,'Forum Cafeterias'),(68,'Fragrant Flower Lawn Services'),(69,'Frame Scene'),(70,'Frank and Seder'),(71,'Franklin Simon'),(72,'Friendly Advice'),(73,'Full Color'),(74,'Funtown toys'),(75,'Galaxy Man'),(76,'Gallenkamp'),(77,'Gamma Gas'),(78,'Gamma Grays'),(79,'Gamma Realty'),(80,'Gantos'),(81,'Gas Zone'),(82,'Geri\'s Hamburgers'),(83,'Golden\'s Distributors'),(84,'Good Guys'),(85,'Grade A Investment'),(86,'Great Clothes'),(87,'Greenwich IGA'),(88,'Grossman\'s'),(89,'Handy City'),(90,'Harold Powell'),(91,'Harvest Foods'),(92,'Hechinger'),(93,'Hill-Behan'),(94,'Hills Supermarkets'),(95,'Hit or Miss'),(96,'Hollywood Video'),(97,'Home Centers'),(98,'Honest Air Group'),(99,'Hudson\'s MensWear'),(100,'Huyler\'s'),(101,'Independent Investors'),(102,'Independent Wealth Management'),(103,'Indiewealth'),(104,'Infinite Wealth Planners'),(105,'Integra Investment Plan'),(106,'Irving\'s Sporting Goods'),(107,'J. Brannam'),(108,'Jackpot Consultant'),(109,'Jacob Reed and Sons'),(110,'JumboSports'),(111,'KB Toys'),(112,'KG Menswear'),(113,'King Carol'),(114,'Knockout Kickboxing'),(115,'Komerci'),(116,'Konsili'),(117,'La Petite Boulangerie'),(118,'Lafayette Radio'),(119,'Landskip Yard Care'),(120,'Landskip Yard Service'),(121,'Lechmere'),(122,'Libera'),(123,'Liberty Wealth Planner'),(124,'Life Map Planners'),(125,'Life\'s Gold'),(126,'Listenin\' Booth'),(127,'Macroserve'),(128,'Madcats Music & Books'),(129,'Magik Gray'),(130,'Magik Lamp'),(131,'Magna Consulting'),(132,'Magna Gases'),(133,'Maloley\'s Finer Foods'),(134,'ManCharm'),(135,'Manning\'s Cafeterias'),(136,'Market Basket'),(137,'Martin\'s'),(138,'McDade\'s'),(139,'Megatronic'),(140,'Merry-Go-Round'),(141,'Mervyn\'s'),(142,'Micro Design'),(143,'Mode O\'Day'),(144,'Morrison\'s Cafeteria'),(145,'Mr Fables'),(146,'Mr. D\'s IGA'),(147,'Mr. Steak'),(148,'Music Plus'),(149,'Musicland'),(150,'MVP Sports'),(151,'National Auto Parts'),(152,'Nedick\'s'),(153,'Network Air'),(154,'New World'),(155,'Nickerson Farms'),(156,'Nobil'),(157,'Noodle Kidoodle'),(158,'Oklahoma Tire & Supply Company'),(159,'Ole\'s'),(160,'Olson Electronics'),(161,'Omni Superstore'),(162,'Opti-Tek'),(163,'Opticomp'),(164,'Oranges Records & Tapes'),(165,'Oshman\'s'),(166,'P. Samuels Men\'s Clothiers'),(167,'Paper Cutter'),(168,'Patterson-Fletcher'),(169,'Pay \'N Pak'),(170,'Penn Fruit'),(171,'Personal & Corporate Design'),(172,'Piccolo Mondo'),(173,'Pioneer Chicken'),(174,'Planet Pizza'),(175,'Planet Profit'),(176,'Playworld'),(177,'Pointers'),(178,'Polk Brothers'),(179,'Prestigabiz'),(180,'Price Club'),(181,'PriceRite Warehouse Club'),(182,'Pup \'N\' Taco'),(183,'Purity'),(184,'Purity Supreme'),(185,'Quality Merchant Services'),(186,'Quest Technology Service'),(187,'Quickbiz'),(188,'Rainbow Records'),(189,'Raleigh\'s'),(190,'Ransohoffs'),(191,'Realty Depot'),(192,'Red Food'),(193,'Red Owl'),(194,'Reliable Garden Management'),(195,'Richman Brothers'),(196,'Rite Solution'),(197,'Rivera Property Maintenance'),(198,'Roadhouse Grill'),(199,'Robert Hall'),(200,'Royal Gas'),(201,'Ruehl No. 925'),(202,'Sagebrush'),(203,'Sam Goody'),(204,'Sambo\'s'),(205,'Schucks Auto Supply'),(206,'Schweggmanns'),(207,'Scott Ties'),(208,'Scotty\'s Builders Supply'),(209,'Seamans Furniture'),(210,'Sears Homelife'),(211,'Service Merchandise'),(212,'Sholl\'s Colonial Cafeteria'),(213,'Simply Appraisals'),(214,'Simply Save'),(215,'Skaggs-Alpha Beta'),(216,'Soft Warehouse'),(217,'Solution Answers'),(218,'Solution Bridge'),(219,'Sound Advice'),(220,'Sounds Great Inc'),(221,'Spaceage Stereo'),(222,'Sports Town USA'),(223,'Standard Food'),(224,'Star Assistance'),(225,'Star Interior Design'),(226,'Starship Tapes & Records'),(227,'Strategy Consulting'),(228,'Strong Life'),(229,'Sunny Real Estate Investments'),(230,'Sure Save'),(231,'System Star'),(232,'System Star Solutions'),(233,'Team Designers and Associates'),(234,'Team Uno'),(235,'Tech Hifi'),(236,'Tee Town'),(237,'Terra Nova Garden Services'),(238,'Thalhimers'),(239,'The Lawn Guru'),(240,'The Record Shops at TSS'),(241,'The Royal Canadian Pancake Houses'),(242,'The White Rabbit'),(243,'The White Swan'),(244,'Tons O\' Toys'),(245,'Total Sources'),(246,'Total Yard Maintenance'),(247,'Tower Records'),(248,'Tradewell'),(249,'Tweeter'),(250,'Twin Electronics'),(251,'Universal Design Partners'),(252,'Vari-Tec'),(253,'Vibrant Man'),(254,'Virgin Megastores'),(255,'Waccamaw Pottery'),(256,'Wag\'s'),(257,'Warner Brothers Studio Store'),(258,'Wealthy Ideas'),(259,'Western Auto'),(260,'Wetson\'s'),(261,'Wickes Furniture'),(262,'Williams Bros.'),(263,'Wilson\'s Jewelers'),(264,'World of Fun'),(265,'Yesterday\'s Records'),(266,'You Are Successful'),(267,'Zany Brainy');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
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
