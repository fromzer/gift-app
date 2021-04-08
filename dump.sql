-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: gift_certificates
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `gift_certificate`
--

DROP TABLE IF EXISTS `gift_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_certificate` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` int NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT (now()),
  `last_update_date` timestamp NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_certificate`
--

LOCK TABLES `gift_certificate` WRITE;
/*!40000 ALTER TABLE `gift_certificate` DISABLE KEYS */;
INSERT INTO `gift_certificate` VALUES (1,'TestCertificate','TestCertificate Description',10.00,3,'2021-03-26 06:41:03','2021-03-26 06:41:03'),(2,'NewTestCertificate','No description',40.00,77,'2021-03-26 17:50:53','2021-04-04 15:50:25'),(3,'NewCerts','NewCertDescription',11.00,3,'2021-03-28 13:00:00','2021-03-28 13:00:00'),(6,'Shop','Hi hi hi',14.00,1,'2021-03-28 14:47:29','2021-03-28 14:47:29'),(7,'New Year','Hello!',110.00,4,'2021-03-28 14:50:55','2021-03-28 14:50:55'),(9,'Aplet','Description',17.00,1,'2021-03-30 12:02:04','2021-03-30 12:02:04'),(11,'New certificate name','New certificate description',12.13,1,'2021-04-04 15:50:25','2021-04-04 15:50:25');
/*!40000 ALTER TABLE `gift_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_certificate_tag`
--

DROP TABLE IF EXISTS `gift_certificate_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gift_certificate_tag` (
  `gift_certificate_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`tag_id`,`gift_certificate_id`),
  KEY `gift_certificate_tag_gift_certificate_id_fk` (`gift_certificate_id`),
  CONSTRAINT `gift_certificate_tag_gift_certificate_id_fk` FOREIGN KEY (`gift_certificate_id`) REFERENCES `gift_certificate` (`id`) ON DELETE CASCADE,
  CONSTRAINT `gift_certificate_tag_tag_id_fk` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_certificate_tag`
--

LOCK TABLES `gift_certificate_tag` WRITE;
/*!40000 ALTER TABLE `gift_certificate_tag` DISABLE KEYS */;
INSERT INTO `gift_certificate_tag` VALUES (1,2),(1,7),(1,8),(2,7),(2,35),(3,7),(3,8),(9,20),(9,21),(9,22);
/*!40000 ALTER TABLE `gift_certificate_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (2,'test_tag_two'),(7,'SportMaster'),(8,'Beautiful'),(9,'WoW'),(10,'Game'),(13,'one'),(14,'two'),(17,'ASC'),(20,'A1'),(21,'Wild'),(22,'MTC'),(23,'Sommer'),(35,'Update'),(36,'Prod');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-07 13:26:01
