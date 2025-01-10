CREATE DATABASE  IF NOT EXISTS `employee` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `employee`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `salarybasicdetails`
--

DROP TABLE IF EXISTS `salarybasicdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salarybasicdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empCode` varchar(50) NOT NULL,
  `empName` varchar(50) NOT NULL,
  `Basic` varchar(50) NOT NULL,
  `DA` varchar(50) NOT NULL,
  `HRA` varchar(50) NOT NULL,
  `Conveyance` varchar(50) NOT NULL,
  `Salary` varchar(50) NOT NULL,
  `EPF` varchar(50) NOT NULL,
  `ESI` varchar(50) NOT NULL,
  `Advance` varchar(50) NOT NULL,
  `Incentive` varchar(50) NOT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NULL DEFAULT NULL,
  `account_number` bigint DEFAULT NULL,
  `bank_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salarybasicdetails`
--

LOCK TABLES `salarybasicdetails` WRITE;
/*!40000 ALTER TABLE `salarybasicdetails` DISABLE KEYS */;
INSERT INTO `salarybasicdetails` VALUES (1,'000004','Ashok M','5100','2295','2295','510','10200','949','77','0','1',NULL,'2024-10-09 14:29:40',NULL,NULL,NULL,'Bank2'),(2,'000001','Logu NA','5100','2295','2295','510','10200','949','77','0','0','Logu','2024-10-15 15:10:49',NULL,NULL,1102345443,'Bank1'),(3,'000007','Kiran Verma','5100','2295','2295','510','10200','949','77','0','0','Logu','2024-11-28 05:11:33',NULL,NULL,1102345443,'Bank1');
/*!40000 ALTER TABLE `salarybasicdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24 19:26:51
