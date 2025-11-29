-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: gerenciaobra
-- ------------------------------------------------------
-- Server version	8.4.7

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `formulario`
--

DROP TABLE IF EXISTS `formulario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formulario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_lancamento` date DEFAULT NULL,
  `solicitante` varchar(255) DEFAULT NULL,
  `titular` varchar(255) DEFAULT NULL,
  `referente` text,
  `valor` decimal(10,2) DEFAULT NULL,
  `obra` varchar(255) DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `forma_pagamento` varchar(50) DEFAULT NULL,
  `lancado` varchar(5) DEFAULT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `chave_pix` varchar(255) DEFAULT NULL,
  `data_competencia` date DEFAULT NULL,
  `observacao` text,
  `carimbo` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulario`
--

LOCK TABLES `formulario` WRITE;
/*!40000 ALTER TABLE `formulario` DISABLE KEYS */;
INSERT INTO `formulario` VALUES (1,'2025-11-22','joao','VALES INDUSTRIA DE TELHAS M.E ','aaaaaa',5.00,'garagem','2025-11-21','PIX','N','50.311.866/0001-91','11111111111','2025-11-21','','2025-11-22 00:16:15'),(2,'2025-11-22','joao','julim da marmoaria','arruma casa felipe (1/2)',250.00,'garagem','2025-11-22','PIX','N','50.311.866/0001-91','11111111111','2025-11-22','','2025-11-22 00:18:51'),(3,'2025-11-22','joao','julim da marmoaria','arruma casa felipe (2/2)',250.00,'garagem','2025-12-22','PIX','N','50.311.866/0001-91','11111111111','2025-12-22','','2025-11-22 00:18:51'),(4,'2025-11-22','joao','julim da padaria','lavar carro (1/2)',25.00,'banco do brasil','2025-11-22','PIX','N','00.000.000/0000-00','22222222222','2025-11-22','','2025-11-22 08:28:32'),(5,'2025-11-22','joao','julim da padaria','lavar carro (2/2)',25.00,'banco do brasil','2025-12-22','PIX','N','00.000.000/0000-00','22222222222','2025-12-22','','2025-11-22 08:28:32'),(6,'2025-11-22','joao','Club social ','bananeira (3/5)',200.00,'banco do brasil','2026-01-30','PIX','N','44.444.444/4444-44','33333333333333','2026-01-30','','2025-11-22 17:30:23'),(7,'2025-11-22','joao','Club social ','bananeira (1/5)',200.00,'banco do brasil','2025-11-30','PIX','N','44.444.444/4444-44','33333333333333','2025-11-30','','2025-11-22 17:30:23'),(8,'2025-11-22','joao','Club social ','bananeira (4/5)',200.00,'banco do brasil','2026-02-28','PIX','N','44.444.444/4444-44','33333333333333','2026-02-28','','2025-11-22 17:30:23'),(9,'2025-11-22','joao','Club social ','bananeira (2/5)',200.00,'banco do brasil','2025-12-30','PIX','N','44.444.444/4444-44','33333333333333','2025-12-30','','2025-11-22 17:30:23'),(10,'2025-11-22','joao','Club social ','bananeira (5/5)',200.00,NULL,'2026-03-30','PIX','1','03505917257','tonhao@gmail.com','2026-03-30','ain','2025-11-22 17:30:23'),(11,'2025-11-22','joao','Mercado do francisco','carregamento madeira (1/2)',50.00,'junim','2025-11-22','Boleto','N','44.444.444/4444-44','','2025-11-22','','2025-11-22 17:44:02'),(12,'2025-11-22','joao','Mercado do francisco','carregamento madeira (2/2)',50.00,'junim','2025-12-22','Boleto','N','44.444.444/4444-44','','2025-12-22','','2025-11-22 17:44:02'),(13,'2025-11-22','joao','VALES INDUSTRIA DE TELHAS M.E ','troca de telhado zinco (1/2)',400.00,NULL,'2025-11-22','PIX','1','55.555.555/5555-55','44444444444','2025-11-22',NULL,'2025-11-22 17:45:03'),(14,'2025-11-22','joao','VALES INDUSTRIA DE TELHAS M.E ','troca de telhado zinco (2/2)',555.55,NULL,'2025-12-22','PIX','1','55.555.555/5555-55','44444444444','2025-12-22',NULL,'2025-11-22 17:45:03'),(15,'2025-11-25','joao','julim da marmoaria','aaaaaaaaa',500.00,'banco do brasil','2025-11-27','PIX','N','50311866000191','22222222222','2025-11-27','','2025-11-25 04:48:40'),(16,'2025-11-25','joao','julim da padaria','arraa (4/5)',140.00,'banco do brasil','2026-02-28','PIX','N','00000000000000','11111111111111','2026-02-28','','2025-11-25 05:27:31'),(17,'2025-11-25','joao','julim da padaria','arraa (1/5)',150.00,NULL,'2025-11-28','PIX','1','00000000000000','11111111111111','2025-11-28','','2025-11-25 05:27:31'),(18,'2025-11-25','joao','julim da padaria','arraa (3/5)',140.00,'banco do brasil','2026-01-28','PIX','N','00000000000000','11111111111111','2026-01-28','','2025-11-25 05:27:31'),(19,'2025-11-25','joao','Club social ','arraa (2/5)',150.00,NULL,'2025-12-28','PIX','1','03505917257','11111111111111','2025-12-28','','2025-11-25 05:27:31'),(20,'2025-11-25','joao','Club social ','arraa (5/5)',140.00,'0','2026-03-28','PIX','1','03505917257','11111111111111','2026-03-28','','2025-11-25 05:27:31');
/*!40000 ALTER TABLE `formulario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obras`
--

DROP TABLE IF EXISTS `obras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obras` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `quem_paga` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obras`
--

LOCK TABLES `obras` WRITE;
/*!40000 ALTER TABLE `obras` DISABLE KEYS */;
INSERT INTO `obras` VALUES (1,'garagem','tonhao'),(2,'banco do brasil','lula'),(3,'junim','claudio do cacete');
/*!40000 ALTER TABLE `obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jonatas','123','admin'),(2,'joao','123','user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_obras`
--

DROP TABLE IF EXISTS `users_obras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_obras` (
  `user_id` int NOT NULL,
  `obra_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`obra_id`),
  KEY `obra_id` (`obra_id`),
  CONSTRAINT `users_obras_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `users_obras_ibfk_2` FOREIGN KEY (`obra_id`) REFERENCES `obras` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_obras`
--

LOCK TABLES `users_obras` WRITE;
/*!40000 ALTER TABLE `users_obras` DISABLE KEYS */;
INSERT INTO `users_obras` VALUES (2,1),(2,2),(2,3);
/*!40000 ALTER TABLE `users_obras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'gerenciaobra'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-29  3:13:23
