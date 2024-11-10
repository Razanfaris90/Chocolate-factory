CREATE DATABASE  IF NOT EXISTS `chocolatefactory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `chocolatefactory`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: chocolatefactory
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `chocolateflavours`
--

DROP TABLE IF EXISTS `chocolateflavours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chocolateflavours` (
  `product_id` int DEFAULT NULL,
  `chocolate_flavour` varchar(50) DEFAULT NULL,
  KEY `fk_chocolate_product` (`product_id`),
  CONSTRAINT `fk_chocolate_product` FOREIGN KEY (`product_id`) REFERENCES `chocolateproduct` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chocolateflavours`
--

LOCK TABLES `chocolateflavours` WRITE;
/*!40000 ALTER TABLE `chocolateflavours` DISABLE KEYS */;
INSERT INTO `chocolateflavours` VALUES (1,'Dark'),(2,'Milk'),(3,'White'),(4,'Assorted'),(5,'Hazelnut'),(1,'Dark'),(2,'Milk'),(3,'White'),(4,'Assorted'),(5,'Hazelnut');
/*!40000 ALTER TABLE `chocolateflavours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chocolateproduct`
--

DROP TABLE IF EXISTS `chocolateproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chocolateproduct` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `packaging_id` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_packaging` (`packaging_id`),
  CONSTRAINT `fk_packaging` FOREIGN KEY (`packaging_id`) REFERENCES `packaging` (`packaging_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chocolateproduct`
--

LOCK TABLES `chocolateproduct` WRITE;
/*!40000 ALTER TABLE `chocolateproduct` DISABLE KEYS */;
INSERT INTO `chocolateproduct` VALUES (1,'Dark Chocolate Bar',1),(2,'Milk Chocolate Bar',1),(3,'White Chocolate Bar',1),(4,'Assorted Chocolates',2),(5,'Chocolate Spread',3);
/*!40000 ALTER TABLE `chocolateproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `driver_key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'John','Almalki','New York','1234'),(2,'Jane','Smith','Los Angeles','5678');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `ingredient_id` int NOT NULL,
  `ingredient_name` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Cocoa Powder',120),(2,'Sugar',200),(3,'Milk',150),(4,'Vanilla Extract',50);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packaging`
--

DROP TABLE IF EXISTS `packaging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packaging` (
  `packaging_id` int NOT NULL,
  `package_label` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`packaging_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packaging`
--

LOCK TABLES `packaging` WRITE;
/*!40000 ALTER TABLE `packaging` DISABLE KEYS */;
INSERT INTO `packaging` VALUES (1,'Box'),(2,'Wrapper'),(3,'Jar');
/*!40000 ALTER TABLE `packaging` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uses`
--

DROP TABLE IF EXISTS `uses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uses` (
  `ingredient_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`ingredient_id`,`product_id`),
  KEY `fk_product` (`product_id`),
  CONSTRAINT `fk_ingredient` FOREIGN KEY (`ingredient_id`) REFERENCES `ingredient` (`ingredient_id`),
  CONSTRAINT `fk_product` FOREIGN KEY (`product_id`) REFERENCES `chocolateproduct` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uses`
--

LOCK TABLES `uses` WRITE;
/*!40000 ALTER TABLE `uses` DISABLE KEYS */;
INSERT INTO `uses` VALUES (1,1),(2,2),(3,2),(4,3),(1,4),(2,4),(3,4),(4,4),(1,5),(2,5),(3,5);
/*!40000 ALTER TABLE `uses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-01 22:27:33
