-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: laravel-shop
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

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
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'首页','fa-bar-chart','/',NULL,'2018-10-02 10:12:57'),(2,0,4,'系统管理','fa-tasks',NULL,NULL,'2018-10-02 23:54:28'),(3,2,5,'管理员','fa-users','auth/users',NULL,'2018-10-02 23:54:28'),(4,2,6,'角色','fa-user','auth/roles',NULL,'2018-10-02 23:54:28'),(5,2,7,'权限','fa-ban','auth/permissions',NULL,'2018-10-02 23:54:28'),(6,2,8,'菜单','fa-bars','auth/menu',NULL,'2018-10-02 23:54:28'),(7,2,9,'操作日志','fa-history','auth/logs',NULL,'2018-10-02 23:54:28'),(8,0,2,'用户管理','fa-users','/users','2018-10-02 10:16:08','2018-10-02 10:16:21'),(9,0,3,'商品管理','fa-cubes','/products','2018-10-02 23:54:20','2018-10-02 23:54:28');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','192.168.10.1','[]','2018-10-02 08:47:39','2018-10-02 08:47:39'),(2,1,'admin/auth/login','POST','192.168.10.1','{\"username\":\"admin\",\"password\":\"admin\",\"_token\":\"LTGsVyLGrenV72V8lFUkY9Bl5j6QzTCLxuEvKe7A\"}','2018-10-02 08:47:39','2018-10-02 08:47:39'),(3,1,'admin','GET','192.168.10.1','[]','2018-10-02 08:47:40','2018-10-02 08:47:40'),(4,1,'admin/auth/login','POST','192.168.10.1','{\"username\":\"admin\",\"password\":\"admin\",\"_token\":\"LTGsVyLGrenV72V8lFUkY9Bl5j6QzTCLxuEvKe7A\"}','2018-10-02 08:47:42','2018-10-02 08:47:42'),(5,1,'admin','GET','192.168.10.1','[]','2018-10-02 08:49:09','2018-10-02 08:49:09'),(6,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 08:52:19','2018-10-02 08:52:19'),(7,1,'admin','GET','192.168.10.1','[]','2018-10-02 08:53:13','2018-10-02 08:53:13'),(8,1,'admin','GET','192.168.10.1','[]','2018-10-02 10:12:24','2018-10-02 10:12:24'),(9,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:12:37','2018-10-02 10:12:37'),(10,1,'admin/auth/menu/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:12:45','2018-10-02 10:12:45'),(11,1,'admin/auth/menu/1','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/menu\"}','2018-10-02 10:12:57','2018-10-02 10:12:57'),(12,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:12:57','2018-10-02 10:12:57'),(13,1,'admin/auth/menu/2/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:13:08','2018-10-02 10:13:08'),(14,1,'admin/auth/menu/2','PUT','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/menu\"}','2018-10-02 10:13:16','2018-10-02 10:13:16'),(15,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:13:16','2018-10-02 10:13:16'),(16,1,'admin/auth/menu/3/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:13:20','2018-10-02 10:13:20'),(17,1,'admin/auth/menu/3','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/menu\"}','2018-10-02 10:13:33','2018-10-02 10:13:33'),(18,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:13:33','2018-10-02 10:13:33'),(19,1,'admin/auth/menu/4/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:13:37','2018-10-02 10:13:37'),(20,1,'admin/auth/menu/4','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/menu\"}','2018-10-02 10:13:42','2018-10-02 10:13:42'),(21,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:13:43','2018-10-02 10:13:43'),(22,1,'admin/auth/menu/5/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:13:46','2018-10-02 10:13:46'),(23,1,'admin/auth/menu/5','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/menu\"}','2018-10-02 10:13:59','2018-10-02 10:13:59'),(24,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:13:59','2018-10-02 10:13:59'),(25,1,'admin/auth/menu/6/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:14:02','2018-10-02 10:14:02'),(26,1,'admin/auth/menu/6','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/menu\"}','2018-10-02 10:14:08','2018-10-02 10:14:08'),(27,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:14:08','2018-10-02 10:14:08'),(28,1,'admin/auth/menu/7/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:14:12','2018-10-02 10:14:12'),(29,1,'admin/auth/menu/7','PUT','192.168.10.1','{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/menu\"}','2018-10-02 10:14:19','2018-10-02 10:14:19'),(30,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:14:19','2018-10-02 10:14:19'),(31,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:14:29','2018-10-02 10:14:29'),(32,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:15:13','2018-10-02 10:15:13'),(33,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\"}','2018-10-02 10:16:07','2018-10-02 10:16:07'),(34,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 10:16:09','2018-10-02 10:16:09'),(35,1,'admin/auth/menu','POST','192.168.10.1','{\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2018-10-02 10:16:21','2018-10-02 10:16:21'),(36,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:16:21','2018-10-02 10:16:21'),(37,1,'admin/auth/permissions','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:17:05','2018-10-02 10:17:05'),(38,1,'admin/auth/permissions/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:17:17','2018-10-02 10:17:17'),(39,1,'admin/auth/permissions','POST','192.168.10.1','{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users\",\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/permissions\"}','2018-10-02 10:17:42','2018-10-02 10:17:42'),(40,1,'admin/auth/permissions','GET','192.168.10.1','[]','2018-10-02 10:17:43','2018-10-02 10:17:43'),(41,1,'admin/auth/permissions/6/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:17:56','2018-10-02 10:17:56'),(42,1,'admin/auth/permissions/6','PUT','192.168.10.1','{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/permissions\"}','2018-10-02 10:18:07','2018-10-02 10:18:07'),(43,1,'admin/auth/permissions','GET','192.168.10.1','[]','2018-10-02 10:18:07','2018-10-02 10:18:07'),(44,1,'admin/auth/roles','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:18:17','2018-10-02 10:18:17'),(45,1,'admin/auth/roles/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:18:21','2018-10-02 10:18:21'),(46,1,'admin/auth/roles/1','PUT','192.168.10.1','{\"slug\":\"administrator\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/roles\"}','2018-10-02 10:18:50','2018-10-02 10:18:50'),(47,1,'admin/auth/roles','GET','192.168.10.1','[]','2018-10-02 10:18:51','2018-10-02 10:18:51'),(48,1,'admin/auth/roles/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:18:55','2018-10-02 10:18:55'),(49,1,'admin/auth/roles/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 10:18:56','2018-10-02 10:18:56'),(50,1,'admin/auth/roles/create','GET','192.168.10.1','[]','2018-10-02 23:46:22','2018-10-02 23:46:22'),(51,1,'admin/auth/roles','POST','192.168.10.1','{\"slug\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\"}','2018-10-02 23:46:44','2018-10-02 23:46:44'),(52,1,'admin/auth/roles','GET','192.168.10.1','[]','2018-10-02 23:46:45','2018-10-02 23:46:45'),(53,1,'admin/auth/users','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:47:04','2018-10-02 23:47:04'),(54,1,'admin/auth/users/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:47:07','2018-10-02 23:47:07'),(55,1,'admin/auth/users','POST','192.168.10.1','{\"username\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"1234567\",\"password_confirmation\":\"1234567\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"KgrzwkfOSWtD0M8qx0ITsbOQKCi1KwUeb46e62Ea\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/users\"}','2018-10-02 23:47:50','2018-10-02 23:47:50'),(56,1,'admin/auth/users','GET','192.168.10.1','[]','2018-10-02 23:47:50','2018-10-02 23:47:50'),(57,1,'admin/auth/logout','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:48:14','2018-10-02 23:48:14'),(58,2,'admin','GET','192.168.10.1','[]','2018-10-02 23:48:20','2018-10-02 23:48:20'),(59,2,'admin/users','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:48:24','2018-10-02 23:48:24'),(60,2,'admin/auth/logout','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:48:29','2018-10-02 23:48:29'),(61,1,'admin','GET','192.168.10.1','[]','2018-10-02 23:48:36','2018-10-02 23:48:36'),(62,1,'admin/auth/users','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:48:46','2018-10-02 23:48:46'),(63,1,'admin/auth/roles','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:48:47','2018-10-02 23:48:47'),(64,1,'admin/users','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:48:54','2018-10-02 23:48:54'),(65,1,'admin/auth/users','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:48:57','2018-10-02 23:48:57'),(66,1,'admin/auth/users/1/edit','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:49:00','2018-10-02 23:49:00'),(67,1,'admin/auth/users/1','PUT','192.168.10.1','{\"username\":\"admin\",\"name\":\"\\u8d85\\u7ea7\\u7ba1\\u7406\\u5458\",\"password\":\"$2y$10$Oof3u.gp.pctdtEYkjbMc.3Ha4NjKY1YxOGWCBDImqgqUoGOLQ\\/oG\",\"password_confirmation\":\"$2y$10$Oof3u.gp.pctdtEYkjbMc.3Ha4NjKY1YxOGWCBDImqgqUoGOLQ\\/oG\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"t4Kbq5M4L9gY3nPI9jySX1IbNkyGNVIXi9Ak754g\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/shoujitaobao.smapp\\/admin\\/auth\\/users\"}','2018-10-02 23:51:05','2018-10-02 23:51:05'),(68,1,'admin/auth/users','GET','192.168.10.1','[]','2018-10-02 23:51:06','2018-10-02 23:51:06'),(69,1,'admin/auth/users','GET','192.168.10.1','[]','2018-10-02 23:51:10','2018-10-02 23:51:10'),(70,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:53:55','2018-10-02 23:53:55'),(71,1,'admin/auth/menu','POST','192.168.10.1','{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"_token\":\"t4Kbq5M4L9gY3nPI9jySX1IbNkyGNVIXi9Ak754g\"}','2018-10-02 23:54:20','2018-10-02 23:54:20'),(72,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 23:54:21','2018-10-02 23:54:21'),(73,1,'admin/auth/menu','POST','192.168.10.1','{\"_token\":\"t4Kbq5M4L9gY3nPI9jySX1IbNkyGNVIXi9Ak754g\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2018-10-02 23:54:28','2018-10-02 23:54:28'),(74,1,'admin/auth/menu','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:54:29','2018-10-02 23:54:29'),(75,1,'admin/auth/menu','GET','192.168.10.1','[]','2018-10-02 23:54:38','2018-10-02 23:54:38'),(76,1,'admin/products','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:54:44','2018-10-02 23:54:44'),(77,1,'admin/products/create','GET','192.168.10.1','{\"_pjax\":\"#pjax-container\"}','2018-10-02 23:55:10','2018-10-02 23:55:10');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2018-10-02 10:17:42','2018-10-02 10:18:07');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'超级管理员','administrator','2018-10-02 08:47:21','2018-10-02 10:18:50'),(2,'运营','operator','2018-10-02 23:46:44','2018-10-02 23:46:44');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$Oof3u.gp.pctdtEYkjbMc.3Ha4NjKY1YxOGWCBDImqgqUoGOLQ/oG','超级管理员','images/WechatIMG15.jpeg','ErjT0Xqxc4IvUGSPltUyt9WDBoigRZgngUDYNreqhQRJ1EeKbX46sTgzjTYv','2018-10-02 08:47:21','2018-10-02 23:51:05'),(2,'operator','$2y$10$SmcnjBZH7yz0dbW0YVNF3uws4GUTe.EealKnNa8tjClJCEvQwZVUG','运营','images/1FECA33884FE4813C3A17416B.png','JX4EHNyWQGQv5A8OzlzctoGSDTjHvHIpyKntoaeWEW5O5RmpqPzvrkz8UQhT','2018-10-02 23:47:50','2018-10-02 23:47:50');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_sku_id` int(10) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_user_id_foreign` (`user_id`),
  KEY `cart_items_product_sku_id_foreign` (`product_sku_id`),
  CONSTRAINT `cart_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_04_173148_create_admin_tables',1),(4,'2018_09_24_062452_users_add_email_verified',1),(5,'2018_09_24_075646_create_user_addresses_table',1),(6,'2018_09_24_112707_create_products_table',1),(7,'2018_09_24_112738_create_product_skus_table',1),(8,'2018_09_24_130325_create_user_favorite_products_table',1),(9,'2018_09_24_141754_create_cart_items_table',1),(10,'2018_09_24_144045_create_orders_table',1),(11,'2018_09_24_144545_create_order_items_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_sku_id` int(10) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rating` int(10) unsigned DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_product_sku_id_foreign` (`product_sku_id`),
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(8,2) NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `paid_at` datetime DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `ship_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_no_unique` (`no`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_skus`
--

DROP TABLE IF EXISTS `product_skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_skus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_skus_product_id_foreign` (`product_id`),
  CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_skus`
--

LOCK TABLES `product_skus` WRITE;
/*!40000 ALTER TABLE `product_skus` DISABLE KEYS */;
INSERT INTO `product_skus` VALUES (1,'pariatur','Aut et ipsum eum tenetur nostrum.',453.00,76393,1,'2018-10-02 23:53:17','2018-10-02 23:53:17'),(2,'excepturi','Velit eaque ullam quia dolores molestias deserunt expedita laborum.',6357.00,59428,1,'2018-10-02 23:53:17','2018-10-02 23:53:17'),(3,'id','Voluptatibus non sunt rerum aliquid.',8951.00,57619,1,'2018-10-02 23:53:17','2018-10-02 23:53:17'),(4,'labore','Illo dolore consectetur et dolores quasi provident beatae.',3207.00,23428,2,'2018-10-02 23:53:17','2018-10-02 23:53:17'),(5,'eaque','Omnis quia est vitae laboriosam in molestiae.',1434.00,44521,2,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(6,'aliquam','Aut ut eum repudiandae adipisci aut dolorem.',6244.00,20768,2,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(7,'voluptatum','Unde eum iusto recusandae maiores dolores voluptatem sint quasi.',3038.00,21119,3,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(8,'qui','Quidem architecto perferendis tenetur tenetur unde.',4383.00,57988,3,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(9,'recusandae','Dolor aspernatur veniam quia molestiae est animi rerum.',6799.00,11683,3,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(10,'sed','Voluptatem non ipsa aperiam.',9301.00,80418,4,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(11,'dolore','Quasi doloribus provident ratione odit eos est.',1327.00,50525,4,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(12,'quibusdam','A et dignissimos sed eius.',8523.00,95225,4,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(13,'voluptatibus','At et eligendi voluptatum sed modi consequatur hic est.',1842.00,64818,5,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(14,'voluptatem','Et reiciendis fugiat dignissimos autem non.',8059.00,3892,5,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(15,'explicabo','Ab autem consequatur temporibus quidem dolore.',889.00,59548,5,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(16,'aliquam','Reiciendis at nulla tenetur sit at.',7376.00,89884,6,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(17,'nesciunt','In sit dolorem blanditiis.',1463.00,92482,6,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(18,'labore','Est molestiae nihil iusto animi.',1762.00,90219,6,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(19,'molestiae','Facilis aut quo consequatur.',1643.00,34233,7,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(20,'vel','Est possimus voluptatem eligendi ea libero nam et.',2290.00,57369,7,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(21,'ad','A sed reprehenderit eum ut perspiciatis cumque earum.',7297.00,50660,7,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(22,'qui','Velit et magni eos ullam explicabo.',6306.00,86782,8,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(23,'quisquam','Sed deleniti quia labore omnis sunt.',3431.00,55793,8,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(24,'vero','Voluptatibus cum est distinctio tempora mollitia.',1563.00,87760,8,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(25,'voluptatibus','Consequatur aliquid ducimus in reiciendis.',5006.00,74201,9,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(26,'sed','Ex non qui aliquam quaerat.',9733.00,43137,9,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(27,'doloremque','Veniam placeat enim qui ducimus.',4782.00,62974,9,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(28,'dolor','Saepe quae rerum sequi id.',4107.00,31549,10,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(29,'tempore','Qui reprehenderit consequatur tenetur saepe aut omnis blanditiis.',585.00,58640,10,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(30,'dolor','Aliquam non sed qui eos animi dolorem.',8892.00,77016,10,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(31,'consectetur','Reiciendis sit itaque pariatur et sequi fugit eum.',2468.00,65115,11,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(32,'neque','Est doloremque neque perspiciatis.',6610.00,33288,11,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(33,'rerum','Et ut sint optio voluptate vitae in voluptas quia.',7549.00,36026,11,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(34,'sint','Rerum qui dignissimos ipsam aperiam itaque.',8722.00,47136,12,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(35,'consequatur','Quis voluptate excepturi dolor et tempora at accusamus nulla.',6641.00,51477,12,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(36,'ipsum','Quia dolor necessitatibus illo id aut quae quia.',4923.00,16274,12,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(37,'deserunt','Laboriosam quia necessitatibus minus corporis.',7687.00,31933,13,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(38,'nemo','Nostrum magni sequi mollitia dolorem laboriosam.',636.00,45318,13,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(39,'molestiae','Velit exercitationem qui vitae impedit.',7561.00,57980,13,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(40,'et','Aut ad aliquam ut eveniet consequatur est voluptatem dolorem.',8722.00,87601,14,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(41,'sequi','Nisi est magnam voluptatem.',5859.00,86907,14,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(42,'maiores','Et eum porro voluptatem voluptatibus aut.',155.00,17071,14,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(43,'perferendis','Et voluptatem totam asperiores.',2857.00,36354,15,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(44,'nostrum','Nihil consequatur non vel velit.',2002.00,41077,15,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(45,'aspernatur','Voluptas et nulla sint molestias beatae harum dolores.',5268.00,77118,15,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(46,'est','Quod voluptatum officiis recusandae autem architecto numquam repudiandae.',1254.00,95954,16,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(47,'ut','Necessitatibus excepturi quis quia error asperiores inventore.',4008.00,9889,16,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(48,'recusandae','Provident et molestias natus non.',1351.00,33347,16,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(49,'harum','Possimus explicabo officia amet libero et debitis eum eum.',2234.00,41645,17,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(50,'quia','Ab sit cum eum et.',3762.00,13245,17,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(51,'quisquam','Suscipit nostrum aut sit quis quod nobis alias.',1571.00,10399,17,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(52,'amet','Delectus voluptatem commodi qui ad.',8469.00,99849,18,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(53,'vel','Consequatur neque vel nihil aliquam.',8776.00,85933,18,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(54,'amet','Laboriosam ut voluptatem est et porro.',6506.00,66447,18,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(55,'a','Rerum eaque aut perspiciatis est.',181.00,52956,19,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(56,'sint','Nulla iusto beatae molestiae ullam est pariatur tempore.',4705.00,47811,19,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(57,'numquam','Eaque rerum porro quis nostrum.',982.00,13571,19,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(58,'nesciunt','Quos aspernatur sunt harum id.',432.00,68491,20,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(59,'placeat','Nam quidem deserunt ducimus nesciunt ut repudiandae veniam dicta.',2614.00,56627,20,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(60,'nisi','Sunt consequatur commodi eos facere unde qui.',5363.00,36850,20,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(61,'tempora','Omnis aspernatur nihil occaecati rerum.',4311.00,54922,21,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(62,'ut','Soluta aperiam deserunt mollitia qui facere et.',5256.00,94959,21,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(63,'ullam','Nihil ut excepturi illo repellendus animi quia.',3377.00,98585,21,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(64,'adipisci','Quisquam error nihil tenetur omnis itaque voluptatem ut non.',5322.00,88886,22,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(65,'qui','Excepturi iure tenetur eos esse unde soluta quis.',3917.00,34719,22,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(66,'voluptatem','Distinctio perspiciatis omnis et voluptatem incidunt.',3017.00,66828,22,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(67,'sed','Doloribus architecto hic rerum possimus odio.',9409.00,87746,23,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(68,'doloribus','Itaque molestias magni a ab amet dicta praesentium.',3977.00,55813,23,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(69,'sapiente','Neque et excepturi necessitatibus expedita minima facere.',5898.00,2226,23,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(70,'rerum','Sit illo ut autem quae provident ipsa ut consequatur.',9371.00,66333,24,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(71,'quae','Nemo neque distinctio neque tempore.',7459.00,69040,24,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(72,'id','Dignissimos commodi suscipit tempora perferendis nulla.',2168.00,76343,24,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(73,'quibusdam','Voluptatem porro qui ea.',3447.00,1466,25,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(74,'quibusdam','Omnis tempora quod et eum.',2234.00,10200,25,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(75,'repellat','Aut libero labore laudantium provident nostrum et ipsam dolores.',1195.00,41029,25,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(76,'reiciendis','Voluptatem et nisi beatae aut eius aut.',7683.00,4305,26,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(77,'ipsam','Nostrum optio corporis inventore ut.',6637.00,35568,26,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(78,'vero','Asperiores rerum praesentium exercitationem id saepe error nam.',3326.00,97553,26,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(79,'quibusdam','Quis libero voluptas dolor quo sed exercitationem qui.',8709.00,91286,27,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(80,'hic','Magnam voluptatem omnis qui vel.',406.00,79284,27,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(81,'amet','Commodi asperiores excepturi dolores voluptatum id.',8514.00,5288,27,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(82,'pariatur','Laudantium beatae est accusantium ea magni non ipsa.',2878.00,90930,28,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(83,'et','Est aperiam accusamus dolores enim.',7895.00,84862,28,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(84,'sit','Autem quis unde aut sint inventore dolore.',6155.00,9695,28,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(85,'quos','Sed dolores ipsam dolor sed iusto.',5962.00,50524,29,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(86,'omnis','Eos quae expedita sed assumenda mollitia doloremque.',9008.00,56683,29,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(87,'nemo','Nobis ab quo voluptatem nisi natus.',6787.00,64500,29,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(88,'ea','Sed nisi natus harum magni ex molestiae.',4684.00,67781,30,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(89,'laudantium','Aut laborum nihil voluptas nihil.',7231.00,42156,30,'2018-10-02 23:53:18','2018-10-02 23:53:18'),(90,'est','Saepe aut doloremque dolor et.',5898.00,96601,30,'2018-10-02 23:53:18','2018-10-02 23:53:18');
/*!40000 ALTER TABLE `product_skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `sold_count` int(10) unsigned NOT NULL DEFAULT '0',
  `review_count` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'at','Facilis quas inventore laborum in deserunt eum fuga.','https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,5.00,0,0,453.00,'2018-10-02 23:53:17','2018-10-02 23:53:17'),(2,'ad','Cumque modi quis nam deserunt et doloremque.','https://lccdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg',1,5.00,0,0,1434.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(3,'voluptates','Molestiae soluta odit rerum impedit aut nam ad.','https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg',1,3.00,0,0,3038.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(4,'autem','Temporibus voluptas eveniet doloribus ex ut.','https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,1.00,0,0,1327.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(5,'incidunt','In commodi modi velit illum velit et dolorem.','https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,2.00,0,0,889.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(6,'amet','Nihil pariatur tempore dolore numquam et debitis sunt.','https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,3.00,0,0,1463.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(7,'maiores','Consequatur quidem at laudantium dignissimos delectus repellendus.','https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg',1,3.00,0,0,1643.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(8,'ratione','Dolores et quo eos ipsam odit numquam.','https://lccdn.phphub.org/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,1.00,0,0,1563.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(9,'voluptatum','Id et quo quo culpa ut magni.','https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg',1,2.00,0,0,4782.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(10,'sint','Voluptatem odit et laboriosam ipsum recusandae.','https://lccdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,0.00,0,0,585.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(11,'corrupti','Molestiae nihil repellendus accusamus facilis aut sint perspiciatis accusamus.','https://lccdn.phphub.org/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,2.00,0,0,2468.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(12,'qui','Nesciunt tenetur quia sunt atque.','https://lccdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,0.00,0,0,4923.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(13,'exercitationem','Illo consequatur consequatur eum occaecati praesentium omnis eligendi.','https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,1.00,0,0,636.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(14,'soluta','Quisquam impedit recusandae iste dolorem voluptas omnis.','https://lccdn.phphub.org/uploads/images/201806/01/5320/pa7DrV43Mw.jpg',1,1.00,0,0,155.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(15,'totam','A cumque eum aut ea.','https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,1.00,0,0,2002.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(16,'maiores','Nemo quos magnam vel corrupti sint et dolor.','https://lccdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,2.00,0,0,1254.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(17,'eum','Molestiae modi suscipit modi alias nostrum veniam perferendis.','https://lccdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg',1,3.00,0,0,1571.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(18,'unde','Qui vel velit ea architecto.','https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,2.00,0,0,6506.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(19,'aut','Quam impedit ex quia perferendis aut officia.','https://lccdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,2.00,0,0,181.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(20,'harum','Perspiciatis ea repellat omnis.','https://lccdn.phphub.org/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,3.00,0,0,432.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(21,'amet','Autem sint illo praesentium quisquam ut.','https://lccdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,3.00,0,0,3377.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(22,'qui','Eum dolor qui laborum provident rerum officiis hic ea.','https://lccdn.phphub.org/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,5.00,0,0,3017.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(23,'dolorum','Et officia quis ipsam.','https://lccdn.phphub.org/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,5.00,0,0,3977.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(24,'eius','Dolorem qui quo ut enim vel.','https://lccdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg',1,2.00,0,0,2168.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(25,'ea','Commodi velit ut asperiores quia pariatur quia ex.','https://lccdn.phphub.org/uploads/images/201806/01/5320/7kG1HekGK6.jpg',1,2.00,0,0,1195.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(26,'ab','Ea et amet et mollitia.','https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,4.00,0,0,3326.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(27,'nisi','Aliquam est suscipit et eveniet.','https://lccdn.phphub.org/uploads/images/201806/01/5320/C0bVuKB2nt.jpg',1,4.00,0,0,406.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(28,'qui','Sequi dolorem suscipit molestiae in a.','https://lccdn.phphub.org/uploads/images/201806/01/5320/r3BNRe4zXG.jpg',1,5.00,0,0,2878.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(29,'in','Provident nemo dolorem rerum nostrum sunt.','https://lccdn.phphub.org/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg',1,0.00,0,0,5962.00,'2018-10-02 23:53:17','2018-10-02 23:53:18'),(30,'et','Molestiae officia sit corporis corrupti molestias quia consequatur.','https://lccdn.phphub.org/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,0.00,0,0,4684.00,'2018-10-02 23:53:17','2018-10-02 23:53:18');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) unsigned NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_foreign` (`user_id`),
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favorite_products`
--

DROP TABLE IF EXISTS `user_favorite_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_favorite_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_favorite_products_user_id_foreign` (`user_id`),
  KEY `user_favorite_products_product_id_foreign` (`product_id`),
  CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorite_products`
--

LOCK TABLES `user_favorite_products` WRITE;
/*!40000 ALTER TABLE `user_favorite_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_favorite_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-02 23:59:20
