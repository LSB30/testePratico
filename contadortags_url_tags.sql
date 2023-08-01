-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: contadortags
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
-- Table structure for table `url_tags`
--

DROP TABLE IF EXISTS `url_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `url_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(245) NOT NULL DEFAULT ' ',
  `tag_name` varchar(45) NOT NULL,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_tags`
--

LOCK TABLES `url_tags` WRITE;
/*!40000 ALTER TABLE `url_tags` DISABLE KEYS */;
INSERT INTO `url_tags` VALUES (1,'https://lsb30.github.io/dia-dos-namorados/','html',1),(2,'https://lsb30.github.io/dia-dos-namorados/','head',1),(3,'https://lsb30.github.io/dia-dos-namorados/','meta',2),(4,'https://lsb30.github.io/dia-dos-namorados/','link',4),(5,'https://lsb30.github.io/dia-dos-namorados/','title',1),(6,'https://lsb30.github.io/dia-dos-namorados/','img',2),(7,'https://lsb30.github.io/dia-dos-namorados/','div',2),(8,'https://lsb30.github.io/dia-dos-namorados/','body',1),(9,'https://lsb30.github.io/dia-dos-namorados/','h1',2),(10,'https://lsb30.github.io/dia-dos-namorados/','script',1),(11,'https://lsb30.github.io/reviewing-html-css-01/','html',1),(12,'https://lsb30.github.io/reviewing-html-css-01/','head',1),(13,'https://lsb30.github.io/reviewing-html-css-01/','img',2),(14,'https://lsb30.github.io/reviewing-html-css-01/','meta',2),(15,'https://lsb30.github.io/reviewing-html-css-01/','link',4),(16,'https://lsb30.github.io/reviewing-html-css-01/','title',1),(17,'https://lsb30.github.io/reviewing-html-css-01/','body',1),(18,'https://lsb30.github.io/reviewing-html-css-01/','div',2),(19,'https://lsb30.github.io/reviewing-html-css-01/','h1',2),(20,'https://lsb30.github.io/reviewing-html-css-01/','script',1),(21,'https://lsb30.github.io/gift-for-girlfriend/','html',1),(22,'https://lsb30.github.io/gift-for-girlfriend/','head',1),(23,'https://lsb30.github.io/gift-for-girlfriend/','meta',3),(24,'https://lsb30.github.io/gift-for-girlfriend/','link',5),(25,'https://lsb30.github.io/gift-for-girlfriend/','title',1),(26,'https://lsb30.github.io/gift-for-girlfriend/','body',1),(27,'https://lsb30.github.io/gift-for-girlfriend/','img',2),(28,'https://lsb30.github.io/gift-for-girlfriend/','main',1),(29,'https://lsb30.github.io/gift-for-girlfriend/','h1',1),(30,'https://lsb30.github.io/gift-for-girlfriend/','h2',1),(31,'https://lsb30.github.io/gift-for-girlfriend/','div',1),(32,'https://lsb30.github.io/gift-for-girlfriend/','button',2),(33,'https://lsb30.github.io/gift-for-girlfriend/','script',1),(34,'https://lsb30.github.io/gift-for-girlfriend/','html',1),(35,'https://lsb30.github.io/gift-for-girlfriend/','head',1),(36,'https://lsb30.github.io/gift-for-girlfriend/','meta',3),(37,'https://lsb30.github.io/gift-for-girlfriend/','link',5),(38,'https://lsb30.github.io/gift-for-girlfriend/','title',1),(39,'https://lsb30.github.io/gift-for-girlfriend/','body',1),(40,'https://lsb30.github.io/gift-for-girlfriend/','main',1),(41,'https://lsb30.github.io/gift-for-girlfriend/','img',2),(42,'https://lsb30.github.io/gift-for-girlfriend/','h1',1),(43,'https://lsb30.github.io/gift-for-girlfriend/','h2',1),(44,'https://lsb30.github.io/gift-for-girlfriend/','button',2),(45,'https://lsb30.github.io/gift-for-girlfriend/','script',1),(46,'https://lsb30.github.io/gift-for-girlfriend/','div',1),(47,'https://quest-vue.vercel.app/#/','html',1),(48,'https://quest-vue.vercel.app/#/','head',1),(49,'https://quest-vue.vercel.app/#/','meta',3),(50,'https://quest-vue.vercel.app/#/','link',4),(51,'https://quest-vue.vercel.app/#/','title',1),(52,'https://quest-vue.vercel.app/#/','script',2),(53,'https://quest-vue.vercel.app/#/','body',1),(54,'https://quest-vue.vercel.app/#/','div',1),(55,'https://quest-vue.vercel.app/#/','noscript',1),(56,'https://quest-vue.vercel.app/#/','html',1),(57,'https://quest-vue.vercel.app/#/','head',1),(58,'https://quest-vue.vercel.app/#/','meta',3),(59,'https://quest-vue.vercel.app/#/','link',4),(60,'https://quest-vue.vercel.app/#/','title',1),(61,'https://quest-vue.vercel.app/#/','script',2),(62,'https://quest-vue.vercel.app/#/','body',1),(63,'https://quest-vue.vercel.app/#/','noscript',1),(64,'https://quest-vue.vercel.app/#/','div',1),(65,'https://lsb30.github.io/snake-game/','html',1),(66,'https://lsb30.github.io/snake-game/','head',1),(67,'https://lsb30.github.io/snake-game/','meta',4),(68,'https://lsb30.github.io/snake-game/','title',1),(69,'https://lsb30.github.io/snake-game/','link',2),(70,'https://lsb30.github.io/snake-game/','script',1),(71,'https://lsb30.github.io/snake-game/','body',1),(72,'https://lsb30.github.io/snake-game/','div',7),(73,'https://lsb30.github.io/snake-game/','span',8),(74,'https://lsb30.github.io/snake-game/','h1',2),(75,'https://lsb30.github.io/snake-game/','i',5),(76,'https://lsb30.github.io/snake-game/','label',1),(77,'https://lsb30.github.io/snake-game/','input',1),(78,'https://lsb30.github.io/snake-game/','button',1),(79,'https://lsb30.github.io/calculo-combustivel/','html',1),(80,'https://lsb30.github.io/calculo-combustivel/','head',1),(81,'https://lsb30.github.io/calculo-combustivel/','meta',4),(82,'https://lsb30.github.io/calculo-combustivel/','link',1),(83,'https://lsb30.github.io/calculo-combustivel/','title',1),(84,'https://lsb30.github.io/calculo-combustivel/','body',1),(85,'https://lsb30.github.io/calculo-combustivel/','main',1),(86,'https://lsb30.github.io/calculo-combustivel/','h1',1),(87,'https://lsb30.github.io/calculo-combustivel/','img',2),(88,'https://lsb30.github.io/calculo-combustivel/','form',1),(89,'https://lsb30.github.io/calculo-combustivel/','label',2),(90,'https://lsb30.github.io/calculo-combustivel/','input',3),(91,'https://lsb30.github.io/calculo-combustivel/','section',1),(92,'https://lsb30.github.io/calculo-combustivel/','span',4),(93,'https://lsb30.github.io/calculo-combustivel/','div',1),(94,'https://lsb30.github.io/calculo-combustivel/','a',1),(95,'https://lsb30.github.io/calculo-combustivel/','script',1);
/*!40000 ALTER TABLE `url_tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-31 16:21:34
