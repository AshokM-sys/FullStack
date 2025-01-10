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
INSERT INTO `employees` VALUES (1,'000001','Logu','NA','NA','NA','Male','logu@gmail.com','1980-01-01','2024-10-13',1,'Super Admin','Logu@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(2,'000002','Sathish','NA','NA','NA','Male','sathish@gmail.com','1990-05-15','2024-10-13',2,'Admin','Sathish@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(3,'000003','Bose','Raja','NA','NA','Male','bose@gmail.com','1995-08-22','2024-10-13',2,'Admin','bose@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(4,'000004','Ashok','M','Manavalan G','Maheswari M','Male','ashok1363@gmail.com','2004-11-04','2024-10-13',3,'Employee','Ashok@540','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(5,'000005','Arjun','Kumar','Raghav','Lakshmi','Male','arjun@gmail.com','1985-02-12','2024-10-13',2,'Admin','Arjun@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(6,'000006','Priya','Sharma','Vikram','Anjali','Female','priya@gmail.com','1992-07-30','2024-10-13',2,'Admin','Priya@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(7,'000007','Kiran','Verma','Suresh','Suman','Male','kiran@gmail.com','1988-03-20','2024-10-13',3,'Employee','Kiran@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(8,'000008','Deepa','Nair','Rajesh','Neeta','Female','deepa@gmail.com','1993-10-11','2024-10-13',3,'Employee','Deepa@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(9,'000009','Ravi','Patel','Mohan','Rekha','Male','ravi@gmail.com','1984-04-22','2024-10-13',1,'Super Admin','Ravi@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(10,'000010','Neha','Iyer','Srinivas','Radha','Female','neha@gmail.com','1991-12-09','2024-10-13',2,'Admin','Neha@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(11,'000011','Suresh','Singh','Ajay','Pooja','Male','suresh@gmail.com','1996-01-01','2024-10-13',3,'Employee','Suresh@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(12,'000012','Anita','Gupta','Ramesh','Kavita','Female','anita@gmail.com','1987-08-15','2024-10-13',3,'Employee','Anita@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(13,'000013','Vikram','Chaudhary','Ram','Sita','Male','vikram@gmail.com','1982-11-25','2024-10-13',2,'Admin','Vikram@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(14,'000014','Pooja','Khan','Farhan','Alia','Female','pooja@gmail.com','1994-05-05','2024-10-13',1,'Super Admin','Pooja@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(15,'000015','Ajay','Soni','Karan','Mina','Male','ajay@gmail.com','1989-06-18','2024-10-13',2,'Admin','Ajay@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(16,'000016','Suman','Bansal','Dev','Anita','Female','suman@gmail.com','1995-09-30','2024-10-13',3,'Employee','Suman@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(17,'000017','Rakesh','Joshi','Raj','Kiran','Male','rakesh@gmail.com','1986-03-12','2024-10-13',1,'Super Admin','Rakesh@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(18,'000018','Kavita','Mehta','Sanjay','Seema','Female','kavita@gmail.com','1990-07-24','2024-10-13',2,'Admin','Kavita@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(19,'000019','Nitin','Bhatia','Rohan','Nisha','Male','nitin@gmail.com','1981-10-14','2024-10-13',3,'Employee','Nitin@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(20,'000020','Sonali','Deshmukh','Vinod','Aditi','Female','sonali@gmail.com','1992-01-02','2024-10-13',3,'Employee','Sonali@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(21,'000021','Rahul','Kumar','Ravi','Gita','Male','rahul@gmail.com','1983-08-21','2024-10-13',2,'Admin','Rahul@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(22,'000022','Tanvi','Shah','Amit','Riya','Female','tanvi@gmail.com','1994-04-15','2024-10-13',1,'Super Admin','Tanvi@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(23,'000023','Rohit','Tiwari','Anil','Sonam','Male','rohit@gmail.com','1991-05-29','2024-10-13',2,'Admin','Rohit@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(24,'000024','Meera','Kaur','Jasbir','Maya','Female','meera@gmail.com','1988-09-03','2024-10-13',3,'Employee','Meera@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(25,'000025','Vivek','Nanda','Rajesh','Madhuri','Male','vivek@gmail.com','1987-11-10','2024-10-13',3,'Employee','Vivek@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(26,'000026','Ritika','Khan','Firoz','Shabnam','Female','ritika@gmail.com','1993-12-12','2024-10-13',2,'Admin','Ritika@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(27,'000027','Sanjay','Bhardwaj','Gopal','Kamla','Male','sanjay@gmail.com','1980-02-22','2024-10-13',1,'Super Admin','Sanjay@001','Active',NULL,'Super Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Office Staff'),(28,'000028','Aditi','Nair','Rajendra','Suman','Female','aditi@gmail.com','1995-06-27','2024-10-13',2,'Admin','Aditi@001','Active',NULL,'Admin','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Production'),(29,'000029','Dev','Sharma','Arjun','Lakshmi','Male','dev@gmail.com','1985-03-30','2024-10-13',3,'Employee','Dev@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Sales'),(30,'000030','Neelam','Yadav','Nitin','Saraswati','Female','neelam@gmail.com','1990-08-14','2024-10-13',3,'Employee','Neelam@001','Active',NULL,'Employee','2024-10-13 14:46:28',NULL,'2024-10-13 14:52:29','Staff'),(98,'000031','Amit','Kumar','Ravi','Suman','Male','amit.kumar@gmail.com','1992-05-20','2024-10-12',3,'Employee','Amit@001','Active',NULL,'Logu','2024-10-12 14:30:00',NULL,'2024-11-21 14:19:25','Staff'),(99,'000032','Pooja','Sharma','Ramesh','Geeta','Female','pooja.sharma@gmail.com','1989-11-22','2024-10-13',2,'Manager','Pooja@001','Active',NULL,'Logu','2024-10-13 14:35:00',NULL,'2024-11-21 14:19:25','Staff'),(100,'000033','Raj','Singh','Mohan','Neelam','Male','raj.singh@gmail.com','1994-02-10','2024-10-14',3,'Employee','Raj@001','Active',NULL,'Logu','2024-10-14 14:40:00',NULL,'2024-11-21 14:19:25','Staff'),(101,'000034','Sita','Verma','Hari','Sunita','Female','sita.verma@gmail.com','1993-03-15','2024-10-11',3,'Employee','Sita@001','Active',NULL,'Logu','2024-10-11 14:50:00',NULL,'2024-11-21 14:19:25','Staff'),(102,'000035','Vikas','Yadav','Kailash','Savita','Male','vikas.yadav@gmail.com','1991-07-28','2024-10-09',2,'Manager','Vikas@001','Active',NULL,'Logu','2024-10-09 14:55:00',NULL,'2024-11-21 14:19:25','Staff'),(103,'000036','Anjali','Mehra','Vijay','Kamla','Female','anjali.mehra@gmail.com','1995-01-01','2024-10-08',3,'Employee','Anjali@001','Inactive',NULL,'Logu','2024-10-08 15:00:00',NULL,'2024-11-21 14:19:25','Staff'),(104,'000037','Rahul','Gupta','Suresh','Rekha','Male','rahul.gupta@gmail.com','1990-09-25','2024-10-07',1,'Admin','Rahul@001','Active',NULL,'Logu','2024-10-07 15:05:00',NULL,'2024-11-21 14:19:25','Staff'),(105,'000038','Priya','Reddy','Venkatesh','Laxmi','Female','priya.reddy@gmail.com','1992-08-30','2024-10-06',3,'Employee','Priya@001','Active',NULL,'Logu','2024-10-06 15:10:00',NULL,'2024-11-21 14:19:25','Staff'),(106,'000039','Arvind','Patel','Chandrakant','Urmila','Male','arvind.patel@gmail.com','1990-06-12','2024-10-05',3,'Employee','Arvind@001','Active',NULL,'Logu','2024-10-05 15:15:00',NULL,'2024-11-21 14:19:25','Staff'),(107,'000040','Neha','Gupta','Mahesh','Sushila','Female','neha.gupta@gmail.com','1996-04-11','2024-10-04',2,'Manager','Neha@001','Inactive',NULL,'Logu','2024-10-04 15:20:00',NULL,'2024-11-21 14:19:25','Staff'),(108,'000041','Suresh','Kumar','Harish','Anjali','Male','suresh.kumar@gmail.com','1991-12-20','2024-10-03',3,'Employee','Suresh@001','Active',NULL,'Logu','2024-10-03 15:25:00',NULL,'2024-11-21 14:19:25','Staff'),(109,'000042','Sneha','Patel','Kishore','Rina','Female','sneha.patel@gmail.com','1994-03-25','2024-10-02',3,'Employee','Sneha@001','Active',NULL,'Logu','2024-10-02 15:30:00',NULL,'2024-11-21 14:19:25','Staff'),(110,'000043','Vikram','Jain','Rajendra','Sarla','Male','vikram.jain@gmail.com','1992-10-17','2024-10-01',3,'Employee','Vikram@001','Active',NULL,'Logu','2024-10-01 15:35:00',NULL,'2024-11-21 14:19:25','Staff'),(111,'000044','Rina','Singh','Krishna','Radha','Female','rina.singh@gmail.com','1995-02-20','2024-09-30',2,'Manager','Rina@001','Active',NULL,'Logu','2024-09-30 15:40:00',NULL,'2024-11-21 14:19:25','Staff'),(112,'000045','Manoj','Yadav','Sushil','Savitri','Male','manoj.yadav@gmail.com','1993-11-18','2024-09-29',3,'Employee','Manoj@001','Active',NULL,'Logu','2024-09-29 15:45:00',NULL,'2024-11-21 14:19:25','Staff'),(113,'000046','Kavita','Sharma','Rajendra','Sunita','Female','kavita.sharma@gmail.com','1990-02-14','2024-09-28',3,'Employee','Kavita@001','Active',NULL,'Logu','2024-09-28 15:50:00',NULL,'2024-11-21 14:19:25','Staff'),(114,'000047','Deepak','Gupta','Suresh','Sushila','Male','deepak.gupta@gmail.com','1992-12-05','2024-09-27',3,'Employee','Deepak@001','Active',NULL,'Logu','2024-09-27 15:55:00',NULL,'2024-11-21 14:19:25','Staff'),(115,'000048','Simran','Kaur','Harvinder','Rajinder','Female','simran.kaur@gmail.com','1993-04-11','2024-09-26',2,'Manager','Simran@001','Active',NULL,'Logu','2024-09-26 16:00:00',NULL,'2024-11-21 14:19:25','Staff'),(116,'000049','Ravi','Sharma','Anil','Suman','Male','ravi.sharma@gmail.com','1995-07-22','2024-09-25',3,'Employee','Ravi@001','Active',NULL,'Logu','2024-09-25 16:05:00',NULL,'2024-11-21 14:19:25','Staff'),(117,'000050','Anu','Singh','Gopal','Indu','Female','anu.singh@gmail.com','1996-09-16','2024-09-24',3,'Employee','Anu@001','Active',NULL,'Logu','2024-09-24 16:10:00',NULL,'2024-11-21 14:19:25','Staff');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24 19:26:53
