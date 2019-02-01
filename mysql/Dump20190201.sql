CREATE DATABASE  IF NOT EXISTS `lutherblog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `lutherblog`;
-- MySQL dump 10.13  Distrib 8.0.14, for Win64 (x86_64)
--
-- Host: localhost    Database: lutherblog
-- ------------------------------------------------------
-- Server version	8.0.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `content` text,
  `picture_id` int(11) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `update_at` timestamp(6) NULL DEFAULT NULL,
  `create_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `picture_id_idx` (`picture_id`),
  CONSTRAINT `picture_id` FOREIGN KEY (`picture_id`) REFERENCES `pictures` (`picture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (13,'','{\"_immutable\":{\"allowUndo\":true,\"currentContent\":{\"entityMap\":{},\"blockMap\":{\"a4ojd\":{\"key\":\"a4ojd\",\"type\":\"unstyled\",\"text\":\"\",\"characterList\":[],\"depth\":0,\"data\":{}}},\"selectionBefore\":{\"anchorKey\":\"a4ojd\",\"anchorOffset\":0,\"focusKey\":\"a4ojd\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false},\"selectionAfter\":{\"anchorKey\":\"a4ojd\",\"anchorOffset\":0,\"focusKey\":\"a4ojd\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false}},\"decorator\":{\"decorators\":[{\"_decorators\":[]},{\"_decorators\":[{}]}]},\"directionMap\":{\"a4ojd\":\"LTR\"},\"forceSelection\":false,\"inCompositionMode\":false,\"inlineStyleOverride\":null,\"lastChangeType\":null,\"nativelyRenderedContent\":null,\"redoStack\":[],\"selection\":{\"anchorKey\":\"a4ojd\",\"anchorOffset\":0,\"focusKey\":\"a4ojd\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false},\"treeMap\":{\"a4ojd\":[{\"start\":0,\"end\":0,\"decoratorKey\":null,\"leaves\":[{\"start\":0,\"end\":0}]}]},\"undoStack\":[]},\"convertOptions\":{\"fontFamilies\":[{\"name\":\"Araial\",\"family\":\"Arial, Helvetica, sans-serif\"},{\"name\":\"Georgia\",\"family\":\"Georgia, serif\"},{\"name\":\"Impact\",\"family\":\"Impact, serif\"},{\"name\":\"Monospace\",\"family\":\"\\\"Courier New\\\", Courier, monospace\"},{\"name\":\"Tahoma\",\"family\":\"tahoma, arial, \\\"Hiragino Sans GB\\\", 宋体, sans-serif\"}]}}',26,'','2019-01-26 01:30:57.264000','2019-01-26 01:30:57.264000'),(14,'','{\"_immutable\":{\"allowUndo\":true,\"currentContent\":{\"entityMap\":{},\"blockMap\":{\"ebern\":{\"key\":\"ebern\",\"type\":\"unstyled\",\"text\":\"\",\"characterList\":[],\"depth\":0,\"data\":{}}},\"selectionBefore\":{\"anchorKey\":\"ebern\",\"anchorOffset\":0,\"focusKey\":\"ebern\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false},\"selectionAfter\":{\"anchorKey\":\"ebern\",\"anchorOffset\":0,\"focusKey\":\"ebern\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false}},\"decorator\":{\"decorators\":[{\"_decorators\":[]},{\"_decorators\":[{}]}]},\"directionMap\":{\"ebern\":\"LTR\"},\"forceSelection\":false,\"inCompositionMode\":false,\"inlineStyleOverride\":null,\"lastChangeType\":null,\"nativelyRenderedContent\":null,\"redoStack\":[],\"selection\":{\"anchorKey\":\"ebern\",\"anchorOffset\":0,\"focusKey\":\"ebern\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false},\"treeMap\":{\"ebern\":[{\"start\":0,\"end\":0,\"decoratorKey\":null,\"leaves\":[{\"start\":0,\"end\":0}]}]},\"undoStack\":[]},\"convertOptions\":{\"fontFamilies\":[{\"name\":\"Araial\",\"family\":\"Arial, Helvetica, sans-serif\"},{\"name\":\"Georgia\",\"family\":\"Georgia, serif\"},{\"name\":\"Impact\",\"family\":\"Impact, serif\"},{\"name\":\"Monospace\",\"family\":\"\\\"Courier New\\\", Courier, monospace\"},{\"name\":\"Tahoma\",\"family\":\"tahoma, arial, \\\"Hiragino Sans GB\\\", 宋体, sans-serif\"}]}}',27,'','2019-01-26 02:30:24.145000','2019-01-26 02:30:24.145000'),(15,'fsadfsad','{\"_immutable\":{\"allowUndo\":true,\"currentContent\":{\"entityMap\":{},\"blockMap\":{\"3iv66\":{\"key\":\"3iv66\",\"type\":\"unstyled\",\"text\":\"afsghjkbbkbkbkbkbkbkbabsdfgas\",\"characterList\":[{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null}],\"depth\":0,\"data\":{}}},\"selectionBefore\":{\"anchorKey\":\"3iv66\",\"anchorOffset\":0,\"focusKey\":\"3iv66\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":true},\"selectionAfter\":{\"anchorKey\":\"3iv66\",\"anchorOffset\":29,\"focusKey\":\"3iv66\",\"focusOffset\":29,\"isBackward\":false,\"hasFocus\":true}},\"decorator\":{\"decorators\":[{\"_decorators\":[]},{\"_decorators\":[{}]}]},\"directionMap\":{\"3iv66\":\"LTR\"},\"forceSelection\":false,\"inCompositionMode\":false,\"inlineStyleOverride\":null,\"lastChangeType\":\"insert-characters\",\"nativelyRenderedContent\":null,\"redoStack\":[],\"selection\":{\"anchorKey\":\"3iv66\",\"anchorOffset\":29,\"focusKey\":\"3iv66\",\"focusOffset\":29,\"isBackward\":false,\"hasFocus\":false},\"treeMap\":{\"3iv66\":[{\"start\":0,\"end\":29,\"decoratorKey\":null,\"leaves\":[{\"start\":0,\"end\":29}]}]},\"undoStack\":[{\"entityMap\":{},\"blockMap\":{\"3iv66\":{\"key\":\"3iv66\",\"type\":\"unstyled\",\"text\":\"\",\"characterList\":[],\"depth\":0,\"data\":{}}},\"selectionBefore\":{\"anchorKey\":\"3iv66\",\"anchorOffset\":0,\"focusKey\":\"3iv66\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false},\"selectionAfter\":{\"anchorKey\":\"3iv66\",\"anchorOffset\":0,\"focusKey\":\"3iv66\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false}}]},\"convertOptions\":{\"fontFamilies\":[{\"name\":\"Araial\",\"family\":\"Arial, Helvetica, sans-serif\"},{\"name\":\"Georgia\",\"family\":\"Georgia, serif\"},{\"name\":\"Impact\",\"family\":\"Impact, serif\"},{\"name\":\"Monospace\",\"family\":\"\\\"Courier New\\\", Courier, monospace\"},{\"name\":\"Tahoma\",\"family\":\"tahoma, arial, \\\"Hiragino Sans GB\\\", 宋体, sans-serif\"}]}}',28,'fdsafdsafdsa','2019-01-29 01:26:32.101000','2019-01-29 01:26:32.101000'),(16,'1212','{\"_immutable\":{\"allowUndo\":true,\"currentContent\":{\"entityMap\":{},\"blockMap\":{\"85esa\":{\"key\":\"85esa\",\"type\":\"unstyled\",\"text\":\"你好啊，小菊\",\"characterList\":[{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null},{\"style\":[],\"entity\":null}],\"depth\":0,\"data\":{}}},\"selectionBefore\":{\"anchorKey\":\"85esa\",\"anchorOffset\":0,\"focusKey\":\"85esa\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":true},\"selectionAfter\":{\"anchorKey\":\"85esa\",\"anchorOffset\":6,\"focusKey\":\"85esa\",\"focusOffset\":6,\"isBackward\":false,\"hasFocus\":true}},\"decorator\":{\"decorators\":[{\"_decorators\":[]},{\"_decorators\":[{}]}]},\"directionMap\":{\"85esa\":\"LTR\"},\"forceSelection\":false,\"inCompositionMode\":false,\"inlineStyleOverride\":null,\"lastChangeType\":\"insert-characters\",\"nativelyRenderedContent\":null,\"redoStack\":[],\"selection\":{\"anchorKey\":\"85esa\",\"anchorOffset\":6,\"focusKey\":\"85esa\",\"focusOffset\":6,\"isBackward\":false,\"hasFocus\":false},\"treeMap\":{\"85esa\":[{\"start\":0,\"end\":6,\"decoratorKey\":null,\"leaves\":[{\"start\":0,\"end\":6}]}]},\"undoStack\":[{\"entityMap\":{},\"blockMap\":{\"85esa\":{\"key\":\"85esa\",\"type\":\"unstyled\",\"text\":\"\",\"characterList\":[],\"depth\":0,\"data\":{}}},\"selectionBefore\":{\"anchorKey\":\"85esa\",\"anchorOffset\":0,\"focusKey\":\"85esa\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false},\"selectionAfter\":{\"anchorKey\":\"85esa\",\"anchorOffset\":0,\"focusKey\":\"85esa\",\"focusOffset\":0,\"isBackward\":false,\"hasFocus\":false}}]},\"convertOptions\":{\"fontFamilies\":[{\"name\":\"Araial\",\"family\":\"Arial, Helvetica, sans-serif\"},{\"name\":\"Georgia\",\"family\":\"Georgia, serif\"},{\"name\":\"Impact\",\"family\":\"Impact, serif\"},{\"name\":\"Monospace\",\"family\":\"\\\"Courier New\\\", Courier, monospace\"},{\"name\":\"Tahoma\",\"family\":\"tahoma, arial, \\\"Hiragino Sans GB\\\", 宋体, sans-serif\"}]}}',29,'12','2019-01-30 13:28:41.522000','2019-01-30 13:28:41.522000'),(17,'我喜欢要聚','\"{\\\"blocks\\\":[{\\\"key\\\":\\\"1et1p\\\",\\\"text\\\":\\\"woxihuanyapojv\\\",\\\"type\\\":\\\"unstyled\\\",\\\"depth\\\":0,\\\"inlineStyleRanges\\\":[],\\\"entityRanges\\\":[],\\\"data\\\":{}}],\\\"entityMap\\\":{}}\"',34,'我喜欢要聚','2019-01-30 17:04:00.489000','2019-01-30 17:04:00.489000'),(18,'111111111111','\"{\\\"blocks\\\":[{\\\"key\\\":\\\"68d5l\\\",\\\"text\\\":\\\"1222213124312fsa4312我喜欢你小菊\\\",\\\"type\\\":\\\"unstyled\\\",\\\"depth\\\":0,\\\"inlineStyleRanges\\\":[],\\\"entityRanges\\\":[],\\\"data\\\":{}}],\\\"entityMap\\\":{}}\"',47,'woxihuannnnnn','2019-01-31 18:41:24.205000','2019-01-30 17:06:03.283000');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `pictures` (
  `picture_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `create_at` timestamp(6) NULL DEFAULT NULL,
  `update_at` timestamp(6) NULL DEFAULT NULL,
  `picture_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (1,'fdafs',NULL,'2019-01-24 07:37:17.524000','2019-01-24 07:37:17.524000','fdafs_1548315437476'),(2,'fdafs',NULL,'2019-01-24 07:38:45.025000','2019-01-24 07:38:45.025000','upload/fdafs_1548315524991.png'),(3,'fdafs',NULL,'2019-01-24 07:58:22.386000','2019-01-24 07:58:22.386000','upload/fdafs_1548316702383.png'),(4,'fdafs',NULL,'2019-01-24 08:06:09.155000','2019-01-24 08:06:09.155000','upload/fdafs_1548317169154.png'),(5,'fdafs',NULL,'2019-01-24 08:06:46.199000','2019-01-24 08:06:46.199000','upload/fdafs_1548317206199.png'),(6,'fdafs',NULL,'2019-01-24 08:09:01.384000','2019-01-24 08:09:01.384000','upload/fdafs_1548317341383.png'),(7,'fdafs',NULL,'2019-01-24 08:32:01.648000','2019-01-24 08:32:01.648000','upload/fdafs_1548318721622.png'),(8,'fdafs',NULL,'2019-01-24 08:33:01.488000','2019-01-24 08:33:01.488000','upload/fdafs_1548318781487.png'),(9,'fdafs',NULL,'2019-01-24 08:34:13.174000','2019-01-24 08:34:13.174000','upload/fdafs_1548318853173.png'),(10,'fdafs',NULL,'2019-01-24 08:34:24.539000','2019-01-24 08:34:24.539000','upload/fdafs_1548318864539.png'),(11,'fdafs',NULL,'2019-01-24 08:35:49.414000','2019-01-24 08:35:49.414000','upload/fdafs_1548318949400.png'),(12,'fdafs',NULL,'2019-01-24 08:37:29.812000','2019-01-24 08:37:29.812000','upload/fdafs_1548319049811.png'),(13,'fdafs',NULL,'2019-01-24 08:38:28.320000','2019-01-24 08:38:28.320000','upload/fdafs_1548319108305.png'),(14,'fdafs',NULL,'2019-01-24 08:39:02.087000','2019-01-24 08:39:02.087000','upload/fdafs_1548319142069.png'),(15,'fdafs',NULL,'2019-01-24 08:40:15.851000','2019-01-24 08:40:15.851000','upload/fdafs_1548319215849.png'),(16,'fdafs',NULL,'2019-01-24 08:41:20.586000','2019-01-24 08:41:20.586000','upload/fdafs_1548319280553.png'),(17,'fdafs',NULL,'2019-01-24 08:42:47.417000','2019-01-24 08:42:47.417000','upload/fdafs_1548319367395.png'),(18,'fdafs',NULL,'2019-01-24 08:43:44.681000','2019-01-24 08:43:44.681000','upload/fdafs_1548319424677.png'),(19,'fdafs',NULL,'2019-01-24 08:45:11.688000','2019-01-24 08:45:11.688000','upload/fdafs_1548319511646.png'),(20,'fdafs',NULL,'2019-01-24 08:46:31.767000','2019-01-24 08:46:31.767000','upload/fdafs_1548319591740.png'),(21,'fdafs',NULL,'2019-01-24 08:47:31.508000','2019-01-24 08:47:31.508000','upload/fdafs_1548319651504.png'),(22,'fdafs',NULL,'2019-01-24 08:48:25.203000','2019-01-24 08:48:25.203000','upload/fdafs_1548319705194.png'),(23,'fdafs',NULL,'2019-01-24 08:48:37.253000','2019-01-24 08:48:37.253000','upload/fdafs_1548319717252.png'),(24,'fdafs',NULL,'2019-01-24 08:49:43.318000','2019-01-24 08:49:43.318000','upload/fdafs_1548319783304.png'),(25,'fdafs',NULL,'2019-01-24 08:50:11.377000','2019-01-24 08:50:11.377000','upload/fdafs_1548319811375.png'),(26,'fdafs',NULL,'2019-01-26 01:30:56.760000','2019-01-26 01:30:56.760000','upload/fdafs_1548466256757.png'),(27,'fdafs',NULL,'2019-01-26 02:30:24.009000','2019-01-26 02:30:24.009000','upload/fdafs_1548469824001.png'),(28,'fdafs',NULL,'2019-01-29 01:26:31.939000','2019-01-29 01:26:31.939000','upload/fdafs_1548725191934.png'),(29,'fdafs',NULL,'2019-01-30 13:28:41.327000','2019-01-30 13:28:41.327000','upload/fdafs_1548854921323.png'),(30,'fdafs',NULL,'2019-01-30 16:36:35.808000','2019-01-30 16:36:35.808000','upload/fdafs_1548866195807.png'),(31,'fdafs',NULL,'2019-01-30 16:40:01.847000','2019-01-30 16:40:01.847000','upload/fdafs_1548866401847.png'),(32,'fdafs',NULL,'2019-01-30 16:42:29.617000','2019-01-30 16:42:29.617000','upload/fdafs_1548866549617.png'),(33,'fdafs',NULL,'2019-01-30 16:52:50.275000','2019-01-30 16:52:50.275000','upload/fdafs_1548867170274.png'),(34,'fdafs',NULL,'2019-01-30 17:04:00.245000','2019-01-30 17:04:00.245000','upload/fdafs_1548867840245.png'),(35,'fdafs',NULL,'2019-01-30 17:06:03.055000','2019-01-30 17:06:03.055000','upload/fdafs_1548867963046.png'),(36,'fdafs',NULL,'2019-01-30 21:57:26.931000','2019-01-30 21:57:26.931000','upload/fdafs_1548885446905.png'),(37,'fdafs',NULL,'2019-01-30 21:57:47.435000','2019-01-30 21:57:47.435000','upload/fdafs_1548885467431.png'),(38,'fdafs',NULL,'2019-01-30 22:05:34.837000','2019-01-30 22:05:34.837000','upload/fdafs_1548885934788.png'),(39,'fdafs',NULL,'2019-01-30 22:06:24.853000','2019-01-30 22:06:24.853000','upload/fdafs_1548885984852.png'),(40,'fdafs',NULL,'2019-01-31 04:37:25.923000','2019-01-31 04:37:25.923000','upload/fdafs_1548909445922.png'),(41,'fdafs',NULL,'2019-01-31 18:21:29.802000','2019-01-31 18:21:29.802000','upload/fdafs_1548958889794.png'),(42,'fdafs',NULL,'2019-01-31 18:23:08.494000','2019-01-31 18:23:08.494000','upload/fdafs_1548958988493.png'),(43,'fdafs',NULL,'2019-01-31 18:26:31.789000','2019-01-31 18:26:31.789000','upload/fdafs_1548959191739.png'),(44,'fdafs',NULL,'2019-01-31 18:34:57.704000','2019-01-31 18:34:57.704000','upload/fdafs_1548959697670.png'),(45,'fdafs',NULL,'2019-01-31 18:35:50.391000','2019-01-31 18:35:50.391000','upload/fdafs_1548959750354.png'),(46,'fdafs',NULL,'2019-01-31 18:38:43.737000','2019-01-31 18:38:43.737000','upload/fdafs_1548959923692.png'),(47,'fdafs',NULL,'2019-01-31 18:41:23.589000','2019-01-31 18:41:23.589000','upload/fdafs_1548960083544.png');
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `create_at` timestamp(6) NULL DEFAULT NULL,
  `update_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lutherblog'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-01  2:43:20
