-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: mw_apptatooine
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `tblactivitylog`
--

DROP TABLE IF EXISTS `tblactivitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblactivitylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staffid` (`staffid`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblactivitylog`
--

LOCK TABLES `tblactivitylog` WRITE;
/*!40000 ALTER TABLE `tblactivitylog` DISABLE KEYS */;
INSERT INTO `tblactivitylog` VALUES (1,'Entity Delete [ID:1]','2018-03-20 07:53:28',' '),(2,'Entity Delete [ID:2]','2018-03-20 07:54:54',' '),(3,'Entity Delete [ID:3]','2018-03-20 07:55:54',' '),(4,'Entity Delete [ID:4]','2018-03-20 07:56:20',' '),(5,'Entity Delete [ID:5]','2018-03-20 08:09:46',' '),(6,'Entity Delete [ID:6]','2018-03-20 08:09:49',' '),(7,'Entity Delete [ID:7]','2018-03-20 08:24:29',' '),(8,'Staff Member Updated [ID: 1, Ahmet Gudenoglu]','2018-03-20 13:03:50','Ahmet Gudenoglu'),(9,'Entity Update [ID:9]','2018-03-30 09:35:51','Ahmet Gudenoglu'),(10,'Entity Update [ID:9]','2018-03-30 09:35:57','Ahmet Gudenoglu'),(11,'Intent Delete [ID:5]','2018-03-31 08:53:18','Ahmet Gudenoglu'),(12,'Intent Delete [ID:3]','2018-04-01 08:30:22','Ahmet Gudenoglu'),(13,'Entity Delete [ID:9]','2018-04-01 08:31:37','Ahmet Gudenoglu'),(14,'Entity Delete [ID:8]','2018-04-01 08:31:41','Ahmet Gudenoglu'),(15,'Entity Delete [ID:10]','2018-04-01 08:31:45','Ahmet Gudenoglu'),(16,'Entity Delete [ID:11]','2018-04-01 08:31:49','Ahmet Gudenoglu'),(17,'Entity Delete [ID:12]','2018-04-01 08:31:51','Ahmet Gudenoglu'),(18,'Entity Delete [ID:13]','2018-04-01 08:31:55','Ahmet Gudenoglu'),(19,'Entity Delete [ID:14]','2018-04-01 08:32:00','Ahmet Gudenoglu'),(20,'Entity Delete [ID:15]','2018-04-01 08:32:04','Ahmet Gudenoglu'),(21,'New Client Created [Mediaworks d.o.o. From Staff: 1]','2018-04-01 09:42:40','Ahmet Gudenoglu'),(22,'Contact Created [Demo Demo]','2018-04-01 09:43:19','Ahmet Gudenoglu'),(23,'Agent Delete [ID:1]','2018-04-01 11:45:25',NULL),(24,'Agent Delete [ID:2]','2018-04-01 11:48:24',NULL),(25,'Agent Delete [ID:2]','2018-04-01 11:50:37',NULL),(26,'New Agent Created [ID:3]','2018-04-01 12:29:43',NULL),(27,'New Agent Created [ID:4]','2018-04-01 12:29:51',NULL),(28,'Agent Delete [ID:3]','2018-04-01 12:29:56',NULL),(29,'Agent Delete [ID:4]','2018-04-01 12:29:58',NULL),(30,'New Agent Created [ID:5]','2018-04-01 13:15:47',NULL),(31,'Agent Delete [ID:5]','2018-04-01 13:38:57',NULL),(32,'New Agent Created [ID:6]','2018-04-01 13:39:11',NULL),(33,'Entity Delete [ID:18]','2018-04-01 21:30:40',NULL),(34,'Entity Delete [ID:17]','2018-04-01 21:30:43',NULL),(35,'New Agent Created [ID:7]','2018-04-01 21:31:26',NULL),(36,'Entity Delete [ID:19]','2018-04-01 21:38:37',NULL),(37,'Agent Delete [ID:6]','2018-04-02 04:47:05',NULL),(38,'Intent Delete [ID:8]','2018-04-03 10:13:04',NULL);
/*!40000 ALTER TABLE `tblactivitylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblagents`
--

DROP TABLE IF EXISTS `tblagents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblagents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `agent_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `default_language` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `default_timezone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `client_access_token` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `developer_access_token` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `google_project` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `matchmode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `threshold` decimal(2,2) DEFAULT NULL,
  `agent_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblagents`
--

LOCK TABLES `tblagents` WRITE;
/*!40000 ALTER TABLE `tblagents` DISABLE KEYS */;
INSERT INTO `tblagents` VALUES (7,1,'Coffee-Shop','english','Europe/Belgrade','2ba0a2f4-2ca7-59c8-9bfe-1a1de7e46302','c30fb203-1138-5ca0-9155-97218609bade','','','hybird',0.20,NULL);
/*!40000 ALTER TABLE `tblagents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblannouncements`
--

DROP TABLE IF EXISTS `tblannouncements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `message` text,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL,
  PRIMARY KEY (`announcementid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblannouncements`
--

LOCK TABLES `tblannouncements` WRITE;
/*!40000 ALTER TABLE `tblannouncements` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblannouncements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclients`
--

DROP TABLE IF EXISTS `tblclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(100) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT '0',
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT '0',
  `longitude` varchar(300) DEFAULT NULL,
  `latitude` varchar(300) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT '0',
  `show_primary_contact` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `country` (`country`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclients`
--

LOCK TABLES `tblclients` WRITE;
/*!40000 ALTER TABLE `tblclients` DISABLE KEYS */;
INSERT INTO `tblclients` VALUES (1,'Mediaworks d.o.o.','','',196,'','','','','','2018-04-01 09:42:40',1,NULL,'','','','',0,'','','','',196,'','','',0,0);
/*!40000 ALTER TABLE `tblclients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcommentlikes`
--

DROP TABLE IF EXISTS `tblcommentlikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcommentlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcommentlikes`
--

LOCK TABLES `tblcommentlikes` WRITE;
/*!40000 ALTER TABLE `tblcommentlikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcommentlikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontactpermissions`
--

DROP TABLE IF EXISTS `tblcontactpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontactpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontactpermissions`
--

LOCK TABLES `tblcontactpermissions` WRITE;
/*!40000 ALTER TABLE `tblcontactpermissions` DISABLE KEYS */;
INSERT INTO `tblcontactpermissions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1);
/*!40000 ALTER TABLE `tblcontactpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontacts`
--

DROP TABLE IF EXISTS `tblcontacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT '1',
  `firstname` varchar(300) NOT NULL,
  `lastname` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_image` varchar(300) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `is_primary` (`is_primary`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontacts`
--

LOCK TABLES `tblcontacts` WRITE;
/*!40000 ALTER TABLE `tblcontacts` DISABLE KEYS */;
INSERT INTO `tblcontacts` VALUES (1,1,1,'Demo','Demo','demo@demo.com','','','2018-04-01 09:43:19','$2a$08$2DeXG08r9fulnGCH6Vju3.ky5z0SljxiaHYOu1Y6rVivpLGigMpz2',NULL,NULL,'127.0.0.1','2018-04-18 08:57:55',NULL,1,NULL,'');
/*!40000 ALTER TABLE `tblcontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontractrenewals`
--

DROP TABLE IF EXISTS `tblcontractrenewals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontractrenewals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(11,2) DEFAULT NULL,
  `new_value` decimal(11,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT '0',
  `is_on_old_expiry_notified` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontractrenewals`
--

LOCK TABLES `tblcontractrenewals` WRITE;
/*!40000 ALTER TABLE `tblcontractrenewals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontractrenewals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontracts`
--

DROP TABLE IF EXISTS `tblcontracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `description` text,
  `subject` varchar(300) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT '0',
  `contract_value` decimal(11,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT '0',
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `client` (`client`),
  KEY `contract_type` (`contract_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontracts`
--

LOCK TABLES `tblcontracts` WRITE;
/*!40000 ALTER TABLE `tblcontracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontracttypes`
--

DROP TABLE IF EXISTS `tblcontracttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontracttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontracttypes`
--

LOCK TABLES `tblcontracttypes` WRITE;
/*!40000 ALTER TABLE `tblcontracttypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcontracttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblconversation`
--

DROP TABLE IF EXISTS `tblconversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblconversation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `state` text CHARACTER SET utf8 NOT NULL,
  `pattern` text COLLATE utf8_unicode_ci NOT NULL,
  `response` text COLLATE utf8_unicode_ci NOT NULL,
  `parameters` text CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `fallback` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`session_id`,`fallback`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblconversation`
--

LOCK TABLES `tblconversation` WRITE;
/*!40000 ALTER TABLE `tblconversation` DISABLE KEYS */;
INSERT INTO `tblconversation` VALUES (17,'788vacss6le3ivmihc9h7vockt','order.drink','small cold coffee please','','{\"delivery-pickup\":\"\",\"drink\":\"coffee\",\"size\":\"small\",\"iced\":\"cold\",\"sys.number\":\"\",\"topping\":\"\"}','2018-04-05',0);
/*!40000 ALTER TABLE `tblconversation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcountries`
--

DROP TABLE IF EXISTS `tblcountries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcountries` (
  `country_id` int(5) NOT NULL AUTO_INCREMENT,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcountries`
--

LOCK TABLES `tblcountries` WRITE;
/*!40000 ALTER TABLE `tblcountries` DISABLE KEYS */;
INSERT INTO `tblcountries` VALUES (1,'AF','Afghanistan','Islamic Republic of Afghanistan','AFG','004','yes','93','.af'),(2,'AX','Aland Islands','&Aring;land Islands','ALA','248','no','358','.ax'),(3,'AL','Albania','Republic of Albania','ALB','008','yes','355','.al'),(4,'DZ','Algeria','People\'s Democratic Republic of Algeria','DZA','012','yes','213','.dz'),(5,'AS','American Samoa','American Samoa','ASM','016','no','1+684','.as'),(6,'AD','Andorra','Principality of Andorra','AND','020','yes','376','.ad'),(7,'AO','Angola','Republic of Angola','AGO','024','yes','244','.ao'),(8,'AI','Anguilla','Anguilla','AIA','660','no','1+264','.ai'),(9,'AQ','Antarctica','Antarctica','ATA','010','no','672','.aq'),(10,'AG','Antigua and Barbuda','Antigua and Barbuda','ATG','028','yes','1+268','.ag'),(11,'AR','Argentina','Argentine Republic','ARG','032','yes','54','.ar'),(12,'AM','Armenia','Republic of Armenia','ARM','051','yes','374','.am'),(13,'AW','Aruba','Aruba','ABW','533','no','297','.aw'),(14,'AU','Australia','Commonwealth of Australia','AUS','036','yes','61','.au'),(15,'AT','Austria','Republic of Austria','AUT','040','yes','43','.at'),(16,'AZ','Azerbaijan','Republic of Azerbaijan','AZE','031','yes','994','.az'),(17,'BS','Bahamas','Commonwealth of The Bahamas','BHS','044','yes','1+242','.bs'),(18,'BH','Bahrain','Kingdom of Bahrain','BHR','048','yes','973','.bh'),(19,'BD','Bangladesh','People\'s Republic of Bangladesh','BGD','050','yes','880','.bd'),(20,'BB','Barbados','Barbados','BRB','052','yes','1+246','.bb'),(21,'BY','Belarus','Republic of Belarus','BLR','112','yes','375','.by'),(22,'BE','Belgium','Kingdom of Belgium','BEL','056','yes','32','.be'),(23,'BZ','Belize','Belize','BLZ','084','yes','501','.bz'),(24,'BJ','Benin','Republic of Benin','BEN','204','yes','229','.bj'),(25,'BM','Bermuda','Bermuda Islands','BMU','060','no','1+441','.bm'),(26,'BT','Bhutan','Kingdom of Bhutan','BTN','064','yes','975','.bt'),(27,'BO','Bolivia','Plurinational State of Bolivia','BOL','068','yes','591','.bo'),(28,'BQ','Bonaire, Sint Eustatius and Saba','Bonaire, Sint Eustatius and Saba','BES','535','no','599','.bq'),(29,'BA','Bosnia and Herzegovina','Bosnia and Herzegovina','BIH','070','yes','387','.ba'),(30,'BW','Botswana','Republic of Botswana','BWA','072','yes','267','.bw'),(31,'BV','Bouvet Island','Bouvet Island','BVT','074','no','NONE','.bv'),(32,'BR','Brazil','Federative Republic of Brazil','BRA','076','yes','55','.br'),(33,'IO','British Indian Ocean Territory','British Indian Ocean Territory','IOT','086','no','246','.io'),(34,'BN','Brunei','Brunei Darussalam','BRN','096','yes','673','.bn'),(35,'BG','Bulgaria','Republic of Bulgaria','BGR','100','yes','359','.bg'),(36,'BF','Burkina Faso','Burkina Faso','BFA','854','yes','226','.bf'),(37,'BI','Burundi','Republic of Burundi','BDI','108','yes','257','.bi'),(38,'KH','Cambodia','Kingdom of Cambodia','KHM','116','yes','855','.kh'),(39,'CM','Cameroon','Republic of Cameroon','CMR','120','yes','237','.cm'),(40,'CA','Canada','Canada','CAN','124','yes','1','.ca'),(41,'CV','Cape Verde','Republic of Cape Verde','CPV','132','yes','238','.cv'),(42,'KY','Cayman Islands','The Cayman Islands','CYM','136','no','1+345','.ky'),(43,'CF','Central African Republic','Central African Republic','CAF','140','yes','236','.cf'),(44,'TD','Chad','Republic of Chad','TCD','148','yes','235','.td'),(45,'CL','Chile','Republic of Chile','CHL','152','yes','56','.cl'),(46,'CN','China','People\'s Republic of China','CHN','156','yes','86','.cn'),(47,'CX','Christmas Island','Christmas Island','CXR','162','no','61','.cx'),(48,'CC','Cocos (Keeling) Islands','Cocos (Keeling) Islands','CCK','166','no','61','.cc'),(49,'CO','Colombia','Republic of Colombia','COL','170','yes','57','.co'),(50,'KM','Comoros','Union of the Comoros','COM','174','yes','269','.km'),(51,'CG','Congo','Republic of the Congo','COG','178','yes','242','.cg'),(52,'CK','Cook Islands','Cook Islands','COK','184','some','682','.ck'),(53,'CR','Costa Rica','Republic of Costa Rica','CRI','188','yes','506','.cr'),(54,'CI','Cote d\'ivoire (Ivory Coast)','Republic of C&ocirc;te D\'Ivoire (Ivory Coast)','CIV','384','yes','225','.ci'),(55,'HR','Croatia','Republic of Croatia','HRV','191','yes','385','.hr'),(56,'CU','Cuba','Republic of Cuba','CUB','192','yes','53','.cu'),(57,'CW','Curacao','Cura&ccedil;ao','CUW','531','no','599','.cw'),(58,'CY','Cyprus','Republic of Cyprus','CYP','196','yes','357','.cy'),(59,'CZ','Czech Republic','Czech Republic','CZE','203','yes','420','.cz'),(60,'CD','Democratic Republic of the Congo','Democratic Republic of the Congo','COD','180','yes','243','.cd'),(61,'DK','Denmark','Kingdom of Denmark','DNK','208','yes','45','.dk'),(62,'DJ','Djibouti','Republic of Djibouti','DJI','262','yes','253','.dj'),(63,'DM','Dominica','Commonwealth of Dominica','DMA','212','yes','1+767','.dm'),(64,'DO','Dominican Republic','Dominican Republic','DOM','214','yes','1+809, 8','.do'),(65,'EC','Ecuador','Republic of Ecuador','ECU','218','yes','593','.ec'),(66,'EG','Egypt','Arab Republic of Egypt','EGY','818','yes','20','.eg'),(67,'SV','El Salvador','Republic of El Salvador','SLV','222','yes','503','.sv'),(68,'GQ','Equatorial Guinea','Republic of Equatorial Guinea','GNQ','226','yes','240','.gq'),(69,'ER','Eritrea','State of Eritrea','ERI','232','yes','291','.er'),(70,'EE','Estonia','Republic of Estonia','EST','233','yes','372','.ee'),(71,'ET','Ethiopia','Federal Democratic Republic of Ethiopia','ETH','231','yes','251','.et'),(72,'FK','Falkland Islands (Malvinas)','The Falkland Islands (Malvinas)','FLK','238','no','500','.fk'),(73,'FO','Faroe Islands','The Faroe Islands','FRO','234','no','298','.fo'),(74,'FJ','Fiji','Republic of Fiji','FJI','242','yes','679','.fj'),(75,'FI','Finland','Republic of Finland','FIN','246','yes','358','.fi'),(76,'FR','France','French Republic','FRA','250','yes','33','.fr'),(77,'GF','French Guiana','French Guiana','GUF','254','no','594','.gf'),(78,'PF','French Polynesia','French Polynesia','PYF','258','no','689','.pf'),(79,'TF','French Southern Territories','French Southern Territories','ATF','260','no',NULL,'.tf'),(80,'GA','Gabon','Gabonese Republic','GAB','266','yes','241','.ga'),(81,'GM','Gambia','Republic of The Gambia','GMB','270','yes','220','.gm'),(82,'GE','Georgia','Georgia','GEO','268','yes','995','.ge'),(83,'DE','Germany','Federal Republic of Germany','DEU','276','yes','49','.de'),(84,'GH','Ghana','Republic of Ghana','GHA','288','yes','233','.gh'),(85,'GI','Gibraltar','Gibraltar','GIB','292','no','350','.gi'),(86,'GR','Greece','Hellenic Republic','GRC','300','yes','30','.gr'),(87,'GL','Greenland','Greenland','GRL','304','no','299','.gl'),(88,'GD','Grenada','Grenada','GRD','308','yes','1+473','.gd'),(89,'GP','Guadaloupe','Guadeloupe','GLP','312','no','590','.gp'),(90,'GU','Guam','Guam','GUM','316','no','1+671','.gu'),(91,'GT','Guatemala','Republic of Guatemala','GTM','320','yes','502','.gt'),(92,'GG','Guernsey','Guernsey','GGY','831','no','44','.gg'),(93,'GN','Guinea','Republic of Guinea','GIN','324','yes','224','.gn'),(94,'GW','Guinea-Bissau','Republic of Guinea-Bissau','GNB','624','yes','245','.gw'),(95,'GY','Guyana','Co-operative Republic of Guyana','GUY','328','yes','592','.gy'),(96,'HT','Haiti','Republic of Haiti','HTI','332','yes','509','.ht'),(97,'HM','Heard Island and McDonald Islands','Heard Island and McDonald Islands','HMD','334','no','NONE','.hm'),(98,'HN','Honduras','Republic of Honduras','HND','340','yes','504','.hn'),(99,'HK','Hong Kong','Hong Kong','HKG','344','no','852','.hk'),(100,'HU','Hungary','Hungary','HUN','348','yes','36','.hu'),(101,'IS','Iceland','Republic of Iceland','ISL','352','yes','354','.is'),(102,'IN','India','Republic of India','IND','356','yes','91','.in'),(103,'ID','Indonesia','Republic of Indonesia','IDN','360','yes','62','.id'),(104,'IR','Iran','Islamic Republic of Iran','IRN','364','yes','98','.ir'),(105,'IQ','Iraq','Republic of Iraq','IRQ','368','yes','964','.iq'),(106,'IE','Ireland','Ireland','IRL','372','yes','353','.ie'),(107,'IM','Isle of Man','Isle of Man','IMN','833','no','44','.im'),(108,'IL','Israel','State of Israel','ISR','376','yes','972','.il'),(109,'IT','Italy','Italian Republic','ITA','380','yes','39','.jm'),(110,'JM','Jamaica','Jamaica','JAM','388','yes','1+876','.jm'),(111,'JP','Japan','Japan','JPN','392','yes','81','.jp'),(112,'JE','Jersey','The Bailiwick of Jersey','JEY','832','no','44','.je'),(113,'JO','Jordan','Hashemite Kingdom of Jordan','JOR','400','yes','962','.jo'),(114,'KZ','Kazakhstan','Republic of Kazakhstan','KAZ','398','yes','7','.kz'),(115,'KE','Kenya','Republic of Kenya','KEN','404','yes','254','.ke'),(116,'KI','Kiribati','Republic of Kiribati','KIR','296','yes','686','.ki'),(117,'XK','Kosovo','Republic of Kosovo','---','---','some','381',''),(118,'KW','Kuwait','State of Kuwait','KWT','414','yes','965','.kw'),(119,'KG','Kyrgyzstan','Kyrgyz Republic','KGZ','417','yes','996','.kg'),(120,'LA','Laos','Lao People\'s Democratic Republic','LAO','418','yes','856','.la'),(121,'LV','Latvia','Republic of Latvia','LVA','428','yes','371','.lv'),(122,'LB','Lebanon','Republic of Lebanon','LBN','422','yes','961','.lb'),(123,'LS','Lesotho','Kingdom of Lesotho','LSO','426','yes','266','.ls'),(124,'LR','Liberia','Republic of Liberia','LBR','430','yes','231','.lr'),(125,'LY','Libya','Libya','LBY','434','yes','218','.ly'),(126,'LI','Liechtenstein','Principality of Liechtenstein','LIE','438','yes','423','.li'),(127,'LT','Lithuania','Republic of Lithuania','LTU','440','yes','370','.lt'),(128,'LU','Luxembourg','Grand Duchy of Luxembourg','LUX','442','yes','352','.lu'),(129,'MO','Macao','The Macao Special Administrative Region','MAC','446','no','853','.mo'),(130,'MK','Macedonia','The Former Yugoslav Republic of Macedonia','MKD','807','yes','389','.mk'),(131,'MG','Madagascar','Republic of Madagascar','MDG','450','yes','261','.mg'),(132,'MW','Malawi','Republic of Malawi','MWI','454','yes','265','.mw'),(133,'MY','Malaysia','Malaysia','MYS','458','yes','60','.my'),(134,'MV','Maldives','Republic of Maldives','MDV','462','yes','960','.mv'),(135,'ML','Mali','Republic of Mali','MLI','466','yes','223','.ml'),(136,'MT','Malta','Republic of Malta','MLT','470','yes','356','.mt'),(137,'MH','Marshall Islands','Republic of the Marshall Islands','MHL','584','yes','692','.mh'),(138,'MQ','Martinique','Martinique','MTQ','474','no','596','.mq'),(139,'MR','Mauritania','Islamic Republic of Mauritania','MRT','478','yes','222','.mr'),(140,'MU','Mauritius','Republic of Mauritius','MUS','480','yes','230','.mu'),(141,'YT','Mayotte','Mayotte','MYT','175','no','262','.yt'),(142,'MX','Mexico','United Mexican States','MEX','484','yes','52','.mx'),(143,'FM','Micronesia','Federated States of Micronesia','FSM','583','yes','691','.fm'),(144,'MD','Moldava','Republic of Moldova','MDA','498','yes','373','.md'),(145,'MC','Monaco','Principality of Monaco','MCO','492','yes','377','.mc'),(146,'MN','Mongolia','Mongolia','MNG','496','yes','976','.mn'),(147,'ME','Montenegro','Montenegro','MNE','499','yes','382','.me'),(148,'MS','Montserrat','Montserrat','MSR','500','no','1+664','.ms'),(149,'MA','Morocco','Kingdom of Morocco','MAR','504','yes','212','.ma'),(150,'MZ','Mozambique','Republic of Mozambique','MOZ','508','yes','258','.mz'),(151,'MM','Myanmar (Burma)','Republic of the Union of Myanmar','MMR','104','yes','95','.mm'),(152,'NA','Namibia','Republic of Namibia','NAM','516','yes','264','.na'),(153,'NR','Nauru','Republic of Nauru','NRU','520','yes','674','.nr'),(154,'NP','Nepal','Federal Democratic Republic of Nepal','NPL','524','yes','977','.np'),(155,'NL','Netherlands','Kingdom of the Netherlands','NLD','528','yes','31','.nl'),(156,'NC','New Caledonia','New Caledonia','NCL','540','no','687','.nc'),(157,'NZ','New Zealand','New Zealand','NZL','554','yes','64','.nz'),(158,'NI','Nicaragua','Republic of Nicaragua','NIC','558','yes','505','.ni'),(159,'NE','Niger','Republic of Niger','NER','562','yes','227','.ne'),(160,'NG','Nigeria','Federal Republic of Nigeria','NGA','566','yes','234','.ng'),(161,'NU','Niue','Niue','NIU','570','some','683','.nu'),(162,'NF','Norfolk Island','Norfolk Island','NFK','574','no','672','.nf'),(163,'KP','North Korea','Democratic People\'s Republic of Korea','PRK','408','yes','850','.kp'),(164,'MP','Northern Mariana Islands','Northern Mariana Islands','MNP','580','no','1+670','.mp'),(165,'NO','Norway','Kingdom of Norway','NOR','578','yes','47','.no'),(166,'OM','Oman','Sultanate of Oman','OMN','512','yes','968','.om'),(167,'PK','Pakistan','Islamic Republic of Pakistan','PAK','586','yes','92','.pk'),(168,'PW','Palau','Republic of Palau','PLW','585','yes','680','.pw'),(169,'PS','Palestine','State of Palestine (or Occupied Palestinian Territory)','PSE','275','some','970','.ps'),(170,'PA','Panama','Republic of Panama','PAN','591','yes','507','.pa'),(171,'PG','Papua New Guinea','Independent State of Papua New Guinea','PNG','598','yes','675','.pg'),(172,'PY','Paraguay','Republic of Paraguay','PRY','600','yes','595','.py'),(173,'PE','Peru','Republic of Peru','PER','604','yes','51','.pe'),(174,'PH','Phillipines','Republic of the Philippines','PHL','608','yes','63','.ph'),(175,'PN','Pitcairn','Pitcairn','PCN','612','no','NONE','.pn'),(176,'PL','Poland','Republic of Poland','POL','616','yes','48','.pl'),(177,'PT','Portugal','Portuguese Republic','PRT','620','yes','351','.pt'),(178,'PR','Puerto Rico','Commonwealth of Puerto Rico','PRI','630','no','1+939','.pr'),(179,'QA','Qatar','State of Qatar','QAT','634','yes','974','.qa'),(180,'RE','Reunion','R&eacute;union','REU','638','no','262','.re'),(181,'RO','Romania','Romania','ROU','642','yes','40','.ro'),(182,'RU','Russia','Russian Federation','RUS','643','yes','7','.ru'),(183,'RW','Rwanda','Republic of Rwanda','RWA','646','yes','250','.rw'),(184,'BL','Saint Barthelemy','Saint Barth&eacute;lemy','BLM','652','no','590','.bl'),(185,'SH','Saint Helena','Saint Helena, Ascension and Tristan da Cunha','SHN','654','no','290','.sh'),(186,'KN','Saint Kitts and Nevis','Federation of Saint Christopher and Nevis','KNA','659','yes','1+869','.kn'),(187,'LC','Saint Lucia','Saint Lucia','LCA','662','yes','1+758','.lc'),(188,'MF','Saint Martin','Saint Martin','MAF','663','no','590','.mf'),(189,'PM','Saint Pierre and Miquelon','Saint Pierre and Miquelon','SPM','666','no','508','.pm'),(190,'VC','Saint Vincent and the Grenadines','Saint Vincent and the Grenadines','VCT','670','yes','1+784','.vc'),(191,'WS','Samoa','Independent State of Samoa','WSM','882','yes','685','.ws'),(192,'SM','San Marino','Republic of San Marino','SMR','674','yes','378','.sm'),(193,'ST','Sao Tome and Principe','Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe','STP','678','yes','239','.st'),(194,'SA','Saudi Arabia','Kingdom of Saudi Arabia','SAU','682','yes','966','.sa'),(195,'SN','Senegal','Republic of Senegal','SEN','686','yes','221','.sn'),(196,'RS','Serbia','Republic of Serbia','SRB','688','yes','381','.rs'),(197,'SC','Seychelles','Republic of Seychelles','SYC','690','yes','248','.sc'),(198,'SL','Sierra Leone','Republic of Sierra Leone','SLE','694','yes','232','.sl'),(199,'SG','Singapore','Republic of Singapore','SGP','702','yes','65','.sg'),(200,'SX','Sint Maarten','Sint Maarten','SXM','534','no','1+721','.sx'),(201,'SK','Slovakia','Slovak Republic','SVK','703','yes','421','.sk'),(202,'SI','Slovenia','Republic of Slovenia','SVN','705','yes','386','.si'),(203,'SB','Solomon Islands','Solomon Islands','SLB','090','yes','677','.sb'),(204,'SO','Somalia','Somali Republic','SOM','706','yes','252','.so'),(205,'ZA','South Africa','Republic of South Africa','ZAF','710','yes','27','.za'),(206,'GS','South Georgia and the South Sandwich Islands','South Georgia and the South Sandwich Islands','SGS','239','no','500','.gs'),(207,'KR','South Korea','Republic of Korea','KOR','410','yes','82','.kr'),(208,'SS','South Sudan','Republic of South Sudan','SSD','728','yes','211','.ss'),(209,'ES','Spain','Kingdom of Spain','ESP','724','yes','34','.es'),(210,'LK','Sri Lanka','Democratic Socialist Republic of Sri Lanka','LKA','144','yes','94','.lk'),(211,'SD','Sudan','Republic of the Sudan','SDN','729','yes','249','.sd'),(212,'SR','Suriname','Republic of Suriname','SUR','740','yes','597','.sr'),(213,'SJ','Svalbard and Jan Mayen','Svalbard and Jan Mayen','SJM','744','no','47','.sj'),(214,'SZ','Swaziland','Kingdom of Swaziland','SWZ','748','yes','268','.sz'),(215,'SE','Sweden','Kingdom of Sweden','SWE','752','yes','46','.se'),(216,'CH','Switzerland','Swiss Confederation','CHE','756','yes','41','.ch'),(217,'SY','Syria','Syrian Arab Republic','SYR','760','yes','963','.sy'),(218,'TW','Taiwan','Republic of China (Taiwan)','TWN','158','former','886','.tw'),(219,'TJ','Tajikistan','Republic of Tajikistan','TJK','762','yes','992','.tj'),(220,'TZ','Tanzania','United Republic of Tanzania','TZA','834','yes','255','.tz'),(221,'TH','Thailand','Kingdom of Thailand','THA','764','yes','66','.th'),(222,'TL','Timor-Leste (East Timor)','Democratic Republic of Timor-Leste','TLS','626','yes','670','.tl'),(223,'TG','Togo','Togolese Republic','TGO','768','yes','228','.tg'),(224,'TK','Tokelau','Tokelau','TKL','772','no','690','.tk'),(225,'TO','Tonga','Kingdom of Tonga','TON','776','yes','676','.to'),(226,'TT','Trinidad and Tobago','Republic of Trinidad and Tobago','TTO','780','yes','1+868','.tt'),(227,'TN','Tunisia','Republic of Tunisia','TUN','788','yes','216','.tn'),(228,'TR','Turkey','Republic of Turkey','TUR','792','yes','90','.tr'),(229,'TM','Turkmenistan','Turkmenistan','TKM','795','yes','993','.tm'),(230,'TC','Turks and Caicos Islands','Turks and Caicos Islands','TCA','796','no','1+649','.tc'),(231,'TV','Tuvalu','Tuvalu','TUV','798','yes','688','.tv'),(232,'UG','Uganda','Republic of Uganda','UGA','800','yes','256','.ug'),(233,'UA','Ukraine','Ukraine','UKR','804','yes','380','.ua'),(234,'AE','United Arab Emirates','United Arab Emirates','ARE','784','yes','971','.ae'),(235,'GB','United Kingdom','United Kingdom of Great Britain and Nothern Ireland','GBR','826','yes','44','.uk'),(236,'US','United States','United States of America','USA','840','yes','1','.us'),(237,'UM','United States Minor Outlying Islands','United States Minor Outlying Islands','UMI','581','no','NONE','NONE'),(238,'UY','Uruguay','Eastern Republic of Uruguay','URY','858','yes','598','.uy'),(239,'UZ','Uzbekistan','Republic of Uzbekistan','UZB','860','yes','998','.uz'),(240,'VU','Vanuatu','Republic of Vanuatu','VUT','548','yes','678','.vu'),(241,'VA','Vatican City','State of the Vatican City','VAT','336','no','39','.va'),(242,'VE','Venezuela','Bolivarian Republic of Venezuela','VEN','862','yes','58','.ve'),(243,'VN','Vietnam','Socialist Republic of Vietnam','VNM','704','yes','84','.vn'),(244,'VG','Virgin Islands, British','British Virgin Islands','VGB','092','no','1+284','.vg'),(245,'VI','Virgin Islands, US','Virgin Islands of the United States','VIR','850','no','1+340','.vi'),(246,'WF','Wallis and Futuna','Wallis and Futuna','WLF','876','no','681','.wf'),(247,'EH','Western Sahara','Western Sahara','ESH','732','no','212','.eh'),(248,'YE','Yemen','Republic of Yemen','YEM','887','yes','967','.ye'),(249,'ZM','Zambia','Republic of Zambia','ZMB','894','yes','260','.zm'),(250,'ZW','Zimbabwe','Republic of Zimbabwe','ZWE','716','yes','263','.zw');
/*!40000 ALTER TABLE `tblcountries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcurrencies`
--

DROP TABLE IF EXISTS `tblcurrencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcurrencies`
--

LOCK TABLES `tblcurrencies` WRITE;
/*!40000 ALTER TABLE `tblcurrencies` DISABLE KEYS */;
INSERT INTO `tblcurrencies` VALUES (1,'$','USD',1),(2,'€','EUR',0);
/*!40000 ALTER TABLE `tblcurrencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomeradmins`
--

DROP TABLE IF EXISTS `tblcustomeradmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomeradmins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL,
  KEY `customer_id` (`customer_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomeradmins`
--

LOCK TABLES `tblcustomeradmins` WRITE;
/*!40000 ALTER TABLE `tblcustomeradmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomeradmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomerfiles_shares`
--

DROP TABLE IF EXISTS `tblcustomerfiles_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomerfiles_shares` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomerfiles_shares`
--

LOCK TABLES `tblcustomerfiles_shares` WRITE;
/*!40000 ALTER TABLE `tblcustomerfiles_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomerfiles_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomergroups_in`
--

DROP TABLE IF EXISTS `tblcustomergroups_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomergroups_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomergroups_in`
--

LOCK TABLES `tblcustomergroups_in` WRITE;
/*!40000 ALTER TABLE `tblcustomergroups_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomergroups_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomersgroups`
--

DROP TABLE IF EXISTS `tblcustomersgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomersgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomersgroups`
--

LOCK TABLES `tblcustomersgroups` WRITE;
/*!40000 ALTER TABLE `tblcustomersgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomersgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomfields`
--

DROP TABLE IF EXISTS `tblcustomfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldto` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL,
  `options` mediumtext,
  `field_order` int(11) DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1',
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `only_admin` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_table` tinyint(1) NOT NULL DEFAULT '0',
  `show_on_client_portal` int(11) NOT NULL DEFAULT '0',
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT '0',
  `bs_column` int(11) NOT NULL DEFAULT '12',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomfields`
--

LOCK TABLES `tblcustomfields` WRITE;
/*!40000 ALTER TABLE `tblcustomfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomfieldsvalues`
--

DROP TABLE IF EXISTS `tblcustomfieldsvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `relid` (`relid`),
  KEY `fieldid` (`fieldid`),
  KEY `fieldto` (`fieldto`),
  KEY `relid_2` (`relid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomfieldsvalues`
--

LOCK TABLES `tblcustomfieldsvalues` WRITE;
/*!40000 ALTER TABLE `tblcustomfieldsvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcustomfieldsvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldepartments`
--

DROP TABLE IF EXISTS `tbldepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext,
  `encryption` varchar(3) DEFAULT NULL,
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  `calendar_id` mediumtext,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`departmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldepartments`
--

LOCK TABLES `tbldepartments` WRITE;
/*!40000 ALTER TABLE `tbldepartments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldismissedannouncements`
--

DROP TABLE IF EXISTS `tbldismissedannouncements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbldismissedannouncements` (
  `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`dismissedannouncementid`),
  KEY `announcementid` (`announcementid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldismissedannouncements`
--

LOCK TABLES `tbldismissedannouncements` WRITE;
/*!40000 ALTER TABLE `tbldismissedannouncements` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbldismissedannouncements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemaillists`
--

DROP TABLE IF EXISTS `tblemaillists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemaillists` (
  `listid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `creator` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemaillists`
--

LOCK TABLES `tblemaillists` WRITE;
/*!40000 ALTER TABLE `tblemaillists` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblemaillists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblemailtemplates`
--

DROP TABLE IF EXISTS `tblemailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` text NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT '0',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL,
  PRIMARY KEY (`emailtemplateid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblemailtemplates`
--

LOCK TABLES `tblemailtemplates` WRITE;
/*!40000 ALTER TABLE `tblemailtemplates` DISABLE KEYS */;
INSERT INTO `tblemailtemplates` VALUES (1,'client','new-client-created','english','New Contact Added/Registered (Welcome Email)','Welcome aboard','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><br /></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for registering on the {companyname} CRM System.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We just wanted to say welcome.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us if you need any help.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">(This is an automated email, so please don\'t reply to this email address)</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(2,'invoice','invoice-send-to-client','english','Send Invoice to Customer','Invoice with number {invoice_number} created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We have prepared the following invoice for you: #&nbsp;{invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Invoice status:&nbsp;<strong style=\"font-family: Helvetica, Arial, sans-serif;\">{invoice_status}</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span>&nbsp;</div>\r\n<div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(3,'ticket','new-ticket-opened-admin','english','New Ticket Opened (Opened by Staff, Sent to Customer)','New Support Ticket Opened','<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">New support ticket has been opened.</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; color: #000000; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; color: #000000; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a><br /></span></div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"color: #000000; font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(4,'ticket','ticket-reply','english','Ticket Reply (Sent to Customer)','New Ticket Reply','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;<span style=\"background-color: inherit;\">{contact_firstname} </span>{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have a new ticket reply to ticket #{ticket_id}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a><br /></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(5,'ticket','ticket-autoresponse','english','New Ticket Opened - Autoresponse','New Support Ticket Opened','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {ticket_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: {ticket_priority}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(6,'invoice','invoice-payment-recorded','english','Invoice Payment Recorded (Sent to Customer)','Invoice Payment Recorded','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Payment recorded for invoice&nbsp;# {invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(7,'invoice','invoice-overdue-notice','english','Invoice Overdue Notice','Invoice Overdue Notice - {invoice_number}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is an overdue notice for invoice # {invoice_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This invoice was due: {invoice_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span>&nbsp;</div>\r\n<div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(8,'invoice','invoice-already-send','english','Invoice Already Sent to Customer','On your command here is the invoice','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi <span style=\"background-color: inherit;\">{contact_firstname} {contact_lastname}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">At your request, here is the invoice with number #{invoice_number}</span></div>\r\n<div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(9,'ticket','new-ticket-created-staff','english','New Ticket Created (Opened by Customer, Sent to Staff Members)','New Ticket Created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new support ticket has been opened.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}<br /><br />You can view the ticket on the following link:&nbsp;<a href=\"{ticket_url}\">#{ticket_id}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(10,'estimate','estimate-send-to-client','english','Send Estimate to Customer','Estimate # {estimate_number} created','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please find the attached estimate # {estimate_number}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Estimate status:&nbsp;<strong>{estimate_status}<br /><br /></strong>You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a><br /></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to your communication.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(11,'ticket','ticket-reply-to-admin','english','Ticket Reply (Sent to Staff)','New Support Ticket Reply','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: <span style=\"background-color: inherit;\">{ticket_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(12,'estimate','estimate-already-send','english','Estimate Already Sent to Customer','Estimate # {estimate_number} ','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank you for your estimate request.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(13,'contract','contract-expiration','english','Contract Expiration','Contract Expiration Reminder','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {client_company}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {contract_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: {contract_description}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Date Start: {contract_datestart}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Date End: {contract_dateend}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Value: {contract_contract_value}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Please contact us for more information.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(14,'tasks','task-assigned','english','New Task Assigned (Sent to Staff)','New Task Assigned to You - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have been assigned a new task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: <span style=\"background-color: #ffffff;\">{task_name}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: #ffffff;\">{task_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(15,'tasks','task-added-as-follower','english','Staff Member Added as Follower on Task','You are added as follower on task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} <span style=\"background-color: #ffffff;\">{staff_lastname}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You have been added as follower on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: {task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: {task_description}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: {task_priority}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Start date: {task_startdate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: {task_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0),(16,'tasks','task-commented','english','New Comment on Task (Sent to Staff)','New Comment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A comment has been made on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: &nbsp;{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: &nbsp;{task_description}<br />Comment: {task_comment}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(17,'tasks','task-marked-as-finished','english','Task Marked as Finished (Sent to Staff)','Task Marked as Finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} marked the following task as complete:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}<br /></span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(18,'tasks','task-added-attachment','english','New Attachment on Task (Sent to Staff)','New Attachment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} added an attachment on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(19,'tasks','task-unmarked-as-finished','english','Task Unmarked as Finished (Sent to Staff)','Task UN-marked as finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname} {staff_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} <span style=\"background-color: inherit;\">marked the </span>following task as <strong>in-complete / unfinished</strong></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span><span style=\"background-color: inherit;\">{task_name}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: {task_duedate}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(20,'estimate','estimate-declined-to-staff','english','Estimate Declined (Sent to Staff)','Customer Declined Estimate','<div><span style=\"font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <span style=\"background-color: inherit;\">{estimate_number}</span></span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(21,'estimate','estimate-accepted-to-staff','english','Estimate Accepted (Sent to Staff)','Customer Accepted Estimate','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <span style=\"background-color: inherit;\">{estimate_number}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the estimate on the following link:&nbsp;<a href=\"{estimate_link}\">{estimate_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(22,'proposals','proposal-client-accepted','english','Customer Action - Accepted (Sent to Staff)','Customer Accepted Proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Client {proposal_proposal_to} accepted the following proposal:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Subject: {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Total: {proposal_total}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0),(23,'proposals','proposal-send-to-customer','english','Send Proposal to Customer','Proposal','<div>Dear {proposal_proposal_to}</div>\r\n<div>&nbsp;</div>\r\n<div>Please find our attached proposal.</div>\r\n<div>&nbsp;</div>\r\n<div>This proposal is valid until: {proposal_open_till}</div>\r\n<div>You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></div>\r\n<div>&nbsp;</div>\r\n<div>Please don\'t hesitate to comment online if you have any questions.</div>\r\n<div>&nbsp;</div>\r\n<div>We look forward to your communication.</div>\r\n<div>&nbsp;</div>\r\n<div>Kind regards</div>\r\n<div>&nbsp;</div>\r\n<div>{email_signature}</div>','{companyname} | CRM','',0,1,0),(24,'proposals','proposal-client-declined','english','Customer Action - Declined (Sent to Staff)','Client Declined Proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer {proposal_proposal_to} declined the proposal {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">View the proposal on the following link <a href=\"{proposal_link}\">{proposal_subject}</a>&nbsp;or from the admin area.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div>&nbsp;</div>','{companyname} | CRM','',0,1,0),(25,'proposals','proposal-client-thank-you','english','Thank You Email (Sent to Customer After Accept)','Thank for you accepting proposal','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {proposal_proposal_to}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank for for accepting the proposal.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to doing business with you.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We will contact you as soon as possible</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(26,'proposals','proposal-comment-to-client','english','New Comment  (Sent to Customer Contacts)','New Proposal Comment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {proposal_proposal_to}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new comment has been made on the following proposal: {proposal_subject}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(27,'proposals','proposal-comment-to-admin','english','New Comment (Sent to Staff) ','New Proposal Comment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hello</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A new <strong>comment</strong> has been made to the proposal <span style=\"background-color: inherit;\">{proposal_subject}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a><span style=\"background-color: inherit;\">&nbsp;or from the admin area.</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(28,'estimate','estimate-thank-you-to-customer','english','Thank You Email (Sent to Customer After Accept)','Thank for you accepting estimate','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname}&nbsp;{contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Thank for for accepting the estimate.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We look forward to doing business with you.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">We will contact you as soon as possible.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>','{companyname} | CRM','',0,1,0),(29,'tasks','task-deadline-notification','english','Task Deadline Reminder - Sent to Assigned Members','Task Deadline Reminder','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {staff_firstname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">This is an automated email from {companyname}.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">The task {task_name} deadline is on {task_duedate}. This task is still not finished.</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(30,'contract','send-contract','english','Send Contract to Customer','Contract - {contract_subject}','<p>Hi&nbsp;{client_company}</p>\r\n<p>Please find the {contract_subject}&nbsp;attached.</p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(31,'invoice','invoice-payment-recorded-to-staff','english','Invoice Payment Recorded (Sent to Staff)','New Invoice Payment','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Customer recorded payment for invoice # {invoice_number}</span></div>\r\n<div>&nbsp;</div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(32,'ticket','auto-close-ticket','english','Auto Close Ticket','Ticket Auto Closed','<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket&nbsp;{ticket_subject} has been auto close due to inactivity.</span></p>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Ticket #: <span style=\"background-color: inherit;\">{ticket_id}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Department: {ticket_department}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Priority: <span style=\"background-color: inherit;\">{ticket_priority}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">Ticket message:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt; background-color: inherit;\">{ticket_message}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(33,'project','new-project-discussion-created-to-staff','english','New Project Discussion (Sent to Project Members)','New Project Discussion Created','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project discussion created from&nbsp;{discussion_creator}</p>\r\n<p>Subject:&nbsp;{discussion_subject}</p>\r\n<p>Description:&nbsp;{discussion_description}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(34,'project','new-project-discussion-created-to-customer','english','New Project Discussion (Sent to Customer Contacts)','New Project Discussion Created','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project discussion created from&nbsp;{discussion_creator}</p>\r\n<p>Subject:&nbsp;{discussion_subject}</p>\r\n<p>Description:&nbsp;{discussion_description}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(35,'project','new-project-file-uploaded-to-customer','english','New Project File Uploaded (Sent to Customer Contacts)','New Project File Uploaded','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;{project_name} from&nbsp;{file_creator}</p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br />To view&nbsp;the file in our CRM&nbsp;you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(36,'project','new-project-file-uploaded-to-staff','english','New Project File Uploaded (Sent to Project Members)','New Project File Uploaded','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;{project_name} from&nbsp;{file_creator}</p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(37,'project','new-project-discussion-comment-to-customer','english','New Discussion Comment  (Sent to Customer Contacts)','New Discussion Comment','<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New discussion comment has been made on {discussion_subject} from&nbsp;{comment_creator}</p>\r\n<p>Discussion subject:&nbsp;{discussion_subject}</p>\r\n<p>Comment:&nbsp;{discussion_comment}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(38,'project','new-project-discussion-comment-to-staff','english','New Discussion Comment (Sent to Project Members)','New Discussion Comment','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New discussion comment has been made on {discussion_subject} from&nbsp;{comment_creator}</p>\r\n<p>Discussion subject:&nbsp;{discussion_subject}</p>\r\n<p>Comment:&nbsp;{discussion_comment}</p>\r\n<p>You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(39,'project','staff-added-as-project-member','english','Staff Added as Project Member','New project assigned to you','<p>Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}</p>\r\n<p>New project has been assigned to you.</p>\r\n<p>You can view the project on the following link <a href=\"{project_link}\">{project_name}</a></p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(40,'estimate','estimate-expiry-reminder','english','Estimate Expiration Reminder','Estimate Expiration Reminder','<p>Hello&nbsp;{client_company}</p>\r\n<p>The estimate with&nbsp;{estimate_number} will expire on&nbsp;{estimate_expirydate}</p>\r\n<p>You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></p>\r\n<p>Regards,</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(41,'proposals','proposal-expiry-reminder','english','Proposal Expiration Reminder','Proposal Expiration Reminder','<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hello&nbsp;{proposal_proposal_to}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">The proposal {proposal_subject} will expire on&nbsp;{proposal_open_till}</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_subject}</a></span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Regards,</span></p>\r\n<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></p>','{companyname} | CRM','',0,1,0),(42,'staff','new-staff-created','english','New Staff Created (Welcome Email)','You are added as staff member','Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />You are added as member on our CRM.<br />You can login at {admin_url}<br /><br />Please use the following&nbsp;logic credentials:<br /><br />Email:&nbsp;{staff_email}<br />Password:&nbsp;{password}<br /><br />Best Regards,<br />{email_signature}','{companyname} | CRM','',0,1,0),(43,'client','contact-forgot-password','english','Forgot Password','Create New Password','<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}','{companyname} | CRM','',0,1,0),(44,'client','contact-password-reseted','english','Password Reset - Confirmation','Your password has been changed','<strong>You have changed your password.<br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br />If this wasnt you, please contact us.<br /><br />{email_signature}','{companyname} | CRM','',0,1,0),(45,'client','contact-set-password','english','Set New Password','Set new password on {companyname} ','<h2>Setup your new password on {companyname}</h2>\r\nPlease use the following link to setup your new password.<br /><br />Keep it in your records so you don\'t forget it.<br /><br /> Please set your new password in 48 hours. After that you wont be able to set your password. <br /><br />You can login at: {crm_url}<br /> Your email address for login: {contact_email}<br /> <br /><a href=\"{set_password_url}\">Set New Password</a><br /> <br />{email_signature}','{companyname} | CRM','',0,1,0),(46,'staff','staff-forgot-password','english','Forgot Password','Create New Password','<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}','{companyname} | CRM','',0,1,0),(47,'staff','staff-password-reseted','english','Password Reset - Confirmation','Your password has been changed','<strong>You have changed your password.<br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /> If this wasnt you, please contact us.<br /><br />{email_signature}','{companyname} | CRM','',0,1,0),(48,'project','assigned-to-project','english','New Project Created (Sent to Customer Contacts)','New Project Created','<p>Hello&nbsp;{contact_firstname}</p>\r\n<p>New project is assigned to your company.<br />Project Name:&nbsp;{project_name}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.</p>\r\n<p>{email_signature}</p>','{companyname} | CRM','',0,1,0),(49,'tasks','task-marked-as-finished-to-contacts','english','Task Marked as Finished (Sent to customer contacts)','Task Marked as Finished - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} marked the following task as complete:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Due date: <span style=\"background-color: #ffffff;\">{task_duedate}<br /></span></span><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(50,'tasks','task-added-attachment-to-contacts','english','New Attachment on Task (Sent to Customer Contacts)','New Attachment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{task_user_take_action} added an attachment on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Name: </span>{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\"><span style=\"background-color: inherit;\">Description: </span><span style=\"background-color: inherit;\">{task_description}</span></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-size: 12pt; font-family: arial, helvetica, sans-serif;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(51,'tasks','task-commented-to-contacts','english','New Comment on Task (Sent to Customer Contacts)','New Comment on Task - {task_name}','<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">A comment has been made on the following task:</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Name: &nbsp;{task_name}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Description: &nbsp;{task_description}<br />Comment: {task_comment}</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Click on the following link to view: <a href=\"{task_link}\">{task_name}</a></span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">Kind regards,</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: arial, helvetica, sans-serif; font-size: 12pt;\">{email_signature}</span></div>','{companyname} | CRM','',0,1,0),(52,'leads','new-lead-assigned','english','New Lead Assigned to Staff Member','New lead assigned to you','<p>Hello {lead_assigned}</p>\r\n<p>New&nbsp;lead is assigned to you.<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}<br /><br /></a>Kind Regards,<br />{email_signature}</p>','{companyname} | CRM','',0,1,0);
/*!40000 ALTER TABLE `tblemailtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblentities`
--

DROP TABLE IF EXISTS `tblentities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblentities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL DEFAULT '0',
  `entity_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `automatedExpansion` int(1) DEFAULT '0',
  `isOverridable` int(1) DEFAULT '0',
  `is_admin` int(1) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`agent_id`,`is_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblentities`
--

LOCK TABLES `tblentities` WRITE;
/*!40000 ALTER TABLE `tblentities` DISABLE KEYS */;
INSERT INTO `tblentities` VALUES (16,0,'sys.number',0,1,1,0),(20,7,'delivery-pickup',0,1,0,1),(21,7,'drink',0,1,0,1),(22,7,'flavor',0,1,0,1),(23,7,'iced',0,1,0,1),(24,7,'milk-type',0,1,0,1),(25,7,'size',0,1,0,1),(26,7,'snack',0,1,0,1),(27,7,'topping',0,1,0,1);
/*!40000 ALTER TABLE `tblentities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblentityreferences`
--

DROP TABLE IF EXISTS `tblentityreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblentityreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `reference` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `synonym` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`entity_id`),
  FULLTEXT KEY `reference` (`reference`),
  FULLTEXT KEY `synonym` (`synonym`),
  FULLTEXT KEY `reference_index` (`reference`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblentityreferences`
--

LOCK TABLES `tblentityreferences` WRITE;
/*!40000 ALTER TABLE `tblentityreferences` DISABLE KEYS */;
INSERT INTO `tblentityreferences` VALUES (115,26,'greek salad','greek salad'),(114,26,'muffin','muffin'),(113,25,'small','small,little,short,tall'),(112,25,'large','large,huge,big'),(111,25,'medium','medium'),(110,24,'almond milk','almond milk,almond'),(109,24,'soy milk','soy milk,soy'),(108,24,'regular milk','regular,two percent,low fat,lowfat,normal,low-fat'),(107,24,'cream','cream,half and half,half-and-half'),(106,24,'non fat milk','non fat milk,non fat,non-fat,skinny'),(105,23,'iced','iced,cold,chilled,on ice'),(104,22,'raspberry','raspberry'),(103,22,'caramel','caramel'),(102,22,'almond','almond,almond paste'),(101,22,'hazelnut','hazelnut'),(100,22,'sugar-free vanilla','sugar-free vanilla'),(99,22,'peppermint','peppermint'),(98,22,'blueberry','blueberry'),(97,22,'vanilla','vanilla'),(96,22,'cream cheese','cream cheese'),(153,21,'barista coffee','barista coffee'),(151,21,'espresso con panna','espresso con panna'),(152,21,'hot chocolate','hot chocolate'),(150,21,'espresso macchiato','espresso macchiato'),(148,21,'espresso','espresso'),(149,21,'cocoa','cocoa'),(146,21,'tea','tea'),(147,21,'cappuccino','cappuccino'),(145,21,'latte','latte'),(132,20,'delivery','delivery,bring me,deliver,carry out,delivered'),(131,20,'pick-up','pick-up,pickup,pick up,to go,to-go'),(79,16,'number','1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20'),(116,26,'croissant','croissant'),(117,26,'mediterranean salad','mediterranean salad'),(118,26,'bagel','bagel'),(119,26,'cupcake','cupcake'),(120,26,'plum cake','plum cake'),(121,26,'doughnut','doughnut'),(122,26,'caesar salad','caesar salad'),(123,26,'danish','danish'),(124,26,'deep dish cake','deep dish cake'),(125,26,'carrot cake','carrot cake'),(126,27,'cinnamon','cinnamon'),(127,27,'caramel','caramel'),(128,27,'whipped cream','whipped cream'),(129,27,'chocolate','chocolate'),(144,21,'moccacino','moccacino'),(154,21,'coffee','coffee');
/*!40000 ALTER TABLE `tblentityreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblestimates`
--

DROP TABLE IF EXISTS `tblestimates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `currency` (`currency`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblestimates`
--

LOCK TABLES `tblestimates` WRITE;
/*!40000 ALTER TABLE `tblestimates` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblestimates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblevents`
--

DROP TABLE IF EXISTS `tblevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL AUTO_INCREMENT,
  `title` mediumtext NOT NULL,
  `description` text,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblevents`
--

LOCK TABLES `tblevents` WRITE;
/*!40000 ALTER TABLE `tblevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblexpenses`
--

DROP TABLE IF EXISTS `tblexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text,
  `expense_name` varchar(500) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `billable` int(11) DEFAULT '0',
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` int(11) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`),
  KEY `category` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblexpenses`
--

LOCK TABLES `tblexpenses` WRITE;
/*!40000 ALTER TABLE `tblexpenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblexpensescategories`
--

DROP TABLE IF EXISTS `tblexpensescategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblexpensescategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblexpensescategories`
--

LOCK TABLES `tblexpensescategories` WRITE;
/*!40000 ALTER TABLE `tblexpensescategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblexpensescategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfiles`
--

DROP TABLE IF EXISTS `tblfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(600) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfiles`
--

LOCK TABLES `tblfiles` WRITE;
/*!40000 ALTER TABLE `tblfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblformquestionboxes`
--

DROP TABLE IF EXISTS `tblformquestionboxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblformquestionboxes` (
  `boxid` int(11) NOT NULL AUTO_INCREMENT,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`boxid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblformquestionboxes`
--

LOCK TABLES `tblformquestionboxes` WRITE;
/*!40000 ALTER TABLE `tblformquestionboxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblformquestionboxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblformquestionboxesdescription`
--

DROP TABLE IF EXISTS `tblformquestionboxesdescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblformquestionboxesdescription` (
  `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`questionboxdescriptionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblformquestionboxesdescription`
--

LOCK TABLES `tblformquestionboxesdescription` WRITE;
/*!40000 ALTER TABLE `tblformquestionboxesdescription` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblformquestionboxesdescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblformquestions`
--

DROP TABLE IF EXISTS `tblformquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblformquestions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `question_order` int(11) NOT NULL,
  PRIMARY KEY (`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblformquestions`
--

LOCK TABLES `tblformquestions` WRITE;
/*!40000 ALTER TABLE `tblformquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblformquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblformresults`
--

DROP TABLE IF EXISTS `tblformresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblformresults` (
  `resultid` int(11) NOT NULL AUTO_INCREMENT,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text,
  `resultsetid` int(11) NOT NULL,
  PRIMARY KEY (`resultid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblformresults`
--

LOCK TABLES `tblformresults` WRITE;
/*!40000 ALTER TABLE `tblformresults` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblformresults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgoals`
--

DROP TABLE IF EXISTS `tblgoals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblgoals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `goal_type` int(11) NOT NULL,
  `contract_type` int(11) NOT NULL DEFAULT '0',
  `achievement` int(11) NOT NULL,
  `notify_when_fail` tinyint(1) NOT NULL DEFAULT '1',
  `notify_when_achieve` tinyint(1) NOT NULL DEFAULT '1',
  `notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgoals`
--

LOCK TABLES `tblgoals` WRITE;
/*!40000 ALTER TABLE `tblgoals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblintents`
--

DROP TABLE IF EXISTS `tblintents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblintents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `intent_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `context_input` text COLLATE utf8_unicode_ci,
  `context_output` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `action` varchar(42) CHARACTER SET utf8 DEFAULT NULL,
  `action_parameters` text COLLATE utf8_unicode_ci,
  `is_admin` int(1) NOT NULL DEFAULT '0',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `is_end` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`agent_id`,`parent_id`,`is_admin`,`is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblintents`
--

LOCK TABLES `tblintents` WRITE;
/*!40000 ALTER TABLE `tblintents` DISABLE KEYS */;
INSERT INTO `tblintents` VALUES (4,0,0,'Default Fallback Intent','[\"\"]','[\"\"]','[\"\"]','input.unknown',NULL,1,1,0,1),(5,0,0,'Default Welcome Intent','[\"\"]','[\"Default Welcome Intent-followup\"]','[\"Welcome\"]','input.welcome',NULL,1,1,0,1),(14,7,0,'Default Fallback Intent','[]','[\"DefaultFallbackIntent-followup\"]','[]','input.unknown',NULL,0,1,0,1),(15,7,0,'Default Welcome Intent','[]','[\"DefaultWelcomeIntent-followup\"]','[]','input.welcome',NULL,0,1,0,1),(17,7,0,'order.drink','[]','[\"order.drink-followup\"]','[]','order.drink','[{\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"value\":\"$delivery-pickup\"},{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"value\":\"$drink\"},{\"parameter_name\":\"size\",\"entity\":\"@size\",\"value\":\"$size\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"value\":\"$iced\"},{\"parameter_name\":\"sys.number\",\"entity\":\"@sys.number\",\"value\":\"$sys.number\"},{\"parameter_name\":\"topping\",\"entity\":\"@topping\",\"value\":\"$topping\"}]',0,0,0,1);
/*!40000 ALTER TABLE `tblintents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblintents_responses`
--

DROP TABLE IF EXISTS `tblintents_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblintents_responses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `response` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`intent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=376 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblintents_responses`
--

LOCK TABLES `tblintents_responses` WRITE;
/*!40000 ALTER TABLE `tblintents_responses` DISABLE KEYS */;
INSERT INTO `tblintents_responses` VALUES (181,4,'I didn\'t get that. Can you say it again?'),(182,4,'I missed what you said. Say it again?'),(183,4,'Sorry, could you say that again?'),(184,4,'Sorry, can you say that again?'),(185,4,'Can you say that again?'),(186,4,'Sorry, I didn\'t get that.'),(187,4,'Sorry, what was that?'),(188,4,'One more time?'),(189,4,'What was that?'),(190,4,'Say that again?'),(191,4,'I didn\'t get that.'),(192,4,'I missed that.'),(194,5,'Good day! I have a lot coffee and snacks. What can I get you to drink?'),(200,9,'Sorry for misunderstanding. Please tell me once again, what would you like to drink?'),(201,11,'Will you use the same card?'),(202,12,'All set, enjoy!'),(266,13,'All set, enjoy!'),(327,15,'Good day! I have a lot coffee and snacks. What can I get you to drink?'),(358,14,'I didn\'t get that. Can you say it again?'),(359,14,'I missed what you said. Say it again?'),(360,14,'Sorry, could you say that again?'),(361,14,'Sorry, can you say that again?'),(362,14,'Can you say that again?'),(363,14,'Sorry, I didn\'t get that.'),(364,14,'Sorry, what was that?'),(365,14,'One more time?'),(366,14,'What was that?'),(367,14,'Say that again?'),(368,14,'I didn\'t get that.'),(369,14,'I missed that.'),(370,17,'Your order is: $size $drink with $milk-type and you want a $delivery-pickup. Is that right?'),(371,17,'You\'ve ordered $size $drink and you want a $delivery-pickup. Correct?'),(372,17,'You want $amount $size $drink with $topping and you want a $delivery-pickup. Is that right?'),(373,17,'You want $amount $size $drink with $milk-type and you want a $delivery-pickup. Is that right?'),(374,17,'You want $amount $size $drink and you want a $delivery-pickup. Is that right?'),(375,17,'You want $amount $size $drink and you want a $delivery-pickup. Is that right?');
/*!40000 ALTER TABLE `tblintents_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoicepaymentrecords`
--

DROP TABLE IF EXISTS `tblinvoicepaymentrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(11,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext,
  PRIMARY KEY (`id`),
  KEY `invoiceid` (`invoiceid`),
  KEY `paymentmethod` (`paymentmethod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoicepaymentrecords`
--

LOCK TABLES `tblinvoicepaymentrecords` WRITE;
/*!40000 ALTER TABLE `tblinvoicepaymentrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoicepaymentrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoicepaymentsmodes`
--

DROP TABLE IF EXISTS `tblinvoicepaymentsmodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoicepaymentsmodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `show_on_pdf` int(11) NOT NULL DEFAULT '0',
  `invoices_only` int(11) NOT NULL DEFAULT '0',
  `expenses_only` int(11) NOT NULL DEFAULT '0',
  `selected_by_default` int(11) NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoicepaymentsmodes`
--

LOCK TABLES `tblinvoicepaymentsmodes` WRITE;
/*!40000 ALTER TABLE `tblinvoicepaymentsmodes` DISABLE KEYS */;
INSERT INTO `tblinvoicepaymentsmodes` VALUES (1,'Bank',NULL,0,0,0,1,1);
/*!40000 ALTER TABLE `tblinvoicepaymentsmodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblinvoices`
--

DROP TABLE IF EXISTS `tblinvoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total` decimal(11,2) NOT NULL,
  `adjustment` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT '1',
  `clientnote` text,
  `adminnote` text,
  `last_overdue_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT '0',
  `allowed_payment_modes` mediumtext,
  `token` mediumtext,
  `discount_percent` decimal(11,2) DEFAULT '0.00',
  `discount_total` decimal(11,2) DEFAULT '0.00',
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text,
  `sale_agent` int(11) NOT NULL DEFAULT '0',
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `currency` (`currency`),
  KEY `clientid` (`clientid`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblinvoices`
--

LOCK TABLES `tblinvoices` WRITE;
/*!40000 ALTER TABLE `tblinvoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblinvoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblitems`
--

DROP TABLE IF EXISTS `tblitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` mediumtext NOT NULL,
  `long_description` text,
  `rate` decimal(11,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitems`
--

LOCK TABLES `tblitems` WRITE;
/*!40000 ALTER TABLE `tblitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblitems_groups`
--

DROP TABLE IF EXISTS `tblitems_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitems_groups`
--

LOCK TABLES `tblitems_groups` WRITE;
/*!40000 ALTER TABLE `tblitems_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitems_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblitems_in`
--

DROP TABLE IF EXISTS `tblitems_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitems_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext,
  `qty` decimal(11,2) NOT NULL,
  `rate` decimal(11,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitems_in`
--

LOCK TABLES `tblitems_in` WRITE;
/*!40000 ALTER TABLE `tblitems_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitems_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblitemsrelated`
--

DROP TABLE IF EXISTS `tblitemsrelated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitemsrelated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitemsrelated`
--

LOCK TABLES `tblitemsrelated` WRITE;
/*!40000 ALTER TABLE `tblitemsrelated` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemsrelated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblitemstax`
--

DROP TABLE IF EXISTS `tblitemstax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblitemstax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  `taxname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblitemstax`
--

LOCK TABLES `tblitemstax` WRITE;
/*!40000 ALTER TABLE `tblitemstax` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblitemstax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebase`
--

DROP TABLE IF EXISTS `tblknowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebase` (
  `articleid` int(11) NOT NULL AUTO_INCREMENT,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT '0',
  `staff_article` int(11) NOT NULL DEFAULT '0',
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`articleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebase`
--

LOCK TABLES `tblknowledgebase` WRITE;
/*!40000 ALTER TABLE `tblknowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebasearticleanswers`
--

DROP TABLE IF EXISTS `tblknowledgebasearticleanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebasearticleanswers` (
  `articleanswerid` int(11) NOT NULL AUTO_INCREMENT,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`articleanswerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebasearticleanswers`
--

LOCK TABLES `tblknowledgebasearticleanswers` WRITE;
/*!40000 ALTER TABLE `tblknowledgebasearticleanswers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebasearticleanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblknowledgebasegroups`
--

DROP TABLE IF EXISTS `tblknowledgebasegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblknowledgebasegroups` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `description` mediumtext,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblknowledgebasegroups`
--

LOCK TABLES `tblknowledgebasegroups` WRITE;
/*!40000 ALTER TABLE `tblknowledgebasegroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblknowledgebasegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblleadactivitylog`
--

DROP TABLE IF EXISTS `tblleadactivitylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadactivitylog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadactivitylog`
--

LOCK TABLES `tblleadactivitylog` WRITE;
/*!40000 ALTER TABLE `tblleadactivitylog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblleadactivitylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblleads`
--

DROP TABLE IF EXISTS `tblleads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(300) DEFAULT NULL,
  `description` text,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(150) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT '1',
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT '0',
  `junk` int(11) NOT NULL DEFAULT '0',
  `last_lead_status` int(11) NOT NULL DEFAULT '0',
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT '0',
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `assigned` (`assigned`),
  KEY `source` (`source`),
  KEY `lastcontact` (`lastcontact`),
  KEY `leadorder` (`leadorder`),
  KEY `dateadded` (`dateadded`),
  KEY `from_form_id` (`from_form_id`),
  KEY `from_form_id_2` (`from_form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleads`
--

LOCK TABLES `tblleads` WRITE;
/*!40000 ALTER TABLE `tblleads` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblleads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblleadsemailintegrationemails`
--

DROP TABLE IF EXISTS `tblleadsemailintegrationemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadsemailintegrationemails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext,
  `body` mediumtext,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadsemailintegrationemails`
--

LOCK TABLES `tblleadsemailintegrationemails` WRITE;
/*!40000 ALTER TABLE `tblleadsemailintegrationemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblleadsemailintegrationemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblleadsintegration`
--

DROP TABLE IF EXISTS `tblleadsintegration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadsintegration` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT '5',
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT '1',
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT '1',
  `delete_after_import` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadsintegration`
--

LOCK TABLES `tblleadsintegration` WRITE;
/*!40000 ALTER TABLE `tblleadsintegration` DISABLE KEYS */;
INSERT INTO `tblleadsintegration` VALUES (1,0,'','','',10,0,0,0,'tls','inbox','',1,1,'roles','',1,0);
/*!40000 ALTER TABLE `tblleadsintegration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblleadssources`
--

DROP TABLE IF EXISTS `tblleadssources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadssources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadssources`
--

LOCK TABLES `tblleadssources` WRITE;
/*!40000 ALTER TABLE `tblleadssources` DISABLE KEYS */;
INSERT INTO `tblleadssources` VALUES (1,'Google'),(2,'Facebook');
/*!40000 ALTER TABLE `tblleadssources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblleadsstatus`
--

DROP TABLE IF EXISTS `tblleadsstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblleadsstatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblleadsstatus`
--

LOCK TABLES `tblleadsstatus` WRITE;
/*!40000 ALTER TABLE `tblleadsstatus` DISABLE KEYS */;
INSERT INTO `tblleadsstatus` VALUES (1,'Customer',1000,'#7cb342',1);
/*!40000 ALTER TABLE `tblleadsstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllistemails`
--

DROP TABLE IF EXISTS `tbllistemails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbllistemails` (
  `emailid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllistemails`
--

LOCK TABLES `tbllistemails` WRITE;
/*!40000 ALTER TABLE `tbllistemails` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllistemails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmaillistscustomfields`
--

DROP TABLE IF EXISTS `tblmaillistscustomfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmaillistscustomfields` (
  `customfieldid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `fieldslug` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmaillistscustomfields`
--

LOCK TABLES `tblmaillistscustomfields` WRITE;
/*!40000 ALTER TABLE `tblmaillistscustomfields` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmaillistscustomfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmaillistscustomfieldvalues`
--

DROP TABLE IF EXISTS `tblmaillistscustomfieldvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmaillistscustomfieldvalues` (
  `customfieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `listid` int(11) NOT NULL,
  `customfieldid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`customfieldvalueid`),
  KEY `listid` (`listid`),
  KEY `customfieldid` (`customfieldid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmaillistscustomfieldvalues`
--

LOCK TABLES `tblmaillistscustomfieldvalues` WRITE;
/*!40000 ALTER TABLE `tblmaillistscustomfieldvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmaillistscustomfieldvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmigrations`
--

DROP TABLE IF EXISTS `tblmigrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmigrations`
--

LOCK TABLES `tblmigrations` WRITE;
/*!40000 ALTER TABLE `tblmigrations` DISABLE KEYS */;
INSERT INTO `tblmigrations` VALUES (161);
/*!40000 ALTER TABLE `tblmigrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblmilestones`
--

DROP TABLE IF EXISTS `tblmilestones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) NOT NULL,
  `description` text,
  `description_visible_to_customer` tinyint(1) DEFAULT '0',
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `datecreated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblmilestones`
--

LOCK TABLES `tblmilestones` WRITE;
/*!40000 ALTER TABLE `tblmilestones` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblmilestones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnotes`
--

DROP TABLE IF EXISTS `tblnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotes`
--

LOCK TABLES `tblnotes` WRITE;
/*!40000 ALTER TABLE `tblnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblnotifications`
--

DROP TABLE IF EXISTS `tblnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isread` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT '0',
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext,
  `additional_data` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnotifications`
--

LOCK TABLES `tblnotifications` WRITE;
/*!40000 ALTER TABLE `tblnotifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbloptions`
--

DROP TABLE IF EXISTS `tbloptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbloptions`
--

LOCK TABLES `tbloptions` WRITE;
/*!40000 ALTER TABLE `tbloptions` DISABLE KEYS */;
INSERT INTO `tbloptions` VALUES (1,'dateformat','Y-m-d|%Y-%m-%d'),(2,'companyname',''),(3,'services','1'),(4,'maximum_allowed_ticket_attachments','4'),(5,'ticket_attachments_file_extensions','.jpg,.png,.pdf,.doc'),(6,'staff_access_only_assigned_departments','1'),(7,'use_knowledge_base','1'),(8,'smtp_email',''),(9,'smtp_password',''),(10,'smtp_port',''),(11,'smtp_host',''),(12,'smtp_email_charset','utf-8'),(13,'default_timezone','Europe/Belgrade'),(14,'clients_default_theme','mediaworx'),(15,'company_logo','logo.png'),(16,'tables_pagination_limit','25'),(17,'main_domain',''),(18,'allow_registration','1'),(19,'knowledge_base_without_registration','1'),(20,'email_signature',''),(21,'default_staff_role','1'),(22,'newsfeed_maximum_files_upload','10'),(23,'newsfeed_maximum_file_size','5'),(24,'contract_expiration_before','4'),(25,'invoice_prefix','INV-'),(26,'decimal_separator','.'),(27,'thousand_separator',','),(28,'currency_placement','before'),(29,'invoice_company_name',''),(30,'invoice_company_address',''),(31,'invoice_company_city',''),(32,'invoice_company_country_code',''),(33,'invoice_company_postal_code',''),(34,'invoice_company_phonenumber',''),(35,'view_invoice_only_logged_in','0'),(36,'invoice_number_format','1'),(37,'next_invoice_number','1'),(38,'cron_send_invoice_overdue_reminder','1'),(39,'active_language','english'),(40,'invoice_number_decrement_on_delete','1'),(41,'automatically_send_invoice_overdue_reminder_after','1'),(42,'automatically_resend_invoice_overdue_reminder_after','3'),(43,'expenses_auto_operations_hour','21'),(44,'survey_send_emails_per_cron_run','100'),(45,'delete_only_on_last_invoice','1'),(46,'delete_only_on_last_estimate','1'),(47,'create_invoice_from_recurring_only_on_paid_invoices','0'),(48,'allow_payment_amount_to_be_modified','1'),(49,'send_renewed_invoice_from_recurring_to_email','1'),(50,'rtl_support_client','0'),(51,'limit_top_search_bar_results_to','10'),(52,'estimate_prefix','EST-'),(53,'next_estimate_number','1'),(54,'estimate_number_decrement_on_delete','1'),(55,'estimate_number_format','1'),(56,'estimate_auto_convert_to_invoice_on_client_accept','1'),(57,'exclude_estimate_from_client_area_with_draft_status','1'),(58,'rtl_support_admin','0'),(59,'last_cron_run',''),(60,'show_sale_agent_on_estimates','1'),(61,'show_sale_agent_on_invoices','1'),(62,'predefined_terms_invoice',''),(63,'predefined_terms_estimate',''),(64,'default_task_priority','2'),(65,'dropbox_app_key',''),(66,'show_expense_reminders_on_calendar','1'),(67,'only_show_contact_tickets','1'),(68,'predefined_clientnote_invoice',''),(69,'predefined_clientnote_estimate',''),(70,'custom_pdf_logo_image_url',''),(71,'favicon','favicon.ico'),(72,'auto_backup_enabled','0'),(73,'invoice_due_after','30'),(74,'google_api_key',''),(75,'google_calendar_main_calendar',''),(76,'default_tax',''),(77,'show_invoices_on_calendar','1'),(78,'show_estimates_on_calendar','1'),(79,'show_contracts_on_calendar','1'),(80,'show_tasks_on_calendar','1'),(81,'show_customer_reminders_on_calendar','1'),(82,'auto_backup_every','7'),(83,'last_auto_backup',''),(84,'output_client_pdfs_from_admin_area_in_client_language','0'),(85,'show_lead_reminders_on_calendar','1'),(86,'aside_menu_active','{\"aside_menu_active\":[{\"name\":\"als_dashboard\",\"url\":\"\\/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-users\",\"id\":\"customers\"},{\"id\":\"mediaworx\",\"name\":\"als_mediaworx\",\"url\":\"#\",\"permission\":\"echelon\",\"icon\":\"fa fa-comments-o\",\"children\":[{\"name\":\"als_intents\",\"url\":\"intents\",\"permission\":\"echelon\",\"icon\":\"\",\"id\":\"intents\"},{\"name\":\"als_entities\",\"url\":\"entities\",\"permission\":\"echelon\",\"icon\":\"\",\"id\":\"entities\"}]},{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-bars\",\"id\":\"projects\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"name\":\"proposals\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\",\"id\":\"child-proposals\"},{\"name\":\"estimates\",\"url\":\"estimates\\/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\",\"id\":\"child-estimates\"},{\"name\":\"invoices\",\"url\":\"invoices\\/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\",\"id\":\"child-invoices\"},{\"name\":\"payments\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\",\"id\":\"child-payments\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"}]},{\"name\":\"als_expenses\",\"url\":\"expenses\\/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-heartbeat\",\"id\":\"expenses\"},{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-ticket\",\"id\":\"tickets\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"},{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"},{\"name\":\"als_tasks\",\"url\":\"tasks\\/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},{\"name\":\"als_kb\",\"url\":\"#\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\",\"children\":[{\"name\":\"als_all_articles\",\"url\":\"knowledge_base\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-all-articles\"},{\"name\":\"als_kb_groups\",\"url\":\"knowledge_base\\/manage_groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-groups\"}]},{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-area-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports\\/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports\\/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports\\/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports\\/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports\\/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"}]},{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities\\/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities\\/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities\\/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"utility_backup\",\"url\":\"utilities\\/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities\\/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities\\/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]}]}'),(87,'estimate_expiry_reminder_enabled','1'),(88,'send_estimate_expiry_reminder_before','4'),(89,'leads_default_source',''),(90,'leads_default_status',''),(91,'proposal_expiry_reminder_enabled','1'),(92,'send_proposal_expiry_reminder_before','4'),(93,'default_contact_permissions','a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}'),(94,'pdf_logo_width','150'),(95,'aside_menu_inactive','{\"aside_menu_inactive\":[]}'),(96,'setup_menu_active','{\"setup_menu_active\":[{\"permission\":\"staff\",\"name\":\"als_staff\",\"url\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"permission\":\"is_admin\",\"name\":\"clients\",\"url\":\"#\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"permission\":\"\",\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"icon\":\"\",\"id\":\"groups\"}]},{\"permission\":\"\",\"name\":\"support\",\"url\":\"#\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"permission\":\"is_admin\",\"name\":\"acs_departments\",\"url\":\"departments\",\"icon\":\"\",\"id\":\"departments\"},{\"permission\":\"is_admin\",\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predifined_replies\",\"icon\":\"\",\"id\":\"predifined-replies\"},{\"permission\":\"is_admin\",\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"permission\":\"is_admin\",\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"permission\":\"is_admin\",\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"icon\":\"\",\"id\":\"services\"},{\"permission\":\"is_admin\",\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"icon\":\"\",\"id\":\"spam-filters\"}]},{\"permission\":\"is_admin\",\"name\":\"acs_leads\",\"url\":\"#\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"permission\":\"\",\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"icon\":\"\",\"id\":\"sources\"},{\"permission\":\"\",\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"icon\":\"\",\"id\":\"statuses\"},{\"permission\":\"\",\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"icon\":\"\",\"id\":\"email-integration\"},{\"name\":\"web_to_lead\",\"permission\":\"is_admin\",\"icon\":\"\",\"url\":\"leads\\/forms\",\"id\":\"web-to-lead\"}]},{\"permission\":\"is_admin\",\"name\":\"acs_finance\",\"url\":\"#\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"permission\":\"\",\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"icon\":\"\",\"id\":\"taxes\"},{\"permission\":\"\",\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"icon\":\"\",\"id\":\"currencies\"},{\"permission\":\"\",\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"icon\":\"\",\"id\":\"payment-modes\"},{\"permission\":\"\",\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"icon\":\"\",\"id\":\"expenses-categories\"}]},{\"permission\":\"is_admin\",\"name\":\"acs_contracts\",\"url\":\"#\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"permission\":\"\",\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"icon\":\"\",\"id\":\"contract-types\"}]},{\"permission\":\"email_templates\",\"name\":\"acs_email_templates\",\"url\":\"emails\",\"icon\":\"\",\"id\":\"email-templates\"},{\"permission\":\"is_admin\",\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"icon\":\"\",\"id\":\"custom-fields\"},{\"permission\":\"roles\",\"name\":\"acs_roles\",\"url\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"permission\":\"is_admin\",\"name\":\"menu_builder\",\"url\":\"#\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"permission\":\"\",\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"permission\":\"is_admin\",\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"icon\":\"\",\"id\":\"setup-menu\"}]},{\"name\":\"theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"url\":\"utilities\\/theme_style\",\"id\":\"theme-style\"},{\"permission\":\"settings\",\"name\":\"acs_settings\",\"url\":\"settings\",\"icon\":\"\",\"id\":\"settings\"}]}'),(97,'access_tickets_to_none_staff_members','0'),(98,'setup_menu_inactive','{\"setup_menu_inactive\":[]}'),(99,'customer_default_country','196'),(100,'view_estimate_only_logged_in','0'),(101,'show_status_on_pdf_ei','1'),(102,'email_piping_only_replies','0'),(103,'email_piping_only_registered','0'),(104,'default_view_calendar','month'),(105,'email_piping_default_priority','2'),(106,'total_to_words_lowercase','0'),(107,'show_tax_per_item','1'),(108,'last_survey_send_cron',''),(109,'total_to_words_enabled','0'),(110,'receive_notification_on_new_ticket','1'),(111,'autoclose_tickets_after','0'),(112,'media_max_file_size_upload','10'),(113,'client_staff_add_edit_delete_task_comments_first_hour','0'),(114,'show_projects_on_calendar','1'),(115,'leads_kanban_limit','50'),(116,'tasks_reminder_notification_before','2'),(117,'pdf_font','freesans'),(118,'pdf_table_heading_color','#323a45'),(119,'pdf_table_heading_text_color','#ffffff'),(120,'pdf_font_size','10'),(121,'defaut_leads_kanban_sort','leadorder'),(122,'defaut_leads_kanban_sort_type','asc'),(123,'allowed_files','.gif,.png,.jpeg,.jpg,.pdf,.doc,.txt,.docx,.xls,.zip,.rar,.xls,.mp4'),(124,'show_all_tasks_for_project_member','1'),(125,'email_protocol','smtp'),(126,'calendar_first_day','0'),(127,'recaptcha_secret_key',''),(128,'show_help_on_setup_menu','1'),(129,'show_proposals_on_calendar','1'),(130,'smtp_encryption',''),(131,'recaptcha_site_key',''),(132,'smtp_username',''),(133,'auto_stop_tasks_timers_on_new_timer','0'),(134,'notification_when_customer_pay_invoice','1'),(135,'theme_style','[]'),(136,'calendar_invoice_color','#FF6F00'),(137,'calendar_estimate_color','#FF6F00'),(138,'calendar_proposal_color','#84c529'),(139,'calendar_task_color','#FC2D42'),(140,'calendar_reminder_color','#03A9F4'),(141,'calendar_contract_color','#B72974'),(142,'calendar_project_color','#B72974'),(143,'update_info_message',''),(144,'show_estimate_reminders_on_calendar','1'),(145,'show_invoice_reminders_on_calendar','1'),(146,'show_proposal_reminders_on_calendar','1'),(147,'proposal_due_after','7'),(148,'allow_customer_to_change_ticket_status','0'),(149,'lead_lock_after_convert_to_customer','0'),(150,'default_proposals_pipeline_sort','pipeline_order'),(151,'defaut_proposals_pipeline_sort_type','asc'),(152,'default_estimates_pipeline_sort','pipeline_order'),(153,'defaut_estimates_pipeline_sort_type','asc'),(154,'use_recaptcha_customers_area','0'),(155,'remove_decimals_on_zero','0'),(156,'remove_tax_name_from_item_table','0'),(157,'pdf_format_invoice','A4-PORTRAIT'),(158,'pdf_format_estimate','A4-PORTRAIT'),(159,'pdf_format_proposal','A4-PORTRAIT'),(160,'pdf_format_payment','A4-PORTRAIT'),(161,'pdf_format_contract','A4-PORTRAIT'),(162,'pdf_text_color','#000000'),(163,'auto_check_for_new_notifications','0'),(164,'swap_pdf_info','0'),(165,'exclude_invoice_from_client_area_with_draft_status','1'),(166,'cron_has_run_from_cli','0'),(167,'hide_cron_is_required_message','0'),(168,'auto_assign_customer_admin_after_lead_convert','1'),(169,'show_transactions_on_invoice_pdf','1'),(170,'show_pay_link_to_invoice_pdf','1'),(171,'tasks_kanban_limit','50'),(172,'purchase_key',''),(173,'estimates_pipeline_limit','50'),(174,'proposals_pipeline_limit','50'),(175,'proposal_number_prefix','PRO-'),(176,'number_padding_prefixes','6'),(177,'show_page_number_on_pdf','0'),(178,'calendar_events_limit','4'),(179,'show_setup_menu_item_only_on_hover','0'),(180,'company_requires_vat_number_field','1'),(181,'company_is_required','1'),(182,'allow_contact_to_delete_files','0'),(183,'company_vat',''),(184,'di','1521457438'),(185,'invoice_auto_operations_hour','21'),(186,'use_minified_files','1'),(187,'only_own_files_contacts','0'),(188,'allow_primary_contact_to_view_edit_billing_and_shipping','0'),(189,'estimate_due_after','7'),(190,'delete_backups_older_then','0'),(191,'staff_members_open_tickets_to_all_contacts','1'),(192,'paymentmethod_authorize_aim_active','0'),(193,'paymentmethod_authorize_aim_label','Authorize.net'),(194,'paymentmethod_authorize_aim_api_login_id',''),(195,'paymentmethod_authorize_aim_api_transaction_key',''),(196,'paymentmethod_authorize_aim_currencies','USD'),(197,'paymentmethod_authorize_aim_default_selected','1'),(198,'paymentmethod_authorize_aim_test_mode_enabled','0'),(199,'paymentmethod_authorize_aim_developer_mode_enabled','1'),(200,'paymentmethod_authorize_sim_active','0'),(201,'paymentmethod_authorize_sim_label','Authorize.net'),(202,'paymentmethod_authorize_sim_api_login_id',''),(203,'paymentmethod_authorize_sim_api_transaction_key',''),(204,'paymentmethod_authorize_sim_api_secret_key',''),(205,'paymentmethod_authorize_sim_currencies','USD'),(206,'paymentmethod_authorize_sim_default_selected','1'),(207,'paymentmethod_authorize_sim_test_mode_enabled','0'),(208,'paymentmethod_authorize_sim_developer_mode_enabled','1'),(209,'paymentmethod_mollie_active','0'),(210,'paymentmethod_mollie_label','Mollie'),(211,'paymentmethod_mollie_api_key',''),(212,'paymentmethod_mollie_currencies','EUR'),(213,'paymentmethod_mollie_default_selected','1'),(214,'paymentmethod_mollie_test_mode_enabled','1'),(215,'paymentmethod_paypal_braintree_active','0'),(216,'paymentmethod_paypal_braintree_label','Braintree'),(217,'paymentmethod_paypal_braintree_merchant_id',''),(218,'paymentmethod_paypal_braintree_api_public_key',''),(219,'paymentmethod_paypal_braintree_api_private_key',''),(220,'paymentmethod_paypal_braintree_currencies','USD'),(221,'paymentmethod_paypal_braintree_default_selected','1'),(222,'paymentmethod_paypal_braintree_test_mode_enabled','1'),(223,'paymentmethod_paypal_active','0'),(224,'paymentmethod_paypal_label','Paypal'),(225,'paymentmethod_paypal_username',''),(226,'paymentmethod_paypal_password',''),(227,'paymentmethod_paypal_signature',''),(228,'paymentmethod_paypal_currencies','EUR,USD'),(229,'paymentmethod_paypal_default_selected','1'),(230,'paymentmethod_paypal_test_mode_enabled','1'),(231,'paymentmethod_stripe_active','0'),(232,'paymentmethod_stripe_label','Stripe'),(233,'paymentmethod_stripe_api_secret_key',''),(234,'paymentmethod_stripe_api_publishable_key',''),(235,'paymentmethod_stripe_currencies','USD,CAD'),(236,'paymentmethod_stripe_default_selected','1'),(237,'paymentmethod_stripe_test_mode_enabled','1'),(238,'paymentmethod_two_checkout_active','0'),(239,'paymentmethod_two_checkout_label','2Checkout'),(240,'paymentmethod_two_checkout_account_number',''),(241,'paymentmethod_two_checkout_private_key',''),(242,'paymentmethod_two_checkout_publishable_key',''),(243,'paymentmethod_two_checkout_currencies','USD,EUR'),(244,'paymentmethod_two_checkout_default_selected','1'),(245,'paymentmethod_two_checkout_test_mode_enabled','1');
/*!40000 ALTER TABLE `tbloptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpatterns`
--

DROP TABLE IF EXISTS `tblpatterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpatterns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL,
  `pattern` text COLLATE utf8_unicode_ci NOT NULL,
  `stanford` text COLLATE utf8_unicode_ci NOT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  `is_child` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`object_id`,`object`),
  FULLTEXT KEY `pattern_index` (`pattern`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpatterns`
--

LOCK TABLES `tblpatterns` WRITE;
/*!40000 ALTER TABLE `tblpatterns` DISABLE KEYS */;
INSERT INTO `tblpatterns` VALUES (100,'intents',5,'Hello','[[\"Hello\",\"UH\"]]','null',0),(101,'intents',5,'Hi!','[[\"Hi\",\"NN\"]]','null',0),(460,'intents',15,'Hello','[[\"Hello\",\"UH\"]]','null',0),(461,'intents',15,'Hi','[[\"Hi\",\"NN\"]]','null',0),(482,'intents',17,'may i get * please','[[\"may\",\"MD\"],[\"i\",\"FW\"],[\"get\",\"VB\"],[\"*\",\"SYM\"],[\"please\",\"VB\"]]','null',0),(483,'intents',17,'small cold coffee for pick up please','[[\"small\",\"JJ\"],[\"cold\",\"JJ\"],[\"coffee\",\"NN\"],[\"for\",\"IN\"],[\"pick\",\"NN\"],[\"up\",\"RP\"],[\"please\",\"VB\"]]','[{\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"small\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"cold\"},{\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"pick up\"},{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"coffee\"}]',0),(484,'intents',17,'order coffee','[[\"order\",\"NN\"],[\"coffee\",\"NN\"]]','null',0),(485,'intents',17,'do you have iced latte','[[\"do\",\"VB\"],[\"you\",\"PRP\"],[\"have\",\"VBP\"],[\"iced\",\"JJ\"],[\"latte\",\"NN\"]]','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"latte\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"iced\"}]',0),(486,'intents',17,'I want a cappuccino to go','[[\"I\",\"PRP\"],[\"want\",\"VBP\"],[\"a\",\"DT\"],[\"cappuccino\",\"NN\"],[\"to\",\"TO\"],[\"go\",\"VB\"]]','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"cappuccino\"}]',0),(487,'intents',17,'2 lattes please','[[\"2\",\"CD\"],[\"lattes\",\"NNS\"],[\"please\",\"VB\"]]','[{\"parameter_name\":\"sys.number\",\"entity\":\"@sys.number\",\"resolved_value\":\"2\"}]',0),(488,'intents',17,'can I get a small iced latte with low fat milk','[[\"can\",\"MD\"],[\"I\",\"PRP\"],[\"get\",\"VB\"],[\"a\",\"DT\"],[\"small\",\"JJ\"],[\"iced\",\"JJ\"],[\"latte\",\"NN\"],[\"with\",\"IN\"],[\"low\",\"JJ\"],[\"fat\",\"JJ\"],[\"milk\",\"NN\"]]','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"latte\"},{\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"small\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"iced\"}]',0),(489,'intents',17,'cappuccino','[[\"cappuccino\",\"NN\"]]','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"cappuccino\"}]',0),(490,'intents',17,'I want iced coffee','[[\"I\",\"PRP\"],[\"want\",\"VBP\"],[\"iced\",\"JJ\"],[\"coffee\",\"NN\"]]','[{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"iced\"}]',0),(491,'intents',17,'hot chocolate','[[\"hot\",\"JJ\"],[\"chocolate\",\"NN\"]]','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"hot chocolate\"},{\"parameter_name\":\"topping\",\"entity\":\"@topping\",\"resolved_value\":\"chocolate\"}]',0),(492,'intents',17,'people need coffee','[[\"people\",\"NNS\"],[\"need\",\"VBP\"],[\"coffee\",\"NN\"]]','null',0),(493,'intents',17,'I\'d like to order a drink','[[\"I\",\"PRP\"],[\"\'d\",\"MD\"],[\"like\",\"VB\"],[\"to\",\"TO\"],[\"order\",\"VB\"],[\"a\",\"DT\"],[\"drink\",\"NN\"]]','null',0),(494,'intents',17,'can I get tea','[[\"can\",\"MD\"],[\"I\",\"PRP\"],[\"get\",\"VB\"],[\"tea\",\"NN\"]]','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"tea\"}]',0),(495,'intents',17,'some tea please','[[\"some\",\"DT\"],[\"tea\",\"NN\"],[\"please\",\"VB\"]]','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"tea\"}]',0),(496,'intents',17,'I need a cup of coffee','[[\"I\",\"PRP\"],[\"need\",\"VBP\"],[\"a\",\"DT\"],[\"cup\",\"NN\"],[\"of\",\"IN\"],[\"coffee\",\"NN\"]]','null',0),(497,'intents',17,'can I get a huge cup of macchiato','[[\"can\",\"MD\"],[\"I\",\"PRP\"],[\"get\",\"VB\"],[\"a\",\"DT\"],[\"huge\",\"JJ\"],[\"cup\",\"NN\"],[\"of\",\"IN\"],[\"macchiato\",\"NN\"]]','[{\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"huge\"}]',0),(498,'intents',17,'2 medium macchiato','[[\"2\",\"CD\"],[\"medium\",\"NN\"],[\"macchiato\",\"NN\"]]','[{\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"medium\"},{\"parameter_name\":\"sys.number\",\"entity\":\"@sys.number\",\"resolved_value\":\"2\"}]',0),(499,'intents',17,'two medium cappuccinos please','[[\"two\",\"CD\"],[\"medium\",\"NN\"],[\"cappuccinos\",\"NNS\"],[\"please\",\"VB\"]]','[{\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"medium\"},{\"parameter_name\":\"sys.number\",\"entity\":\"@sys.number\",\"resolved_value\":\"2\"}]',0),(500,'intents',17,'I\'d like a coffee to go','[[\"I\",\"PRP\"],[\"\'d\",\"MD\"],[\"like\",\"VB\"],[\"a\",\"DT\"],[\"coffee\",\"NN\"],[\"to\",\"TO\"],[\"go\",\"VB\"]]','null',0),(501,'intents',17,'can I get a small iced cappuccino with low fat milk','[[\"can\",\"MD\"],[\"I\",\"PRP\"],[\"get\",\"VB\"],[\"a\",\"DT\"],[\"small\",\"JJ\"],[\"iced\",\"JJ\"],[\"cappuccino\",\"NN\"],[\"with\",\"IN\"],[\"low\",\"JJ\"],[\"fat\",\"JJ\"],[\"milk\",\"NN\"]]','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"cappuccino\"},{\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"small\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"iced\"}]',0),(502,'intents',17,'I\'d like a coffee delivered','[[\"I\",\"PRP\"],[\"\'d\",\"MD\"],[\"like\",\"VB\"],[\"a\",\"DT\"],[\"coffee\",\"NN\"],[\"delivered\",\"VBN\"]]','[{\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"delivered\"}]',0);
/*!40000 ALTER TABLE `tblpatterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpermissions`
--

DROP TABLE IF EXISTS `tblpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpermissions` (
  `permissionid` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext NOT NULL,
  `shortname` mediumtext NOT NULL,
  PRIMARY KEY (`permissionid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpermissions`
--

LOCK TABLES `tblpermissions` WRITE;
/*!40000 ALTER TABLE `tblpermissions` DISABLE KEYS */;
INSERT INTO `tblpermissions` VALUES (1,'Contracts','contracts'),(2,'Tasks','tasks'),(3,'Reports','reports'),(4,'Settings','settings'),(5,'Projects','projects'),(6,'Surveys','surveys'),(7,'Staff','staff'),(8,'Customers','customers'),(9,'Email Templates','email_templates'),(10,'Roles','roles'),(11,'Estimates','estimates'),(12,'Knowledge base','knowledge_base'),(13,'Proposals','proposals'),(14,'Goals','goals'),(15,'Expenses','expenses'),(16,'Bulk PDF Exporter','bulk_pdf_exporter'),(17,'Payments','payments'),(18,'Invoices','invoices'),(19,'Items','items'),(20,'Echelon','echelon');
/*!40000 ALTER TABLE `tblpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpinnedprojects`
--

DROP TABLE IF EXISTS `tblpinnedprojects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpinnedprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpinnedprojects`
--

LOCK TABLES `tblpinnedprojects` WRITE;
/*!40000 ALTER TABLE `tblpinnedprojects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpinnedprojects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpostcomments`
--

DROP TABLE IF EXISTS `tblpostcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpostcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpostcomments`
--

LOCK TABLES `tblpostcomments` WRITE;
/*!40000 ALTER TABLE `tblpostcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpostcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpostlikes`
--

DROP TABLE IF EXISTS `tblpostlikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpostlikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpostlikes`
--

LOCK TABLES `tblpostlikes` WRITE;
/*!40000 ALTER TABLE `tblpostlikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpostlikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblposts`
--

DROP TABLE IF EXISTS `tblposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblposts` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblposts`
--

LOCK TABLES `tblposts` WRITE;
/*!40000 ALTER TABLE `tblposts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpredifinedreplies`
--

DROP TABLE IF EXISTS `tblpredifinedreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpredifinedreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpredifinedreplies`
--

LOCK TABLES `tblpredifinedreplies` WRITE;
/*!40000 ALTER TABLE `tblpredifinedreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpredifinedreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpriorities`
--

DROP TABLE IF EXISTS `tblpriorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblpriorities` (
  `priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`priorityid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpriorities`
--

LOCK TABLES `tblpriorities` WRITE;
/*!40000 ALTER TABLE `tblpriorities` DISABLE KEYS */;
INSERT INTO `tblpriorities` VALUES (1,'Low'),(2,'Medium'),(3,'High');
/*!40000 ALTER TABLE `tblpriorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprojectactivity`
--

DROP TABLE IF EXISTS `tblprojectactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT '0',
  `description_key` varchar(500) NOT NULL COMMENT 'Language file key',
  `additional_data` text,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectactivity`
--

LOCK TABLES `tblprojectactivity` WRITE;
/*!40000 ALTER TABLE `tblprojectactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprojectdiscussioncomments`
--

DROP TABLE IF EXISTS `tblprojectdiscussioncomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT '0',
  `fullname` varchar(300) DEFAULT NULL,
  `file_name` varchar(300) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectdiscussioncomments`
--

LOCK TABLES `tblprojectdiscussioncomments` WRITE;
/*!40000 ALTER TABLE `tblprojectdiscussioncomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectdiscussioncomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprojectdiscussions`
--

DROP TABLE IF EXISTS `tblprojectdiscussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT '0',
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectdiscussions`
--

LOCK TABLES `tblprojectdiscussions` WRITE;
/*!40000 ALTER TABLE `tblprojectdiscussions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectdiscussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprojectfiles`
--

DROP TABLE IF EXISTS `tblprojectfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` mediumtext NOT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `description` text,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT '0',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `external` varchar(40) DEFAULT NULL,
  `external_link` text,
  `thumbnail_link` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectfiles`
--

LOCK TABLES `tblprojectfiles` WRITE;
/*!40000 ALTER TABLE `tblprojectfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprojectmembers`
--

DROP TABLE IF EXISTS `tblprojectmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectmembers`
--

LOCK TABLES `tblprojectmembers` WRITE;
/*!40000 ALTER TABLE `tblprojectmembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprojectnotes`
--

DROP TABLE IF EXISTS `tblprojectnotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectnotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectnotes`
--

LOCK TABLES `tblprojectnotes` WRITE;
/*!40000 ALTER TABLE `tblprojectnotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectnotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprojects`
--

DROP TABLE IF EXISTS `tblprojects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '0',
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT '0',
  `progress_from_tasks` int(11) NOT NULL DEFAULT '1',
  `project_cost` decimal(11,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(11,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `clientid` (`clientid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojects`
--

LOCK TABLES `tblprojects` WRITE;
/*!40000 ALTER TABLE `tblprojects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblprojectsettings`
--

DROP TABLE IF EXISTS `tblprojectsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblprojectsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblprojectsettings`
--

LOCK TABLES `tblprojectsettings` WRITE;
/*!40000 ALTER TABLE `tblprojectsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblprojectsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproposalcomments`
--

DROP TABLE IF EXISTS `tblproposalcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproposalcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproposalcomments`
--

LOCK TABLES `tblproposalcomments` WRITE;
/*!40000 ALTER TABLE `tblproposalcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproposalcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproposals`
--

DROP TABLE IF EXISTS `tblproposals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(500) DEFAULT NULL,
  `content` longtext,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(11,2) DEFAULT NULL,
  `subtotal` decimal(11,2) NOT NULL,
  `total_tax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(11,2) DEFAULT NULL,
  `discount_percent` decimal(11,2) NOT NULL,
  `discount_total` decimal(11,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT '1',
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(600) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT '0',
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) NOT NULL DEFAULT '0',
  `is_expiry_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproposals`
--

LOCK TABLES `tblproposals` WRITE;
/*!40000 ALTER TABLE `tblproposals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblproposals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblreminders`
--

DROP TABLE IF EXISTS `tblreminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT '0',
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT '1',
  `creator` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreminders`
--

LOCK TABLES `tblreminders` WRITE;
/*!40000 ALTER TABLE `tblreminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblreminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrolepermissions`
--

DROP TABLE IF EXISTS `tblrolepermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblrolepermissions` (
  `rolepermissionid` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `permissionid` int(11) NOT NULL,
  PRIMARY KEY (`rolepermissionid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrolepermissions`
--

LOCK TABLES `tblrolepermissions` WRITE;
/*!40000 ALTER TABLE `tblrolepermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblrolepermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblroles`
--

DROP TABLE IF EXISTS `tblroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblroles`
--

LOCK TABLES `tblroles` WRITE;
/*!40000 ALTER TABLE `tblroles` DISABLE KEYS */;
INSERT INTO `tblroles` VALUES (1,'Employee');
/*!40000 ALTER TABLE `tblroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsalesactivity`
--

DROP TABLE IF EXISTS `tblsalesactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsalesactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` varchar(600) DEFAULT NULL,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsalesactivity`
--

LOCK TABLES `tblsalesactivity` WRITE;
/*!40000 ALTER TABLE `tblsalesactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsalesactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblservices`
--

DROP TABLE IF EXISTS `tblservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblservices`
--

LOCK TABLES `tblservices` WRITE;
/*!40000 ALTER TABLE `tblservices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsessions`
--

DROP TABLE IF EXISTS `tblsessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsessions`
--

LOCK TABLES `tblsessions` WRITE;
/*!40000 ALTER TABLE `tblsessions` DISABLE KEYS */;
INSERT INTO `tblsessions` VALUES ('9adh7h7o5beeq4am6shfcku3qd57h3ea','127.0.0.1',1521458090,'__ci_last_regenerate|i:1521458090;red_url|s:5:\"admin\";'),('jqvc8ocqfp7m8felgi378270fmuka37b','127.0.0.1',1521458653,'__ci_last_regenerate|i:1521458653;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('hric8ko26lvmr7ipcohvt578bl35iqu8','127.0.0.1',1521459074,'__ci_last_regenerate|i:1521459074;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('pdj8bb4aifb47t5gk4pkpq8ql8js8vs4','127.0.0.1',1521459433,'__ci_last_regenerate|i:1521459433;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('qf6abrlb083qv2s75vj5iinlmdmj0p2d','127.0.0.1',1521459766,'__ci_last_regenerate|i:1521459766;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('mtb6vqgvhqnqg58bkoh0fc1oike1vpk6','127.0.0.1',1521460179,'__ci_last_regenerate|i:1521460179;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('m8o1qlksi5c3pcf06sibe7vdol5fmclk','127.0.0.1',1521460504,'__ci_last_regenerate|i:1521460504;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('25tku9v7gen6gdq0ujm7m7mbg2c1grgp','127.0.0.1',1521460913,'__ci_last_regenerate|i:1521460913;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('bf4q08kastpuuss7cqgld1tg35pbs0vm','127.0.0.1',1521461225,'__ci_last_regenerate|i:1521461225;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('6fqoqs5djsgcqb6qvomakulelnblrp7c','127.0.0.1',1521462113,'__ci_last_regenerate|i:1521462113;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('elarso3ujstsqv0urg9rq95u43bog7ho','127.0.0.1',1521462550,'__ci_last_regenerate|i:1521462550;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('iea2b23cua4t6an21s8nf1h6p9cn66e3','127.0.0.1',1521470398,'__ci_last_regenerate|i:1521470398;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('9blc625l9r01se6gb47bg7394q92fkov','127.0.0.1',1521472157,'__ci_last_regenerate|i:1521472157;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('falc3vj3em25bg6an0f121830db1bb0p','127.0.0.1',1521472158,'__ci_last_regenerate|i:1521472157;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('o6b6ju9kgg067085i4dhcu70p7fe3ck2','127.0.0.1',1521523384,'__ci_last_regenerate|i:1521523384;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fvqpd91facq5ujdp8nl2o3lu7jnbjqd1','127.0.0.1',1521524328,'__ci_last_regenerate|i:1521524328;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9rp6gr1el18mmhdt0m533cegq3i8a5n0','127.0.0.1',1521524721,'__ci_last_regenerate|i:1521524721;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('b0nkejq9jribcre14ogfmf0v6rembain','127.0.0.1',1521525235,'__ci_last_regenerate|i:1521525235;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('adg0fbve8tbmp41eco2qhfkkdm9hbl91','127.0.0.1',1521525617,'__ci_last_regenerate|i:1521525617;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('339r8u18520a4d39kr6dl66efm7qu1dh','127.0.0.1',1521525966,'__ci_last_regenerate|i:1521525966;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('t4kk4god2hr95bqa2nvgmscnh1ner1c7','127.0.0.1',1521526321,'__ci_last_regenerate|i:1521526321;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cmv5mh8di0m1hjtjde8i9b63j356hlak','127.0.0.1',1521526682,'__ci_last_regenerate|i:1521526682;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1oja89rjd0sq8l9cu4fmi8gumlbcmg2f','127.0.0.1',1521526984,'__ci_last_regenerate|i:1521526984;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('nqli41m3okjfr6fca5fn9v6dddi84sai','127.0.0.1',1521527470,'__ci_last_regenerate|i:1521527470;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('u76d1apvsjuig06s89tmtdj7aq19r6i5','127.0.0.1',1521527830,'__ci_last_regenerate|i:1521527830;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('mjmrlt1p5gqlltvqiu6c202v7kv2d0d7','127.0.0.1',1521528146,'__ci_last_regenerate|i:1521528146;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ucj6hubhjsp40n9ai7ujpvvi91j2ai9j','127.0.0.1',1521528467,'__ci_last_regenerate|i:1521528467;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jqp3k9el5272rbu1sciu9grmpd8tsbrb','127.0.0.1',1521528857,'__ci_last_regenerate|i:1521528857;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cch036cssomrc159tsmnv2dmu5hhc8la','127.0.0.1',1521529236,'__ci_last_regenerate|i:1521529236;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('2tmv22jbbnakcg0le4dtgci1hc8vbtda','127.0.0.1',1521529544,'__ci_last_regenerate|i:1521529544;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('eq7t5n6m83g4rk2erkrojjtf3c1oihfv','127.0.0.1',1521530048,'__ci_last_regenerate|i:1521530048;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('avgst5n71am678j96fbpltiblg3gvm1j','127.0.0.1',1521530400,'__ci_last_regenerate|i:1521530400;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cbmgtgremki6i6hc5tv82kt1grcdk7fg','127.0.0.1',1521530782,'__ci_last_regenerate|i:1521530782;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('g96a4j8cjdmfbl6de9npoj8j02s7gir8','127.0.0.1',1521531360,'__ci_last_regenerate|i:1521531360;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('h17d7sl6pcpihrai6j15u926o5tfrrv1','127.0.0.1',1521531839,'__ci_last_regenerate|i:1521531839;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('sbjp0h33s3epf3jpnhl9t726kelv4j1b','127.0.0.1',1521532252,'__ci_last_regenerate|i:1521532252;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ms0mscpetegnvi2g7nke4t9md4grrmsk','127.0.0.1',1521532611,'__ci_last_regenerate|i:1521532611;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('f24kjlbv1tsbuepuraih8shfr8coqqnm','127.0.0.1',1521533006,'__ci_last_regenerate|i:1521533006;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('60hkait8pnh5468r6p07e8806s77hohh','127.0.0.1',1521533363,'__ci_last_regenerate|i:1521533363;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('088ck8557aoe6dlv2t1cv1ctrhsfdbef','127.0.0.1',1521533708,'__ci_last_regenerate|i:1521533708;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('g28b5q118kqv5nl6ituhqt0plsi6u4it','127.0.0.1',1521534405,'__ci_last_regenerate|i:1521534405;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gkvur0a3ml2l78ricsa14fk9af4de0vr','127.0.0.1',1521534774,'__ci_last_regenerate|i:1521534774;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('74q0b38k1ikjuuhmj53g6uquf41a5u2p','127.0.0.1',1521535114,'__ci_last_regenerate|i:1521535114;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('049v4biq1q97frcg6bnmj7ik9gk9iprr','127.0.0.1',1521535439,'__ci_last_regenerate|i:1521535439;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4grbm9m8cj9al02gi3rndq1nhjnnegoe','127.0.0.1',1521535750,'__ci_last_regenerate|i:1521535750;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('k8t5u05b5a3k7j1lhc8ufvi1pl946ve5','127.0.0.1',1521536066,'__ci_last_regenerate|i:1521536066;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vu3jqbf24n8c45tfcn0o49uojtk8adu4','127.0.0.1',1521536378,'__ci_last_regenerate|i:1521536378;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('j82ir3ej7kbpdt51trhvcatrcrgndtr0','127.0.0.1',1521536706,'__ci_last_regenerate|i:1521536706;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jvjge023eaou2im49hu6ojvmnmobda4u','127.0.0.1',1521537066,'__ci_last_regenerate|i:1521537066;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('t184pttjkm1u7662iur7dd7ffkbaq1re','127.0.0.1',1521537498,'__ci_last_regenerate|i:1521537498;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('dlbnilmkh3gt78nt2heht5ih9vaj5qjj','127.0.0.1',1521537945,'__ci_last_regenerate|i:1521537945;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ef4iqvo1f09dd19m9r9j7i5g9d43kq33','127.0.0.1',1521545022,'__ci_last_regenerate|i:1521545022;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('aj0hik7lc99cekli17nivu619gljt2bu','127.0.0.1',1521545360,'__ci_last_regenerate|i:1521545360;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('0opr7ngsqv9enf72srrro0jfhb41vgbr','127.0.0.1',1521547389,'__ci_last_regenerate|i:1521547389;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('6c49ucbk0dpkdi1e8rhbr97683ilav9e','127.0.0.1',1521548142,'__ci_last_regenerate|i:1521548142;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('hvpbuub34hrr3vmb5hsu7rjl7e8cahbb','127.0.0.1',1521548558,'__ci_last_regenerate|i:1521548558;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('59cuj6v3b62e7pfjopvig9qofpms4nd3','127.0.0.1',1521548912,'__ci_last_regenerate|i:1521548912;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3b44g0ig0sisrvem4k53h5ucl7ngl9tb','127.0.0.1',1521552973,'__ci_last_regenerate|i:1521552973;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('clr142ptdgdg8lnu2635poo265ch6s91','127.0.0.1',1521553430,'__ci_last_regenerate|i:1521553430;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('7j9eo0cu71lrfnqtbhkmuda8r33dehvb','127.0.0.1',1521553741,'__ci_last_regenerate|i:1521553741;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('i2jojd8ep0sd57fo7t43ki62ulj85bd8','127.0.0.1',1521554047,'__ci_last_regenerate|i:1521554047;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('sa7oako9pitk43dgda47vvpki0lctm80','127.0.0.1',1521556804,'__ci_last_regenerate|i:1521556804;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4j263om1cl4h18gu0ck4jes2ujkhdkc7','127.0.0.1',1521560221,'__ci_last_regenerate|i:1521560221;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('6ft7jc24r57d13a1qhp0assaamua188j','127.0.0.1',1521560956,'__ci_last_regenerate|i:1521560956;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('5dlko4ib9f8ehuuk244jijdpan5ukpa7','127.0.0.1',1521561491,'__ci_last_regenerate|i:1521561491;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('60tttf5bm5gam0kevm57i6o739m66pda','127.0.0.1',1521562480,'__ci_last_regenerate|i:1521562480;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ccuutnrng7bb5nf5dthnf2nb2ukmfjj0','127.0.0.1',1521562499,'__ci_last_regenerate|i:1521562480;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ms939vlba10lrr83rkkfpnsfmg2ce94r','127.0.0.1',1521614968,'__ci_last_regenerate|i:1521614968;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3s6r37octoqi5nj7hp85cn1pr0k1d9bl','127.0.0.1',1521615279,'__ci_last_regenerate|i:1521615279;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('v2sfherklo9vrmsu4v7cko5k1bmq1d49','127.0.0.1',1521617431,'__ci_last_regenerate|i:1521617431;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ap4hbdg46ddmrbn1ura1e7acjh518h0u','127.0.0.1',1521617761,'__ci_last_regenerate|i:1521617761;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('m7g7l7r7csj2eelus2st4b2mln2lqc8i','127.0.0.1',1521618389,'__ci_last_regenerate|i:1521618389;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cujogocg85qp9kvkotg0iddskhiq8bum','127.0.0.1',1521621364,'__ci_last_regenerate|i:1521621364;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('kupv732p3rdm3os527d7e9aj2g2hlimr','127.0.0.1',1521621784,'__ci_last_regenerate|i:1521621784;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('43shddhnjhnnjvm6ed29hhnvsc3jh1i1','127.0.0.1',1521623086,'__ci_last_regenerate|i:1521623086;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('d7q04qn689f4v8dlug8i9899e61s57cd','127.0.0.1',1521623403,'__ci_last_regenerate|i:1521623403;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('5cu2mhood5655a9cgr7n9bo7qqbjdld4','127.0.0.1',1521623877,'__ci_last_regenerate|i:1521623877;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ihftmup6ng46ddc44h54f5pipj4lr4r8','127.0.0.1',1521624322,'__ci_last_regenerate|i:1521624322;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vafrusm7s5kf0fhrlqbqhgv400qbp4sk','127.0.0.1',1521624713,'__ci_last_regenerate|i:1521624713;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9j1fasbf3f2k6jm5nkg69lpititvt3d9','127.0.0.1',1521625228,'__ci_last_regenerate|i:1521625228;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('k5cvjceun9apoavn02326or8uiknrhgp','127.0.0.1',1521625872,'__ci_last_regenerate|i:1521625872;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('q13cv87afnv7p6800idnrhpcvjr7o6cr','127.0.0.1',1521626177,'__ci_last_regenerate|i:1521626177;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cc7m26t47s33ko5ompq89rr9rnvnv1jp','127.0.0.1',1521626508,'__ci_last_regenerate|i:1521626508;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qbs79armnt57j67bearfjp9s4diu993t','127.0.0.1',1521629129,'__ci_last_regenerate|i:1521629129;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9l5jlftc8vrasetebkb7i6ucjk3s733q','127.0.0.1',1521631802,'__ci_last_regenerate|i:1521631802;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('a511gopbgc22h5pki1rptlav4ptteut7','127.0.0.1',1521632163,'__ci_last_regenerate|i:1521632163;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ed24qic8324i6ao2ja0kdb46glc63std','127.0.0.1',1521632872,'__ci_last_regenerate|i:1521632872;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('mob6t1nj5irbua69sap2vherc66q4g1a','127.0.0.1',1521633280,'__ci_last_regenerate|i:1521633280;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('eoloj8kkgtu55u9bg8tk7c0c72qaf1p9','127.0.0.1',1521633732,'__ci_last_regenerate|i:1521633732;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vsdg23uvm90aavgnurida29jh6c2meam','127.0.0.1',1521634041,'__ci_last_regenerate|i:1521634041;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jhbbt7nla7rqo84q3o8675bv3srpbcc6','127.0.0.1',1521634484,'__ci_last_regenerate|i:1521634484;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qqcadh2d8b7ovkcg53jh85rglak6voch','127.0.0.1',1521634839,'__ci_last_regenerate|i:1521634839;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('0bqbg86c8oon90o768l959lkbi0kvdrl','127.0.0.1',1521635149,'__ci_last_regenerate|i:1521635149;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gjaetbdseu765nccvc61s153lvj1u9ka','127.0.0.1',1521635599,'__ci_last_regenerate|i:1521635599;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ero20habfcpc78ck391k20srr71snj27','127.0.0.1',1521635921,'__ci_last_regenerate|i:1521635921;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jkuuo28qf3vkbh7mvmc0mrumg082719g','127.0.0.1',1521636450,'__ci_last_regenerate|i:1521636450;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('hj0g81k90nlt4rd8oc46jcmtiv4t1vcb','127.0.0.1',1521636759,'__ci_last_regenerate|i:1521636759;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('p4mjt1q3hc3trrutrvs0i5qeanig8fm5','127.0.0.1',1521637141,'__ci_last_regenerate|i:1521637141;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cnhc7ndej9qjn1s0eq5en3helm2rsc63','127.0.0.1',1521637452,'__ci_last_regenerate|i:1521637452;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('aopg4litefuft8na437t956g6ef2jrbi','127.0.0.1',1521637822,'__ci_last_regenerate|i:1521637822;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('e80smb9cctlec5kbcu0inlk26bus4igf','127.0.0.1',1521638186,'__ci_last_regenerate|i:1521638186;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('12shg8ltq78rbqsoh5o539qpuqva2mni','127.0.0.1',1521638506,'__ci_last_regenerate|i:1521638506;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3mloub2rm7b7m4ia7mk5gt7akmd8c0cm','127.0.0.1',1521638807,'__ci_last_regenerate|i:1521638807;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('hjtlfvgn2lrlcbf35evjqhe020m4so2b','127.0.0.1',1521639428,'__ci_last_regenerate|i:1521639428;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('c6s1l0ek5ubcm5n2h7g57r6qjukt5p9o','127.0.0.1',1521640110,'__ci_last_regenerate|i:1521640110;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('t3p5utlkjnvsto80qi73t7v3u01ev1sg','127.0.0.1',1521640534,'__ci_last_regenerate|i:1521640534;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('46tofse3oj0bfl0qje32g8l9nljrap6c','127.0.0.1',1521640889,'__ci_last_regenerate|i:1521640889;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1s52ffnvk6qlp2dome4053q1nhcja4fc','127.0.0.1',1521641268,'__ci_last_regenerate|i:1521641268;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('o32sv78tnd2b3hm1uejtis4esbsb5nhr','127.0.0.1',1521641585,'__ci_last_regenerate|i:1521641585;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1v1dedg5bld2pv8hu1sppq8omf6ql35p','127.0.0.1',1521641928,'__ci_last_regenerate|i:1521641928;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('nn4tvbknla7e4726ugs9otpn74qgi3ve','127.0.0.1',1521642556,'__ci_last_regenerate|i:1521642556;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('iveffj3cmlnrp643me6rgm0ekk8s089i','127.0.0.1',1521643111,'__ci_last_regenerate|i:1521643111;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('bn4r75umh0t3u3qau7o3tqt53tk3l6he','127.0.0.1',1521643625,'__ci_last_regenerate|i:1521643625;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('6nphbq6b2b1038d6qfki1hg18r9dga3n','127.0.0.1',1521644212,'__ci_last_regenerate|i:1521644212;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jek0uiel7f9q420sgrs5i5vosebhhtda','127.0.0.1',1521644533,'__ci_last_regenerate|i:1521644533;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ci7e61og7rn3av3ki49f7j792c8ipsuu','127.0.0.1',1521645048,'__ci_last_regenerate|i:1521645048;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ted6pmf8k8r5i9o9lpiqh6ee01hm37j4','127.0.0.1',1521645500,'__ci_last_regenerate|i:1521645500;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ds2eqvvofvmpikbpmcbj7ghn0e7l15fq','127.0.0.1',1521646839,'__ci_last_regenerate|i:1521646839;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ves4qojhmm9ea9ifg4c3dq7mq28hr4an','127.0.0.1',1521647230,'__ci_last_regenerate|i:1521647230;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4v16nkdn8ccsvlm6631gj0i3ug8ddjfo','127.0.0.1',1521647625,'__ci_last_regenerate|i:1521647625;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('dvrjo25mci2fg746j4bv4ov8flpao3kf','127.0.0.1',1521648098,'__ci_last_regenerate|i:1521648098;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('surk185s0vtbro1b6uuo0359i5anlq5u','127.0.0.1',1521648438,'__ci_last_regenerate|i:1521648438;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('2d6n9i93l9688iu78euq0vs0qcl6eqfh','127.0.0.1',1521649081,'__ci_last_regenerate|i:1521649081;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4h68blulus1f6ulsbbko82g6o98e55nk','127.0.0.1',1521649478,'__ci_last_regenerate|i:1521649478;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ub39qm1um8ae0s34qm52v4a8m7gduhff','127.0.0.1',1521649878,'__ci_last_regenerate|i:1521649878;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('h4t1tav0ejrs0ouesk1vksuaj0rrb232','127.0.0.1',1521650179,'__ci_last_regenerate|i:1521650179;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('im40bgbcr7d9nlesdffguri0ervibb5n','127.0.0.1',1521658900,'__ci_last_regenerate|i:1521658900;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9madh4foasokt38ll7fht3ldh229fpcr','127.0.0.1',1521659619,'__ci_last_regenerate|i:1521659619;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('0a6icvqch0i5c9h5vk1tdrho9k7p3u0s','127.0.0.1',1521659995,'__ci_last_regenerate|i:1521659995;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('e5d6c3mmon3eegk9lre1bea4jsl2si32','127.0.0.1',1521660486,'__ci_last_regenerate|i:1521660486;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9bau918om81o84c433rvq6hvcsalrvek','127.0.0.1',1521660801,'__ci_last_regenerate|i:1521660801;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('drj2urhjrc871iae5284mc232u2fafno','127.0.0.1',1521661129,'__ci_last_regenerate|i:1521661129;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('11flvih7mds8v3hrrblackvn9nu4hep7','127.0.0.1',1521661678,'__ci_last_regenerate|i:1521661678;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gifk0kq394onttqffod63jucmc0vo7vo','127.0.0.1',1521662032,'__ci_last_regenerate|i:1521662032;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('kq6ci2urriu5m5l52ro8qamr4bkpbbir','127.0.0.1',1521662351,'__ci_last_regenerate|i:1521662351;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('f5ko837mqqr4icthl67o84moijf80bpk','127.0.0.1',1521662664,'__ci_last_regenerate|i:1521662664;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jua3hoa09di3stvg1f0gb8jk7ncek3ht','127.0.0.1',1521663007,'__ci_last_regenerate|i:1521663007;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('p5pl420s2t1eeuqe7vnk0jahs5o9o52m','127.0.0.1',1521663359,'__ci_last_regenerate|i:1521663359;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('drj8jghi3aosrbuqb5e2akop8ila6m1r','127.0.0.1',1521664033,'__ci_last_regenerate|i:1521664033;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('7tfnoi67dj3gp938t1eqibjbh4lkjr5c','127.0.0.1',1521664063,'__ci_last_regenerate|i:1521664033;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('0nkf33rguvhfnicu3tih41g2j2oqs8vs','127.0.0.1',1521700335,'__ci_last_regenerate|i:1521700335;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('p5earqlk26g9oe3mjrovce0alcf1c3m7','127.0.0.1',1521700769,'__ci_last_regenerate|i:1521700769;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gr99ng2jjq907ie9gk11s02eg5ktnv8m','127.0.0.1',1521701078,'__ci_last_regenerate|i:1521701078;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('bqeg55afch2o4ssi1n371jhuvosjm4pe','127.0.0.1',1521701387,'__ci_last_regenerate|i:1521701387;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('r518oiu09bmpgm5le9i9rsheq03f2gvk','127.0.0.1',1521702018,'__ci_last_regenerate|i:1521702018;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qc85sa1d7230ineplfbkd8q1o38m66ib','127.0.0.1',1521702501,'__ci_last_regenerate|i:1521702501;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('i55s04djnuq9kceeug93r3fr8qb0j321','127.0.0.1',1521703067,'__ci_last_regenerate|i:1521703067;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('6mijh6u7uujud3rsmske2nvi4etgfmrg','127.0.0.1',1521703392,'__ci_last_regenerate|i:1521703392;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('t7djde49m2c3ib77btkbnkqsqapqjs89','127.0.0.1',1521703789,'__ci_last_regenerate|i:1521703789;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ehvmggi26imrtss4v7n7lv3hkjqujoul','127.0.0.1',1521704256,'__ci_last_regenerate|i:1521704256;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('dgtsj9lhsrjt2fbqtu779ca5qhucpigc','127.0.0.1',1521704817,'__ci_last_regenerate|i:1521704817;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jjm8g09k5704pcajdnkmpb738gbo65d0','127.0.0.1',1521705257,'__ci_last_regenerate|i:1521705257;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('25s3pccdds9r7ajkfa85a5gtto6pt38t','127.0.0.1',1521705590,'__ci_last_regenerate|i:1521705590;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('k1r1gnh0car2bj5ms059ofud0pii7ofp','127.0.0.1',1521706075,'__ci_last_regenerate|i:1521706075;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3jch7rcd24ras983g9bd7o7me31i0uff','127.0.0.1',1521706661,'__ci_last_regenerate|i:1521706661;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('l0lsjh03souvia73tll6s4k88vbqqugi','127.0.0.1',1521707037,'__ci_last_regenerate|i:1521707037;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('p70qj6ue496tlr5trnvekmbas4tguflr','127.0.0.1',1521708339,'__ci_last_regenerate|i:1521708339;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('06r81hdhhppkkrcpqlrc00r65jda94cp','127.0.0.1',1521708669,'__ci_last_regenerate|i:1521708669;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fojjtoi09l96irh1vgoe7fv1ht1g95eo','127.0.0.1',1521708990,'__ci_last_regenerate|i:1521708990;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ts8gcfibqpdp4sd7tlfieap4muhvb8mp','127.0.0.1',1521709599,'__ci_last_regenerate|i:1521709599;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qriftdvdj7u4tunrg2rhgg675p9u4of5','127.0.0.1',1521709989,'__ci_last_regenerate|i:1521709989;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('7daigm8r9lmimal3rgolkvjh1f3vccdk','127.0.0.1',1521710399,'__ci_last_regenerate|i:1521710399;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('firdbmh8o2671ieq6fcrl6a977b47m5o','127.0.0.1',1521710857,'__ci_last_regenerate|i:1521710857;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('f4q43g3o25d67k484acgbmt1shjqcmek','127.0.0.1',1521711226,'__ci_last_regenerate|i:1521711226;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4pgqr7pa902ksbvrqdn4ej1nc4vh83ah','127.0.0.1',1521711642,'__ci_last_regenerate|i:1521711642;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qg1kicf2tcte6bdetsbl3g6vmsv93ar9','127.0.0.1',1521715487,'__ci_last_regenerate|i:1521715487;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('m3foohva3alrmeoh8k8h6d8eokpk6631','127.0.0.1',1521715505,'__ci_last_regenerate|i:1521715487;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('tpp3ngcg24e29q2mlat6om37vopsnju0','127.0.0.1',1521788216,'__ci_last_regenerate|i:1521788216;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('efi497gs45dfsnieng6vbl8n4jd7v0f1','127.0.0.1',1521788519,'__ci_last_regenerate|i:1521788519;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('lhrepcm051e5np0279m6cirevakd1lb9','127.0.0.1',1521788843,'__ci_last_regenerate|i:1521788843;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('t8drgbdu8lriomhl36bdn1po2ds9as9l','127.0.0.1',1521789167,'__ci_last_regenerate|i:1521789167;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('k02l27u4u08ada98cstq3s0igf4l975r','127.0.0.1',1521789520,'__ci_last_regenerate|i:1521789520;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4ei7mgrr9rt59cb83sq4rfok5a9fg3ll','127.0.0.1',1521789892,'__ci_last_regenerate|i:1521789892;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ks3de3alicpfqa1n3qput4j6l5an04ft','127.0.0.1',1521790210,'__ci_last_regenerate|i:1521790210;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('otfe7tej2brocrv8d2l69t416abue80d','127.0.0.1',1521790526,'__ci_last_regenerate|i:1521790526;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('pqt53frkbg5f3gttj2ki1t08kkr5sot0','127.0.0.1',1521791117,'__ci_last_regenerate|i:1521791117;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('dgdfuq9oesnok94ls568gg36c8i4gi1v','127.0.0.1',1521791434,'__ci_last_regenerate|i:1521791434;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('s0g5qqa0sk22odgch4v7i95n3ep21995','127.0.0.1',1521791762,'__ci_last_regenerate|i:1521791762;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('lksvt6tcgv1etuobgo3i4ucgve01jpcs','127.0.0.1',1521792230,'__ci_last_regenerate|i:1521792230;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vmtaqaene7pv6em0cts14hm2k058tu74','127.0.0.1',1521793341,'__ci_last_regenerate|i:1521793341;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('5h1gdsnnj15vn1vhagquaeg4vp23pga4','127.0.0.1',1521793652,'__ci_last_regenerate|i:1521793652;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ah712t2ore748akkgngmoj8pbaar8vlu','127.0.0.1',1521794137,'__ci_last_regenerate|i:1521794137;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('hvqj3kqhdepo86l71em07u3ho2ttmq8i','127.0.0.1',1521794606,'__ci_last_regenerate|i:1521794606;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jmcrigo0s80pcl81l79oia962rl7k65s','127.0.0.1',1521795027,'__ci_last_regenerate|i:1521795027;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('5nqn2ortk9g3q509o6vcqbj5qh0n4jgc','127.0.0.1',1521795527,'__ci_last_regenerate|i:1521795527;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('bmflbrrsr0mbi5j9q1rr0pdejafmsdmn','127.0.0.1',1521802384,'__ci_last_regenerate|i:1521802384;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('17tqeeh8hs60lt6ftd5aorurqnj0596v','127.0.0.1',1521816383,'__ci_last_regenerate|i:1521816383;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3k24003i8ugs07j6etc2fdu3sgp96ard','127.0.0.1',1521816891,'__ci_last_regenerate|i:1521816891;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gam3qar95fhpno3k5s8usdg0iqve249v','127.0.0.1',1521816986,'__ci_last_regenerate|i:1521816891;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('v8bjjhi1qa6emfk513nlu5pcd8frc9pv','127.0.0.1',1522166449,'__ci_last_regenerate|i:1522166252;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('0a39bsn9nsilf76iqiune5rskofp786a','127.0.0.1',1522166377,'__ci_last_regenerate|i:1522166377;'),('6a10puc42usga6d5m5sbe5hs14j439u6','127.0.0.1',1522302548,'__ci_last_regenerate|i:1522302548;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('02af9ots7sedqv4rfnuebijnus87fom9','127.0.0.1',1522302808,'__ci_last_regenerate|i:1522302548;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('njv2hrditc1a9t82roclclej2csd74r1','127.0.0.1',1522317051,'__ci_last_regenerate|i:1522317051;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('73u230etd2s8j6cse1ve9snjvqkrnis2','127.0.0.1',1522317090,'__ci_last_regenerate|i:1522317051;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3e2efnv2ledv9ua82dc1avohr4fii2ds','127.0.0.1',1522394342,'__ci_last_regenerate|i:1522394342;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('r6frfrocb6jal7hi98g1f1kbvkl15fcu','127.0.0.1',1522414452,'__ci_last_regenerate|i:1522414452;'),('ph64cu4kbq9apq98dstlld8h4chrv8na','127.0.0.1',1522394771,'__ci_last_regenerate|i:1522394771;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('2fa5ctdlh3khage2oh5mvlgopgb9prsv','127.0.0.1',1522395260,'__ci_last_regenerate|i:1522395260;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('d6gu2e7arcj59oeauu580qd1ac99phsu','127.0.0.1',1522404290,'__ci_last_regenerate|i:1522404290;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('tjoovd2lgsbvqak0fguqmmaevt8fcqqf','127.0.0.1',1522420311,'__ci_last_regenerate|i:1522420311;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ill0rmck0mdiuks3v6879pqib39cog51','127.0.0.1',1522414468,'__ci_last_regenerate|i:1522414452;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('mkj3fu09i5oh28v12n2l1e0s34f26v8i','127.0.0.1',1522421347,'__ci_last_regenerate|i:1522421347;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('88gavf84oh5vc4h0sebdejeq4n92aqsn','127.0.0.1',1522421708,'__ci_last_regenerate|i:1522421708;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('itp9pr5vk8ejv674lji9i16e6ukkjmog','127.0.0.1',1522422021,'__ci_last_regenerate|i:1522422021;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('pnom0ud3fldu9kd5p7va5lt9i554mshk','127.0.0.1',1522422344,'__ci_last_regenerate|i:1522422344;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('d09ekskiv7oan6bcrdja4im7ajjso38b','127.0.0.1',1522422690,'__ci_last_regenerate|i:1522422690;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('48thmfqiecro3jjlp0ed3sau3fmodmj1','127.0.0.1',1522423080,'__ci_last_regenerate|i:1522423080;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('17043djrfbank4j0pemtsf6fmavcbu3t','127.0.0.1',1522423175,'__ci_last_regenerate|i:1522423080;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vkknpr0gbndrhbuq4t4t47lvli2u8qi2','127.0.0.1',1522473043,'__ci_last_regenerate|i:1522473043;red_url|s:22:\"admin/intents/intent/3\";'),('vu831a5rmh4nnmocmav6f6dtjs55i29a','127.0.0.1',1522473393,'__ci_last_regenerate|i:1522473393;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('puhrqiv1uoil6jq73orpemen3pohlfuu','127.0.0.1',1522477039,'__ci_last_regenerate|i:1522477039;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('33viim97i4dr6sir0r86n93f75qt1s1h','127.0.0.1',1522477593,'__ci_last_regenerate|i:1522477593;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3o37atppcvv1q0d7kj0eb1ul12962upr','127.0.0.1',1522477994,'__ci_last_regenerate|i:1522477994;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vccjtu2emna4no437ohnt1ddikmu7qsa','127.0.0.1',1522478519,'__ci_last_regenerate|i:1522478519;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('247eomc9ma9b1ag662vjff27dmelc3h6','127.0.0.1',1522478825,'__ci_last_regenerate|i:1522478825;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('dqu0d0kh767jmjfva506tijp2jm5tghb','127.0.0.1',1522479191,'__ci_last_regenerate|i:1522479191;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('257n08deapj2tmda594831s3467md6sg','127.0.0.1',1522479612,'__ci_last_regenerate|i:1522479612;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4rnbr0ge8qh0hfb0pksdaiojfruoufn3','127.0.0.1',1522480008,'__ci_last_regenerate|i:1522480008;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('s7an83s3pp6sgtu2tqjf54hoi0n6elv6','127.0.0.1',1522480374,'__ci_last_regenerate|i:1522480374;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('l1volsp38gulgqk51qvm9jegphlotljh','127.0.0.1',1522480675,'__ci_last_regenerate|i:1522480675;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4j3gq9no6ejg0o6uopk72c7b8l5jt31r','127.0.0.1',1522481733,'__ci_last_regenerate|i:1522481733;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('j143apiam2jrl8vervd49ssd5p6o4430','127.0.0.1',1522480985,'__ci_last_regenerate|i:1522480984;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('j0135grild3b1ecv750gcnvv32nrq3pj','127.0.0.1',1522484200,'__ci_last_regenerate|i:1522484200;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('l0jgghoo2e2uf4rgcvl6te37jp1sqrfe','127.0.0.1',1522485089,'__ci_last_regenerate|i:1522485089;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('07ffsqi5ij8pllkvtuvecc9e87afmle5','127.0.0.1',1522485401,'__ci_last_regenerate|i:1522485401;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gf5e6a5adj17k6n0sv5q25ua7gu1q2oo','127.0.0.1',1522485846,'__ci_last_regenerate|i:1522485846;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('drjf40misql0q622shvd4a6ic7omrmv9','127.0.0.1',1522486173,'__ci_last_regenerate|i:1522486173;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('io03qmrjcgq77310injdjn4cc624j2m8','127.0.0.1',1522487054,'__ci_last_regenerate|i:1522487054;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fldpo3195bb9929j46n825r02jnccm4e','127.0.0.1',1522487428,'__ci_last_regenerate|i:1522487428;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('cqu7g527lk5voo2p6ked1gi56v9hk32b','127.0.0.1',1522491059,'__ci_last_regenerate|i:1522491059;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('mff2if870cucv6sjt29hdsop9bd6qnq3','127.0.0.1',1522491911,'__ci_last_regenerate|i:1522491911;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('an544956mc2qc5rbr63aagjblgsofl1h','127.0.0.1',1522492290,'__ci_last_regenerate|i:1522492290;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('0lscuq6rinduc8qj6ktk1iq89ml8uef8','127.0.0.1',1522492664,'__ci_last_regenerate|i:1522492664;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('6s4dhl3a44c6pja0l5cafakg7focoluh','127.0.0.1',1522492968,'__ci_last_regenerate|i:1522492968;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4s1ggiphhfffle75tli4grambdp1duln','127.0.0.1',1522493529,'__ci_last_regenerate|i:1522493529;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('bikm2agkatrqioncarsg9l6ocar73bib','127.0.0.1',1522493855,'__ci_last_regenerate|i:1522493855;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('cfb33h4pddrp8p87oobk8uomnnuvbhpd','127.0.0.1',1522494156,'__ci_last_regenerate|i:1522494156;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('1v2jr6qvlpa6r1omle053lkd91csfn69','127.0.0.1',1522494460,'__ci_last_regenerate|i:1522494460;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('b5j3vnoomkcojpe3sgdtlpdqmn8s968j','127.0.0.1',1522516228,'__ci_last_regenerate|i:1522516228;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('qfghtuppd5oupg2m8ba7kljaa1g2uvlj','127.0.0.1',1522516689,'__ci_last_regenerate|i:1522516689;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fv6gb8bllhk6t2qrj5j2r7v80iodvmga','127.0.0.1',1522517057,'__ci_last_regenerate|i:1522517057;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ofia875cmujc0t520379t1vg0v9lasn4','127.0.0.1',1522517440,'__ci_last_regenerate|i:1522517440;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('a54dpqf438ivapjf3jq82fdrvgps892l','127.0.0.1',1522517962,'__ci_last_regenerate|i:1522517962;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cljg2q0i16e1p8g579pdf2npm413g31e','127.0.0.1',1522518723,'__ci_last_regenerate|i:1522518723;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('moqgpdk09h368d1928tpid9g2o5mgh7r','127.0.0.1',1522519441,'__ci_last_regenerate|i:1522519441;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('hlv6j5v1j533b8tc5ee1umic3jbj2155','127.0.0.1',1522519775,'__ci_last_regenerate|i:1522519775;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('lcgvo62qvp4uej765mtd40jtbm8ota1j','127.0.0.1',1522520086,'__ci_last_regenerate|i:1522520086;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gbademflf6kd6c96j3addkc6ae820dm4','127.0.0.1',1522520398,'__ci_last_regenerate|i:1522520398;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('lnmrj9or05h3ke7irukknpbm8acbjr15','127.0.0.1',1522520745,'__ci_last_regenerate|i:1522520745;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qrp5sp2bb62rjcku331tb7bacu7l59pe','127.0.0.1',1522521135,'__ci_last_regenerate|i:1522521135;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:27:\"Intents added successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('cjgnm1sbit780ep6kpucu031tbf5rrfl','127.0.0.1',1522521482,'__ci_last_regenerate|i:1522521482;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1sumjr99lg32q9432u9su892nb7o0m18','127.0.0.1',1522521803,'__ci_last_regenerate|i:1522521803;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gl4bnjuvgj07ag8v8qcpfa6hb46asnv5','127.0.0.1',1522522109,'__ci_last_regenerate|i:1522522109;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3e7u33mhpk5nstut6afc1qqh0b5v7opc','127.0.0.1',1522522410,'__ci_last_regenerate|i:1522522410;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('9og33ama11u8tr1tb9l078pk1ilphsrg','127.0.0.1',1522522755,'__ci_last_regenerate|i:1522522755;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('nqsqfl79f0jlp5c2afjge71cf9npinaj','127.0.0.1',1522523124,'__ci_last_regenerate|i:1522523124;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('i26b6q3ndqjlmur7v111kuj3e9g1qbv1','127.0.0.1',1522523775,'__ci_last_regenerate|i:1522523775;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('m6ajphh9aqr0ie92lisaj858t9ecngas','127.0.0.1',1522523775,'__ci_last_regenerate|i:1522523775;'),('oq7bb8e812ehlhss5dq1fkdmrh5t4mbj','127.0.0.1',1522564034,'__ci_last_regenerate|i:1522564034;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('a5206fv1515m1llj9upfdhg9e996odb1','127.0.0.1',1522564341,'__ci_last_regenerate|i:1522564341;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('h0kkq991fm50pb8upm7sekshek9di1s5','127.0.0.1',1522564970,'__ci_last_regenerate|i:1522564970;'),('1old4m57im1043n71nt9dnal24oq4d2f','127.0.0.1',1522565545,'__ci_last_regenerate|i:1522565545;'),('j6r5ulijsmqrhbo1bojh7oeej3mdru9i','127.0.0.1',1522565890,'__ci_last_regenerate|i:1522565890;'),('pcdkp6529evhiosk587e7vp6q2jgoqh2','127.0.0.1',1522566203,'__ci_last_regenerate|i:1522566203;'),('jbfuj7kg9d40s6rq8i4cr5isce7gndpm','127.0.0.1',1522566534,'__ci_last_regenerate|i:1522566534;'),('djnaj45m51hcbdga0njvr3rfl7fbs352','127.0.0.1',1522567079,'__ci_last_regenerate|i:1522567079;'),('4mo52tkssjlskin6k4ec4955u1genrqa','127.0.0.1',1522567411,'__ci_last_regenerate|i:1522567411;'),('rsuh9n7628bs3daver6892p66hvdf5u3','127.0.0.1',1522567732,'__ci_last_regenerate|i:1522567732;'),('ijmocpknhmhtdcj9j55flqc1ped3slve','127.0.0.1',1522568049,'__ci_last_regenerate|i:1522568049;'),('ku58sq0gf2l7qn8ai67l05b0a13b9mtd','127.0.0.1',1522568362,'__ci_last_regenerate|i:1522568362;'),('tpeq83ud9vnsm8e60p8rbbbivpfnnia8','127.0.0.1',1522568727,'__ci_last_regenerate|i:1522568727;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('2hvns288jn23d164ha5l7o0ddg6ovodr','127.0.0.1',1522571102,'__ci_last_regenerate|i:1522571102;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('10288unb3k465i6vjqnkb42df2241ga9','127.0.0.1',1522568632,'__ci_last_regenerate|i:1522568632;'),('t4js34clkaso58c4vuq2nn4hbce3ld3e','127.0.0.1',1522569229,'__ci_last_regenerate|i:1522569229;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('d2rnkvedve0qbkbu3klmcn3lkdks1nn9','127.0.0.1',1522569678,'__ci_last_regenerate|i:1522569678;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('78lft12bprmsomr7tb1ot42mjt0i1n9m','127.0.0.1',1522570160,'__ci_last_regenerate|i:1522570160;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('hipnt12bk1prv6b2top9jphrn8ieh1h9','127.0.0.1',1522570478,'__ci_last_regenerate|i:1522570478;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('uk6ujje7ljm5o9e0u996jnshuvui0nb3','127.0.0.1',1522571054,'__ci_last_regenerate|i:1522571054;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6vb014g4k4qes8etu236ck7qo22rtfsn','127.0.0.1',1522573657,'__ci_last_regenerate|i:1522573657;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tbesvqrhabrick2sn54edilev1e17ivi','127.0.0.1',1522573704,'__ci_last_regenerate|i:1522573704;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hmmjhj3noq084bllrjl3gt8aq99o0nnl','127.0.0.1',1522573983,'__ci_last_regenerate|i:1522573983;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('rbschgjea0fsnm6u1gg45dqhc04akceq','127.0.0.1',1522573706,'__ci_last_regenerate|i:1522573704;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('006adhk4oan6rp9fbgc6ol28shjaj8kc','127.0.0.1',1522574311,'__ci_last_regenerate|i:1522574311;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('403o8g8lshoman356km44v1mav64367r','127.0.0.1',1522574658,'__ci_last_regenerate|i:1522574658;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('f181t1b64edabhfcbb9qe3ltdacllc3i','127.0.0.1',1522574991,'__ci_last_regenerate|i:1522574991;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('bvlga07lk0i54bf7h9serq947c9gh8da','127.0.0.1',1522575317,'__ci_last_regenerate|i:1522575317;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('579g8sshhi2dgp1qve42kp9e9lgtkf1n','127.0.0.1',1522575692,'__ci_last_regenerate|i:1522575692;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vbp0ma9fnv76pi3nibnpo6irn9ieacma','127.0.0.1',1522575995,'__ci_last_regenerate|i:1522575995;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('18rj0e2dejljlrua6nqjt2ok2aqn6hb8','127.0.0.1',1522576302,'__ci_last_regenerate|i:1522576302;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5jdbckvjr4tqm0b23bktmgdt1kcsoojk','127.0.0.1',1522576613,'__ci_last_regenerate|i:1522576613;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('mq3hgmvc243mpd8bo7f44a9dc98hke0e','127.0.0.1',1522576932,'__ci_last_regenerate|i:1522576932;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('02hslrvl7dgptroli7es853adptbu4mp','127.0.0.1',1522577390,'__ci_last_regenerate|i:1522577390;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('s260vq1p6t1rb49bdvamr2sh8j3ok0h4','127.0.0.1',1522577698,'__ci_last_regenerate|i:1522577698;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('p84t8prboeu0qv12s1jtnmjjb1pgije0','127.0.0.1',1522578065,'__ci_last_regenerate|i:1522578065;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('b2u3bbfimdlh5tuu8s0j2j5rf1hlaipg','127.0.0.1',1522578384,'__ci_last_regenerate|i:1522578384;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('qlu71vj7eemfjfunc2770ckej885d6lt','127.0.0.1',1522581320,'__ci_last_regenerate|i:1522581320;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('oc4ldc1uctnkf1iek0ug5a6aks1b2up3','127.0.0.1',1522581831,'__ci_last_regenerate|i:1522581831;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('0uujh8c0je95n8j7vs88k4imtf5vqcil','127.0.0.1',1522582208,'__ci_last_regenerate|i:1522582208;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('0dq4f1sc2ft3gig8u8jr7s9738peejdi','127.0.0.1',1522582731,'__ci_last_regenerate|i:1522582731;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:28:\"Agents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('idqfoo7gkap2mnkmfjav6o13um4nfdiq','127.0.0.1',1522583055,'__ci_last_regenerate|i:1522583055;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('b3kg7mrv23reqcs1ov4pm44jii1kcd6q','127.0.0.1',1522583373,'__ci_last_regenerate|i:1522583373;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('592go7hp1koq964isiusseufekh1poiu','127.0.0.1',1522583750,'__ci_last_regenerate|i:1522583750;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('h8gpa6qe3s6fdlkek9gcjipepaf1fe7s','127.0.0.1',1522584062,'__ci_last_regenerate|i:1522584062;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('76njhnl308ihge0j8k9tndmiqo7v46nd','127.0.0.1',1522587023,'__ci_last_regenerate|i:1522587023;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ugi0vrqn5mg1jfrpfkq07ber8jai5hc9','127.0.0.1',1522603076,'__ci_last_regenerate|i:1522603076;'),('am2c9ufdlbq572u8fa8k8ms5eaocu9t6','127.0.0.1',1522603419,'__ci_last_regenerate|i:1522603419;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('2knqh733a62lv92vtmvdrm9hl1gahsdf','127.0.0.1',1522603813,'__ci_last_regenerate|i:1522603813;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('q33qq6vpcvvjrlh0ek7e696ki8jro8fe','127.0.0.1',1522604281,'__ci_last_regenerate|i:1522604281;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('37vjd1cqqkn8kd968af6fibbnmd32vdj','127.0.0.1',1522604596,'__ci_last_regenerate|i:1522604596;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fdqslr6np0kqdh5gmp88lvcn85fb41b2','127.0.0.1',1522604911,'__ci_last_regenerate|i:1522604911;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:28:\"Agents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('oeq38640keb7nuc2p9mvnh6qg5jm6932','127.0.0.1',1522605250,'__ci_last_regenerate|i:1522605250;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('369hunfnf56ojik4losc2bcjqfrrehup','127.0.0.1',1522605612,'__ci_last_regenerate|i:1522605612;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('2p44lb9c97kqo3866lbnagce9ihvd0kl','127.0.0.1',1522606075,'__ci_last_regenerate|i:1522606075;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8gesov6eu4q6i21rd9lp9qp4vo6l1fge','127.0.0.1',1522606421,'__ci_last_regenerate|i:1522606421;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('j4ihu91kg4r0v6sfimo7m7inlh0g0ppd','127.0.0.1',1522606729,'__ci_last_regenerate|i:1522606729;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('urp1g28sl6hbb7q6dfhe6hnq15imfavo','127.0.0.1',1522607070,'__ci_last_regenerate|i:1522607070;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8q9c99ni5n87shi3k2jc7r534b663187','127.0.0.1',1522607402,'__ci_last_regenerate|i:1522607402;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('h37ua933i35htpi2h0q44rrss70ufqnv','127.0.0.1',1522607760,'__ci_last_regenerate|i:1522607760;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('039rdd6a1689vrcp8ruu5jjfor6fatfc','127.0.0.1',1522608089,'__ci_last_regenerate|i:1522608089;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('qk1md5agu9ain8c823urjm9kbj43us0u','127.0.0.1',1522608506,'__ci_last_regenerate|i:1522608506;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jss72dsq8v8p29phecq45hagalcqf894','127.0.0.1',1522608114,'__ci_last_regenerate|i:1522608099;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('oh7010dg8e2np9avdref46qaocsh12k1','127.0.0.1',1522608237,'__ci_last_regenerate|i:1522608237;'),('k5to29nr76ugoptnjt90enaq9ef1qn27','127.0.0.1',1522608811,'__ci_last_regenerate|i:1522608811;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3nlknao83n45eskcj66q8ndqvktjv0e3','127.0.0.1',1522609236,'__ci_last_regenerate|i:1522609236;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('l3c2c8hqlm83e5a50dhi75hnlefqrc7q','127.0.0.1',1522609566,'__ci_last_regenerate|i:1522609566;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('peia9b4lrc3vje3d2onvk4ps4uahhekr','127.0.0.1',1522609918,'__ci_last_regenerate|i:1522609918;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('20q8c9nmh9p226purpiu4qi2qhp00ec2','127.0.0.1',1522610280,'__ci_last_regenerate|i:1522610280;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4ovkd753hhhsvsen98kok6dh044hjaj1','127.0.0.1',1522610598,'__ci_last_regenerate|i:1522610598;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('oguk08m1g3oaj778b4vfffv1s0nm7j1s','127.0.0.1',1522610914,'__ci_last_regenerate|i:1522610914;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('g081brghlvntk0lkmssopv3hbtpqgl1q','127.0.0.1',1522611262,'__ci_last_regenerate|i:1522611262;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1uurdum1930b9h4plffm8mcejq93tpfr','127.0.0.1',1522611387,'__ci_last_regenerate|i:1522611262;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6ebdudpd1pe6j8qksmg9oqkr1vo28dno','127.0.0.1',1522611731,'__ci_last_regenerate|i:1522611731;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fch2gqm9bmhnb8erca7bfqlk0opbuvj0','127.0.0.1',1522612208,'__ci_last_regenerate|i:1522612208;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('j4fpls13o175hiddmo9iogscelit5rv7','127.0.0.1',1522634906,'__ci_last_regenerate|i:1522634906;'),('hfg1f9tsbtdvsiqsjfdsde12c628amc8','127.0.0.1',1522635236,'__ci_last_regenerate|i:1522635236;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('mb3g75ddqapv6evu2d7mplpa76npod7q','127.0.0.1',1522635600,'__ci_last_regenerate|i:1522635600;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('qt980848d6s2gh990nnrjjbobouora14','127.0.0.1',1522635955,'__ci_last_regenerate|i:1522635955;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4iflcr3aqfare613is4v44asoulke1nj','127.0.0.1',1522636481,'__ci_last_regenerate|i:1522636481;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kh6e83h68r7dsms0kio7kh9nb9i8vu9a','127.0.0.1',1522637221,'__ci_last_regenerate|i:1522637221;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('0nh7qabaebr5sludfthiaikbgqj88kfu','127.0.0.1',1522637551,'__ci_last_regenerate|i:1522637551;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fc79obfeq517a0atgcod6n9ob21gu8ll','127.0.0.1',1522643289,'__ci_last_regenerate|i:1522643289;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jd0ke7fm551o8kjpf1ogfimh85r8j1um','127.0.0.1',1522637930,'__ci_last_regenerate|i:1522637930;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8rcnile938klsfiut1q1pjasfd31dlk1','127.0.0.1',1522638370,'__ci_last_regenerate|i:1522638370;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5k01g3uohhaoiaai9h79npcod3eotded','127.0.0.1',1522638678,'__ci_last_regenerate|i:1522638678;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('9ema93b62kdf66tsdo7avpkgh2pvi1ub','127.0.0.1',1522639056,'__ci_last_regenerate|i:1522639056;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('sb9k9fir3ue4488qnbgm11cko8e3hf03','127.0.0.1',1522639467,'__ci_last_regenerate|i:1522639467;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('cj651dlgpna9mv39n6ci3q469pcn7bkd','127.0.0.1',1522639774,'__ci_last_regenerate|i:1522639774;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('orh7mis9sn27c1rndkbiq2bqdati3nqq','127.0.0.1',1522640103,'__ci_last_regenerate|i:1522640103;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('gvpdm12nvjlcmll15vrpmu4vj3vidd5g','127.0.0.1',1522640502,'__ci_last_regenerate|i:1522640502;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('m8uorf7tsg0t1hvsjjvpe8o8fkl0ms96','127.0.0.1',1522640863,'__ci_last_regenerate|i:1522640863;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('932e7g8i52hejn3llf7jssdegjhhvnam','127.0.0.1',1522641192,'__ci_last_regenerate|i:1522641192;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fchkpe99m9qq9h3vcj6b9f1ikt3gcgu4','127.0.0.1',1522641612,'__ci_last_regenerate|i:1522641612;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('lr3t0iohtaetd2k1100k9jm08ubnehg9','127.0.0.1',1522641933,'__ci_last_regenerate|i:1522641933;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ju8iphf6od32t1asht7t0u2pd9etals3','127.0.0.1',1522642277,'__ci_last_regenerate|i:1522642277;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tg430kmq0s2ao72oc915grpae6eoc48m','127.0.0.1',1522642602,'__ci_last_regenerate|i:1522642602;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ap4rbt5to32rrbjlemss5e9htobgebdp','127.0.0.1',1522642982,'__ci_last_regenerate|i:1522642982;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ian3mh9642olf2ev1p3hpg7d51s2kmqr','127.0.0.1',1522643401,'__ci_last_regenerate|i:1522643401;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('nfsckcmahqtctbuvmoh6ognjfsvrveh4','127.0.0.1',1522651706,'__ci_last_regenerate|i:1522651706;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vtsu3g9akigiaergiuhec7482uhietd1','127.0.0.1',1522643728,'__ci_last_regenerate|i:1522643728;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('t9d6qtn904ko0rhr4j5ierv5dr42cq56','127.0.0.1',1522644061,'__ci_last_regenerate|i:1522644061;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('pst5sh0p5951mle835v7it5ob220ulki','127.0.0.1',1522644404,'__ci_last_regenerate|i:1522644404;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('lh72sa9sc2t6t4p3dsoqu6ug3vbd57oe','127.0.0.1',1522644722,'__ci_last_regenerate|i:1522644722;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vdqbja301b3sph25mcesogolcsefailn','127.0.0.1',1522645029,'__ci_last_regenerate|i:1522645029;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1383jjdvtjob5kt22dhb8jb7k6g6g799','127.0.0.1',1522645404,'__ci_last_regenerate|i:1522645404;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vn1d7dn35kcice67vh3ura86421vnc8t','127.0.0.1',1522645953,'__ci_last_regenerate|i:1522645953;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('68t01o7h002i87nv0eh91nkjij5frk4c','127.0.0.1',1522646255,'__ci_last_regenerate|i:1522646255;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8eib4cjl1fnijolvvpsk9jg5i6vtaagp','127.0.0.1',1522646641,'__ci_last_regenerate|i:1522646641;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('lbk2ovadcl4iu70ahjpiaipocq52fa14','127.0.0.1',1522646955,'__ci_last_regenerate|i:1522646955;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('abv92lr2k6ue36lucu9ffe4coavl038p','127.0.0.1',1522647727,'__ci_last_regenerate|i:1522647727;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('hi72nnb0nq01coqcmvlr6rp8jbea9fg0','127.0.0.1',1522647062,'__ci_last_regenerate|i:1522647062;'),('ganid3o92g1mrmrplli1slj45kooa6vg','127.0.0.1',1522647068,'__ci_last_regenerate|i:1522647068;'),('eaqj29re71c05s4km0nh7n1s6e490fk0','127.0.0.1',1522647245,'__ci_last_regenerate|i:1522647245;'),('5odgdt1heop46pg8cue8il2akouh6919','127.0.0.1',1522647260,'__ci_last_regenerate|i:1522647260;'),('2kd2i5l57umpjfevulehuccs45hv57i1','127.0.0.1',1522647494,'__ci_last_regenerate|i:1522647494;'),('lnvsui4lvhh2jk80qit6t58of942s8i0','127.0.0.1',1522647540,'__ci_last_regenerate|i:1522647540;'),('vvnnrpk09jkgpb0t2ja06g8kj9mbtlpc','127.0.0.1',1522647548,'__ci_last_regenerate|i:1522647548;'),('pv7ghgmrkne4r0p2uotjjqqujtpeat7e','127.0.0.1',1522647597,'__ci_last_regenerate|i:1522647597;'),('477a1bugst8mpajtj7ar67rvb4tkqe1d','127.0.0.1',1522647606,'__ci_last_regenerate|i:1522647606;'),('ggqolrmds5b1rv6uet3hkhel7a303qav','127.0.0.1',1522648184,'__ci_last_regenerate|i:1522648184;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('16fvdbpkvg4cad8ijonnp95h28t9p4nc','127.0.0.1',1522647738,'__ci_last_regenerate|i:1522647738;'),('vu8ps0in98gekegkoj81sm7aja4333f2','127.0.0.1',1522647745,'__ci_last_regenerate|i:1522647745;'),('il0294s35aolfdvlfa36047j87ke9hs1','127.0.0.1',1522647983,'__ci_last_regenerate|i:1522647983;'),('begtv7929cpg9ntc5mej1vs2ptecorsg','127.0.0.1',1522647998,'__ci_last_regenerate|i:1522647998;'),('g57rbutfdaao8kfqjcnhtk5icn97sjut','127.0.0.1',1522648004,'__ci_last_regenerate|i:1522648004;'),('r8npv3e9ahnbkhml01atuj1m4qanqim0','127.0.0.1',1522648104,'__ci_last_regenerate|i:1522648104;'),('8e94vklsba11t3jvra1p6q9tfmrl6a4a','127.0.0.1',1522648125,'__ci_last_regenerate|i:1522648125;'),('6ohjfc4tehaggp892fbv2b43ofcnlqie','127.0.0.1',1522648130,'__ci_last_regenerate|i:1522648130;'),('lhu1hdm8vkhveddlj8u5k2v12vigf3sp','127.0.0.1',1522648133,'__ci_last_regenerate|i:1522648133;'),('cjop5gkdldv6acrc9g2ue9hrkgtjijtl','127.0.0.1',1522648153,'__ci_last_regenerate|i:1522648153;'),('6lib308a91km7n4laov16eh6o21pr496','127.0.0.1',1522648604,'__ci_last_regenerate|i:1522648604;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('m0u8hjnr1ndfu31mpufsduniouivqj71','127.0.0.1',1522648192,'__ci_last_regenerate|i:1522648192;'),('13a87ui1ps7pne1otc2i7b8koqc2r40e','127.0.0.1',1522648194,'__ci_last_regenerate|i:1522648194;'),('7qe1plpcghok98r9bbi48pv24u629udk','127.0.0.1',1522648280,'__ci_last_regenerate|i:1522648280;'),('mftnsr3jlqeet9nt82a03q0uqeg4r38k','127.0.0.1',1522648284,'__ci_last_regenerate|i:1522648284;'),('l9mbr1rvaih5okqciuqo4nb2ei3p0n15','127.0.0.1',1522648431,'__ci_last_regenerate|i:1522648431;'),('3vjeqm6etvcfu1vknj0v9eai1ackueno','127.0.0.1',1522649764,'__ci_last_regenerate|i:1522649764;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('btud84e0qb8j25uic2ip561fiq4l9ch9','127.0.0.1',1522649016,'__ci_last_regenerate|i:1522649016;'),('nf80vk3l139oug6ph9c5nivhu8amkobt','127.0.0.1',1522649310,'__ci_last_regenerate|i:1522649310;'),('g5jcs71g8pbahb757rmm3j8mvj35vvo4','127.0.0.1',1522649357,'__ci_last_regenerate|i:1522649357;'),('mjl7kbmksllv21r1pp7gijs2p7u25coc','127.0.0.1',1522649368,'__ci_last_regenerate|i:1522649368;'),('devcj3gga59h2nmevmje9t76vpetmf3v','127.0.0.1',1522649426,'__ci_last_regenerate|i:1522649426;'),('69dilt4l031luei3f32qs3r5e617bofq','127.0.0.1',1522649514,'__ci_last_regenerate|i:1522649514;'),('ck98u810etbtjmcpf8og107d3d1790ep','127.0.0.1',1522649637,'__ci_last_regenerate|i:1522649637;'),('comp766co8kpivflsu0gcdjeiscqqqn7','127.0.0.1',1522650151,'__ci_last_regenerate|i:1522650151;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ftncpbj78j4dbd7pi7ujbtlqgu4vtops','127.0.0.1',1522650514,'__ci_last_regenerate|i:1522650514;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4bus340e884nb1hej79c85m7t6soh8n7','127.0.0.1',1522650210,'__ci_last_regenerate|i:1522650210;'),('egb938ngdt58e4v06qqbfu6rpsaiecp6','127.0.0.1',1522650314,'__ci_last_regenerate|i:1522650314;'),('dmvgpd8bhs8rg9jus4vned5e8k8js54k','127.0.0.1',1522650322,'__ci_last_regenerate|i:1522650322;'),('0sdd8d6nppllbkdgk2a5i8ecilhh1c9b','127.0.0.1',1522650331,'__ci_last_regenerate|i:1522650331;'),('jr67q2s0k9a6nucbjobkd7oglgl0s859','127.0.0.1',1522650353,'__ci_last_regenerate|i:1522650353;'),('eclihd35b2sej2imcq9fc1uudtsl94pa','127.0.0.1',1522650411,'__ci_last_regenerate|i:1522650411;'),('kpqknfo78bv9idflsck9hvb1f0gngj6i','127.0.0.1',1522650453,'__ci_last_regenerate|i:1522650453;'),('95av05jdoteonsell3pcgtfe87mib182','127.0.0.1',1522650460,'__ci_last_regenerate|i:1522650460;'),('78kptnaistkjue6ke6jagvu1v7nv2bmq','127.0.0.1',1522650491,'__ci_last_regenerate|i:1522650491;'),('dgemd3kkbaio57onfvjgdfdak8vs75ai','127.0.0.1',1522650504,'__ci_last_regenerate|i:1522650504;'),('8rf7gnhu68pms6j58r7l7a9b66f4ormo','127.0.0.1',1522652075,'__ci_last_regenerate|i:1522652075;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('sq6pghtus8pkqgj25j2j8qvs60a38jok','127.0.0.1',1522650518,'__ci_last_regenerate|i:1522650518;'),('1nhh9qu4hvh32qm0i5oorc4v1o4ion23','127.0.0.1',1522650576,'__ci_last_regenerate|i:1522650576;'),('47n8tkj41aa607c2f0oabk213ad82cnd','127.0.0.1',1522650690,'__ci_last_regenerate|i:1522650690;'),('u4v064982chfjq6fh7bb7omo4r7gvr7k','127.0.0.1',1522652016,'__ci_last_regenerate|i:1522652016;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('c35jlealngcsp5htperi7v2tpn7bb7s3','127.0.0.1',1522652510,'__ci_last_regenerate|i:1522652510;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('j4ct1o3a5emak3ptv7jctv77rt6tlmb7','127.0.0.1',1522652791,'__ci_last_regenerate|i:1522652791;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('gmm2mvlph388aebu700b9m5vcbm9ha50','127.0.0.1',1522652839,'__ci_last_regenerate|i:1522652839;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4nsdvcns2ouprpkgsb45oh81p27j4ss0','127.0.0.1',1522652774,'__ci_last_regenerate|i:1522652774;'),('4itcmgmn7lvs2o645h9eihson49jrs9b','127.0.0.1',1522652785,'__ci_last_regenerate|i:1522652785;'),('4p34kehba7fqmeiln8eqnqn4osmioa6s','127.0.0.1',1522654196,'__ci_last_regenerate|i:1522654196;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('dpacpvp0fa2udlhl22ijk0e93b95oggd','127.0.0.1',1522652794,'__ci_last_regenerate|i:1522652794;'),('mkt0jtddkcodods86nkct4tn8ntodvbp','127.0.0.1',1522652825,'__ci_last_regenerate|i:1522652825;'),('p245uc3i24b0bbsgnavrso9t8jr1j2h9','127.0.0.1',1522664190,'__ci_last_regenerate|i:1522664190;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('efbksk1v32kch5vgbv8q4tbje3841uts','127.0.0.1',1522652875,'__ci_last_regenerate|i:1522652875;'),('liggq0bmrfl144hec0au66cb0e7tesct','127.0.0.1',1522654622,'__ci_last_regenerate|i:1522654622;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3lk2cluqa7sc4uksej4aabomi255b2va','127.0.0.1',1522658418,'__ci_last_regenerate|i:1522658418;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('i44ovd8bn7mk5avb1tcid2eqav10p8id','127.0.0.1',1522660423,'__ci_last_regenerate|i:1522660423;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vkor9f90hktg70iebjquhijhj8jgc6hl','127.0.0.1',1522658462,'__ci_last_regenerate|i:1522658462;'),('4fpbm4lus2f5lo3m7qbuc9ei39ubnjq9','127.0.0.1',1522664051,'__ci_last_regenerate|i:1522664051;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jmu8sdvbpld1n58ngel98nngrjpj1b1f','127.0.0.1',1522663778,'__ci_last_regenerate|i:1522663778;'),('mvpq5qdai8ul4iee4hvctgeovg3nc3qa','127.0.0.1',1522663781,'__ci_last_regenerate|i:1522663781;'),('akbgnf4evaf52r1pg974gm9ekup8rkje','127.0.0.1',1522663797,'__ci_last_regenerate|i:1522663797;'),('alpe7qqd7c9uvi8rcevna5nkmpm3m8bp','127.0.0.1',1522665287,'__ci_last_regenerate|i:1522665287;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('d5s7j36p4qsq1domu50o71f8jtrd1cg8','127.0.0.1',1522676236,'__ci_last_regenerate|i:1522676236;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('af20e1q6cvpjumnov6rm3taogvd32eit','127.0.0.1',1522665607,'__ci_last_regenerate|i:1522665607;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('o2ahg35gibch78seh6e2f9hs7cl3llke','127.0.0.1',1522665291,'__ci_last_regenerate|i:1522665291;'),('flpauqcmtcbr3qc43ucd695buh2ltdnb','127.0.0.1',1522665307,'__ci_last_regenerate|i:1522665307;'),('lr4gu7mgq476r8qtrpdkli507nc73h6r','127.0.0.1',1522665322,'__ci_last_regenerate|i:1522665322;'),('qj4e1opgridrmbt5ctpmekok12adn0d0','127.0.0.1',1522665414,'__ci_last_regenerate|i:1522665414;'),('okrpc8hqg2fes4tvae0nmkkpq78sdd6k','127.0.0.1',1522665432,'__ci_last_regenerate|i:1522665432;'),('l8ctoub0dunir81vbb0qekofgv5uecl7','127.0.0.1',1522667431,'__ci_last_regenerate|i:1522667431;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('muvig0212ct83k87ug0sj5pb3le9f2n4','127.0.0.1',1522675945,'__ci_last_regenerate|i:1522675945;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('uhlkpve92sl4aatlp6s9darkqj167epj','127.0.0.1',1522690736,'__ci_last_regenerate|i:1522690736;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ahohantkmtltqi58m96h7u0jn07qp1si','127.0.0.1',1522675949,'__ci_last_regenerate|i:1522675949;'),('t0nlnejg4lt7tc5u5cvmk7s5m9t44t8b','127.0.0.1',1522690676,'__ci_last_regenerate|i:1522690676;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('upilh7vj4vsgm6mknc65vlfi05imoms3','127.0.0.1',1522690677,'__ci_last_regenerate|i:1522690676;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cqot8dmmb2ie8374tvk8pl22bhocm8mp','127.0.0.1',1522691112,'__ci_last_regenerate|i:1522691112;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('lgk9hmv49tq58nqqjkjudao1q6s8fbne','127.0.0.1',1522690771,'__ci_last_regenerate|i:1522690771;'),('5rhqv78q7cqhqhvim0ne3dheb47l07pc','127.0.0.1',1522690830,'__ci_last_regenerate|i:1522690830;'),('q4innsc198rdr77odo75fpoakl17p5nq','127.0.0.1',1522691425,'__ci_last_regenerate|i:1522691425;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1ccfa62hi5c4c4cgg1da7c8fe8iivr1v','127.0.0.1',1522692247,'__ci_last_regenerate|i:1522692247;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6c0dih9v1dfb1ftm6fkg7454hcb15l25','127.0.0.1',1522692654,'__ci_last_regenerate|i:1522692654;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('rm5lgtmtg1cggp3o1jnbruores09houv','127.0.0.1',1522692970,'__ci_last_regenerate|i:1522692970;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('bu7f8n6fuhu02ku7u8dn4ovhhro0jfip','127.0.0.1',1522693382,'__ci_last_regenerate|i:1522693382;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8kheni612lk3eolh7oat791f80t532hl','127.0.0.1',1522694248,'__ci_last_regenerate|i:1522694248;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('dhmqgd8s20bl0crun5v1dl00ol6ir344','127.0.0.1',1522694559,'__ci_last_regenerate|i:1522694559;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5h1c087ugvqh576cihiu6oafh15ius86','127.0.0.1',1522695524,'__ci_last_regenerate|i:1522695524;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tq546pqbsg9irql38q66rj6jad995hie','127.0.0.1',1522696078,'__ci_last_regenerate|i:1522696078;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6q0017dkuicj2vsktkd2an0brbn1hjpu','127.0.0.1',1522702481,'__ci_last_regenerate|i:1522702481;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('lmh045b85a961pqphuph4pbg1s6pdmb7','127.0.0.1',1522702806,'__ci_last_regenerate|i:1522702806;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('aap6ipa82vfegaji57ko60ahgrikgsio','127.0.0.1',1522702726,'__ci_last_regenerate|i:1522702726;'),('qs9j65fu6ku16nd95ea4favu6ojiplmo','127.0.0.1',1522702741,'__ci_last_regenerate|i:1522702741;'),('78sgjdrb0sadlt04qfgugtecmsk19jpm','127.0.0.1',1522702760,'__ci_last_regenerate|i:1522702760;'),('ie4kd32nfhf2funlftsbov4mcogb94m0','127.0.0.1',1522702769,'__ci_last_regenerate|i:1522702768;'),('39fahqd13robaeje92ccv0phjt0cio91','127.0.0.1',1522705054,'__ci_last_regenerate|i:1522705054;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('oqn8q8dlk0agfmenf360or3murah4j6a','127.0.0.1',1522702809,'__ci_last_regenerate|i:1522702809;'),('5l85ia0p7sa4a2atqc2pgijnq7r0u67t','127.0.0.1',1522703411,'__ci_last_regenerate|i:1522703411;'),('9bs0vqjo26c113ob72t0qnbksa4m7pma','127.0.0.1',1522703446,'__ci_last_regenerate|i:1522703446;'),('baeruj1rva7oq5384omi5u0n4lr53ig1','127.0.0.1',1522703459,'__ci_last_regenerate|i:1522703459;'),('n1f9jgln95qle119bfhp904v5l91auav','127.0.0.1',1522703570,'__ci_last_regenerate|i:1522703570;'),('tg8akt002cs5i3jaajcha8luddt3qluh','127.0.0.1',1522703599,'__ci_last_regenerate|i:1522703599;'),('4u5ha1tvc8fsak4i7nbevlp3ijj5mp0o','127.0.0.1',1522703618,'__ci_last_regenerate|i:1522703618;'),('hgsmp7jum20mknh3qt1pif7jc9ho6sm4','127.0.0.1',1522703650,'__ci_last_regenerate|i:1522703650;'),('u4pgc492oou3j4ddb2k4rpo9fk9a1hh4','127.0.0.1',1522703681,'__ci_last_regenerate|i:1522703681;'),('iclpm1tdg7rvbqjo5aekh53bm5mdkeo0','127.0.0.1',1522703753,'__ci_last_regenerate|i:1522703752;'),('0b8k4auro9ea43fgnvaue1rrulp5ca0k','127.0.0.1',1522703942,'__ci_last_regenerate|i:1522703942;'),('vq5flebr23u71u823jjdg65ogh0ffod2','127.0.0.1',1522703958,'__ci_last_regenerate|i:1522703958;'),('hl9s7nepa5s2ar5cljok00gf0ebq2tvf','127.0.0.1',1522703984,'__ci_last_regenerate|i:1522703984;'),('phmb4to4ek732mf6oa5ug4f84hhsdvfu','127.0.0.1',1522704019,'__ci_last_regenerate|i:1522704019;'),('c6crvs7p6e3ki6dd0dq1sponcu4411t0','127.0.0.1',1522704080,'__ci_last_regenerate|i:1522704080;'),('gtutmf0v1ur8tn991l4bilnpi5a011ri','127.0.0.1',1522704154,'__ci_last_regenerate|i:1522704154;'),('alur5b97qudvegbsb5demsua1njtpn4n','127.0.0.1',1522704164,'__ci_last_regenerate|i:1522704164;'),('bg47rbps0496aepvvnl2mss2kmcjj9ad','127.0.0.1',1522704239,'__ci_last_regenerate|i:1522704239;'),('ii179cbgirifm28nl1j2hvv7ervaagi3','127.0.0.1',1522704255,'__ci_last_regenerate|i:1522704255;'),('mg5f3lkmq639epl40m0pmlmkm3tig6er','127.0.0.1',1522704343,'__ci_last_regenerate|i:1522704343;'),('go1mjc29t7oipkpp9q8oc8r1jpqe5vee','127.0.0.1',1522704633,'__ci_last_regenerate|i:1522704633;'),('319ngmraoblo9v6hct7oqpd91kb0v1h1','127.0.0.1',1522704636,'__ci_last_regenerate|i:1522704636;'),('eqn1m4vguf12edd9hsanqlpjg5cqcdm5','127.0.0.1',1522704641,'__ci_last_regenerate|i:1522704641;'),('kmtiosm4qtm3lg14ma5ha4912gmdogid','127.0.0.1',1522704646,'__ci_last_regenerate|i:1522704646;'),('h1chslfuis5dpasb11imd1bno2iqpabu','127.0.0.1',1522704651,'__ci_last_regenerate|i:1522704651;'),('hog23261lgabgv7hh0g5th2adtu0ohl2','127.0.0.1',1522704655,'__ci_last_regenerate|i:1522704655;'),('ptrq650bmkdrq3aqjqjhectl6rc8v3ea','127.0.0.1',1522704661,'__ci_last_regenerate|i:1522704661;'),('lau9n1vda7ielvv3jdmn934f7t2ok71l','127.0.0.1',1522704668,'__ci_last_regenerate|i:1522704668;'),('a6a5488rdprt5sc6qusgqhhf203tgtdq','127.0.0.1',1522704690,'__ci_last_regenerate|i:1522704690;'),('e3mreu5cqkh7b3bon6nfke5l9ta7mqsq','127.0.0.1',1522704695,'__ci_last_regenerate|i:1522704695;'),('ldihs8tp2k1bhlrvapfk0err8nkacque','127.0.0.1',1522705020,'__ci_last_regenerate|i:1522705020;'),('dad1721ntvfh9puia0nnuq94umnnnc2r','127.0.0.1',1522705037,'__ci_last_regenerate|i:1522705037;'),('k0lu9vs8b0n30aqrq3cmhl5josvvbqp1','127.0.0.1',1522705047,'__ci_last_regenerate|i:1522705047;'),('nklhsagtgplldf54aplbi71eqsfv905u','127.0.0.1',1522709308,'__ci_last_regenerate|i:1522709308;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('qg2gq8m89leeroe0lqpm500g7btkog37','127.0.0.1',1522705063,'__ci_last_regenerate|i:1522705063;'),('mffj7udkm7cjvtvnh44lo7oc7q7fhc0j','127.0.0.1',1522705069,'__ci_last_regenerate|i:1522705069;'),('0ir8ecgusmfp2ka94orerubsf46stvlj','127.0.0.1',1522705076,'__ci_last_regenerate|i:1522705076;'),('cqgd1qkmncs60hct0l8nc3c2srigouta','127.0.0.1',1522705080,'__ci_last_regenerate|i:1522705079;'),('2ddhsv4dg58hiteqhtcd7f88pe9641ff','127.0.0.1',1522705090,'__ci_last_regenerate|i:1522705090;'),('67e9fdfv9qvbat46e6tosaejb4uampic','127.0.0.1',1522705465,'__ci_last_regenerate|i:1522705465;'),('svq5tc2cv977ej1ju57lm740een8m42f','127.0.0.1',1522705666,'__ci_last_regenerate|i:1522705666;'),('dti90q64i3mfkbts6otmh8rsi88hhnpr','127.0.0.1',1522705670,'__ci_last_regenerate|i:1522705670;'),('djs4lp19p29mi7mctd32o7mq2bvltjoq','127.0.0.1',1522705728,'__ci_last_regenerate|i:1522705728;'),('rbo88hfa2bmj8khvf3748hqmpneltnn1','127.0.0.1',1522705759,'__ci_last_regenerate|i:1522705759;'),('dl9qn3tsem55adjtke9re3gqe3jkshs4','127.0.0.1',1522705762,'__ci_last_regenerate|i:1522705762;'),('fceh39av19svn4uhrfffgohsr7gr2om9','127.0.0.1',1522705772,'__ci_last_regenerate|i:1522705772;'),('ocsa6a6ron754d981tpj36podsscd8tj','127.0.0.1',1522705876,'__ci_last_regenerate|i:1522705876;'),('s6q7t078n67p095ae65t62ar2o8c898h','127.0.0.1',1522705880,'__ci_last_regenerate|i:1522705880;'),('hemdcpj02lmbt9orga2q0034b214shbu','127.0.0.1',1522705884,'__ci_last_regenerate|i:1522705884;'),('91bs8qn3i5d9go7us5amjn63eeuh9cfk','127.0.0.1',1522705904,'__ci_last_regenerate|i:1522705904;'),('3d21r3h3bcftmniihtbmkvnm16ci31a2','127.0.0.1',1522705919,'__ci_last_regenerate|i:1522705919;'),('l60sg3ae5cga1msnb281fctflee4j6ve','127.0.0.1',1522705977,'__ci_last_regenerate|i:1522705977;'),('a9usm4ig0udkklnp4640pdaeie9cfken','127.0.0.1',1522705983,'__ci_last_regenerate|i:1522705983;'),('55s22oqame7brkbhivvk8cuu22b23mcr','127.0.0.1',1522706098,'__ci_last_regenerate|i:1522706097;'),('pom60n6sbvkfhe20aobhqscqqacp1bn2','127.0.0.1',1522706150,'__ci_last_regenerate|i:1522706150;'),('91b39kuljmel12tbj430rkukfuvhkc4f','127.0.0.1',1522706730,'__ci_last_regenerate|i:1522706730;'),('4msktr5ifl6vha9324i1uf52p7nlrtfv','127.0.0.1',1522706735,'__ci_last_regenerate|i:1522706735;'),('b6ftka0k0flkef8uf3j47p2v2p2gu89e','127.0.0.1',1522707132,'__ci_last_regenerate|i:1522707132;'),('3l4cpkr9lqrfd9ictersvbtb3v9v8cf9','127.0.0.1',1522707168,'__ci_last_regenerate|i:1522707168;'),('5600n2b1vt4nrdoh0p5cah1tb4kejasm','127.0.0.1',1522707173,'__ci_last_regenerate|i:1522707173;'),('1gurl2kdh35mg4k34u016m41ttikqmom','127.0.0.1',1522707184,'__ci_last_regenerate|i:1522707184;'),('nl96nk7uuhal7s62iviui0n8n2i8a3ir','127.0.0.1',1522707198,'__ci_last_regenerate|i:1522707198;'),('9kbgb67t1l2q75gajs9b8r93f5nvd20q','127.0.0.1',1522707205,'__ci_last_regenerate|i:1522707205;'),('1r81kphn3dgjordcgnvper2hqnpmbr2l','127.0.0.1',1522707209,'__ci_last_regenerate|i:1522707209;'),('24uf36j0isds59rk0519iopo6s56roq3','127.0.0.1',1522707229,'__ci_last_regenerate|i:1522707229;'),('a9ms7g2hl2a0e0ca6aou8hmjaoa0v0j7','127.0.0.1',1522707247,'__ci_last_regenerate|i:1522707247;'),('mdn36d46n3srr0d474l7dbmt1e32sv1m','127.0.0.1',1522707253,'__ci_last_regenerate|i:1522707253;'),('4qh11cjl2a3qngg56sj8c6livomdkgae','127.0.0.1',1522707256,'__ci_last_regenerate|i:1522707256;'),('hdumcdmn9dfsel3mgaj1rln5inho9ful','127.0.0.1',1522707262,'__ci_last_regenerate|i:1522707262;'),('sid3qg2nulimol1c6371ql3avu8ai5ed','127.0.0.1',1522707273,'__ci_last_regenerate|i:1522707273;'),('47nhlbo2s0rrfouqko5n1tc4vao280qh','127.0.0.1',1522707277,'__ci_last_regenerate|i:1522707277;'),('s4vh2pomjk3hh1dem2nujaent8r5oejo','127.0.0.1',1522707279,'__ci_last_regenerate|i:1522707279;'),('ht66jala7c1e9lr375kcojfir5v06rb8','127.0.0.1',1522707282,'__ci_last_regenerate|i:1522707282;'),('e20g5ae6h1ai0elfq8r8mqj2pgl1rnhb','127.0.0.1',1522707290,'__ci_last_regenerate|i:1522707290;'),('mik5stn7batiek6vgqltogi7f5rs7uce','127.0.0.1',1522707297,'__ci_last_regenerate|i:1522707297;'),('gbp7gdgssihoui4m4tbccllaenq7pgif','127.0.0.1',1522707299,'__ci_last_regenerate|i:1522707299;'),('tsh6o2fjpio3kpmddf9r7ht70d4t2ste','127.0.0.1',1522707320,'__ci_last_regenerate|i:1522707320;'),('e7j1mqkvtes6cqitfo7siumi1pln5acr','127.0.0.1',1522707328,'__ci_last_regenerate|i:1522707328;'),('sfk2123i6ncpqibvaql4h0no79pcnbv5','127.0.0.1',1522707490,'__ci_last_regenerate|i:1522707490;'),('8fv9ob0n0j2kpnbt797v8op409kmt6ju','127.0.0.1',1522707493,'__ci_last_regenerate|i:1522707493;'),('fmu6h8o1dlkh81sgpav7htfkubi2os39','127.0.0.1',1522707497,'__ci_last_regenerate|i:1522707497;'),('9qdqld2gd9vcpokiihickh02mabbs1ls','127.0.0.1',1522707502,'__ci_last_regenerate|i:1522707502;'),('ful28q1ppr69h4k353ibik8ojafu5gm1','127.0.0.1',1522707512,'__ci_last_regenerate|i:1522707512;'),('vimqopvdvimdshvfskrlub81n51969co','127.0.0.1',1522707519,'__ci_last_regenerate|i:1522707519;'),('0b99ikmkhqpu908avu33rjplgrub6kc2','127.0.0.1',1522707524,'__ci_last_regenerate|i:1522707524;'),('jhcvk8dmkd9sb4koqkjbdfniim6vgjo8','127.0.0.1',1522707529,'__ci_last_regenerate|i:1522707529;'),('iqgvi2b13u6e1ld7lv6kbo0dcm2skj1g','127.0.0.1',1522707535,'__ci_last_regenerate|i:1522707535;'),('nsu0tcqchrioq0fdnr6o265ps6jmu1sj','127.0.0.1',1522707570,'__ci_last_regenerate|i:1522707570;'),('qdr6vqr7c5kacomdjndqdespeesv857j','127.0.0.1',1522707584,'__ci_last_regenerate|i:1522707584;'),('gq2h9p8ukcifi95nb2agdgedhdtquhvv','127.0.0.1',1522707590,'__ci_last_regenerate|i:1522707590;'),('im61cvir11id978dr53fgoh1idb5qr31','127.0.0.1',1522707597,'__ci_last_regenerate|i:1522707597;'),('s9d656n7th4t841b5ifsp0l40632mc6h','127.0.0.1',1522707747,'__ci_last_regenerate|i:1522707747;'),('3bs9me2tjp6mv9g2ge1b91dvsmlrsmj8','127.0.0.1',1522707761,'__ci_last_regenerate|i:1522707761;'),('hqck67htmaacs738jtndm0aft2ck95cb','127.0.0.1',1522707940,'__ci_last_regenerate|i:1522707940;'),('krn7tfm7iq3nhua107unleugbm2e5icb','127.0.0.1',1522707943,'__ci_last_regenerate|i:1522707943;'),('sbhde5ao9vmunnlh625kvt57bipots64','127.0.0.1',1522708188,'__ci_last_regenerate|i:1522708188;'),('fl3bsjhrv8a5iktki8luo78rmp6pva9v','127.0.0.1',1522708233,'__ci_last_regenerate|i:1522708233;'),('nvk7uib4nqlt0agm6hi1ki4cvucuiaqa','127.0.0.1',1522709230,'__ci_last_regenerate|i:1522709230;'),('gtjlei64j6ltkhu27rg081hi2b94o1uo','127.0.0.1',1522709239,'__ci_last_regenerate|i:1522709239;'),('sbs0pltvm0b5t4v7t415u4eks1q9ediu','127.0.0.1',1522737586,'__ci_last_regenerate|i:1522737586;'),('bg6uk6dd8phkqloju1hktjvp25ej583n','127.0.0.1',1522738655,'__ci_last_regenerate|i:1522738655;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ioc4d1485ejns6ct5fib38f01dein51u','127.0.0.1',1522737601,'__ci_last_regenerate|i:1522737600;'),('955g29ij7a4vc1gv5go9ah1epnm165h0','127.0.0.1',1522737608,'__ci_last_regenerate|i:1522737608;'),('lfk2qh48corq8k3990d4ssdm5vl26o6q','127.0.0.1',1522737615,'__ci_last_regenerate|i:1522737615;'),('al11j36nj10dasdq8vjctihsvrv8f6bd','127.0.0.1',1522738579,'__ci_last_regenerate|i:1522738579;'),('3qf7rh6dcc3jm3laqgtos7l0pj9f749b','127.0.0.1',1522739051,'__ci_last_regenerate|i:1522739051;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('9bnu8ct77272o5epd2edqes3l2uum64p','127.0.0.1',1522738658,'__ci_last_regenerate|i:1522738658;'),('os4o554dd5dor0085boljtgolb7nie2q','127.0.0.1',1522738673,'__ci_last_regenerate|i:1522738673;'),('457e4r20rvunjf30mbkjbgnf6qsql99k','127.0.0.1',1522738692,'__ci_last_regenerate|i:1522738692;'),('ftep9227uo0ck8qjtbh3um6j7gcq9o1j','127.0.0.1',1522739471,'__ci_last_regenerate|i:1522739471;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ksh8ub02kqqirffl79tj2i70qa1t5eus','127.0.0.1',1522739816,'__ci_last_regenerate|i:1522739816;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('62op3v1gr4mi6flgnd6gmjp3bvau18no','127.0.0.1',1522740141,'__ci_last_regenerate|i:1522740141;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('mgfictmh2l2ah5a25be5d5led1s9aq2r','127.0.0.1',1522740661,'__ci_last_regenerate|i:1522740661;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fmkfasqbviqj5sik6p3d4nfv1q465ahb','127.0.0.1',1522740273,'__ci_last_regenerate|i:1522740273;'),('8tfi20rgo3nqeeven3id077ap2netf7a','127.0.0.1',1522740290,'__ci_last_regenerate|i:1522740290;'),('1g54isigqthr5n3t5je6ovebp7qocp2v','127.0.0.1',1522740310,'__ci_last_regenerate|i:1522740310;'),('tob8suopcu01qk21u7532k8emde981a5','127.0.0.1',1522740656,'__ci_last_regenerate|i:1522740656;'),('a7i7fbkto0flv0tv3ie8u6vcsupstsj1','127.0.0.1',1522741499,'__ci_last_regenerate|i:1522741499;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('mo30im81cfh0lun0d493gmr08qutp6g4','127.0.0.1',1522742365,'__ci_last_regenerate|i:1522742365;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('9nvpjg58dthd4i5btgdj2n2voe5rjeat','127.0.0.1',1522742297,'__ci_last_regenerate|i:1522742297;'),('gvdce83a885o9qu6omhpj334mjarr5ha','127.0.0.1',1522742710,'__ci_last_regenerate|i:1522742710;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5speks97h8kelto2hbftthd3ke8puiic','127.0.0.1',1522743121,'__ci_last_regenerate|i:1522743121;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('so0o6ivaif4dbia8mvrljc8qj7f196l8','127.0.0.1',1522743207,'__ci_last_regenerate|i:1522743207;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('28a765lag3cqula411psd0bsmi42htd5','127.0.0.1',1522743462,'__ci_last_regenerate|i:1522743462;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('j906mem4qn1iigkp2nrq9b0r4iqulros','127.0.0.1',1522745167,'__ci_last_regenerate|i:1522745167;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('34dec35b20cjtep6rv45lboqk2t2ueo9','127.0.0.1',1522743334,'__ci_last_regenerate|i:1522743334;'),('c1j96c5d3o8em3k0o2oh75kb9fsqd57s','127.0.0.1',1522743372,'__ci_last_regenerate|i:1522743372;'),('1bkmv1qk9q3cdqjeam5i31s6qitq8i80','127.0.0.1',1522743376,'__ci_last_regenerate|i:1522743376;'),('hrmd609cuni6d06p7niuf31mk3i93pfk','127.0.0.1',1522743805,'__ci_last_regenerate|i:1522743805;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('3unlkcehrir7k2pu8kau2qbmi8ooca3d','127.0.0.1',1522744106,'__ci_last_regenerate|i:1522744106;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('lb042lu41ds4ljiev41ogfso7qn0p21i','127.0.0.1',1522744416,'__ci_last_regenerate|i:1522744416;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('30ov2dhhbc74ksj5qa84808d4nvokin4','127.0.0.1',1522744411,'__ci_last_regenerate|i:1522744411;'),('59s48alepr3k1k5db7knee7tbhuakr17','127.0.0.1',1522744811,'__ci_last_regenerate|i:1522744811;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('v6cmnjti8ihoou1sobf83g55jcqf2orj','127.0.0.1',1522744422,'__ci_last_regenerate|i:1522744422;'),('uffo9232flekv440qabkcjds2tulnbh2','127.0.0.1',1522744427,'__ci_last_regenerate|i:1522744427;'),('1hen192938vsur2ejqaaek2h1prr36bg','127.0.0.1',1522744434,'__ci_last_regenerate|i:1522744434;'),('j2eic8j4sc2hosbpqju8apkuvr8potli','127.0.0.1',1522744519,'__ci_last_regenerate|i:1522744519;'),('1rgr96sh3jsa43dcfaldl1esuu3uhi9u','127.0.0.1',1522744528,'__ci_last_regenerate|i:1522744528;'),('qhnv9oap8bbktblun4ufgcmattis3hnv','127.0.0.1',1522744576,'__ci_last_regenerate|i:1522744576;'),('583jv4s21jhgn2ugs5mj9q2rvqg5bj24','127.0.0.1',1522744620,'__ci_last_regenerate|i:1522744620;'),('a66utn4c09he7ep8l1bgqqr7dj0q0tg2','127.0.0.1',1522744697,'__ci_last_regenerate|i:1522744697;'),('ios16lkoa0mlvo7nrplhen0ap7ndtql0','127.0.0.1',1522745126,'__ci_last_regenerate|i:1522745126;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('l32vbd9pdn5dao9tj59dl60ieihqsomh','127.0.0.1',1522744821,'__ci_last_regenerate|i:1522744821;'),('eo7n8kq9dcho5k6mc1pju4s83e05dha3','127.0.0.1',1522744834,'__ci_last_regenerate|i:1522744834;'),('l1og1gsr8t2mi90e1sghche8tpo8tcp2','127.0.0.1',1522746005,'__ci_last_regenerate|i:1522746005;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('nlrldmg1vd3vcgnitobs025fdjmgrrna','127.0.0.1',1522757252,'__ci_last_regenerate|i:1522757252;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('m40a7pmat6is8hlqs2jo6c0e715gki66','127.0.0.1',1522745186,'__ci_last_regenerate|i:1522745186;'),('82jsh6t9msjeokh2kl0a6ahjec02pthv','127.0.0.1',1522745223,'__ci_last_regenerate|i:1522745223;'),('c8nlfkq1bu7h8gb6jr2ae9gaqb6olme4','127.0.0.1',1522745227,'__ci_last_regenerate|i:1522745227;'),('k0ptljhet2cseecumnhbi92hdlchi9cp','127.0.0.1',1522747382,'__ci_last_regenerate|i:1522747382;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('bjebgc799574fedabve7aek9bi7c835d','127.0.0.1',1522747264,'__ci_last_regenerate|i:1522747264;'),('ut3qvb54u46d3beh0gre4ctnnca2m8ro','127.0.0.1',1522747305,'__ci_last_regenerate|i:1522747305;'),('l2b0nm1hem7secmijmegna3fknfv2foj','127.0.0.1',1522747370,'__ci_last_regenerate|i:1522747370;'),('a840p0f4p6t0dvaeosojvmjj2aripai3','127.0.0.1',1522747375,'__ci_last_regenerate|i:1522747375;'),('p1cjfmvm48gptd6vh3ts28ev9cteq998','127.0.0.1',1522751502,'__ci_last_regenerate|i:1522751502;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5346rkhm2r0q742jmgpdgum4uk7fldlb','127.0.0.1',1522747387,'__ci_last_regenerate|i:1522747387;'),('a0n7pneok436rqpj74j83fv25k9bn860','127.0.0.1',1522747450,'__ci_last_regenerate|i:1522747450;'),('mqss57j8jg2o7pjk3b2ubh1tqv1nil3o','127.0.0.1',1522747475,'__ci_last_regenerate|i:1522747475;'),('oblvlnrrhk1sq0m8010g3mffu2hpqbai','127.0.0.1',1522747562,'__ci_last_regenerate|i:1522747562;'),('fesseg2n3umi8mb0j1rgjt4bpdp7rgfi','127.0.0.1',1522748470,'__ci_last_regenerate|i:1522748470;'),('fkkb6eljl6h92f56vigv0nm3flj4dsu0','127.0.0.1',1522750857,'__ci_last_regenerate|i:1522750857;'),('dqqnunjfcm33eq90ubvrnaluhajfgcp1','127.0.0.1',1522750862,'__ci_last_regenerate|i:1522750862;'),('7p29f84eut2l14471mn5q8dm4o1ljr1a','127.0.0.1',1522751072,'__ci_last_regenerate|i:1522751072;'),('s05jlg54ftcnsqh53lf7svbetj4v50fm','127.0.0.1',1522751099,'__ci_last_regenerate|i:1522751099;'),('40bcsocg9vhugi3abgl3bsvelhp3mcdf','127.0.0.1',1522751165,'__ci_last_regenerate|i:1522751165;'),('n98aqdk51ggq7ek19r2a8bkp6lf3ta4s','127.0.0.1',1522751197,'__ci_last_regenerate|i:1522751197;'),('4lldd9rh5t1khrcqlv0uo2023psn4me5','127.0.0.1',1522751435,'__ci_last_regenerate|i:1522751435;'),('3lg8e7pi5vchrb81rbg3hnehvbpdnd7f','127.0.0.1',1522760638,'__ci_last_regenerate|i:1522760638;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3prub7v2or8u7l4bjukjs0j1mdlhkmnt','127.0.0.1',1522757257,'__ci_last_regenerate|i:1522757252;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('jk2704i9pq1e7mhrmmhesls0olu9hrnh','127.0.0.1',1522767065,'__ci_last_regenerate|i:1522767065;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jgfm63nfie1qp5u7sri9cop9j6069556','127.0.0.1',1522781392,'__ci_last_regenerate|i:1522781392;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('der790uiu2lh3buovts9dt9t2c7ac05p','127.0.0.1',1522767225,'__ci_last_regenerate|i:1522767225;'),('pp79j1u28sthrdt54ihd6ed5a1jc201m','127.0.0.1',1522767679,'__ci_last_regenerate|i:1522767679;'),('t3kff9c12cpfemjm84j3df5gcrsoevsg','127.0.0.1',1522767829,'__ci_last_regenerate|i:1522767829;'),('09lkdsif5qcaturcr01j1gf26j8c312q','127.0.0.1',1522767833,'__ci_last_regenerate|i:1522767833;'),('18kvej68g9he3jh9mm2vin8m3e0mpd4c','127.0.0.1',1522772574,'__ci_last_regenerate|i:1522772574;'),('iohkulgb4fdaiqiuf9ns4dhbj63bkgib','127.0.0.1',1522772586,'__ci_last_regenerate|i:1522772586;'),('u5vii78us5pod6pr0k640vfqsj6n4d31','127.0.0.1',1522772821,'__ci_last_regenerate|i:1522772821;'),('ip4u1li1u2u16pqfmsabelmqah8q31bt','127.0.0.1',1522773144,'__ci_last_regenerate|i:1522773144;'),('amfjoa0fk2ob58e2hgmpogg8a9a7og2k','127.0.0.1',1522773151,'__ci_last_regenerate|i:1522773151;'),('1bh56li74vie9lv3rno4vlphv38dk945','127.0.0.1',1522773154,'__ci_last_regenerate|i:1522773154;'),('j9iv68e9p8mq3ni4dikh0mm6m8fdd0gv','127.0.0.1',1522773272,'__ci_last_regenerate|i:1522773272;'),('9b3gvll3jrfjv1oucsgj0lvu8ug0k6bh','127.0.0.1',1522781406,'__ci_last_regenerate|i:1522781406;'),('s3bru6jle4tlgcvteqpiifpgjs4ftr01','127.0.0.1',1522825555,'__ci_last_regenerate|i:1522825555;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('lqmjaqd4fjmmosaaqnmvuvluhaa6p127','127.0.0.1',1522819205,'__ci_last_regenerate|i:1522819205;'),('7rgbfsu3dtug5vbojemd1nn9ou20cjqg','127.0.0.1',1522838853,'__ci_last_regenerate|i:1522838853;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ie411tilrak4acvi4al2d9m147fpq7gr','127.0.0.1',1522838425,'__ci_last_regenerate|i:1522838425;'),('7kjlo6n8vqsjedef491gk4eu7o46g11c','127.0.0.1',1522838493,'__ci_last_regenerate|i:1522838493;'),('77c0kcdcuual7skkp21ok99nj1krcdim','127.0.0.1',1522838522,'__ci_last_regenerate|i:1522838522;'),('k77sm7ffk4nposbgnuhuprcsvke51kut','127.0.0.1',1522838617,'__ci_last_regenerate|i:1522838617;'),('t0d3b6pf0m1b3oekblvnitqtkgo69t2r','127.0.0.1',1522838621,'__ci_last_regenerate|i:1522838621;'),('lh253b8u2ejvpql072a0rscolmlo88h2','127.0.0.1',1522838624,'__ci_last_regenerate|i:1522838624;'),('5nfedn4j9hkr8d96jbsrk65hfgr82ihm','127.0.0.1',1522838628,'__ci_last_regenerate|i:1522838628;'),('5sap9aikgr6qkl51e433m0qv4rvo3bl0','127.0.0.1',1522838630,'__ci_last_regenerate|i:1522838630;'),('bmpr4t1qb9uuflr8neia72fnjn833lj1','127.0.0.1',1522838714,'__ci_last_regenerate|i:1522838714;'),('k8egsudcijl9qpt1en8s878fr1ih4k48','127.0.0.1',1522839178,'__ci_last_regenerate|i:1522839178;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ocshl08fbvf3vo64o60dk3aqv2a67pfv','127.0.0.1',1522839165,'__ci_last_regenerate|i:1522839165;'),('l2b633hqi2ioukotb48f29nvqcs7dhur','127.0.0.1',1522839168,'__ci_last_regenerate|i:1522839168;'),('dtgf9uqlg4onm8rc26ptbnhnh7a4f56r','127.0.0.1',1522841139,'__ci_last_regenerate|i:1522841139;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('936cur64of06l33jjhgjcboq6av4red4','127.0.0.1',1522839183,'__ci_last_regenerate|i:1522839183;'),('th2du10iimd554k4ss9dmh13c516gfmb','127.0.0.1',1522839186,'__ci_last_regenerate|i:1522839186;'),('2hp68fo3v069d916rvs9ca03s6cqc399','127.0.0.1',1522839247,'__ci_last_regenerate|i:1522839247;'),('pl6bh123e45ei1qp06nnlmdfe2nb3ns0','127.0.0.1',1522839293,'__ci_last_regenerate|i:1522839293;'),('gcuk3sea85kic0pj2b03ukv7k1msoi2f','127.0.0.1',1522841032,'__ci_last_regenerate|i:1522841032;'),('51bkpn3ogmpamv208llad4p55caj583r','127.0.0.1',1522841043,'__ci_last_regenerate|i:1522841042;'),('3j8utjdgph09jm9tb06iqe15a3t4e7bv','127.0.0.1',1522841045,'__ci_last_regenerate|i:1522841045;'),('e80u2iavhscddhp937fpgt62pstgiol3','127.0.0.1',1522841052,'__ci_last_regenerate|i:1522841052;'),('5h0be2nobj131sc330dpldj43cpakula','127.0.0.1',1522843671,'__ci_last_regenerate|i:1522843671;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('307jblau01pvn580a9s8dj9rit0ngejj','127.0.0.1',1522841252,'__ci_last_regenerate|i:1522841252;'),('i1pklcsf39h2ukbqi46k28fe2g0hhneu','127.0.0.1',1522841280,'__ci_last_regenerate|i:1522841280;'),('7oq7rpan24ds7tmpmbf865k1lc7qjfgd','127.0.0.1',1522842011,'__ci_last_regenerate|i:1522842011;'),('375pp8rf8df9esdglnjc9oe9o80t2d9r','127.0.0.1',1522842091,'__ci_last_regenerate|i:1522842091;'),('2348uqjebls81bao80p37m2itvkrmccs','127.0.0.1',1522842162,'__ci_last_regenerate|i:1522842162;'),('p11m83igrio9epmbpes33gmonfcltpqh','127.0.0.1',1522842247,'__ci_last_regenerate|i:1522842247;'),('78c7dcgqre384mbhdjfbj6ujkhuvb0bv','127.0.0.1',1522842425,'__ci_last_regenerate|i:1522842425;'),('93op1mj74resklds64uprbv7nr8e0uft','127.0.0.1',1522843573,'__ci_last_regenerate|i:1522843573;'),('hi0p5b0l55vv26tegb78j8tipv0s474o','127.0.0.1',1522844009,'__ci_last_regenerate|i:1522844009;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ohge8tvsrv48nvb5lllrdiiav2ho3cob','127.0.0.1',1522849567,'__ci_last_regenerate|i:1522849567;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6reorbo6buiess81t528qtpqb5eooog7','127.0.0.1',1522847271,'__ci_last_regenerate|i:1522847271;'),('0qfjd5s87fmah9u2qu2vamei7bkbe16u','127.0.0.1',1522847362,'__ci_last_regenerate|i:1522847362;'),('bfhpbgnqlh4j2f619mmf0dqb5nidopbi','127.0.0.1',1522847458,'__ci_last_regenerate|i:1522847458;'),('7gjolpjmp37a6spnifjtfbhoibvmkft6','127.0.0.1',1522847487,'__ci_last_regenerate|i:1522847487;'),('p9hnikm5sjko4903rjumhhb14eq812ob','127.0.0.1',1522847956,'__ci_last_regenerate|i:1522847955;'),('o038ftgmv8otaj6bhikktfuisbqvdlgm','127.0.0.1',1522847966,'__ci_last_regenerate|i:1522847966;'),('nnnrlmk7omnqvlji0rphsg9btp4scgj8','127.0.0.1',1522848064,'__ci_last_regenerate|i:1522848064;'),('v56csiq58l8rhrl3jo68p707o8f1r3o2','127.0.0.1',1522848083,'__ci_last_regenerate|i:1522848082;'),('582eccc41jcucsuj7d0dsbuph9ffa5o4','127.0.0.1',1522848767,'__ci_last_regenerate|i:1522848767;'),('h5g09tgn16rk8amjhnq1epk979m3p9lc','127.0.0.1',1522859148,'__ci_last_regenerate|i:1522859148;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tisbv9kkeso8dq4mhie59i6to6av96ue','127.0.0.1',1522859148,'__ci_last_regenerate|i:1522859148;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('qmqkua0vlb0g8llkep6hbi3aoqc1e74a','127.0.0.1',1522859159,'__ci_last_regenerate|i:1522859159;'),('gklob17ns310emcit93rdfnhplv7ppru','127.0.0.1',1522859676,'__ci_last_regenerate|i:1522859676;'),('hlraa1mqsgud2vbtaj56e1dd05b58q8u','127.0.0.1',1522859698,'__ci_last_regenerate|i:1522859698;'),('sg9b52ul8fin756bl4md2env5dg8a3q5','127.0.0.1',1522859713,'__ci_last_regenerate|i:1522859713;'),('6398fi7kq9qjfprd69o85tu134pvagms','127.0.0.1',1522859880,'__ci_last_regenerate|i:1522859880;'),('u0h9sio5bmqhtlom721ir02jdeieiscr','127.0.0.1',1522859945,'__ci_last_regenerate|i:1522859944;'),('r66jgl8j538b61f206f1mm2uhqo3mt9a','127.0.0.1',1522860013,'__ci_last_regenerate|i:1522860013;'),('loevhab6p9644r7mr6tmsq7k5g5gd8se','127.0.0.1',1522860029,'__ci_last_regenerate|i:1522860029;'),('pe1vaer97c4gf6lqe6ob0ddqtkgib8o3','127.0.0.1',1522860080,'__ci_last_regenerate|i:1522860080;'),('6npv9fkm0p955qio9d600fo8mgos7og1','127.0.0.1',1522860134,'__ci_last_regenerate|i:1522860134;'),('a1u6u8jm7mo2fcjuiqa7fo9amqvoibs6','127.0.0.1',1522860160,'__ci_last_regenerate|i:1522860160;'),('1iqvdgq3com1k33k4o8u4jhcaoif7sn4','127.0.0.1',1522860188,'__ci_last_regenerate|i:1522860188;'),('atk5af2pqftgvfpmr0nbhe5g56qd8mb2','127.0.0.1',1522860236,'__ci_last_regenerate|i:1522860236;'),('0bnjaqad9lcp9rlk4f45rsppg17bnvsd','127.0.0.1',1522860268,'__ci_last_regenerate|i:1522860268;'),('6p1meggvv5nqgarlb6v0d6khvud3t85k','127.0.0.1',1522860294,'__ci_last_regenerate|i:1522860294;'),('vn0dh7d1n5eb6t9i0n8hrnv5uup9fp86','127.0.0.1',1522860377,'__ci_last_regenerate|i:1522860377;'),('6jjnm12t35l3qa7oai33ka2mptf4ulp0','127.0.0.1',1522860381,'__ci_last_regenerate|i:1522860381;'),('jsbno9ltmurhoglhjv24sj0sakcukqa9','127.0.0.1',1522860403,'__ci_last_regenerate|i:1522860403;'),('igrv4svcicoi845gi838sopr6egd2k1r','127.0.0.1',1522860435,'__ci_last_regenerate|i:1522860435;'),('146nd5l4a4lf4j6oml706df8os9mustr','127.0.0.1',1522860446,'__ci_last_regenerate|i:1522860446;'),('tghiakpa30vrutniqf3hgphsv03gflsi','127.0.0.1',1522860523,'__ci_last_regenerate|i:1522860523;'),('441kjrl3m8f81mgvgj3ocujs303dobv9','127.0.0.1',1522860526,'__ci_last_regenerate|i:1522860526;'),('et6p8urorv6agbfpbk7eid7o606sja2b','127.0.0.1',1522860577,'__ci_last_regenerate|i:1522860577;'),('c5bo5ki5rqumeee9vmkbjo1a5l3i84qf','127.0.0.1',1522860584,'__ci_last_regenerate|i:1522860584;'),('cr9dmjt3nej8to6qrga95v3l5tntuc9g','127.0.0.1',1522860594,'__ci_last_regenerate|i:1522860594;'),('m988gsc5ish5rehgbbjiskk68klrvubn','127.0.0.1',1522919009,'__ci_last_regenerate|i:1522919009;'),('utsb5kbinbtfhnkvdn99tsimcjo9qjsm','127.0.0.1',1522907422,'__ci_last_regenerate|i:1522907421;'),('hdgm0bs1j6cntodeb1liit73lp2e14bk','127.0.0.1',1522907424,'__ci_last_regenerate|i:1522907424;'),('k5q31gjk43ua6g0s34i8n6ehe9c414qd','127.0.0.1',1522907610,'__ci_last_regenerate|i:1522907610;'),('0cne832r7on2pa564j7fgk7e1ij9p66i','127.0.0.1',1522907617,'__ci_last_regenerate|i:1522907617;'),('cefgr45p5rp956vum7gvp5tklcq38g5v','127.0.0.1',1522907738,'__ci_last_regenerate|i:1522907738;'),('btueeiq06gb9hf73miiral8oq6dv918h','127.0.0.1',1522908074,'__ci_last_regenerate|i:1522908074;'),('v78icmsfeo8ut33t6f0k9e48j4pks4o3','127.0.0.1',1522908075,'__ci_last_regenerate|i:1522908075;'),('d76qkhluo9850ua64p4v8gc76kaunu5m','127.0.0.1',1522908095,'__ci_last_regenerate|i:1522908095;'),('72p40ilpkccs0ejk01ivuab12jtc14ue','127.0.0.1',1522908152,'__ci_last_regenerate|i:1522908152;'),('m89iie1qhbhd14usd53lvpsjbqhmm69j','127.0.0.1',1522908166,'__ci_last_regenerate|i:1522908166;'),('fkf0csvhk4uk94ep0ugq0u2l9n68m9ue','127.0.0.1',1522908197,'__ci_last_regenerate|i:1522908197;'),('1m6df4204cqnlqjv1qs60u2vtu2hq9gj','127.0.0.1',1522908199,'__ci_last_regenerate|i:1522908199;'),('iv8dkvmrphl5ovk5seu1m8q98jmduclt','127.0.0.1',1522908374,'__ci_last_regenerate|i:1522908374;'),('1bmvujfmd084gjkon2qg7f0rbpot9r8p','127.0.0.1',1522908396,'__ci_last_regenerate|i:1522908396;'),('qnms7o2gtg2eve235jr9knhtu2sm20ah','127.0.0.1',1522908436,'__ci_last_regenerate|i:1522908436;'),('fgtcnfrgo8oe14tfgic0ukevrrlibj1h','127.0.0.1',1522908443,'__ci_last_regenerate|i:1522908443;'),('dk6nonlh7pq063410sm3i9janughde78','127.0.0.1',1522908449,'__ci_last_regenerate|i:1522908449;'),('4vta1cb8hg1kqasbat68ipqb7p11mg2i','127.0.0.1',1522908450,'__ci_last_regenerate|i:1522908450;'),('7ulbmmff3s2ce4noi0vo2t3vs6p2ee60','127.0.0.1',1522908509,'__ci_last_regenerate|i:1522908509;'),('0thjer3p23ejrjg2n8gsfdava52eqkfa','127.0.0.1',1522908570,'__ci_last_regenerate|i:1522908570;'),('63j2g4l0pm3pjp1qur7kv9u4ie3os534','127.0.0.1',1522908598,'__ci_last_regenerate|i:1522908598;'),('jb1h8fjj6bcptqr8dqeupgrtce3a58i4','127.0.0.1',1522908880,'__ci_last_regenerate|i:1522908880;'),('9pqr41v192dncve26ojt4clrsnjonvqu','127.0.0.1',1522908881,'__ci_last_regenerate|i:1522908881;'),('5c95tmdbhq2k7a345aehi7r1snih37hf','127.0.0.1',1522908887,'__ci_last_regenerate|i:1522908887;'),('2eaa9r9bqfoabmg5hriarhilb9bpdqod','127.0.0.1',1522908925,'__ci_last_regenerate|i:1522908925;'),('arcptbf6ihglsvl774gjfi5olgvh3kgm','127.0.0.1',1522908927,'__ci_last_regenerate|i:1522908927;'),('ig9ms0mcv91o4qp2sburc9t9jh84n0to','127.0.0.1',1522908931,'__ci_last_regenerate|i:1522908931;'),('b55t8hpq6qbeb51fq6kgh9q0d34anqnl','127.0.0.1',1522908950,'__ci_last_regenerate|i:1522908950;'),('11ik4tsdokr12r5tdct8d9sncn6brba8','127.0.0.1',1522909044,'__ci_last_regenerate|i:1522909044;'),('n2rp9eealn905e070k4ctl09ervc4o5f','127.0.0.1',1522909051,'__ci_last_regenerate|i:1522909051;'),('ffaa2l2vavp96v7er20g0a3p8l27f6mg','127.0.0.1',1522909080,'__ci_last_regenerate|i:1522909080;'),('f5opqt21jecv0eac8gjo97qaatfgedp2','127.0.0.1',1522909201,'__ci_last_regenerate|i:1522909201;'),('0ejq7e3e8vu3ei50m6ljjsi8j4ii8nru','127.0.0.1',1522909208,'__ci_last_regenerate|i:1522909208;'),('3angrt4dhr06a7e4kj2a9e877e7jji12','127.0.0.1',1522909274,'__ci_last_regenerate|i:1522909274;'),('94krqc1vqr0uf7robng9ge0nneaco7id','127.0.0.1',1522909306,'__ci_last_regenerate|i:1522909306;'),('trhj8hb04l0g9mu8eqdvrhacq5rgknpb','127.0.0.1',1522909327,'__ci_last_regenerate|i:1522909327;'),('32e1t9tet5ndej0ckbma76qsqsik1rga','127.0.0.1',1522909336,'__ci_last_regenerate|i:1522909336;'),('am05vgh5a16qh0vin861nvak2j36t76l','127.0.0.1',1522909364,'__ci_last_regenerate|i:1522909364;'),('6f6r1b6ba42pst9bmispg20o27s7njkv','127.0.0.1',1522909408,'__ci_last_regenerate|i:1522909408;'),('skm1at2ibvl7vptrpd376jtd9sokm21k','127.0.0.1',1522909419,'__ci_last_regenerate|i:1522909419;'),('o1u2i0q1d98htjttrflg46b49k7a8qhd','127.0.0.1',1522918997,'__ci_last_regenerate|i:1522918997;red_url|s:14:\"admin/entities\";'),('0eju96u3i0fb5relg053p2mhri1qcqkj','127.0.0.1',1522920293,'__ci_last_regenerate|i:1522920293;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6349dng755590dboamro7g7n8lt5oap2','127.0.0.1',1522919068,'__ci_last_regenerate|i:1522919068;'),('8d58k39kkjenk2f4e7cct9fcpsua7r0h','127.0.0.1',1522919788,'__ci_last_regenerate|i:1522919788;'),('kaosfp9psnkvbrb1b0nurienlvpp4qlf','127.0.0.1',1522919806,'__ci_last_regenerate|i:1522919806;'),('9dttc06edroj7ergj7ndkhir0bii3c2k','127.0.0.1',1522919836,'__ci_last_regenerate|i:1522919836;'),('g70fah8vrf0j41ah2cf282uhefuhsr93','127.0.0.1',1522919855,'__ci_last_regenerate|i:1522919855;'),('c13ahmer9pve8m4ejt2rc7siomssq4bf','127.0.0.1',1522919855,'__ci_last_regenerate|i:1522919855;'),('a6idi2u0g3abfuvepcjecho6o9cn0ken','127.0.0.1',1522919895,'__ci_last_regenerate|i:1522919895;'),('064s5o3jhjrkqovjhaldue2i1fq8lpsn','127.0.0.1',1522919923,'__ci_last_regenerate|i:1522919923;'),('m2r9pihf5peml0mm09ckjle2g9fvjt2c','127.0.0.1',1522919956,'__ci_last_regenerate|i:1522919956;'),('ennfl1sj2q2l2adbbgs2iue7ndleq6su','127.0.0.1',1522920209,'__ci_last_regenerate|i:1522920209;'),('5neesrp629jfemgbniu374lh5lcnhdt3','127.0.0.1',1522920367,'__ci_last_regenerate|i:1522920293;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1uauebmkvhnoj0oa54gcimclt91lpo88','127.0.0.1',1522920371,'__ci_last_regenerate|i:1522920371;'),('v8n5gi59tk52hhpmtqtakbdh5l20fn5h','127.0.0.1',1522920754,'__ci_last_regenerate|i:1522920754;'),('ms5gtm27etkv3mknpe1sf3pg5v979n2j','127.0.0.1',1522920829,'__ci_last_regenerate|i:1522920829;'),('gt7r30ihe25s15447uv8351hkdb9najq','127.0.0.1',1522920891,'__ci_last_regenerate|i:1522920891;'),('go11b6ko056bn5nfbbqg1f6m56avj7bm','127.0.0.1',1522920920,'__ci_last_regenerate|i:1522920920;'),('e5euvjhhlmf0pbl0llc5u2hpne1frplt','127.0.0.1',1522920951,'__ci_last_regenerate|i:1522920951;'),('87tmipd0pqo7urrk3g5bm6ms1ah1qh99','127.0.0.1',1522920956,'__ci_last_regenerate|i:1522920956;'),('re05aqlm851hck5f1d59trjbr44rhksp','127.0.0.1',1522920966,'__ci_last_regenerate|i:1522920966;'),('jpqn25snhs2jubiqnfd9bg8t8etsiunt','127.0.0.1',1522921517,'__ci_last_regenerate|i:1522921517;'),('aostjnmjji4deu0rt193dgn81c2ge98t','127.0.0.1',1522921575,'__ci_last_regenerate|i:1522921575;'),('vrgcatkvmt80rcsf347oi62rds556bp0','127.0.0.1',1522921586,'__ci_last_regenerate|i:1522921586;'),('65iidel3lr7vo8pnfpt9po48op2g6d6n','127.0.0.1',1522921946,'__ci_last_regenerate|i:1522921946;'),('3iicuf3ssfqp34rjkv5t2bo6fiftrkju','127.0.0.1',1522922014,'__ci_last_regenerate|i:1522922014;'),('j33i5rog2l7uf2589teqkduo9n9n5b09','127.0.0.1',1522922032,'__ci_last_regenerate|i:1522922032;'),('bsuojk992oimcpti21go1hkt3r5dr63k','127.0.0.1',1522922232,'__ci_last_regenerate|i:1522922232;'),('8avt7lbc69l23i3gmu0ostduteg0d56i','127.0.0.1',1522922238,'__ci_last_regenerate|i:1522922238;'),('136kqbqv4d3p3bjv015sr180n6uhg61q','127.0.0.1',1522922374,'__ci_last_regenerate|i:1522922374;'),('7fbun2il7mv1rj0fmnche40sfs9emlgs','127.0.0.1',1522922400,'__ci_last_regenerate|i:1522922400;'),('9dgrur8bggvkcnu600jc0ghb6utcp2gj','127.0.0.1',1522922443,'__ci_last_regenerate|i:1522922443;'),('26cmmetbil18rggaks54q39src0nl7vo','127.0.0.1',1522922450,'__ci_last_regenerate|i:1522922450;'),('3tca6g4k3nspcq5vc78q3pbutbjf8ol9','127.0.0.1',1522922492,'__ci_last_regenerate|i:1522922492;'),('6v4ta7h75ssvj8hi44tm6r969vl0ugap','127.0.0.1',1522922501,'__ci_last_regenerate|i:1522922501;'),('01lfk3pju6i6f2md2kjgmgqb996pp6p8','127.0.0.1',1522922512,'__ci_last_regenerate|i:1522922512;'),('vtfef5q07160pkn0878udnbublate3lk','127.0.0.1',1522922586,'__ci_last_regenerate|i:1522922586;'),('mikdl2o0hqnvlfsc7tccmj2mmerb6rmc','127.0.0.1',1522922603,'__ci_last_regenerate|i:1522922603;'),('527sjfvd5oa0hake7m1qp31gmapcj425','127.0.0.1',1522922622,'__ci_last_regenerate|i:1522922622;'),('dl7u48av9magcdg3tmskk4e64acbr4f6','127.0.0.1',1522922641,'__ci_last_regenerate|i:1522922641;'),('nur5ds4956h3ajuuabvfv4n0qcifnq35','127.0.0.1',1522922685,'__ci_last_regenerate|i:1522922685;'),('9240tioir2jr03hp5cp6u5uds4gfd38v','127.0.0.1',1522922703,'__ci_last_regenerate|i:1522922703;'),('j1066hhiheclvqcr1p05mklfqev95poq','127.0.0.1',1522922785,'__ci_last_regenerate|i:1522922784;'),('87q6epoliutk1dp88to7k1isqj9s96ll','127.0.0.1',1522922805,'__ci_last_regenerate|i:1522922805;'),('pbgefac2vgc0p1151qfkcj7obj0pentp','127.0.0.1',1522922854,'__ci_last_regenerate|i:1522922854;'),('tb5cpfdls8knkic6hd9lrbjttbuktu38','127.0.0.1',1522922858,'__ci_last_regenerate|i:1522922858;'),('703mi0m2qcio196aq1bc63o4bac7cnnf','127.0.0.1',1522922932,'__ci_last_regenerate|i:1522922932;'),('dmgblausp3unk10kpbkh9crc2dh60ke2','127.0.0.1',1522922944,'__ci_last_regenerate|i:1522922944;'),('rkj60f7smfkb5fvpqlab8s4uvrmqoj4h','127.0.0.1',1522922978,'__ci_last_regenerate|i:1522922978;'),('itec9ajgnqp90b4utn7d17l7fqne995r','127.0.0.1',1522922982,'__ci_last_regenerate|i:1522922982;'),('up1te17bjv9sdqa17pji0q778gu1949j','127.0.0.1',1522926658,'__ci_last_regenerate|i:1522926658;'),('3rl0t213chsh4v2v9vqje4v2f4c0mv6b','127.0.0.1',1522926662,'__ci_last_regenerate|i:1522926662;'),('nk0kkqbceschseshhf7ofkhq6hvfenp3','127.0.0.1',1522926671,'__ci_last_regenerate|i:1522926671;'),('fqoj3a4i3c64ob66fqdv8chf7c2rdif8','127.0.0.1',1522926676,'__ci_last_regenerate|i:1522926676;'),('6tqqubggsle68a58r06gs6p3qvbfnuma','127.0.0.1',1522926745,'__ci_last_regenerate|i:1522926745;'),('6nmud47igek5v629o3jo1d6t646p8jd5','127.0.0.1',1522926747,'__ci_last_regenerate|i:1522926747;'),('vc2dkr9ikvdufbsnu2iou46vjrltm5i8','127.0.0.1',1522926757,'__ci_last_regenerate|i:1522926757;'),('utnq8ldsrd5fd1glcfujepjl6tja8uu6','127.0.0.1',1522926761,'__ci_last_regenerate|i:1522926761;'),('95ln1kdhl1lp9htq94n2s65uin8pr30v','127.0.0.1',1522926806,'__ci_last_regenerate|i:1522926806;'),('eo6liokvpl203l3s76i63ijg24k8m9vd','127.0.0.1',1522926816,'__ci_last_regenerate|i:1522926816;'),('8gckll7t2mv4krtuntbklr7m6bl3r8kn','127.0.0.1',1522926828,'__ci_last_regenerate|i:1522926828;'),('m4ebi5qb0lk0vogpt0lhou66bh4399q9','127.0.0.1',1522926837,'__ci_last_regenerate|i:1522926837;'),('rhc6an9lp1medkj1uf3c3dnkahapc1tn','127.0.0.1',1522926861,'__ci_last_regenerate|i:1522926861;'),('u5bs94dlj8p8qjg74s3sk6h48ep37r87','127.0.0.1',1522926878,'__ci_last_regenerate|i:1522926878;'),('kbtaeoertgbvdocp6895um7npgcrgbd7','127.0.0.1',1522926901,'__ci_last_regenerate|i:1522926901;'),('qgts6vm2tsvetd2qrpeasr0g5udkbnpa','127.0.0.1',1522926941,'__ci_last_regenerate|i:1522926941;'),('namqmq3s80nlrv70uj34keddv7s8omv4','127.0.0.1',1522926980,'__ci_last_regenerate|i:1522926980;'),('limq70r81spj0vi907dnpabbrt2e9qp4','127.0.0.1',1522927042,'__ci_last_regenerate|i:1522927042;'),('hchrv0861e6em062pnn38kvrf2unlltv','127.0.0.1',1522927149,'__ci_last_regenerate|i:1522927149;'),('99kaqda2adkhjlom7l1q0vb4e73951po','127.0.0.1',1522927156,'__ci_last_regenerate|i:1522927156;'),('n9j1nl2qh13ogvhbumnog7i54qbm4nm1','127.0.0.1',1522927249,'__ci_last_regenerate|i:1522927249;'),('2pus39a5m5dnc1p97bqkiom6l5p3e0qk','127.0.0.1',1522927266,'__ci_last_regenerate|i:1522927266;'),('okpuptbaktl7tekpcrkm8j86n6hcmlia','127.0.0.1',1522927305,'__ci_last_regenerate|i:1522927305;'),('iiivoc4jjkb04vo5r1pl07l3irqse1js','127.0.0.1',1522927326,'__ci_last_regenerate|i:1522927326;'),('qujvu980h8ot8qevll41fcaaluf77qrf','127.0.0.1',1522927461,'__ci_last_regenerate|i:1522927461;'),('14bbh1rmd9317gfo7eatc73119c16a67','127.0.0.1',1522927534,'__ci_last_regenerate|i:1522927534;'),('f9clqoo4d4eji6dj9d90g55cu1k109qj','127.0.0.1',1522927563,'__ci_last_regenerate|i:1522927563;'),('5kcmph4b5jhk00dvtlgaoubpeu4gdh16','127.0.0.1',1522927580,'__ci_last_regenerate|i:1522927580;'),('ia01rjug4pb861q2dp1moc4gq570c8hp','127.0.0.1',1522927591,'__ci_last_regenerate|i:1522927591;'),('khdn6gmfo1dvs2jkfr7udog568308iqa','127.0.0.1',1522927614,'__ci_last_regenerate|i:1522927614;'),('iovads1976fcnai3ohrj3n2rmo50oknk','127.0.0.1',1522927647,'__ci_last_regenerate|i:1522927647;'),('80gd74g52r7jdsd7gjcuu6nsb0g6ujfa','127.0.0.1',1522927686,'__ci_last_regenerate|i:1522927685;'),('a1eltqpva356h3mmbshfgfs8hh4613sl','127.0.0.1',1522927694,'__ci_last_regenerate|i:1522927694;'),('dhqmti5pelahnl0cuu8q6635v5vmq1p3','127.0.0.1',1522927769,'__ci_last_regenerate|i:1522927769;'),('rtgibr6f8p0v6sn76eeh37nri39jkhei','127.0.0.1',1522927840,'__ci_last_regenerate|i:1522927840;'),('hur0o84gt993dsrs92ib2s0t84f98kj5','127.0.0.1',1522927906,'__ci_last_regenerate|i:1522927906;'),('7ubdukaqng9b2o1pht8manvj9ld5nnro','127.0.0.1',1522927911,'__ci_last_regenerate|i:1522927911;'),('i36ql9kcblgesepdidp22o7vuusagujq','127.0.0.1',1522927992,'__ci_last_regenerate|i:1522927992;'),('t7fqfhh50rn358kp6gfuf5ud6fmklsd5','127.0.0.1',1522927999,'__ci_last_regenerate|i:1522927998;'),('lm39ddob739hifnvungnug0v06p7aif3','127.0.0.1',1522928063,'__ci_last_regenerate|i:1522928063;'),('s86r6gkebdlp63j8c0mu0cngci4l9ev5','127.0.0.1',1522928085,'__ci_last_regenerate|i:1522928085;'),('vv8mbv9ioe95478en0nu2vhmv2dqcslh','127.0.0.1',1522928101,'__ci_last_regenerate|i:1522928101;'),('pjbnv0rih0553dr7n8p360c85seaafh9','127.0.0.1',1522928223,'__ci_last_regenerate|i:1522928223;'),('0dcs9oa1dmpckdaunadcs3otgff1g0o6','127.0.0.1',1522928243,'__ci_last_regenerate|i:1522928243;'),('ndcqev7uah5rmvddto94hff5qqi645ic','127.0.0.1',1522928274,'__ci_last_regenerate|i:1522928274;'),('ei0enkht0vqnnkae1efjm3p42agvliko','127.0.0.1',1522928283,'__ci_last_regenerate|i:1522928283;'),('vsauhposr0dks774q8i7spnsu0cpu8ke','127.0.0.1',1522928441,'__ci_last_regenerate|i:1522928441;'),('9iqr5omildguom2ljegsba2l6q43jofo','127.0.0.1',1522932806,'__ci_last_regenerate|i:1522932805;'),('lcqf7lfe1v7m5caap18sh54mg5oohbk5','127.0.0.1',1522932862,'__ci_last_regenerate|i:1522932862;'),('keo6knjkakuegup867ugil7b698pci0b','127.0.0.1',1522934233,'__ci_last_regenerate|i:1522934233;'),('g7u4u90dlg9s87i0ikpaqka2gbjrhrf9','127.0.0.1',1522934280,'__ci_last_regenerate|i:1522934280;'),('kqkdb7r9071a1rka0d6o4kpq1s13c672','127.0.0.1',1522934310,'__ci_last_regenerate|i:1522934310;'),('6kem9hspo1m8b5ovlglsfvp6lddoc6lu','127.0.0.1',1522934316,'__ci_last_regenerate|i:1522934316;'),('kn0nucj7s70kr5ie0s6lohlq1lm3s30e','127.0.0.1',1522934319,'__ci_last_regenerate|i:1522934319;'),('7ttf1glcj2rg42ren4hnrs5b5nc0scub','127.0.0.1',1522934328,'__ci_last_regenerate|i:1522934328;'),('souhpmj9gjg5bfc7tpb56qvv21agar7d','127.0.0.1',1522934392,'__ci_last_regenerate|i:1522934392;'),('0nduu9hn0s7sds2713o3s0qls6tu3rlh','127.0.0.1',1522934404,'__ci_last_regenerate|i:1522934404;'),('vtosa1ll8r1mmdcmat5o338pnqm919qc','127.0.0.1',1522934535,'__ci_last_regenerate|i:1522934535;'),('5m8e5hevtprgdk035s3qhnbj3020r8e7','127.0.0.1',1522934565,'__ci_last_regenerate|i:1522934565;'),('2bpp3t4nab58j9th3b5cul4fh63gngms','127.0.0.1',1522934586,'__ci_last_regenerate|i:1522934586;'),('0t59fc3hvc2pj2age6atbfub3cbkr2ss','127.0.0.1',1522934632,'__ci_last_regenerate|i:1522934632;'),('mlij24duvheevlvo3frnifi38n4mhhtt','127.0.0.1',1522935063,'__ci_last_regenerate|i:1522935063;'),('0dtt3cjjmnna10ik57qkv236ciu736lo','127.0.0.1',1522935103,'__ci_last_regenerate|i:1522935103;'),('ept3e26fe7bb4svhe0pjr8lsd6hgno64','127.0.0.1',1522935136,'__ci_last_regenerate|i:1522935136;'),('6vaucvejam3hqueh5fq30kokg4kcjtk7','127.0.0.1',1522935156,'__ci_last_regenerate|i:1522935156;'),('l5aucb0e20gknkk2t9duk62adt1j5mat','127.0.0.1',1522935162,'__ci_last_regenerate|i:1522935162;'),('jhddaf156mdfummoe394veb4hv71jcjq','127.0.0.1',1522935289,'__ci_last_regenerate|i:1522935289;'),('e62ft33g5metppu0t5sgb2dgu3jtsjcn','127.0.0.1',1522935368,'__ci_last_regenerate|i:1522935368;'),('sik2r2sogq2rqnrc5keamriqv0je1efc','127.0.0.1',1522935422,'__ci_last_regenerate|i:1522935422;'),('2f6brf7v7kb90i8fktv2kngc5bq41mp5','127.0.0.1',1522935505,'__ci_last_regenerate|i:1522935505;'),('t0ornbsnjv0cno37bhl2ogldkv300gsk','127.0.0.1',1522935550,'__ci_last_regenerate|i:1522935550;'),('qdn1hdbuscm33lgnkduae9qg5vr7nmuk','127.0.0.1',1522935561,'__ci_last_regenerate|i:1522935561;'),('td6amg7ca2b4odv8duafcs9ivopchtfb','127.0.0.1',1522935573,'__ci_last_regenerate|i:1522935573;'),('plm6pkd87ikmte8vqv2tnbc1fkqvhft3','127.0.0.1',1522935595,'__ci_last_regenerate|i:1522935595;'),('41k1slkeib69ltsf9bo3cktva8icgd1j','127.0.0.1',1523012982,'__ci_last_regenerate|i:1523012982;'),('9f98aiuac3g9ugqahnhcpascj7gjjn6b','127.0.0.1',1523084823,'__ci_last_regenerate|i:1523084823;'),('f3qogf3t7v0j4e8bugrdgu9eos10iml6','127.0.0.1',1523084823,'__ci_last_regenerate|i:1523084823;'),('h7pdcj4nn9gkgsgqsrs3cp6keeh73978','127.0.0.1',1523783970,'__ci_last_regenerate|i:1523783970;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('iecqkland4bomsdf6ffo9mbt0b9i3c0h','127.0.0.1',1523781391,'__ci_last_regenerate|i:1523781391;'),('7adubrk3f8cpb169ekc4knl94af9g013','127.0.0.1',1523784022,'__ci_last_regenerate|i:1523784022;'),('mq56ocmdbn3qipoet77ftcp3s6rn0r6f','127.0.0.1',1524034818,'__ci_last_regenerate|i:1524034664;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;');
/*!40000 ALTER TABLE `tblsessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaff`
--

DROP TABLE IF EXISTS `tblstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext,
  `linkedin` mediumtext,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(300) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(300) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `email_signature` text,
  PRIMARY KEY (`staffid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaff`
--

LOCK TABLES `tblstaff` WRITE;
/*!40000 ALTER TABLE `tblstaff` DISABLE KEYS */;
INSERT INTO `tblstaff` VALUES (1,'ahmet.gudenoglu@gmail.com','Ahmet','Gudenoglu','','','','','$2a$08$Q6MsM9fhx4fJuwX5SvTpbOkyR2i1EFz4P6gC4HS5je3XN.0pry0TG','2018-03-19 12:03:58','8347592_orig.png','127.0.0.1','2018-04-03 10:08:00',NULL,NULL,NULL,1,0,1,'','',NULL,0,0.00,'');
/*!40000 ALTER TABLE `tblstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaffdepartments`
--

DROP TABLE IF EXISTS `tblstaffdepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstaffdepartments` (
  `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL,
  PRIMARY KEY (`staffdepartmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaffdepartments`
--

LOCK TABLES `tblstaffdepartments` WRITE;
/*!40000 ALTER TABLE `tblstaffdepartments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaffdepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstaffpermissions`
--

DROP TABLE IF EXISTS `tblstaffpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstaffpermissions` (
  `staffpermid` int(11) NOT NULL AUTO_INCREMENT,
  `permissionid` int(11) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_view_own` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `staffid` int(11) NOT NULL,
  PRIMARY KEY (`staffpermid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstaffpermissions`
--

LOCK TABLES `tblstaffpermissions` WRITE;
/*!40000 ALTER TABLE `tblstaffpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstaffpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstafftaskassignees`
--

DROP TABLE IF EXISTS `tblstafftaskassignees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstafftaskassignees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `taskid` (`taskid`),
  KEY `staffid` (`staffid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstafftaskassignees`
--

LOCK TABLES `tblstafftaskassignees` WRITE;
/*!40000 ALTER TABLE `tblstafftaskassignees` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstafftaskassignees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstafftaskcomments`
--

DROP TABLE IF EXISTS `tblstafftaskcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstafftaskcomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstafftaskcomments`
--

LOCK TABLES `tblstafftaskcomments` WRITE;
/*!40000 ALTER TABLE `tblstafftaskcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstafftaskcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstafftasks`
--

DROP TABLE IF EXISTS `tblstafftasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstafftasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext,
  `description` text,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT '0',
  `recurring_ends_on` date DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `billable` tinyint(1) NOT NULL DEFAULT '0',
  `billed` tinyint(1) NOT NULL DEFAULT '0',
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  `milestone` int(11) DEFAULT '0',
  `kanban_order` int(11) NOT NULL DEFAULT '0',
  `milestone_order` int(11) NOT NULL DEFAULT '0',
  `visible_to_client` tinyint(1) NOT NULL DEFAULT '0',
  `deadline_notified` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `milestone` (`milestone`),
  KEY `kanban_order` (`kanban_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstafftasks`
--

LOCK TABLES `tblstafftasks` WRITE;
/*!40000 ALTER TABLE `tblstafftasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstafftasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblstafftasksfollowers`
--

DROP TABLE IF EXISTS `tblstafftasksfollowers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblstafftasksfollowers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblstafftasksfollowers`
--

LOCK TABLES `tblstafftasksfollowers` WRITE;
/*!40000 ALTER TABLE `tblstafftasksfollowers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblstafftasksfollowers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsurveyresultsets`
--

DROP TABLE IF EXISTS `tblsurveyresultsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurveyresultsets` (
  `resultsetid` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`resultsetid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsurveyresultsets`
--

LOCK TABLES `tblsurveyresultsets` WRITE;
/*!40000 ALTER TABLE `tblsurveyresultsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsurveyresultsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsurveys`
--

DROP TABLE IF EXISTS `tblsurveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurveys` (
  `surveyid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` mediumtext NOT NULL,
  `slug` mediumtext NOT NULL,
  `description` text NOT NULL,
  `viewdescription` text,
  `datecreated` datetime NOT NULL,
  `redirect_url` varchar(100) DEFAULT NULL,
  `send` tinyint(1) NOT NULL DEFAULT '0',
  `onlyforloggedin` int(11) DEFAULT '0',
  `fromname` varchar(100) DEFAULT NULL,
  `iprestrict` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(32) NOT NULL,
  PRIMARY KEY (`surveyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsurveys`
--

LOCK TABLES `tblsurveys` WRITE;
/*!40000 ALTER TABLE `tblsurveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsurveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsurveysemailsendcron`
--

DROP TABLE IF EXISTS `tblsurveysemailsendcron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurveysemailsendcron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `emailid` int(11) DEFAULT NULL,
  `listid` varchar(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsurveysemailsendcron`
--

LOCK TABLES `tblsurveysemailsendcron` WRITE;
/*!40000 ALTER TABLE `tblsurveysemailsendcron` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsurveysemailsendcron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsurveysendlog`
--

DROP TABLE IF EXISTS `tblsurveysendlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsurveysendlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surveyid` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `iscronfinished` int(11) NOT NULL DEFAULT '0',
  `send_to_mail_lists` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsurveysendlog`
--

LOCK TABLES `tblsurveysendlog` WRITE;
/*!40000 ALTER TABLE `tblsurveysendlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsurveysendlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltags`
--

DROP TABLE IF EXISTS `tbltags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltags`
--

LOCK TABLES `tbltags` WRITE;
/*!40000 ALTER TABLE `tbltags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltags_in`
--

DROP TABLE IF EXISTS `tbltags_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltags_in` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT '0',
  KEY `rel_id` (`rel_id`),
  KEY `rel_type` (`rel_type`),
  KEY `tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltags_in`
--

LOCK TABLES `tbltags_in` WRITE;
/*!40000 ALTER TABLE `tbltags_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltags_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltaskchecklists`
--

DROP TABLE IF EXISTS `tbltaskchecklists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltaskchecklists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskid` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `finished` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT '0',
  `list_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltaskchecklists`
--

LOCK TABLES `tbltaskchecklists` WRITE;
/*!40000 ALTER TABLE `tbltaskchecklists` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaskchecklists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltaskstimers`
--

DROP TABLE IF EXISTS `tbltaskstimers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltaskstimers`
--

LOCK TABLES `tbltaskstimers` WRITE;
/*!40000 ALTER TABLE `tbltaskstimers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaskstimers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltaxes`
--

DROP TABLE IF EXISTS `tbltaxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltaxes`
--

LOCK TABLES `tbltaxes` WRITE;
/*!40000 ALTER TABLE `tbltaxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltaxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketattachments`
--

DROP TABLE IF EXISTS `tblticketattachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketattachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` mediumtext NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketattachments`
--

LOCK TABLES `tblticketattachments` WRITE;
/*!40000 ALTER TABLE `tblticketattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketattachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketpipelog`
--

DROP TABLE IF EXISTS `tblticketpipelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketpipelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `email_to` varchar(500) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(300) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketpipelog`
--

LOCK TABLES `tblticketpipelog` WRITE;
/*!40000 ALTER TABLE `tblticketpipelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketpipelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketreplies`
--

DROP TABLE IF EXISTS `tblticketreplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketreplies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `email` text,
  `date` datetime NOT NULL,
  `message` text,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketreplies`
--

LOCK TABLES `tblticketreplies` WRITE;
/*!40000 ALTER TABLE `tblticketreplies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketreplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltickets`
--

DROP TABLE IF EXISTS `tbltickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL AUTO_INCREMENT,
  `adminreplying` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT '0',
  `email` text,
  `name` text,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message` text,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT '0',
  `adminread` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(40) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ticketid`),
  KEY `service` (`service`),
  KEY `department` (`department`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `priority` (`priority`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltickets`
--

LOCK TABLES `tbltickets` WRITE;
/*!40000 ALTER TABLE `tbltickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketsspamcontrol`
--

DROP TABLE IF EXISTS `tblticketsspamcontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketsspamcontrol` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketsspamcontrol`
--

LOCK TABLES `tblticketsspamcontrol` WRITE;
/*!40000 ALTER TABLE `tblticketsspamcontrol` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblticketsspamcontrol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblticketstatus`
--

DROP TABLE IF EXISTS `tblticketstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblticketstatus` (
  `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT '0',
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatusid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblticketstatus`
--

LOCK TABLES `tblticketstatus` WRITE;
/*!40000 ALTER TABLE `tblticketstatus` DISABLE KEYS */;
INSERT INTO `tblticketstatus` VALUES (3,'Answered',1,'#0000ff',3),(4,'On Hold',1,'#c0c0c0',4),(2,'In progress',1,'#84c529',2),(5,'Closed',1,'#03a9f4',5),(1,'Open',1,'#ff2d42',1);
/*!40000 ALTER TABLE `tblticketstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltodoitems`
--

DROP TABLE IF EXISTS `tbltodoitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbltodoitems` (
  `todoid` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`todoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltodoitems`
--

LOCK TABLES `tbltodoitems` WRITE;
/*!40000 ALTER TABLE `tbltodoitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbltodoitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluserautologin`
--

DROP TABLE IF EXISTS `tbluserautologin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbluserautologin` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `staff` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluserautologin`
--

LOCK TABLES `tbluserautologin` WRITE;
/*!40000 ALTER TABLE `tbluserautologin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluserautologin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblviewstracking`
--

DROP TABLE IF EXISTS `tblviewstracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblviewstracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblviewstracking`
--

LOCK TABLES `tblviewstracking` WRITE;
/*!40000 ALTER TABLE `tblviewstracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblviewstracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblwebtolead`
--

DROP TABLE IF EXISTS `tblwebtolead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblwebtolead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT '1',
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext,
  `responsible` int(11) NOT NULL DEFAULT '0',
  `name` varchar(400) NOT NULL,
  `form_data` mediumtext,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `success_submit_msg` text,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT '1',
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT '0',
  `dateadded` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblwebtolead`
--

LOCK TABLES `tblwebtolead` WRITE;
/*!40000 ALTER TABLE `tblwebtolead` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblwebtolead` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-18  9:16:06
