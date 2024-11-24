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
-- Table structure for table `hospital_info_2`
--

DROP TABLE IF EXISTS `hospital_info_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_info_2` (
  `hosp_ID` int NOT NULL,
  `hosp_name` varchar(100) NOT NULL,
  `hosp_needed_Bgrp` varchar(10) NOT NULL,
  `hosp_needed_qnty` int DEFAULT NULL,
  PRIMARY KEY (`hosp_ID`,`hosp_needed_Bgrp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_info_2`
--

LOCK TABLES `hospital_info_2` WRITE;
/*!40000 ALTER TABLE `hospital_info_2` DISABLE KEYS */;
INSERT INTO `hospital_info_2` VALUES (1,'Springfield','A-',0),(1,'Springfield','A+',20),(1,'Springfield','AB-',10),(1,'Springfield','AB+',40),(1,'Springfield','B-',20),(2,'Hampshire','A-',10),(2,'Hampshire','A+',40),(2,'Hampshire','AB-',10),(2,'Hampshire','AB+',20),(2,'Hampshire','B-',30),(2,'Hampshire','B+',0),(3,'Winterfell','A-',0),(3,'Winterfell','A+',0),(3,'Winterfell','AB-',0),(3,'Winterfell','AB+',0),(3,'Winterfell','B-',20),(3,'Winterfell','B+',10),(4,'Riverrun','A-',40),(4,'Riverrun','A+',10),(7,'Forestpark','B-',40),(8,'Parkland','B+',10),(9,'Pinecreek','AB-',20);
/*!40000 ALTER TABLE `hospital_info_2` ENABLE KEYS */;
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
