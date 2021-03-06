-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: notificacoes
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_notificacoes`
--

DROP TABLE IF EXISTS `tb_notificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_notificacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `notificacao_tipo` varchar(50) DEFAULT NULL,
  `propriedades` text,
  `data_notificacao` datetime DEFAULT NULL,
  `lido` tinyint(1) DEFAULT '0',
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_notificacoes`
--

LOCK TABLES `tb_notificacoes` WRITE;
/*!40000 ALTER TABLE `tb_notificacoes` DISABLE KEYS */;
INSERT INTO `tb_notificacoes` VALUES (1,1,'MSG','{\"msg\":\"Notificação de teste\"}',NULL,1,'https://dfsweb.com.br/'),(2,1,'MSG','{\"msg\":\"Notificação 2\"}',NULL,0,'http://www.google.com.br/'),(3,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(4,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(5,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(6,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(7,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(8,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(9,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(10,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(11,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123'),(12,1,'CURTIDA','{\"curtidor\":\"2\",\"id_foto\":\"123\"}',NULL,0,'http://seusite.com/foto/123');
/*!40000 ALTER TABLE `tb_notificacoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-28 11:39:20
