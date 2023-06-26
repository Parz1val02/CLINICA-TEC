-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: midatabase.mysql.database.azure.com    Database: telesystem_2
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
-- Table structure for table `spring_session`
--

DROP TABLE IF EXISTS `spring_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SESSION_ID` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session`
--

LOCK TABLES `spring_session` WRITE;
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
INSERT INTO `spring_session` VALUES ('1328a372-be98-4c9d-95e1-3b79a4ba5155','b3af13c7-16c3-4642-97db-24c01a66ba2c',1687746286311,1687755345724,1800,1687757145724,'leonardo@example.com'),('84d88900-1d89-454d-99d5-bab0bc19cd27','4d5f9868-47c5-4915-bec7-87268d1df5f3',1687753551708,1687754833726,1800,1687756633726,'hiroshi@example.com'),('a441e3ca-3e74-4fb1-9038-d94e334f0268','fb38a32a-9952-426d-b641-557f87a8c2cc',1687754501989,1687754501989,1800,1687756301989,NULL),('a9580559-01db-44e2-98ca-264af2b21ef7','47297e9b-ee34-44ba-83fe-8e378a9e7ccc',1687754667482,1687754709105,1800,1687756509105,'leonardo@example.com'),('a986765b-a854-4925-b316-a4ce640e5996','8224e13b-9c38-456a-a28d-56c34160ef03',1687754499581,1687754499582,1800,1687756299582,NULL),('ad3472de-f303-48ae-8742-13a907a1a88e','5e4fb988-6795-4536-b7c9-7b194c3858b7',1687752533037,1687755539668,1800,1687757339668,'lucho@example.com'),('e0618119-070e-4694-ab55-654f0e40b1e0','d1e40a05-366b-4102-a388-140199759837',1687752741898,1687755145626,1800,1687756945626,'a20201696@pucp.edu.pe');
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26  0:04:23
