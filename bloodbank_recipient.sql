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
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipient` (
  `reci_ID` int NOT NULL,
  `reci_name` varchar(100) NOT NULL,
  `reci_age` varchar(10) DEFAULT NULL,
  `reci_Brgp` varchar(100) DEFAULT NULL,
  `reci_Bqnty` float DEFAULT NULL,
  `reco_ID` int NOT NULL,
  `City_ID` int NOT NULL,
  `M_id` int NOT NULL,
  `reci_sex` varchar(100) DEFAULT NULL,
  `reci_reg_date` date DEFAULT NULL,
  PRIMARY KEY (`reci_ID`),
  KEY `M_id` (`M_id`),
  KEY `City_ID` (`City_ID`),
  CONSTRAINT `recipient_ibfk_1` FOREIGN KEY (`M_id`) REFERENCES `bb_manager` (`M_id`),
  CONSTRAINT `recipient_ibfk_2` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
INSERT INTO `recipient` VALUES (10001,'Indiana','25','B+',1.5,101212,1100,101,'F','2015-12-17'),(10002,'Bruce','60','A+',1,101312,1100,102,'M','2015-12-16'),(10003,'Goku','35','AB+',0.5,101312,1200,102,'M','2015-10-17'),(10004,'Stephen','66','B+',1,101212,1300,104,'M','2016-11-17'),(10005,'Itachi','53','B-',1,101412,1400,105,'M','2015-04-17'),(10006,'Erwin','45','O+',1.5,101512,1500,105,'M','2015-12-17'),(10007,'Natasha','22','AB-',1,101212,1500,101,'M','2015-05-17'),(10008,'Julius','25','B+',2,101412,1300,103,'F','2015-12-14'),(10009,'Hemsworth','30','A+',1.5,101312,1100,104,'M','2015-02-16'),(10010,'Langford','25','AB+',3.5,101212,1200,107,'F','2016-10-17');
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
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
