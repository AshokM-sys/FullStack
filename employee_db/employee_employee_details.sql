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
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empCode` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `employee_gender` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `doj` date DEFAULT NULL,
  `pre_address` text,
  `per_address` text,
  `city_select` varchar(255) DEFAULT NULL,
  `state_select` varchar(255) DEFAULT NULL,
  `country_select` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `aadhar` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_empCode` (`empCode`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,'000001','ASHOK','M','mashok04.com@gmail.com','Male','2024-09-06','2024-09-28','1/251, North Street\r\nBatlagundu','1/251, North Street\r\nBatlagundu','Dindigul','Tamilnadu','India','8072411363','543545224525423'),(2,'000002','ASHOK','M','Ashok1363.com@gmail.com','Male','2024-09-11','2024-09-25','1/251, North Street\r\nBatlagundu','1/251, North Street\r\nBatlagundu','Dindigul','Tamilnadu','India','8072411363','543545224525423'),(4,'000003','ASHOK','M','Ashok1363@gmail.com','Male','2024-09-11','2024-09-04','1/251, North Street\r\nBatlagundu','1/251, North Street\r\nBatlagundu','Dindigul','Tamilnadu','India','8072411363','878690987654'),(5,'000004','ASHOK','M','Ashok1363@gmail.com','Male','2024-09-19','2024-08-27','1/251, North Street\r\nBatlagundu','1/251, North Street\r\nBatlagundu','Dindigul','Tamilnadu','India','8072411363','878690987654'),(6,'000004','ASHOK','M','Ashok1363@gmail.com','Male','2024-09-19','2024-08-27','1/251, North Street\r\nBatlagundu','1/251, North Street\r\nBatlagundu','Dindigul','Tamilnadu','India','8072411363','878690987654'),(7,'000005','ASHOK','M','Ashok1363@gmail.com','Male','2024-09-13','2024-09-25','1/251, North Street\r\nBatlagundu','1/251, North Street\r\nBatlagundu','Theni','Tamilnadu','India','8072411363','543545224525423'),(8,'000006','ASHOK','M','Ashok1363@gmail.com','Male','2024-09-05','2024-09-10','1/251, North Street\r\nBatlagundu','1/251, North Street\r\nBatlagundu','Dindigul','Tamilnadu','India','8072411363','543545224525423'),(9,'000006','ASHOK','M','Ashok1363@gmail.com','Male','2024-09-05','2024-09-10','1/251, North Street\r\nBatlagundu','1/251, North Street\r\nBatlagundu','Dindigul','Tamilnadu','India','8072411363','543545224525423');
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24 19:26:47
