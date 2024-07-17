CREATE DATABASE  IF NOT EXISTS `tienda3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda3`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda3
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cliente_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL COMMENT 'solo nombre',
  `correo` varchar(40) DEFAULT NULL COMMENT 'solo se admite una direccion de correo',
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'cliente1','cliente1@gmail.com','764-105-44-78'),(2,'cliente2','cliente1@gmail.com','764-105-44-78'),(3,'cliente3','cliente1@gmail.com','764-105-44-78'),(4,'paco','paco@utxicotepec.edu.mx','7647670935'),(5,'nombre874','usuario678@utxicotepec.edu.mx','764366-797'),(6,'nombre688','usuario548@utxicotepec.edu.mx','764278-745'),(7,'nombre694','usuario733@utxicotepec.edu.mx','764186-730'),(8,'nombre891','usuario766@utxicotepec.edu.mx','764259-996'),(9,'nombre504','usuario533@utxicotepec.edu.mx','764255-676'),(10,'nombre755','usuario543@utxicotepec.edu.mx','764549-616'),(11,'nombre732','usuario814@utxicotepec.edu.mx','764475-932'),(12,'nombre535','usuario880@utxicotepec.edu.mx','764397-844'),(13,'nombre831','usuario622@utxicotepec.edu.mx','764216-717'),(14,'nombre736','usuario530@utxicotepec.edu.mx','764544-629'),(15,'nombre600','usuario757@utxicotepec.edu.mx','764585-654'),(16,'nombre816','usuario620@utxicotepec.edu.mx','764250-890'),(17,'nombre503','usuario843@utxicotepec.edu.mx','764306-504'),(18,'nombre902','usuario500@utxicotepec.edu.mx','764394-972'),(19,'nombre976','usuario967@utxicotepec.edu.mx','764506-629'),(20,'nombre927','usuario749@utxicotepec.edu.mx','764566-584'),(21,'nombre520','usuario848@utxicotepec.edu.mx','764282-865'),(22,'nombre780','usuario805@utxicotepec.edu.mx','764286-516'),(23,'nombre524','usuario570@utxicotepec.edu.mx','764380-692'),(24,'nombre618','usuario515@utxicotepec.edu.mx','764321-560');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallesventa`
--

DROP TABLE IF EXISTS `detallesventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallesventa` (
  `detalle_id` int NOT NULL AUTO_INCREMENT,
  `venta_id` int DEFAULT NULL,
  `producto_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `total_detalle` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`detalle_id`),
  KEY `venta_id` (`venta_id`),
  KEY `producto_id` (`producto_id`),
  CONSTRAINT `detallesventa_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`venta_id`),
  CONSTRAINT `detallesventa_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesventa`
--

LOCK TABLES `detallesventa` WRITE;
/*!40000 ALTER TABLE `detallesventa` DISABLE KEYS */;
INSERT INTO `detallesventa` VALUES (1,1,1,3,19.99,59.98),(2,2,2,3,29.99,59.97);
/*!40000 ALTER TABLE `detallesventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `Empleados_ID` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Empleados_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_ventas`
--

DROP TABLE IF EXISTS `historial_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_ventas` (
  `hisotrial_id` int NOT NULL AUTO_INCREMENT,
  `venta_id` int DEFAULT NULL,
  `cliente_id` int DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `accion` varchar(45) DEFAULT NULL,
  `fecha_accion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`hisotrial_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_ventas`
--

LOCK TABLES `historial_ventas` WRITE;
/*!40000 ALTER TABLE `historial_ventas` DISABLE KEYS */;
INSERT INTO `historial_ventas` VALUES (1,4,4,'2024-04-05',49.99,'Before Insert',NULL),(2,4,4,'2024-04-05',49.99,'After Insert',NULL),(3,4,4,'2024-04-05',49.99,'Before Delete',NULL),(4,4,4,'2024-04-05',49.99,'After Delete',NULL),(5,6,6,'2024-05-10',79.89,'Before Insert',NULL),(6,6,6,'2024-05-10',79.89,'After Insert',NULL),(7,7,7,'2024-05-10',50.00,'Before Insert',NULL),(8,7,7,'2024-05-10',50.00,'After Insert',NULL),(9,8,8,'2025-11-01',100.00,'Before Insert',NULL),(10,8,8,'2025-11-01',100.00,'After Insert',NULL),(11,9,9,'2005-11-02',99.00,'Before Insert',NULL),(12,9,9,'2005-11-02',99.00,'After Insert',NULL),(13,9,9,'2005-11-02',99.00,'Before Update',NULL),(14,9,9,'2005-11-03',99.00,'Before Update',NULL);
/*!40000 ALTER TABLE `historial_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `producto_id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `categoria` varchar(45) DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`producto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'producto A',19.99,50,NULL,NULL),(2,'producto B',29.99,30,NULL,NULL),(3,'producto C',39.99,20,NULL,NULL),(4,'Sabritas',26.50,28,'Botana','Caducado'),(5,NULL,37.50,24,NULL,'Caducado'),(6,NULL,39.50,18,NULL,'Vigente'),(7,'Coca Cola',43.50,23,'Refresco','Vigente'),(8,'Sabritas',59.50,34,'Botana','Caducado'),(9,'Leche',14.50,26,'Lacteos','Caducado'),(10,'Leche',10.50,33,'Lacteos','Caducado'),(11,'Sabritas',19.50,1,'Botana','Vigente'),(12,'Galletitas',21.50,3,'Botana','Caducado'),(13,'Galletitas',54.50,44,'Botana','Caducado'),(14,'Galletitas',31.50,35,'Botana','Caducado'),(15,'Sabritas',46.50,33,'Botana','Caducado'),(16,'Coca Cola',36.50,9,'Refresco','Vigente'),(17,'Sabritas',44.50,15,'Botana','Caducado'),(18,'Leche',14.50,10,'Lacteos','Vigente'),(19,NULL,59.50,21,NULL,'Caducado'),(20,'Sabritas',37.50,8,'Botana','Vigente'),(21,'Coca Cola',51.50,33,'Refresco','Caducado'),(22,NULL,57.50,37,NULL,'Caducado'),(23,NULL,58.50,2,NULL,'Vigente'),(24,'Sabritas',51.50,36,'Botana','Vigente'),(25,'Sabritas',35.50,1,'Botana','Vigente'),(26,'Galletitas',25.50,38,'Botana','Caducado'),(27,NULL,56.50,11,NULL,'Caducado'),(28,'Leche',35.50,24,'Lacteos','Caducado'),(29,NULL,23.50,36,NULL,'Caducado'),(30,NULL,59.50,11,NULL,'Vigente'),(31,'Sabritas',36.50,16,'Botana','Caducado'),(32,'Coca Cola',25.50,30,'Refresco','Caducado'),(33,'Coca Cola',41.50,2,'Refresco','Caducado'),(34,'Sabritas',14.50,28,'Botana','Vigente'),(35,'Leche',43.50,5,'Lacteos','Caducado'),(36,'Leche',55.50,48,'Lacteos','Vigente'),(37,'Coca Cola',32.50,30,'Refresco','Vigente'),(38,'Galletitas',22.50,27,'Botana','Vigente');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `venta_id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`venta_id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,1,'2024-02-06',59.98),(2,2,'2024-03-07',59.98),(3,3,'2024-03-09',69.98),(6,6,'2024-05-10',79.89),(7,7,'2024-05-10',50.00),(8,8,'2025-11-01',100.00),(9,9,'2005-11-03',99.00);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-17 17:30:01
