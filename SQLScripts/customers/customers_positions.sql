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
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `positions` (
  `PositionID` int(11) NOT NULL AUTO_INCREMENT,
  `Positions` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PositionID`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'A & P mechanic'),(2,'Abdominal sonographer'),(3,'Able seaman'),(4,'Administrative office manager'),(5,'Admissions officer'),(6,'Aircraft electrician'),(7,'Aircraft engineer'),(8,'Airframe mechanic'),(9,'Airline copilots'),(10,'Airport terminal controller'),(11,'Ambulance attendant'),(12,'Appellate court judge'),(13,'Armored car guard'),(14,'Assignment editor'),(15,'Assistant property manager'),(16,'Athletic trainer'),(17,'Author'),(18,'Auto damage appraiser'),(19,'Automated systems librarian'),(20,'Automated teller machine technician'),(21,'Automotive body repairer'),(22,'Ballet master'),(23,'Benefits manager'),(24,'Bindery machine operator'),(25,'Biological-physical anthropologist'),(26,'Botanist'),(27,'Brattice builder'),(28,'Brickmason'),(29,'Broker associate'),(30,'Bulldozer operator'),(31,'Buyer'),(32,'Cabinetmaker'),(33,'Camera repairer'),(34,'Captive agent'),(35,'Cardiac and vascular nurse'),(36,'Cardiographic technician'),(37,'CART provider'),(38,'Case management aide'),(39,'Certified athletic trainer'),(40,'Certified public accountant'),(41,'Checker'),(42,'Chef'),(43,'Chemical engineering technician'),(44,'Chemical equipment tender'),(45,'Chief executive'),(46,'Claims adjuster'),(47,'Cleaner'),(48,'Clerical assistant'),(49,'Climatologist'),(50,'Clinical laboratory technologist'),(51,'CNC operator'),(52,'Coatroom attendant'),(53,'Coil finisher'),(54,'Combined food preparation and serving worker'),(55,'Commission clerk'),(56,'Commodities trader'),(57,'Composing machine operator'),(58,'Computer and information systems manager'),(59,'Computer scientist'),(60,'Conservation scientist'),(61,'Construction engineer'),(62,'Constructor'),(63,'Costume designer'),(64,'Court municipal and license clerk'),(65,'Court officer'),(66,'CPA'),(67,'Crushing grinding and polishing machine operator'),(68,'Crushing grinding and polishing machine tender'),(69,'Curriculum specialist'),(70,'Cutting machine operator'),(71,'Cutting punching and press machine tender'),(72,'Cytotechnologist'),(73,'Dairy farmer'),(74,'Delivery services truck driver'),(75,'Dentist'),(76,'Dermatologist'),(77,'Design printing machine operator'),(78,'Desktop publishing editor'),(79,'Diesel service technician'),(80,'Dipper'),(81,'Dog trainer'),(82,'Door-to-door sales worker'),(83,'Driver-sales worker'),(84,'Drug Enforcement Administration (DEA) agent'),(85,'Electrical power line repairer'),(86,'Electrologist'),(87,'Electronic equipment installer'),(88,'Electronic equipment repairer'),(89,'Electronics repairer'),(90,'Embossing machine operator'),(91,'Employment and placement manager'),(92,'Employment recruiter'),(93,'EMT'),(94,'Environmental technician'),(95,'Excavating and loading machine and dragline operator'),(96,'Executive administrative assistant'),(97,'Extruding and forming machine operator'),(98,'Fabric and apparel patternmaker'),(99,'Fashion designer'),(100,'Fine arts photographer'),(101,'Finisher'),(102,'Floor finisher'),(103,'Floor layer'),(104,'Forensic accountant'),(105,'Forest fire inspector'),(106,'Forming machine operator'),(107,'Furnace installer'),(108,'Gaming dealer'),(109,'Gaming manager'),(110,'Gas and water service dispatcher'),(111,'General manager'),(112,'General superintendent'),(113,'Geologist'),(114,'Geotechnical engineer'),(115,'Golf course architect'),(116,'Greenhouse worker'),(117,'Grocery bagger'),(118,'Groundskeeper'),(119,'Health educator'),(120,'Health services manager'),(121,'Heat treating equipment operator'),(122,'Heavy vehicle and mobile equipment service technician'),(123,'Home appliance repairer'),(124,'Home care aide'),(125,'Horticultural specialty farmer'),(126,'Hospice nurse'),(127,'Housing manager'),(128,'Human resources generalist'),(129,'Human resources information system specialist'),(130,'Human resources trainer'),(131,'Image consultant'),(132,'Immigration and Naturalization Service (INS) agent'),(133,'Independent insurance agent'),(134,'Information and record clerk'),(135,'Information architect'),(136,'Information systems manager'),(137,'Instructional specialist'),(138,'Internal auditor'),(139,'International human resources manager'),(140,'Interviewer'),(141,'Job developer'),(142,'Job placement officer'),(143,'Job training specialist'),(144,'Labor economist'),(145,'Land surveyor'),(146,'Line repairer'),(147,'Liquid waste treatment plant and system operator'),(148,'Loan underwriter'),(149,'Machine offbearer'),(150,'Machine setter'),(151,'Manpower development manager'),(152,'Manufacturers'),(153,'Mapping technician'),(154,'Market research manager'),(155,'Marketing specialist'),(156,'Material moving occupation'),(157,'Measurer'),(158,'Meatcutter'),(159,'Mechanic'),(160,'Media outreach specialist'),(161,'Media specialist'),(162,'Medical secretary'),(163,'Merchandise window trimmer'),(164,'Metal caster'),(165,'Military occupation'),(166,'Milling and planing machine operator'),(167,'Milling and planing machine tender'),(168,'Mineralogist'),(169,'Model'),(170,'Molding coremaking and casting machine tender'),(171,'Mortgage banker'),(172,'Motion picture projectionist'),(173,'Multiple machine tool setter'),(174,'Museum technician'),(175,'Music instructor'),(176,'Musical instrument tuner'),(177,'Neuroscience nurse'),(178,'Nuclear engineer'),(179,'Nuclear technician'),(180,'Office helper'),(181,'Ophthalmologic sonographer'),(182,'Ophthalmologist'),(183,'Optometrist'),(184,'Oral and maxillofacial surgeon'),(185,'Outside order clerk'),(186,'Packager'),(187,'Paleomagnetist'),(188,'Palliative care nurse'),(189,'Paste-up worker'),(190,'Patient educator'),(191,'Patternmaker'),(192,'Paymaster'),(193,'Payroll administrator'),(194,'Payroll assistant'),(195,'Payroll bookkeeper'),(196,'Payroll representative'),(197,'Payroll secretary'),(198,'Perianesthesia nurse'),(199,'Pest control worker'),(200,'Petroleum geologist'),(201,'Photographer'),(202,'Photographic equipment repairer'),(203,'Physical geographer'),(204,'Physical metallurgical engineer'),(205,'Physical therapist'),(206,'Placement officer'),(207,'Plating and coating machine tender'),(208,'Playwright'),(209,'Prepress worker'),(210,'Pretrial services officer'),(211,'Printmaker'),(212,'Production machinist'),(213,'Professional scout'),(214,'Professional sports scout'),(215,'Psychiatric nursing assistant'),(216,'Public relations manager'),(217,'Public relations specialist'),(218,'Publications specialist'),(219,'Purchasing technician'),(220,'Quality assurance inspector'),(221,'Rail yard engineer'),(222,'Range scientist'),(223,'Re-recording mixer'),(224,'Real estate appraiser'),(225,'Recruiter'),(226,'Religious activities and education director'),(227,'Reservation agent'),(228,'Restaurant chef'),(229,'Safety specialist'),(230,'Sauce cook'),(231,'Sawing machine tender'),(232,'Scheduling clerk'),(233,'School librarian'),(234,'School psychologist'),(235,'Security and fire alarm systems installer'),(236,'Semiconductor assembler'),(237,'Service station attendant'),(238,'Sewer'),(239,'Sewer pipe cleaner'),(240,'Sheriff'),(241,'Shoe and leather worker'),(242,'Simultaneous interpreter'),(243,'Social work policy maker'),(244,'Soil conservationist'),(245,'Sous chef'),(246,'Speech writer'),(247,'Sports book runner'),(248,'Staffing and assignments coordinator'),(249,'State police officer'),(250,'Stonemason'),(251,'Strength trainer'),(252,'Structural metal fitter'),(253,'Substance abuse social worker'),(254,'Support staff clerk'),(255,'Surgeon'),(256,'Surgical nurse'),(257,'Surveyor'),(258,'Synoptic meteorologist'),(259,'Taper'),(260,'Telemarketer'),(261,'Television announcer'),(262,'Ticket agent'),(263,'Timber cutting and logging worker'),(264,'Time clerk'),(265,'Timekeeper'),(266,'Tool sharpener'),(267,'Top executive'),(268,'Tour escort'),(269,'Trader'),(270,'Training administrator'),(271,'Training consultant'),(272,'Training manager'),(273,'Training specialist'),(274,'Treatment plant and system operator'),(275,'Tumbling barrel painter'),(276,'Ultrasound technologist'),(277,'Undertaker'),(278,'Uniformed police officer'),(279,'Unlicensed assistive personnel'),(280,'Vegetable cook'),(281,'Vending machine technician'),(282,'Vocational nurse'),(283,'Water conservationist'),(284,'Web programmer'),(285,'Welding worker'),(286,'Winch operator'),(287,'Zoologist');
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-12 15:52:21
