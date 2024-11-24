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
-- Table structure for table `blood_donor`
--

DROP TABLE IF EXISTS `blood_donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_donor` (
  `bd_ID` int NOT NULL,
  `bd_name` varchar(100) NOT NULL,
  `bd_age` varchar(100) DEFAULT NULL,
  `bd_sex` varchar(100) DEFAULT NULL,
  `bd_Bgroup` varchar(10) DEFAULT NULL,
  `bd_reg_date` date DEFAULT NULL,
  `reco_ID` int NOT NULL,
  `City_ID` int NOT NULL,
  PRIMARY KEY (`bd_ID`),
  KEY `reco_ID` (`reco_ID`),
  KEY `City_ID` (`City_ID`),
  CONSTRAINT `blood_donor_ibfk_1` FOREIGN KEY (`reco_ID`) REFERENCES `recording_staff` (`reco_ID`),
  CONSTRAINT `blood_donor_ibfk_2` FOREIGN KEY (`City_ID`) REFERENCES `city` (`City_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_donor`
--

LOCK TABLES `blood_donor` WRITE;
/*!40000 ALTER TABLE `blood_donor` DISABLE KEYS */;
INSERT INTO `blood_donor` VALUES (150011,'Steven','25','M','O+','2015-07-19',101412,1100),(150012,'Tony','35','M','A-','2015-12-24',101412,1100),(150013,'Bruce','22','M','AB+','2015-08-28',101212,1200),(150014,'Natasha','29','M','B+','2015-12-17',101212,1300),(150015,'Hermoine','42','M','A+','2016-11-22',101212,1300),(150016,'Harry','44','F','AB-','2016-02-06',101212,1200),(150017,'Sherlock','33','M','B-','2016-10-15',101312,1400),(150018,'Logan','31','F','O+','2016-01-04',101312,1200),(150019,'Peter','24','F','AB+','2016-09-10',101312,1500),(150020,'Odinson','29','M','O-','2016-12-17',101212,1200);
/*!40000 ALTER TABLE `blood_donor` ENABLE KEYS */;
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
