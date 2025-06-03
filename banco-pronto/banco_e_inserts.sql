CREATE DATABASE  IF NOT EXISTS `spaceic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `spaceic`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: spaceic
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `capacita`
--

DROP TABLE IF EXISTS `capacita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capacita` (
  `Id_Treinamento` int NOT NULL,
  `Id_Missao` int NOT NULL,
  PRIMARY KEY (`Id_Treinamento`,`Id_Missao`),
  KEY `Id_Missao` (`Id_Missao`),
  CONSTRAINT `capacita_ibfk_1` FOREIGN KEY (`Id_Treinamento`) REFERENCES `treinamento` (`Id_Treinamento`),
  CONSTRAINT `capacita_ibfk_2` FOREIGN KEY (`Id_Missao`) REFERENCES `missao` (`Id_Missao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capacita`
--

LOCK TABLES `capacita` WRITE;
/*!40000 ALTER TABLE `capacita` DISABLE KEYS */;
INSERT INTO `capacita` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `capacita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experimento`
--

DROP TABLE IF EXISTS `experimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experimento` (
  `Id_Experimento` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Resultado` text COLLATE utf8mb4_general_ci NOT NULL,
  `Data` date DEFAULT NULL,
  `Id_Missao` int DEFAULT NULL,
  PRIMARY KEY (`Id_Experimento`),
  KEY `Id_Missao` (`Id_Missao`),
  CONSTRAINT `experimento_ibfk_1` FOREIGN KEY (`Id_Missao`) REFERENCES `missao` (`Id_Missao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experimento`
--

LOCK TABLES `experimento` WRITE;
/*!40000 ALTER TABLE `experimento` DISABLE KEYS */;
INSERT INTO `experimento` VALUES (1,'Análise do solo lunar','Sucesso: presença de compostos raros','2025-10-25',1),(2,'Análise da área de preservação da Mata Atlântica','Sucesso: nova porcentagem de área verde','2027-01-14',2),(3,'Verificação atmosférica de Marte','Falha parcial: perda de sinal','2026-06-14',3);
/*!40000 ALTER TABLE `experimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `Id_funcionario` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Tipo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Area` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Data_contratacao` date DEFAULT '2025-05-20',
  `Certificacao` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Alan Turing da Silva','Ciências','Ciencias aplicada','2025-05-20','Computação Espacial'),(2,'Albert Einstein Nogueira','Ciências','Teorias e metodologias','2025-05-20','Relatividada simples'),(3,'Marie Curie','Ciências','Quimica espacial','2025-05-20','Radioatividade Celeste'),(4,'Galileu Galilei Silva','Ciências','Ciencias aplicada','2025-05-20','Ciencias Gerais'),(5,'Charles Darwin','Ciências','Teorias e metodologias','2025-05-20','Evolução Espacial'),(6,'Ada Lovelance Pereira','Ciências','Programção','2025-05-20','Computação Espacial'),(7,'Grace Hopper Oliveira','Ciências','Ciencias aplicada','2025-05-20','Nano Compiladores'),(8,'John Von Neumann Costa','Engenharia','Tecnologia Espacial','2025-05-20','Arquitetura Espacial'),(9,'Linus Torvalds','Engenharia','Sistemas Operacionais','2025-05-20','Arquitetura Espacial'),(10,'Tim Berners-Lee Santos','Engenharia','Tecnologia Espacial','2025-05-20','Internet Espacial'),(11,'Issac Newton Costa','Engenharia','Tecnologia Espacial','2025-05-20','Gravitação de corpos'),(12,'Nikola Tesla Pinto','Engenharia','Sistemas Elétricos','2025-05-20','Arquitetura Espacial'),(13,'Leornado da Vinci Pinheiros','Engenharia','Corpos celestes','2025-05-20','Engenharia Geral'),(14,'Robert Oppenheimer Silva','Engenharia','Combustíveis','2025-05-20','Propulsão de fogetes'),(15,'Ana Beatriz Magalhães','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(16,'Ronaldo Fenômeno','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(17,'Rivaldo','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(18,'Ronaldinho Gaúcho','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(19,'Cafu','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(20,'Roberto Carlos','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(21,'Kaká','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(22,'Edmílson','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(23,'Lúcio','Astronauta','Exploração','2025-05-20','Certificação Espacial'),(24,'Marcos','Astronauta','Exploração','2025-05-20','Certificação Espacial');
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lancamento`
--

DROP TABLE IF EXISTS `lancamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lancamento` (
  `Id_Lancamento` int NOT NULL AUTO_INCREMENT,
  `Data` date NOT NULL,
  `Local` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Resultado` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Id_Veiculo` int DEFAULT NULL,
  PRIMARY KEY (`Id_Lancamento`),
  KEY `Id_Veiculo` (`Id_Veiculo`),
  CONSTRAINT `lancamento_ibfk_1` FOREIGN KEY (`Id_Veiculo`) REFERENCES `veiculo` (`Id_Veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lancamento`
--

LOCK TABLES `lancamento` WRITE;
/*!40000 ALTER TABLE `lancamento` DISABLE KEYS */;
INSERT INTO `lancamento` VALUES (1,'2025-08-14','Centro Espacial Marechal Deodoro','Bem-sucedido',1),(2,'2026-12-25','Centro Espacial Marechal Deodoro','Problemas menores',2),(3,'2026-02-11','Centro Espacial Marechal Deodoro','Bem-sucedido',3);
/*!40000 ALTER TABLE `lancamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missao`
--

DROP TABLE IF EXISTS `missao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missao` (
  `Id_Missao` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Objetivo` text COLLATE utf8mb4_general_ci,
  `Data` date DEFAULT NULL,
  `Status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Cancelado',
  PRIMARY KEY (`Id_Missao`),
  UNIQUE KEY `Nome` (`Nome`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missao`
--

LOCK TABLES `missao` WRITE;
/*!40000 ALTER TABLE `missao` DISABLE KEYS */;
INSERT INTO `missao` VALUES (1,'Missão Selene','Exploração da superfície lunar','2025-08-15','Cancelado'),(2,'Missão Calango','Monitoramento da Mata Atlântica','2026-12-14','Cancelado'),(3,'Missão RedBall','Pesquisa sobre atmosfera marciana','2026-01-10','Cancelado'),(4,'Missão NotCooler','Teste de resistência a altas temperaturas','2026-05-22','Cancelado'),(5,'Missão Amaterasu','Estudos sobre o comportamento do sol','2026-10-01','Cancelado'),(6,'Missão Zero','Pesquisa sobre o surgimento do universo','2027-03-31','Cancelado'),(7,'Missão TerraVermelha','Exploração da superfície marciana','2030-07-12','Cancelado');
/*!40000 ALTER TABLE `missao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participa`
--

DROP TABLE IF EXISTS `participa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participa` (
  `Id_Funcionario` int NOT NULL,
  `Id_Treinamento` int NOT NULL,
  `Data` date DEFAULT NULL,
  `Funcao` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_Funcionario`,`Id_Treinamento`),
  KEY `Id_Treinamento` (`Id_Treinamento`),
  CONSTRAINT `participa_ibfk_1` FOREIGN KEY (`Id_Funcionario`) REFERENCES `funcionarios` (`Id_funcionario`),
  CONSTRAINT `participa_ibfk_2` FOREIGN KEY (`Id_Treinamento`) REFERENCES `treinamento` (`Id_Treinamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participa`
--

LOCK TABLES `participa` WRITE;
/*!40000 ALTER TABLE `participa` DISABLE KEYS */;
INSERT INTO `participa` VALUES (1,1,'2025-01-10','Participante'),(2,1,'2025-01-10','Instrutor'),(3,2,'2025-02-15','Participante'),(4,3,'2025-03-05','Participante'),(5,2,'2025-02-15','Instrutor');
/*!40000 ALTER TABLE `participa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realizam`
--

DROP TABLE IF EXISTS `realizam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realizam` (
  `Id_Funcionario` int NOT NULL,
  `Id_Experimento` int NOT NULL,
  PRIMARY KEY (`Id_Funcionario`,`Id_Experimento`),
  KEY `Id_Experimento` (`Id_Experimento`),
  CONSTRAINT `realizam_ibfk_1` FOREIGN KEY (`Id_Funcionario`) REFERENCES `funcionarios` (`Id_funcionario`),
  CONSTRAINT `realizam_ibfk_2` FOREIGN KEY (`Id_Experimento`) REFERENCES `experimento` (`Id_Experimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realizam`
--

LOCK TABLES `realizam` WRITE;
/*!40000 ALTER TABLE `realizam` DISABLE KEYS */;
INSERT INTO `realizam` VALUES (1,1),(3,1),(6,2),(7,3);
/*!40000 ALTER TABLE `realizam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisiona`
--

DROP TABLE IF EXISTS `supervisiona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervisiona` (
  `Id_Supervisionado` int NOT NULL,
  `Id_Supervisor` int NOT NULL,
  PRIMARY KEY (`Id_Supervisionado`,`Id_Supervisor`),
  KEY `Id_Supervisor` (`Id_Supervisor`),
  CONSTRAINT `supervisiona_ibfk_1` FOREIGN KEY (`Id_Supervisionado`) REFERENCES `funcionarios` (`Id_funcionario`),
  CONSTRAINT `supervisiona_ibfk_2` FOREIGN KEY (`Id_Supervisor`) REFERENCES `funcionarios` (`Id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisiona`
--

LOCK TABLES `supervisiona` WRITE;
/*!40000 ALTER TABLE `supervisiona` DISABLE KEYS */;
INSERT INTO `supervisiona` VALUES (3,1),(4,1),(5,2),(6,2),(7,3);
/*!40000 ALTER TABLE `supervisiona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treinamento`
--

DROP TABLE IF EXISTS `treinamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treinamento` (
  `Id_Treinamento` int NOT NULL AUTO_INCREMENT,
  `Nome_curso` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Carga_Horaria` int DEFAULT '30',
  `Responsavel` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Publico` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id_Treinamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treinamento`
--

LOCK TABLES `treinamento` WRITE;
/*!40000 ALTER TABLE `treinamento` DISABLE KEYS */;
INSERT INTO `treinamento` VALUES (1,'Simulação de Gravidade Zero',30,'Ada Lovelance Pereira','Astronautas'),(2,'Propulsão Espacial Avançada',30,'Robert Oppenheimer Silva','Engenheiros'),(3,'Comunicação Interplanetária',30,'Tim Berners-Lee Santos','Engenheiros e Cientistas'),(4,'Sobrevivência Espacial',30,'Ronaldo Fenômeno','Astronautas'),(5,'Astrofísica Aplicada',30,'Albert Einstein Nogueira','Cientistas');
/*!40000 ALTER TABLE `treinamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usa`
--

DROP TABLE IF EXISTS `usa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usa` (
  `Id_Missao` int NOT NULL,
  `Id_Veiculo` int NOT NULL,
  PRIMARY KEY (`Id_Missao`,`Id_Veiculo`),
  KEY `Id_Veiculo` (`Id_Veiculo`),
  CONSTRAINT `usa_ibfk_1` FOREIGN KEY (`Id_Missao`) REFERENCES `missao` (`Id_Missao`),
  CONSTRAINT `usa_ibfk_2` FOREIGN KEY (`Id_Veiculo`) REFERENCES `veiculo` (`Id_Veiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usa`
--

LOCK TABLES `usa` WRITE;
/*!40000 ALTER TABLE `usa` DISABLE KEYS */;
INSERT INTO `usa` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7);
/*!40000 ALTER TABLE `usa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `Id_Veiculo` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Tipo` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Status` varchar(50) COLLATE utf8mb4_general_ci DEFAULT 'Em Revisao',
  `Data_lancamento` date DEFAULT NULL,
  `Id_Missao` int DEFAULT NULL,
  PRIMARY KEY (`Id_Veiculo`),
  KEY `Id_Missao` (`Id_Missao`),
  CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`Id_Missao`) REFERENCES `missao` (`Id_Missao`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'Foguete Alagoas I','Foguete','Em Revisao','2025-08-15',1),(2,'Sonda Salgadinho','Sonda','Em Revisao','2026-12-14',2),(3,'Satélite IC','Satélite','Em Revisao','2026-01-10',3),(4,'Sonda 046 Centro','Sonda','Em Revisao','2026-05-22',4),(5,'Sonda Clima Bom','Sonda','Em Revisao','2026-10-01',5),(6,'Satélite CC','Satélite','Em Revisao','2027-03-31',6),(7,'Foguete Alagoas II','Foguete','Em Revisao','2030-07-12',7);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viaja`
--

DROP TABLE IF EXISTS `viaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viaja` (
  `Id_Funcionario` int NOT NULL,
  `Id_Missao` int NOT NULL,
  PRIMARY KEY (`Id_Funcionario`,`Id_Missao`),
  KEY `Id_Missao` (`Id_Missao`),
  CONSTRAINT `viaja_ibfk_1` FOREIGN KEY (`Id_Funcionario`) REFERENCES `funcionarios` (`Id_funcionario`),
  CONSTRAINT `viaja_ibfk_2` FOREIGN KEY (`Id_Missao`) REFERENCES `missao` (`Id_Missao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viaja`
--

LOCK TABLES `viaja` WRITE;
/*!40000 ALTER TABLE `viaja` DISABLE KEYS */;
INSERT INTO `viaja` VALUES (14,1),(15,2),(16,3),(17,4),(18,5),(19,6),(20,7);
/*!40000 ALTER TABLE `viaja` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-18 17:54:34
