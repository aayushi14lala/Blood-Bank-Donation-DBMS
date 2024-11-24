-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: bloodbank
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hospital_info_1`
--

DROP TABLE IF EXISTS `hospital_info_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_info_1` (
  `hosp_ID` int NOT NULL,
  `hosp_name` varchar(100) NOT NULL,
  `City_ID` int NOT NULL,
  `M_id` int NOT NULL,
  PRIMARY KEY (`hosp_ID`),
  KEY `M_id` (`M_id`),
  KEY `City_ID` (`City_ID`),
  CONSTRAINT `hospital_info_1_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `bb_manager` (`M_id`),
  CONSTRAINT `hospital_info_1_ibfk_2` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_info_1`
--

LOCK TABLES `hospital_info_1` WRITE;
/*!40000 ALTER TABLE `hospital_info_1` DISABLE KEYS */;
INSERT INTO `hospital_info_1` VALUES (1,'Springfield',1100,101),(2,'Hampshire',1200,103),(3,'Winterfell',1300,103),(4,'Riverrun',1400,104),(5,'Hogsmeade',1800,103),(6,'Greenoaks',1300,106),(7,'Forestpark',1300,102),(8,'Parkland',1200,106),(9,'Pinecreek',1500,109),(10,'Alphaville',1700,105);
/*!40000 ALTER TABLE `hospital_info_1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28  0:14:24
