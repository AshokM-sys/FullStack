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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `empCode` varchar(6) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `department` varchar(50) NOT NULL,
  `attendance` varchar(10) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NULL DEFAULT NULL,
  `compoff_date` date DEFAULT NULL,
  `compoff_submitted_date` date DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'000001','Logu NA','2024-10-16','Active','Office Staff','Present','','Logu','2024-10-16 13:28:25',NULL,NULL,NULL,NULL),(2,'000002','Sathish NA','2024-10-16','Active','Office Staff','Present','','Logu','2024-10-16 13:28:26',NULL,NULL,NULL,NULL),(3,'000003','Bose Raja','2024-10-16','Active','Office Staff','Present','','Logu','2024-10-16 13:28:26',NULL,NULL,NULL,NULL),(4,'000004','Ashok M','2024-10-16','Active','Staff','Absent','Emergency','Logu','2024-10-16 13:28:26',NULL,NULL,NULL,NULL),(5,'000005','Arjun Kumar','2024-10-16','Active','Sales','Present','','Logu','2024-10-16 13:28:27',NULL,NULL,NULL,NULL),(6,'000006','Priya Sharma','2024-10-16','Active','Office Staff','Present','','Logu','2024-10-16 13:28:27',NULL,NULL,NULL,NULL),(7,'000007','Kiran Verma','2024-10-16','Active','Production','Present','','Logu','2024-10-16 13:28:27',NULL,NULL,NULL,NULL),(8,'000008','Deepa Nair','2024-10-16','Active','Staff','Absent','NA','Logu','2024-10-16 13:28:28',NULL,NULL,NULL,NULL),(9,'000009','Ravi Patel','2024-10-16','Active','Sales','Present','','Logu','2024-10-16 13:28:28',NULL,NULL,NULL,NULL),(10,'000010','Neha Iyer','2024-10-16','Active','Office Staff','Present','','Logu','2024-10-16 13:28:29',NULL,NULL,NULL,NULL),(11,'000001','Logu NA','2024-09-01','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(12,'000002','Sathish NA','2024-09-01','Active','Office Staff','Absent','Sick Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(13,'000003','Bose Raja','2024-09-01','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(14,'000004','Ashok M','2024-09-01','Active','Staff','Absent','Personal Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(15,'000005','Arjun Kumar','2024-09-01','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(16,'000006','Priya Sharma','2024-09-01','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(17,'000007','Kiran Verma','2024-09-01','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(18,'000008','Deepa Nair','2024-09-01','Active','Staff','Absent','Personal Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(19,'000009','Ravi Patel','2024-09-01','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(20,'000010','Neha Iyer','2024-09-01','Active','Office Staff','Absent','Medical','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(21,'000001','Logu NA','2024-09-02','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(22,'000002','Sathish NA','2024-09-02','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(23,'000003','Bose Raja','2024-09-02','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(24,'000004','Ashok M','2024-09-02','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(25,'000005','Arjun Kumar','2024-09-02','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(26,'000006','Priya Sharma','2024-09-02','Active','Office Staff','Absent','Medical','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(27,'000007','Kiran Verma','2024-09-02','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(28,'000008','Deepa Nair','2024-09-02','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(29,'000009','Ravi Patel','2024-09-02','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(30,'000010','Neha Iyer','2024-09-02','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(31,'000001','Logu NA','2024-09-03','Active','Office Staff','Absent','Personal Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(32,'000002','Sathish NA','2024-09-03','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(33,'000003','Bose Raja','2024-09-03','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(34,'000004','Ashok M','2024-09-03','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(35,'000005','Arjun Kumar','2024-09-03','Active','Sales','Absent','Vacation','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(36,'000006','Priya Sharma','2024-09-03','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(37,'000007','Kiran Verma','2024-09-03','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(38,'000008','Deepa Nair','2024-09-03','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(39,'000009','Ravi Patel','2024-09-03','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(40,'000010','Neha Iyer','2024-09-03','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(41,'000001','Logu NA','2024-09-04','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(42,'000002','Sathish NA','2024-09-04','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(43,'000003','Bose Raja','2024-09-04','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(44,'000004','Ashok M','2024-09-04','Active','Staff','Absent','Sick Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(45,'000005','Arjun Kumar','2024-09-04','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(46,'000006','Priya Sharma','2024-09-04','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(47,'000007','Kiran Verma','2024-09-04','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(48,'000008','Deepa Nair','2024-09-04','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(49,'000009','Ravi Patel','2024-09-04','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(50,'000010','Neha Iyer','2024-09-04','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(51,'000001','Logu NA','2024-09-05','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(52,'000002','Sathish NA','2024-09-05','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(53,'000003','Bose Raja','2024-09-05','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(54,'000004','Ashok M','2024-09-05','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(55,'000005','Arjun Kumar','2024-09-05','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(56,'000006','Priya Sharma','2024-09-05','Active','Office Staff','Absent','Sick Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(57,'000007','Kiran Verma','2024-09-05','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(58,'000008','Deepa Nair','2024-09-05','Active','Staff','Absent','Medical','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(59,'000009','Ravi Patel','2024-09-05','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(60,'000010','Neha Iyer','2024-09-05','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(61,'000001','Logu NA','2024-09-06','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(62,'000002','Sathish NA','2024-09-06','Active','Office Staff','Absent','Vacation','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(63,'000003','Bose Raja','2024-09-06','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(64,'000004','Ashok M','2024-09-06','Active','Staff','Absent','Personal Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(65,'000005','Arjun Kumar','2024-09-06','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(66,'000006','Priya Sharma','2024-09-06','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(67,'000007','Kiran Verma','2024-09-06','Active','Production','Absent','Sick Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(68,'000008','Deepa Nair','2024-09-06','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(69,'000009','Ravi Patel','2024-09-06','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(70,'000010','Neha Iyer','2024-09-06','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(71,'000001','Logu NA','2024-09-07','Active','Office Staff','Absent','Family Emergency','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(72,'000002','Sathish NA','2024-09-07','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(73,'000003','Bose Raja','2024-09-07','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(74,'000004','Ashok M','2024-09-07','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(75,'000005','Arjun Kumar','2024-09-07','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(76,'000006','Priya Sharma','2024-09-07','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(77,'000007','Kiran Verma','2024-09-07','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(78,'000008','Deepa Nair','2024-09-07','Active','Staff','Absent','Medical','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(79,'000009','Ravi Patel','2024-09-07','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(80,'000010','Neha Iyer','2024-09-07','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(81,'000001','Logu NA','2024-09-08','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(82,'000002','Sathish NA','2024-09-08','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(83,'000003','Bose Raja','2024-09-08','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(84,'000004','Ashok M','2024-09-08','Active','Staff','Absent','Sick Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(85,'000005','Arjun Kumar','2024-09-08','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(86,'000006','Priya Sharma','2024-09-08','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(87,'000007','Kiran Verma','2024-09-08','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(88,'000008','Deepa Nair','2024-09-08','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(89,'000009','Ravi Patel','2024-09-08','Active','Sales','Absent','Medical','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(90,'000010','Neha Iyer','2024-09-08','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(91,'000001','Logu NA','2024-09-09','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(92,'000002','Sathish NA','2024-09-09','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(93,'000003','Bose Raja','2024-09-09','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(94,'000004','Ashok M','2024-09-09','Active','Staff','Absent','Sick Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(95,'000005','Arjun Kumar','2024-09-09','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(96,'000006','Priya Sharma','2024-09-09','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(97,'000007','Kiran Verma','2024-09-09','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(98,'000008','Deepa Nair','2024-09-09','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(99,'000009','Ravi Patel','2024-09-09','Active','Sales','Absent','Medical','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(100,'000010','Neha Iyer','2024-09-09','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(101,'000001','Logu NA','2024-09-10','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(102,'000002','Sathish NA','2024-09-10','Active','Office Staff','Absent','Personal Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(103,'000003','Bose Raja','2024-09-10','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(104,'000004','Ashok M','2024-09-10','Active','Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(105,'000005','Arjun Kumar','2024-09-10','Active','Sales','Absent','Vacation','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(106,'000006','Priya Sharma','2024-09-10','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(107,'000007','Kiran Verma','2024-09-10','Active','Production','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(108,'000008','Deepa Nair','2024-09-10','Active','Staff','Absent','Sick Leave','Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(109,'000009','Ravi Patel','2024-09-10','Active','Sales','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(110,'000010','Neha Iyer','2024-09-10','Active','Office Staff','Present',NULL,'Logu','2024-10-16 13:38:22',NULL,NULL,NULL,NULL),(111,'000001','Logu NA','2024-09-11','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(112,'000002','Sathish NA','2024-09-11','Active','Office Staff','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(113,'000003','Bose Raja','2024-09-11','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(114,'000004','Ashok M','2024-09-11','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(115,'000005','Arjun Kumar','2024-09-11','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(116,'000006','Priya Sharma','2024-09-11','Active','Office Staff','Absent','Personal Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(117,'000007','Kiran Verma','2024-09-11','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(118,'000008','Deepa Nair','2024-09-11','Active','Staff','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(119,'000009','Ravi Patel','2024-09-11','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(120,'000010','Neha Iyer','2024-09-11','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(121,'000001','Logu NA','2024-09-12','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(122,'000002','Sathish NA','2024-09-12','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(123,'000003','Bose Raja','2024-09-12','Active','Office Staff','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(124,'000004','Ashok M','2024-09-12','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(125,'000005','Arjun Kumar','2024-09-12','Active','Sales','Absent','Family Emergency','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(126,'000006','Priya Sharma','2024-09-12','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(127,'000007','Kiran Verma','2024-09-12','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(128,'000008','Deepa Nair','2024-09-12','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(129,'000009','Ravi Patel','2024-09-12','Active','Sales','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(130,'000010','Neha Iyer','2024-09-12','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(131,'000001','Logu NA','2024-09-13','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(132,'000002','Sathish NA','2024-09-13','Active','Office Staff','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(133,'000003','Bose Raja','2024-09-13','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(134,'000004','Ashok M','2024-09-13','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(135,'000005','Arjun Kumar','2024-09-13','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(136,'000006','Priya Sharma','2024-09-13','Active','Office Staff','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(137,'000007','Kiran Verma','2024-09-13','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(138,'000008','Deepa Nair','2024-09-13','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(139,'000009','Ravi Patel','2024-09-13','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(140,'000010','Neha Iyer','2024-09-13','Active','Office Staff','Absent','Personal Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(141,'000001','Logu NA','2024-09-14','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(142,'000002','Sathish NA','2024-09-14','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(143,'000003','Bose Raja','2024-09-14','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(144,'000004','Ashok M','2024-09-14','Active','Staff','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(145,'000005','Arjun Kumar','2024-09-14','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(146,'000006','Priya Sharma','2024-09-14','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(147,'000007','Kiran Verma','2024-09-14','Active','Production','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(148,'000008','Deepa Nair','2024-09-14','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(149,'000009','Ravi Patel','2024-09-14','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(150,'000010','Neha Iyer','2024-09-14','Active','Office Staff','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(151,'000001','Logu NA','2024-09-15','Active','Office Staff','Absent','Family Emergency','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(152,'000002','Sathish NA','2024-09-15','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(153,'000003','Bose Raja','2024-09-15','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(154,'000004','Ashok M','2024-09-15','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(155,'000005','Arjun Kumar','2024-09-15','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(156,'000006','Priya Sharma','2024-09-15','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(157,'000007','Kiran Verma','2024-09-15','Active','Production','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(158,'000008','Deepa Nair','2024-09-15','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(159,'000009','Ravi Patel','2024-09-15','Active','Sales','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(160,'000010','Neha Iyer','2024-09-15','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(161,'000001','Logu NA','2024-09-16','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(162,'000002','Sathish NA','2024-09-16','Active','Office Staff','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(163,'000003','Bose Raja','2024-09-16','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(164,'000004','Ashok M','2024-09-16','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(165,'000005','Arjun Kumar','2024-09-16','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(166,'000006','Priya Sharma','2024-09-16','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(167,'000007','Kiran Verma','2024-09-16','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(168,'000008','Deepa Nair','2024-09-16','Active','Staff','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(169,'000009','Ravi Patel','2024-09-16','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(170,'000010','Neha Iyer','2024-09-16','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(171,'000001','Logu NA','2024-09-17','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(172,'000002','Sathish NA','2024-09-17','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(173,'000003','Bose Raja','2024-09-17','Active','Office Staff','Absent','Personal Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(174,'000004','Ashok M','2024-09-17','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(175,'000005','Arjun Kumar','2024-09-17','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(176,'000006','Priya Sharma','2024-09-17','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(177,'000007','Kiran Verma','2024-09-17','Active','Production','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(178,'000008','Deepa Nair','2024-09-17','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(179,'000009','Ravi Patel','2024-09-17','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(180,'000010','Neha Iyer','2024-09-17','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(181,'000001','Logu NA','2024-09-18','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(182,'000002','Sathish NA','2024-09-18','Active','Office Staff','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(183,'000003','Bose Raja','2024-09-18','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(184,'000004','Ashok M','2024-09-18','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(185,'000005','Arjun Kumar','2024-09-18','Active','Sales','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(186,'000006','Priya Sharma','2024-09-18','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(187,'000007','Kiran Verma','2024-09-18','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(188,'000008','Deepa Nair','2024-09-18','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(189,'000009','Ravi Patel','2024-09-18','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(190,'000010','Neha Iyer','2024-09-18','Active','Office Staff','Absent','Family Emergency','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(191,'000001','Logu NA','2024-09-19','Active','Office Staff','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(192,'000002','Sathish NA','2024-09-19','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(193,'000003','Bose Raja','2024-09-19','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(194,'000004','Ashok M','2024-09-19','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(195,'000005','Arjun Kumar','2024-09-19','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(196,'000006','Priya Sharma','2024-09-19','Active','Office Staff','Absent','Personal Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(197,'000007','Kiran Verma','2024-09-19','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(198,'000008','Deepa Nair','2024-09-19','Active','Staff','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(199,'000009','Ravi Patel','2024-09-19','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(200,'000010','Neha Iyer','2024-09-19','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(201,'000001','Logu NA','2024-09-20','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(202,'000002','Sathish NA','2024-09-20','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(203,'000003','Bose Raja','2024-09-20','Active','Office Staff','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(204,'000004','Ashok M','2024-09-20','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(205,'000005','Arjun Kumar','2024-09-20','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(206,'000006','Priya Sharma','2024-09-20','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(207,'000007','Kiran Verma','2024-09-20','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(208,'000008','Deepa Nair','2024-09-20','Active','Staff','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(209,'000009','Ravi Patel','2024-09-20','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(210,'000010','Neha Iyer','2024-09-20','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(211,'000001','Logu NA','2024-09-21','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(212,'000002','Sathish NA','2024-09-21','Active','Office Staff','Absent','Family Emergency','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(213,'000003','Bose Raja','2024-09-21','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(214,'000004','Ashok M','2024-09-21','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(215,'000005','Arjun Kumar','2024-09-21','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(216,'000006','Priya Sharma','2024-09-21','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(217,'000007','Kiran Verma','2024-09-21','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(218,'000008','Deepa Nair','2024-09-21','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(219,'000009','Ravi Patel','2024-09-21','Active','Sales','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(220,'000010','Neha Iyer','2024-09-21','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(221,'000001','Logu NA','2024-09-22','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(222,'000002','Sathish NA','2024-09-22','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(223,'000003','Bose Raja','2024-09-22','Active','Office Staff','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(224,'000004','Ashok M','2024-09-22','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(225,'000005','Arjun Kumar','2024-09-22','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(226,'000006','Priya Sharma','2024-09-22','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(227,'000007','Kiran Verma','2024-09-22','Active','Production','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(228,'000008','Deepa Nair','2024-09-22','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(229,'000009','Ravi Patel','2024-09-22','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(230,'000010','Neha Iyer','2024-09-22','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(231,'000001','Logu NA','2024-09-23','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(232,'000002','Sathish NA','2024-09-23','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(233,'000003','Bose Raja','2024-09-23','Active','Office Staff','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(234,'000004','Ashok M','2024-09-23','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(235,'000005','Arjun Kumar','2024-09-23','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(236,'000006','Priya Sharma','2024-09-23','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(237,'000007','Kiran Verma','2024-09-23','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(238,'000008','Deepa Nair','2024-09-23','Active','Staff','Absent','Family Emergency','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(239,'000009','Ravi Patel','2024-09-23','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(240,'000010','Neha Iyer','2024-09-23','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(241,'000001','Logu NA','2024-09-24','Active','Office Staff','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(242,'000002','Sathish NA','2024-09-24','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(243,'000003','Bose Raja','2024-09-24','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(244,'000004','Ashok M','2024-09-24','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(245,'000005','Arjun Kumar','2024-09-24','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(246,'000006','Priya Sharma','2024-09-24','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(247,'000007','Kiran Verma','2024-09-24','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(248,'000008','Deepa Nair','2024-09-24','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(249,'000009','Ravi Patel','2024-09-24','Active','Sales','Absent','Personal Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(250,'000010','Neha Iyer','2024-09-24','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(251,'000001','Logu NA','2024-09-25','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(252,'000002','Sathish NA','2024-09-25','Active','Office Staff','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(253,'000003','Bose Raja','2024-09-25','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(254,'000004','Ashok M','2024-09-25','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(255,'000005','Arjun Kumar','2024-09-25','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(256,'000006','Priya Sharma','2024-09-25','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(257,'000007','Kiran Verma','2024-09-25','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(258,'000008','Deepa Nair','2024-09-25','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(259,'000009','Ravi Patel','2024-09-25','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(260,'000010','Neha Iyer','2024-09-25','Active','Office Staff','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(261,'000001','Logu NA','2024-09-26','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(262,'000002','Sathish NA','2024-09-26','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(263,'000003','Bose Raja','2024-09-26','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(264,'000004','Ashok M','2024-09-26','Active','Staff','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(265,'000005','Arjun Kumar','2024-09-26','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(266,'000006','Priya Sharma','2024-09-26','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(267,'000007','Kiran Verma','2024-09-26','Active','Production','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(268,'000008','Deepa Nair','2024-09-26','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(269,'000009','Ravi Patel','2024-09-26','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(270,'000010','Neha Iyer','2024-09-26','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(271,'000001','Logu NA','2024-09-27','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(272,'000002','Sathish NA','2024-09-27','Active','Office Staff','Absent','Medical','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(273,'000003','Bose Raja','2024-09-27','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(274,'000004','Ashok M','2024-09-27','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(275,'000005','Arjun Kumar','2024-09-27','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(276,'000006','Priya Sharma','2024-09-27','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(277,'000007','Kiran Verma','2024-09-27','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(278,'000008','Deepa Nair','2024-09-27','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(279,'000009','Ravi Patel','2024-09-27','Active','Sales','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(280,'000010','Neha Iyer','2024-09-27','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(281,'000001','Logu NA','2024-09-28','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(282,'000002','Sathish NA','2024-09-28','Active','Office Staff','Absent','Family Emergency','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(283,'000003','Bose Raja','2024-09-28','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(284,'000004','Ashok M','2024-09-28','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(285,'000005','Arjun Kumar','2024-09-28','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(286,'000006','Priya Sharma','2024-09-28','Active','Office Staff','Absent','Sick Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(287,'000007','Kiran Verma','2024-09-28','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(288,'000008','Deepa Nair','2024-09-28','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(289,'000009','Ravi Patel','2024-09-28','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(290,'000010','Neha Iyer','2024-09-28','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(291,'000001','Logu NA','2024-09-29','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(292,'000002','Sathish NA','2024-09-29','Active','Office Staff','Absent','Personal Leave','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(293,'000003','Bose Raja','2024-09-29','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(294,'000004','Ashok M','2024-09-29','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(295,'000005','Arjun Kumar','2024-09-29','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(296,'000006','Priya Sharma','2024-09-29','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(297,'000007','Kiran Verma','2024-09-29','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(298,'000008','Deepa Nair','2024-09-29','Active','Staff','Absent','Family Emergency','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(299,'000009','Ravi Patel','2024-09-29','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(300,'000010','Neha Iyer','2024-09-29','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(301,'000001','Logu NA','2024-09-30','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(302,'000002','Sathish NA','2024-09-30','Active','Office Staff','Absent','Vacation','Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(303,'000003','Bose Raja','2024-09-30','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(304,'000004','Ashok M','2024-09-30','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(305,'000005','Arjun Kumar','2024-09-30','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(306,'000006','Priya Sharma','2024-09-30','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(307,'000007','Kiran Verma','2024-09-30','Active','Production','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(308,'000008','Deepa Nair','2024-09-30','Active','Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(309,'000009','Ravi Patel','2024-09-30','Active','Sales','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(310,'000010','Neha Iyer','2024-09-30','Active','Office Staff','Present',NULL,'Logu','2024-10-16 14:11:30',NULL,NULL,NULL,NULL),(311,'000001','Logu NA','2024-12-03','Active','Office Staff','CL','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(312,'000002','Sathish NA','2024-12-03','Active','Office Staff','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(313,'000003','Bose Raja','2024-12-03','Active','Office Staff','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(314,'000004','Ashok M','2024-12-03','Active','Staff','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(315,'000005','Arjun Kumar','2024-12-03','Active','Sales','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(316,'000006','Priya Sharma','2024-12-03','Active','Office Staff','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(317,'000007','Kiran Verma','2024-12-03','Active','Production','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(318,'000008','Deepa Nair','2024-12-03','Active','Staff','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(319,'000009','Ravi Patel','2024-12-03','Active','Sales','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(320,'000010','Neha Iyer','2024-12-03','Active','Office Staff','N/A','',NULL,'2024-12-03 07:21:11',NULL,NULL,NULL,NULL),(321,'000001','Logu NA','2024-12-03','Active','Office Staff','Comp Off','',NULL,'2024-12-03 07:35:12',NULL,NULL,'2024-12-20','2024-12-03'),(322,'000002','Sathish NA','2024-12-03','Active','Office Staff',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(323,'000003','Bose Raja','2024-12-03','Active','Office Staff',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(324,'000004','Ashok M','2024-12-03','Active','Staff',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(325,'000005','Arjun Kumar','2024-12-03','Active','Sales',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(326,'000006','Priya Sharma','2024-12-03','Active','Office Staff',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(327,'000007','Kiran Verma','2024-12-03','Active','Production',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(328,'000008','Deepa Nair','2024-12-03','Active','Staff',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(329,'000009','Ravi Patel','2024-12-03','Active','Sales',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(330,'000010','Neha Iyer','2024-12-03','Active','Office Staff',NULL,'',NULL,'2024-12-03 07:35:12',NULL,NULL,NULL,NULL),(331,'000001','Logu NA','2024-12-03','Active','Office Staff','CL','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(332,'000002','Sathish NA','2024-12-03','Active','Office Staff','CL','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(333,'000003','Bose Raja','2024-12-03','Active','Office Staff','CL','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(334,'000004','Ashok M','2024-12-03','Active','Staff','CL','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(335,'000005','Arjun Kumar','2024-12-03','Active','Sales','PL','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(336,'000006','Priya Sharma','2024-12-03','Active','Office Staff','ML','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(337,'000007','Kiran Verma','2024-12-03','Active','Production','CL','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(338,'000008','Deepa Nair','2024-12-03','Active','Staff','CL','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(339,'000009','Ravi Patel','2024-12-03','Active','Sales','CL','',NULL,'2024-12-03 07:37:52',NULL,NULL,NULL,NULL),(340,'000010','Neha Iyer','2024-12-03','Active','Office Staff','Comp Off','',NULL,'2024-12-03 07:37:52',NULL,NULL,'2024-12-28','2024-12-03'),(341,'000001','Logu NA','2024-12-15','Active','Office Staff','CL','',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(342,'000002','Sathish NA','2024-12-15','Active','Office Staff','PL','',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(343,'000003','Bose Raja','2024-12-15','Active','Office Staff','CL','',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(344,'000004','Ashok M','2024-12-15','Active','Staff',NULL,'',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(345,'000005','Arjun Kumar','2024-12-15','Active','Sales',NULL,'',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(346,'000006','Priya Sharma','2024-12-15','Active','Office Staff',NULL,'',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(347,'000007','Kiran Verma','2024-12-15','Active','Production',NULL,'',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(348,'000008','Deepa Nair','2024-12-15','Active','Staff',NULL,'',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(349,'000009','Ravi Patel','2024-12-15','Active','Sales',NULL,'',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL),(350,'000010','Neha Iyer','2024-12-15','Active','Office Staff',NULL,'',NULL,'2024-12-15 07:14:06',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bankdetails`
--

DROP TABLE IF EXISTS `bankdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bankdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bank_id` varchar(50) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `ifsc_code` varchar(50) NOT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `createdBy` varchar(50) NOT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bankdetails`
--

LOCK TABLES `bankdetails` WRITE;
/*!40000 ALTER TABLE `bankdetails` DISABLE KEYS */;
INSERT INTO `bankdetails` VALUES (1,'Bank1','Canara Bank','CNRB0001540','Viruveedu','Active','Logu','2024-10-15 12:53:36','Logu','2024-10-15 12:56:43'),(2,'Bank2','Indian Bank','IDIDU0987U','Usilampatti','Active','Logu','2024-10-15 15:13:25',NULL,NULL),(3,'Bank3','Canara Bank','CNRB0001541','Usilampatti','Active','Logu','2024-11-27 02:30:15',NULL,NULL);
/*!40000 ALTER TABLE `bankdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloodgroup`
--

DROP TABLE IF EXISTS `bloodgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloodgroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bloodgroup_code` varchar(50) NOT NULL,
  `bloodgroup` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `createdBy` varchar(50) NOT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloodgroup`
--

LOCK TABLES `bloodgroup` WRITE;
/*!40000 ALTER TABLE `bloodgroup` DISABLE KEYS */;
INSERT INTO `bloodgroup` VALUES (1,'B1','A+','Active','Logu','2024-11-11 10:46:49',NULL,'2024-11-11 10:46:49'),(2,'B2','O+','Active','Logu','2024-11-11 10:47:58',NULL,'2024-11-11 10:47:58'),(3,'B3','B-','Active','Logu','2024-11-18 13:17:39',NULL,'2024-11-18 13:17:39');
/*!40000 ALTER TABLE `bloodgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bulkupload`
--

DROP TABLE IF EXISTS `bulkupload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulkupload` (
  `id` int NOT NULL AUTO_INCREMENT,
  `column1` varchar(255) NOT NULL,
  `column2` int NOT NULL,
  `column3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulkupload`
--

LOCK TABLES `bulkupload` WRITE;
/*!40000 ALTER TABLE `bulkupload` DISABLE KEYS */;
INSERT INTO `bulkupload` VALUES (1,'Alice',25,'alice@email.com'),(2,'Bob',30,'bob@email.com'),(3,'Charlie',28,'charlie@email.com'),(4,'Alice',25,'alice@email.com'),(5,'Bob',30,'bob@email.com'),(6,'Charlie',28,'charlie@email.com');
/*!40000 ALTER TABLE `bulkupload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Ccode` varchar(50) NOT NULL,
  `Cname` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (5,'1','Dindigul','Active'),(6,'3','Madurai','Active'),(7,'c1','Theni','Inactive'),(8,'c2','Sivagangai','Active'),(9,'c3','Chennai','Active'),(15,'C1','Madurai','Active');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companydetails`
--

DROP TABLE IF EXISTS `companydetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companydetails` (
  `CompanyID` int NOT NULL AUTO_INCREMENT,
  `CompanyName` text NOT NULL,
  `Address` text NOT NULL,
  `State` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Pincode` varchar(20) NOT NULL,
  `Logopath` varchar(255) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companydetails`
--

LOCK TABLES `companydetails` WRITE;
/*!40000 ALTER TABLE `companydetails` DISABLE KEYS */;
INSERT INTO `companydetails` VALUES (1,'Myntra Constructions','1st west street, Batlagundu','Tamilnadu','Dindigul','654342','/uploads/companydetails/1728399679854.jpg','Logu','2024-10-08 15:01:19',NULL,NULL);
/*!40000 ALTER TABLE `companydetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `COcode` varchar(50) NOT NULL,
  `COname` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'co1','India','Inactive'),(2,'co2','Australia','Active'),(3,'co3','ddwdw','Active'),(4,'1','wdwdwd','Active');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deleted_education_details`
--

DROP TABLE IF EXISTS `deleted_education_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deleted_education_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `education_id` int DEFAULT NULL,
  `empCode` varchar(50) DEFAULT NULL,
  `education_name` varchar(50) DEFAULT NULL,
  `education_file` varchar(50) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deleted_education_details`
--

LOCK TABLES `deleted_education_details` WRITE;
/*!40000 ALTER TABLE `deleted_education_details` DISABLE KEYS */;
INSERT INTO `deleted_education_details` VALUES (1,1,'000001','SSLC','uploads\\1728310926399.png','2024-10-07 14:22:58'),(2,2,'000001','HSC','uploads\\1728310926453.jpg','2024-10-07 14:22:58'),(3,3,'000001','Degree','uploads\\1728310926455.jpg','2024-10-07 14:22:58'),(4,4,'000001','SSLC','uploads\\1728311154030.jpg','2024-10-07 14:30:11'),(5,5,'000001','HSC','uploads\\1728311154033.png','2024-10-07 14:30:11');
/*!40000 ALTER TABLE `deleted_education_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `dep_id` int NOT NULL AUTO_INCREMENT,
  `DepName` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Office Staff','Active'),(2,'Sales','Active'),(3,'Manufacturing / Production','Active'),(4,'Staff','Active');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `designations` (
  `des_id` int NOT NULL AUTO_INCREMENT,
  `DesName` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`des_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
INSERT INTO `designations` VALUES (1,'CPA','Active'),(2,'Accountant','Active');
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_details`
--

DROP TABLE IF EXISTS `education_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_details` (
  `education_id` int NOT NULL AUTO_INCREMENT,
  `empCode` varchar(50) DEFAULT NULL,
  `education_name` varchar(50) DEFAULT NULL,
  `education_file` varchar(50) DEFAULT NULL,
  `createdBy` varchar(50) DEFAULT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_details`
--

LOCK TABLES `education_details` WRITE;
/*!40000 ALTER TABLE `education_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_details` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empCode` varchar(6) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `doj` date NOT NULL,
  `role_id` int NOT NULL,
  `employee_role` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `photo` varchar(255) DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `department` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `employees_ibfk_1` (`role_id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'000001','Logu','NA','NA','NA','Male','logu@gmail.com','1980-01-01','2024-10-13',1,'Super Admin','Logu@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(2,'000002','Sathish','NA','NA','NA','Male','sathish@gmail.com','1990-05-15','2024-10-13',2,'Admin','Sathish@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(3,'000003','Bose','Raja','NA','NA','Male','bose@gmail.com','1995-08-22','2024-10-13',2,'Admin','bose@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(4,'000004','Ashok','M','Manavalan G','Maheswari M','Male','ashok1363@gmail.com','2004-11-04','2024-10-13',3,'Employee','Ashok@540','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(5,'000005','Arjun','Kumar','Raghav','Lakshmi','Male','arjun@gmail.com','1985-02-12','2024-10-13',2,'Admin','Arjun@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(6,'000006','Priya','Sharma','Vikram','Anjali','Female','priya@gmail.com','1992-07-30','2024-10-13',2,'Admin','Priya@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(7,'000007','Kiran','Verma','Suresh','Suman','Male','kiran@gmail.com','1988-03-20','2024-10-13',3,'Employee','Kiran@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(8,'000008','Deepa','Nair','Rajesh','Neeta','Female','deepa@gmail.com','1993-10-11','2024-10-13',3,'Employee','Deepa@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(9,'000009','Ravi','Patel','Mohan','Rekha','Male','ravi@gmail.com','1984-04-22','2024-10-13',1,'Super Admin','Ravi@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(10,'000010','Neha','Iyer','Srinivas','Radha','Female','neha@gmail.com','1991-12-09','2024-10-13',2,'Admin','Neha@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(11,'000011','Suresh','Singh','Ajay','Pooja','Male','suresh@gmail.com','1996-01-01','2024-10-13',3,'Employee','Suresh@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(12,'000012','Anita','Gupta','Ramesh','Kavita','Female','anita@gmail.com','1987-08-15','2024-10-13',3,'Employee','Anita@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(13,'000013','Vikram','Chaudhary','Ram','Sita','Male','vikram@gmail.com','1982-11-25','2024-10-13',2,'Admin','Vikram@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(14,'000014','Pooja','Khan','Farhan','Alia','Female','pooja@gmail.com','1994-05-05','2024-10-13',1,'Super Admin','Pooja@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(15,'000015','Ajay','Soni','Karan','Mina','Male','ajay@gmail.com','1989-06-18','2024-10-13',2,'Admin','Ajay@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(16,'000016','Suman','Bansal','Dev','Anita','Female','suman@gmail.com','1995-09-30','2024-10-13',3,'Employee','Suman@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(17,'000017','Rakesh','Joshi','Raj','Kiran','Male','rakesh@gmail.com','1986-03-12','2024-10-13',1,'Super Admin','Rakesh@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(18,'000018','Kavita','Mehta','Sanjay','Seema','Female','kavita@gmail.com','1990-07-24','2024-10-13',2,'Admin','Kavita@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(19,'000019','Nitin','Bhatia','Rohan','Nisha','Male','nitin@gmail.com','1981-10-14','2024-10-13',3,'Employee','Nitin@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(20,'000020','Sonali','Deshmukh','Vinod','Aditi','Female','sonali@gmail.com','1992-01-02','2024-10-13',3,'Employee','Sonali@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(21,'000021','Rahul','Kumar','Ravi','Gita','Male','rahul@gmail.com','1983-08-21','2024-10-13',2,'Admin','Rahul@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(22,'000022','Tanvi','Shah','Amit','Riya','Female','tanvi@gmail.com','1994-04-15','2024-10-13',1,'Super Admin','Tanvi@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(23,'000023','Rohit','Tiwari','Anil','Sonam','Male','rohit@gmail.com','1991-05-29','2024-10-13',2,'Admin','Rohit@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(24,'000024','Meera','Kaur','Jasbir','Maya','Female','meera@gmail.com','1988-09-03','2024-10-13',3,'Employee','Meera@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(25,'000025','Vivek','Nanda','Rajesh','Madhuri','Male','vivek@gmail.com','1987-11-10','2024-10-13',3,'Employee','Vivek@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(26,'000026','Ritika','Khan','Firoz','Shabnam','Female','ritika@gmail.com','1993-12-12','2024-10-13',2,'Admin','Ritika@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(27,'000027','Sanjay','Bhardwaj','Gopal','Kamla','Male','sanjay@gmail.com','1980-02-22','2024-10-13',1,'Super Admin','Sanjay@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(28,'000028','Aditi','Nair','Rajendra','Suman','Female','aditi@gmail.com','1995-06-27','2024-10-13',2,'Admin','Aditi@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(29,'000029','Dev','Sharma','Arjun','Lakshmi','Male','dev@gmail.com','1985-03-30','2024-10-13',3,'Employee','Dev@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(30,'000030','Neelam','Yadav','Nitin','Saraswati','Female','neelam@gmail.com','1990-08-14','2024-10-13',3,'Employee','Neelam@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(98,'000031','Amit','Kumar','Ravi','Suman','Male','amit.kumar@gmail.com','1992-05-20','2024-10-12',3,'Employee','Amit@001','Active',NULL,'Logu','2024-10-12 14:30:00',NULL,'2024-11-21 14:19:25','Staff'),(99,'000032','Pooja','Sharma','Ramesh','Geeta','Female','pooja.sharma@gmail.com','1989-11-22','2024-10-13',2,'Manager','Pooja@001','Active',NULL,'Logu','2024-10-13 14:35:00',NULL,'2024-11-21 14:19:25','Staff'),(100,'000033','Raj','Singh','Mohan','Neelam','Male','raj.singh@gmail.com','1994-02-10','2024-10-14',3,'Employee','Raj@001','Active',NULL,'Logu','2024-10-14 14:40:00',NULL,'2024-11-21 14:19:25','Staff'),(101,'000034','Sita','Verma','Hari','Sunita','Female','sita.verma@gmail.com','1993-03-15','2024-10-11',3,'Employee','Sita@001','Active',NULL,'Logu','2024-10-11 14:50:00',NULL,'2024-11-21 14:19:25','Staff'),(102,'000035','Vikas','Yadav','Kailash','Savita','Male','vikas.yadav@gmail.com','1991-07-28','2024-10-09',2,'Manager','Vikas@001','Active',NULL,'Logu','2024-10-09 14:55:00',NULL,'2024-11-21 14:19:25','Staff'),(103,'000036','Anjali','Mehra','Vijay','Kamla','Female','anjali.mehra@gmail.com','1995-01-01','2024-10-08',3,'Employee','Anjali@001','Inactive',NULL,'Logu','2024-10-08 15:00:00',NULL,'2024-11-21 14:19:25','Staff'),(104,'000037','Rahul','Gupta','Suresh','Rekha','Male','rahul.gupta@gmail.com','1990-09-25','2024-10-07',1,'Admin','Rahul@001','Active',NULL,'Logu','2024-10-07 15:05:00',NULL,'2024-11-21 14:19:25','Staff'),(105,'000038','Priya','Reddy','Venkatesh','Laxmi','Female','priya.reddy@gmail.com','1992-08-30','2024-10-06',3,'Employee','Priya@001','Active',NULL,'Logu','2024-10-06 15:10:00',NULL,'2024-11-21 14:19:25','Staff'),(106,'000039','Arvind','Patel','Chandrakant','Urmila','Male','arvind.patel@gmail.com','1990-06-12','2024-10-05',3,'Employee','Arvind@001','Active',NULL,'Logu','2024-10-05 15:15:00',NULL,'2024-11-21 14:19:25','Staff'),(107,'000040','Neha','Gupta','Mahesh','Sushila','Female','neha.gupta@gmail.com','1996-04-11','2024-10-04',2,'Manager','Neha@001','Inactive',NULL,'Logu','2024-10-04 15:20:00',NULL,'2024-11-21 14:19:25','Staff'),(108,'000041','Suresh','Kumar','Harish','Anjali','Male','suresh.kumar@gmail.com','1991-12-20','2024-10-03',3,'Employee','Suresh@001','Active',NULL,'Logu','2024-10-03 15:25:00',NULL,'2024-11-21 14:19:25','Staff'),(109,'000042','Sneha','Patel','Kishore','Rina','Female','sneha.patel@gmail.com','1994-03-25','2024-10-02',3,'Employee','Sneha@001','Active',NULL,'Logu','2024-10-02 15:30:00',NULL,'2024-11-21 14:19:25','Staff'),(110,'000043','Vikram','Jain','Rajendra','Sarla','Male','vikram.jain@gmail.com','1992-10-17','2024-10-01',3,'Employee','Vikram@001','Active',NULL,'Logu','2024-10-01 15:35:00',NULL,'2024-11-21 14:19:25','Staff'),(111,'000044','Rina','Singh','Krishna','Radha','Female','rina.singh@gmail.com','1995-02-20','2024-09-30',2,'Manager','Rina@001','Active',NULL,'Logu','2024-09-30 15:40:00',NULL,'2024-11-21 14:19:25','Staff'),(112,'000045','Manoj','Yadav','Sushil','Savitri','Male','manoj.yadav@gmail.com','1993-11-18','2024-09-29',3,'Employee','Manoj@001','Active',NULL,'Logu','2024-09-29 15:45:00',NULL,'2024-11-21 14:19:25','Staff'),(113,'000046','Kavita','Sharma','Rajendra','Sunita','Female','kavita.sharma@gmail.com','1990-02-14','2024-09-28',3,'Employee','Kavita@001','Active',NULL,'Logu','2024-09-28 15:50:00',NULL,'2024-11-21 14:19:25','Staff'),(114,'000047','Deepak','Gupta','Suresh','Sushila','Male','deepak.gupta@gmail.com','1992-12-05','2024-09-27',3,'Employee','Deepak@001','Active',NULL,'Logu','2024-09-27 15:55:00',NULL,'2024-11-21 14:19:25','Staff'),(115,'000048','Simran','Kaur','Harvinder','Rajinder','Female','simran.kaur@gmail.com','1993-04-11','2024-09-26',2,'Manager','Simran@001','Active',NULL,'Logu','2024-09-26 16:00:00',NULL,'2024-11-21 14:19:25','Staff'),(116,'000049','Ravi','Sharma','Anil','Suman','Male','ravi.sharma@gmail.com','1995-07-22','2024-09-25',3,'Employee','Ravi@001','Active',NULL,'Logu','2024-09-25 16:05:00',NULL,'2024-11-21 14:19:25','Staff'),(117,'000050','Guest','Singh','Gopal','Indu','Female','anu.singh@gmail.com','1996-09-16','2024-09-24',3,'Employee','Guest@001','Active',NULL,'Logu','2024-09-24 16:10:00',NULL,'2025-01-08 05:18:19','Staff');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `photo_1` varchar(255) DEFAULT NULL,
  `photo_2` varchar(255) DEFAULT NULL,
  `photo_3` varchar(255) DEFAULT NULL,
  `photo_4` varchar(255) DEFAULT NULL,
  `photo_5` varchar(255) DEFAULT NULL,
  `photo_6` varchar(255) DEFAULT NULL,
  `photo_7` varchar(255) DEFAULT NULL,
  `photo_8` varchar(255) DEFAULT NULL,
  `photo_9` varchar(255) DEFAULT NULL,
  `photo_10` varchar(255) DEFAULT NULL,
  `photo_11` varchar(255) DEFAULT NULL,
  `photo_12` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Annual Day','2023-10-11','/uploads/events/1731843873267-956600534.jpg','/uploads/events/1731829702750-391534711.jpg','/uploads/events/1731829903277-291623088.jpg','/uploads/events/1731494068891-811821995.jpg','/uploads/events/1731419936083.jpg','/uploads/events/1731419936085.jpg','/uploads/events/1731419936086.jpg','/uploads/events/1731419936091.jpg','/uploads/events/1731419936092.jpg','/uploads/events/1731419936094.jpg','/uploads/events/1731419936094.jpg','/uploads/events/1731419936101.jpg'),(2,'Sports Day','2024-11-30','/uploads/events/1731938929964-802104383.jpg','/uploads/events/1731845462275.jpg','/uploads/events/1731845462275.jpg','/uploads/events/1731845462276.jpg','/uploads/events/1731845462278.jpg','/uploads/events/1731845462278.jpg','/uploads/events/1731845462279.jpg','/uploads/events/1731845462280.jpg','/uploads/events/1731845462280.jpg','/uploads/events/1731845462282.jpg','/uploads/events/1731845462283.jpg','/uploads/events/1731845462285.jpg');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_details`
--

DROP TABLE IF EXISTS `family_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `emp_id` int DEFAULT NULL,
  `empCode` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `age` int NOT NULL,
  `occupation` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `family_details_ibfk_1` (`emp_id`),
  CONSTRAINT `family_details_ibfk_1` FOREIGN KEY (`emp_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_details`
--

LOCK TABLES `family_details` WRITE;
/*!40000 ALTER TABLE `family_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `family_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `mimetype` varchar(100) NOT NULL,
  `path` varchar(255) NOT NULL,
  `empCode` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender_info`
--

DROP TABLE IF EXISTS `gender_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gender_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Gname` varchar(50) NOT NULL,
  `Gcode` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender_info`
--

LOCK TABLES `gender_info` WRITE;
/*!40000 ALTER TABLE `gender_info` DISABLE KEYS */;
INSERT INTO `gender_info` VALUES (1,'Male','G1','Active'),(3,'Others','G3','Active'),(4,'Female','G2','Active');
/*!40000 ALTER TABLE `gender_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gstdetails`
--

DROP TABLE IF EXISTS `gstdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gstdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gst_id` varchar(50) NOT NULL,
  `gst_no` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `createdBy` varchar(50) NOT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gstdetails`
--

LOCK TABLES `gstdetails` WRITE;
/*!40000 ALTER TABLE `gstdetails` DISABLE KEYS */;
INSERT INTO `gstdetails` VALUES (1,'GST1','0129300102','Active','Ashok','2024-09-22 15:17:36',NULL,NULL),(2,'GST2','0129300103','Active','Ashok','2024-09-22 15:18:21','Ashok','2024-09-22 15:18:37'),(3,'GST3','0129300104','Active','Logu','2024-11-27 02:50:25',NULL,NULL);
/*!40000 ALTER TABLE `gstdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leavetype`
--

DROP TABLE IF EXISTS `leavetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leavetype` (
  `id` int NOT NULL AUTO_INCREMENT,
  `leave_code` varchar(50) NOT NULL,
  `leave_reason` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `createdBy` varchar(50) NOT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `leave_count` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leavetype`
--

LOCK TABLES `leavetype` WRITE;
/*!40000 ALTER TABLE `leavetype` DISABLE KEYS */;
INSERT INTO `leavetype` VALUES (1,'CL','Casual Leave','Active','Logu','2024-12-03 02:15:40',NULL,'2024-12-03 02:15:40',6),(2,'PL','Paid Leave','Active','Logu','2024-12-03 02:15:58',NULL,'2024-12-03 02:15:58',12),(3,'ML','Medical Leave','Active','Logu','2024-12-03 02:16:12',NULL,'2024-12-03 02:16:12',6),(4,'Comp Off','Comp Off','Active','Logu','2024-12-03 02:16:31',NULL,'2024-12-03 02:16:31',0);
/*!40000 ALTER TABLE `leavetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'Master Page','#',0,1),(2,'Gender','/gender',1,2),(3,'City','/city',1,2),(4,'State','/state',1,2),(5,'Country','/country',1,2),(6,'Role','/role',1,2),(7,'Designation','/designation',1,2),(8,'Department','/department',1,2),(9,'Employee Details','#',0,1),(10,'Employee Form','/empform',9,2),(11,'Employee List','/employeedetails',9,2),(12,'Family Creation','/famcreation',9,2),(13,'Family Details','/famdetails',9,2),(14,'Report','#',0,1),(15,'Emp Attendance','/empattendance',14,2),(16,'Emp Salary','/empsalary',14,2),(17,'Logout','/logout',0,1),(18,'Bank Details','/bankdetails',9,2),(19,'PF Details','/pfdetails',9,2),(20,'GST Details','/gstdetails',9,2),(21,'Gallery','/gallery',1,2),(22,'Display Gallery','/displaygallery',1,2),(23,'Education Details','/educationdetails',1,2),(24,'Company Details','/companydetails',1,2),(25,'Salary Basic Details','/salarybasics',1,2),(26,'Emp Salary Generation','/empsalarygeneration',9,2),(27,'Blood Group','/bloodgroup',1,2),(28,'Leave Type','/leavetype',1,2),(29,'Youtube Video','/video',1,2),(30,'Email','/email',1,2),(31,'Whatsapp','/whatsapp',1,2),(32,'Bulk Upload','/bulkUpload',1,2);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pfdetails`
--

DROP TABLE IF EXISTS `pfdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pfdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `epf_id` varchar(50) NOT NULL,
  `epf_no` varchar(50) NOT NULL,
  `esi_no` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `createdBy` varchar(50) NOT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedBy` varchar(50) DEFAULT NULL,
  `modifiedDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pfdetails`
--

LOCK TABLES `pfdetails` WRITE;
/*!40000 ALTER TABLE `pfdetails` DISABLE KEYS */;
INSERT INTO `pfdetails` VALUES (1,'EPF1','0000000000','010101010','Active','Ashok','2024-09-22 13:14:27','Logu','2024-09-22 13:27:06'),(2,'EPF1','0000000000','0101010101','Inactive','Logu','2024-09-22 13:24:48','Logu','2024-09-22 13:26:45'),(3,'EPF3','0000000000','0101010101','Active','Logu','2024-11-27 02:36:10',NULL,NULL);
/*!40000 ALTER TABLE `pfdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_users`
--

DROP TABLE IF EXISTS `reg_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_code` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `role_code` (`role_code`),
  CONSTRAINT `reg_users_ibfk_1` FOREIGN KEY (`role_code`) REFERENCES `roles` (`Rcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_users`
--

LOCK TABLES `reg_users` WRITE;
/*!40000 ALTER TABLE `reg_users` DISABLE KEYS */;
INSERT INTO `reg_users` VALUES (1,'Ashok','Ashok1363.com@gmail.com','Ashok@540','R3','2024-09-20 06:23:47','2024-09-20 06:26:56'),(2,'Logu','Logu@gmail.com','Logu@001','R2','2024-09-20 06:26:35','2024-09-20 06:26:35');
/*!40000 ALTER TABLE `reg_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `Rcode` varchar(50) NOT NULL,
  `Rname` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `Rcode` (`Rcode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'R1','Super Admin','Active'),(2,'R2','Admin','Active'),(3,'R3','Employee','Active');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Scode` varchar(50) NOT NULL,
  `Sname` varchar(100) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'s1','Tamilnadu','Active'),(2,'s2','Rajasthan','Active'),(3,'s3','Delhi','Active'),(4,'s4','Andhra Pradesh','Active');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender_code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `EmpId` int NOT NULL,
  `EmpName` varchar(60) NOT NULL,
  `EmpEmail` varchar(45) NOT NULL,
  `EmpDept` varchar(45) NOT NULL,
  PRIMARY KEY (`EmpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ashok','Ashok1363.com@gmail.com','IT');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `video_url` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Introduction to HTML and CSS','In this video, you will learn the basics of HTML and CSS to create your first webpage.','https://www.youtube.com/embed/W6NZfCO5SIk?controls=0','2024-10-11'),(2,'Understanding JavaScript Fundamentals','This tutorial will walk you through the core concepts of JavaScript, including variables, functions, and loops.','https://www.youtube.com/embed/W6NZfCO5SIk?controls=0','2024-10-12'),(3,'Version Control with Git and GitHub','Learn how to use Git and GitHub for version control and collaboration in this step-by-step guide.','https://www.youtube.com/embed/W6NZfCO5SIk?controls=0','2024-10-13'),(4,'Building Web Applications with React','In this video, we will cover the fundamentals of building modern web applications using React.','https://www.youtube.com/embed/W6NZfCO5SIk?controls=0','2024-10-14');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-10 15:08:00
