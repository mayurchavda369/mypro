CREATE DATABASE  IF NOT EXISTS `ecomdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecomdb`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ecomdb
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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('rf9b0nsbofzkaqwv2ut9cp54p7nlwt3o','.eJxVjssKwjAURP8lawl59uFK3PsN5ebmpqn2AW0jiPjvJtCFbufMHObNOkh77NJGazd4dmaSnX4zB_iguQB_h7lfOC7zvg6Olwo_6MZvi6fxenT_BBG2mNcgoFYBSBgtQrBIiNQYp6TVWmhZYROaKlhFtpZSedWiUUFYh84ZTdBmKU0wjFk1wSutGOHpQVftpS9xvjWxzxdoXUP8:1qiFsa:WPJTjq03sXzylksQvOtCm8ZrKyYAJaMS5rx6pfJbacg','2023-10-02 15:09:40.349531'),('t6z40r4sebwpn0oylznxaa7zpbbo9nn6','.eJxVjMsOgjAQRf-la9P0ycOVce83kOl0SlGgCVATY_x3S8KG7bnn3C-jCYaRXdkEn7xghLcHXbW3fscc08QurIO8xS6vtHSDL6o8Mwf4onkf_BPmPpVq3pbB8V3hx7ryR_I03g_3dBBhjaUGAbUKQMJoEYJFQqTGOCWt1kLLCpvQVMEqsrWUyqsWjQrCOnTOaIKW_f6-hEP8:1qiFyq:p0UAkHwVvi4e4ZnK5nI8l2bLSrHM8uVVnFc083PkA7Q','2023-10-02 15:16:08.223009');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-19  0:25:24
