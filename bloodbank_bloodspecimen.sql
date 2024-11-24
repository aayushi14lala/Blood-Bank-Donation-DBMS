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
-- Table structure for table `bloodspecimen`
--

DROP TABLE IF EXISTS `bloodspecimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloodspecimen` (
  `specimen_number` int NOT NULL,
  `b_group` varchar(10) NOT NULL,
  `status` int DEFAULT NULL,
  `dfind_ID` int NOT NULL,
  `M_id` int NOT NULL,
  PRIMARY KEY (`specimen_number`,`b_group`),
  KEY `M_id` (`M_id`),
  KEY `dfind_ID` (`dfind_ID`),
  CONSTRAINT `bloodspecimen_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `bb_manager` (`M_id`),
  CONSTRAINT `bloodspecimen_ibfk_2` FOREIGN KEY (`dfind_ID`) REFERENCES `diseasefinder` (`dfind_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodspecimen`
--

LOCK TABLES `bloodspecimen` WRITE;
/*!40000 ALTER TABLE `bloodspecimen` DISABLE KEYS */;
INSERT INTO `bloodspecimen` VALUES (1001,'B+',1,11,101),(1002,'O+',1,12,102),(1003,'AB+',1,11,102),(1004,'O-',1,13,103),(1005,'A+',0,14,101),(1006,'A-',1,13,104),(1007,'AB-',1,15,104),(1008,'AB-',0,11,105),(1009,'B+',1,13,105),(1010,'O+',0,12,105),(1011,'O+',1,13,103),(1012,'O-',1,14,102),(1013,'B-',1,14,102),(1014,'AB+',0,15,101);
/*!40000 ALTER TABLE `bloodspecimen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28  0:14:25
