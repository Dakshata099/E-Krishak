CREATE DATABASE  IF NOT EXISTS `ekrishak` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ekrishak`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ekrishak
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `farmer_details`
--

DROP TABLE IF EXISTS `farmer_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmer_details` (
  `id` int NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `f_locality` varchar(45) NOT NULL,
  `f_city` varchar(45) NOT NULL,
  `f_state` varchar(45) NOT NULL,
  `f_pincode` int NOT NULL,
  `f_email` varchar(45) DEFAULT NULL,
  `f_contact` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `f_contact_UNIQUE` (`f_contact`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Farmer Details are store in this table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmer_details`
--

LOCK TABLES `farmer_details` WRITE;
/*!40000 ALTER TABLE `farmer_details` DISABLE KEYS */;
INSERT INTO `farmer_details` VALUES (731,'Yash','Raj','akurdi','Bettiah','Bihar',823001,'yr@gmail.com','8654575758','123'),(1305,'abc','xyz','akurdi','pune','maharashtra',823001,'ag@gmail.com','8945684554','123'),(1478,'Ankit','Mishra','dgd','delhi','Delhi',5246,'am@gmail.com','8545458653','1234'),(2030,'naina','singh','dgd','Nashik','maharashtra',545415,'xyz@gmail.com','9876543210','123'),(2527,'Rohan','Deshmukh','Baramati','Baramati','Maharashtra',854533,'rd@gmail.com','9875456852','123'),(2720,'nutan','singh','Akurdi','pune','Maharashtra',54551,'ay@gmail.com','7894561523','123'),(2935,'Ankit','raj','akurdi','Patna','Bihar',856565,'ankit@gmail.com','8654568568','123'),(7845,'Sakshi','wagh','akurdi','PUNE','maharashtra',823001,'ag@gmail.com','9856321470','123'),(8195,'Satyam','Bansal','Nashik Town','Nashik','Maharashtra',423258,'sb@gmail.com','8548682936','123'),(8738,'abc','xyz','akurdi','Pune','Maharashtra',458548,'ab@gmail.com','8455514848','123'),(9223,'Shekhar','Kumar','Gaya','Gaya','Bihar',823001,'s.shekhar6057@gmail.com','8409394478','1234');
/*!40000 ALTER TABLE `farmer_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 15:16:02
