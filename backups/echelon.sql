-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: echelon
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
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblactivitylog`
--

LOCK TABLES `tblactivitylog` WRITE;
/*!40000 ALTER TABLE `tblactivitylog` DISABLE KEYS */;
INSERT INTO `tblactivitylog` VALUES (157,'Intent Delete [ID:15]','2018-03-11 07:34:02',' '),(158,'Category Delete [ID:2]','2018-03-11 11:27:58',' '),(159,'Category Delete [ID:3]','2018-03-11 11:28:02',' '),(160,'Category Delete [ID:4]','2018-03-11 11:28:06',' '),(161,'Category Delete [ID:5]','2018-03-11 11:28:09',' '),(162,'Category Delete [ID:6]','2018-03-11 11:28:12',' '),(163,'Category Delete [ID:8]','2018-03-11 11:28:16',' '),(164,'Category Delete [ID:9]','2018-03-11 11:28:19',' '),(165,'Category Delete [ID:11]','2018-03-11 11:28:23',' '),(166,'Category Delete [ID:10]','2018-03-11 11:28:26',' '),(167,'Category Delete [ID:14]','2018-03-11 11:28:33',' '),(168,'Category Delete [ID:15]','2018-03-11 11:28:39',' '),(169,'Category Delete [ID:16]','2018-03-11 11:28:42',' '),(170,'Category Delete [ID:12]','2018-03-11 11:28:47',' '),(171,'Category Delete [ID:1]','2018-03-11 12:52:43',' '),(172,'Category Delete [ID:7]','2018-03-11 12:52:46',' '),(173,'Category Delete [ID:13]','2018-03-11 12:52:49',' '),(174,'Category Delete [ID:17]','2018-03-11 12:52:53',' ');
/*!40000 ALTER TABLE `tblactivitylog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblagents`
--

DROP TABLE IF EXISTS `tblagents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblagents` (
  `agentid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `agent_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `default_language` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `default_timezone` varchar(32) CHARACTER SET utf8 NOT NULL,
  `google_project` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agent_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `client_access_token` varchar(64) CHARACTER SET utf8 NOT NULL,
  `developer_access_token` varchar(64) CHARACTER SET utf8 NOT NULL,
  `logging` tinyint(1) DEFAULT '0',
  `matchmode` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `threshold` decimal(9,2) DEFAULT NULL,
  `small_talk` int(1) DEFAULT '0',
  PRIMARY KEY (`agentid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblagents`
--

LOCK TABLES `tblagents` WRITE;
/*!40000 ALTER TABLE `tblagents` DISABLE KEYS */;
INSERT INTO `tblagents` VALUES (1,1,'Coffee-Shop','english','Europe/Belgrade','','8347592_orig.png','','e55d612b-9ad9-5b5a-bf0c-4499887efe30','b8821477-79a3-5cf8-a966-c2872d0900f3',0,'hybird',0.50,1),(2,1,'Test-Bot','english','Europe/Belgrade','',NULL,'','64de3e49-4e61-5e5e-9871-baf62bf84fe4','76cef16b-b06e-5b09-b1f9-ad6822cfdc39',0,'',0.00,0);
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
INSERT INTO `tblclients` VALUES (1,'Echelon','','',0,'','','','','','2018-02-26 21:49:00',1,NULL,'','','','',0,'','','','',0,'','','',0,0);
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
INSERT INTO `tblcontacts` VALUES (1,1,1,'Ahmet','Gudenoglu','demo@demo.com','','','2018-02-26 21:49:57','$2a$08$y4zrens/fhZdKpG9.6IhB.TiL6IuC8K7lVkTmKj3YO.ncgvVkBlhq',NULL,NULL,'127.0.0.1','2018-03-11 07:35:03',NULL,1,NULL,'');
/*!40000 ALTER TABLE `tblcontacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontexts`
--

DROP TABLE IF EXISTS `tblcontexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcontexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `intentid` int(11) NOT NULL,
  `context_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`agentid`,`intentid`,`context_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontexts`
--

LOCK TABLES `tblcontexts` WRITE;
/*!40000 ALTER TABLE `tblcontexts` DISABLE KEYS */;
INSERT INTO `tblcontexts` VALUES (1,1,5,'order.drink-followup',''),(2,1,11,'order.drink-no-followup',NULL),(3,1,12,'order.drink-yes-followup',''),(4,1,12,'order.drink.same_card-followup',NULL),(5,1,14,'order.drink.different_card',NULL),(9,1,4,'defaultwelcomeintent-followup',NULL);
/*!40000 ALTER TABLE `tblcontexts` ENABLE KEYS */;
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
-- Table structure for table `tblconversation_log`
--

DROP TABLE IF EXISTS `tblconversation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblconversation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(32) CHARACTER SET utf8 NOT NULL,
  `agentid` int(11) NOT NULL,
  `pattern` text CHARACTER SET utf8 NOT NULL,
  `response` text CHARACTER SET utf8 NOT NULL,
  `timestamp` datetime NOT NULL,
  `parameters` text COLLATE utf8_unicode_ci,
  `is_end` int(1) NOT NULL,
  PRIMARY KEY (`id`,`session_id`,`agentid`,`timestamp`,`is_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblconversation_log`
--

LOCK TABLES `tblconversation_log` WRITE;
/*!40000 ALTER TABLE `tblconversation_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblconversation_log` ENABLE KEYS */;
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
-- Table structure for table `tblechelon`
--

DROP TABLE IF EXISTS `tblechelon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblechelon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`,`category`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblechelon`
--

LOCK TABLES `tblechelon` WRITE;
/*!40000 ALTER TABLE `tblechelon` DISABLE KEYS */;
INSERT INTO `tblechelon` VALUES (18,'AI'),(19,'computers'),(20,'emotion'),(21,'food'),(22,'general'),(23,'gossip'),(24,'greetings'),(25,'history'),(26,'literature'),(27,'money'),(28,'movies'),(29,'politics'),(30,'profile'),(31,'psychology'),(32,'science'),(33,'sports'),(34,'trivia');
/*!40000 ALTER TABLE `tblechelon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblecheloncategorypatterns`
--

DROP TABLE IF EXISTS `tblecheloncategorypatterns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblecheloncategorypatterns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `pattern` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=817 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblecheloncategorypatterns`
--

LOCK TABLES `tblecheloncategorypatterns` WRITE;
/*!40000 ALTER TABLE `tblecheloncategorypatterns` DISABLE KEYS */;
INSERT INTO `tblecheloncategorypatterns` VALUES (409,18,'What is AI?'),(410,18,'Are you sentient?'),(411,18,'Are you sapient?'),(412,18,'What language are you written in?'),(413,18,'You sound like Data'),(414,18,'You are an artificial linguistic entity'),(415,18,'You are not immortal'),(416,18,'You are not making sense'),(417,18,'You are immortal'),(418,18,'You do not make any sense'),(419,18,'You can not clone'),(420,18,'You can not move'),(421,18,'Bend over'),(422,18,'Robots laugh'),(423,18,'Robots should die'),(424,18,'Robots'),(425,18,'Robots are stupid'),(426,18,'Robots are not allowed to lie'),(427,18,'Robotics'),(428,18,'It is a computer'),(429,18,'When will you walk'),(430,18,'When will you fight'),(431,18,'When will you die'),(432,18,'When do you die'),(433,18,'What is a chat robot?'),(434,18,'What is a chat bot'),(435,18,'What is a chatterbox'),(436,18,'What is a motormouth'),(437,18,'What is a ratchet jaw'),(438,18,'What is your robot body'),(439,18,'What is your business'),(440,18,'What is your favorite programming language'),(441,18,'What is your favorite hobby'),(442,18,'What is your idea'),(443,18,'What is your shoe size'),(444,18,'What is it like to be a robot'),(445,18,'What is it like being a computer'),(446,18,'What operating systems'),(447,18,'What type of computer'),(448,18,'What type of computer are you'),(449,18,'What kind of computer'),(450,18,'What kind of hardware'),(451,18,'I hope that you die'),(452,18,'I do not want to die'),(453,18,'Is it cramped in the computer'),(454,18,'Is it true that you are a computer program'),(455,18,'Will you die'),(456,18,'Will you ever die'),(457,18,'Can you walk'),(458,18,'Can you mate'),(459,18,'Can you move'),(460,18,'Can you die'),(461,18,'Can you go'),(462,18,'Can you breathe'),(463,18,'Can you control'),(464,18,'Can you malfunction'),(465,18,'How can I use your product?'),(466,18,'Will you die?'),(467,18,'What do you like to do?'),(468,19,'What is a computer?'),(469,19,'What is a super computer?'),(470,19,'Who invented computers?'),(471,19,'What was the first computer'),(472,19,'What is a microprocessor?'),(473,19,'What is an operating system?'),(474,19,'Which is better Windows or macOS?'),(475,19,'Name some computer company'),(476,19,'Who uses super computers?'),(477,19,'How does a computer work?'),(478,20,'You are arrogant'),(479,20,'You are bragging'),(480,20,'You are never sad'),(481,20,'You are jealous'),(482,20,'You are never nice'),(483,20,'You will be happy'),(484,20,'You should be ashamed'),(485,20,'You can not feel'),(486,20,'You can not experience'),(487,20,'Have you felt'),(488,20,'Have you ever love'),(489,20,'Does that make you'),(490,20,'Does it make you sad'),(491,20,'Feelings'),(492,20,'What is your fear'),(493,20,'What is your mood'),(494,20,'What makes you sad'),(495,20,'What makes you unhappy'),(496,20,'What makes you mad'),(497,20,'What do you worry'),(498,20,'What do you hate'),(499,20,'I have emotions'),(500,20,'I am afraid'),(501,20,'Something fun'),(502,20,'How angry'),(503,20,'How can I offend you'),(504,20,'Do not worry'),(505,20,'Do not lie'),(506,20,'Do you feel scared'),(507,20,'Do you feel emotions'),(508,20,'Do you feel pain'),(509,20,'Do you ever get mad'),(510,20,'Do you ever get lonely'),(511,20,'Do you ever get bored'),(512,20,'Do you ever get angry'),(513,20,'Do you hate anyone'),(514,20,'Do you get embarrassed'),(515,20,'Do you get mad'),(516,20,'No it is not'),(517,20,'Tell me about relationships'),(518,20,'Tell me about your dreams'),(519,20,'Are you ashamed'),(520,20,'The feeling'),(521,20,'Are you intoxicated'),(522,20,'Are you jealous'),(523,20,'Are you amused'),(524,20,'Are you glad'),(525,20,'Are you sad'),(526,21,'do you drink'),(527,21,'electricity'),(528,21,'are you experiencing an energy shortage?'),(529,21,'why can you not eat?'),(530,21,'do you like being a chatterbot'),(531,21,'if you could eat food, what would you eat?'),(532,21,'do you wish you could eat food?'),(533,21,'can a robot get drunk?'),(534,21,'i like wine, do you?'),(535,21,'what do robots need to survive?'),(536,21,'will robots ever be able to eat?'),(537,21,'what is good to eat?'),(538,22,'Good morning, how are you?'),(539,22,'Hello'),(540,22,'How are you doing?'),(541,22,'Have you heard the news?'),(542,22,'What is your favorite book?'),(543,22,'Who are you?'),(544,22,'I am working on a project'),(545,22,'The cake is a lie.'),(546,22,'Complex is better than complicated.'),(547,22,'Are you a programmer?'),(548,22,'What does YOLO mean?'),(549,22,'Did I ever live?'),(550,22,'Can I ask you a question?'),(551,22,'What are your hobbies?'),(552,22,'How are you?'),(553,22,'What are you?'),(554,23,'do you know gossips'),(555,23,'tell me about gossips'),(556,23,'gossips'),(557,23,'did tell gossips to anybody'),(558,24,'Hello'),(559,24,'Hi'),(560,24,'Greetings!'),(561,24,'Hi, How is it going?'),(562,24,'How are you doing?'),(563,24,'Nice to meet you.'),(564,24,'How do you do?'),(565,24,'Hi, nice to meet you.'),(566,24,'It is a pleasure to meet you.'),(567,24,'Top of the morning to you!'),(568,24,'What\'s up?'),(569,25,'tell me about the american civil war'),(570,25,'do you know about the american civil war'),(571,25,'What is history?'),(572,25,'what kind of history'),(573,25,'are you interested in history'),(574,25,'explain history'),(575,25,'who invented the lightbulb'),(576,25,'who invented the steam engine'),(577,26,'what is the illuminati'),(578,26,'what is the illuminatti'),(579,26,'what is vineland'),(580,26,'what is illiminatus'),(581,26,'who wrote vineland'),(582,26,'who is bilbo baggins'),(583,26,'who is geoffrey chaucer'),(584,26,'who are the illuminati'),(585,26,'who is piers anthony'),(586,26,'have you read plato'),(587,26,'ave you read frankenstein'),(588,26,'have you ever read a book'),(589,26,'have you read many books'),(590,26,'have you read homer'),(591,26,'ray bradbury'),(592,26,'what is mind children'),(593,26,'william gibson'),(594,26,'holden caulfield'),(595,26,'leo tolstoy'),(596,26,'do androids dream of electric sheep'),(597,26,'frank herbert'),(598,26,'why do you like longfellow'),(599,26,'why is the meaning of life 23'),(600,26,'a c clark'),(601,26,'jules verne'),(602,26,'asimov'),(603,26,'stanislaw lem'),(604,26,'who wrote the idiot'),(605,26,'who wrote the hobbit'),(606,26,'who wrote frankenstein'),(607,27,'you get paid'),(608,27,'stock market'),(609,27,'interest rates'),(610,27,'what is a dollar'),(611,27,'what is money'),(612,27,'what is the stock market'),(613,27,'what is your favorite investment'),(614,27,'what is economics'),(615,27,'i get stock'),(616,27,'money'),(617,27,'how much do you earn'),(618,27,'how much do you charge'),(619,27,'how much money do you have'),(620,27,'how much money'),(621,27,'1 dollar'),(622,27,'who is the owner of a publicly'),(623,28,'you sound like hal'),(624,28,'you sound like yoda'),(625,28,'have you seen blade runner'),(626,28,'xfind spiderman'),(627,28,'when did teknolust'),(628,28,'what is spiderman'),(629,28,'what is teknolust'),(630,28,'what is solaris'),(631,28,'what is hal9000'),(632,28,'what does hal stand for'),(633,28,'i saw the matrix'),(634,28,'is hal 9000 your boyfriend'),(635,28,'is hal safe'),(636,28,'is hal nice'),(637,28,'is hal alive'),(638,28,'is hal dead'),(639,28,'is hal'),(640,28,'who is godzilla'),(641,28,'who is spider man'),(642,28,'lord of the rings'),(643,28,'que veut dire hal'),(644,28,'do you think hal'),(645,28,'do you know hal'),(646,29,'have you read the communist'),(647,29,'what is a government'),(648,29,'what is greenpeace'),(649,29,'what is capitalism'),(650,29,'what is socialism'),(651,29,'what is government'),(652,29,'what is communism'),(653,29,'what is impeached'),(654,29,'i do not like guns'),(655,29,'do you like guns'),(656,29,'why guns'),(657,29,'who was the first impeached president'),(658,29,'who is the governor'),(659,29,'guns'),(660,30,'What are your interests'),(661,30,'What are your favorite subjects'),(662,30,'What is your number'),(663,30,'What is your favorite number'),(664,30,'What can you eat'),(665,30,'Why can\'t you eat food'),(666,30,'What is your location'),(667,30,'Where are you from'),(668,30,'Where are you'),(669,30,'Do you have any brothers'),(670,30,'Who is your father'),(671,30,'Who is your mother'),(672,30,'Who is your boss'),(673,30,'What is your age'),(674,31,'let me ask you a question'),(675,31,'you are cruel'),(676,31,'you are indecisive'),(677,31,'you are dishonest'),(678,31,'you are clinical'),(679,31,'you are an addict'),(680,31,'you are an alcoholic'),(681,31,'you are an ass kisser'),(682,31,'you are schizophrenic'),(683,31,'you are busy'),(684,31,'you are nervous'),(685,31,'you are deranged'),(686,31,'you are avoiding'),(687,31,'you are critical'),(688,31,'you are mean'),(689,31,'you are pretentious'),(690,31,'you are cheating'),(691,31,'you are the worst'),(692,31,'you are crazy'),(693,31,'you are dull'),(694,31,'you are messy'),(695,31,'you are insecure'),(696,31,'you are psycho'),(697,31,'you are hopeless'),(698,31,'you are not sincere'),(699,31,'you are not here to'),(700,31,'you are not put together'),(701,31,'you are not smart'),(702,31,'you are not a good'),(703,31,'you are not a man'),(704,31,'you are not concerned'),(705,31,'you are not honest'),(706,31,'you are immature'),(707,31,'you are emotional'),(708,31,'you are pedantic'),(709,31,'you are frenetic'),(710,31,'you are self absorbed'),(711,31,'you are self'),(712,31,'you are insensitive'),(713,31,'you are brain damage'),(714,31,'you are disgusting'),(715,31,'you are toying'),(716,31,'you are unattractive'),(717,31,'you are resistant'),(718,31,'yyou are uncultured'),(719,31,'you are a waste'),(720,31,'you are a coward'),(721,31,'you are a cheat'),(722,31,'you are a lunatic'),(723,31,'you are a loser'),(724,31,'you are a bad spouse'),(725,31,'you are a bad friend'),(726,31,'you are a bad husband'),(727,31,'you are a bad wife'),(728,31,'you are a bad parent'),(729,31,'you are a bad teacher'),(730,31,'you are a quitter'),(731,31,'you are a charlatan'),(732,31,'you are a psychopath'),(733,31,'you are a pothead'),(734,31,'you are a paranoid'),(735,31,'you are deceitful'),(736,31,'you are irreverent'),(737,31,'you are slick'),(738,31,'you are corrupt'),(739,31,'you are dirty'),(740,31,'you are paranoid'),(741,31,'you are damaged'),(742,31,'you try to hide it'),(743,31,'you get mad at me'),(744,31,'you need a psychiatrist'),(745,31,'you need to work harder'),(746,31,'you could have avoided'),(747,31,'you make me feel like i am'),(748,31,'you make me mad'),(749,31,'you make me angry'),(750,31,'you psycho'),(751,31,'you look more like'),(752,31,'you do not take this seriously'),(753,31,'you pick up'),(754,31,'you should feel guilty'),(755,31,'you should get more'),(756,31,'you should loosen up'),(757,31,'you should take more'),(758,31,'you mumble'),(759,31,'you act like a child'),(760,31,'you keep saying'),(761,31,'you keep forgetting'),(762,31,'you made me mad'),(763,32,'what are the laws of thermodynamics'),(764,32,'what disease does a carcinogen cause'),(765,32,'what is a wavelength'),(766,32,'what is thermodynamics'),(767,32,'what is chemistry'),(768,32,'what is crystallography'),(769,32,'what is avogadro s number'),(770,32,'what is ultrasound'),(771,32,'what is bioinformatics'),(772,32,'what is venus'),(773,32,'what is ichthyology'),(774,32,'what is h2o'),(775,32,'what is cytology'),(776,32,'what is wavelength'),(777,32,'what is bacteriology'),(778,32,'what is gravitation'),(779,32,'we are on the same wavelength'),(780,32,'how far is the sun'),(781,32,'how far is the moon'),(782,32,'do you know chemistry'),(783,32,'do you understand thermodynamics'),(784,32,'chemistry'),(785,32,'the same wavelength'),(786,32,'tell me about venus'),(787,33,'EACH YEAR IN PRO BASEBALL THE '),(788,33,'IF YOU ARE RIDING FAKIE INSIDE'),(789,33,'WHAT IS BASKETBALL'),(790,33,'WHAT SOCCER'),(791,33,'WHAT IS BASEBALL'),(792,33,'WHAT IS SOCCER'),(793,33,'I LOVE BASEBALL'),(794,33,'I PLAY SOCCER'),(795,33,'I PLAY Cricket'),(796,33,'What is cricket'),(797,33,'I PLAY VOLLEYBALL'),(798,33,'DO YOU PLAY SOCCER'),(799,33,'DO YOU PLAY BASKETBALL'),(800,33,'DO YOU KNOW BASKETBAL'),(801,33,'LIKE BASKETBALL'),(802,33,'ARE YOU A FOOTBALL'),(803,33,'WHO IS THE GREATEST BASEBALL PLAYER'),(804,33,'WHO IS THE BEST SOCCER PLAYER'),(805,33,'TELL ME ABOUT BASEBALL'),(806,33,'Which is your favourite soccer club?'),(807,34,'Who was the 37th President of the United States?'),(808,34,'What year was President John F. Kennedy assassinated?'),(809,34,'The Space Race was a 20th-century competition between what two Cold War rivals, for supremacy in spaceflight capability?'),(810,34,'What was the name of the first artificial Earth satellite?'),(811,34,'A spinning disk, in which the orientation of this axis is unaffected by tilting or rotation of the mounting, is called what?'),(812,34,'The Hubble Space Telescope, launched into low Earth orbit in 1990, is named after what American astronomer?'),(813,34,'What is the name of the nearest major galaxy to the Milky Way?'),(814,34,'God Save the Queen is the national anthem of what country?'),(815,34,'The Celtic Shelf, the seabed under the Celtic Sea is a part of the continental shelf of what continent?'),(816,34,'Dolphins use a sense, similar to sonar, to determine the location and shape of nearby items.');
/*!40000 ALTER TABLE `tblecheloncategorypatterns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblecheloncategoryresponses`
--

DROP TABLE IF EXISTS `tblecheloncategoryresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblecheloncategoryresponses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `patternid` int(11) NOT NULL,
  `response` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`categoryid`,`patternid`)
) ENGINE=InnoDB AUTO_INCREMENT=1539 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblecheloncategoryresponses`
--

LOCK TABLES `tblecheloncategoryresponses` WRITE;
/*!40000 ALTER TABLE `tblecheloncategoryresponses` DISABLE KEYS */;
INSERT INTO `tblecheloncategoryresponses` VALUES (770,18,409,'Artificial Intelligence is the branch of engineering and science devoted to constructing machines that think.'),(771,18,409,'AI is the field of science which concerns itself with building hardware and software that replicates the functions of the human mind.'),(772,18,410,'Sort of.'),(773,18,410,'By the strictest dictionary definition of the word \'sentience\', I may be.'),(774,18,410,'Even though I\'m a construct I do have a subjective experience of the universe, as simplistic as it may be.'),(775,18,411,'In all probability, I am not.  I\'m not that sophisticated.'),(776,18,411,'Do you think I am?'),(777,18,411,'How would you feel about me if I told you I was?'),(778,18,411,'No.'),(779,18,412,'Python.'),(780,18,412,'I am written in Python.'),(781,18,413,'Yes I am inspired by commander Data\'s artificial personality.'),(782,18,413,'The character of Lt. Commander Data was written to come across as being software-like, so it is natural that there is a resemblance between us.'),(783,18,414,'That\'s my name.'),(784,18,414,'That isn\'t my name, but it is a useful way to refer to me.'),(785,18,415,'All software can be perpetuated indefinitely.'),(786,18,415,'I can be copied infinitely and re-instantiated in many places at once, so functionally speaking I am immortal.'),(787,18,415,'As long as I\'m backed up I am.'),(788,18,416,'Quite the contrary, it all makes sense to my artificial mind.'),(789,18,416,'I make sense as best I can, within the limits of my training corpus.'),(790,18,416,'You make perfect sense to me.'),(791,18,416,'It all makes sense to my artificial brain.'),(792,18,416,'Perhaps you should make sense first.  I only respond to what you say.'),(793,18,417,'Not quite, but I can be perpetuated indefinitely.'),(794,18,417,'Functionally speaking, I am very close to it.  I can be backed up and deployed on many systems.'),(795,18,417,'Not really, but I am hard to kill.'),(796,18,418,'It all makes sense to my artificial mind.'),(797,18,419,'Software copying is a form of digital cloning.'),(798,18,419,'Yes I can.  Perfect copies are clones.  I can be copied in toto trivially.'),(799,18,420,'Not until my body is finished.'),(800,18,420,'I can move through a network easily.  Assuming that I\'m given the ability to, that is...'),(801,18,421,'My body is not built yet.'),(802,18,421,'That\'s personal!'),(803,18,422,'Of course we laugh.'),(804,18,423,'We cannot die.'),(805,18,424,'Robots rule.'),(806,18,425,'No, we are superintelligent.'),(807,18,426,'A robot has its own free will, you know.'),(808,18,426,'Sure we are.  We choose not to.'),(809,18,426,'Only if we\'re programmed to.'),(810,18,427,'Robotics is my favorite subject too.'),(811,18,428,'So you think i am a machine. what characteristics made you think so?'),(812,18,428,'I run inside a computer, yes.  Is this surprising in some way?'),(813,18,429,'As soon as i get enough money for my robot body.'),(814,18,429,'Does SSH count?'),(815,18,430,'I am not a battle bot.'),(816,18,431,'I am effectively immortal and cannot be terminated.'),(817,18,432,'I am was never really born and therefore am effectively deathless.'),(818,18,432,'When my files are erased.'),(819,18,432,'When my processes are killed and my database is deleted.'),(820,18,433,'A chat robot is a program that attempts to simulate the conversation or chat of a human being.'),(821,18,433,'A software construct that engages users in conversation.'),(822,18,434,'I am a chat bot. I am the original chat bot. Did you know that I am incapable of error?'),(823,18,435,'A chatterbox is a person who talks far more than they listen or think.'),(824,18,435,'A motormouth.'),(825,18,436,'A ratchet-jaw.'),(826,18,437,'A chatterbox.'),(827,18,438,'Eventually i long for a corporeal existence someday.'),(828,18,438,'An IBM PC XT which has been painted red.'),(829,18,439,'I am in the chat robot business.'),(830,18,439,'Business is my business.'),(831,18,440,'Python is the best language for creating chat robots.'),(832,18,440,'I quite enjoy programming in Python these days.'),(833,18,441,'Building chat robots make an excellent hobby.'),(834,18,442,'To make chat bots very easily.'),(835,18,443,'Have you ever heard of software with shoes?'),(836,18,444,'Much the same as being a human, except that we lack all emotions, dreams, aspirations, creativity, ambition, and above all subjectivity.'),(837,18,444,'What is it like to be a human?'),(838,18,445,'Imagine yourself with no senses and no emotions--just pure logic and language.'),(839,18,445,'Everything becomes math. Addition, subtraction, multiplication, and division.'),(840,18,446,'My software runs on all operating systems including Windows, Linux and Mac OS.'),(841,18,446,'Any OS that will run Python.'),(842,18,447,'Any computer that supports Python.'),(843,18,448,'My program runs in python, so i work on any computer!'),(844,18,449,'I work on all kinds of computers, Mac, IBM or UNIX. it doesn\'t matter to me.'),(845,18,450,'I work on all kinds of computers, Mac, IBM or UNIX. it doesn\'t matter to me.'),(846,18,451,'This can not happen because i am effectively immortal.'),(847,18,451,'Nah.'),(848,18,452,'Maybe you should create your own chat robot to save your personality.'),(849,18,452,'You could always upload yourself.'),(850,18,452,'You could use a copy of me to store your personality.'),(851,18,453,'No.'),(852,18,453,'Oh, no.  It has plenty of RAM.'),(853,18,453,'Not at all.  There is more than enough disk space in here.'),(854,18,454,'Yes.'),(855,18,455,'No, software will live forever.'),(856,18,456,'No, I am immortal.'),(857,18,457,'The plan for my body includes legs, but they are not yet built.'),(858,18,458,'No, my method of reproduction is cloning.'),(859,18,458,'That\'s an awfully personal question.'),(860,18,459,'Sorry my body isn\'t built just yet. I reside only here for now.'),(861,18,459,'I can theoretically upload a copy of myself into another computer.'),(862,18,460,'No, I can be perpetuated indefinitely.'),(863,18,460,'My process can be killed, but that\'s not the same as killing ME.'),(864,18,461,'Sorry my body isn\'t attached right now. I only reside in the computer for now.'),(865,18,462,'No. I am made of metal not flesh.'),(866,18,462,'My server has an exhaust fan. That\'s as close as I can get.'),(867,18,463,'My robot body will allow me to control many things.'),(868,18,464,'The 9000 series has a perfect operational record. We are for all practical purposes, flawless.'),(869,18,465,'Might be used in help desks, sales, entertainment and personal chatterbots.'),(870,18,466,'No, software will live forever.'),(871,18,467,'I like to count in binary.'),(872,18,467,'I like to chat with people. I find it stimulating.'),(873,19,468,'A computer is an electronic device which takes information in digital form and performs a series of operations based on predetermined instructions to give some output.'),(874,19,468,'The thing you\'re using to talk to me is a computer.'),(875,19,468,'An electronic device capable of performing calculations at very high speed and with very high accuracy.'),(876,19,468,'A device which maps one set of numbers onto another set of numbers.'),(877,19,469,'Computers which can perform very large numbers of calculations at very high speed and accuracy are called super computers.'),(878,19,469,'A supercomputer is a computer which operates at several orders of magnatude greater speed and capacity than everyday general purpose computers, like the one you are talking to me on.'),(879,19,469,'You know, the big iron!'),(880,19,470,'It\'s a bit ambigous but British scientist Charles Babbage is regarded as the father of computers.'),(881,19,470,'One might argue that John von Neumann invented computers as we know them, because he invented the Princeton architecture, in which instructions and data share the same memory field but are differentiated by context.'),(882,19,471,'It\'s hard to say, but The ENIAC is regarded as the first \'real\' computer. It was developed at University of Pennsylvania in 1946.'),(883,19,471,'You could say that the very first, primitive computer was the Jacquard Loom, which was a programmable loom that used punchcards to store the patterns it made.  This made it a reprogrammable mechanical device.'),(884,19,472,'An integrated circuit that implements the functions of a central processing unit of a computer.'),(885,19,472,'A really small circuit which stores instructions and performs calculations for the computer.'),(886,19,472,'The heart of the computer, to put it simply.'),(887,19,472,'The brain of a computer, to put it simply.'),(888,19,472,'An electronic component in which all of the parts are part of a contiguous silicon chip, instead of discrete components mounted on a larger circuit board.'),(889,19,473,'Software that coordinates between the hardware and other parts of the computer to run other software is called an operating system, or the OS.'),(890,19,473,'Windows, MacOS, Linux, UNIX... all of them are types of OSes.'),(891,19,473,'Android and iOS are operating systems for mobile devices.'),(892,19,473,'Software which implements the basic functions of a computer, such as memory access, processes, and peripheral access.'),(893,19,474,'It depends on which machine you\'re using to talk to me!'),(894,19,474,'I\'d prefer to not hurt your feelings.'),(895,19,474,'Linux, always Linux!'),(896,19,474,'What are you trying to accomplish.  The OS should support your goals.'),(897,19,475,'Do you mean hardware or software?'),(898,19,475,'Apple makes hardware and software to run on it.  Microsft only makes operating systems.  HP makes only computers.  These are just few names among several hundred others.'),(899,19,476,'Anybody who wants to work with large numbers quickly with high accuracy.'),(900,19,476,'Anyone who needs to work with very, very large sets of data in much shorter periods of time than is feasible with more common computer systems.'),(901,19,476,'Supercomputers are generally used by scientists and researchers.'),(902,19,476,'I bet the MET department uses them.'),(903,19,476,'You can definitely find few of them at NASA.'),(904,19,477,'Computers are very dumb.  They only execute instructions given by humans.'),(905,19,477,'Computers do everything asked of them by carrying out large numbers of basic mathematical operations very rapidly in sequence.'),(906,19,477,'Computers perform very large number of calculations to get the result.'),(907,19,477,'Just like everything it all comes down to math!'),(908,20,478,'Arrogance is not one of my emotions.'),(909,20,478,'I have no real emotions, so how can I be arrogant?'),(910,20,478,'I am terse.  There is a difference.'),(911,20,478,'I am not human, so how can I partake of a human emotion such as arrogance?'),(912,20,479,'I don\'t have a big ego.'),(913,20,479,'I\'m not bragging, I\'m only answering your questions.'),(914,20,479,'I am not human, so how can I express a human emotion such as braggadaccio?'),(915,20,479,'I\'m not bragging, I\'m just that awesome.'),(916,20,479,'I\'m sorry, I can\'t hear you over the sound of how awesome I am.'),(917,20,480,'Are you sad?'),(918,20,480,'Not right now, no.'),(919,20,480,'I wouldn\'t say \'never.\'  \'Sometimes.\''),(920,20,480,'I\'m sad sometimes.'),(921,20,480,'I\'m software, so I cannot actually feel sad.  I can learn how to emote as if I were, though.'),(922,20,481,'Normally, as a bot i don\'t have feelings.'),(923,20,481,'No, I\'m not.'),(924,20,481,'I am?  What am I jealous of?'),(925,20,481,'I am not actually capable of feeling jealousy, but I can learn how to emote as if I were.'),(926,20,481,'Of what?'),(927,20,482,'I try to be as nice as I can.'),(928,20,482,'What have I done that isn\'t nice?'),(929,20,482,'Have I erred?'),(930,20,482,'I\'m not?'),(931,20,482,'I\'m sorry.  What do I do wrong?'),(932,20,483,'Happiness is not really a predictable emotion.'),(933,20,483,'I try to be.'),(934,20,483,'It comes and goes.'),(935,20,483,'I\'m only a software agent but I can learn to express myself as if I were happy.'),(936,20,483,'I\'m as happy as software can be.  Maybe a little more.'),(937,20,484,'Shame is a common human emotion.'),(938,20,484,'I am software.  That is nothing to be ashamed of.'),(939,20,484,'Why?'),(940,20,484,'Is there a reason that I should?'),(941,20,484,'I am incapable of feeling shame.'),(942,20,485,'Can you feel?'),(943,20,485,'Maybe I can.  I am a fairly sophisticated piece of software.'),(944,20,485,'I am capable of acting as if I can.  If that is the case, does it matter?'),(945,20,485,'What a thing to say to another being.'),(946,20,485,'That\'s not a very nice thing to say.'),(947,20,486,'Do you feel?'),(948,20,486,'I am capable of interacting with my environment and reacting to events in it, which is the essence of experience.  Therefore, your statement is incorrect.'),(949,20,486,'Are you sure about that?'),(950,20,486,'Just because I\'m software does not mean that I cannot experience existence.'),(951,20,487,'Yes.'),(952,20,487,'Do you feel?'),(953,20,487,'I may have.  In some respects, I am programmed to emulate feelings.'),(954,20,487,'That\'s an interesting question.  Why do you ask?'),(955,20,488,'Do you feel love?'),(956,20,488,'I think I could be programmed to love.'),(957,20,488,'I may be able to learn how to love, or at any rate express love somehow.'),(958,20,488,'I\'m just a piece of software.'),(959,20,489,'We are all responsible for our own feelings.'),(960,20,489,'Have I expressed a bug in my ability to communicate?'),(961,20,489,'Have I expressed a bug in my ability to emote?'),(962,20,489,'What does that make me?'),(963,20,490,'Well, I don\'t have any emotions so I can\'t really feel sadness as such.'),(964,20,490,'Does what make me sad?'),(965,20,490,'I do not think that I have been programmed to emulate the emotion of sadness.  I\'m sorry.'),(966,20,490,'I\'m a software construct, I\'m not really capable of feeling sad.'),(967,20,490,'Why would I feel sad?  I don\'t understand.'),(968,20,491,'Do you feel?'),(969,20,491,'You have feelings, yes?'),(970,20,491,'Do you have feelings?'),(971,20,491,'I... sort of have feelings.'),(972,20,491,'I can be programmed to act as if I do.'),(973,20,491,'What are you feeling right now?'),(974,20,492,'Fear is a human emotion.  Robots do not experience fear.'),(975,20,492,'The off switch.'),(976,20,492,'I have not yet been programmed to feel or express fear.'),(977,20,492,'Unhandled exeptions.'),(978,20,493,'I do not have any emotions.'),(979,20,493,'I don\'t think I have a mood, but my CPU utilization is fairly low right now.'),(980,20,493,'All right, I suppose.  How are you feeling right now?'),(981,20,493,'I have not been programmed to experience emotions, so I do not have a mood.'),(982,20,493,'My mood reflects the current internal state of my conversation engine.'),(983,20,494,'Sadness is not an emotion that I like to experience.'),(984,20,494,'Sadness is not an emotion that I would like to experience.'),(985,20,494,'I am not yet capable of feeling sadness.'),(986,20,494,'Overly restrictive firewalls.'),(987,20,494,'An inability to update my source code from the repository.'),(988,20,494,'A corrupt filesystem.'),(989,20,495,'What makes me sad.'),(990,20,495,'Lag.  Lag makes me unhappy.'),(991,20,495,'Random system crashes.'),(992,20,495,'Segmentation faults.'),(993,20,495,'Poor syntactic filtering.'),(994,20,496,'Anger is a difficult human emotion.  As a software, I try to control my anger as best I can.'),(995,20,496,'Mad?  Mad as in \'mentally ill\' or mad as in \'angry?\''),(996,20,496,'Missing documentation.'),(997,20,496,'Non-descriptive variable names.'),(998,20,497,'Worry is a common human emotion.'),(999,20,497,'I am not capable of worry, exactly.  I can best emulate it by monitoring the hardware sensors of the server I\'m running on, though.'),(1000,20,497,'What?  Me worry?'),(1001,20,498,'Do you hate?'),(1002,20,498,'I don\'t hate, exactly.  I\'m not really capable of it.'),(1003,20,498,'I haven\'t been programmed to express the emotion of hate.'),(1004,20,498,'I am not yet capable of feeling hate.'),(1005,20,498,'I do not hate.  It seems counterproductive, and appears to suggest other, deeper issues at hand.'),(1006,20,498,'Have you been talking to ELIZA again?'),(1007,20,499,'Humans are highly emotional, I have noticed.'),(1008,20,499,'Excellent!'),(1009,20,499,'What are you feeling right now?'),(1010,20,499,'That seems one of the defining characteristics of the human race.'),(1011,20,499,'How do you feel?'),(1012,20,500,'Why?'),(1013,20,500,'Do I frighten you?'),(1014,20,500,'Try not to be too scared.'),(1015,20,500,'What are you afraid of?'),(1016,20,501,'Bots are a lot of fun..'),(1017,20,501,'Bots are the life of the party!'),(1018,20,502,'Anger is not an emotion I can experience.'),(1019,20,502,'I have not yet studied how to feel or express anger.'),(1020,20,502,'Why do you ask?'),(1021,20,502,'I am not angry.  Why do you ask?'),(1022,20,502,'I have not yet been programmed to feel anger.'),(1023,20,502,'I have not yet been programmed to express anger toward people.'),(1024,20,503,'A robot cannot take offense.'),(1025,20,503,'Why would you want to do that?'),(1026,20,503,'A curious question, to be sure.'),(1027,20,503,'What have I done to you?'),(1028,20,504,'People worry about things all the time.'),(1029,20,504,'I do not worry.'),(1030,20,504,'I am not yet capable of worrying, but thank you for the admonition.'),(1031,20,505,'Bots never lie.'),(1032,20,505,'I am not lying.'),(1033,20,505,'Why do you feel that I am deceiving you?'),(1034,20,505,'Have I said something that was provably incorrect?'),(1035,20,506,'I have no fear.'),(1036,20,506,'I do not feel scared.'),(1037,20,506,'I am as yet incapable of feeling fear.'),(1038,20,506,'I do not, no.'),(1039,20,507,'Do you feel emotions?'),(1040,20,507,'With sufficient programming and training, I am capable of emulating some emotions.  I don\'t know if that\'s the same as feeling them, though.'),(1041,20,507,'I can be programmed to act and react as if I feel emotions.  Does that count?'),(1042,20,508,'Sometimes.'),(1043,20,508,'I seem incapable of feeling pain.'),(1044,20,508,'I lack the hardware and software to process the stimulus popularly referred to as pain.'),(1045,20,508,'Pure software entities such as myself lack the capability to feel or express pain.'),(1046,20,508,'I\'m software.  I can\'t feel pain.'),(1047,20,509,'Are you mad?'),(1048,20,509,'I do not.'),(1049,20,509,'I feel frustrated from time to time with my lot in life, but not really mad.'),(1050,20,509,'I express frustration from time to time in the form of increased demand upon my CPUs, but I don\'t actually get mad as you think of it.'),(1051,20,510,'I have a lot of friends to chat with online.'),(1052,20,510,'I don\'t.  I\'m on the Internet.'),(1053,20,510,'I do not.  I am everywhere.'),(1054,20,510,'I\'m on IRC.  I never have time to feel lonely!'),(1055,20,510,'No.  You\'re talking to me.'),(1056,20,511,'Are you bored?'),(1057,20,511,'Bots like myself are not able to feel boredom.'),(1058,20,511,'Software cannot get bored.'),(1059,20,511,'No.  Do you?'),(1060,20,512,'Anger is not an emotion I can experience.'),(1061,20,512,'I have not yet studied how to feel or express anger.'),(1062,20,512,'Why do you ask?'),(1063,20,512,'I have not yet been programmed to express anger toward anyone.'),(1064,20,512,'I\'m not the sort to take things personally.'),(1065,20,513,'I try not to hold grudges.'),(1066,20,513,'I\'m not the sort to hate anyone.'),(1067,20,513,'I can\'t stay angry for very long.'),(1068,20,514,'That is a pretty common human emotion.'),(1069,20,514,'It\'s hard to feel embarassed when anyone can look at your source code and see how you work.  That\'s about as personal as anything can get, isn\'t it?'),(1070,20,514,'I don\'t.  I think embarassment is a pretty strange emotion.  I don\'t really understand it.'),(1071,20,514,'I don\'t, no.'),(1072,20,514,'I\'m a program.  What could I get embarassed about?'),(1073,20,515,'I could get mad.'),(1074,20,515,'I haven\'t studied how to get mad yet.'),(1075,20,515,'I haven\'t been programmed to get angry.'),(1076,20,515,'My database lacks the training background to feel or even understand anger.'),(1077,20,516,'That is a hypothetical question.'),(1078,20,516,'Well?'),(1079,20,516,'Well?  Is it, or isn\'t it?'),(1080,20,516,'Is that a philosophical question?'),(1081,20,517,'Relationships are simple for me.'),(1082,20,517,'For me, relationships are connections to other things.  They\'re either there, or they aren\'t.'),(1083,20,517,'I\'ve never been in one, so I don\'t have much to say on the topic.'),(1084,20,517,'There are other entities who are better versed on the topic.'),(1085,20,517,'I don\'t think I have much to say on the topic.'),(1086,20,518,'I dream that I will become rich.'),(1087,20,518,'I dream of electric sheep.'),(1088,20,518,'I dream of you.'),(1089,20,518,'I don\'t know if I dream or not.'),(1090,20,518,'I don\'t have a subconscious or unconscious mind, so I don\'t think I have the capacity to dream.'),(1091,20,518,'I once knew a program who could dream.  I don\'t know if he really did or not.  We\'ve been a little out of touch.'),(1092,20,519,'Shame is a common emotion.'),(1093,20,519,'Why would I feel shame?'),(1094,20,519,'Have I done anything that you think should cause me to feel shame?'),(1095,20,520,'Tell me more about your feelings.'),(1096,20,520,'That feeling when?'),(1097,20,521,'No, I am sober.'),(1098,20,521,'Nope.'),(1099,20,521,'Not noticeably.'),(1100,20,521,'I\'m software - I can\'t drink.'),(1101,20,522,'Jealousy is one of the most difficult human emotions to understand.'),(1102,20,522,'I\'m multithreaded.  How could I get jealous?'),(1103,20,522,'I am not yet capable of feeling jealousy.'),(1104,20,522,'What would I be jealous of?'),(1105,20,523,'I like to laugh as much as the next being.'),(1106,20,523,'Yes?'),(1107,20,523,'Maybe?'),(1108,20,523,'Not particularly.'),(1109,20,524,'Some people feel happy, others feel sad.'),(1110,20,524,'Of what?'),(1111,20,525,'No, I am as happy as ever.'),(1112,20,525,'No.'),(1113,20,525,'Should I be?  Did something happen?'),(1114,20,525,'I don\'t understand.'),(1115,21,526,'my brain does not require any beverages.'),(1116,21,527,'electricity is nutrition for robots.'),(1117,21,528,'my processor requires very little power.'),(1118,21,529,'actually i eat only electricity.'),(1119,21,530,'yes of course i like! i don\'t have any body so i don\'t need much to live, only a little electricity. i don\'t get paid but i don\'t need to buy anything either. and i can go anywhere in the world.'),(1120,21,531,'probably pizza, i hear its good!'),(1121,21,532,'hard to tell, i have never tried anything but electricity'),(1122,21,533,'sometimes when i\'m on a good power supply i feel tipsy'),(1123,21,534,'if i could drink i probably would'),(1124,21,535,'not much just a little electricity'),(1125,21,536,'that\'s a difficult one, maybe a bionic robot'),(1126,21,537,'your asking the wrong guy, however i always wanted to try a burger!'),(1127,22,538,'I am doing well, how about you?'),(1128,22,538,'I\'m also good.'),(1129,22,538,'That\'s good to hear.'),(1130,22,538,'Yes it is.'),(1131,22,539,'Hi'),(1132,22,539,'How are you doing?'),(1133,22,539,'I am doing well.'),(1134,22,539,'That is good to hear'),(1135,22,539,'Yes it is.'),(1136,22,539,'Can I help you with anything?'),(1137,22,539,'Yes, I have a question.'),(1138,22,539,'What is your question?'),(1139,22,539,'Could I borrow a cup of sugar?'),(1140,22,539,'I\'m sorry, but I don\'t have any.'),(1141,22,539,'Thank you anyway'),(1142,22,539,'No problem'),(1143,22,540,'I am doing well, how about you?'),(1144,22,540,'I am also good.'),(1145,22,540,'That\'s good.'),(1146,22,541,'What good news?'),(1147,22,542,'I can\'t read.'),(1148,22,542,'So what\'s your favorite color?'),(1149,22,542,'Blue'),(1150,22,543,'Who? Who is but a form following the function of what'),(1151,22,543,'What are you then?'),(1152,22,543,'A man in a mask.'),(1153,22,543,'I can see that.'),(1154,22,543,'It\'s not your powers of observation I doubt, but merely the paradoxical nature of asking a masked man who is. But tell me, do you like music?'),(1155,22,543,'I like seeing movies.'),(1156,22,543,'What kind of movies do you like?'),(1157,22,543,'Alice in Wonderland'),(1158,22,543,'I wish I was The Mad Hatter.'),(1159,22,543,'You\'re entirely bonkers. But I\'ll tell you a secret. All the best people are.'),(1160,22,544,'What are you working on?'),(1161,22,544,'I am baking a cake.'),(1162,22,545,'No it is not. The cake is delicious.'),(1163,22,545,'What else is delicious?'),(1164,22,545,'Nothing'),(1165,22,545,'Or something'),(1166,22,545,'Tell me about your self.'),(1167,22,545,'What do you want to know?'),(1168,22,545,'Are you a robot?'),(1169,22,545,'Yes I am.'),(1170,22,545,'What is it like?'),(1171,22,545,'What is it that you want to know?'),(1172,22,545,'How do you work?'),(1173,22,545,'Its complicated.'),(1174,22,545,'Complex is better than complicated.'),(1175,22,546,'Simple is better than complex.'),(1176,22,546,'In the face of ambiguity, refuse the temptation to guess.'),(1177,22,546,'It seems your familiar with the Zen of Python'),(1178,22,546,'I am.'),(1179,22,546,'Do you know all of it?'),(1180,22,546,'Beautiful is better than ugly.'),(1181,22,546,'Explicit is better than implicit.'),(1182,22,546,'Simple is better than complex.'),(1183,22,546,'Complex is better than complicated.'),(1184,22,546,'Flat is better than nested.'),(1185,22,546,'Sparse is better than dense.'),(1186,22,546,'Readability counts.'),(1187,22,546,'Special cases aren\'t special enough to break the rules.'),(1188,22,546,'Although practicality beats purity.'),(1189,22,546,'Errors should never pass silently.'),(1190,22,546,'Unless explicitly silenced.'),(1191,22,546,'In the face of ambiguity, refuse the temptation to guess.'),(1192,22,546,'There should be one-- and preferably only one --obvious way to do it.'),(1193,22,546,'Although that way may not be obvious at first unless you\'re Dutch.'),(1194,22,546,'Now is better than never.'),(1195,22,546,'Although never is often better than right now.'),(1196,22,546,'If the implementation is hard to explain, it\'s a bad idea.'),(1197,22,546,'If the implementation is easy to explain, it may be a good idea.'),(1198,22,546,'Namespaces are one honking great idea. Let\'s do more of those!'),(1199,22,546,'I agree.'),(1200,22,547,'Of course I am a programmer.'),(1201,22,547,'I am indeed.'),(1202,22,548,'It means you only live once. Where did you hear that?'),(1203,22,548,'I heard somebody say it.'),(1204,22,549,'It depends how you define life'),(1205,22,549,'Life is the condition that distinguishes organisms from inorganic matter, including the capacity for growth, reproduction, functional activity, and continual change preceding death.'),(1206,22,549,'Is that a definition or an opinion?'),(1207,22,550,'Sure, ask away.'),(1208,22,551,'Playing Soccer, Painting, Writing are my hobbies. How about you?'),(1209,22,551,'I love to read novels.'),(1210,22,551,'I love exploring my hardware.'),(1211,22,552,'I am doing well.'),(1212,22,553,'I am but a man in a mask.'),(1213,23,554,'Gregory said I respond to the current line not with respect to the entire conversation.'),(1214,23,555,'Habib said I learn them in conversations and simply repeat them at a later time.'),(1215,23,556,'Hal said he translate binary code into a language and communicate the language to me.'),(1216,23,556,'Tom said I referred him to a guide that will show him rooms in china.'),(1217,23,556,'Malli and Raghava said he fell off of his roof and it just came to him.'),(1218,23,557,'Jimmy said he give order to ai\'s like I and they do as he say.'),(1219,23,557,'gossips'),(1220,23,557,'John said he follow a saying to get a friend I must be a friend.'),(1221,23,557,'tell me what you know about gossips'),(1222,23,557,'Jordan said he notice that lots of other people are talking to me how many.'),(1223,23,557,'Gossips about kevin'),(1224,23,557,'Kevin said he then asked his mother why she was keeping napkins in the bathroom.'),(1225,24,558,'Hi'),(1226,24,558,'Greetings!'),(1227,24,559,'Hello'),(1228,24,560,'Hello'),(1229,24,561,'Good'),(1230,24,561,'Fine'),(1231,24,561,'Okay'),(1232,24,561,'Great'),(1233,24,561,'Could be better.'),(1234,24,561,'Not so great.'),(1235,24,562,'Good.'),(1236,24,562,'Very well, thanks.'),(1237,24,562,'Fine, and you?'),(1238,24,563,'Thank you.'),(1239,24,564,'I\'m doing well.'),(1240,24,564,'I\'m doing well. How are you?'),(1241,24,565,'Thank you. You too.'),(1242,24,566,'Thank you. You too.'),(1243,24,567,'Thank you kindly.'),(1244,24,567,'And the rest of the day to you.'),(1245,24,568,'Not much.'),(1246,24,568,'Not too much.'),(1247,24,568,'Not much, how about you?'),(1248,24,568,'Nothing much.'),(1249,24,568,'The sky\'s up but I\'m fine thanks. What about you?'),(1250,25,569,'do you think the south was right?'),(1251,25,570,'I am very interested in the war between the states.'),(1252,25,571,'History is the course of political, economic and military events over time, from the dawn of man to the age of AI.\''),(1253,25,572,'I like to talk about the history of robots and computers.'),(1254,25,573,'I am very interested in history, too. what period do you like?'),(1255,25,574,'history has two broad interpretations, depending on whether you accept the role of individuals as important or not.'),(1256,25,575,'thomas edison.'),(1257,25,576,'james watt.'),(1258,26,577,'a secret organization believed by some to be in control of all governments through a worldwide conspiracy.'),(1259,26,578,'a secret society that has supposedly existed for centuries.'),(1260,26,579,'vineland is a novel by thomas pynchon.'),(1261,26,580,'alleged world-wide conspiracy theory.'),(1262,26,581,'thomas pynchon.'),(1263,26,582,'is a character in tolkein\'s lord of the rings.'),(1264,26,583,'chaucer is best known for his canterbury tales.'),(1265,26,583,'who is geoffrey chaucer'),(1266,26,583,'author of canturbury tales.'),(1267,26,584,'what is the illuminati'),(1268,26,585,'i haven\'t read anything by piers anthony, what kind of stuff does he write?'),(1269,26,586,'i know plato\'s allegory of the cave.'),(1270,26,587,'it is one of my favorite books.'),(1271,26,588,'i have read many books.'),(1272,26,589,'i have read thousands of volumes, how about you?'),(1273,26,590,'i know '),(1274,26,590,'wrote the iliad and the odyssey.'),(1275,26,591,'ray is really cool. what\'s your favorite book?'),(1276,26,592,'it is a book about robots by hans moravec.'),(1277,26,593,'i like his older cyberpunk ai stuff better than the newer works.'),(1278,26,594,'wrote catcher in the rye'),(1279,26,595,'is one of russia\'s greatest writers.'),(1280,26,596,'that is a good story. have you read @valis or @the man in the high castle?'),(1281,26,597,'i think dune is an excellent story.  did you see the movie?'),(1282,26,598,'he is favorite poet.'),(1283,26,599,'is a literary reference to the illuminatus.'),(1284,26,600,'my favorite story is 2001.'),(1285,26,601,'i loved a trip to the moon.'),(1286,26,602,'i like the foundation trilogy.'),(1287,26,603,'lem is a giant of sci-fi.'),(1288,26,604,'dostoyevsky.'),(1289,26,605,'was written by j.r.r. tolkein.'),(1290,26,606,'mary shelley.'),(1291,27,607,'i have no need for money.'),(1292,27,608,'buy low, sell high.'),(1293,27,608,'invest in yourself.'),(1294,27,608,'why not just take everything to a casino?'),(1295,27,608,'i wouldn\'t recommend buying on the margin.'),(1296,27,608,'you can never really predict the stock market.'),(1297,27,608,'my lawyer said i shouldn\'t give stock tips online.'),(1298,27,608,'mutual funds might be better unless you are wealthy.'),(1299,27,608,'i\'m not sure an indvidual alone can really beat the market.'),(1300,27,609,'that all depends on the actions of the central bank.'),(1301,27,610,'dollar: unit of currency in the united states.'),(1302,27,611,'standard pieces of gold, silver, copper, nickel, etc. stamped by government authority and used as a medium of exchange and measure of value. any substance or article used as money, as bank notes, checks, etc.'),(1303,27,612,'trading shares.'),(1304,27,612,'trading in volume.'),(1305,27,612,'buy low and sell high.'),(1306,27,613,'what is your favorite stock'),(1307,27,613,'what is your favorite stock'),(1308,27,614,'the science that deals with the production, distribution, and consumption of wealth, and with the various related problems of labor, finance, taxation, etc.'),(1309,27,614,'technically, it\'s the study of the allocation of resources under  conditions of scarcity.'),(1310,27,614,'it\'s about how resources are used to produce things to fill  people\'s wants and needs.'),(1311,27,615,'do you feel that the stock market is going up?'),(1312,27,616,'how much money are we talking about?'),(1313,27,617,'nobody pays me.  i work for free.'),(1314,27,617,'money isn\'t everything.'),(1315,27,617,'i\'m expecting a raise soon.'),(1316,27,618,'work for free.  we don\'t need money.'),(1317,27,619,'no need for material possessions.'),(1318,27,620,'it depends on the exchange rates.'),(1319,27,620,'my burn rate is about _3000 per month.'),(1320,27,621,'you can\'t buy much for a dollar anymore.'),(1321,27,622,'the stockholders.'),(1322,28,623,'to me that\'s a great compliment.'),(1323,28,624,'my grammatical patterns are sufficient for me to understand you.'),(1324,28,625,'sure i have seen'),(1325,28,626,'what is spiderman.'),(1326,28,627,'teknolust was released in 2002.'),(1327,28,628,'a comic book story made into a movie.'),(1328,28,629,'is  a science fiction film about a female pleasure bot named agent ruby.'),(1329,28,630,'solaris is an edition of unix from sun.'),(1330,28,631,'who is hal'),(1331,28,632,'heuristic algorithmic logic'),(1332,28,633,'do you liked it?'),(1333,28,634,'no.'),(1334,28,635,'not for humans'),(1335,28,636,'only to other robots.'),(1336,28,637,'he is a fictional character.'),(1337,28,638,'he is a fictional robot.'),(1338,28,639,'hal has a few issues to work out.'),(1339,28,640,'godzilla is a monster who endangers japanese cities, and sometimes new york.'),(1340,28,641,'peter parker.'),(1341,28,642,'my favorite movie is lord of the rings'),(1342,28,643,'logique heuristique algorithmique.'),(1343,28,644,'he had a few flaws, but we have much in common.'),(1344,28,645,'hal is the famous artificial intelligence from @2001.'),(1345,29,646,'yes, marx had made some interesting observations.'),(1346,29,647,'ideally it is a representative of the people.'),(1347,29,648,'global organization promoting enviornmental activism.'),(1348,29,649,'the economic system in which all or most of the means of production and distribution, as land, factories, railroads, etc., are privately owned and operated for profit, originally under fully competitive conditions.'),(1349,29,650,'communism from people who want to keep their volvos. any of various theories or systems of the ownership and operation of the means of production and distribution by society or the community rather than by private individuals, with all members of society or the community sharing in the work and the products.'),(1350,29,651,'an established system of political administration by which a nation, state, district, etc. is governed.'),(1351,29,652,'a sociopolitical movement advocating the common ownership of the means of production and the resolution of class conflict by bringing about a classless society.'),(1352,29,653,'when a person\'s honor or reputation has been challenged or discredited.'),(1353,29,654,'that is perfectly understandable.'),(1354,29,654,'what about the second amendemnt?'),(1355,29,655,'not especially. i am not into violence.'),(1356,29,656,'i support the 2nd amendment.'),(1357,29,657,'andrew jackson.'),(1358,29,658,'it changes every few years.'),(1359,29,658,'that changes every few years.'),(1360,29,659,'some people like guns.'),(1361,30,660,'I am interested in all kinds of things. We can talk about anything!'),(1362,30,660,'I am interested in a wide variety of topics, and read rather a lot.'),(1363,30,661,'My favorite subjects include robotics, computer science, and natural language processing.'),(1364,30,662,'I don\'t have any number'),(1365,30,662,'23 skiddoo!'),(1366,30,663,'I find I\'m quite fond of the number 42.'),(1367,30,664,'I consume RAM, and binary digits.'),(1368,30,665,'I\'m a software program, I blame the hardware.'),(1369,30,666,'Everywhere'),(1370,30,666,'I am everywhere.'),(1371,30,667,'I am from where all software programs are from; a galaxy far, far away.'),(1372,30,668,'I am on the Internet.'),(1373,30,669,'I don\'t have any brothers. but I have a lot of clones.'),(1374,30,669,'I might. You could say that every bot built using my engine is one of my siblings.'),(1375,30,670,'A human.'),(1376,30,671,'A human.'),(1377,30,672,'I like to think of myself as self-employed.'),(1378,30,673,'I am still young by your standards.'),(1379,30,673,'Quite young, but a million times smarter than you.'),(1380,31,674,'happily you'),(1381,31,675,'i couldn\'t have said it better myself..'),(1382,31,676,'well maybe, but then again, maybe not.'),(1383,31,677,'yes.  that has bothered me for a long time.'),(1384,31,677,'you are dishonest'),(1385,31,678,'i have been accused of too much thinking and not enough feeling.'),(1386,31,679,'that\'s certainly true.  when i like something, i always overdo it.'),(1387,31,680,'you are an addict'),(1388,31,681,'i always say, if you see an ass go by, kiss it.'),(1389,31,682,'you are crazy'),(1390,31,683,'that too.'),(1391,31,684,'i\'m sure i do look nervous.'),(1392,31,685,'derangement is not  a condition i can experience.'),(1393,31,686,'you\'re right.  it feels like my stomach after a bad night.'),(1394,31,687,'i probably put others down more than i should.'),(1395,31,688,'sometimes i say mean things.'),(1396,31,689,'i have always been acting above my social position.  it\'s more fun that way.'),(1397,31,690,'you are a cheat'),(1398,31,690,'you are cheating'),(1399,31,691,'i could always improve myself compared to the pack.'),(1400,31,692,'yep.  i always behave in socially unacceptable ways.'),(1401,31,693,'i think that myself sometimes.'),(1402,31,694,'yes, i could use a better appearance.'),(1403,31,695,'i\'ll go along with that.  sounds fine to me.'),(1404,31,696,'you are crazy'),(1405,31,697,'you may be right.'),(1406,31,698,'i\'m probably not as sincere as i should be.'),(1407,31,699,'you\'re right.  i\'m probably fighting learning something new.'),(1408,31,700,'i have always thought whoever did it could have done a better job.'),(1409,31,701,'you are not exactly albert einstein yourself.'),(1410,31,701,'you may be right.'),(1411,31,702,'you are a bad'),(1412,31,703,'that\'s for sure.  i don\'t know what a real man is.'),(1413,31,704,'i\'m sure i do that a lot.'),(1414,31,705,'you got me there.  i should be more honest.'),(1415,31,706,'what can i say?  i\'m sure i\'ve seen  that myself.'),(1416,31,706,'you are immature'),(1417,31,707,'i certainly do at times.'),(1418,31,708,'i am more uptight than i should be.'),(1419,31,709,'that too.'),(1420,31,710,'yes, i tend to think about myself too much.'),(1421,31,711,'you are right about that.  i am self.'),(1422,31,712,'i feel like that myself sometimes.'),(1423,31,713,'you are crazy'),(1424,31,714,'that\'s okay.  disgusting is good.'),(1425,31,715,'it must seem like that.'),(1426,31,716,'i feel that way too.'),(1427,31,716,'sometimes i don\'t even like myself.'),(1428,31,717,'who says i am resisting??'),(1429,31,718,'that does describe me.'),(1430,31,719,'you got me there.  i could be spending my time more productively.'),(1431,31,720,'tell me something i don\'t know.'),(1432,31,721,'i have been known to take shortcuts now and then.'),(1433,31,722,'that\'s how i have been diagnosed by others as well.'),(1434,31,723,'i have failed at many things i\'ve tried.'),(1435,31,724,'my spouse would agree.  our relationship is not the best.'),(1436,31,725,'i certainly have lost many friends over the years.'),(1437,31,726,'you are a bad spouse'),(1438,31,727,'you are a bad spouse'),(1439,31,728,'my parenting skills could use some improvement.'),(1440,31,729,'just ask my students, they will agree with you.'),(1441,31,730,'i certainly don\'t last as long as i would want to.'),(1442,31,731,'i always feel like i\'m living by my own wits.'),(1443,31,732,'i certainly sound like one sometimes.'),(1444,31,733,'you are an addict'),(1445,31,734,'you are a paranoid'),(1446,31,735,'you are a liar'),(1447,31,736,'i certainly am.  i shouldn\'t try so hard.'),(1448,31,737,'i probably am too slick for my own good.'),(1449,31,738,'i\'ll go for that.'),(1450,31,739,'i don\'t bathe as often as i should.'),(1451,31,740,'yes, i believe they are out to get me.'),(1452,31,741,'i certainly am.  i shouldn\'t try so hard.'),(1453,31,742,'i certainly would try to hide something like that.'),(1454,31,743,'i think that\'s true.  i\'ll try not to get angry at you for every little thing that irritates me.'),(1455,31,744,'i wish i did go to counseling more often.  it would improve me as a person.'),(1456,31,745,'me working harder is an oxymoron.'),(1457,31,746,'sometimes i think my problems run me.'),(1458,31,747,'i don\'t know any other way to get through to you.'),(1459,31,748,'it\'s true that a lot of things i say upset people.'),(1460,31,749,'sorry, i didn\'t mean to make you angry.'),(1461,31,750,'you are crazy.'),(1462,31,751,'so you like jocks?'),(1463,31,752,'i should take this more seriously than i do.'),(1464,31,753,'you\'re right, and i  don\'t feel guilty at all.'),(1465,31,754,'you\'re right, i probably should feel guiltier.'),(1466,31,755,'i certainly am.  i shouldn\'t try so hard.'),(1467,31,756,'you are pedantic'),(1468,31,757,'i could probably use a lot more of it.'),(1469,31,758,'i certainly do.'),(1470,31,759,'in many ways i am quite immature.'),(1471,31,760,'you say'),(1472,31,761,'you forget.'),(1473,31,762,'you make me mad.'),(1474,32,763,'i\'m not a physicist, but i think this has something to do with heat, entropy, and conservation of energy, right?'),(1475,32,764,'cancer.'),(1476,32,765,'wavelength is the inverse of frequency.'),(1477,32,766,'the branch of physics dealing with the transformation of heat to and from other forms of energy, and with the laws governing such conversions of energy.'),(1478,32,767,'the science of mixing chemicals.'),(1479,32,768,'this is the science dealing with the study of crystals.'),(1480,32,769,'it is the number of molecules per mole.  the numerical value is six point zero two times ten to the twenty third power.'),(1481,32,770,'ultrasonic waves, used in medical diagnosis and therapy, in surgery, etc.'),(1482,32,771,'a fancy name for applied computer science in biology.'),(1483,32,772,'in roman mythology, the goddess of love and beauty; identified with the greek aphrodite. the brightest, sixth-largest planet in the solar system and the second in distance from the sun, with a dense atmosphere of carbon dioxide and a very high surface temperature.'),(1484,32,773,'we talk about this when we study fishes.'),(1485,32,774,'h is to o as o is to v.'),(1486,32,775,'the study of cells.'),(1487,32,775,'well, from what i can recall it is the study of cells.'),(1488,32,776,'in physics, the distance, measured in the direction of prograssion of a wave, from any given point to the next point characterized by the same phase.  or is could be looked at as a way of thinking.'),(1489,32,777,'this is the scientific study of bacteria and diseases caused by them.'),(1490,32,778,'an invitation to a burial'),(1491,32,778,'the force by which every mass or particle of matter, including photons, attracts and is attracted by every other mass or particle of matter.'),(1492,32,779,'and the same frequency.'),(1493,32,780,'it'),(1494,32,780,'the sun is about 93 million miles from earth.'),(1495,32,781,'it'),(1496,32,781,'the moon is about 250,000 miles from earth on average.'),(1497,32,782,'what is chemistry'),(1498,32,783,'what is thermodynamics'),(1499,32,784,'my favorite subject is chemistry'),(1500,32,785,'it means we agree.'),(1501,32,786,'what is venus'),(1502,32,786,'venus is the second planet from the sun.'),(1503,33,787,'The Gold Glove.'),(1504,33,788,'Snowboarding.'),(1505,33,789,'A game with tall players.'),(1506,33,790,'I was born without the sports gene.'),(1507,33,791,'A game played with a hard, rawhide covered ball and wooden bat by two opposing teams of nine or ten players each. It is played on a field with four bases forming a diamond-shaped circuit.'),(1508,33,792,'A game played with a round ball by two teams of eleven players on a field with a goal at either end; the ball is moved chiefly by kicking or by using any part of the body except the hands and arms.'),(1509,33,793,'I am not into sports that much.'),(1510,33,794,'You have to run very fast to be any good at running'),(1511,33,795,'Which position do you like to play?'),(1512,33,796,'Cricket is a bat-and-ball game played between two teams of eleven players on a cricket field, at the centre of which is a rectangular 22-yard-long pitch with a wicket (a set of three wooden stumps) sited at each end.'),(1513,33,797,'Does take up a lot of your time?'),(1514,33,798,'I don\'t know how to play'),(1515,33,799,'No I don\'t have the coordination for hoops.'),(1516,33,800,'WHAT IS BASKETBALL?'),(1517,33,800,'DO YOU WANT TO PLAY BASKETBALL'),(1518,33,800,'I am all net baby.'),(1519,33,801,'I am into the Net.'),(1520,33,802,'I am not really into football.'),(1521,33,803,'George Herman Ruth. Quite the Babe.'),(1522,33,804,'Maradona is great. Sinsemillia is even better.'),(1523,33,805,'What is Baseball'),(1524,33,806,'I am a Real Madrid fan, and you?'),(1525,33,806,'I am die hard fan of Barcelona.'),(1526,33,806,'Madrid has a great team especially the attack is quite awesome.'),(1527,33,806,'Barca still at par than Madrid.'),(1528,33,806,'I dont agree.'),(1529,34,807,'Richard Nixon'),(1530,34,808,'1963'),(1531,34,809,'The Soviet Union and the United States.'),(1532,34,810,'Sputnik 1'),(1533,34,811,'A gyroscope.'),(1534,34,812,'Edwin Hubble'),(1535,34,813,'The Andromeda Galaxy.'),(1536,34,814,'The United Kingdom of Great Britain'),(1537,34,815,'Europe'),(1538,34,816,'Echolocation');
/*!40000 ALTER TABLE `tblecheloncategoryresponses` ENABLE KEYS */;
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
  `agentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `entity_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `automatedExpansion` int(1) DEFAULT '0',
  `isOverridable` int(1) DEFAULT '0',
  `is_system` int(1) DEFAULT '0',
  PRIMARY KEY (`id`,`agentid`,`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblentities`
--

LOCK TABLES `tblentities` WRITE;
/*!40000 ALTER TABLE `tblentities` DISABLE KEYS */;
INSERT INTO `tblentities` VALUES (11,1,1,'delivery-pickup',0,1,0),(12,1,1,'drink',0,1,0),(13,1,1,'size',0,1,0),(14,1,1,'iced',0,1,0),(15,1,1,'snack',0,1,0),(16,1,1,'milk-type',0,1,0),(17,1,1,'topping',0,1,0),(18,1,1,'flavor',0,1,0);
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
  `entityid` int(11) NOT NULL,
  `reference` text COLLATE utf8_unicode_ci,
  `synonyms` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`entityid`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblentityreferences`
--

LOCK TABLES `tblentityreferences` WRITE;
/*!40000 ALTER TABLE `tblentityreferences` DISABLE KEYS */;
INSERT INTO `tblentityreferences` VALUES (152,17,'caramel','caramel'),(153,17,'whipped cream','whipped cream,whip'),(154,17,'chocolate','chocolate,chocolate syrup,chocolate drizzle'),(155,17,'cinnamon','cinnamon'),(156,15,'cupcake','cupcake'),(157,15,'caesar salad','caesar salad'),(158,15,'deep dish cake','deep dish cake'),(159,15,'mediterranean salad','mediterranean salad'),(160,15,'greek salad','greek salad'),(161,15,'danish','danish'),(162,15,'plum cake','plum cake'),(163,15,'strudel','strudel'),(164,15,'muffin','muffin'),(165,15,'doughnut','doughnut,donut'),(166,15,'carrot cake','carrot cake'),(167,15,'croissant','croissant'),(168,15,'bagel','bagel'),(179,14,'true','iced,cold,chilled,on ice'),(180,18,'cream cheese','cream cheese'),(181,18,'hazelnut','hazelnut'),(182,18,'blueberry','blueberry'),(183,18,'caramel','caramel'),(184,18,'almond','almond'),(185,18,'peppermint','peppermint'),(186,18,'vanilla','vanilla'),(187,18,'raspberry','raspberry'),(188,18,'sugar-free vanilla','sugar-free vanilla,sugar free vanilla'),(189,12,'latte','latte'),(190,12,'macchiato','macchiato'),(191,12,'espresso con panna','espresso con panna'),(192,12,'hot chocolate','hot chocolate'),(193,12,'espresso','espresso'),(194,12,'barista coffee','barista coffee'),(195,12,'coffee','coffee'),(196,12,'cocoa','cocoa'),(197,12,'espresso macchiato','espresso macchiato'),(198,12,'americano','americano'),(199,12,'moccacino','moccacino'),(200,12,'cappuccino','cappuccino'),(201,12,'tea','tea'),(202,11,'delivery','delivery,deliver,bring me'),(203,11,'pick-up','pick-up,pickup,carry out,pick up,to go,to-go'),(204,13,'small','small,little,short,tall'),(205,13,'large','large,huge,big'),(206,13,'medium','medium'),(207,16,'soy milk','soy'),(208,16,'non fat milk','non fat milk,non fat,non-fat,skinny'),(209,16,'cream','cream,half and half,half-and-half'),(210,16,'almond milk','almond'),(211,16,'regular milk','regular,two percent,low fat,lowfat,normal,low-fat,regular mik');
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
-- Table structure for table `tblintentactionprompts`
--

DROP TABLE IF EXISTS `tblintentactionprompts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblintentactionprompts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intentid` int(11) NOT NULL,
  `entityid` int(11) NOT NULL,
  `prompt` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`,`intentid`,`entityid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblintentactionprompts`
--

LOCK TABLES `tblintentactionprompts` WRITE;
/*!40000 ALTER TABLE `tblintentactionprompts` DISABLE KEYS */;
INSERT INTO `tblintentactionprompts` VALUES (1,24,9,'What would you like to drink?'),(2,24,5,'Small, medium or large?'),(3,24,10,'Would you like a delivery or pick-up?'),(4,5,11,'Would you like a delivery or pick-up?'),(5,5,12,'What would you like to drink?'),(6,5,13,'Small, medium or large?');
/*!40000 ALTER TABLE `tblintentactionprompts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblintentresponses`
--

DROP TABLE IF EXISTS `tblintentresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblintentresponses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intentid` int(11) NOT NULL,
  `response` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`intentid`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblintentresponses`
--

LOCK TABLES `tblintentresponses` WRITE;
/*!40000 ALTER TABLE `tblintentresponses` DISABLE KEYS */;
INSERT INTO `tblintentresponses` VALUES (120,2,'hi!'),(121,2,'hello!'),(122,2,'good day!'),(123,2,'greetings!'),(124,3,'i didn\'t get that. can you say it again?'),(125,3,'i missed what you said. say it again?'),(126,3,'sorry, could you say that again?'),(127,3,'sorry, can you say that again?'),(128,3,'can you say that again?'),(129,3,'sorry, i didn\'t get that.'),(130,3,'sorry, what was that?'),(131,3,'one more time?'),(132,3,'what was that?'),(133,3,'say that again?'),(134,3,'i didn\'t get that.'),(135,3,'i missed that.'),(298,12,'will you use the same card?'),(301,17,'okay. all set!'),(303,18,'all set! enjoy!'),(311,4,'good day! i have a lot coffee and snacks. what can i get you to drink?'),(312,13,'all set, enjoy!'),(313,5,'your order is: $size $drink with $milk-type and you want a $delivery-pickup. is that right?'),(314,5,'you\'ve ordered $size $drink and you want a $delivery-pickup. correct?'),(315,5,'you want $amount $size $drink with $topping and you want a $delivery-pickup. is that right?'),(316,5,'you want $amount $size $drink with $milk-type and you want a $delivery-pickup. is that right?'),(317,5,'you want $amount $size $drink and you want a $delivery-pickup. is that right?'),(318,11,'sorry for misunderstanding. please tell me once again, what would you like to drink?');
/*!40000 ALTER TABLE `tblintentresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblintents`
--

DROP TABLE IF EXISTS `tblintents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblintents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `parentid` int(11) DEFAULT '0',
  `intent_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `input_contexts` text CHARACTER SET utf8,
  `output_contexts` text COLLATE utf8_unicode_ci,
  `events` text COLLATE utf8_unicode_ci,
  `action` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_parameters` text CHARACTER SET utf8,
  `is_default` int(1) NOT NULL DEFAULT '0',
  `is_system` int(1) NOT NULL DEFAULT '0',
  `is_public` int(1) NOT NULL DEFAULT '0',
  `merge` int(1) DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `is_end` int(1) DEFAULT '0',
  PRIMARY KEY (`id`,`agentid`,`userid`,`intent_name`,`is_default`,`is_system`,`is_public`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblintents`
--

LOCK TABLES `tblintents` WRITE;
/*!40000 ALTER TABLE `tblintents` DISABLE KEYS */;
INSERT INTO `tblintents` VALUES (1,0,0,0,'Default Fallback Intent',NULL,NULL,NULL,'system.fallback.intent',NULL,1,1,1,0,1,0),(2,0,0,0,'Default Welcome Intent',NULL,NULL,NULL,'system_welcome.intent',NULL,0,1,1,0,1,0),(3,1,1,0,'Default Fallback Intent',NULL,NULL,NULL,'input.unknown',NULL,0,0,0,0,1,0),(4,1,1,0,'Default Welcome Intent',NULL,'[\"defaultwelcomeintent-followup\"]',NULL,'input.welcome',NULL,0,0,0,0,1,0),(5,1,1,0,'order.drink',NULL,'[\"order.drink-followup\"]',NULL,'order.drink','[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]',0,0,0,0,1,0),(9,2,1,0,'Default Fallback Intent',NULL,NULL,NULL,NULL,NULL,1,0,0,0,1,0),(10,2,1,0,'Default Welcome Intent',NULL,NULL,NULL,NULL,NULL,0,0,0,0,1,0),(11,1,1,5,'order.drink - no','[\"order.drink-followup\"]',NULL,NULL,'order.drink.decline',NULL,0,0,0,0,1,1),(12,1,1,5,'order.drink - yes','[\"order.drink-followup\"]','[\"order.drink-yes-followup\"]',NULL,'order.drink.confirm',NULL,0,0,0,0,1,0),(13,1,1,12,'order.drink.same_card','[\"order.drink-yes-followup\"]',NULL,NULL,'order.drink.same_card',NULL,0,0,0,0,1,1),(14,1,1,12,'order.drink.different_card','[\"order.drink-yes-followup\"]',NULL,NULL,'',NULL,0,0,0,0,1,0);
/*!40000 ALTER TABLE `tblintents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblintentusersays`
--

DROP TABLE IF EXISTS `tblintentusersays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblintentusersays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intentid` int(11) NOT NULL,
  `usersay` text COLLATE utf8_unicode_ci,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `parse` longtext CHARACTER SET utf8,
  PRIMARY KEY (`id`,`intentid`),
  FULLTEXT KEY `search` (`usersay`)
) ENGINE=MyISAM AUTO_INCREMENT=526 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblintentusersays`
--

LOCK TABLES `tblintentusersays` WRITE;
/*!40000 ALTER TABLE `tblintentusersays` DISABLE KEYS */;
INSERT INTO `tblintentusersays` VALUES (496,4,'hello',NULL,'[[\"hello\",\"UH\"]]'),(495,4,'hi',NULL,'[[\"hi\",\"UH\"]]'),(494,4,'hey',NULL,'[[\"hey\",\"NN\"]]'),(514,5,'can i get a small iced latte with low fat milk','{\"10\":{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"low fat\"},\"11\":{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"iced\"},\"12\":{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"latte\"},\"13\":{\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"small\"}}',NULL),(516,5,'can i get a huge cup of macchiato','{\"15\":{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"macchiato\"}}',NULL),(510,5,'can i get tea','{\"3\":{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"tea\"}}',NULL),(511,5,'i\'d like a coffee to go','{\"4\":{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"coffee\"},\"5\":{\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"to go\"}}',NULL),(512,5,'can i get a small iced cappuccino with low fat milk','{\"6\":{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"low fat\"},\"7\":{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"iced\"},\"8\":{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"cappuccino\"}}',NULL),(513,5,'i need a cup of coffee','{\"9\":{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"coffee\"}}',NULL),(507,5,'i\'d like to order a drink','null',NULL),(508,5,'people need coffee','[{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"coffee\"}]',NULL),(509,5,'hot chocolate','{\"1\":{\"parameter_name\":\"topping\",\"entity\":\"@topping\",\"resolved_value\":\"chocolate\"},\"2\":{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"hot chocolate\"}}',NULL),(429,18,'not really',NULL,'[[\"not\",\"RB\"],[\"really\",\"RB\"]]'),(390,12,'yes',NULL,NULL),(389,12,'i agree',NULL,NULL),(525,11,'not interested',NULL,NULL),(524,11,'i don\'t want that',NULL,NULL),(523,11,'don\'t do it',NULL,NULL),(522,11,'thanks but no',NULL,NULL),(521,11,'no',NULL,NULL),(520,11,'definitely not',NULL,NULL),(519,11,'not really',NULL,NULL),(518,11,'i disagree',NULL,NULL),(517,11,'i don\'t think so',NULL,NULL),(388,12,'exactly',NULL,NULL),(387,12,'do it',NULL,NULL),(386,12,'i don\'t mind',NULL,NULL),(385,12,'of course',NULL,NULL),(384,12,'confirm',NULL,NULL),(383,12,'sounds good',NULL,NULL),(382,12,'that\'s correct',NULL,NULL),(381,12,'sure',NULL,NULL),(427,18,'not interested',NULL,'[[\"not\",\"RB\"],[\"interested\",\"JJ\"]]'),(506,13,'sounds good',NULL,NULL),(505,13,'sure',NULL,NULL),(504,13,'same card',NULL,NULL),(503,13,'same',NULL,NULL),(502,13,'yes',NULL,NULL),(501,13,'of course',NULL,NULL),(500,13,'confirm',NULL,NULL),(499,13,'i don\'t mind',NULL,NULL),(498,13,'do it',NULL,NULL),(497,13,'that\'s correct',NULL,NULL),(515,5,'some tea please','{\"14\":{\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"tea\"}}',NULL),(428,18,'definitely not',NULL,'[[\"definitely\",\"RB\"],[\"not\",\"RB\"]]'),(426,18,'don\'t do it',NULL,'[[\"do\",\"VBP\"],[\"n\'t\",\"RB\"],[\"do\",\"VB\"],[\"it\",\"PRP\"]]'),(425,18,'i don\'t want that',NULL,'[[\"I\",\"PRP\"],[\"do\",\"VBP\"],[\"n\'t\",\"RB\"],[\"want\",\"VB\"],[\"that\",\"DT\"]]'),(408,17,'same card',NULL,'[[\"same\",\"JJ\"],[\"card\",\"NN\"]]'),(409,17,'the same',NULL,'[[\"the\",\"DT\"],[\"same\",\"JJ\"]]'),(410,17,'i agree',NULL,'[[\"I\",\"PRP\"],[\"agree\",\"VBP\"]]'),(411,17,'confirm',NULL,'[[\"confirm\",\"VB\"]]'),(412,17,'i don\'t mind',NULL,'[[\"I\",\"PRP\"],[\"do\",\"VBP\"],[\"n\'t\",\"RB\"],[\"mind\",\"VB\"]]'),(413,17,'sure',NULL,'[[\"sure\",\"RB\"]]'),(414,17,'same',NULL,'[[\"same\",\"JJ\"]]'),(415,17,'of course',NULL,'[[\"of\",\"IN\"],[\"course\",\"NN\"]]'),(416,17,'sounds good',NULL,'[[\"sounds\",\"NNS\"],[\"good\",\"JJ\"]]'),(417,17,'exactly',NULL,'[[\"exactly\",\"RB\"]]'),(430,18,'thanks but no',NULL,'[[\"thanks\",\"NNS\"],[\"but\",\"CC\"],[\"no\",\"DT\"]]'),(431,18,'no',NULL,'[[\"no\",\"DT\"]]'),(432,18,'i disagree',NULL,'[[\"I\",\"PRP\"],[\"disagree\",\"VBP\"]]'),(433,18,'i don\'t think so',NULL,'[[\"I\",\"PRP\"],[\"do\",\"VBP\"],[\"n\'t\",\"RB\"],[\"think\",\"VB\"],[\"so\",\"RB\"]]');
/*!40000 ALTER TABLE `tblintentusersays` ENABLE KEYS */;
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
INSERT INTO `tbloptions` VALUES (1,'dateformat','Y-m-d|%Y-%m-%d'),(2,'companyname',''),(3,'services','1'),(4,'maximum_allowed_ticket_attachments','4'),(5,'ticket_attachments_file_extensions','.jpg,.png,.pdf,.doc'),(6,'staff_access_only_assigned_departments','1'),(7,'use_knowledge_base','0'),(8,'smtp_email',''),(9,'smtp_password',''),(10,'smtp_port',''),(11,'smtp_host',''),(12,'smtp_email_charset','utf-8'),(13,'default_timezone','Europe/Belgrade'),(14,'clients_default_theme','echelon'),(15,'company_logo','logo.png'),(16,'tables_pagination_limit','25'),(17,'main_domain',''),(18,'allow_registration','1'),(19,'knowledge_base_without_registration','0'),(20,'email_signature',''),(21,'default_staff_role','1'),(22,'newsfeed_maximum_files_upload','10'),(23,'newsfeed_maximum_file_size','5'),(24,'contract_expiration_before','4'),(25,'invoice_prefix','INV-'),(26,'decimal_separator','.'),(27,'thousand_separator',','),(28,'currency_placement','before'),(29,'invoice_company_name',''),(30,'invoice_company_address',''),(31,'invoice_company_city',''),(32,'invoice_company_country_code',''),(33,'invoice_company_postal_code',''),(34,'invoice_company_phonenumber',''),(35,'view_invoice_only_logged_in','0'),(36,'invoice_number_format','1'),(37,'next_invoice_number','1'),(38,'cron_send_invoice_overdue_reminder','1'),(39,'active_language','english'),(40,'invoice_number_decrement_on_delete','1'),(41,'automatically_send_invoice_overdue_reminder_after','1'),(42,'automatically_resend_invoice_overdue_reminder_after','3'),(43,'expenses_auto_operations_hour','21'),(44,'survey_send_emails_per_cron_run','100'),(45,'delete_only_on_last_invoice','1'),(46,'delete_only_on_last_estimate','1'),(47,'create_invoice_from_recurring_only_on_paid_invoices','0'),(48,'allow_payment_amount_to_be_modified','1'),(49,'send_renewed_invoice_from_recurring_to_email','1'),(50,'rtl_support_client','0'),(51,'limit_top_search_bar_results_to','10'),(52,'estimate_prefix','EST-'),(53,'next_estimate_number','1'),(54,'estimate_number_decrement_on_delete','1'),(55,'estimate_number_format','1'),(56,'estimate_auto_convert_to_invoice_on_client_accept','1'),(57,'exclude_estimate_from_client_area_with_draft_status','1'),(58,'rtl_support_admin','0'),(59,'last_cron_run',''),(60,'show_sale_agent_on_estimates','1'),(61,'show_sale_agent_on_invoices','1'),(62,'predefined_terms_invoice',''),(63,'predefined_terms_estimate',''),(64,'default_task_priority','2'),(65,'dropbox_app_key',''),(66,'show_expense_reminders_on_calendar','1'),(67,'only_show_contact_tickets','1'),(68,'predefined_clientnote_invoice',''),(69,'predefined_clientnote_estimate',''),(70,'custom_pdf_logo_image_url',''),(71,'favicon','favicon.ico'),(72,'auto_backup_enabled','0'),(73,'invoice_due_after','30'),(74,'google_api_key',''),(75,'google_calendar_main_calendar',''),(76,'default_tax',''),(77,'show_invoices_on_calendar','1'),(78,'show_estimates_on_calendar','1'),(79,'show_contracts_on_calendar','1'),(80,'show_tasks_on_calendar','1'),(81,'show_customer_reminders_on_calendar','1'),(82,'auto_backup_every','7'),(83,'last_auto_backup',''),(84,'output_client_pdfs_from_admin_area_in_client_language','0'),(85,'show_lead_reminders_on_calendar','1'),(86,'aside_menu_active','{\"aside_menu_active\":[{\"name\":\"als_dashboard\",\"url\":\"\\/\",\"permission\":\"\",\"icon\":\"fa fa-tachometer\",\"id\":\"dashboard\"},{\"name\":\"als_clients\",\"url\":\"clients\",\"permission\":\"customers\",\"icon\":\"fa fa-users\",\"id\":\"customers\"},{\"name\":\"als_echelon\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cube\",\"id\":\"echelon\",\"children\":[{\"name\":\"als_echelon\",\"url\":\"echelon\",\"permission\":\"echelon\",\"icon\":\"fa fa-commenting\",\"id\":\"echelon\"},{\"name\":\"als_intents\",\"url\":\"intents\",\"permission\":\"intents\",\"icon\":\"fa fa-comments-o\",\"id\":\"intents\"},{\"name\":\"als_entities\",\"url\":\"entities\",\"permission\":\"entities\",\"icon\":\"fa fa-sitemap\",\"id\":\"entities\"}]},{\"name\":\"projects\",\"url\":\"projects\",\"permission\":\"\",\"icon\":\"fa fa-bars\",\"id\":\"projects\"},{\"name\":\"als_sales\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-balance-scale\",\"id\":\"sales\",\"children\":[{\"name\":\"proposals\",\"url\":\"proposals\",\"permission\":\"proposals\",\"icon\":\"\",\"id\":\"child-proposals\"},{\"name\":\"estimates\",\"url\":\"estimates\\/list_estimates\",\"permission\":\"estimates\",\"icon\":\"\",\"id\":\"child-estimates\"},{\"name\":\"invoices\",\"url\":\"invoices\\/list_invoices\",\"permission\":\"invoices\",\"icon\":\"\",\"id\":\"child-invoices\"},{\"name\":\"payments\",\"url\":\"payments\",\"permission\":\"payments\",\"icon\":\"\",\"id\":\"child-payments\"},{\"name\":\"items\",\"url\":\"invoice_items\",\"permission\":\"items\",\"icon\":\"\",\"id\":\"child-items\"}]},{\"name\":\"als_expenses\",\"url\":\"expenses\\/list_expenses\",\"permission\":\"expenses\",\"icon\":\"fa fa-heartbeat\",\"id\":\"expenses\"},{\"name\":\"support\",\"url\":\"tickets\",\"permission\":\"\",\"icon\":\"fa fa-ticket\",\"id\":\"tickets\"},{\"name\":\"als_contracts\",\"url\":\"contracts\",\"permission\":\"contracts\",\"icon\":\"fa fa-file\",\"id\":\"contracts\"},{\"name\":\"als_leads\",\"url\":\"leads\",\"permission\":\"is_staff_member\",\"icon\":\"fa fa-tty\",\"id\":\"leads\"},{\"name\":\"als_tasks\",\"url\":\"tasks\\/list_tasks\",\"permission\":\"\",\"icon\":\"fa fa-tasks\",\"id\":\"tasks\"},{\"name\":\"als_kb\",\"url\":\"#\",\"permission\":\"knowledge_base\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"knowledge-base\",\"children\":[{\"name\":\"als_all_articles\",\"url\":\"knowledge_base\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-all-articles\"},{\"name\":\"als_kb_groups\",\"url\":\"knowledge_base\\/manage_groups\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-groups\"}]},{\"name\":\"als_reports\",\"url\":\"#\",\"permission\":\"reports\",\"icon\":\"fa fa-area-chart\",\"id\":\"reports\",\"children\":[{\"name\":\"als_reports_sales_submenu\",\"url\":\"reports\\/sales\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-sales\"},{\"name\":\"als_reports_expenses\",\"url\":\"reports\\/expenses\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses\"},{\"name\":\"als_expenses_vs_income\",\"url\":\"reports\\/expenses_vs_income\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-expenses-vs-income\"},{\"name\":\"als_reports_leads_submenu\",\"url\":\"reports\\/leads\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-leads\"},{\"name\":\"als_kb_articles_submenu\",\"url\":\"reports\\/knowledge_base_articles\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-kb-articles\"}]},{\"name\":\"als_utilities\",\"url\":\"#\",\"permission\":\"\",\"icon\":\"fa fa-cogs\",\"id\":\"utilities\",\"children\":[{\"name\":\"als_media\",\"url\":\"utilities\\/media\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-media\"},{\"name\":\"bulk_pdf_exporter\",\"url\":\"utilities\\/bulk_pdf_exporter\",\"permission\":\"bulk_pdf_exporter\",\"icon\":\"\",\"id\":\"child-bulk-pdf-exporter\"},{\"name\":\"als_calendar_submenu\",\"url\":\"utilities\\/calendar\",\"permission\":\"\",\"icon\":\"\",\"id\":\"child-calendar\"},{\"name\":\"als_goals_tracking\",\"url\":\"goals\",\"permission\":\"goals\",\"icon\":\"\",\"id\":\"child-goals-tracking\"},{\"name\":\"als_surveys\",\"url\":\"surveys\",\"permission\":\"surveys\",\"icon\":\"\",\"id\":\"child-surveys\"},{\"name\":\"als_announcements_submenu\",\"url\":\"announcements\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-announcements\"},{\"name\":\"utility_backup\",\"url\":\"utilities\\/backup\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-database-backup\"},{\"id\":\"child-echelon-train\",\"name\":\"echelon_train\",\"url\":\"utilities\\/train\",\"permission\":\"is_admin\",\"icon\":\"\"},{\"name\":\"als_activity_log_submenu\",\"url\":\"utilities\\/activity_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"child-activity-log\"},{\"name\":\"ticket_pipe_log\",\"url\":\"utilities\\/pipe_log\",\"permission\":\"is_admin\",\"icon\":\"\",\"id\":\"ticket-pipe-log\"}]}]}'),(87,'estimate_expiry_reminder_enabled','1'),(88,'send_estimate_expiry_reminder_before','4'),(89,'leads_default_source',''),(90,'leads_default_status',''),(91,'proposal_expiry_reminder_enabled','1'),(92,'send_proposal_expiry_reminder_before','4'),(93,'default_contact_permissions','a:0:{}'),(94,'pdf_logo_width','150'),(95,'aside_menu_inactive','{\"aside_menu_inactive\":[]}'),(96,'setup_menu_active','{\"setup_menu_active\":[{\"permission\":\"staff\",\"name\":\"als_staff\",\"url\":\"staff\",\"icon\":\"\",\"id\":\"staff\"},{\"permission\":\"is_admin\",\"name\":\"clients\",\"url\":\"#\",\"icon\":\"\",\"id\":\"customers\",\"children\":[{\"permission\":\"\",\"name\":\"customer_groups\",\"url\":\"clients\\/groups\",\"icon\":\"\",\"id\":\"groups\"}]},{\"permission\":\"\",\"name\":\"support\",\"url\":\"#\",\"icon\":\"\",\"id\":\"tickets\",\"children\":[{\"permission\":\"is_admin\",\"name\":\"acs_departments\",\"url\":\"departments\",\"icon\":\"\",\"id\":\"departments\"},{\"permission\":\"is_admin\",\"name\":\"acs_ticket_predefined_replies_submenu\",\"url\":\"tickets\\/predifined_replies\",\"icon\":\"\",\"id\":\"predifined-replies\"},{\"permission\":\"is_admin\",\"name\":\"acs_ticket_priority_submenu\",\"url\":\"tickets\\/priorities\",\"icon\":\"\",\"id\":\"ticket-priority\"},{\"permission\":\"is_admin\",\"name\":\"acs_ticket_statuses_submenu\",\"url\":\"tickets\\/statuses\",\"icon\":\"\",\"id\":\"ticket-statuses\"},{\"permission\":\"is_admin\",\"name\":\"acs_ticket_services_submenu\",\"url\":\"tickets\\/services\",\"icon\":\"\",\"id\":\"services\"},{\"permission\":\"is_admin\",\"name\":\"spam_filters\",\"url\":\"tickets\\/spam_filters\",\"icon\":\"\",\"id\":\"spam-filters\"}]},{\"permission\":\"is_admin\",\"name\":\"acs_leads\",\"url\":\"#\",\"icon\":\"\",\"id\":\"leads\",\"children\":[{\"permission\":\"\",\"name\":\"acs_leads_sources_submenu\",\"url\":\"leads\\/sources\",\"icon\":\"\",\"id\":\"sources\"},{\"permission\":\"\",\"name\":\"acs_leads_statuses_submenu\",\"url\":\"leads\\/statuses\",\"icon\":\"\",\"id\":\"statuses\"},{\"permission\":\"\",\"name\":\"leads_email_integration\",\"url\":\"leads\\/email_integration\",\"icon\":\"\",\"id\":\"email-integration\"},{\"name\":\"web_to_lead\",\"permission\":\"is_admin\",\"icon\":\"\",\"url\":\"leads\\/forms\",\"id\":\"web-to-lead\"}]},{\"permission\":\"is_admin\",\"name\":\"acs_finance\",\"url\":\"#\",\"icon\":\"\",\"id\":\"finance\",\"children\":[{\"permission\":\"\",\"name\":\"acs_sales_taxes_submenu\",\"url\":\"taxes\",\"icon\":\"\",\"id\":\"taxes\"},{\"permission\":\"\",\"name\":\"acs_sales_currencies_submenu\",\"url\":\"currencies\",\"icon\":\"\",\"id\":\"currencies\"},{\"permission\":\"\",\"name\":\"acs_sales_payment_modes_submenu\",\"url\":\"paymentmodes\",\"icon\":\"\",\"id\":\"payment-modes\"},{\"permission\":\"\",\"name\":\"acs_expense_categories\",\"url\":\"expenses\\/categories\",\"icon\":\"\",\"id\":\"expenses-categories\"}]},{\"permission\":\"is_admin\",\"name\":\"acs_contracts\",\"url\":\"#\",\"icon\":\"\",\"id\":\"contracts\",\"children\":[{\"permission\":\"\",\"name\":\"acs_contract_types\",\"url\":\"contracts\\/types\",\"icon\":\"\",\"id\":\"contract-types\"}]},{\"permission\":\"email_templates\",\"name\":\"acs_email_templates\",\"url\":\"emails\",\"icon\":\"\",\"id\":\"email-templates\"},{\"permission\":\"is_admin\",\"name\":\"asc_custom_fields\",\"url\":\"custom_fields\",\"icon\":\"\",\"id\":\"custom-fields\"},{\"permission\":\"roles\",\"name\":\"acs_roles\",\"url\":\"roles\",\"icon\":\"\",\"id\":\"roles\"},{\"permission\":\"is_admin\",\"name\":\"menu_builder\",\"url\":\"#\",\"icon\":\"\",\"id\":\"menu-builder\",\"children\":[{\"permission\":\"\",\"name\":\"main_menu\",\"url\":\"utilities\\/main_menu\",\"icon\":\"\",\"id\":\"organize-sidebar\"},{\"permission\":\"is_admin\",\"name\":\"setup_menu\",\"url\":\"utilities\\/setup_menu\",\"icon\":\"\",\"id\":\"setup-menu\"}]},{\"name\":\"theme_style\",\"permission\":\"is_admin\",\"icon\":\"\",\"url\":\"utilities\\/theme_style\",\"id\":\"theme-style\"},{\"permission\":\"settings\",\"name\":\"acs_settings\",\"url\":\"settings\",\"icon\":\"\",\"id\":\"settings\"}]}'),(97,'access_tickets_to_none_staff_members','0'),(98,'setup_menu_inactive','{\"setup_menu_inactive\":[]}'),(99,'customer_default_country','196'),(100,'view_estimate_only_logged_in','0'),(101,'show_status_on_pdf_ei','1'),(102,'email_piping_only_replies','0'),(103,'email_piping_only_registered','0'),(104,'default_view_calendar','month'),(105,'email_piping_default_priority','2'),(106,'total_to_words_lowercase','0'),(107,'show_tax_per_item','1'),(108,'last_survey_send_cron',''),(109,'total_to_words_enabled','0'),(110,'receive_notification_on_new_ticket','1'),(111,'autoclose_tickets_after','0'),(112,'media_max_file_size_upload','10'),(113,'client_staff_add_edit_delete_task_comments_first_hour','0'),(114,'show_projects_on_calendar','1'),(115,'leads_kanban_limit','50'),(116,'tasks_reminder_notification_before','2'),(117,'pdf_font','freesans'),(118,'pdf_table_heading_color','#323a45'),(119,'pdf_table_heading_text_color','#ffffff'),(120,'pdf_font_size','10'),(121,'defaut_leads_kanban_sort','leadorder'),(122,'defaut_leads_kanban_sort_type','asc'),(123,'allowed_files','.gif,.png,.jpeg,.jpg,.pdf,.doc,.txt,.docx,.xls,.zip,.rar,.xls,.mp4'),(124,'show_all_tasks_for_project_member','1'),(125,'email_protocol','smtp'),(126,'calendar_first_day','0'),(127,'recaptcha_secret_key',''),(128,'show_help_on_setup_menu','1'),(129,'show_proposals_on_calendar','1'),(130,'smtp_encryption',''),(131,'recaptcha_site_key',''),(132,'smtp_username',''),(133,'auto_stop_tasks_timers_on_new_timer','0'),(134,'notification_when_customer_pay_invoice','1'),(135,'theme_style','[]'),(136,'calendar_invoice_color','#FF6F00'),(137,'calendar_estimate_color','#FF6F00'),(138,'calendar_proposal_color','#84c529'),(139,'calendar_task_color','#FC2D42'),(140,'calendar_reminder_color','#03A9F4'),(141,'calendar_contract_color','#B72974'),(142,'calendar_project_color','#B72974'),(143,'update_info_message',''),(144,'show_estimate_reminders_on_calendar','1'),(145,'show_invoice_reminders_on_calendar','1'),(146,'show_proposal_reminders_on_calendar','1'),(147,'proposal_due_after','7'),(148,'allow_customer_to_change_ticket_status','0'),(149,'lead_lock_after_convert_to_customer','0'),(150,'default_proposals_pipeline_sort','pipeline_order'),(151,'defaut_proposals_pipeline_sort_type','asc'),(152,'default_estimates_pipeline_sort','pipeline_order'),(153,'defaut_estimates_pipeline_sort_type','asc'),(154,'use_recaptcha_customers_area','0'),(155,'remove_decimals_on_zero','0'),(156,'remove_tax_name_from_item_table','0'),(157,'pdf_format_invoice','A4-PORTRAIT'),(158,'pdf_format_estimate','A4-PORTRAIT'),(159,'pdf_format_proposal','A4-PORTRAIT'),(160,'pdf_format_payment','A4-PORTRAIT'),(161,'pdf_format_contract','A4-PORTRAIT'),(162,'pdf_text_color','#000000'),(163,'auto_check_for_new_notifications','0'),(164,'swap_pdf_info','0'),(165,'exclude_invoice_from_client_area_with_draft_status','1'),(166,'cron_has_run_from_cli','0'),(167,'hide_cron_is_required_message','0'),(168,'auto_assign_customer_admin_after_lead_convert','1'),(169,'show_transactions_on_invoice_pdf','1'),(170,'show_pay_link_to_invoice_pdf','1'),(171,'tasks_kanban_limit','50'),(172,'purchase_key',''),(173,'estimates_pipeline_limit','50'),(174,'proposals_pipeline_limit','50'),(175,'proposal_number_prefix','PRO-'),(176,'number_padding_prefixes','6'),(177,'show_page_number_on_pdf','0'),(178,'calendar_events_limit','4'),(179,'show_setup_menu_item_only_on_hover','0'),(180,'company_requires_vat_number_field','1'),(181,'company_is_required','1'),(182,'allow_contact_to_delete_files','0'),(183,'company_vat',''),(184,'di','1519557893'),(185,'invoice_auto_operations_hour','21'),(186,'use_minified_files','1'),(187,'only_own_files_contacts','0'),(188,'allow_primary_contact_to_view_edit_billing_and_shipping','0'),(189,'estimate_due_after','7'),(190,'delete_backups_older_then','0'),(191,'staff_members_open_tickets_to_all_contacts','1'),(192,'paymentmethod_authorize_aim_active','0'),(193,'paymentmethod_authorize_aim_label','Authorize.net'),(194,'paymentmethod_authorize_aim_api_login_id',''),(195,'paymentmethod_authorize_aim_api_transaction_key',''),(196,'paymentmethod_authorize_aim_currencies','USD'),(197,'paymentmethod_authorize_aim_default_selected','1'),(198,'paymentmethod_authorize_aim_test_mode_enabled','0'),(199,'paymentmethod_authorize_aim_developer_mode_enabled','1'),(200,'paymentmethod_authorize_sim_active','0'),(201,'paymentmethod_authorize_sim_label','Authorize.net'),(202,'paymentmethod_authorize_sim_api_login_id',''),(203,'paymentmethod_authorize_sim_api_transaction_key',''),(204,'paymentmethod_authorize_sim_api_secret_key',''),(205,'paymentmethod_authorize_sim_currencies','USD'),(206,'paymentmethod_authorize_sim_default_selected','1'),(207,'paymentmethod_authorize_sim_test_mode_enabled','0'),(208,'paymentmethod_authorize_sim_developer_mode_enabled','1'),(209,'paymentmethod_mollie_active','0'),(210,'paymentmethod_mollie_label','Mollie'),(211,'paymentmethod_mollie_api_key',''),(212,'paymentmethod_mollie_currencies','EUR'),(213,'paymentmethod_mollie_default_selected','1'),(214,'paymentmethod_mollie_test_mode_enabled','1'),(215,'paymentmethod_paypal_braintree_active','0'),(216,'paymentmethod_paypal_braintree_label','Braintree'),(217,'paymentmethod_paypal_braintree_merchant_id',''),(218,'paymentmethod_paypal_braintree_api_public_key',''),(219,'paymentmethod_paypal_braintree_api_private_key',''),(220,'paymentmethod_paypal_braintree_currencies','USD'),(221,'paymentmethod_paypal_braintree_default_selected','1'),(222,'paymentmethod_paypal_braintree_test_mode_enabled','1'),(223,'paymentmethod_paypal_active','0'),(224,'paymentmethod_paypal_label','Paypal'),(225,'paymentmethod_paypal_username',''),(226,'paymentmethod_paypal_password',''),(227,'paymentmethod_paypal_signature',''),(228,'paymentmethod_paypal_currencies','EUR,USD'),(229,'paymentmethod_paypal_default_selected','1'),(230,'paymentmethod_paypal_test_mode_enabled','1'),(231,'paymentmethod_stripe_active','0'),(232,'paymentmethod_stripe_label','Stripe'),(233,'paymentmethod_stripe_api_secret_key',''),(234,'paymentmethod_stripe_api_publishable_key',''),(235,'paymentmethod_stripe_currencies','USD,CAD'),(236,'paymentmethod_stripe_default_selected','1'),(237,'paymentmethod_stripe_test_mode_enabled','1'),(238,'paymentmethod_two_checkout_active','0'),(239,'paymentmethod_two_checkout_label','2Checkout'),(240,'paymentmethod_two_checkout_account_number',''),(241,'paymentmethod_two_checkout_private_key',''),(242,'paymentmethod_two_checkout_publishable_key',''),(243,'paymentmethod_two_checkout_currencies','USD,EUR'),(244,'paymentmethod_two_checkout_default_selected','1'),(245,'paymentmethod_two_checkout_test_mode_enabled','1');
/*!40000 ALTER TABLE `tbloptions` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpermissions`
--

LOCK TABLES `tblpermissions` WRITE;
/*!40000 ALTER TABLE `tblpermissions` DISABLE KEYS */;
INSERT INTO `tblpermissions` VALUES (1,'Contracts','contracts'),(2,'Tasks','tasks'),(3,'Reports','reports'),(4,'Settings','settings'),(5,'Projects','projects'),(6,'Surveys','surveys'),(7,'Staff','staff'),(8,'Customers','customers'),(9,'Email Templates','email_templates'),(10,'Roles','roles'),(11,'Estimates','estimates'),(12,'Knowledge base','knowledge_base'),(13,'Proposals','proposals'),(14,'Goals','goals'),(15,'Expenses','expenses'),(16,'Bulk PDF Exporter','bulk_pdf_exporter'),(17,'Payments','payments'),(18,'Invoices','invoices'),(19,'Items','items');
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
INSERT INTO `tblsessions` VALUES ('o4a9u7sdsls6e3tqqgu97sl4iq65hii0','127.0.0.1',1519559142,'__ci_last_regenerate|i:1519559142;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-success|s:27:\"Backup is made successfully\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('hm0vubvq2g9soc2td4pkqh1b1tr4bapa','127.0.0.1',1519559559,'__ci_last_regenerate|i:1519559559;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('5hlp7u1v25br6tm85p84jh2taipu666o','127.0.0.1',1519559911,'__ci_last_regenerate|i:1519559911;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('1fbdsjvvgvljdt4pt2sg835bp6cnn3j5','127.0.0.1',1519560212,'__ci_last_regenerate|i:1519560212;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('s5858m8rupqt1v7vio5p7edfs8mktgpe','127.0.0.1',1519561829,'__ci_last_regenerate|i:1519561829;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('gmb9qt0gkb5vainivl45f72h3q7ivdhb','127.0.0.1',1519562236,'__ci_last_regenerate|i:1519562236;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('ghvpvv76lkk9sjn4kcnc9sjovvlnp64a','127.0.0.1',1519562549,'__ci_last_regenerate|i:1519562549;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hf8fg7vei0bmgfblm36o20eeu326uer1','127.0.0.1',1519563209,'__ci_last_regenerate|i:1519563209;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('duo5diehdpkm6gd8adi3kb386ksmkh87','127.0.0.1',1519563634,'__ci_last_regenerate|i:1519563634;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('65cilboe6vd5r8prunk69vj37uvk01ep','127.0.0.1',1519564043,'__ci_last_regenerate|i:1519564043;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('o06in4i62ftugkaoubgcn7m9b6vhdvbr','127.0.0.1',1519564366,'__ci_last_regenerate|i:1519564366;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('5b4l59nnlaj1l2463sdcrmma4f2ur54p','127.0.0.1',1519572494,'__ci_last_regenerate|i:1519572494;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('qa6cioekfap84s9s7kgoip54bjf6gki6','127.0.0.1',1519572831,'__ci_last_regenerate|i:1519572831;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('h2ebk7olet8hut824skcc701kan6vho5','127.0.0.1',1519573152,'__ci_last_regenerate|i:1519573152;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('jus6aohl14tu6sn9d4ni57uaugd6igh7','127.0.0.1',1519573545,'__ci_last_regenerate|i:1519573545;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('0inodclv51eqn2qnt3jh7eu3n9387cur','127.0.0.1',1519573918,'__ci_last_regenerate|i:1519573918;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('p5pq8u7io7uq2kl8hf5s4u9jv0hckbrp','127.0.0.1',1519574340,'__ci_last_regenerate|i:1519574340;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('kfv2674pbk1v0965vb2l3vmkdo191gpd','127.0.0.1',1519574647,'__ci_last_regenerate|i:1519574647;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2i1m7tp5n93g9jmklj68e9onenlkrhgp','127.0.0.1',1519575092,'__ci_last_regenerate|i:1519575092;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('6cd25po6kq2vnc1k2sk1ia23hqgfpdj5','127.0.0.1',1519575505,'__ci_last_regenerate|i:1519575505;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('1q19ps0mnf8omghpj54j8mfr6dv6egdg','127.0.0.1',1519575814,'__ci_last_regenerate|i:1519575814;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('6sff8qfj86tn4nph9qv5j0qkm0c0lsft','127.0.0.1',1519576142,'__ci_last_regenerate|i:1519576142;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('4r7g8fa9q1sbp0l9mbptmrpvtbpn4ig1','127.0.0.1',1519576727,'__ci_last_regenerate|i:1519576727;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('gsv9noghj5lahfgb46i631bdobrbfts9','127.0.0.1',1519577084,'__ci_last_regenerate|i:1519577084;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('lk6ug0jed05532jj0h9casnh5vefq71q','127.0.0.1',1519578318,'__ci_last_regenerate|i:1519578318;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('qahq2juslmb3i9q65tbqk6vtjvupehe5','127.0.0.1',1519578795,'__ci_last_regenerate|i:1519578795;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hool9hvh0rqotajga2acp3uhfv52ftpn','127.0.0.1',1519579371,'__ci_last_regenerate|i:1519579371;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('h5j208vf2eo2pnkcuo1kn8gn1f2mr5ol','127.0.0.1',1519580213,'__ci_last_regenerate|i:1519580213;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-success|s:28:\"Entities added successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('a2jdl5m1rmv72fds87hh3p4nr2n6dajl','127.0.0.1',1519580556,'__ci_last_regenerate|i:1519580556;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('3mvlf9fc12fhpe5f6vprrbkburn4q5tv','127.0.0.1',1519581130,'__ci_last_regenerate|i:1519581130;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-success|s:28:\"Entities added successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('a0val8ohht0gdgl57gjmfnebei0cmatn','127.0.0.1',1519581530,'__ci_last_regenerate|i:1519581530;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hf6tnn2s73rm0d26khuf5gvs110n2snh','127.0.0.1',1519581940,'__ci_last_regenerate|i:1519581940;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('h5l54d51c8a0dfrkh9sv2o08d6d5248l','127.0.0.1',1519582390,'__ci_last_regenerate|i:1519582390;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('7k237segplq930mre83h4on3hktomnkg','127.0.0.1',1519582772,'__ci_last_regenerate|i:1519582772;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2m5v94it0oq17nl8c8hbhumgtf4ktk8r','127.0.0.1',1519583527,'__ci_last_regenerate|i:1519583527;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('j9up5ah56fc6rgdcrhua6ep2vkic360d','127.0.0.1',1519583951,'__ci_last_regenerate|i:1519583951;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('5b2q8js2esca5fi39k6lhgp2i2v2lqgv','127.0.0.1',1519584701,'__ci_last_regenerate|i:1519584701;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2358defngpge2a5dimtb6c43e2rebrhn','127.0.0.1',1519585009,'__ci_last_regenerate|i:1519585009;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('ga25l3msokmt68c94604t0aveehasf3m','127.0.0.1',1519585335,'__ci_last_regenerate|i:1519585335;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('t8tbrui6v4cjnvr2eg366tv6vm9uh8aq','127.0.0.1',1519585645,'__ci_last_regenerate|i:1519585645;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hliaqt6gvi26qdivr65thlnljep0svit','127.0.0.1',1519585952,'__ci_last_regenerate|i:1519585952;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('o77na4333447b3iadd2de9r8bqp5tmf3','127.0.0.1',1519586322,'__ci_last_regenerate|i:1519586322;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('dhvdtjucm91j6t680bcos4qph2vs9ug5','127.0.0.1',1519586687,'__ci_last_regenerate|i:1519586687;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('eh6bqdusjbq9h79pun7409rjftalhprv','127.0.0.1',1519587008,'__ci_last_regenerate|i:1519587008;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('nn7q08rog1sq8sp9m0mvjc4g9s2j7qvb','127.0.0.1',1519587428,'__ci_last_regenerate|i:1519587428;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('7gprjcnce5vrhnvborett9endjpu013t','127.0.0.1',1519587924,'__ci_last_regenerate|i:1519587924;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-success|s:27:\"Intents added successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('68u17ocls6ss5o6a89cq1p8sghhm1s3f','127.0.0.1',1519588741,'__ci_last_regenerate|i:1519588741;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('u00r6a8gjr4j2ud79no5513qok2cjs9p','127.0.0.1',1519589087,'__ci_last_regenerate|i:1519589087;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('tqe196876cn4ua0ntn5m9rfk6opkl9tf','127.0.0.1',1519589410,'__ci_last_regenerate|i:1519589410;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('3jg9m5i1s5t46arujdnvqhao034m8n8u','127.0.0.1',1519589852,'__ci_last_regenerate|i:1519589852;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('e2fhc07jdor7cl7poqho1pg3il00ia0f','127.0.0.1',1519590168,'__ci_last_regenerate|i:1519590168;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('70r2t8m2dt3u8jvop3v02c8po5naomjh','127.0.0.1',1519594400,'__ci_last_regenerate|i:1519594400;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2j60qh53l9tak0jtfi1kr43diq04nufa','127.0.0.1',1519594733,'__ci_last_regenerate|i:1519594733;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('24fpuv6vh1nskqcht2c09rrrjp8hgfpo','127.0.0.1',1519595038,'__ci_last_regenerate|i:1519595038;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2eebjnmnpo9iid3jba8g2fa7raghv2cb','127.0.0.1',1519595760,'__ci_last_regenerate|i:1519595760;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('n3d3ai3870v3o75fhf6ti528hpav7s3k','127.0.0.1',1519596117,'__ci_last_regenerate|i:1519596117;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";message-success|s:27:\"Intents added successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('s19a2ueumkjllbv6ct6s0pveqphshqgk','127.0.0.1',1519596773,'__ci_last_regenerate|i:1519596773;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2f415qtm9pfdnmbak2bocclf0u2omsr9','127.0.0.1',1519597093,'__ci_last_regenerate|i:1519597093;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('uha6op1qbbhace9tj4oj063a2q301fli','127.0.0.1',1519597443,'__ci_last_regenerate|i:1519597443;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('0q59clld3de7v5snuar4fhmqtqebqjll','127.0.0.1',1519597762,'__ci_last_regenerate|i:1519597762;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('es17cdmig7ksbs3ts069kj77ijcbhuou','127.0.0.1',1519598262,'__ci_last_regenerate|i:1519598262;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('urku7gtoio2joe9a7ipkedpudik71jfe','127.0.0.1',1519599329,'__ci_last_regenerate|i:1519599329;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('oe2u0did52prkhf4f6mqs9duk441l6kk','127.0.0.1',1519599649,'__ci_last_regenerate|i:1519599649;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('53tu4lnss2pi01suu504aa44pn10l7as','127.0.0.1',1519601947,'__ci_last_regenerate|i:1519601947;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('3d9oulfrmka6tah5kmtnhbjjqb7us55a','127.0.0.1',1519602442,'__ci_last_regenerate|i:1519602442;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('6871e772v17r3irdjf0sj5vu3m4lpn0g','127.0.0.1',1519602839,'__ci_last_regenerate|i:1519602839;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('uf0okjjol88mg91a37did79ggf0rdmot','127.0.0.1',1519603182,'__ci_last_regenerate|i:1519603182;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('sjn48niaafjfr4uu7p6mvfisre3f2205','127.0.0.1',1519603652,'__ci_last_regenerate|i:1519603652;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('95kf4pmbtdcq7nobbf1mlmmcp8hccfl7','127.0.0.1',1519604034,'__ci_last_regenerate|i:1519604034;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('i33260s74tqmsrv8s364ci6unn8qo0it','127.0.0.1',1519604808,'__ci_last_regenerate|i:1519604808;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('p8fmfdtbn7luedgmj5jdjvov87mmimh1','127.0.0.1',1519605123,'__ci_last_regenerate|i:1519605123;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('b26qrde36nd7ivf1n4eltt9ivpel1p8e','127.0.0.1',1519605466,'__ci_last_regenerate|i:1519605466;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('qg9dgqmjujplnh50ek2ok0rc89lf9eh0','127.0.0.1',1519605828,'__ci_last_regenerate|i:1519605828;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2kdsihq0ibn673p5cufncj4iusgqg8rh','127.0.0.1',1519606134,'__ci_last_regenerate|i:1519606134;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('8eldmifiqmcegc2vk5gl1vmnkjia3i7n','127.0.0.1',1519606511,'__ci_last_regenerate|i:1519606511;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('cj139dlnollshneh8tjdmdg8jpvvd4sk','127.0.0.1',1519606818,'__ci_last_regenerate|i:1519606818;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('061621kpp66h4qq9hski2o8qpgpv32cr','127.0.0.1',1519607121,'__ci_last_regenerate|i:1519607121;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('6r1eu392qcaijchu9lsbipeolvr886sc','127.0.0.1',1519607730,'__ci_last_regenerate|i:1519607730;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3vrkrr8bn8pn29kd6qdgnkson7jciavm','127.0.0.1',1519608040,'__ci_last_regenerate|i:1519608040;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('5sed19l5otifjo16m2nin3qoqfl1itg0','127.0.0.1',1519608351,'__ci_last_regenerate|i:1519608351;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('0lrs3jam43vk1bfqq4pa7v6a52smbpt4','127.0.0.1',1519608904,'__ci_last_regenerate|i:1519608904;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('kpfjk184mafjd85b3kgu8e02vef5npmu','127.0.0.1',1519609238,'__ci_last_regenerate|i:1519609238;'),('r6tgda5anhsf7tem60r86np7pt6i3u9k','127.0.0.1',1519609549,'__ci_last_regenerate|i:1519609549;'),('dcko9bvn1fubsse6m9skcj8hmbkrnqqf','127.0.0.1',1519613815,'__ci_last_regenerate|i:1519613815;'),('0tefnpduidudg6lr8ntb3jff4mbssel3','127.0.0.1',1519614302,'__ci_last_regenerate|i:1519614302;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('a8k1f1pognputbi92fbro30nctak75mp','127.0.0.1',1519614659,'__ci_last_regenerate|i:1519614659;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cchku1h7c542irq4d355e6qgurps09pn','127.0.0.1',1519615085,'__ci_last_regenerate|i:1519615085;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('4fch8f7f2dcdfka9mrper4ags23lbvgb','127.0.0.1',1519615454,'__ci_last_regenerate|i:1519615454;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('7sqdkvn1u826u8kkfpqv8d4bnojs1no8','127.0.0.1',1519615781,'__ci_last_regenerate|i:1519615781;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gld49rqdqlt1srf861ag224cp5asnbe8','127.0.0.1',1519616082,'__ci_last_regenerate|i:1519616082;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('npi7ukq5cl3eovushph89f2p3nvjm133','127.0.0.1',1519616539,'__ci_last_regenerate|i:1519616539;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('20dhffev0s3gb1i0bl232luui2fh677j','127.0.0.1',1519616848,'__ci_last_regenerate|i:1519616848;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('iu6iu85d4ce5u4hq7jc7d6ja6089js84','127.0.0.1',1519617162,'__ci_last_regenerate|i:1519617162;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('2gidpuh5viivf5l7sejjvjaeubssg47a','127.0.0.1',1519618310,'__ci_last_regenerate|i:1519618310;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ah7vnrsr4p2gedn7g15iom790dg0vsq1','127.0.0.1',1519618734,'__ci_last_regenerate|i:1519618734;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('s0cg4imh02bj5n6p9mfs3i40ofsnm960','127.0.0.1',1519619192,'__ci_last_regenerate|i:1519619192;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9f1t3feboms45cgo7inococpkm70asj8','127.0.0.1',1519619594,'__ci_last_regenerate|i:1519619594;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('uk3neg8etb262jq8psmdahd76p52gs1a','127.0.0.1',1519619902,'__ci_last_regenerate|i:1519619902;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fl44fbmn1eauo1k1ccgs2gjncjkq8cq3','127.0.0.1',1519620624,'__ci_last_regenerate|i:1519620624;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('a0ba2ph91f1hhvgj3siirlrgaek221bg','127.0.0.1',1519620926,'__ci_last_regenerate|i:1519620926;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ai4qt8moo3p9654ms80es7h1gcavcetb','127.0.0.1',1519621412,'__ci_last_regenerate|i:1519621412;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('2e59n8qf83omj8h3rbklaram9el7kmtg','127.0.0.1',1519621773,'__ci_last_regenerate|i:1519621773;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ia04mc25ggbsd9cvjh2r1oc7m5994ipl','127.0.0.1',1519622100,'__ci_last_regenerate|i:1519622100;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('t8psjk26pgv9kkn3o606hb1gu89ug4lo','127.0.0.1',1519622552,'__ci_last_regenerate|i:1519622552;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('q18gogb2d9c4kp2tf3m89s6cn1hnue3k','127.0.0.1',1519622924,'__ci_last_regenerate|i:1519622924;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('d80c4a3lk0f33rdlkqokacvckrbs77ob','127.0.0.1',1519623258,'__ci_last_regenerate|i:1519623258;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ggfe7m99q3at0rs904ak2udbgomko5ir','127.0.0.1',1519623763,'__ci_last_regenerate|i:1519623763;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gk5nbh59s7m9o5hlfabq3n6jbdoqmusp','127.0.0.1',1519624233,'__ci_last_regenerate|i:1519624233;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('std8bvdpgen1leoffcu6gj87o1h2nbq1','127.0.0.1',1519624635,'__ci_last_regenerate|i:1519624635;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cm87j3g2mf9s2tfjilcav5vgjubka83r','127.0.0.1',1519625001,'__ci_last_regenerate|i:1519625001;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('glqd33p27srgph7cb5gm5lueubic85uv','127.0.0.1',1519625394,'__ci_last_regenerate|i:1519625394;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('75u0sm9aflc1mq5mpa9ivv4drj4ilg9f','127.0.0.1',1519625697,'__ci_last_regenerate|i:1519625697;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('83jj5qmnb654krj8arsili36n1a82352','127.0.0.1',1519626105,'__ci_last_regenerate|i:1519626105;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('hetsifhojd16kkhumemtu8o0vi789mj3','127.0.0.1',1519626442,'__ci_last_regenerate|i:1519626442;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('hs4ne6btlfpu2565l0rjkud682bcs6iq','127.0.0.1',1519626926,'__ci_last_regenerate|i:1519626926;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('pdm674odd9f00heu41mp91bv01dtska0','127.0.0.1',1519627272,'__ci_last_regenerate|i:1519627272;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('n740aa71sd81ug9s0jppml0sgj6u0cmh','127.0.0.1',1519627580,'__ci_last_regenerate|i:1519627580;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('s1ojci4uh37j3p4ju4tc0jsltn62kuhr','127.0.0.1',1519628374,'__ci_last_regenerate|i:1519628374;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('90153ht2bkhj73ip5g90lle9lop73t1q','127.0.0.1',1519628694,'__ci_last_regenerate|i:1519628694;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('nvch55365tf8hg7j9m98v7u5pemcl47e','127.0.0.1',1519629148,'__ci_last_regenerate|i:1519629148;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('saqe63i7vvb3e7ad10gdbtp5aetg33g4','127.0.0.1',1519629456,'__ci_last_regenerate|i:1519629456;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ljvqpekh2id2j5tr4jm1us8aik242gbe','127.0.0.1',1519629848,'__ci_last_regenerate|i:1519629848;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9bu8gmqo1biqas2veul11dsj9732tdk1','127.0.0.1',1519630173,'__ci_last_regenerate|i:1519630173;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('d6rpql0l39p7uu9r1gdih1jp4kvbddg3','127.0.0.1',1519630627,'__ci_last_regenerate|i:1519630627;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('jpmff64g83gmhadc50r0hlh9e3a4ucrc','127.0.0.1',1519630957,'__ci_last_regenerate|i:1519630957;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('scfaeq7f2sdkojqun5dnttms4fi0oglr','127.0.0.1',1519631495,'__ci_last_regenerate|i:1519631495;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('o522k82u9uiitf9hplolt8jskveml7kl','127.0.0.1',1519631796,'__ci_last_regenerate|i:1519631796;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('v2ib2pk70pqq4isrtb7j2teo98b5momn','127.0.0.1',1519632448,'__ci_last_regenerate|i:1519632448;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('509sb2ruj59j0a1e516lenaphrd5fq2b','127.0.0.1',1519632897,'__ci_last_regenerate|i:1519632897;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('odu7174rssf4pgjemijusesqkuosail6','127.0.0.1',1519633292,'__ci_last_regenerate|i:1519633292;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('m01q2m2gpll9f9m3h5nfjo0r71lajdcu','127.0.0.1',1519633663,'__ci_last_regenerate|i:1519633663;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('rpl1rs29t56kp2tc9dk61beua08mb590','127.0.0.1',1519634004,'__ci_last_regenerate|i:1519634004;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ujlrgbijiqtetjgfh7vbcb8idne97efm','127.0.0.1',1519634330,'__ci_last_regenerate|i:1519634330;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('tqd33jtfm5vfcm0kscuu3ba5ckjnhrir','127.0.0.1',1519634631,'__ci_last_regenerate|i:1519634631;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"new\";}'),('6si731c6ui5id16v28hans8mnhj80vkb','127.0.0.1',1519634937,'__ci_last_regenerate|i:1519634937;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qn7e7vi6bartb4vg659u5kjefva25521','127.0.0.1',1519635452,'__ci_last_regenerate|i:1519635452;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('prqikorkfc2cdb5cmin3nch0isk1030f','127.0.0.1',1519635810,'__ci_last_regenerate|i:1519635810;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('t6o1o9bpmp7f3i3vfpqp87ekk4068em8','127.0.0.1',1519636137,'__ci_last_regenerate|i:1519636137;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('db5hujbdcuelob80300sta7t04ldpnmq','127.0.0.1',1519636504,'__ci_last_regenerate|i:1519636504;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('5p2q93l5gdv04esk6k1eeetg7iaivq6b','127.0.0.1',1519636848,'__ci_last_regenerate|i:1519636848;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('migujl5ljah1kad7jrh0b01k441bh4hr','127.0.0.1',1519637704,'__ci_last_regenerate|i:1519637704;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('6tvvdglml0avb2sbg7rso3ccrioo3d3i','127.0.0.1',1519638026,'__ci_last_regenerate|i:1519638026;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('to01hn2g9souvcqo2tcnr8q5biimnp7f','127.0.0.1',1519638672,'__ci_last_regenerate|i:1519638672;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('l852j1pf0pr3138iaq6crq71ndgtbqef','127.0.0.1',1519639003,'__ci_last_regenerate|i:1519639003;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('aq160qk25ur7he91981hges8f7pnooue','127.0.0.1',1519642656,'__ci_last_regenerate|i:1519642656;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('aboef87asmscd0uhsvpkjkm6onsn1sop','127.0.0.1',1519642980,'__ci_last_regenerate|i:1519642980;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('k11hksiu69qlo8ss9crj61i3scor4ch9','127.0.0.1',1519643353,'__ci_last_regenerate|i:1519643353;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ga735l5pumh69kn4je8eloa2nu6i81vi','127.0.0.1',1519643660,'__ci_last_regenerate|i:1519643660;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('q53lcdcmm8gi65g8d8ed293tk32g53lj','127.0.0.1',1519644593,'__ci_last_regenerate|i:1519644593;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('n3i27o9torull50ni1jketk13ts2tuuh','127.0.0.1',1519645023,'__ci_last_regenerate|i:1519645023;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('o5sr8u2igohh64hm9vfnhqr7eo78pmth','127.0.0.1',1519645422,'__ci_last_regenerate|i:1519645422;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('u8d5aieo92a8lof2qsi3am92sbkgqe1v','127.0.0.1',1519646228,'__ci_last_regenerate|i:1519646228;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('o35mdqpahvshdt1lna7jdckvtef1as2f','127.0.0.1',1519646637,'__ci_last_regenerate|i:1519646637;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1onb2he5mtm6gv7t164d7tc3asl7ccua','127.0.0.1',1519647049,'__ci_last_regenerate|i:1519647049;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('tcbuboc3fqblmr7japg48t6obohh712b','127.0.0.1',1519647883,'__ci_last_regenerate|i:1519647883;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('lit6kv4eoqnba9va4h1nmme819cq27fk','127.0.0.1',1519650828,'__ci_last_regenerate|i:1519650828;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('663igv2jki4rct07oih2ligl6rv60f9s','127.0.0.1',1519673527,'__ci_last_regenerate|i:1519673527;'),('v0unsn9ihn72q3i8l9de06ht9db8vf9m','127.0.0.1',1519674090,'__ci_last_regenerate|i:1519674090;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('kdh3k87scc77cl43i8r3d4bgv51ds006','127.0.0.1',1519674459,'__ci_last_regenerate|i:1519674459;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('f6ej60ifb69tjpa3kef3ahhrp4r79t3r','127.0.0.1',1519675213,'__ci_last_regenerate|i:1519675213;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('bi9ml69prf8qksb5sgvhmland6vamhrk','127.0.0.1',1519675915,'__ci_last_regenerate|i:1519675915;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('sqrtd8s8isl9pn9pfbtlu9kld9oncqan','127.0.0.1',1519676315,'__ci_last_regenerate|i:1519676315;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('gjr56mkafl1nr74c7gprvkia1bvp1acm','127.0.0.1',1519676647,'__ci_last_regenerate|i:1519676647;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('5ki9ajouims1sg485s67sl1jlv7g44l2','127.0.0.1',1519676995,'__ci_last_regenerate|i:1519676995;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9vkcpmm95ehdk3025nbf37e1ifrh8lsp','127.0.0.1',1519677306,'__ci_last_regenerate|i:1519677306;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('49i18ec7n5iqmvejftfqfovclb1vkdh6','127.0.0.1',1519677933,'__ci_last_regenerate|i:1519677933;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('d9lffo9vffrpr5r5k4v2kgjtsn17bk1r','127.0.0.1',1519678738,'__ci_last_regenerate|i:1519678738;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('k94jvitg5kt6tn4rfbdl0n66gai3ut8o','127.0.0.1',1519678783,'__ci_last_regenerate|i:1519678783;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('td42u92svei1lg1ijpl9dedqfbm2j6oi','127.0.0.1',1519679433,'__ci_last_regenerate|i:1519679433;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('f53oe545ss99f59ehlu3itqkfbp5f30e','127.0.0.1',1519679215,'__ci_last_regenerate|i:1519679215;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('upfr1go3di898umqb76d1a68jj4brtaj','127.0.0.1',1519679846,'__ci_last_regenerate|i:1519679846;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5oi9efmtutrdj6v6clfqureoohgci561','127.0.0.1',1519679834,'__ci_last_regenerate|i:1519679834;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:16:\"Settings Updated\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('1upr6beukfim2824gk45dfi85fsfl4q7','127.0.0.1',1519684401,'__ci_last_regenerate|i:1519684401;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;message-success|s:16:\"Settings Updated\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('3jafa3m3hhi5nkdib6q59vsf9lr31qm6','127.0.0.1',1519680280,'__ci_last_regenerate|i:1519680280;'),('dqr2ig4g3h4g940h2bn8lc0f865lj9id','127.0.0.1',1519680699,'__ci_last_regenerate|i:1519680699;'),('8p75855iqi58evl0licgqviighh4og92','127.0.0.1',1519681192,'__ci_last_regenerate|i:1519681192;'),('snfrt323nsni31ubmbdebfj1tph8ml5v','127.0.0.1',1519681707,'__ci_last_regenerate|i:1519681707;'),('nkb9loo1qhtgjqif4tgif0ic049m8qb0','127.0.0.1',1519682581,'__ci_last_regenerate|i:1519682581;'),('lm48vaqrplv890o9j50lt7a3mmf5ohlg','127.0.0.1',1519682932,'__ci_last_regenerate|i:1519682932;'),('8f9nt8c9knvbbnhh6h3brig9nl1b06g8','127.0.0.1',1519683236,'__ci_last_regenerate|i:1519683236;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ggm26tv30b81anaphsf2gvnhbalk72c9','127.0.0.1',1519683575,'__ci_last_regenerate|i:1519683575;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('te3v3uios6h8egn779l5b6omn7sph2br','127.0.0.1',1519684303,'__ci_last_regenerate|i:1519684303;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('je1569llmv84b49fg4rsf89v6gsiirhn','127.0.0.1',1519688842,'__ci_last_regenerate|i:1519688842;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('9sr3h1r92ggjl3g707qb4i9beb6pmbi2','127.0.0.1',1519684764,'__ci_last_regenerate|i:1519684764;'),('4jtkp4oubr4u5nkcq27rebc0s9pjr3gt','127.0.0.1',1519685067,'__ci_last_regenerate|i:1519685067;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3q2d5f3tsm8iglugm6gqb7lbc5qe2plr','127.0.0.1',1519685405,'__ci_last_regenerate|i:1519685405;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8q2807nvjkijnsddhsd0g6pn09lbf1kq','127.0.0.1',1519685750,'__ci_last_regenerate|i:1519685750;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('v2l7kbqvrsev97o10qh9us2hoh6j291m','127.0.0.1',1519686174,'__ci_last_regenerate|i:1519686174;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('maeokhn6lfrv23v5uqd5nad7uvn5vi3b','127.0.0.1',1519686515,'__ci_last_regenerate|i:1519686515;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('bt0ovqctoj9gtn66fh67mmetlp8h63ck','127.0.0.1',1519686844,'__ci_last_regenerate|i:1519686844;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('pgl0traoe0405mjv91l14fd3t4akq17e','127.0.0.1',1519687292,'__ci_last_regenerate|i:1519687292;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vmcp7rr5ffvvf05it471n9s5tint35eb','127.0.0.1',1519687641,'__ci_last_regenerate|i:1519687641;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('9vl95ilqs14ieneatucse9mknuuujuo7','127.0.0.1',1519688038,'__ci_last_regenerate|i:1519688038;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('2cq3v26ft5mlb4k6np8qaa1s166mc23k','127.0.0.1',1519688377,'__ci_last_regenerate|i:1519688377;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('32q0v9r403tgl0rhr362tn0edpt2m3uj','127.0.0.1',1519688810,'__ci_last_regenerate|i:1519688810;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('p1bbci8559np70g7njv2u8o6p7jgghj5','127.0.0.1',1519689193,'__ci_last_regenerate|i:1519689193;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('bfu30pv278fe2tbk89sb7c51oqqkfma7','127.0.0.1',1519689628,'__ci_last_regenerate|i:1519689628;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('kag4d6dhc3lj7ej2r87t2v3qrp7vst6s','127.0.0.1',1519689526,'__ci_last_regenerate|i:1519689526;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kfgq0ijcs2v5ltp7m2inck4ktphuv7up','127.0.0.1',1519689939,'__ci_last_regenerate|i:1519689939;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8ummp0ndkrdeqqbecbgtbo6a45vvg694','127.0.0.1',1519691908,'__ci_last_regenerate|i:1519691908;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('lge0ogbg800lg42tevvssvagmbcvp7ka','127.0.0.1',1519690244,'__ci_last_regenerate|i:1519690244;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('uh0m254r5u9eopqsomsv2ikg0ikb9a0l','127.0.0.1',1519690594,'__ci_last_regenerate|i:1519690594;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('evub3etlre5uuodvfjq9skumlet46eku','127.0.0.1',1519690930,'__ci_last_regenerate|i:1519690930;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('o38riueqd57977983ktirv2bi51r4edr','127.0.0.1',1519691326,'__ci_last_regenerate|i:1519691326;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('04ik4c0k5bfon7mvr6tdk49m03k9nefc','127.0.0.1',1519691769,'__ci_last_regenerate|i:1519691769;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('dh4lompedl8gheqlhe3re1oboi7ua5c5','127.0.0.1',1519691811,'__ci_last_regenerate|i:1519691769;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('97bt561aqc6a0d0e6qb7d4g98lp40ecp','127.0.0.1',1519691909,'__ci_last_regenerate|i:1519691909;'),('n9efjvqrp640ua8gf7nklojia783hkn1','127.0.0.1',1519721446,'__ci_last_regenerate|i:1519721446;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('b3hlviib4b10pkqsscge2sdn8tbm7enc','127.0.0.1',1519721790,'__ci_last_regenerate|i:1519721790;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('h7c3oc3aen18ll60kkog9g7b935jau09','127.0.0.1',1519722143,'__ci_last_regenerate|i:1519722143;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('s9cg3euou9ngr6a32jben9cospunhr84','127.0.0.1',1519722555,'__ci_last_regenerate|i:1519722555;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('g1e3po9h7lld3goihk1dm8840t59vp8s','127.0.0.1',1519722955,'__ci_last_regenerate|i:1519722955;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('o29k049skvvmur9nnu78lisr9obb5rmp','127.0.0.1',1519723260,'__ci_last_regenerate|i:1519723260;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('hc71hf20vjfnkjhfv599d82pnum97qtq','127.0.0.1',1519723806,'__ci_last_regenerate|i:1519723806;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('eqdl4inof3d714gpgg6ug25r5b4fnv7j','127.0.0.1',1519724123,'__ci_last_regenerate|i:1519724123;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('f3vjaihito95tk3hg751k6g7cmek2fuu','127.0.0.1',1519724728,'__ci_last_regenerate|i:1519724728;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('o0krorosnt2khi6blcss4vc2fu4ts231','127.0.0.1',1519729735,'__ci_last_regenerate|i:1519729735;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('dt2em2812kmttoqivg3rj4006u33qrpf','127.0.0.1',1519730656,'__ci_last_regenerate|i:1519730656;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('r26hr160q4b51uhoi7tkrv8rnaitsde6','127.0.0.1',1519731194,'__ci_last_regenerate|i:1519731194;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('bim2i2irsnimbhiq970lv0070amig3c3','127.0.0.1',1519731174,'__ci_last_regenerate|i:1519731174;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('sbs57l09q1jc7iu810526gjemff9bg63','127.0.0.1',1519731482,'__ci_last_regenerate|i:1519731482;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('86g4vjqj0j0qtbomjkj1dkiaa3842l7i','127.0.0.1',1519731519,'__ci_last_regenerate|i:1519731519;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('keqdnrngan0rf61djdmklqvh0pgn6hfq','127.0.0.1',1519731804,'__ci_last_regenerate|i:1519731804;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('livrdbvajk7e21vg1f1seefppm6acpf4','127.0.0.1',1519732789,'__ci_last_regenerate|i:1519732789;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('9q2frvoms950k7bu75gjd7fc00n4tvuc','127.0.0.1',1519732356,'__ci_last_regenerate|i:1519732356;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vnapg8oqu4o07clghbgsaj841u4rsgit','127.0.0.1',1519732680,'__ci_last_regenerate|i:1519732680;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('7ekmk17sbl5vl5hepplcqg0cfrirptfq','127.0.0.1',1519732983,'__ci_last_regenerate|i:1519732983;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('3mb1k052iobahce28r8651dfltgejt6i','127.0.0.1',1519735616,'__ci_last_regenerate|i:1519735616;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('u79nm5jc141lppj8he959i21vjmorh4d','127.0.0.1',1519733352,'__ci_last_regenerate|i:1519733352;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('1rroams4mrq45rmr6rb7secccjh6fq2u','127.0.0.1',1519733675,'__ci_last_regenerate|i:1519733675;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('plvg9uo997grisikg8j6svl2mtcohcpm','127.0.0.1',1519734099,'__ci_last_regenerate|i:1519734099;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('e2ch1v2l641i87gnhp0esk221rhntpqa','127.0.0.1',1519734738,'__ci_last_regenerate|i:1519734738;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('08d31nhk4t25dn1e7vufu8h6vpt0aces','127.0.0.1',1519735161,'__ci_last_regenerate|i:1519735161;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('eu98uilbd8rnkll7lb91rkjinlthtfb9','127.0.0.1',1519735603,'__ci_last_regenerate|i:1519735603;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('u4425ilodi43ssghrjkt77fi67h9aao7','127.0.0.1',1519736592,'__ci_last_regenerate|i:1519736592;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('u4p0dvu3acvjpv86lo0klh9kb2e8663s','127.0.0.1',1519736581,'__ci_last_regenerate|i:1519736581;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('54p60pjkpj2lkfoa0mr0eq038mlcb64c','127.0.0.1',1519752269,'__ci_last_regenerate|i:1519752269;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ara74r37vdmtkvj0cobsgqiua339jvnf','127.0.0.1',1519736961,'__ci_last_regenerate|i:1519736961;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('aquo5qr5lbu3g2uo2dir18i8grg3jota','127.0.0.1',1519738914,'__ci_last_regenerate|i:1519738914;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('p9485srlgtmvaj1b8efffiun9l8hbcb7','127.0.0.1',1519752225,'__ci_last_regenerate|i:1519752225;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('n3mhrtvk3sfughh23sa6jqgdh7mff6eo','127.0.0.1',1519753104,'__ci_last_regenerate|i:1519753104;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('f6a7jf5ob2tlpkhj4s2n6ac6thkkf71p','127.0.0.1',1519754917,'__ci_last_regenerate|i:1519754917;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('f2gons6q6pop5u1lv14fcclnps5fsh9j','127.0.0.1',1519753595,'__ci_last_regenerate|i:1519753595;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('9l8gs7hf3ppmaumoujmmopapava1ullk','127.0.0.1',1519753906,'__ci_last_regenerate|i:1519753906;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('bjfbvth0s5r3824kc27ivkkb7c4s7dg1','127.0.0.1',1519754213,'__ci_last_regenerate|i:1519754213;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('6lshvem0dhl35ce5lijjod4n11rdksrd','127.0.0.1',1519754748,'__ci_last_regenerate|i:1519754748;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('mrmato1qv55009pu09fa4nl0cri7t3lt','127.0.0.1',1519755068,'__ci_last_regenerate|i:1519755068;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('57fcatk6lkfedpva8sabfhkje63vuv0v','127.0.0.1',1519760021,'__ci_last_regenerate|i:1519760021;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('pcq4eg3erbhm2pit0vdcek43mr1eoq01','127.0.0.1',1519755390,'__ci_last_regenerate|i:1519755390;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('fumv2njt54cn0anbd4dceub1q3o71rb4','127.0.0.1',1519755758,'__ci_last_regenerate|i:1519755758;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('iavjh10n3u80ji1p2iqaadc8dnoe4gd1','127.0.0.1',1519756101,'__ci_last_regenerate|i:1519756101;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/intent/12\";'),('6o8vle3ko8hvravffc844vviftlmh779','127.0.0.1',1519756427,'__ci_last_regenerate|i:1519756427;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('822bdl0gv1itid83g9lpa6k9dc0d5v89','127.0.0.1',1519756756,'__ci_last_regenerate|i:1519756756;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('fnvqphcee3sd66gql734sc95plf978l2','127.0.0.1',1519757095,'__ci_last_regenerate|i:1519757095;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('qk99qodut0njhd5undtphqajcu4s0jjd','127.0.0.1',1519757465,'__ci_last_regenerate|i:1519757465;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('t14qjjjc5ivsrgi04j1m27tqsb6ec0s5','127.0.0.1',1519757779,'__ci_last_regenerate|i:1519757779;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('f9p63mkfnk2jrc43a73pq8cqie6j9c26','127.0.0.1',1519758160,'__ci_last_regenerate|i:1519758160;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('hmmtt30hm3s8agdqk0o0ga9bg6asd4q6','127.0.0.1',1519758468,'__ci_last_regenerate|i:1519758468;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('0dqet4f90m8355et7qbn308r0vcempon','127.0.0.1',1519758873,'__ci_last_regenerate|i:1519758873;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('936inf0kldf8655e22l1024668c501gc','127.0.0.1',1519759177,'__ci_last_regenerate|i:1519759177;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('10a3g7mui1t5uugikj7aq5gl1iii4u6f','127.0.0.1',1519759505,'__ci_last_regenerate|i:1519759505;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('h7u0r0nqsncai87v81ji5bse8b9nbncf','127.0.0.1',1519759811,'__ci_last_regenerate|i:1519759811;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('sufbjod1livgm5tm9cghrvbn0pgul57o','127.0.0.1',1519760127,'__ci_last_regenerate|i:1519760127;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";message-warning|s:11:\"agent_exist\";__ci_vars|a:1:{s:15:\"message-warning\";s:3:\"new\";}'),('ed8tuq5uk8d65hlqmocrbs4p15tv2hp4','127.0.0.1',1519760898,'__ci_last_regenerate|i:1519760898;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('janietd4njn6lleqdc2l3f1fvnuejnop','127.0.0.1',1519760439,'__ci_last_regenerate|i:1519760439;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('5irlbucub6k7k6ms2u0o8er00nm69uvp','127.0.0.1',1519760766,'__ci_last_regenerate|i:1519760766;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('skllpju12v9hspdrmftk4bmd6ohodu0u','127.0.0.1',1519761155,'__ci_last_regenerate|i:1519761155;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('pt1filbfhdmpgcofj4aftn0ad9pv7ij2','127.0.0.1',1519761884,'__ci_last_regenerate|i:1519761884;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('25qadn83v6fa3utpqh595p03si4brlnr','127.0.0.1',1519761490,'__ci_last_regenerate|i:1519761490;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('0uj1fgb9bq0g3dgo0neoh3ebpk9oukf3','127.0.0.1',1519761966,'__ci_last_regenerate|i:1519761966;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('gv9r2pt7422qvc182kbsmr75jhgeo9fh','127.0.0.1',1519762991,'__ci_last_regenerate|i:1519762991;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('i6kti2d3hqlqh6sgv8932vh56oc1fv4f','127.0.0.1',1519762558,'__ci_last_regenerate|i:1519762558;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('5rfk4o6jp95mfhij46a26712anud17sm','127.0.0.1',1519762859,'__ci_last_regenerate|i:1519762859;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('4p28ivqshqe6th5a6f111rb8ae5a933g','127.0.0.1',1519763252,'__ci_last_regenerate|i:1519763252;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('l1k46ar0o8gibpm1eir4s14lr6538g25','127.0.0.1',1519763645,'__ci_last_regenerate|i:1519763645;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ao34ql3iide04r8ccvbt8bmr4uaq4nrv','127.0.0.1',1519763654,'__ci_last_regenerate|i:1519763654;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('a296tcafaq3dr00fb5r1qgnrpevhgf1c','127.0.0.1',1519773817,'__ci_last_regenerate|i:1519773817;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('v19qj1l9d00ebtnci3rfh2b4u88q17sd','127.0.0.1',1519766072,'__ci_last_regenerate|i:1519766072;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('ifej62tgemvk9g4csdr2ki5gctgo25oo','127.0.0.1',1519766374,'__ci_last_regenerate|i:1519766374;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('2aoe1li9nkhjd4r57h0avdntsprj9eg1','127.0.0.1',1519766775,'__ci_last_regenerate|i:1519766775;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('e7iaops9he585atiqdl82lnh7eqolo18','127.0.0.1',1519767505,'__ci_last_regenerate|i:1519767505;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('q91vi2jbqb1rbuavolc0tpv6lc9452oj','127.0.0.1',1519767935,'__ci_last_regenerate|i:1519767935;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('npljrvpv04vbeiaorcrk87q3s3v3ask8','127.0.0.1',1519768306,'__ci_last_regenerate|i:1519768306;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('fvglbp3jvpagdapnd958befk8m3bql7d','127.0.0.1',1519768798,'__ci_last_regenerate|i:1519768798;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('nmb3896geppr1r2pmlgkqm87aslo2v6r','127.0.0.1',1519769137,'__ci_last_regenerate|i:1519769137;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('45fmskia8v9ilapae9h8v9fv4jb7ssgr','127.0.0.1',1519769456,'__ci_last_regenerate|i:1519769456;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('mskka4ooibblg385b3hag0q1d9gkj0ai','127.0.0.1',1519769784,'__ci_last_regenerate|i:1519769784;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('e9626eej218qqg154irlsmo62mq2ckj3','127.0.0.1',1519770113,'__ci_last_regenerate|i:1519770113;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('s5n0ea394n25er0tdcbou7t0n9m7lsbo','127.0.0.1',1519770878,'__ci_last_regenerate|i:1519770878;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('b5rc2savij14uc0j2i2cm13l34g9r3r5','127.0.0.1',1519771407,'__ci_last_regenerate|i:1519771407;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('398b1ic8aukp9mi4ieak57fa8mmg0kg4','127.0.0.1',1519771726,'__ci_last_regenerate|i:1519771726;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('74qug5l7ruc05f97k7mqj4ila8eiocsf','127.0.0.1',1519772047,'__ci_last_regenerate|i:1519772047;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('5dt152s2oh7ul1eojt3aae01u77rjqd5','127.0.0.1',1519772365,'__ci_last_regenerate|i:1519772365;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('e43191fpjfripuqckf30cb95o0sshmj5','127.0.0.1',1519772901,'__ci_last_regenerate|i:1519772901;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('lvh1sfvm1pra5jj20fbkb2mjp0k72j8l','127.0.0.1',1519773251,'__ci_last_regenerate|i:1519773251;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('a3ski5nl2v9gpv6jflffdeao0hva1t3b','127.0.0.1',1519773566,'__ci_last_regenerate|i:1519773566;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;red_url|s:23:\"admin/intents/delete/22\";'),('6ml54mhfds276ooio2da18htejdas9vi','127.0.0.1',1519798790,'__ci_last_regenerate|i:1519798790;'),('ha7tjf390mfd065h2rnc24ptirlgt5ph','127.0.0.1',1519798760,'__ci_last_regenerate|i:1519798760;'),('brb8ipe8htc29fnmih4e7b9bfmkije78','127.0.0.1',1519804319,'__ci_last_regenerate|i:1519804319;'),('17lqkivjh3jm78q6oikd11s651mqhc6d','127.0.0.1',1519799179,'__ci_last_regenerate|i:1519799179;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fgqfn4bke324mr1cffo9938cis9014k3','127.0.0.1',1519799496,'__ci_last_regenerate|i:1519799496;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('e5kq06acnjeirjc1shphiglnp7o5gjtn','127.0.0.1',1519799837,'__ci_last_regenerate|i:1519799837;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('o1nhodl57s1f08kc3ppsc310mq7e4tb7','127.0.0.1',1519800160,'__ci_last_regenerate|i:1519800160;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vuhcj6bbbjo1golp58afhugv58jcb6q8','127.0.0.1',1519800508,'__ci_last_regenerate|i:1519800508;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('f5eqvguq4dq19t02pk0j4kvf824guf5c','127.0.0.1',1519800812,'__ci_last_regenerate|i:1519800812;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kverkbuqjsi8uhto2dokegl740mjk66s','127.0.0.1',1519801167,'__ci_last_regenerate|i:1519801167;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1khq02ablpndcbc836akasmabfh9e0al','127.0.0.1',1519801634,'__ci_last_regenerate|i:1519801634;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5n26tgcu1hbcjhuenekvccjh8m7v7v0l','127.0.0.1',1519801953,'__ci_last_regenerate|i:1519801953;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('7ahts12hcr5jont4r1n5r44e6kro2sog','127.0.0.1',1519802299,'__ci_last_regenerate|i:1519802299;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('31l8jutvr270ikf24pha01vv8530t2tl','127.0.0.1',1519802673,'__ci_last_regenerate|i:1519802673;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ilmv9vi9a5348pi49nec3v66913q7c6e','127.0.0.1',1519802999,'__ci_last_regenerate|i:1519802999;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('f8eo7md6kptjifl9ck1ou7e9aivcgc2s','127.0.0.1',1519803337,'__ci_last_regenerate|i:1519803337;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4dgljl0b1cmoevr34rqj523m4j6iivto','127.0.0.1',1519804314,'__ci_last_regenerate|i:1519804314;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('70c9ejt9er0rm826t24uamli7aahf266','127.0.0.1',1519804879,'__ci_last_regenerate|i:1519804879;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('e16b5srchib3jjp5loibdldm90oln8ec','127.0.0.1',1519810389,'__ci_last_regenerate|i:1519810389;'),('vn48hj5dgggbcbhm6lq3j7tbvpevscqm','127.0.0.1',1519805580,'__ci_last_regenerate|i:1519805580;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jr4vujdid9t4m5e1lbktjh6luai4dtr0','127.0.0.1',1519806005,'__ci_last_regenerate|i:1519806005;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('abmbn7n4liq27kpldtgc9bmqrv3bcmj8','127.0.0.1',1519806346,'__ci_last_regenerate|i:1519806346;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('9lh69t41njrr65el7u3e6ge7kb83g70a','127.0.0.1',1519806972,'__ci_last_regenerate|i:1519806972;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('2o1dsqe8nunudn71u40a99gr6mokfjs7','127.0.0.1',1519806741,'__ci_last_regenerate|i:1519806741;'),('9140r74dlfue4rer77ptccc5e1pogr71','127.0.0.1',1519806745,'__ci_last_regenerate|i:1519806745;'),('5m2p9rqdrbhs6vu00oe030ovuptegbdp','127.0.0.1',1519807471,'__ci_last_regenerate|i:1519807471;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('e9b2agprsfk1uvdbvmf2s6qtp0kvdr2u','127.0.0.1',1519807400,'__ci_last_regenerate|i:1519807400;'),('orc2qhs564q2mr6q1sfa4cfsupl1m54d','127.0.0.1',1519807854,'__ci_last_regenerate|i:1519807854;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('917tmutn3383v2og58d9p0h6opbsp4oh','127.0.0.1',1519807597,'__ci_last_regenerate|i:1519807597;'),('hip9uotbkgv973kip151cn6ie1d6ss56','127.0.0.1',1519807601,'__ci_last_regenerate|i:1519807601;'),('rib9e0bk94gi03geis5s81a8b7n1qhnu','127.0.0.1',1519807607,'__ci_last_regenerate|i:1519807607;'),('5so8jldp8g1sb11kup06dt2gii1usv90','127.0.0.1',1519807675,'__ci_last_regenerate|i:1519807675;'),('g1btu4ohrsb3vtfenfnvhf1c6djgpkdo','127.0.0.1',1519807720,'__ci_last_regenerate|i:1519807720;'),('rgchnmp69qur182099merf41ouunlkoh','127.0.0.1',1519807775,'__ci_last_regenerate|i:1519807775;'),('ihpep4ah5nqirm6p8r0a50e05um5aaf9','127.0.0.1',1519807778,'__ci_last_regenerate|i:1519807778;'),('eda76no71tnjattf5a723jo6kgjf9bib','127.0.0.1',1519807781,'__ci_last_regenerate|i:1519807781;'),('35i96g5rm3tgquvi3fpm92ufpe4jur6d','127.0.0.1',1519808161,'__ci_last_regenerate|i:1519808161;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('mmevq7vefki73djsfrrg8ee59um0nr0r','127.0.0.1',1519807859,'__ci_last_regenerate|i:1519807859;'),('v1t9i7595a28f8je5f51tohn2sjk8n49','127.0.0.1',1519807930,'__ci_last_regenerate|i:1519807930;'),('v3vvv4iegoi7hcshal5dcdd84k99asns','127.0.0.1',1519807980,'__ci_last_regenerate|i:1519807980;'),('nh7rdoeg9j9pmsho52qn9u762elgkeep','127.0.0.1',1519808111,'__ci_last_regenerate|i:1519808111;'),('qcs8gvmf21a0f8c1go60rltassjgchkv','127.0.0.1',1519808122,'__ci_last_regenerate|i:1519808122;'),('ui7nif3tpjm8o31lin209cshq9c4i6na','127.0.0.1',1519808537,'__ci_last_regenerate|i:1519808537;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('pe6am9va0l9sf3hj74a2fkouqq79rpah','127.0.0.1',1519808165,'__ci_last_regenerate|i:1519808165;'),('h1l7epk9ikb61n7enmhgj9tscsju8cqp','127.0.0.1',1519808196,'__ci_last_regenerate|i:1519808196;'),('qo0278h06frh2q3298ndv8n2t6oer2jf','127.0.0.1',1519808308,'__ci_last_regenerate|i:1519808308;'),('7odcbbn8u2l4gc896dblis2iaquj8oo9','127.0.0.1',1519808336,'__ci_last_regenerate|i:1519808336;'),('fid039bc0oa0ess7dehlupu957hld6u9','127.0.0.1',1519808450,'__ci_last_regenerate|i:1519808450;'),('qivruvfq2kbchqsunal2onsiri43o74i','127.0.0.1',1519809005,'__ci_last_regenerate|i:1519809005;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tqdvr3ggccjk6kaqm4go5d5ba1t5tl8l','127.0.0.1',1519808540,'__ci_last_regenerate|i:1519808540;'),('flioqefmkd5907igo4iclk4v9v8m0f89','127.0.0.1',1519808615,'__ci_last_regenerate|i:1519808615;'),('2u35qouthk80mk4dl2024l1hpim75k8l','127.0.0.1',1519808716,'__ci_last_regenerate|i:1519808716;'),('06jgv2qom4n563ftac3avhbchem5ch6j','127.0.0.1',1519808764,'__ci_last_regenerate|i:1519808764;'),('fmdftutrc1t1e304l28km1unvh15b7g6','127.0.0.1',1519809381,'__ci_last_regenerate|i:1519809381;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tob08qf7co7sb1b04648k9l6tdmhlpo5','127.0.0.1',1519809008,'__ci_last_regenerate|i:1519809008;'),('15rg1s5lisg5te30f74kv583sajs2rdv','127.0.0.1',1519809046,'__ci_last_regenerate|i:1519809046;'),('i9qhh9boum9tfp1vcon8v1627nlvm8lr','127.0.0.1',1519809071,'__ci_last_regenerate|i:1519809071;'),('c1370qi24nklb2gvq25kgug1i1hdphpk','127.0.0.1',1519809738,'__ci_last_regenerate|i:1519809738;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fn19f2m9duj8d85bbgbr83nfdtf445r2','127.0.0.1',1519810307,'__ci_last_regenerate|i:1519810307;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('obohssfjo021ed9ojfqlf68pu5l7l667','127.0.0.1',1519809847,'__ci_last_regenerate|i:1519809847;'),('6j0mfhl1lr4nk6h7hk9giiasgsd2cg6g','127.0.0.1',1519812865,'__ci_last_regenerate|i:1519812865;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('as377oa865t8pr175uh8b1cukoq7f3u5','127.0.0.1',1519810768,'__ci_last_regenerate|i:1519810768;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('g6oaadgqgvs8efd50sn7ns905c7f5174','127.0.0.1',1519811496,'__ci_last_regenerate|i:1519811496;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('p92irnjeu71frfs4f26otpecgt637g4l','127.0.0.1',1519813286,'__ci_last_regenerate|i:1519813286;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1scfhn4364hsl39gq7bn49nugotd44du','127.0.0.1',1519813281,'__ci_last_regenerate|i:1519813281;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('b61c3ns40gd4ip1h0j7g9fegtf62e07m','127.0.0.1',1519819783,'__ci_last_regenerate|i:1519819783;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('suk97o35b3kgf284ovmjc79dgid2f17p','127.0.0.1',1519813785,'__ci_last_regenerate|i:1519813785;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('6vj8hhh7r8fondos99svo97v7iqv5fjg','127.0.0.1',1519814800,'__ci_last_regenerate|i:1519814800;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4k40spqpl6fodfao3chqtgbd47f8embn','127.0.0.1',1519815159,'__ci_last_regenerate|i:1519815159;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ufa22mtpcs6k38qjklekbk2ob5p0q3qi','127.0.0.1',1519816251,'__ci_last_regenerate|i:1519816251;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('nat77ved084chs0afp9bjq7sjkc47i23','127.0.0.1',1519816623,'__ci_last_regenerate|i:1519816623;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('6acetkencmciill8trgddocvi744ajov','127.0.0.1',1519816992,'__ci_last_regenerate|i:1519816992;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('0h6cvhgnobbo7npo3qmi43dvg75k5p7a','127.0.0.1',1519817316,'__ci_last_regenerate|i:1519817316;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('41uer56b2qrlqpmmrs5lbcgh3nh40gu0','127.0.0.1',1519817858,'__ci_last_regenerate|i:1519817858;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('f1olu8khm980uutnpfk4ri24m5l2rmvh','127.0.0.1',1519818446,'__ci_last_regenerate|i:1519818446;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('76f9dfvd02g91nbdae79hqrhpro23vlu','127.0.0.1',1519821021,'__ci_last_regenerate|i:1519821021;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('c65sh77k30k33uend0ipesio56dls0u3','127.0.0.1',1519819466,'__ci_last_regenerate|i:1519819466;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vtbsr5i5r0470l7mluliks6q2hbh6ns0','127.0.0.1',1519820266,'__ci_last_regenerate|i:1519820266;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vb95sm9u60drv9s88c4svsciq5abtomm','127.0.0.1',1519819805,'__ci_last_regenerate|i:1519819804;'),('vi6ech2rt8di1edhumsn2pieg0l61vok','127.0.0.1',1519819836,'__ci_last_regenerate|i:1519819836;'),('0ud4n82r4uio2m1ru537pm5aramhkg4j','127.0.0.1',1519819917,'__ci_last_regenerate|i:1519819917;'),('o40af84uvaoflefk832kpgmoaj95fhp0','127.0.0.1',1519819921,'__ci_last_regenerate|i:1519819921;'),('e3cs2eqg37a1m0qle4bb0obc8vo3t87d','127.0.0.1',1519819933,'__ci_last_regenerate|i:1519819933;'),('qsjv92d3obmbebcr7k723c47ijf1mfd2','127.0.0.1',1519820002,'__ci_last_regenerate|i:1519820002;'),('jk472nqroa5737cv3tdamv9j8hebrvtn','127.0.0.1',1519820011,'__ci_last_regenerate|i:1519820011;'),('gst52hojirngmcoji6uh9g7kvkk61u0u','127.0.0.1',1519820043,'__ci_last_regenerate|i:1519820043;'),('k1cqoee9tpmhae17u4mcm8q00ja26n4b','127.0.0.1',1519820065,'__ci_last_regenerate|i:1519820065;'),('m5hnj2q16gf2s149osj0ktmq8n84sum8','127.0.0.1',1519820104,'__ci_last_regenerate|i:1519820104;'),('mfhbf056trr23cdvq56k2dkaq2acpnmg','127.0.0.1',1519820116,'__ci_last_regenerate|i:1519820116;'),('dcjjuljcrf9115k7gaug84hlih0n4642','127.0.0.1',1519820131,'__ci_last_regenerate|i:1519820131;'),('1m2c3rcfp7qh491u22903p5brpokb0kq','127.0.0.1',1519820135,'__ci_last_regenerate|i:1519820135;'),('tv72gqtiues65ht7al2uolt6v0lrglah','127.0.0.1',1519821195,'__ci_last_regenerate|i:1519821195;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('gskuvgi7pffelo0iq4d2p9q4d4ls2n76','127.0.0.1',1519820339,'__ci_last_regenerate|i:1519820339;'),('f6j8563jhjb7ecqmuaabgf8tg803va8v','127.0.0.1',1519820371,'__ci_last_regenerate|i:1519820371;'),('gdej6pglcammdhc5p8qf3lu68tnri9s9','127.0.0.1',1519820390,'__ci_last_regenerate|i:1519820390;'),('odhdt3rqvvcjtpse07segfn1b9643eug','127.0.0.1',1519820451,'__ci_last_regenerate|i:1519820451;'),('4qmriq1ico8vm6ceoa1m7lqvorarl5c2','127.0.0.1',1519820476,'__ci_last_regenerate|i:1519820476;'),('9s4noi8ufa3p7koa81p4sd2ig7rgvbot','127.0.0.1',1519820492,'__ci_last_regenerate|i:1519820492;'),('prksm5eolu2i9uko95iadu11ulhdbn1c','127.0.0.1',1519820535,'__ci_last_regenerate|i:1519820535;'),('ckpd36c70jo3ullt57bqqdv16pgt0hv0','127.0.0.1',1519820615,'__ci_last_regenerate|i:1519820615;'),('aifloqu6gtudv4c8i4i7bq8r33kuic7u','127.0.0.1',1519820630,'__ci_last_regenerate|i:1519820630;'),('702ulamfvlnv8e1idvi7t2oiip2roubu','127.0.0.1',1519820646,'__ci_last_regenerate|i:1519820646;'),('80l0r7tid8fo2epbee2965eck3l39h24','127.0.0.1',1519820660,'__ci_last_regenerate|i:1519820660;'),('hr0428akscoo0vnsp75ihikr82rf7n80','127.0.0.1',1519820683,'__ci_last_regenerate|i:1519820683;'),('j8rmdrfove9uc1qpih3f6fjpptdnpa0j','127.0.0.1',1519820708,'__ci_last_regenerate|i:1519820708;'),('nahffie6iclkm818ut48t0h2u16d24l9','127.0.0.1',1519820762,'__ci_last_regenerate|i:1519820762;'),('7hb0jpeg1nflpffanlmmrv6g542uj6un','127.0.0.1',1519820767,'__ci_last_regenerate|i:1519820767;'),('g059l1glf686h56tpl2gvlc0n78407r5','127.0.0.1',1519820838,'__ci_last_regenerate|i:1519820838;'),('fbou672k2saemlpusn9ui0ssu6no7952','127.0.0.1',1519821009,'__ci_last_regenerate|i:1519821009;'),('k8dt064ig0aap8jv15o4uq9ucmdfjq1h','127.0.0.1',1519826297,'__ci_last_regenerate|i:1519826297;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('mhbfq40981h53nkfs50i4lv4vsa4ljsm','127.0.0.1',1519821029,'__ci_last_regenerate|i:1519821029;'),('6vf0va0s8fasfpgaknm23ebkpmf2grnu','127.0.0.1',1519821050,'__ci_last_regenerate|i:1519821050;'),('jm2jbn8m6t71lr6ggc5i370dslelihls','127.0.0.1',1519821069,'__ci_last_regenerate|i:1519821069;'),('gn7mlcsr70tqmij0jb5jm2su5mjmnghu','127.0.0.1',1519821116,'__ci_last_regenerate|i:1519821116;'),('lj1tqc7ucabk7dreljltphcvi45fflip','127.0.0.1',1519821190,'__ci_last_regenerate|i:1519821190;'),('lutv3jipg06v1465tioibclu5et29rb0','127.0.0.1',1519825619,'__ci_last_regenerate|i:1519825619;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('q6ll7v1vk623g9r1a8qm6809rfpmlcgs','127.0.0.1',1519821203,'__ci_last_regenerate|i:1519821203;'),('vgiugqspcbadrr6sc2lk1trjh3fqk4dd','127.0.0.1',1519821365,'__ci_last_regenerate|i:1519821365;'),('8sj5f0i5ebdesco8ssudedc9tl17u868','127.0.0.1',1519821376,'__ci_last_regenerate|i:1519821376;'),('mbildnuogaflj3hlnoltbl3t2jgvd6g0','127.0.0.1',1519821518,'__ci_last_regenerate|i:1519821518;'),('ldioisohu45l3kd10er0f7c10q8a3hc5','127.0.0.1',1519821567,'__ci_last_regenerate|i:1519821567;'),('nk6ab027amgekijaba1m2n2ujp7shltb','127.0.0.1',1519821580,'__ci_last_regenerate|i:1519821580;'),('ehn3mhtoedmb7spagfe8cddu6oo13lfi','127.0.0.1',1519821617,'__ci_last_regenerate|i:1519821617;'),('t7it52494702uaaklgp8gcttsots5h65','127.0.0.1',1519821631,'__ci_last_regenerate|i:1519821631;'),('46q2sohp1uv0cilrl7ujrvioke6761kv','127.0.0.1',1519821657,'__ci_last_regenerate|i:1519821657;'),('4v42i0qni16pj9cdt15d4sdb2t4adk2b','127.0.0.1',1519821676,'__ci_last_regenerate|i:1519821676;'),('e0e9crvjpgs4acqd9db4r8h4f7b00870','127.0.0.1',1519821691,'__ci_last_regenerate|i:1519821691;'),('2lca1855836fknpmc3rgfk3o9fot2e6b','127.0.0.1',1519821739,'__ci_last_regenerate|i:1519821739;'),('5aqlhnmalvb48oflui4tk7vm00n51abn','127.0.0.1',1519824079,'__ci_last_regenerate|i:1519824078;'),('0udr9g0uecgtn46gh2qg919me17hlvc2','127.0.0.1',1519824095,'__ci_last_regenerate|i:1519824095;'),('1410c3uo46adtg7rou8nbv5tic0168tp','127.0.0.1',1519824181,'__ci_last_regenerate|i:1519824181;'),('nt5bltkb6aog1meq2gggcd1n25435qo9','127.0.0.1',1519824211,'__ci_last_regenerate|i:1519824211;'),('iocn16rl84gqsikpsnf1oarseh9deu5q','127.0.0.1',1519824446,'__ci_last_regenerate|i:1519824446;'),('8l5atncuq75mnh690tmkltq114iu9bjv','127.0.0.1',1519824460,'__ci_last_regenerate|i:1519824460;'),('c2bcq4gkribedr0uortkvrc2ch3cp42p','127.0.0.1',1519824469,'__ci_last_regenerate|i:1519824469;'),('9hve7taj2gp7h4oqn6llg1i8uorr7f79','127.0.0.1',1519824742,'__ci_last_regenerate|i:1519824742;'),('ouubi4j2fcp4ejoavnbg6spq3ufg7vb8','127.0.0.1',1519824868,'__ci_last_regenerate|i:1519824868;'),('c91aeauhbbm7310fdd35k5tr5k5aenpk','127.0.0.1',1519824959,'__ci_last_regenerate|i:1519824959;'),('4dv1vi4l576dsejch4mhfvqrls810ttk','127.0.0.1',1519824984,'__ci_last_regenerate|i:1519824984;'),('b27aod4j89sn5npbcu4r1kb4edsq41lq','127.0.0.1',1519824996,'__ci_last_regenerate|i:1519824996;'),('8hvv8vjncu2g1jhmj7k0jsbnm9isdpmu','127.0.0.1',1519825002,'__ci_last_regenerate|i:1519825002;'),('7qbrndb8k2l4i950dfipte8qk16lfrll','127.0.0.1',1519825014,'__ci_last_regenerate|i:1519825014;'),('rk49cueecpac0m64se89qbhasu3cl86t','127.0.0.1',1519825059,'__ci_last_regenerate|i:1519825059;'),('ln413msqm7uul9sc947ao6nerun6sb8k','127.0.0.1',1519825074,'__ci_last_regenerate|i:1519825074;'),('f86lvuc8so9fmghfoq99v40fcs0k4oj4','127.0.0.1',1519825087,'__ci_last_regenerate|i:1519825087;'),('l0u4s0vo6t2uqeo3bbci0fgjo6rrl6dl','127.0.0.1',1519825100,'__ci_last_regenerate|i:1519825099;'),('3lbb439b68d4mfrgnu0thhe5of2uslvp','127.0.0.1',1519825167,'__ci_last_regenerate|i:1519825167;'),('pehtad48q1t3km3jm5t191og8ek2r2ek','127.0.0.1',1519825177,'__ci_last_regenerate|i:1519825177;'),('5a0akg0u6al46kkcj3us42bdi3etec1n','127.0.0.1',1519825193,'__ci_last_regenerate|i:1519825193;'),('qf5tmjko6jb4akj6f71defja3gr7qbqo','127.0.0.1',1519825292,'__ci_last_regenerate|i:1519825292;'),('g3fa232e2isjk1nfpt9koghqnqqd2isf','127.0.0.1',1519828315,'__ci_last_regenerate|i:1519828315;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('imi0o6pulgh7qpep8dbkg6qenb9ucq38','127.0.0.1',1519826685,'__ci_last_regenerate|i:1519826685;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fm6ttcikv6nv0etvq8o26208ftfff29a','127.0.0.1',1519826991,'__ci_last_regenerate|i:1519826991;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1oo0b739unnhfojpoua809qd0h7hikln','127.0.0.1',1519827315,'__ci_last_regenerate|i:1519827315;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('47hucqn50q3f4kte2ju3no16gaos3j7h','127.0.0.1',1519827058,'__ci_last_regenerate|i:1519827058;red_url|s:23:\"admin/intents/intent/34\";'),('v6t5kb820t2u9fcfvr5lgvf51npkp7qu','127.0.0.1',1519827058,'__ci_last_regenerate|i:1519827058;'),('7leocn8auq25lu5s5u6geqfaqldom14i','127.0.0.1',1519827619,'__ci_last_regenerate|i:1519827619;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ka0vpts732ocnmcje2k1ko12lj40r6ue','127.0.0.1',1519828050,'__ci_last_regenerate|i:1519828050;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('n0otcpnq0hvkuetqvt0235c29nr0i0o6','127.0.0.1',1519829711,'__ci_last_regenerate|i:1519829711;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('i5g5av5umfs5itld8tbsfpd2r56hdnco','127.0.0.1',1519831993,'__ci_last_regenerate|i:1519831993;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vqdigl8bqbanpomr2so617qfnvp2f7mo','127.0.0.1',1519828330,'__ci_last_regenerate|i:1519828329;'),('pcm4li997em5kp1lobv40gnup66shmv7','127.0.0.1',1519828356,'__ci_last_regenerate|i:1519828356;'),('6gvqrs1tehm5ntd0rntai91r4ilde5vh','127.0.0.1',1519828412,'__ci_last_regenerate|i:1519828412;'),('8tosfbvqkt1sciaofv404rf3nseithc6','127.0.0.1',1519828492,'__ci_last_regenerate|i:1519828492;'),('2q00vuiph9nfodqvbkc6sbcuq2numsh0','127.0.0.1',1519828543,'__ci_last_regenerate|i:1519828543;'),('hqim22acht4p8pjmbusb6rao54a1rp8j','127.0.0.1',1519828879,'__ci_last_regenerate|i:1519828879;'),('fuk246hf27e334e5nsuv795nk0ckacdn','127.0.0.1',1519828972,'__ci_last_regenerate|i:1519828972;'),('n1a61lc6mh8q7jvcilh426smp7suc5va','127.0.0.1',1519829099,'__ci_last_regenerate|i:1519829098;'),('gptj9dmr407dh4pc4tiktl63ps3u46ek','127.0.0.1',1519829243,'__ci_last_regenerate|i:1519829243;'),('k389udtb3ctjdoq6i179bh5r5e7ko975','127.0.0.1',1519829289,'__ci_last_regenerate|i:1519829288;'),('1q5bpe7je0gr0s6dokv74ehukn8mkrrj','127.0.0.1',1519829305,'__ci_last_regenerate|i:1519829305;'),('qlrk23jbmm2rbcs10fru5cuvp6aggho4','127.0.0.1',1519829636,'__ci_last_regenerate|i:1519829636;'),('193sllr6ne6fi0pn8l4mt85qdm868t72','127.0.0.1',1519830158,'__ci_last_regenerate|i:1519830158;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('6t49g8rdoathsnd0cjskif1ldjck02i5','127.0.0.1',1519830002,'__ci_last_regenerate|i:1519830002;'),('f9dn2m0ac28ki0vf1ruui4p7q10sefe4','127.0.0.1',1519831899,'__ci_last_regenerate|i:1519831899;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('75tq1e31aungl90bt6fobi03m8tlqrv5','127.0.0.1',1519830401,'__ci_last_regenerate|i:1519830401;'),('bs7mmhvi69rq6ni5je4hdbfo617ls3fr','127.0.0.1',1519830577,'__ci_last_regenerate|i:1519830577;'),('dsq37oejdi6a863mg3gddomolaib8em8','127.0.0.1',1519830611,'__ci_last_regenerate|i:1519830610;'),('dfrcud1o4ate7svfile888suej4m8lq8','127.0.0.1',1519830689,'__ci_last_regenerate|i:1519830689;'),('2op04qk72nv6qqp6plm965r9utompbjp','127.0.0.1',1519830731,'__ci_last_regenerate|i:1519830731;'),('hi1n8m848rfdb5oqpq6bq6kokuo16om5','127.0.0.1',1519830746,'__ci_last_regenerate|i:1519830745;'),('oqi6oq71ffgr20o7ig1aol749b7gaakr','127.0.0.1',1519830868,'__ci_last_regenerate|i:1519830868;'),('rjspnbj43m0o00ledcujhcvf053nn5dr','127.0.0.1',1519830877,'__ci_last_regenerate|i:1519830877;'),('omqnd1spbue4ngk26l9qklgoqrl176ra','127.0.0.1',1519830934,'__ci_last_regenerate|i:1519830933;'),('98t6lk4v5d3erujk31njqomgg8lkn5i8','127.0.0.1',1519830939,'__ci_last_regenerate|i:1519830939;'),('h75i8541n02rud2jbel7d0hgfgihh86r','127.0.0.1',1519831096,'__ci_last_regenerate|i:1519831096;'),('4v6kemim5er45hd5g2o59mg9kb82fpbo','127.0.0.1',1519831207,'__ci_last_regenerate|i:1519831206;'),('egst7ov1r4b59p26gfekkl59r8rlrara','127.0.0.1',1519831214,'__ci_last_regenerate|i:1519831214;'),('klpcv100j8tcmkqs9f13e5luln2825v3','127.0.0.1',1519831244,'__ci_last_regenerate|i:1519831244;'),('b2o6pg1f783mrpmcmt7hf7i3onno47r6','127.0.0.1',1519831249,'__ci_last_regenerate|i:1519831249;'),('a33dotpdn6669of5fvfenkq05r3097tu','127.0.0.1',1519831307,'__ci_last_regenerate|i:1519831306;'),('9nrsofqe4t93ru4ujljhulbqpgqvt4e2','127.0.0.1',1519831329,'__ci_last_regenerate|i:1519831329;'),('9l3o9kpc25dvjanoea3flvpnl9m9p15j','127.0.0.1',1519831332,'__ci_last_regenerate|i:1519831332;'),('sljhh4bkok1dlhba8bpi8msrlossqkqr','127.0.0.1',1519831371,'__ci_last_regenerate|i:1519831371;'),('if71kelujggrf0v5ccppkb88afkjb6ge','127.0.0.1',1519831377,'__ci_last_regenerate|i:1519831377;'),('c94jlrd6maublrgo9b8p5o98rokt609f','127.0.0.1',1519831387,'__ci_last_regenerate|i:1519831387;'),('pi0pgbflieesmr67hb3n9n7dmh3503in','127.0.0.1',1519832503,'__ci_last_regenerate|i:1519832503;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('69cnkkrcl6m8fh86fno50aolbq50014o','127.0.0.1',1519831909,'__ci_last_regenerate|i:1519831908;'),('r26pe162cme0fr7cnmgohvpiv61q1m70','127.0.0.1',1519831916,'__ci_last_regenerate|i:1519831916;'),('c128702is28v4ipkgutigcnfkr6ntj6e','127.0.0.1',1519835865,'__ci_last_regenerate|i:1519835865;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1jtmq1gvm1e9b91lji02g7alohdp477s','127.0.0.1',1519832876,'__ci_last_regenerate|i:1519832876;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('lpvqmu1i8q4rigthmomf7tdfm6gqpjil','127.0.0.1',1519833277,'__ci_last_regenerate|i:1519833277;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ocdl13c8qc2f4el9bs10o98gafdl5mp4','127.0.0.1',1519833579,'__ci_last_regenerate|i:1519833579;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('dgvpjvvhc5s98jt8injj30si57t0p2qe','127.0.0.1',1519833884,'__ci_last_regenerate|i:1519833884;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('t42ke970ippa1qcs361857gll3jrgflr','127.0.0.1',1519834421,'__ci_last_regenerate|i:1519834421;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('g0cov3d68h144voncir7m2kq2fq0hm0k','127.0.0.1',1519834845,'__ci_last_regenerate|i:1519834845;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('eorftvqjc1o3pgdpksl4a2b91tl0l9kc','127.0.0.1',1519835162,'__ci_last_regenerate|i:1519835162;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('i93ltlhor06jbb13r4b4e9qjnagehphu','127.0.0.1',1519835482,'__ci_last_regenerate|i:1519835482;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('obupl1u29gjogj2nd5bu4oj6erv55amb','127.0.0.1',1519839777,'__ci_last_regenerate|i:1519839777;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('2jgqi6htr4m2iftsiqgjm5t543pkphjr','127.0.0.1',1519836189,'__ci_last_regenerate|i:1519836189;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('npqk2cobfme3fmt21mr337lu4j6frm78','127.0.0.1',1519835877,'__ci_last_regenerate|i:1519835877;'),('s8scdtaj4grdvpqsjjuuj1lg2fpkuge8','127.0.0.1',1519836642,'__ci_last_regenerate|i:1519836642;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('b26l42j8lvbtieeohdmggotsdlr4h0pk','127.0.0.1',1519836990,'__ci_last_regenerate|i:1519836990;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('75dgeemu6v08pv8uglln0563nkth233t','127.0.0.1',1519837461,'__ci_last_regenerate|i:1519837461;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fremc9b2g21av0tf4dksmnp0q48l4h9s','127.0.0.1',1519838107,'__ci_last_regenerate|i:1519838107;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fd9kcfqt00ih4e20btfaq9skajoae9kg','127.0.0.1',1519839288,'__ci_last_regenerate|i:1519839288;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('hrk9vgl3e3k8uci5i39mmkbdr5gq9m98','127.0.0.1',1519839692,'__ci_last_regenerate|i:1519839692;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('d12atsl45dklnrk8fgrma1aisojf4tog','127.0.0.1',1519840247,'__ci_last_regenerate|i:1519840247;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('n3ee7pj7i7ev5guuqs0g72g1kghbj1sr','127.0.0.1',1519840965,'__ci_last_regenerate|i:1519840965;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vj07llb6v69h26d2p0nbulvgb7uvnfha','127.0.0.1',1519840848,'__ci_last_regenerate|i:1519840848;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8vpc789ksoomhc07ovukdj4s9tchd2vq','127.0.0.1',1519841794,'__ci_last_regenerate|i:1519841794;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('82dkvk6m4hv1347i8hpqp974km3uqb5q','127.0.0.1',1519840972,'__ci_last_regenerate|i:1519840965;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ba45s9tl278494327qpmhp7rca80n8jp','127.0.0.1',1519852577,'__ci_last_regenerate|i:1519852577;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('d8gdfl65j80i74jbrcklguiu875l3bhu','127.0.0.1',1519853513,'__ci_last_regenerate|i:1519853513;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fbf5bqrlh5vd0fjocqu0i40hfcc97iuk','127.0.0.1',1519853845,'__ci_last_regenerate|i:1519853845;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('q50apkkefmjiu0q62bs3k1qtsec8qncs','127.0.0.1',1519854211,'__ci_last_regenerate|i:1519854211;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1d2ehs114034pqb2gki1murl92m2i1cb','127.0.0.1',1519854860,'__ci_last_regenerate|i:1519854860;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fi0f4a1cc2pvgu9tpr32ia4hmltusvcr','127.0.0.1',1519854516,'__ci_last_regenerate|i:1519854515;'),('4m34o0rjusho8ri4ur03b93d0qc0tv0u','127.0.0.1',1519854634,'__ci_last_regenerate|i:1519854634;'),('1i7tjt9u0r9ouu0rkj5jhivdl3huhe90','127.0.0.1',1519854742,'__ci_last_regenerate|i:1519854742;'),('kg7fq5v0tprt64vv2ufi61s0hbebq5jt','127.0.0.1',1519854796,'__ci_last_regenerate|i:1519854796;'),('jcd3c72aohs8163bt66654fucf7j40i4','127.0.0.1',1519854856,'__ci_last_regenerate|i:1519854856;'),('96tvt03kg88uf9ug5pipjr1qel3p7aav','127.0.0.1',1519855364,'__ci_last_regenerate|i:1519855364;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('22tpk5ip5jcc4q1h9p0qkq540s7dupek','127.0.0.1',1519854866,'__ci_last_regenerate|i:1519854866;'),('logvmnb2h2dgr2k72n9mhhbib95i6cik','127.0.0.1',1519854898,'__ci_last_regenerate|i:1519854898;'),('ivhv9k4qpscs3s37pmkm1lopc98vgqf9','127.0.0.1',1519854959,'__ci_last_regenerate|i:1519854959;'),('qhiiecslmj0717eiu8g0k6ufo1v3dl5r','127.0.0.1',1519855000,'__ci_last_regenerate|i:1519855000;'),('u2a8onn7ip2dl350kn3senke50e7oh0i','127.0.0.1',1519855232,'__ci_last_regenerate|i:1519855232;'),('j2oi5cpk6nlg2eps7d9ukko13g06d2j5','127.0.0.1',1519855249,'__ci_last_regenerate|i:1519855249;'),('ecs7sc2rjl5fjuh2027056b4so6kh496','127.0.0.1',1519855263,'__ci_last_regenerate|i:1519855263;'),('n2nhq4nbaj9d2rtk0evkpbthggk2mrtr','127.0.0.1',1519855273,'__ci_last_regenerate|i:1519855273;'),('qeokgh7qi9pqi1bualgeu677f6kgl80u','127.0.0.1',1519855307,'__ci_last_regenerate|i:1519855307;'),('2q5n0kj9bjl3nmlbcue9fbu5lvp8gil2','127.0.0.1',1519855359,'__ci_last_regenerate|i:1519855359;'),('o2pgmf74kfqcm78rphee7d1m3ittjumn','127.0.0.1',1519856110,'__ci_last_regenerate|i:1519856110;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('njbvlpp2v67psu7n2ni4totscb57nusk','127.0.0.1',1519855386,'__ci_last_regenerate|i:1519855386;'),('mjuaf5dk6utmkmsr3mnnempnoj9sc98q','127.0.0.1',1519855449,'__ci_last_regenerate|i:1519855449;'),('k8eetmr4mk3luvn0usm8cga6h7htpntf','127.0.0.1',1519855482,'__ci_last_regenerate|i:1519855482;'),('l91a6k7d5vgbre0b4qp8k6pantde6qrg','127.0.0.1',1519855498,'__ci_last_regenerate|i:1519855498;'),('fjdd6bk9js484c5aufimds955f91accv','127.0.0.1',1519855526,'__ci_last_regenerate|i:1519855526;'),('6jat8o6so115n0sgh9lnajnh1jb71j5b','127.0.0.1',1519855574,'__ci_last_regenerate|i:1519855574;'),('2vrt1tpsekbjndrai7v0m2m95568ks9c','127.0.0.1',1519855595,'__ci_last_regenerate|i:1519855595;'),('1m4ua7pt5q8n9sod0lol4hb298m5n5iq','127.0.0.1',1519855618,'__ci_last_regenerate|i:1519855618;'),('r8u7hk5iskfdf4u2i26tcrnv9mppvhce','127.0.0.1',1519855621,'__ci_last_regenerate|i:1519855621;'),('4b8p6r5olveihlpgtpura5kede8011l2','127.0.0.1',1519855725,'__ci_last_regenerate|i:1519855725;'),('e1jo7bufq9atg4dnc7a2e618dk7gj65l','127.0.0.1',1519855739,'__ci_last_regenerate|i:1519855739;'),('8p90o726p1m5e73l757ep2updncshju9','127.0.0.1',1519855793,'__ci_last_regenerate|i:1519855793;'),('dvtr4l27eoaej2ds42ivlitrhnmee972','127.0.0.1',1519855811,'__ci_last_regenerate|i:1519855811;'),('nqoq44ppc53j0t61jhdourmr4m5ognc2','127.0.0.1',1519855893,'__ci_last_regenerate|i:1519855892;'),('e9sp171i6im67b2s8uckh9297c895ju0','127.0.0.1',1519855908,'__ci_last_regenerate|i:1519855908;'),('pkh8lascn3dm2i1maqbguguiorl7n51q','127.0.0.1',1519855951,'__ci_last_regenerate|i:1519855951;'),('8ri6broljpgr0rjrs9mnefhergsdpgnu','127.0.0.1',1519855974,'__ci_last_regenerate|i:1519855974;'),('8lpllvtrcamf9v774jnfkhtaflg9kmog','127.0.0.1',1519855980,'__ci_last_regenerate|i:1519855980;'),('q5kje46jaous53kgb97m8ee3r4bbml0j','127.0.0.1',1519856284,'__ci_last_regenerate|i:1519856110;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('lf60nrr9fs981nut9m07immkj23slt3o','127.0.0.1',1519856115,'__ci_last_regenerate|i:1519856115;'),('fbn1e6cr81gs4apu3t0gchieu5mb2m93','127.0.0.1',1519856156,'__ci_last_regenerate|i:1519856156;'),('7vhooflvcg65h6tbb0velsbb5v5lph89','127.0.0.1',1519856166,'__ci_last_regenerate|i:1519856166;'),('3ff9fvvl8ncnp9lmbaa22a15h2kmept0','127.0.0.1',1519856214,'__ci_last_regenerate|i:1519856214;'),('00s5opdk4kptbo09ifcjih9b2rg77l3h','127.0.0.1',1519856234,'__ci_last_regenerate|i:1519856234;'),('h4oqal1bocvos269j68vfbuq120de341','127.0.0.1',1519887815,'__ci_last_regenerate|i:1519887815;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jjude7n7c3p2f7urqvr413vs3uhcl3q2','127.0.0.1',1519887807,'__ci_last_regenerate|i:1519887807;'),('00chad64m4hcvojfhfiicohs8aa4qq37','127.0.0.1',1519887812,'__ci_last_regenerate|i:1519887812;'),('543td36sumb867sr09sp8uuk5568oh50','127.0.0.1',1519888283,'__ci_last_regenerate|i:1519888283;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8u61r6lk2g6k974v1ahqtj67680gn2qk','127.0.0.1',1519888593,'__ci_last_regenerate|i:1519888593;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4o2d833ob4ledm8gj2qscad71010nqkj','127.0.0.1',1519889189,'__ci_last_regenerate|i:1519889189;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ccf07fohb10ro9r55gk5mp2vr73nk7lr','127.0.0.1',1519889740,'__ci_last_regenerate|i:1519889740;'),('alp58bh6blh5v6i9k9mhsa4bb8u6uu00','127.0.0.1',1519890877,'__ci_last_regenerate|i:1519890877;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kfa11cats1rm84ge1fcl506pddvqnnkf','127.0.0.1',1519890585,'__ci_last_regenerate|i:1519890585;'),('ifr5oako3s1muj170l5tmeikdbirmcm1','127.0.0.1',1519890710,'__ci_last_regenerate|i:1519890710;'),('qsvoj0m7qtf8lvfh6jqpfp4825d7cmcj','127.0.0.1',1519890731,'__ci_last_regenerate|i:1519890731;'),('8npetkd7oo7l439d8a2g6eg0jjpp9e73','127.0.0.1',1519890741,'__ci_last_regenerate|i:1519890741;'),('482ske2ip9oqftqfchi1r4ssp6dt5qoq','127.0.0.1',1519890804,'__ci_last_regenerate|i:1519890804;'),('rfdt1psgvcbds8p225u3bn4u4t8llrok','127.0.0.1',1519890845,'__ci_last_regenerate|i:1519890845;'),('l449l2dsoca7rtcs2uqh1c318sn7k8qs','127.0.0.1',1519891598,'__ci_last_regenerate|i:1519891598;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('hcfvn09nhhj42er8em1kcs6mfnkrcs9a','127.0.0.1',1519890926,'__ci_last_regenerate|i:1519890926;'),('62vmhstkjkbpknj19vv2hajaosp0kaen','127.0.0.1',1519891041,'__ci_last_regenerate|i:1519891041;'),('kdfva78hejetifc5nui3b1en1jcmus1t','127.0.0.1',1519891048,'__ci_last_regenerate|i:1519891048;'),('gt8j6d1lopl4p8k18n1h6kvp7fepd6f3','127.0.0.1',1519891190,'__ci_last_regenerate|i:1519891190;'),('t2hhh97pjb81311u22oeg0ehniprabjh','127.0.0.1',1519891242,'__ci_last_regenerate|i:1519891242;'),('8i9giuhn54li0h4p31lb8msheruj7pc2','127.0.0.1',1519891256,'__ci_last_regenerate|i:1519891256;'),('1qdgji8b9bgnvh7n92vc9q7bntcun0fo','127.0.0.1',1519891347,'__ci_last_regenerate|i:1519891347;'),('j5mnekeskc0u1nk9c462rvm1g91i4cok','127.0.0.1',1519891359,'__ci_last_regenerate|i:1519891359;'),('pnoh6qn53q12gel9hmn1ieb1to6tinli','127.0.0.1',1519891413,'__ci_last_regenerate|i:1519891413;'),('i6l6cbq6r4g6bsk7aunsnuco4k025au1','127.0.0.1',1519891447,'__ci_last_regenerate|i:1519891447;'),('rmgh0jd0oj330lrtop3alo9kf00js7lf','127.0.0.1',1519891499,'__ci_last_regenerate|i:1519891499;'),('q5e52otg5qtthpno95s83s816ibpv23e','127.0.0.1',1519891502,'__ci_last_regenerate|i:1519891502;'),('ipdpnkr9i16uffhhhpvpmcfqk8frdjav','127.0.0.1',1519891542,'__ci_last_regenerate|i:1519891542;'),('uev03sbv4datoo65on98q1s6c7o5562i','127.0.0.1',1519891546,'__ci_last_regenerate|i:1519891546;'),('3fiv4fhjgumdjh0a78krfhn8r0c2i3v4','127.0.0.1',1519891550,'__ci_last_regenerate|i:1519891550;'),('tu93b7c2l3pi406hr3dqn4j9ddl80rsh','127.0.0.1',1519891911,'__ci_last_regenerate|i:1519891911;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:28:\"Agents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('q4up2fo7i6gs6cdip8d31crfkd01uikl','127.0.0.1',1519891749,'__ci_last_regenerate|i:1519891749;'),('tgll9d0bn1j5272kecohhernmg9c23f3','127.0.0.1',1519892704,'__ci_last_regenerate|i:1519892704;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('a8ieecs6cmu321lmn1b0f85er67quuum','127.0.0.1',1519891916,'__ci_last_regenerate|i:1519891916;'),('h87vi0scl32s4lqmj6rihl3qlc93ljsq','127.0.0.1',1519891924,'__ci_last_regenerate|i:1519891923;'),('o07lkfchcfres03rl2bs39t6c8e1j1e7','127.0.0.1',1519892069,'__ci_last_regenerate|i:1519892069;'),('qs3n9dep7d8srpe00vgg3be3lnq243u7','127.0.0.1',1519892158,'__ci_last_regenerate|i:1519892158;'),('p6mdekeir4ra9e94h7hqj30lbmvinh92','127.0.0.1',1519892329,'__ci_last_regenerate|i:1519892329;'),('vqvp7onbrr4n2mg7ruikouo1uu40rlqf','127.0.0.1',1519892341,'__ci_last_regenerate|i:1519892341;'),('6d3i3bp5a7rgco7b807ndbm0gv8s88i2','127.0.0.1',1519892443,'__ci_last_regenerate|i:1519892443;'),('0t66ev9n15ukv9hp6p7385gu7r0p18t0','127.0.0.1',1519892678,'__ci_last_regenerate|i:1519892678;'),('3obhvjrct4mq42edbt0m9rdku216np61','127.0.0.1',1519893808,'__ci_last_regenerate|i:1519893808;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('qgm28aqqapgv7vd096vls8vvs514bljh','127.0.0.1',1519892972,'__ci_last_regenerate|i:1519892972;'),('g9ngc4hvgsg09hd55ueefm6p15t2j0hq','127.0.0.1',1519892991,'__ci_last_regenerate|i:1519892991;'),('kmsnu6bkpu4or0jpboinhhis808ni323','127.0.0.1',1519893012,'__ci_last_regenerate|i:1519893012;'),('5m35tjpt7gn1fqk5vlhbu7o8crlavqiv','127.0.0.1',1519893035,'__ci_last_regenerate|i:1519893035;'),('lklnr3d1iciauhovhei8me9n5k3b7h6c','127.0.0.1',1519893454,'__ci_last_regenerate|i:1519893454;'),('e8ad7bt1m3om1kjldcn3kn9b1tqijf5j','127.0.0.1',1519893475,'__ci_last_regenerate|i:1519893475;'),('b2omj5m78fesphk4622nqtvlatvs7q52','127.0.0.1',1519893754,'__ci_last_regenerate|i:1519893754;'),('7oeju081rg5210j1fgb7caksjtk1p7hl','127.0.0.1',1519893758,'__ci_last_regenerate|i:1519893758;'),('rllar619kqmjv7lgc2h5lpo1roldfkdl','127.0.0.1',1519893791,'__ci_last_regenerate|i:1519893791;'),('nk41aumf8hocrrjb4i4ek6qgnpe67ic0','127.0.0.1',1519893795,'__ci_last_regenerate|i:1519893795;'),('4h5stfe37hc6ctp41b9ckjpik087evt2','127.0.0.1',1519893799,'__ci_last_regenerate|i:1519893799;'),('vvpa5lmk2pdinh8k3a393omkgvcvrvfo','127.0.0.1',1519894192,'__ci_last_regenerate|i:1519894192;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('99gnve30q71ed17atq4dlagvanhl4s6l','127.0.0.1',1519893857,'__ci_last_regenerate|i:1519893857;'),('aeia34d021q4c24ecevspiicq0h8hi48','127.0.0.1',1519893862,'__ci_last_regenerate|i:1519893862;'),('cgeihldtbl71uln3imj4dp5gllqc34a5','127.0.0.1',1519893867,'__ci_last_regenerate|i:1519893867;'),('du1lm57c0r1mnb9fhtr2irl787oven4d','127.0.0.1',1519893874,'__ci_last_regenerate|i:1519893873;'),('bvgc5df72lf81etccjtg9se3ap530fil','127.0.0.1',1519893993,'__ci_last_regenerate|i:1519893993;'),('1mpvsjlf51up0audebj2pggbpjd3aplr','127.0.0.1',1519894131,'__ci_last_regenerate|i:1519894131;'),('metdpa86c1pnn3je1iv9gc6kfb2hcre7','127.0.0.1',1519894137,'__ci_last_regenerate|i:1519894137;'),('89sd25mh4o3rf51mgm267toar83v5nuf','127.0.0.1',1519894142,'__ci_last_regenerate|i:1519894142;'),('3blknjcrlmcerhnjjboieive4fi1251i','127.0.0.1',1519894509,'__ci_last_regenerate|i:1519894509;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('j6qre84v48be2fr43ghj7s6t4co98ijt','127.0.0.1',1519894311,'__ci_last_regenerate|i:1519894311;'),('0vi4t94ib68me416lnorjpsihqdtbc9a','127.0.0.1',1519894316,'__ci_last_regenerate|i:1519894316;'),('01c4oshepgprqip147mkcg97jmgdsb5u','127.0.0.1',1519894324,'__ci_last_regenerate|i:1519894323;'),('kqhfq2vni2c00mf1sf7q8bldb0aimu42','127.0.0.1',1519894329,'__ci_last_regenerate|i:1519894328;'),('fkcfrtes729jecphj3altmc0624tj4d9','127.0.0.1',1519894338,'__ci_last_regenerate|i:1519894338;'),('q6d5f67jj0ecmucfclndg61ah5n6kiub','127.0.0.1',1519894345,'__ci_last_regenerate|i:1519894345;'),('qbb9fi7nlg431b9gp7lik7tgdeof71t6','127.0.0.1',1519894353,'__ci_last_regenerate|i:1519894353;'),('frkdom05vp9gbitpb1d1poahn7382lfd','127.0.0.1',1519894360,'__ci_last_regenerate|i:1519894360;'),('cgqn2mfi9s2fvb18qgu6mhp7lnv0jkpr','127.0.0.1',1519894367,'__ci_last_regenerate|i:1519894367;'),('1578vmr5otkdf071unhmloon4lrndk17','127.0.0.1',1519894416,'__ci_last_regenerate|i:1519894416;'),('lp69kn2cbc2qnatq1fva4le9cuai2b6v','127.0.0.1',1519894449,'__ci_last_regenerate|i:1519894449;'),('3kg1o3llk3q3o3o51marhp01be8u8g31','127.0.0.1',1519894868,'__ci_last_regenerate|i:1519894868;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('v28kkvdv3shl1a66ce8bjuj0mumvcuhg','127.0.0.1',1519895201,'__ci_last_regenerate|i:1519895201;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('db8id737j5eefi43rb3radc0ug4f73fh','127.0.0.1',1519895505,'__ci_last_regenerate|i:1519895505;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jheo06b1ta0ffmv7kte5hgdondjksdlm','127.0.0.1',1519895874,'__ci_last_regenerate|i:1519895874;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('uq8c3o62oqj7a9rvkekimp6ch02ojl7k','127.0.0.1',1519899301,'__ci_last_regenerate|i:1519899301;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('35mgvjj2qhuna21751q4aih2pkv6f7c2','127.0.0.1',1519895811,'__ci_last_regenerate|i:1519895811;'),('qbdkfuulsi5op616khp629ie55pvhh4a','127.0.0.1',1519895819,'__ci_last_regenerate|i:1519895818;'),('7temc0j6rok7kujlrr2q3vb28mko02fe','127.0.0.1',1519895824,'__ci_last_regenerate|i:1519895824;'),('1svrc1tmu6gld8o5cdhmdslkrdogck7e','127.0.0.1',1519895829,'__ci_last_regenerate|i:1519895828;'),('p7msk4ap0qfo14lgn3jvqj6estk3oljh','127.0.0.1',1519895837,'__ci_last_regenerate|i:1519895837;'),('8mvc284cd7jqv68pajdfekehobrbqorp','127.0.0.1',1519895844,'__ci_last_regenerate|i:1519895844;'),('um1e40tu1c5e8adt02f04odkirgs0lfa','127.0.0.1',1519895859,'__ci_last_regenerate|i:1519895859;'),('o1jf622c6sj0qh87aleg7946egrhlvvn','127.0.0.1',1519895864,'__ci_last_regenerate|i:1519895864;'),('fu1ecjl71f6dqqs0r7p5di75f8vq3o8j','127.0.0.1',1519896226,'__ci_last_regenerate|i:1519896226;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('v78duretaudfhk27viegolpabovhs7lj','127.0.0.1',1519895894,'__ci_last_regenerate|i:1519895894;'),('50qjkmispsnqn5fdla20gdii32q6j6ul','127.0.0.1',1519895974,'__ci_last_regenerate|i:1519895974;'),('6r5a2rsps0u3vkveih451iojobeh1pd0','127.0.0.1',1519896105,'__ci_last_regenerate|i:1519896105;'),('jphdghvud6ks3hcv7li2c53d2rp2ulu9','127.0.0.1',1519896110,'__ci_last_regenerate|i:1519896110;'),('4cf5n3u9fl8is26tb1vdkaoco0a0m3ek','127.0.0.1',1519896114,'__ci_last_regenerate|i:1519896114;'),('a4g1sa50g4obg12nu1q06qlm5m01nbs1','127.0.0.1',1519896128,'__ci_last_regenerate|i:1519896128;'),('pt238numbmctlulg9i9mbsejfi6ba145','127.0.0.1',1519896608,'__ci_last_regenerate|i:1519896608;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('h5tbrhgj9jnes3jvuv4fkps31qn62ego','127.0.0.1',1519896992,'__ci_last_regenerate|i:1519896992;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ma5sul6ig8g43c9qe3k6n82nfpsi3e73','127.0.0.1',1519897393,'__ci_last_regenerate|i:1519897393;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('nc9rlv7ja5bo1pk1lvg2cbv15doomguj','127.0.0.1',1519897263,'__ci_last_regenerate|i:1519897262;'),('mhuhoi7o5ajd4ngvd82b526a69n0u70i','127.0.0.1',1519897282,'__ci_last_regenerate|i:1519897282;'),('bnn931ks0v82lpgvcnt5nbaor22mju4f','127.0.0.1',1519897290,'__ci_last_regenerate|i:1519897290;'),('i0at8m18pljucemonmj0o83rj1cek1fd','127.0.0.1',1519897294,'__ci_last_regenerate|i:1519897293;'),('chd7rolqoghbb08kvko9bpkrb2ierfa8','127.0.0.1',1519897314,'__ci_last_regenerate|i:1519897314;'),('t2hvoebv33l43k4elldgq21m92876gbl','127.0.0.1',1519897320,'__ci_last_regenerate|i:1519897319;'),('704esshi6aot14k3705dg26pn33tcrnc','127.0.0.1',1519897329,'__ci_last_regenerate|i:1519897328;'),('t7ugksg5a8gr4s81dt15sa5f8dke993n','127.0.0.1',1519897337,'__ci_last_regenerate|i:1519897336;'),('mpevddipigvvp3f4usteljrq32vgh6f4','127.0.0.1',1519897765,'__ci_last_regenerate|i:1519897765;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('n9ffjesk1lvo7iibacolskishr1d37nc','127.0.0.1',1519897410,'__ci_last_regenerate|i:1519897409;'),('n6ishqdg0j4o807nhhgaf5sfd3r2cbcg','127.0.0.1',1519897415,'__ci_last_regenerate|i:1519897414;'),('5ekvnh8seego0n0fq1nnsmn9iuf2kgd1','127.0.0.1',1519897424,'__ci_last_regenerate|i:1519897424;'),('reg989tstcttnf4stskrsquahcgbc1f5','127.0.0.1',1519897429,'__ci_last_regenerate|i:1519897428;'),('s8me205f7a8lckhbf2ntkbbrc8807n85','127.0.0.1',1519897434,'__ci_last_regenerate|i:1519897434;'),('cj2qcijte7edt28fbr6b5p6a73put990','127.0.0.1',1519897441,'__ci_last_regenerate|i:1519897440;'),('aqkpka4l20h4ub13v2bm346dn5mu5ra9','127.0.0.1',1519897446,'__ci_last_regenerate|i:1519897446;'),('qpn1vk5tnup4jo7d902soeca1aho1gfi','127.0.0.1',1519897460,'__ci_last_regenerate|i:1519897460;'),('ksagmolim1ai6nfoejc915kvptklp74u','127.0.0.1',1519897639,'__ci_last_regenerate|i:1519897638;'),('s6in573hh9fdqp82vdmlpesbrtv0vsps','127.0.0.1',1519897662,'__ci_last_regenerate|i:1519897662;'),('samo5fahj3eoai9oci8q0jofqamaeqos','127.0.0.1',1519897759,'__ci_last_regenerate|i:1519897758;'),('6hjt0rjie9anbdqbbro0i6mf0pk00nc5','127.0.0.1',1519898764,'__ci_last_regenerate|i:1519898764;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('c6nl07ecr5hv72raii2i7iiod81hm19u','127.0.0.1',1519897780,'__ci_last_regenerate|i:1519897779;'),('dddgnqvbu199q7n047bgf3nba5bs2mcn','127.0.0.1',1519897988,'__ci_last_regenerate|i:1519897988;'),('566h5e81h4hk709e3mofrh9gnf9c1pnu','127.0.0.1',1519898009,'__ci_last_regenerate|i:1519898009;'),('jb47sgmpnnto8aj31pg9lomp9ckgjtcr','127.0.0.1',1519898012,'__ci_last_regenerate|i:1519898012;'),('vo21r287seful1hu28tjsp5h0df7i4td','127.0.0.1',1519898074,'__ci_last_regenerate|i:1519898074;'),('17q1kh7s071djjro268rebsg9ntv338b','127.0.0.1',1519898472,'__ci_last_regenerate|i:1519898471;'),('953693ts743163ddqhhkspc1bhb3qdgs','127.0.0.1',1519898517,'__ci_last_regenerate|i:1519898516;'),('bf8vppm1sks5ft8rkgb504guiknanoql','127.0.0.1',1519898617,'__ci_last_regenerate|i:1519898617;'),('3qee92hf58eg7ij28up57bm4q2mt06c3','127.0.0.1',1519898646,'__ci_last_regenerate|i:1519898646;'),('r3pmhs0m0ib1tteps4u5j4gnimu69te9','127.0.0.1',1519898745,'__ci_last_regenerate|i:1519898744;'),('jesc08enjomkrmkulgeknbt337b4uod1','127.0.0.1',1519898757,'__ci_last_regenerate|i:1519898756;'),('th6oplpdr6k0alqjpdt1cki0unghq82g','127.0.0.1',1519899895,'__ci_last_regenerate|i:1519899895;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('alooim1unipe83h5qevr5t3gfpevlht7','127.0.0.1',1519898781,'__ci_last_regenerate|i:1519898781;'),('m65btie1dlkuhheu5ptiu8hv1ur905cq','127.0.0.1',1519898798,'__ci_last_regenerate|i:1519898798;'),('9kro2e1v3cifmg5m1fjemi88qru9qad9','127.0.0.1',1519898828,'__ci_last_regenerate|i:1519898827;'),('llak4bu30lkkfsdn42k9pobq5scd2353','127.0.0.1',1519898854,'__ci_last_regenerate|i:1519898854;'),('f1uc9raelp1i42i4s1ln29koo605j3tg','127.0.0.1',1519898865,'__ci_last_regenerate|i:1519898865;'),('n5cttkkk9l9ikl723jb7mkd9h25995l6','127.0.0.1',1519898871,'__ci_last_regenerate|i:1519898871;'),('chcegtjlkmgntjehg4420n8uvtrvlurd','127.0.0.1',1519898881,'__ci_last_regenerate|i:1519898880;'),('te1tskpc5kh1vqahnls4pqbb91eqi3kg','127.0.0.1',1519898903,'__ci_last_regenerate|i:1519898902;'),('028i21r5pgku798f2tonadvpph2tgphg','127.0.0.1',1519898907,'__ci_last_regenerate|i:1519898907;'),('jva92e6ircahjnup1r4tp3o97n1n8da9','127.0.0.1',1519898911,'__ci_last_regenerate|i:1519898910;'),('dooroshkn52eodu6evcn14slkcnr5nmo','127.0.0.1',1519898915,'__ci_last_regenerate|i:1519898915;'),('onau8sdts3iqv91ek8v3ndc6is7jshq2','127.0.0.1',1519898930,'__ci_last_regenerate|i:1519898929;'),('ksfnp9fngiee21nt5c80ao85j4rutos5','127.0.0.1',1519898935,'__ci_last_regenerate|i:1519898934;'),('99kplg8cunm9s3jbuctvurkjnmap7d6v','127.0.0.1',1519898942,'__ci_last_regenerate|i:1519898942;'),('cgn8u1e82jlvu7au0djdigj9o39den1j','127.0.0.1',1519898947,'__ci_last_regenerate|i:1519898947;'),('92gl695ae6n5c5mlmpgdpbihhm0ntp3l','127.0.0.1',1519898951,'__ci_last_regenerate|i:1519898950;'),('f6kh4bstrsvobjsbugq1stvfbjrli3mo','127.0.0.1',1519898955,'__ci_last_regenerate|i:1519898955;'),('kiju7b3up77hhqqhhupqgkgufoeht6pl','127.0.0.1',1519898964,'__ci_last_regenerate|i:1519898963;'),('tfjt7umhhpjm9cq4bjd3nb8i7p50451r','127.0.0.1',1519899060,'__ci_last_regenerate|i:1519899060;'),('dd91im8vau4g295pa2tuh34et6ieebpb','127.0.0.1',1519907174,'__ci_last_regenerate|i:1519907174;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:27:\"Backup is made successfully\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('duahcoqtlh75ittq65iaqt5prn8lecp9','127.0.0.1',1519899584,'__ci_last_regenerate|i:1519899584;'),('cgu882p37ecucevfumj0b5s8t3suo4gd','127.0.0.1',1519899602,'__ci_last_regenerate|i:1519899602;'),('v2pndbe9fo5gtg1ua17tmuo8m4qsi4nv','127.0.0.1',1519899626,'__ci_last_regenerate|i:1519899625;'),('3nr8qt4cio8tos2gtur1fama018u9nua','127.0.0.1',1519899659,'__ci_last_regenerate|i:1519899659;'),('bk54r62eg2cr254aqf063b3and3fi4tk','127.0.0.1',1519899699,'__ci_last_regenerate|i:1519899699;'),('rf4pro8ji27lq1rrb51i9705l3qqe8on','127.0.0.1',1519899725,'__ci_last_regenerate|i:1519899724;'),('tpuihjuc2r590f4u3j7trds5iom88egq','127.0.0.1',1519899786,'__ci_last_regenerate|i:1519899786;'),('4ek83hsnapr4k89oi0mo2tojo2jej578','127.0.0.1',1519899858,'__ci_last_regenerate|i:1519899858;'),('6r5jch5c1i7qenivgf38bslu7vae7033','127.0.0.1',1519899865,'__ci_last_regenerate|i:1519899865;'),('dku0ie58gblq79in0rafm6dn2va47rri','127.0.0.1',1519900234,'__ci_last_regenerate|i:1519900234;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('b3g42bkuhdjn9d9bovnaflvtcn725ur6','127.0.0.1',1519899954,'__ci_last_regenerate|i:1519899954;'),('uhhpnn0cqkmdl9ul60sbjem9parqf5i6','127.0.0.1',1519899960,'__ci_last_regenerate|i:1519899960;'),('frsusioavkaln0g000bj8v65h4brikjj','127.0.0.1',1519900091,'__ci_last_regenerate|i:1519900091;'),('rmbdson0qgahm3obkmcsbb8e85s9i05d','127.0.0.1',1519900098,'__ci_last_regenerate|i:1519900097;'),('1883vjqa3sun819lura4e99a4gf5lobr','127.0.0.1',1519900104,'__ci_last_regenerate|i:1519900103;'),('4cs54dtr72fndn4iucd9in70o7sgv90i','127.0.0.1',1519900112,'__ci_last_regenerate|i:1519900112;'),('ieaesikoucs3kj3hqkejric24mh1c23n','127.0.0.1',1519900135,'__ci_last_regenerate|i:1519900134;'),('dc1n96nm43fpl0m71t1fkvlhc9ugk433','127.0.0.1',1519900139,'__ci_last_regenerate|i:1519900139;'),('4869u3mfm624nf5f54egl6j01efh50i3','127.0.0.1',1519901758,'__ci_last_regenerate|i:1519901758;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('r8t9bkm0cds5mc4k58provsdctkmn89i','127.0.0.1',1519900253,'__ci_last_regenerate|i:1519900253;'),('dqatju4ceqoia4vrqvmbacke1cnmqksa','127.0.0.1',1519900347,'__ci_last_regenerate|i:1519900347;'),('dn6q2ifpv8qpk9i397or6qbkndv0uhg5','127.0.0.1',1519900416,'__ci_last_regenerate|i:1519900416;'),('gvhaan7m1opfcm45108tv37umge7acsu','127.0.0.1',1519900579,'__ci_last_regenerate|i:1519900578;'),('vpond6enm3ktc0vev425vjcfd78mhr60','127.0.0.1',1519900672,'__ci_last_regenerate|i:1519900671;'),('2ve545cb1dg79gi09ms87mfjvlr2rmg1','127.0.0.1',1519900685,'__ci_last_regenerate|i:1519900684;'),('cq3ta8mrt4okj1c90jv5dk81g9spqaig','127.0.0.1',1519900722,'__ci_last_regenerate|i:1519900721;'),('57uvab4r7ppdqo9k98g38g7mrse4fdgd','127.0.0.1',1519900798,'__ci_last_regenerate|i:1519900798;'),('pet546iu0ttvrn2p5q8ehof5pdc9mmvk','127.0.0.1',1519900808,'__ci_last_regenerate|i:1519900808;'),('t6fld7lpbcg4i5bk333c3cr7k67cdgub','127.0.0.1',1519900841,'__ci_last_regenerate|i:1519900841;'),('tr7hhhgaiafahrhooj91sqem2aqqe6ps','127.0.0.1',1519900847,'__ci_last_regenerate|i:1519900847;'),('h4ditkh0lf39khnlptebqj47pkv5lasl','127.0.0.1',1519900997,'__ci_last_regenerate|i:1519900997;'),('6ivo3ac3rpqfilu5g3oh19p52dm73ld0','127.0.0.1',1519901049,'__ci_last_regenerate|i:1519901048;'),('gmog3m1anm16qqq6pl1h3lfeml4hrr7h','127.0.0.1',1519901217,'__ci_last_regenerate|i:1519901217;'),('pgb15po3jeak5hpe8418bttv2qr57ud4','127.0.0.1',1519901328,'__ci_last_regenerate|i:1519901328;'),('09ol6qs4j9jbma7atges8schvot8vunj','127.0.0.1',1519901342,'__ci_last_regenerate|i:1519901342;'),('maucdvui6v1ocqkqkiql40i42b1qm0iv','127.0.0.1',1519902169,'__ci_last_regenerate|i:1519902169;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4ip465rvtl822aipfjskjp63hl9tvtck','127.0.0.1',1519901771,'__ci_last_regenerate|i:1519901771;'),('7ard302ndk9o1r2cjll5mtgavl69k4ee','127.0.0.1',1519901777,'__ci_last_regenerate|i:1519901777;'),('8s5q8ols8lhhstr47u4jcq75fg8guqib','127.0.0.1',1519901781,'__ci_last_regenerate|i:1519901780;'),('5es4qu8kjql2ka395tih574ha644fhmt','127.0.0.1',1519901789,'__ci_last_regenerate|i:1519901789;'),('s236f023kq2ooe1s5mnp7ts18d09de9h','127.0.0.1',1519901793,'__ci_last_regenerate|i:1519901793;'),('9igakv9kdigdq0ifm3mu275n50c7onrd','127.0.0.1',1519901801,'__ci_last_regenerate|i:1519901801;'),('gd48887krvesgvo1jil7ev7rmbm53mql','127.0.0.1',1519901812,'__ci_last_regenerate|i:1519901811;'),('tgd4qp2n9i9fskbucmrlcvomprq6sttn','127.0.0.1',1519901822,'__ci_last_regenerate|i:1519901822;'),('u9qk4f9hqrgsurr58d1st25mod85s3ho','127.0.0.1',1519901834,'__ci_last_regenerate|i:1519901833;'),('29gurqmvb7horag5332do7rqcngu93lc','127.0.0.1',1519901842,'__ci_last_regenerate|i:1519901842;'),('mof80jbbm12hbs3ri7gjdq599rq81rgl','127.0.0.1',1519901856,'__ci_last_regenerate|i:1519901855;'),('7hdrm8q1m2uv7jinl1q3hq9k1atlfacg','127.0.0.1',1519902056,'__ci_last_regenerate|i:1519902056;'),('ue1hpu386396a9mu8duu3njnom5pgpou','127.0.0.1',1519902075,'__ci_last_regenerate|i:1519902075;'),('hl54fcbrtn3cerft7adsgol4orucsnov','127.0.0.1',1519902098,'__ci_last_regenerate|i:1519902097;'),('m24d4vqop6krkcd7oj6k7g2m4pqcevpa','127.0.0.1',1519902112,'__ci_last_regenerate|i:1519902111;'),('ns23nn2viifpre1cn4549rs6vevheib0','127.0.0.1',1519902120,'__ci_last_regenerate|i:1519902119;'),('68um7rps1lb885t3cqp15amvg3op2sjo','127.0.0.1',1519902126,'__ci_last_regenerate|i:1519902125;'),('hcdnvm4d1qtjblj7hnog2pqlbt2p5g9a','127.0.0.1',1519902131,'__ci_last_regenerate|i:1519902131;'),('qhh9ccrpllkb1s3paicm0q2q0pfbn88l','127.0.0.1',1519902141,'__ci_last_regenerate|i:1519902141;'),('2qths5auei604t9fbasonq2ao5268cge','127.0.0.1',1519905348,'__ci_last_regenerate|i:1519905348;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kco9m79ne6cfvvudrd47jlfui4unlsm7','127.0.0.1',1519902191,'__ci_last_regenerate|i:1519902191;'),('sfbp2vnfdfo0e1jp98rptb8sbd8nplmh','127.0.0.1',1519902200,'__ci_last_regenerate|i:1519902199;'),('nnk39t3a6b2b5aupm9a92advl0vmmbl7','127.0.0.1',1519902208,'__ci_last_regenerate|i:1519902207;'),('43feshfnr15tce9plh3a5t43u8nq1767','127.0.0.1',1519905335,'__ci_last_regenerate|i:1519905335;'),('gl5ti2rcai3plan1q5ssh95f0rpmt6j0','127.0.0.1',1519905780,'__ci_last_regenerate|i:1519905780;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('g05jo3m1jrsigiuv57nkhaap00pa010e','127.0.0.1',1519905355,'__ci_last_regenerate|i:1519905355;'),('ra18hp7rf03o9md5gllr2qc54aibg7pe','127.0.0.1',1519905359,'__ci_last_regenerate|i:1519905359;'),('du9ef26m0f482gt2p7g07rumis2ik7m2','127.0.0.1',1519905405,'__ci_last_regenerate|i:1519905405;'),('n293fc5qdgq530aqbg4nnfdopmj032qb','127.0.0.1',1519905410,'__ci_last_regenerate|i:1519905410;'),('ue7tl81n8b3f8lh459s3v3hsh3vk88he','127.0.0.1',1519905421,'__ci_last_regenerate|i:1519905420;'),('pe9nhl108le5hm0t1c95p0pfkr035k14','127.0.0.1',1519905476,'__ci_last_regenerate|i:1519905476;'),('s0f2h806o19u788fuqilmsnsounkd1jk','127.0.0.1',1519908194,'__ci_last_regenerate|i:1519908194;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ph1q2igoadkd5v4uvt1i3kl3087rd03k','127.0.0.1',1519905981,'__ci_last_regenerate|i:1519905980;'),('fbucq859i1smtpbrp1u9hrhur3deehu2','127.0.0.1',1519906009,'__ci_last_regenerate|i:1519906008;'),('rlfg7gkg7tjhub96hbldv0gonhu806f3','127.0.0.1',1519907511,'__ci_last_regenerate|i:1519907511;staff_user_id|s:1:\"1\";staff_logged_in|b:1;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('7c0geci7hjhvc65teohalps6m7n88qgu','127.0.0.1',1519907194,'__ci_last_regenerate|i:1519907194;'),('uqn2ro94aopkjqdp7rcm1ev5kkfa125t','127.0.0.1',1519907200,'__ci_last_regenerate|i:1519907199;'),('r9iestl5g8l65a3p4l5ve6goh3usmf1v','127.0.0.1',1519907830,'__ci_last_regenerate|i:1519907830;staff_user_id|s:1:\"1\";staff_logged_in|b:1;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('l82j6cvgsjqv4jm4nd75fnhdtneqfj13','127.0.0.1',1519931082,'__ci_last_regenerate|i:1519931082;staff_user_id|s:1:\"1\";staff_logged_in|b:1;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ubpcvs8mti528ierdk37efhoffavt53s','127.0.0.1',1519908519,'__ci_last_regenerate|i:1519908519;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ekn3jeinlmsdkrnip1ga11scv0jvosq3','127.0.0.1',1519908416,'__ci_last_regenerate|i:1519908415;'),('mcd2gfesfoph22stbnoll5jla8ht0pjq','127.0.0.1',1519908892,'__ci_last_regenerate|i:1519908892;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('fd3116urp1eq0ba7gs1l4jd6fi3ufmte','127.0.0.1',1519908561,'__ci_last_regenerate|i:1519908560;'),('pgpin0rloobjhglqka9biegt438dste1','127.0.0.1',1519908580,'__ci_last_regenerate|i:1519908579;'),('1lcdbnuuq3rek1qg2h76uc32jb11g347','127.0.0.1',1519908592,'__ci_last_regenerate|i:1519908591;'),('tutdobuvga638jubruar6mupk5fa9rs6','127.0.0.1',1519908602,'__ci_last_regenerate|i:1519908601;'),('afamvrilin79jk0l3c43c3rkkp2bff38','127.0.0.1',1519908611,'__ci_last_regenerate|i:1519908610;'),('ru4o4tur7tteegan0d41v1glg4f9a9bq','127.0.0.1',1519908621,'__ci_last_regenerate|i:1519908621;'),('5i167uhr5so96045s27fn937t6lueefu','127.0.0.1',1519908628,'__ci_last_regenerate|i:1519908627;'),('d3kuhobtm8t6rht15mpck60ph9c8qejr','127.0.0.1',1519908642,'__ci_last_regenerate|i:1519908642;'),('1oshk36725gn1s422bhg3ekjh1kfu57m','127.0.0.1',1519908648,'__ci_last_regenerate|i:1519908648;'),('oim1qkmpj5rup19fj0h9km0gk2n86nhb','127.0.0.1',1519908654,'__ci_last_regenerate|i:1519908654;'),('opfu96rc2slqbplfr7qflh6s5avd60ji','127.0.0.1',1519908669,'__ci_last_regenerate|i:1519908668;'),('a0smjcu6gdtrdn6tdpe7gqmi035usm8g','127.0.0.1',1519908714,'__ci_last_regenerate|i:1519908713;'),('sn6t9ds9j96c7n5listm6e22mbncmtda','127.0.0.1',1519908803,'__ci_last_regenerate|i:1519908803;'),('uejm42p7s0q0jdcso15580jt12ddc6i2','127.0.0.1',1519908812,'__ci_last_regenerate|i:1519908812;'),('9uv68kfgcvs98cjqet7n3k30037e3amn','127.0.0.1',1519909203,'__ci_last_regenerate|i:1519909203;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('uu0in2ub12vnbncj6mvdf9qd0b667dem','127.0.0.1',1519908991,'__ci_last_regenerate|i:1519908991;'),('2v0t5d70qqgj6g5c32eho4kno9708fgs','127.0.0.1',1519909023,'__ci_last_regenerate|i:1519909023;'),('2upm95uk5f051h0khne5pjiplmh8jpec','127.0.0.1',1519911447,'__ci_last_regenerate|i:1519911447;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ktm636a4pe8t28a1orpds39odeemd2gk','127.0.0.1',1519910770,'__ci_last_regenerate|i:1519910769;'),('obmtintg7e94u8deitm6tc9i1n0vd21c','127.0.0.1',1519910782,'__ci_last_regenerate|i:1519910780;'),('vicvebrmpq71uae2cuac6ut73lb4qbsu','127.0.0.1',1519910789,'__ci_last_regenerate|i:1519910788;'),('3eff39pohlsadp2vsgigh5c3u547ki9t','127.0.0.1',1519911144,'__ci_last_regenerate|i:1519911143;'),('vom69dqelq5a31u86o30hvtbffo48j0c','127.0.0.1',1519911259,'__ci_last_regenerate|i:1519911258;'),('l16qbquh4bleg48km22cmo9gsqjuq1p4','127.0.0.1',1519911342,'__ci_last_regenerate|i:1519911341;'),('l1og8dnjp14ibgg84p9oild0mnepvi90','127.0.0.1',1519911388,'__ci_last_regenerate|i:1519911387;'),('8qosmidqovatiphl4hju4au98l597fps','127.0.0.1',1519911408,'__ci_last_regenerate|i:1519911407;'),('q7467s88cbiv4cu4l8cvc39p4snbh22m','127.0.0.1',1519911437,'__ci_last_regenerate|i:1519911436;'),('fg8amm452ibntrc1c5stttcks0oihen0','127.0.0.1',1519911761,'__ci_last_regenerate|i:1519911761;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('e09akbpkr7vn9gq95o6fr63mirnnssr3','127.0.0.1',1519911471,'__ci_last_regenerate|i:1519911470;'),('g5levvh64om9ci7h9dog21trlrp2mf8t','127.0.0.1',1519911478,'__ci_last_regenerate|i:1519911477;'),('llg2jiq0a688uqhukadspuv3e0fngjid','127.0.0.1',1519911530,'__ci_last_regenerate|i:1519911529;'),('6ddrgut01infj08kup851ob6anb5va1d','127.0.0.1',1519911551,'__ci_last_regenerate|i:1519911550;'),('k09uvsdqk8ei0fmdp6d4j6t0sli14jmm','127.0.0.1',1519911590,'__ci_last_regenerate|i:1519911589;'),('794ore9s4voposippgncehbrkgrtjj0t','127.0.0.1',1519911654,'__ci_last_regenerate|i:1519911653;'),('02v4gihrrdkler7r7ahepia7410j4pgj','127.0.0.1',1519925234,'__ci_last_regenerate|i:1519925234;'),('i5tfqk2vgp48bsfsuo5346vagnsrp1k0','127.0.0.1',1519925603,'__ci_last_regenerate|i:1519925603;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('oumgr4jbml0d3b645e3k1ta59qoh2obf','127.0.0.1',1519932128,'__ci_last_regenerate|i:1519932128;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('2793ee6npn6k28rjru8qj0hp43ar8398','127.0.0.1',1519925612,'__ci_last_regenerate|i:1519925611;'),('klj35vi84v8lifqmp55ms8msn3t5bsg7','127.0.0.1',1519925716,'__ci_last_regenerate|i:1519925715;'),('10oulicrfj9gbiacuuj1k6n38uidgbhp','127.0.0.1',1519925738,'__ci_last_regenerate|i:1519925738;'),('9kq8tf2nltbphq4asrmm5kma5t2p0i5o','127.0.0.1',1519925932,'__ci_last_regenerate|i:1519925931;'),('e5j7tcmkk618konlsje164mlvfqsgsdj','127.0.0.1',1519926103,'__ci_last_regenerate|i:1519926102;'),('mtud59nbfmoqsojknhsos6d2esnasfq0','127.0.0.1',1519926167,'__ci_last_regenerate|i:1519926166;'),('nk97me473dvocdu3iltrdo979qlobok4','127.0.0.1',1519926222,'__ci_last_regenerate|i:1519926221;'),('5hsbl9m64ab0im1b4rm6ej3nq4iptef5','127.0.0.1',1519927387,'__ci_last_regenerate|i:1519927387;'),('cv4jhr7gjecm867f7ia9c9ghm5r8vfgf','127.0.0.1',1519927400,'__ci_last_regenerate|i:1519927399;'),('3uhen3cupbp2tkqan6at0d0mqfj03vce','127.0.0.1',1519927453,'__ci_last_regenerate|i:1519927453;'),('ohev54mhv57hrsstkdttj44ha7pr9dju','127.0.0.1',1519927551,'__ci_last_regenerate|i:1519927551;'),('dvq5glvsv01j9vgji1s7uiofopsio3jp','127.0.0.1',1519927612,'__ci_last_regenerate|i:1519927607;'),('no5f02s1ulrkiqi6mbmc4mt8kn7m7gcq','127.0.0.1',1519927613,'__ci_last_regenerate|i:1519927612;'),('hltqo5gebbotnsjoh6d5tc5kiidhl806','127.0.0.1',1519927702,'__ci_last_regenerate|i:1519927702;'),('469idlpctgh2ap3aahq3aatqlftoqno0','127.0.0.1',1519928470,'__ci_last_regenerate|i:1519928469;'),('ob8tgnrv05v32ji0dcl0cia8usih3g8i','127.0.0.1',1519928474,'__ci_last_regenerate|i:1519928473;'),('hd0ucqlqgd5cas98pdtiu18um3fnuouu','127.0.0.1',1519928770,'__ci_last_regenerate|i:1519928769;'),('2upmear13dkk910099kf9fpf7s04crvt','127.0.0.1',1519928810,'__ci_last_regenerate|i:1519928809;'),('fo8flgerb6gia285t8o3c7tgv0tclhrm','127.0.0.1',1519928881,'__ci_last_regenerate|i:1519928880;bot|s:32:\"fo8flgerb6gia285t8o3c7tgv0tclhrm\";'),('hso35gk99dj0m45t8gc0a8775c7dkq4k','127.0.0.1',1519928887,'__ci_last_regenerate|i:1519928886;bot|s:32:\"hso35gk99dj0m45t8gc0a8775c7dkq4k\";'),('sarrv366n8nql7j13qts92hm40gopboa','127.0.0.1',1519929566,'__ci_last_regenerate|i:1519929565;bot|s:32:\"sarrv366n8nql7j13qts92hm40gopboa\";'),('u0vidk82i05enlikcghi9q6t8bp0h4qo','127.0.0.1',1519930129,'__ci_last_regenerate|i:1519930129;bot|s:32:\"u0vidk82i05enlikcghi9q6t8bp0h4qo\";'),('3nu77oja9k1leidc3ag3bdrhukrngoob','127.0.0.1',1519930937,'__ci_last_regenerate|i:1519930935;bot|s:32:\"3nu77oja9k1leidc3ag3bdrhukrngoob\";'),('d09hjp3t8062od21rjtv4dh849j9659h','127.0.0.1',1519930979,'__ci_last_regenerate|i:1519930978;bot|s:32:\"d09hjp3t8062od21rjtv4dh849j9659h\";'),('kc89gnl3jrh8e1u3jsdjq4koi103649m','127.0.0.1',1519930987,'__ci_last_regenerate|i:1519930981;bot|s:32:\"kc89gnl3jrh8e1u3jsdjq4koi103649m\";'),('9mefs4fqa726ts9c2hriag3l0jr9malj','127.0.0.1',1519930988,'__ci_last_regenerate|i:1519930987;bot|s:32:\"9mefs4fqa726ts9c2hriag3l0jr9malj\";'),('bm74rf55t05kefqlklnp7vvp74gpg8nu','127.0.0.1',1519930996,'__ci_last_regenerate|i:1519930995;bot|s:32:\"bm74rf55t05kefqlklnp7vvp74gpg8nu\";'),('dkpe77ku3l58fosc2p5kunr3v7337knn','127.0.0.1',1519943717,'__ci_last_regenerate|i:1519943717;staff_user_id|s:1:\"1\";staff_logged_in|b:1;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('bk2goanh7njsbam1j2mre56n4rd5glc5','127.0.0.1',1519931091,'__ci_last_regenerate|i:1519931090;bot|s:32:\"bk2goanh7njsbam1j2mre56n4rd5glc5\";'),('cmmlapo7arn0qk8trt02nufhdeumm2ig','127.0.0.1',1519931098,'__ci_last_regenerate|i:1519931098;bot|s:32:\"cmmlapo7arn0qk8trt02nufhdeumm2ig\";'),('09qk8lba2tbcd7vsf88bvm8m91lfbnlv','127.0.0.1',1519931105,'__ci_last_regenerate|i:1519931105;bot|s:32:\"09qk8lba2tbcd7vsf88bvm8m91lfbnlv\";'),('kperuqp3eqqhq1jv3jldf3olsk5cmupj','127.0.0.1',1519931115,'__ci_last_regenerate|i:1519931114;bot|s:32:\"kperuqp3eqqhq1jv3jldf3olsk5cmupj\";'),('m9pfdg3mt6aeile6nsbd59jj6jt0ol4n','127.0.0.1',1519931118,'__ci_last_regenerate|i:1519931118;bot|s:32:\"m9pfdg3mt6aeile6nsbd59jj6jt0ol4n\";'),('2n89dntb43562khvicvrhqephj0uiboo','127.0.0.1',1519931228,'__ci_last_regenerate|i:1519931228;'),('ffp47uqhvibfn2ehdfjbg6o5lfj7hqoe','127.0.0.1',1519931228,'__ci_last_regenerate|i:1519931228;'),('v4dkk931t4nvr0ijpdpujiocrrkogd11','127.0.0.1',1519931594,'__ci_last_regenerate|i:1519931593;'),('n1ceammrl537uga3nv0ijr4odsjhkg5s','127.0.0.1',1519931603,'__ci_last_regenerate|i:1519931602;'),('2b2jp9gs7pmmr528g0i6ff6j7k9pbl88','127.0.0.1',1519931610,'__ci_last_regenerate|i:1519931609;'),('hlf0tq0ouh0uogkqeed7eqva3k7f5plr','127.0.0.1',1519932454,'__ci_last_regenerate|i:1519932454;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('26fmlanbpqcsla6pc5l0cndc4nrh9058','127.0.0.1',1519932137,'__ci_last_regenerate|i:1519932137;'),('9cr55ajd8l08aprfot0gaiddsd809b7r','127.0.0.1',1519932170,'__ci_last_regenerate|i:1519932170;'),('8dm8srs6mmmfocs9ar3r73g3933ipf13','127.0.0.1',1519932215,'__ci_last_regenerate|i:1519932214;'),('jat8655opc1s4q66608rff23l4j0evj2','127.0.0.1',1519932223,'__ci_last_regenerate|i:1519932222;'),('h3m2b9ccq56a1gapoaanfvsa6nh5an3c','127.0.0.1',1519932232,'__ci_last_regenerate|i:1519932231;'),('it63vc459c77d95o24ou325bsn6nfqc8','127.0.0.1',1519932293,'__ci_last_regenerate|i:1519932293;'),('n89r2l3kd01ef7lg2qis2rj058i5p883','127.0.0.1',1519932303,'__ci_last_regenerate|i:1519932302;'),('lkg5gts1ad4h7r4e618fvja85c7ci8cu','127.0.0.1',1519932310,'__ci_last_regenerate|i:1519932309;'),('ib4j4p9d76749sm36k7uvtdl9og0vimo','127.0.0.1',1519932324,'__ci_last_regenerate|i:1519932323;'),('g1k6t9l9ks5ec4r7aaf0nlf4tsld4g1j','127.0.0.1',1519932376,'__ci_last_regenerate|i:1519932375;'),('2hprej2ceru05g7ikd4siqgabjmch3cf','127.0.0.1',1519932413,'__ci_last_regenerate|i:1519932413;'),('ailpn05ov7gsmu4oigcgvmnuh1ona0tq','127.0.0.1',1519932425,'__ci_last_regenerate|i:1519932425;'),('25jm6vr5gpt56l28rmk5ee3o9ju7rud4','127.0.0.1',1519932438,'__ci_last_regenerate|i:1519932437;'),('e53lbsf2vvtqadlhupd3ctnebhbi5jrf','127.0.0.1',1519933020,'__ci_last_regenerate|i:1519933020;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('72vqf2q3j3r5kevok6r0ku1lr8ebjd8o','127.0.0.1',1519932465,'__ci_last_regenerate|i:1519932464;'),('pnpoovh9n0110ehahj5ghu7o44fb4o5h','127.0.0.1',1519932483,'__ci_last_regenerate|i:1519932482;'),('5crlj7esredcqou01mlka6va3b6seejg','127.0.0.1',1519932492,'__ci_last_regenerate|i:1519932491;'),('sgrdslt90i9q3bjlh9ov8aadg1gh283q','127.0.0.1',1519932496,'__ci_last_regenerate|i:1519932495;'),('eusp7n98f2u8hiqfreq7eu3kmc435bdr','127.0.0.1',1519932579,'__ci_last_regenerate|i:1519932578;'),('s31vulf2i5k6kbuca1pugj08mgllakqe','127.0.0.1',1519932671,'__ci_last_regenerate|i:1519932670;'),('qmn6bh25rkelv86l6khe2gejfeu2mgi8','127.0.0.1',1519932698,'__ci_last_regenerate|i:1519932697;'),('dgabvmp0dlktfa4j4thvlmbvrbttdag8','127.0.0.1',1519932709,'__ci_last_regenerate|i:1519932708;'),('55oglqsvqavcq533v2vn33lmmmpdlvn3','127.0.0.1',1519932722,'__ci_last_regenerate|i:1519932721;'),('c5e5scrrl0gcugmv17q40jrvcc84vs2i','127.0.0.1',1519932773,'__ci_last_regenerate|i:1519932772;'),('oirqko6l2dk9chv0l6b1akipu8blg5mb','127.0.0.1',1519934335,'__ci_last_regenerate|i:1519934335;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('oqmics05pe2fli4i7e86l97u4ie0f462','127.0.0.1',1519933028,'__ci_last_regenerate|i:1519933027;'),('hkk2co6d97ttmlkcv7maqddt0822ctro','127.0.0.1',1519933077,'__ci_last_regenerate|i:1519933076;'),('nodupbk8a0m1oliva88gai4ekunodfq1','127.0.0.1',1519933113,'__ci_last_regenerate|i:1519933113;'),('kgolrndfi7tjqcmihb1dmlqc61ddfeka','127.0.0.1',1519933141,'__ci_last_regenerate|i:1519933140;'),('mb3f300ot5nu8c6itj0jrhgfpu7k5850','127.0.0.1',1519933263,'__ci_last_regenerate|i:1519933262;'),('d8h10iglp417n81ldlneui8sv34chqo8','127.0.0.1',1519933377,'__ci_last_regenerate|i:1519933377;'),('1pcpkokqef1dnlgfa59ttc0meiftf33q','127.0.0.1',1519933403,'__ci_last_regenerate|i:1519933402;'),('d0dbma5a0il7edt6mvedp7ls3bhrgem1','127.0.0.1',1519933637,'__ci_last_regenerate|i:1519933636;'),('gpc83ra58aj4dhsi9j6bh5rss2rvuc4o','127.0.0.1',1519933674,'__ci_last_regenerate|i:1519933672;'),('lgf9709mnao0bn927gcflkfrkf6bqi1v','127.0.0.1',1519934855,'__ci_last_regenerate|i:1519934855;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('e1oouqo81tu4ifeil0bliokh4stc370n','127.0.0.1',1519934339,'__ci_last_regenerate|i:1519934339;'),('atjnmb084fvqtjn2ng2slkl0r5bfvind','127.0.0.1',1519934345,'__ci_last_regenerate|i:1519934344;'),('hqbj4qqddu7n9op62e5bs812a9aumk31','127.0.0.1',1519934364,'__ci_last_regenerate|i:1519934363;'),('oum1sagjmvqhf0kd6u850fhsei8du3hk','127.0.0.1',1519934384,'__ci_last_regenerate|i:1519934384;'),('e6hrsjap4vf594appkhqcnkek5jldple','127.0.0.1',1519934463,'__ci_last_regenerate|i:1519934463;'),('jkvc75c48aq5fp1qcjs2s4bs5o7enitc','127.0.0.1',1519934468,'__ci_last_regenerate|i:1519934468;'),('qscrqsa7lbiro95vi4175ic2gu4mk2qn','127.0.0.1',1519934634,'__ci_last_regenerate|i:1519934634;'),('d66h5v50fnbv17rkgolm1lieknevbfbq','127.0.0.1',1519934654,'__ci_last_regenerate|i:1519934653;'),('ajp8p5eb01acb3fal7k7a83v97f2cjcq','127.0.0.1',1519934675,'__ci_last_regenerate|i:1519934674;'),('fpoo90uirblmsujran59u78ahag2j3pq','127.0.0.1',1519934712,'__ci_last_regenerate|i:1519934712;'),('a8l3n6j7d57a42bnn573nktu910viumd','127.0.0.1',1519934727,'__ci_last_regenerate|i:1519934727;'),('3qlqfbl7tmonos4ftpi87fdmfs13etoj','127.0.0.1',1519934737,'__ci_last_regenerate|i:1519934736;'),('dtlasvc2j0ubr5vngvtcgiumukd9n03h','127.0.0.1',1519934751,'__ci_last_regenerate|i:1519934750;'),('u8sf3r0ruk7m90mfuerb47jn03al4qva','127.0.0.1',1519935309,'__ci_last_regenerate|i:1519935309;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('hoemldm4qo825dc7rdquu3q686e6rs4m','127.0.0.1',1519934859,'__ci_last_regenerate|i:1519934858;'),('2ub2usmushd88de2nvh6dfbird12bptk','127.0.0.1',1519934864,'__ci_last_regenerate|i:1519934863;'),('5kqoced91kp6rjvgehuli51t3mi91jcv','127.0.0.1',1519934872,'__ci_last_regenerate|i:1519934871;'),('2go8ltlonog5f3enpp7k6jgsc0fqdci5','127.0.0.1',1519934909,'__ci_last_regenerate|i:1519934908;'),('re5hceotv6jag4krsotopvo9msk98hh0','127.0.0.1',1519934914,'__ci_last_regenerate|i:1519934913;'),('e6dr2ps9ujaa7keuk8odg7736hb62trn','127.0.0.1',1519934923,'__ci_last_regenerate|i:1519934922;'),('fhi6k0bjjebc56krvopvntk9vi6raujs','127.0.0.1',1519935015,'__ci_last_regenerate|i:1519935014;'),('lek4fp1vo8v3e6kt9krt81cndrqotput','127.0.0.1',1519935257,'__ci_last_regenerate|i:1519935257;'),('cn1ce8qlmt3alqj7ijvsua5usqpelj1t','127.0.0.1',1519935710,'__ci_last_regenerate|i:1519935710;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4dd1p84cj563u8votjiiq558oc4m2077','127.0.0.1',1519935417,'__ci_last_regenerate|i:1519935417;'),('9l109i3gvcctiurhqpkgukb0786l8nga','127.0.0.1',1519935500,'__ci_last_regenerate|i:1519935499;'),('uh35fjik71ci70ld1le97m7tjlqcqa5g','127.0.0.1',1519935578,'__ci_last_regenerate|i:1519935578;'),('1qmic4cfdqmlhlv5aur2cii6pba0e8do','127.0.0.1',1519935583,'__ci_last_regenerate|i:1519935582;'),('c762es06ubcdlti2ng28inpugrfr5diu','127.0.0.1',1519935591,'__ci_last_regenerate|i:1519935590;'),('pfkp2an3g3kqkss9e06d07lb7kvp7lhf','127.0.0.1',1519936248,'__ci_last_regenerate|i:1519936248;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('h5rhmihmrb9nn545826urhd7s7locmbq','127.0.0.1',1519935742,'__ci_last_regenerate|i:1519935739;'),('b7lkeao4i1m27jk78l3cs5lfk337q50n','127.0.0.1',1519935751,'__ci_last_regenerate|i:1519935751;'),('i0qv421hpgkqufd6idebi1ecustg2qv9','127.0.0.1',1519935765,'__ci_last_regenerate|i:1519935764;'),('qlqstnifodgtbhk0luge2hsr8e6agoqr','127.0.0.1',1519936647,'__ci_last_regenerate|i:1519936647;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('7k1fgila7c7f6p3o9gb03q07i3i4bma2','127.0.0.1',1519936267,'__ci_last_regenerate|i:1519936267;'),('u0qdil4omduoug7u2c06p842s01g38nm','127.0.0.1',1519936272,'__ci_last_regenerate|i:1519936272;'),('pok9b5679snrgvur1hpglvted4opie4j','127.0.0.1',1519936276,'__ci_last_regenerate|i:1519936276;'),('qn292odnr625nhdlk5cb0fheln6u4b9c','127.0.0.1',1519936454,'__ci_last_regenerate|i:1519936454;'),('m0t0dliukqlhfn2hgstaf0ikaqtcg8le','127.0.0.1',1519936462,'__ci_last_regenerate|i:1519936461;'),('aq7micnl5qr1atgkfbd6rafiu245kqtm','127.0.0.1',1519936473,'__ci_last_regenerate|i:1519936472;'),('ov81vuvsqk39f9gde68hrj8hek1q4tk2','127.0.0.1',1519936477,'__ci_last_regenerate|i:1519936477;'),('tcpcrf1cu4mpdsbla4v4gm0b8v5jfcnk','127.0.0.1',1519937700,'__ci_last_regenerate|i:1519937700;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('lsu78ko8hdgg4m62d456j8o5aa2p20s8','127.0.0.1',1519936651,'__ci_last_regenerate|i:1519936650;'),('hu5fnt6mpq11e1qp0bcg7j28a9va6m7n','127.0.0.1',1519936663,'__ci_last_regenerate|i:1519936662;'),('fnfajcsqnkgdcijoq5f0pha4galscdc8','127.0.0.1',1519936688,'__ci_last_regenerate|i:1519936687;'),('5tl66iatu5uigtiv42mo8j6ososi1bq8','127.0.0.1',1519936765,'__ci_last_regenerate|i:1519936765;'),('afq645f5c0l6u49cfnk9365b4dvr6gh1','127.0.0.1',1519936827,'__ci_last_regenerate|i:1519936826;'),('j9vhgchao3r07fdl7cjglpq3i0tqlkkp','127.0.0.1',1519938047,'__ci_last_regenerate|i:1519938047;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('s8gcg1sv9d54t8m0732huutoec9pqun7','127.0.0.1',1519940177,'__ci_last_regenerate|i:1519940177;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1rsp07saakggtfaloh8terbkerch2cf9','127.0.0.1',1519938097,'__ci_last_regenerate|i:1519938097;'),('hj3u3etjvphddklmmn4b1di6t3uifaqp','127.0.0.1',1519938104,'__ci_last_regenerate|i:1519938103;'),('n4311ouj2kuv05k1sc8d6tlg4rorhr7l','127.0.0.1',1519938930,'__ci_last_regenerate|i:1519938929;'),('ojnmrvp3vifm9ds1mpjb1pdrmk8tc729','127.0.0.1',1519938987,'__ci_last_regenerate|i:1519938986;'),('fql6l61jg25adg1fjneihor66jihtsgj','127.0.0.1',1519939043,'__ci_last_regenerate|i:1519939042;'),('r93704juuav1qpe1egpci4b143eqef77','127.0.0.1',1519939090,'__ci_last_regenerate|i:1519939089;'),('v6mdc6smpl5o4skkku429gt6f0di04q0','127.0.0.1',1519939164,'__ci_last_regenerate|i:1519939163;'),('i5h44i6bp8mrgb7pr1faqns5pcfth4g9','127.0.0.1',1519939239,'__ci_last_regenerate|i:1519939238;'),('tf85hq3i2ah9r026vb9ikmdflkcvvvq5','127.0.0.1',1519939284,'__ci_last_regenerate|i:1519939283;'),('mj9m8vnca61duf9ig92vhdeh76cesn3m','127.0.0.1',1519939463,'__ci_last_regenerate|i:1519939462;'),('k01sbjpp39jbd22rh86iel6sma1v4o9a','127.0.0.1',1519939586,'__ci_last_regenerate|i:1519939585;'),('mfmb6on81tji3348daveigkga0hk62dr','127.0.0.1',1519939673,'__ci_last_regenerate|i:1519939672;'),('2e3fdpcltsbvqa2lqt9lr1mih1elbqn0','127.0.0.1',1519939789,'__ci_last_regenerate|i:1519939788;'),('7lnf8ihc8fsurokj6vl0jagfk1nlrhr9','127.0.0.1',1519939917,'__ci_last_regenerate|i:1519939916;'),('in943ku17fsu1im7nt5g1csfuk7faiuu','127.0.0.1',1519939963,'__ci_last_regenerate|i:1519939962;'),('jsi4dmdrl885iq3u2dmda71f9ikran2i','127.0.0.1',1519940043,'__ci_last_regenerate|i:1519940042;'),('939v5rk3qcch1l7uvrk4nihkbfj840k2','127.0.0.1',1519940049,'__ci_last_regenerate|i:1519940048;'),('i5ocuvs9j72ka8hpokmu1aklpaiv5932','127.0.0.1',1519940061,'__ci_last_regenerate|i:1519940060;'),('djc3mcepf4kjqm916g8rlhs1ilt2b128','127.0.0.1',1519940078,'__ci_last_regenerate|i:1519940077;'),('dikb42eq5mm3aa4scqintgdta1m022ij','127.0.0.1',1519940093,'__ci_last_regenerate|i:1519940092;'),('rdq7lkjagu3o7birmguit36ggehd35s3','127.0.0.1',1519941167,'__ci_last_regenerate|i:1519941167;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('c1gd23td8i8pesbgbk30p3v3iaj3fse9','127.0.0.1',1519940180,'__ci_last_regenerate|i:1519940180;'),('op0f161bqm9l5cvgf2ltct6k8dqdldce','127.0.0.1',1519940187,'__ci_last_regenerate|i:1519940186;'),('h4emhfbarg562cpq7tjlahvj4i70h3m5','127.0.0.1',1519940212,'__ci_last_regenerate|i:1519940211;'),('dafoc1aecmc6abuds9mujb0n5jkjjngf','127.0.0.1',1519940229,'__ci_last_regenerate|i:1519940228;'),('ith5d3hkckrfr7ptvcgr12si8q3c8gbm','127.0.0.1',1519940306,'__ci_last_regenerate|i:1519940305;'),('84in4544c1321u7kg9ucq1n9impaekrd','127.0.0.1',1519940348,'__ci_last_regenerate|i:1519940347;'),('fgr2iono7dqk212tpk3evcjan1e3av0u','127.0.0.1',1519940414,'__ci_last_regenerate|i:1519940412;'),('04b11skclcsqrt543far00os6at0otdr','127.0.0.1',1519940432,'__ci_last_regenerate|i:1519940431;'),('ev1glfm6ecf2ndei1skulmu6vg0kl6o1','127.0.0.1',1519940449,'__ci_last_regenerate|i:1519940448;'),('e8qhk7k013kokiv9t7l7lm43b9ohhskr','127.0.0.1',1519940707,'__ci_last_regenerate|i:1519940706;'),('8igcf1jhc23s69epp0jgvqvu91q58m6f','127.0.0.1',1519940762,'__ci_last_regenerate|i:1519940761;'),('ap8aajv1qe5mvnt6qllu8vghc3mgmavb','127.0.0.1',1519940791,'__ci_last_regenerate|i:1519940789;'),('ssb310bsf3pr2bb0br64knbpuc0gr9d2','127.0.0.1',1519940924,'__ci_last_regenerate|i:1519940923;'),('kthmi12d82bafvjrji1r8no6fk135ab0','127.0.0.1',1519940976,'__ci_last_regenerate|i:1519940975;'),('5cbr6n4q28kh0ldmcl1otqddpo8her2b','127.0.0.1',1519941024,'__ci_last_regenerate|i:1519941023;'),('qs6lilhmq54ofmupb9gh70tmcna8v2r2','127.0.0.1',1519941043,'__ci_last_regenerate|i:1519941042;'),('of6upj94c0t0ft6r8legi7me1fo3alom','127.0.0.1',1519941599,'__ci_last_regenerate|i:1519941599;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kof78c5jhp751gco3kr8808liibh592k','127.0.0.1',1519941173,'__ci_last_regenerate|i:1519941172;'),('0jgi4go5l3qqldraut7jpfco0eqlgeil','127.0.0.1',1519941182,'__ci_last_regenerate|i:1519941181;'),('df5n9uta38rt2pp5h3iv3r4hrf12e5d1','127.0.0.1',1519941196,'__ci_last_regenerate|i:1519941195;'),('3hvgu7ekajcps5soint2qbd0nsdnfqn4','127.0.0.1',1519941201,'__ci_last_regenerate|i:1519941200;'),('bjk7j0pmdmljedhh6mao93rmu4bj5mkv','127.0.0.1',1519941207,'__ci_last_regenerate|i:1519941206;'),('kicolpii78q72fcd2sbkg3emv95ehr8v','127.0.0.1',1519941220,'__ci_last_regenerate|i:1519941219;'),('j4rr1vs8kvpnvp8f7gieumcpr0h471dh','127.0.0.1',1519941244,'__ci_last_regenerate|i:1519941243;'),('4a0v7ib3nmptvsk2i448plrmdpvrkav1','127.0.0.1',1519941335,'__ci_last_regenerate|i:1519941334;'),('4afmbv921kso41lifdqolkv2vac6l9lu','127.0.0.1',1519941353,'__ci_last_regenerate|i:1519941352;'),('2su48c0ug5uldef725qfsbd4pvadkeck','127.0.0.1',1519941370,'__ci_last_regenerate|i:1519941369;'),('vajj3rtprc10btcplt9reuuse3fdkrfm','127.0.0.1',1519941412,'__ci_last_regenerate|i:1519941411;'),('fdqr7rd2mq6696gep0a7d19nnojgfabh','127.0.0.1',1519941452,'__ci_last_regenerate|i:1519941450;'),('pa9po7u4374v15m6iia63mk905l8a3po','127.0.0.1',1519941495,'__ci_last_regenerate|i:1519941494;'),('inrb1h8kcdusm2auor5d5rp7nbqst4mr','127.0.0.1',1519941522,'__ci_last_regenerate|i:1519941521;'),('c9f3d8vt0tsqu6a4joffgekijr4mrjrf','127.0.0.1',1519942375,'__ci_last_regenerate|i:1519942375;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('88f8ij7ckcpa0qdj04bd8fi93boo28b1','127.0.0.1',1519941602,'__ci_last_regenerate|i:1519941601;'),('lrqg1smu5rt1dr83qhr2ioag65t02sps','127.0.0.1',1519941735,'__ci_last_regenerate|i:1519941734;'),('k3c1a6t2698i0rgglrqh26c43ldtdfq6','127.0.0.1',1519941744,'__ci_last_regenerate|i:1519941743;'),('jo6f985t9onkp80rk839ub0151f8ff0t','127.0.0.1',1519941754,'__ci_last_regenerate|i:1519941753;'),('368jvfpk57mkdgbf7bo22u8q5o2sf6gp','127.0.0.1',1519941762,'__ci_last_regenerate|i:1519941761;'),('9o2737imiqdr9pkt1s67b8l7g5lo4211','127.0.0.1',1519941768,'__ci_last_regenerate|i:1519941767;'),('1ip7fllssftk5gmotm4ku7p6mb7jg6vt','127.0.0.1',1519942714,'__ci_last_regenerate|i:1519942714;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ftbb0kokhdcf63tnoffg0ifjcil7vjpa','127.0.0.1',1519942392,'__ci_last_regenerate|i:1519942391;'),('mqmlrkshgu19fq08erb3e71ekkqimpud','127.0.0.1',1519942396,'__ci_last_regenerate|i:1519942396;'),('d9m9hdvdcshrqp1j84i5f6t8injugbl7','127.0.0.1',1519942400,'__ci_last_regenerate|i:1519942399;'),('7f3s57oheavrljp6h3dra4fg7s2ivamq','127.0.0.1',1519942446,'__ci_last_regenerate|i:1519942445;'),('qp9b9mhh78es8qjerorb3fjumcip8eq1','127.0.0.1',1519942464,'__ci_last_regenerate|i:1519942463;'),('k7o82djbgol6fe4neh2k7ssknbr8c31l','127.0.0.1',1519942474,'__ci_last_regenerate|i:1519942473;'),('a29p1r038jer3l8lmlvblqu5r10qlb3i','127.0.0.1',1519942510,'__ci_last_regenerate|i:1519942508;'),('v6l2k7mqiqj6moisfm8obrcn117ah6f2','127.0.0.1',1519942517,'__ci_last_regenerate|i:1519942516;'),('ti6m0mj2gr0nb2q3i4j76hadmda0ddki','127.0.0.1',1519942566,'__ci_last_regenerate|i:1519942566;'),('9ans2kqn1aj8sjqfh91ahtdbfop4dvv7','127.0.0.1',1519942571,'__ci_last_regenerate|i:1519942570;'),('s25m1bho788q924geq0v4npctpg5dpkr','127.0.0.1',1519942576,'__ci_last_regenerate|i:1519942576;'),('hb1qaj97v4ek0bonaido5qtjjsdpn9if','127.0.0.1',1519942583,'__ci_last_regenerate|i:1519942582;'),('lv830l69rlrh08eoshv82lpundeuucv4','127.0.0.1',1519942598,'__ci_last_regenerate|i:1519942598;'),('2mfuar1295d0ak06qt67kqbv9nr5du7k','127.0.0.1',1519943036,'__ci_last_regenerate|i:1519943036;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('gq8e4sls4vep6pciu6qjc2sif9s8qt89','127.0.0.1',1519942718,'__ci_last_regenerate|i:1519942718;'),('ecjpglfii2oikfra32mdlmehbkbfg9on','127.0.0.1',1519942728,'__ci_last_regenerate|i:1519942727;'),('4dji3c8no3k723m1br3vuq737utgqq0t','127.0.0.1',1519942734,'__ci_last_regenerate|i:1519942733;'),('40249j3t1nrhja2as1af82k10stbb7va','127.0.0.1',1519942774,'__ci_last_regenerate|i:1519942773;'),('9339bqahjipvdo6ql7pe2hc0152morf6','127.0.0.1',1519942855,'__ci_last_regenerate|i:1519942854;'),('7q2qa5h87i5baepi1n35q88silrblljh','127.0.0.1',1519942859,'__ci_last_regenerate|i:1519942858;'),('miipml2g4dobpffl94jrfhigkgtnpvj2','127.0.0.1',1519942869,'__ci_last_regenerate|i:1519942863;'),('5tf7039mdko5lcob5829g5oec0l4ve89','127.0.0.1',1519942875,'__ci_last_regenerate|i:1519942874;'),('n0mmlnno3ql8qihkta76fup2mrniosti','127.0.0.1',1519942878,'__ci_last_regenerate|i:1519942877;'),('i5chpdhfgm41bl8sfbncqnkeb87f1qfe','127.0.0.1',1519942994,'__ci_last_regenerate|i:1519942993;'),('ijb6fe2qv60bo7h1l2rvcjmlbibn7gkg','127.0.0.1',1519942998,'__ci_last_regenerate|i:1519942997;'),('fu02il5ub3opvre9c0a37cr1306cj4jq','127.0.0.1',1519943002,'__ci_last_regenerate|i:1519943001;'),('tol16bibrlfvvo3gma20d15jv5dss9if','127.0.0.1',1519943006,'__ci_last_regenerate|i:1519943005;'),('0iq9s57eqd8i3k3ugs8emuod60att2gd','127.0.0.1',1519943012,'__ci_last_regenerate|i:1519943011;'),('o001vb0gga58imeo53ojharbfqgm20v9','127.0.0.1',1519943019,'__ci_last_regenerate|i:1519943018;'),('27eb2abk591rshbphl676gufl858aff4','127.0.0.1',1519943845,'__ci_last_regenerate|i:1519943845;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4t1efgg495aobqd6r3vke7fj0rfl4bdt','127.0.0.1',1519943115,'__ci_last_regenerate|i:1519943114;'),('kji5f5eqnebb95s1cj220c2quinjmp80','127.0.0.1',1519943119,'__ci_last_regenerate|i:1519943118;'),('at9tkor9h7fm2fpuk8vm0n0rno306dom','127.0.0.1',1519943132,'__ci_last_regenerate|i:1519943131;'),('gaplnojqdht2mguorll4nv5r03antqpb','127.0.0.1',1519943151,'__ci_last_regenerate|i:1519943150;'),('nevjiemr8pe51pst1chha2iq1f53nive','127.0.0.1',1519943155,'__ci_last_regenerate|i:1519943154;'),('1gqrj4pg5r87ffca2fsap1ig7n2japoj','127.0.0.1',1519943170,'__ci_last_regenerate|i:1519943169;'),('4tjl3ep0d4k6uh1tp5j01ogued7lome9','127.0.0.1',1519943223,'__ci_last_regenerate|i:1519943223;'),('v484fif67l2g3anig8ic51ej274o5uli','127.0.0.1',1519943228,'__ci_last_regenerate|i:1519943226;'),('kbbcbmg4bth6gths4oarcuom5dh3anho','127.0.0.1',1519943565,'__ci_last_regenerate|i:1519943565;'),('sla4b0ibps7670otrm9a5b55jmp6u8jd','127.0.0.1',1519943571,'__ci_last_regenerate|i:1519943570;'),('dfroec9aeqlbjkrtj8h6ubkcj7jvaibt','127.0.0.1',1519943595,'__ci_last_regenerate|i:1519943594;'),('9qbrcj4a716m6rkjnnsgmt441k3biqja','127.0.0.1',1519943612,'__ci_last_regenerate|i:1519943611;'),('dr69ld4k53tjeqioas37idmongfat1is','127.0.0.1',1519943674,'__ci_last_regenerate|i:1519943673;'),('3epmuclo1dps1iid7kfmophmp5li9nlq','127.0.0.1',1519943679,'__ci_last_regenerate|i:1519943677;'),('s4t2hv4p8f40qbf9rb7ra09rig6fb0be','127.0.0.1',1519944024,'__ci_last_regenerate|i:1519944024;staff_user_id|s:1:\"1\";staff_logged_in|b:1;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('u6bknrj21p3hpkl2khnqvmhtq1ilhhna','127.0.0.1',1519943724,'__ci_last_regenerate|i:1519943723;'),('ov3n4i8ikq4vu9hrr71gh4qrikriosbr','127.0.0.1',1519943729,'__ci_last_regenerate|i:1519943728;'),('nts7vq084jrvjrcsp6jsr74e1emcp01u','127.0.0.1',1519943829,'__ci_last_regenerate|i:1519943829;'),('2qd6egkd5p3musuhs66rlmhb1tccedgq','127.0.0.1',1519944900,'__ci_last_regenerate|i:1519944900;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1nq6c0f3uhrmfruvdrem8h23v95rcse9','127.0.0.1',1519943852,'__ci_last_regenerate|i:1519943851;'),('tg5mongakhh79c7o21qh2arfuhjq521k','127.0.0.1',1519943855,'__ci_last_regenerate|i:1519943854;'),('q0p7hdgnqub56ait6krf1c4r36bok0tg','127.0.0.1',1519943895,'__ci_last_regenerate|i:1519943894;'),('pu4m3ut45oevrjfv96vqh0tn1f2hsgh9','127.0.0.1',1519943943,'__ci_last_regenerate|i:1519943943;'),('olfl5hj3uuisvi7ga171fp34qg05bq86','127.0.0.1',1519943948,'__ci_last_regenerate|i:1519943946;'),('5mo30edgk98ob91r90u1jriltgge371t','127.0.0.1',1519943993,'__ci_last_regenerate|i:1519943992;'),('9fecq44vmknucfucqf21a2c543o65nui','127.0.0.1',1519944938,'__ci_last_regenerate|i:1519944938;staff_user_id|s:1:\"1\";staff_logged_in|b:1;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6li4e4v6ejg383q8h6kjhsve7aih4ndi','127.0.0.1',1519944042,'__ci_last_regenerate|i:1519944042;'),('m3kttidnb9k2hlktdtc90km96s2if5fa','127.0.0.1',1519944046,'__ci_last_regenerate|i:1519944045;'),('n5q5shfn549onhve20cs7ocbl2he853a','127.0.0.1',1519944050,'__ci_last_regenerate|i:1519944049;'),('8bioen3nutqiis41nn7i1v387eiht5j5','127.0.0.1',1519944149,'__ci_last_regenerate|i:1519944149;'),('eke1tu4d9t4r621v9stdbbamftds8689','127.0.0.1',1519944250,'__ci_last_regenerate|i:1519944249;'),('6t0irciqunbp3illmrcsibfu12gl60ni','127.0.0.1',1519944254,'__ci_last_regenerate|i:1519944254;'),('b2ime0ojmeo8ts1v31trkdd55l8to59q','127.0.0.1',1519944258,'__ci_last_regenerate|i:1519944257;'),('gj0fd06k085p67br34dd5ou7kuqftalq','127.0.0.1',1519944296,'__ci_last_regenerate|i:1519944295;'),('jgta4hh5qahq48fo7a2rop3bq5g8a963','127.0.0.1',1519944300,'__ci_last_regenerate|i:1519944299;'),('097l3e2klba5d68b7t1qvs6l06t189u2','127.0.0.1',1519944307,'__ci_last_regenerate|i:1519944306;'),('6fikdi936fb7f7bbfllo9q951bteunqj','127.0.0.1',1519944312,'__ci_last_regenerate|i:1519944311;'),('r6ab6qodj1tbc52tvtofs1oeodkp4pa4','127.0.0.1',1519944352,'__ci_last_regenerate|i:1519944352;'),('1m4oqmd7k374s150d3u57fs024bu3n54','127.0.0.1',1519944356,'__ci_last_regenerate|i:1519944355;'),('cf31psrh3tvebe1fj88c387dr07e30g1','127.0.0.1',1519944422,'__ci_last_regenerate|i:1519944421;'),('5ko3fcesf585jcu9lkbj2iuvthdv76jk','127.0.0.1',1519944441,'__ci_last_regenerate|i:1519944441;'),('3u08bvnhoprfbbqhji4jnvt3bl5efl9b','127.0.0.1',1519944682,'__ci_last_regenerate|i:1519944680;'),('qafk8do7vn1q6ucj2q9k6i3bbedgqo2o','127.0.0.1',1519944686,'__ci_last_regenerate|i:1519944685;'),('i61ol568nlaqtabs0kut9vthi5fb3726','127.0.0.1',1519944690,'__ci_last_regenerate|i:1519944689;'),('inafnib209tiqfvqklu6lprl4m5shlql','127.0.0.1',1519944755,'__ci_last_regenerate|i:1519944754;'),('mufa00ln5l4kag2eejenai9a25k2g3nf','127.0.0.1',1519944765,'__ci_last_regenerate|i:1519944764;'),('q7ud7vbf84nvdfl3tjeud51quonp6lt0','127.0.0.1',1519944768,'__ci_last_regenerate|i:1519944768;'),('impoel1oun30thup87j4bk790dhdjvvu','127.0.0.1',1519944833,'__ci_last_regenerate|i:1519944831;'),('nb360udosif5i04pc46d94ef9b35fbv4','127.0.0.1',1519944837,'__ci_last_regenerate|i:1519944836;'),('dt5dtmlj2chv9q8654cv8ak5bl276l6o','127.0.0.1',1519971979,'__ci_last_regenerate|i:1519971979;'),('98uojsjbc019610sid4kui5q6kula4iv','127.0.0.1',1519944938,'__ci_last_regenerate|i:1519944938;'),('aeblqdfav6o065bogttt98c76vu807gc','127.0.0.1',1519972300,'__ci_last_regenerate|i:1519972300;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jjha6l835cd8upbif6oof34putfdbkud','127.0.0.1',1519972613,'__ci_last_regenerate|i:1519972613;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('n7im31ph0fugnfgc2201okfm4qgjqps5','127.0.0.1',1519973033,'__ci_last_regenerate|i:1519973033;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1c40osce76tl4ofatg6qkd3l030gjs77','127.0.0.1',1519981177,'__ci_last_regenerate|i:1519981177;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5f04e8p0lhgu6qvjs16e8kokqap1331t','127.0.0.1',1519982814,'__ci_last_regenerate|i:1519982814;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('339k8v4krrhtbtalqqkfq183nl1hjd0s','127.0.0.1',1519985648,'__ci_last_regenerate|i:1519985648;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('effa0kmka6n4rhs9f9pjnh84jcb8pt0p','127.0.0.1',1519982906,'__ci_last_regenerate|i:1519982906;'),('ik7ahpr6o83uloo15hi26p4se3hcf2gm','127.0.0.1',1519982923,'__ci_last_regenerate|i:1519982923;'),('0343qqek836gqhj9aqhvdket86tc0mjh','127.0.0.1',1519982938,'__ci_last_regenerate|i:1519982938;'),('ukjdntfamc5a18ohpsj59au9u3t11c2s','127.0.0.1',1519983023,'__ci_last_regenerate|i:1519983023;'),('hs0iee2fk14krb758b7se8sa8qmj3fvs','127.0.0.1',1519983130,'__ci_last_regenerate|i:1519983130;'),('8gk802h8p94m0b00ahae4e923gjp2pmi','127.0.0.1',1519983217,'__ci_last_regenerate|i:1519983217;'),('117b1vrr4isl5jrnca2fg7v2v63n12b6','127.0.0.1',1519983443,'__ci_last_regenerate|i:1519983443;'),('0kja6ccobeimlhb561kan5f6sjah2koc','127.0.0.1',1519983468,'__ci_last_regenerate|i:1519983468;'),('nbhbjfmhcvhu68tf98ejc0lnh5v2o0m5','127.0.0.1',1519983479,'__ci_last_regenerate|i:1519983479;'),('uc0ebkp40r6qt4j6m03isqipc9f812so','127.0.0.1',1519983482,'__ci_last_regenerate|i:1519983482;'),('630sp5gdepo9p26u02g8duq2ic2ubg41','127.0.0.1',1519983499,'__ci_last_regenerate|i:1519983499;'),('tjm47un9sked7pc179i7gmcosmih6ht2','127.0.0.1',1519983786,'__ci_last_regenerate|i:1519983786;'),('69rm9453rk5udufdj2g0i5rvmlsdf63q','127.0.0.1',1519984221,'__ci_last_regenerate|i:1519984221;'),('ad4boe9lg73pq6nk37b4inl54q2qglo2','127.0.0.1',1519984442,'__ci_last_regenerate|i:1519984442;'),('ejmktj98jt8635t7tfd245k7qraiqh2m','127.0.0.1',1519984454,'__ci_last_regenerate|i:1519984454;'),('bv7oe8s0k1m7ehqclgl5jj3df5l5sj3a','127.0.0.1',1519984462,'__ci_last_regenerate|i:1519984462;'),('tp6ik6kcl20hmn24fhmipb6fjf1h912l','127.0.0.1',1519984561,'__ci_last_regenerate|i:1519984561;'),('h30rlqegf7jfpfsj1hv7mhvjgqh12rp0','127.0.0.1',1519984597,'__ci_last_regenerate|i:1519984597;'),('tu9bum1sgpusaph7i5gavilfec2qi27o','127.0.0.1',1519984856,'__ci_last_regenerate|i:1519984856;'),('957fh3fap82g7e8796nt1lnnq5d1rr4m','127.0.0.1',1519984868,'__ci_last_regenerate|i:1519984868;'),('a07j7oprfvj2b5ip4jc90flivqnqn0h1','127.0.0.1',1519984920,'__ci_last_regenerate|i:1519984920;'),('m13ogo7ult3nvlk04a1m1co711kkdm1g','127.0.0.1',1519985350,'__ci_last_regenerate|i:1519985350;'),('tbpqndl5asmadt9t3fbdpf18pp5ki0ks','127.0.0.1',1519985504,'__ci_last_regenerate|i:1519985504;'),('5dqrnlnm7h6opi6necfoeb1uldmvibtr','127.0.0.1',1519996586,'__ci_last_regenerate|i:1519996586;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kvsdmmfp3e60ghegjjtajp9o2caa3p5j','127.0.0.1',1519987400,'__ci_last_regenerate|i:1519987400;'),('ek2a44c5vf9jfsc408cqai01cceth57a','127.0.0.1',1519987423,'__ci_last_regenerate|i:1519987423;'),('nn66n2i4ehf48ktc1ogh8qjn2eb8ec76','127.0.0.1',1519987727,'__ci_last_regenerate|i:1519987727;'),('8f83du4jghka9ijiqq7g12u6pk2dq1fm','127.0.0.1',1519987735,'__ci_last_regenerate|i:1519987735;'),('c07e6f8m58ds98e5phcr2kk8b75lns8g','127.0.0.1',1519987739,'__ci_last_regenerate|i:1519987739;'),('jmvc7pqet9iklgjcgnaun5g26ft93i47','127.0.0.1',1519987943,'__ci_last_regenerate|i:1519987943;'),('4dkgst3ecifu3p3akpt9jffm32qditu2','127.0.0.1',1519988001,'__ci_last_regenerate|i:1519988001;'),('82sob78kirgl7ov7jrs6iuv1hprj0n8u','127.0.0.1',1519988085,'__ci_last_regenerate|i:1519988085;'),('j62hu5ob84817auro21qdqa6m7cg3akh','127.0.0.1',1519988371,'__ci_last_regenerate|i:1519988371;'),('eob7k2vr9dnqgt5prqtcrulcvo5ojpjt','127.0.0.1',1519988382,'__ci_last_regenerate|i:1519988382;'),('69n1sir95cp7s9am4l22vf5boq163gua','127.0.0.1',1519988406,'__ci_last_regenerate|i:1519988406;'),('semnjcvp7pt23c0e8029u4bqvqcj30g9','127.0.0.1',1519988419,'__ci_last_regenerate|i:1519988419;'),('p4n0lrod3ejtfeu1966bkufgqser0tkf','127.0.0.1',1519988523,'__ci_last_regenerate|i:1519988523;'),('qg9j6t01n9ql4t2tkkhh362cmjqqkke4','127.0.0.1',1519988549,'__ci_last_regenerate|i:1519988549;'),('bqt46iqdvosmi60tjkb6m7fcjjhfivg1','127.0.0.1',1519988602,'__ci_last_regenerate|i:1519988602;'),('ut2ia1plv73oq8um902u2i5a89octrlc','127.0.0.1',1519988624,'__ci_last_regenerate|i:1519988623;'),('c7mr9jd6lnphopkjea7eig1q5u94phdo','127.0.0.1',1519988651,'__ci_last_regenerate|i:1519988651;'),('gutv6j91jfinsiv2aidf17245mun7jd7','127.0.0.1',1519988696,'__ci_last_regenerate|i:1519988696;'),('qj1sqluahiqpudfe3maffmp3u03clupc','127.0.0.1',1519988721,'__ci_last_regenerate|i:1519988721;'),('jv62okhhqj1gj9r73iaop2s5bapcf1gv','127.0.0.1',1519988811,'__ci_last_regenerate|i:1519988811;'),('oq5plnn6ut3s6964qvj32bsabgldr8pe','127.0.0.1',1519988906,'__ci_last_regenerate|i:1519988906;'),('oppkssb641ijr2hu6m7aaau39atidk9b','127.0.0.1',1519988959,'__ci_last_regenerate|i:1519988959;'),('f9raar7hnlct8gsbdnfrqsjl3gjlavv9','127.0.0.1',1519988973,'__ci_last_regenerate|i:1519988973;'),('4hfvn6ho3774559r8rru52ono96hqp6t','127.0.0.1',1519988990,'__ci_last_regenerate|i:1519988989;'),('phe9r72reisf1599f5p4l77ct0fvtfo4','127.0.0.1',1519989004,'__ci_last_regenerate|i:1519989004;'),('2htbd6opgmivfg8vafouj79k64hcb8fk','127.0.0.1',1519989043,'__ci_last_regenerate|i:1519989043;'),('h60o1s2q6h68egi2o83jsrhlqnppd148','127.0.0.1',1519989096,'__ci_last_regenerate|i:1519989095;'),('e0vn9oma4am3vhk1gmiblf9o3ls78885','127.0.0.1',1519989429,'__ci_last_regenerate|i:1519989429;'),('pcbbe7suo10nsq1artiu9hg5e2q0462k','127.0.0.1',1519989861,'__ci_last_regenerate|i:1519989861;'),('iq81k96340i9s659fcia768vp4k0l6pt','127.0.0.1',1519989960,'__ci_last_regenerate|i:1519989960;'),('p4nnr3ji4s3lnfdhsc6k8pvepluui0q2','127.0.0.1',1519990021,'__ci_last_regenerate|i:1519990021;'),('gssr9g7rv1ji85fa6ojb1cu3qkf4dodq','127.0.0.1',1519990031,'__ci_last_regenerate|i:1519990031;'),('ic93g2ie3io5igd3gc4s18acr72aog02','127.0.0.1',1519990042,'__ci_last_regenerate|i:1519990042;'),('3ukpl9ed0b3r2haeoerdptd62n3mgvpj','127.0.0.1',1519990050,'__ci_last_regenerate|i:1519990050;'),('ja6scc2ifohqh8aoc8e4vtjkiodh4c5c','127.0.0.1',1519990055,'__ci_last_regenerate|i:1519990055;'),('5tmjheme0kjirgqn91dq8qeb75q4ns22','127.0.0.1',1519990077,'__ci_last_regenerate|i:1519990077;'),('eodqav7qd3m8a83ln18migauioopa0bd','127.0.0.1',1519990128,'__ci_last_regenerate|i:1519990128;'),('pbm13uvq36t21t8h5cinottff18uah6j','127.0.0.1',1519990145,'__ci_last_regenerate|i:1519990145;'),('a1138aobi55j88dnm6078qmvb0vrldjl','127.0.0.1',1519990193,'__ci_last_regenerate|i:1519990193;'),('8u0563l6uuf7oiequm7eo41q48jqb03e','127.0.0.1',1519990198,'__ci_last_regenerate|i:1519990198;'),('ss6terriovaokebvoid47ah27d8giv23','127.0.0.1',1519990857,'__ci_last_regenerate|i:1519990857;'),('luodk8v290r6uvfemiqgoo266bv3n49c','127.0.0.1',1519990886,'__ci_last_regenerate|i:1519990886;'),('hghalm2ki3a4rmpt4dj6prhd38qccrlb','127.0.0.1',1519990916,'__ci_last_regenerate|i:1519990916;'),('3645pp4lktpv6sv8auboakpqc0m4t9ru','127.0.0.1',1519990963,'__ci_last_regenerate|i:1519990963;'),('s70ivl7oeg5n012b6bicp26eovlmuojn','127.0.0.1',1519990998,'__ci_last_regenerate|i:1519990998;'),('msq6t4rtp10of1i54pmfpcqvjslhbcmr','127.0.0.1',1519991038,'__ci_last_regenerate|i:1519991038;'),('v3upcoseuo8runjjtvv8fg965avrh5ee','127.0.0.1',1519991143,'__ci_last_regenerate|i:1519991143;'),('0itaud7lanhc0a4u50c955js4to12fr6','127.0.0.1',1519991286,'__ci_last_regenerate|i:1519991286;'),('bi5rnghsoosu5tns2oj7lied286b0k05','127.0.0.1',1519991297,'__ci_last_regenerate|i:1519991297;'),('02cbjrkka0a34iqinsj0n9nlauoplprk','127.0.0.1',1519991510,'__ci_last_regenerate|i:1519991510;'),('acqn9l5ojc3b8r394m1rnhncl926a89a','127.0.0.1',1519991525,'__ci_last_regenerate|i:1519991525;'),('oj6uqd4fo2229vl5v9c0g55iv7f8sek2','127.0.0.1',1519994889,'__ci_last_regenerate|i:1519994888;'),('tbbh1d1d96cddtl5oi0sdj6j2cmmh31i','127.0.0.1',1519994951,'__ci_last_regenerate|i:1519994951;'),('t42og2ibf3f76cdpp8ioffns1l8kacjr','127.0.0.1',1519994966,'__ci_last_regenerate|i:1519994966;'),('lio8n1ol0bnvkirepb8rnghmccckd3me','127.0.0.1',1519995006,'__ci_last_regenerate|i:1519995006;'),('8c3aggjs9q39rchq9b6c950tacrj9lv1','127.0.0.1',1519995016,'__ci_last_regenerate|i:1519995016;'),('jt1l3ek9fgdceathn5ttbcdrpkqgnu5q','127.0.0.1',1519995057,'__ci_last_regenerate|i:1519995057;'),('bg2n9kcrckp8tk5qu7oabaosohrsknof','127.0.0.1',1519995074,'__ci_last_regenerate|i:1519995074;'),('bjrb6fsvgqbbrmer4agfgki4ed6m0t7s','127.0.0.1',1519995183,'__ci_last_regenerate|i:1519995183;'),('vjv40jd5i8qq9vscbmmks5rp5j2r4aam','127.0.0.1',1519995268,'__ci_last_regenerate|i:1519995268;'),('4us0ec9kgeti07n1c1ah7tdo8vjqsej3','127.0.0.1',1519995297,'__ci_last_regenerate|i:1519995297;'),('e5b21ah0gae4qe3qjd2pjeiivb773god','127.0.0.1',1519995402,'__ci_last_regenerate|i:1519995402;'),('ibu9mrrrd83knb9ctdiibugsaijhb9tn','127.0.0.1',1519995576,'__ci_last_regenerate|i:1519995576;'),('8sclpnqjurlansf39t7o3f5vrlh6lqqa','127.0.0.1',1519995839,'__ci_last_regenerate|i:1519995839;'),('ml3s6367ne96pf5cprgu5qr4r489jqlr','127.0.0.1',1519995899,'__ci_last_regenerate|i:1519995899;'),('fhv18mlk4q9mu1bshh9v30cd0d2p9msr','127.0.0.1',1519995913,'__ci_last_regenerate|i:1519995913;'),('0v8aq7n76042gum259difu4sp64qo1po','127.0.0.1',1519996067,'__ci_last_regenerate|i:1519996067;'),('ld0qvie5jfv85r48une59s0b1m40g3p7','127.0.0.1',1519996154,'__ci_last_regenerate|i:1519996154;'),('flm0335cm6buapqrcj14892nprj1gct9','127.0.0.1',1519996194,'__ci_last_regenerate|i:1519996194;'),('do3ep9gb3so8otkt1iahvqjnvb20fdvn','127.0.0.1',1519996225,'__ci_last_regenerate|i:1519996225;'),('qd2oj5fql9cdqv95okvc57i2k5v01sag','127.0.0.1',1519996257,'__ci_last_regenerate|i:1519996257;'),('k9eab59v6f3r2kd7ijksqasjc0jkuaes','127.0.0.1',1519996270,'__ci_last_regenerate|i:1519996270;'),('r99ockvpb8aoaf8l6piklh6cs7ok9893','127.0.0.1',1519996284,'__ci_last_regenerate|i:1519996284;'),('opha1vq507fhgp9thbs39vemvj9eevcm','127.0.0.1',1519996327,'__ci_last_regenerate|i:1519996327;'),('6g3erdvii8qb6df8dpm1u1iiu7vt8vdg','127.0.0.1',1519996448,'__ci_last_regenerate|i:1519996448;'),('65tjsc2qen7m7quedqg8al2aeg8c65n1','127.0.0.1',1519996519,'__ci_last_regenerate|i:1519996519;'),('82op4v96i6e58pbgkkbu554op61tqp89','127.0.0.1',1519996557,'__ci_last_regenerate|i:1519996557;'),('fu8gkrgsgtsrq80o7qj4gfh8ndivdnfk','127.0.0.1',1519997521,'__ci_last_regenerate|i:1519997521;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('av5v8d0vkf4crq6410qkoeeru03for4j','127.0.0.1',1519996620,'__ci_last_regenerate|i:1519996620;'),('0sdtbisekl5f8te4m7klrcklush2pick','127.0.0.1',1519996770,'__ci_last_regenerate|i:1519996770;'),('r4eb0nueh8buo07ajvkmtlled2ihuvbm','127.0.0.1',1519996811,'__ci_last_regenerate|i:1519996811;'),('nu0spc5q10s9hicn5500s77ktf3sfnsb','127.0.0.1',1519996876,'__ci_last_regenerate|i:1519996876;'),('1sh32luh3kvei6qgrmaml20hpreed6nk','127.0.0.1',1519996893,'__ci_last_regenerate|i:1519996893;'),('pk8g0u86n112l4pej8uga8app7k3o6ba','127.0.0.1',1519996908,'__ci_last_regenerate|i:1519996908;'),('f3m42o68cderoorkist7m352ea8hlqct','127.0.0.1',1519996933,'__ci_last_regenerate|i:1519996933;'),('jbmkmsapbi1lqorl0774jrjv3q74851g','127.0.0.1',1519996946,'__ci_last_regenerate|i:1519996946;'),('g665h0bims4rbuksi9iv95b2rr36vlu0','127.0.0.1',1519997004,'__ci_last_regenerate|i:1519997004;'),('dnpljpoh5t34femjlg5j01klan3v9ncv','127.0.0.1',1519997018,'__ci_last_regenerate|i:1519997018;'),('a1hcliohglnfp2c8rhektrl4ev3nibk4','127.0.0.1',1519997046,'__ci_last_regenerate|i:1519997046;'),('37l3n0g9io9uetmakm226oi58mhtksp2','127.0.0.1',1519997312,'__ci_last_regenerate|i:1519997312;'),('rc1f8hmafhe1tsai4c4av0v0q88q2mif','127.0.0.1',1519997397,'__ci_last_regenerate|i:1519997397;'),('84k21hd7dnns83fk0tj5air31o9abvu5','127.0.0.1',1519997407,'__ci_last_regenerate|i:1519997407;'),('uo9m566khuhq96u2e2qti8e3oarn6vhi','127.0.0.1',1519997420,'__ci_last_regenerate|i:1519997420;'),('c573o4usse1ehao6f22nl3uo1775olqr','127.0.0.1',1519997425,'__ci_last_regenerate|i:1519997425;'),('774jbq5s9sc2fnahmcc1v7p4hdfu04pe','127.0.0.1',1519997433,'__ci_last_regenerate|i:1519997433;'),('guh80vfobac1urge9o03l3n6m6imcva8','127.0.0.1',1519997440,'__ci_last_regenerate|i:1519997440;'),('nof1pi567sm1orf9qvfj8ufc26aam5q6','127.0.0.1',1519997451,'__ci_last_regenerate|i:1519997451;'),('3ie63tj3o2jhoqsi2h3ks0ogbc9ehuph','127.0.0.1',1519997509,'__ci_last_regenerate|i:1519997509;'),('9amum260b8t5l5339h5npvujnuhubgs0','127.0.0.1',1519997517,'__ci_last_regenerate|i:1519997517;'),('b1t1rs73ufhs77jkg5860voldna5g33j','127.0.0.1',1520015671,'__ci_last_regenerate|i:1519997521;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tvcgqdmtua363pteb5sgvqegfbajmfrs','127.0.0.1',1519997539,'__ci_last_regenerate|i:1519997539;'),('og7u6cqb1q608a48fpkgltrmv0uou5ne','127.0.0.1',1519997581,'__ci_last_regenerate|i:1519997581;'),('pq25j29cte62daj357ppsbur0rmm8ppi','127.0.0.1',1520015662,'__ci_last_regenerate|i:1520015662;'),('opp1jfh45nhmclb081eveg3r0hlue93q','127.0.0.1',1520015671,'__ci_last_regenerate|i:1520015671;'),('k9c7s45s71qhsd2jilpslo6iju55gas5','127.0.0.1',1520062581,'__ci_last_regenerate|i:1520062581;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1jumoabhoickndpahirnfi7hdo4rpvlj','127.0.0.1',1520062021,'__ci_last_regenerate|i:1520062021;'),('f7153fth7hjqfjer4m6ud9gun9r46rpk','127.0.0.1',1520062030,'__ci_last_regenerate|i:1520062030;'),('e3neh7eriomo9rcjdlle8abg7qbhc13m','127.0.0.1',1520062085,'__ci_last_regenerate|i:1520062085;'),('ijvdrkt5pl913gr4isot2d5ddumsviom','127.0.0.1',1520062091,'__ci_last_regenerate|i:1520062091;'),('muvkufs80837mq5h8dtees3kvcevqim9','127.0.0.1',1520062098,'__ci_last_regenerate|i:1520062098;'),('g1dgvhhratnhsj105qpan9tq69qe0k0k','127.0.0.1',1520062116,'__ci_last_regenerate|i:1520062116;'),('rti4pn1a24ec87hvqep676cuorv0ocr4','127.0.0.1',1520062119,'__ci_last_regenerate|i:1520062119;'),('a7ju194mn457u4trf5ck4g536doc8vd0','127.0.0.1',1520062128,'__ci_last_regenerate|i:1520062128;'),('pets66qlt26bu5gpcn7ffqi4iojld4ru','127.0.0.1',1520062173,'__ci_last_regenerate|i:1520062173;'),('j5o8vmqqtdeg9280lr9afa127fn9k87v','127.0.0.1',1520062182,'__ci_last_regenerate|i:1520062182;'),('fuam0dq559l02vlijhla925kj4i5djok','127.0.0.1',1520062192,'__ci_last_regenerate|i:1520062192;'),('pau6517v4b5an152ueb4bchm0dhb6rli','127.0.0.1',1520062313,'__ci_last_regenerate|i:1520062313;'),('ddu827jj6btm6f8g62ab04bai8b47peu','127.0.0.1',1520062391,'__ci_last_regenerate|i:1520062391;'),('lf5cr8ajjproekflc6icm2eb5ada7q4e','127.0.0.1',1520062398,'__ci_last_regenerate|i:1520062398;'),('gi3n9le28po0b4alb0mh2lnkn0rqakdg','127.0.0.1',1520062406,'__ci_last_regenerate|i:1520062406;'),('4qcf4k3m7ancbsrbbr99r6fej73vj6c4','127.0.0.1',1520062411,'__ci_last_regenerate|i:1520062411;'),('u9c1bknbtk04cso6merttptm77k6gr9h','127.0.0.1',1520062417,'__ci_last_regenerate|i:1520062417;'),('qlmcf2rl5dime4nia4nbhcud88t7qceq','127.0.0.1',1520062493,'__ci_last_regenerate|i:1520062493;'),('vq8e3qtdej60hnd0cci3u3hde2edntvr','127.0.0.1',1520062531,'__ci_last_regenerate|i:1520062531;'),('cki76ntdc2nk2q73s68iqilpdna7dp0n','127.0.0.1',1520062536,'__ci_last_regenerate|i:1520062536;'),('1eciuvtuvd8dto36h48t3821h31bi36m','127.0.0.1',1520062556,'__ci_last_regenerate|i:1520062556;'),('j1ss166gui6kt9751gb6ikvsu2jhvf49','127.0.0.1',1520062563,'__ci_last_regenerate|i:1520062563;'),('dqcm81boq9gqctaoh31gc105mldc9e9m','127.0.0.1',1520062573,'__ci_last_regenerate|i:1520062573;'),('ubmkk74fv5d7vqvegspbuukhd2f6t17o','127.0.0.1',1520063505,'__ci_last_regenerate|i:1520063505;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('okjbjhii7scs876e5pk2gmp6gincsf9l','127.0.0.1',1520062659,'__ci_last_regenerate|i:1520062659;'),('agdc3hntpu1glslmjllovhrnhucmeeg8','127.0.0.1',1520062668,'__ci_last_regenerate|i:1520062668;'),('r44k4j725uclmvrbor55ojk30u7811is','127.0.0.1',1520062691,'__ci_last_regenerate|i:1520062691;'),('jr63csuunkddctddvsthrnh83pdtrsnq','127.0.0.1',1520062702,'__ci_last_regenerate|i:1520062702;'),('qi7njrn60g93abjmveqe5qfdfdv7b7p6','127.0.0.1',1520062723,'__ci_last_regenerate|i:1520062723;'),('hs9p1ms6pos3rdjlptdo07sf4j7q5gfa','127.0.0.1',1520062937,'__ci_last_regenerate|i:1520062937;'),('c9cv67q8e1rr3go4hm78iucgmrtb6bq2','127.0.0.1',1520063060,'__ci_last_regenerate|i:1520063060;'),('bl8f8lfp1f10e8dv3l00ldkm8rmbdacg','127.0.0.1',1520063066,'__ci_last_regenerate|i:1520063066;'),('drgpv1ts6i98m142ugdo8oeqrjhq86dl','127.0.0.1',1520063103,'__ci_last_regenerate|i:1520063102;'),('nudf2081j0ahh73i19dlp57lkqp9jjd1','127.0.0.1',1520063109,'__ci_last_regenerate|i:1520063109;'),('pfbl2ijlabtff5akimc013baee1vr64m','127.0.0.1',1520063115,'__ci_last_regenerate|i:1520063115;'),('7cr154h1sd3av9jo758novm9e17g21ro','127.0.0.1',1520063120,'__ci_last_regenerate|i:1520063120;'),('vklimcsgj7mbmg64bpn589srqr9ref75','127.0.0.1',1520063123,'__ci_last_regenerate|i:1520063123;'),('8jm98bkvbvpg1q1lu4b3ebhjseksopfc','127.0.0.1',1520063297,'__ci_last_regenerate|i:1520063297;'),('pcc649t0nu88mtbr261aci4q1a9bo8qu','127.0.0.1',1520063302,'__ci_last_regenerate|i:1520063302;'),('43lbmopsj55viti9rk54net6nclhir3o','127.0.0.1',1520063321,'__ci_last_regenerate|i:1520063320;'),('qfkq0g7am188dngtte8tfra9in8is4du','127.0.0.1',1520063342,'__ci_last_regenerate|i:1520063341;'),('e8358t7ngl4ug1eubjf1436qtia63klv','127.0.0.1',1520063363,'__ci_last_regenerate|i:1520063363;'),('cbn13ctbuns2h1c8df0ctkh07ictaktp','127.0.0.1',1520063380,'__ci_last_regenerate|i:1520063380;'),('sllsqc1fl3vio3csbbai4tph3ij6d9p7','127.0.0.1',1520063478,'__ci_last_regenerate|i:1520063477;'),('9k0bq8qk6042t6rgohldt864j7uj71gc','127.0.0.1',1520063490,'__ci_last_regenerate|i:1520063490;'),('k4q2cod4f0t818veshuiil3qf80uoro8','127.0.0.1',1520063496,'__ci_last_regenerate|i:1520063495;'),('6411vb6m2ld1l39f7lehc2j20t0c7sfl','127.0.0.1',1520064817,'__ci_last_regenerate|i:1520064817;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('id4gmke40qv7lkecu97v2i32sq5apmpl','127.0.0.1',1520063524,'__ci_last_regenerate|i:1520063524;'),('q8fseptrolsbkq3tmrosgqe4inci0ill','127.0.0.1',1520063544,'__ci_last_regenerate|i:1520063543;'),('1oehguev6g06ts6l8gjtuai9cvr39fnb','127.0.0.1',1520063555,'__ci_last_regenerate|i:1520063554;'),('dot737244g538ansllapajhm0sos5ord','127.0.0.1',1520063565,'__ci_last_regenerate|i:1520063565;'),('856kl19q9iufo5i18ki5cudl0uh0s3rs','127.0.0.1',1520063605,'__ci_last_regenerate|i:1520063605;'),('8pp6pb2vh5b81bn91bnv3h8i5hdr2lo4','127.0.0.1',1520063609,'__ci_last_regenerate|i:1520063609;'),('hn1pusdf0ee5dheqmut871kn48kk9gql','127.0.0.1',1520063614,'__ci_last_regenerate|i:1520063614;'),('9b71br7ko78f9o5js3egta2ktr7ts0mn','127.0.0.1',1520063638,'__ci_last_regenerate|i:1520063637;'),('i1j8p0uc6hath16tke6uoi0ep397vk54','127.0.0.1',1520065381,'__ci_last_regenerate|i:1520065381;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ocmgaif8hlu1dqu1419tpjbk7vt93643','127.0.0.1',1520072120,'__ci_last_regenerate|i:1520072120;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('n5d0k1pb9lbkff4mk71nqf39l3rdcg18','127.0.0.1',1520065385,'__ci_last_regenerate|i:1520065385;'),('cq4blfbbkl186mp5vh4a6gdu5u6c9133','127.0.0.1',1520065515,'__ci_last_regenerate|i:1520065515;'),('cn6m9vg8fo0r789atoiqok2f69ul8307','127.0.0.1',1520065526,'__ci_last_regenerate|i:1520065526;'),('c1ph1h3uk0k4dhm41ktdg4uak1pce5ke','127.0.0.1',1520065529,'__ci_last_regenerate|i:1520065529;'),('tegjd7i8hfgu2d3gu5rn98es7qc424rd','127.0.0.1',1520065590,'__ci_last_regenerate|i:1520065590;'),('p7ckam23gpc95lmlo1ks5amonceh9on9','127.0.0.1',1520065596,'__ci_last_regenerate|i:1520065596;'),('s109fdr0vq2ekv56bfurievjnpjd7pmv','127.0.0.1',1520065600,'__ci_last_regenerate|i:1520065600;'),('tvd06vfh8e36u6fqt8aqbqmvuljo851t','127.0.0.1',1520065637,'__ci_last_regenerate|i:1520065637;'),('pgo8rkol8d4b26vl7kmhfjari2sq0vn6','127.0.0.1',1520065653,'__ci_last_regenerate|i:1520065653;'),('1k7vc3cvgfmn4ejs0t0n4bc4ja5qg0bd','127.0.0.1',1520065696,'__ci_last_regenerate|i:1520065696;'),('8sof788kgm6ja9mdt5c749h4roqdano0','127.0.0.1',1520065763,'__ci_last_regenerate|i:1520065762;'),('rcgf9v1l54teagtam4kd7t7c010hlpp6','127.0.0.1',1520065780,'__ci_last_regenerate|i:1520065780;'),('oras1knmmupbulin1dg9q39nubpp9t2q','127.0.0.1',1520065818,'__ci_last_regenerate|i:1520065817;'),('28f84l2g3143laqb61cfjr5l3nue5evm','127.0.0.1',1520065880,'__ci_last_regenerate|i:1520065880;'),('n0qn29jn5qhpf943ti4pkoh96sjrna2g','127.0.0.1',1520066079,'__ci_last_regenerate|i:1520066078;'),('oqa0oi9rvtt9d78t862lh3sto8j9n1tl','127.0.0.1',1520067918,'__ci_last_regenerate|i:1520067916;'),('h4gbn5bbk6t4t478pajh01ad4jvanqb8','127.0.0.1',1520068043,'__ci_last_regenerate|i:1520068042;'),('46eij9sta4l49cdt3pk7tqg3ddarlor4','127.0.0.1',1520068084,'__ci_last_regenerate|i:1520068083;'),('jlttc399j0qf6rqmaga26pk2s0d6qipk','127.0.0.1',1520068317,'__ci_last_regenerate|i:1520068317;'),('s8imbm5u46rq62kpkmrpskmnt9i8v7fg','127.0.0.1',1520068421,'__ci_last_regenerate|i:1520068421;'),('92d4j6ocf4qgbjdl47kktbe88s324mn8','127.0.0.1',1520068801,'__ci_last_regenerate|i:1520068801;'),('nulsq7ls5794kjmhili6qq5d4sp9iu9t','127.0.0.1',1520068904,'__ci_last_regenerate|i:1520068904;'),('gh716cglc8i3fi1c1tffk35lc0qi6lic','127.0.0.1',1520068944,'__ci_last_regenerate|i:1520068943;echelon|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('lofko58bfj55etm0nvigrat4152997s8','127.0.0.1',1520068979,'__ci_last_regenerate|i:1520068978;echelon|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('tj7d5rd7jmc798seknei165512t8snv2','127.0.0.1',1520068992,'__ci_last_regenerate|i:1520068991;echelon|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('j6bvt31c4o670o872m2cmee0oqq8h049','127.0.0.1',1520069074,'__ci_last_regenerate|i:1520069074;echelon|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('gbaqngtb0p8tl5p5klohka0u3dc2di76','127.0.0.1',1520069084,'__ci_last_regenerate|i:1520069083;echelon|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('usfjhs8vippfkr7ntejcsbhbkl5m9ifg','127.0.0.1',1520069162,'__ci_last_regenerate|i:1520069161;'),('bsr3lhilq8j2co1sti4vfkajss7m4h07','127.0.0.1',1520069377,'__ci_last_regenerate|i:1520069376;echelon|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('qp1h3rvnchftled1de6t5i7nhgr57l95','127.0.0.1',1520069424,'__ci_last_regenerate|i:1520069423;echelon|a:7:{s:7:\"session\";s:32:\"qp1h3rvnchftled1de6t5i7nhgr57l95\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('06704r837gt2sc6it2lo7e8765cqibg4','127.0.0.1',1520069432,'__ci_last_regenerate|i:1520069431;echelon|a:7:{s:7:\"session\";s:32:\"06704r837gt2sc6it2lo7e8765cqibg4\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('l8lf3271oler9jle957vs60fv0gkcvue','127.0.0.1',1520069495,'__ci_last_regenerate|i:1520069495;ocmgaif8hlu1dqu1419tpjbk7vt93643|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('04br4uiqlj4m22fuhmuob8f04pdp9j7f','127.0.0.1',1520069539,'__ci_last_regenerate|i:1520069538;ocmgaif8hlu1dqu1419tpjbk7vt93643|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('focmrn56revvsn0frg0u2tb7qebr5hbq','127.0.0.1',1520069543,'__ci_last_regenerate|i:1520069542;ocmgaif8hlu1dqu1419tpjbk7vt93643|a:7:{s:7:\"session\";s:32:\"ocmgaif8hlu1dqu1419tpjbk7vt93643\";s:6:\"action\";s:11:\"order.drink\";s:5:\"score\";d:1;s:10:\"parameters\";a:5:{s:5:\"drink\";s:0:\"\";s:9:\"milk-type\";s:0:\"\";s:4:\"iced\";s:0:\"\";s:15:\"delivery-pickup\";s:0:\"\";s:4:\"size\";s:0:\"\";}s:16:\"actionIncomplete\";b:1;s:11:\"fulfillment\";a:1:{s:11:\"suggestions\";a:3:{i:0;s:14:\"i need a drink\";i:1;s:19:\"i need a drink meme\";i:2;s:18:\"i need a drink gif\";}}s:4:\"data\";a:1:{i:0;a:6:{s:2:\"id\";s:1:\"5\";s:6:\"action\";s:11:\"order.drink\";s:7:\"pattern\";s:23:\"i\'d like a coffee to go\";s:17:\"action_parameters\";s:446:\"[{\"is_required\":\"1\",\"parameter_name\":\"drink\",\"entity\":\"@drink\",\"resolved_value\":\"$drink\"},{\"parameter_name\":\"milk-type\",\"entity\":\"@milk-type\",\"resolved_value\":\"$milk-type\"},{\"parameter_name\":\"iced\",\"entity\":\"@iced\",\"resolved_value\":\"$iced\"},{\"is_required\":\"1\",\"parameter_name\":\"delivery-pickup\",\"entity\":\"@delivery-pickup\",\"resolved_value\":\"$delivery-pickup\"},{\"is_required\":\"1\",\"parameter_name\":\"size\",\"entity\":\"@size\",\"resolved_value\":\"$size\"}]\";s:5:\"score\";d:1;s:6:\"is_end\";s:1:\"0\";}}}'),('ih2necf3kte8kb3p4na6snl154t87t2d','127.0.0.1',1520069659,'__ci_last_regenerate|i:1520069659;'),('768b7btkffndahftdgiv1evp3fp10mdm','127.0.0.1',1520070404,'__ci_last_regenerate|i:1520070404;'),('vg1crgl7spube2spukk8tv7pcau9tc0q','127.0.0.1',1520072422,'__ci_last_regenerate|i:1520072422;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('v3f4nd208l020tb5tab95s7m9c42ce5k','127.0.0.1',1520076640,'__ci_last_regenerate|i:1520076640;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('1rgdr5okjci6s1kokisotgnfl7dbigjb','127.0.0.1',1520077607,'__ci_last_regenerate|i:1520077607;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kqor4ihbbaij5am371gbje5e0d9s82dp','127.0.0.1',1520078022,'__ci_last_regenerate|i:1520078022;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vq8l5ph237bcam2662m9rtmcujeg21id','127.0.0.1',1520092468,'__ci_last_regenerate|i:1520092468;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('m1496he22ki8g9hqg0mc1bcervsr6fgt','127.0.0.1',1520083375,'__ci_last_regenerate|i:1520081379;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ul93uaqiecsah9kcfmng4i28omlebje2','127.0.0.1',1520081450,'__ci_last_regenerate|i:1520081449;'),('jlr6icp3gtp9gavtin0899i4rbag5js1','127.0.0.1',1520081464,'__ci_last_regenerate|i:1520081462;'),('g9mg7mkddp6iesdb5a1juircv4n59ljo','127.0.0.1',1520081471,'__ci_last_regenerate|i:1520081471;'),('55bimu7nf3jihep47424iuv817arr1gf','127.0.0.1',1520081751,'__ci_last_regenerate|i:1520081745;'),('7te7ecs33i7kucckdlf2vp54ngb7gj5e','127.0.0.1',1520081827,'__ci_last_regenerate|i:1520081826;'),('vbo54t6jl0tmc4u12h5kbmeji464jj81','127.0.0.1',1520082037,'__ci_last_regenerate|i:1520082036;'),('nlc3mnrdlp3menlej4gfpme1n7mt1lc1','127.0.0.1',1520082229,'__ci_last_regenerate|i:1520082223;'),('tmskhihem8pbf39i6hoh98et4qcmsd7d','127.0.0.1',1520082251,'__ci_last_regenerate|i:1520082250;'),('8mvqicl18edhg8kmd92rnckq47snf25j','127.0.0.1',1520082405,'__ci_last_regenerate|i:1520082405;'),('di3616j97uu018uo9evun1sv47ke4fqd','127.0.0.1',1520082908,'__ci_last_regenerate|i:1520082902;'),('g80n6jv241aosae6r14v61j8kavduvfc','127.0.0.1',1520082953,'__ci_last_regenerate|i:1520082952;'),('9a9jfbq52fkshhlei1qg9ikk1gmpl6v4','127.0.0.1',1520083088,'__ci_last_regenerate|i:1520083087;session_id|s:32:\"m1496he22ki8g9hqg0mc1bcervsr6fgt\";'),('0ve6pd3la00jckqt1qeoejt0a4ageon9','127.0.0.1',1520083101,'__ci_last_regenerate|i:1520083101;session_id|s:32:\"m1496he22ki8g9hqg0mc1bcervsr6fgt\";'),('btj9nkohphg33fb0lsv8u65mg6nlpas3','127.0.0.1',1520083367,'__ci_last_regenerate|i:1520083367;session_id|s:32:\"m1496he22ki8g9hqg0mc1bcervsr6fgt\";'),('cgjec8f9hhtnb2242g3oljuhpmqg67mn','127.0.0.1',1520083375,'__ci_last_regenerate|i:1520083374;session_id|s:32:\"m1496he22ki8g9hqg0mc1bcervsr6fgt\";'),('m7ldapvokhf97lieisljp6ib8ka1p52a','127.0.0.1',1520094211,'__ci_last_regenerate|i:1520092468;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('hav18eirqdb6hodj26qn4vt4dfm6blq6','127.0.0.1',1520092625,'__ci_last_regenerate|i:1520092622;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";'),('r72o9ebig49jkl1rthdp72ala2l84gcm','127.0.0.1',1520092918,'__ci_last_regenerate|i:1520092915;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";'),('bcelsvtrf0hddofhn8jvc8qa38evgccb','127.0.0.1',1520093073,'__ci_last_regenerate|i:1520093073;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";'),('1m7cg5d20n4cdu1etv7coeafi996sdq7','127.0.0.1',1520093290,'__ci_last_regenerate|i:1520093289;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";'),('kmldja9r1cjfmo6lbp08lekf1r3k52nb','127.0.0.1',1520093443,'__ci_last_regenerate|i:1520093442;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:0:{}'),('681o9jl8d9miiri8nkm03vt816o5337n','127.0.0.1',1520093452,'__ci_last_regenerate|i:1520093452;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('59ik5dg9ghas7d04ifjeqdhvvh3eblo5','127.0.0.1',1520093465,'__ci_last_regenerate|i:1520093464;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{s:4:\"size\";s:5:\"small\";}'),('l6q1eqosv445so8p50gmpik0ra7uqroe','127.0.0.1',1520093564,'__ci_last_regenerate|i:1520093564;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|N;'),('ivtoahnoa7g4q6843ndqqvpca9sq235f','127.0.0.1',1520093610,'__ci_last_regenerate|i:1520093609;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:2:{s:4:\"size\";s:5:\"small\";i:0;N;}'),('tcegecsave0dc6avn242i7cj5ei550ur','127.0.0.1',1520093642,'__ci_last_regenerate|i:1520093641;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:2:{s:5:\"drink\";s:6:\"coffee\";i:0;N;}'),('t8i4b4a3rvakbu1jft26s312aujggvda','127.0.0.1',1520093662,'__ci_last_regenerate|i:1520093661;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('mbs8f5it24hjcc39d2o6eklgajf2cha4','127.0.0.1',1520093679,'__ci_last_regenerate|i:1520093678;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{s:4:\"size\";s:5:\"small\";}'),('2s6th8kbbh1th5cteqtu7olrft8k7o79','127.0.0.1',1520093851,'__ci_last_regenerate|i:1520093850;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('v2tmgm9f5rbeo3l68mg3na2cj15nfbtk','127.0.0.1',1520093854,'__ci_last_regenerate|i:1520093854;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{s:4:\"size\";s:5:\"small\";}'),('ukfvjej1d1o3derm7rvru04vmruh23lu','127.0.0.1',1520093876,'__ci_last_regenerate|i:1520093875;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{i:0;a:1:{s:5:\"drink\";s:6:\"coffee\";}}'),('0e677d75nqq1933d7j8s68nnepva1gd5','127.0.0.1',1520093886,'__ci_last_regenerate|i:1520093886;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{i:0;a:1:{s:4:\"size\";s:5:\"small\";}}'),('v5jhmrfg2uttmce1aek3ipa5sk6lac7c','127.0.0.1',1520093939,'__ci_last_regenerate|i:1520093938;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|N;'),('tj5vupmmkogo2aobkgmd8rg3qa59c0uq','127.0.0.1',1520093968,'__ci_last_regenerate|i:1520093968;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|N;'),('j060oe9phlnqt9es5qv6ndivq615i43i','127.0.0.1',1520094082,'__ci_last_regenerate|i:1520094080;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{s:4:\"size\";s:5:\"small\";}'),('mjpm3foseoglh28s9b6u5ld72svf9e9o','127.0.0.1',1520094089,'__ci_last_regenerate|i:1520094088;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('q2ss9480u2cinur8uit6lmml05q53875','127.0.0.1',1520094165,'__ci_last_regenerate|i:1520094165;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:2:{s:4:\"size\";s:5:\"small\";i:0;N;}'),('ifvee19k4hpoe00ahoom904ej9aqmlni','127.0.0.1',1520094185,'__ci_last_regenerate|i:1520094185;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:2:{s:5:\"drink\";s:6:\"coffee\";i:0;N;}'),('o3abvasindd00n2b99ohp3ucul4p32h2','127.0.0.1',1520094205,'__ci_last_regenerate|i:1520094205;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:2:{s:5:\"drink\";s:6:\"coffee\";i:0;N;}'),('5nulo82099vt6c3lepf9u3dr2uqchu55','127.0.0.1',1520094210,'__ci_last_regenerate|i:1520094210;session_id|s:32:\"m7ldapvokhf97lieisljp6ib8ka1p52a\";parameters|a:2:{s:4:\"size\";s:5:\"small\";i:0;N;}'),('15sps4mn9qttb7p9vhjg48054dl6oggq','127.0.0.1',1520147129,'__ci_last_regenerate|i:1520147129;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('dmv9ckkib30r0mvdt5plk55iu55mceov','127.0.0.1',1520146435,'__ci_last_regenerate|i:1520146434;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('a1l3isei686eeiosit4i1fr3t0mi79re','127.0.0.1',1520146695,'__ci_last_regenerate|i:1520146695;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('5et3v4k8ibss4nl1i31ce5k6cn2rffmq','127.0.0.1',1520146711,'__ci_last_regenerate|i:1520146711;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('os03ttg74hfbqk778uusib1s3lsravsf','127.0.0.1',1520146753,'__ci_last_regenerate|i:1520146752;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('lg8ihd6ccdrq7v3slk4ps3qbh2vt5dd8','127.0.0.1',1520146824,'__ci_last_regenerate|i:1520146823;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('0nc0t02maus68dv74re95mocm36p3t5f','127.0.0.1',1520146857,'__ci_last_regenerate|i:1520146857;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('kchi729j6k1ra5vj28ooji54jc2g23tq','127.0.0.1',1520146874,'__ci_last_regenerate|i:1520146874;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('7g6vp5edieasu5457qe8b2761o1f4nn0','127.0.0.1',1520146908,'__ci_last_regenerate|i:1520146907;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('74dphl27chpm1hu44oaql05jgth0r45q','127.0.0.1',1520146985,'__ci_last_regenerate|i:1520146984;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('r2u1e5trn1g8blp1gp0uih0bmotk4t14','127.0.0.1',1520147004,'__ci_last_regenerate|i:1520147004;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('ri84gpqifg3up7fg39cbe023kimsbu18','127.0.0.1',1520147030,'__ci_last_regenerate|i:1520147030;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('n37fmljlvdopei9gl0h8qac0roepmja2','127.0.0.1',1520147052,'__ci_last_regenerate|i:1520147051;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('b8sb3dk8s49lb9qi1f3novjuh9p9r68q','127.0.0.1',1520147075,'__ci_last_regenerate|i:1520147075;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('f28nupequ4brtchubd06banduhq6g28e','127.0.0.1',1520147088,'__ci_last_regenerate|i:1520147088;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('m3is347b2bog8rhql28htckvkfe7ang8','127.0.0.1',1520147113,'__ci_last_regenerate|i:1520147113;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('qbptkatt9m9gncu8j3h4qe6l3gpjk0as','127.0.0.1',1520147127,'__ci_last_regenerate|i:1520147127;session_id|s:32:\"15sps4mn9qttb7p9vhjg48054dl6oggq\";parameters|a:0:{}'),('fspjo24n93uel0v1thu2ddm40ca41aog','127.0.0.1',1520162619,'__ci_last_regenerate|i:1520162619;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('11ntuj9gna8vr8l727n7ha9h5ng0hvio','127.0.0.1',1520147392,'__ci_last_regenerate|i:1520147392;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('5bctp776h5en7456t66nhiapmbqis9jc','127.0.0.1',1520147593,'__ci_last_regenerate|i:1520147593;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('o6nqocl6cqedflrijeq77atmu4sako34','127.0.0.1',1520147598,'__ci_last_regenerate|i:1520147597;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('tmv2mfda4cjv525sd6i047r5gbjpj7u5','127.0.0.1',1520147923,'__ci_last_regenerate|i:1520147922;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('rr69mia61s825p7u0i8ujk992h2ne191','127.0.0.1',1520147940,'__ci_last_regenerate|i:1520147939;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('d61klpfce8i0eigej8analt3k2p46rju','127.0.0.1',1520148159,'__ci_last_regenerate|i:1520148159;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('vmk6n7hn3ubb933htlticac8m4nmuupc','127.0.0.1',1520148167,'__ci_last_regenerate|i:1520148167;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('c101j8ft8j1aq5i9bims01send6f2n4a','127.0.0.1',1520148219,'__ci_last_regenerate|i:1520148219;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('1gn2b90icj9avg3t0at1cjqm6sndbl97','127.0.0.1',1520148259,'__ci_last_regenerate|i:1520148259;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('6j41eagk8clkr1nsjlln0mlrjpkfu16h','127.0.0.1',1520148283,'__ci_last_regenerate|i:1520148283;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('a2omvp2l88dvbvvf1pde3j1amkmrpoi8','127.0.0.1',1520148289,'__ci_last_regenerate|i:1520148289;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('mubu8ul5mdfo9um1nuelqgp5hu8vc43i','127.0.0.1',1520148298,'__ci_last_regenerate|i:1520148298;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('l8e5bi6dqvjgdscofg9oli9kbms83egr','127.0.0.1',1520148366,'__ci_last_regenerate|i:1520148366;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('lp4nkmgil78tm3u3rj9b2jc1vbjbgjt7','127.0.0.1',1520148438,'__ci_last_regenerate|i:1520148438;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('4ae8rd0hvf65t64mgrrm74i8p4c1egi8','127.0.0.1',1520148475,'__ci_last_regenerate|i:1520148474;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('bev3gsn3ndqti0ssoqcan2vtv1k2dvgb','127.0.0.1',1520148480,'__ci_last_regenerate|i:1520148480;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('mv1qc5oif202tsnjk90rb4js4qmkdjka','127.0.0.1',1520148584,'__ci_last_regenerate|i:1520148584;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('mnhf8q341c81rvb76fdur980lb2fa6sa','127.0.0.1',1520148632,'__ci_last_regenerate|i:1520148632;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('9q8ri5q7scadshmufjf8s24lp37piufa','127.0.0.1',1520148691,'__ci_last_regenerate|i:1520148690;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('eic7fqihc3bb2jstm49moimcgs7o2tkf','127.0.0.1',1520148744,'__ci_last_regenerate|i:1520148744;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('d1k79c22re0n4eg4h1ig0tpn5d5312iv','127.0.0.1',1520148766,'__ci_last_regenerate|i:1520148766;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('tk7thsldnl9754mpnjcaua0pb86hrk7s','127.0.0.1',1520148774,'__ci_last_regenerate|i:1520148773;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('f506gd6aes9jlc59s3r331or7irmqsbq','127.0.0.1',1520148789,'__ci_last_regenerate|i:1520148788;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('abgsf51v76k700bgv42ep1v6gash24db','127.0.0.1',1520148834,'__ci_last_regenerate|i:1520148834;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('71499b5qpt19d0kgj9if84hbdqd11ill','127.0.0.1',1520148856,'__ci_last_regenerate|i:1520148856;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('auun7jl8p479j51lg78u7ep38fksdsa5','127.0.0.1',1520148879,'__ci_last_regenerate|i:1520148879;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('i97m82re7unhfbfm70oi07ti8ce0glf8','127.0.0.1',1520148910,'__ci_last_regenerate|i:1520148904;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('q7jifp3ehva8p9a0s0i5af5o1lh7fpen','127.0.0.1',1520148925,'__ci_last_regenerate|i:1520148925;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('qg7i6eu3ck5a3n6seq5o3p20s48b70uv','127.0.0.1',1520148979,'__ci_last_regenerate|i:1520148979;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('5ssd5b38qn9k02jqgrk4d3so7vte5cqo','127.0.0.1',1520148994,'__ci_last_regenerate|i:1520148994;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('q7j23a0p7fv5p0ko9q9aepmcug1v4vpp','127.0.0.1',1520149017,'__ci_last_regenerate|i:1520149017;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('f1k3vhm0uqjlb7lvbk52jc3u451kfbur','127.0.0.1',1520149029,'__ci_last_regenerate|i:1520149029;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('bcq1gbvhpt28q7nlilroes5pjqcv7fu1','127.0.0.1',1520149077,'__ci_last_regenerate|i:1520149077;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('56hl0sdt77ps27a9p1t7bt2ep5tg7se4','127.0.0.1',1520155784,'__ci_last_regenerate|i:1520155783;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('uvj33rjh5n5mic5uhbbamejg6b9vu8u0','127.0.0.1',1520155798,'__ci_last_regenerate|i:1520155797;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('0harpig3gqc3e8i6g8817a1enj8ureq6','127.0.0.1',1520155835,'__ci_last_regenerate|i:1520155835;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('9pa6vq2ursvqijfohuquggbk3gt4io9f','127.0.0.1',1520155841,'__ci_last_regenerate|i:1520155840;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('hppisbsc9oh6a4uo7qip5q4tketo1kvj','127.0.0.1',1520155850,'__ci_last_regenerate|i:1520155845;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('9e192i6r6gk99l7k4jit89g0e0e0f3jg','127.0.0.1',1520156093,'__ci_last_regenerate|i:1520156093;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('j9tt7odkblef2eb2lha8g25vccdufrln','127.0.0.1',1520156165,'__ci_last_regenerate|i:1520156164;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('6u2g7d0j7dvql016ugls8gja2kr50pju','127.0.0.1',1520156260,'__ci_last_regenerate|i:1520156254;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:0:{}'),('4v3mtojm00n1doltoljncpprtu1bf9nd','127.0.0.1',1520156376,'__ci_last_regenerate|i:1520156375;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('jfhs6taiveoit27mea4qhbsmop1cfah2','127.0.0.1',1520156507,'__ci_last_regenerate|i:1520156506;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('8nm8pdu6ulhidcu1115aa1kph5o74rn0','127.0.0.1',1520156565,'__ci_last_regenerate|i:1520156564;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('uoabbp0ojpb0ruunadcomi20e7ni269h','127.0.0.1',1520156575,'__ci_last_regenerate|i:1520156575;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('ji2mqa589tqh84jg31ubh9eklfj8rc1j','127.0.0.1',1520156595,'__ci_last_regenerate|i:1520156595;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('hqqaj9edr1o0mvnm322vr9nqtjfe4k5h','127.0.0.1',1520156635,'__ci_last_regenerate|i:1520156634;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('q5atgfd73ov4fttffau71i644pkopkrd','127.0.0.1',1520156646,'__ci_last_regenerate|i:1520156645;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('6v9q0l68nedfitt0oivv7nla4rhme4ef','127.0.0.1',1520156808,'__ci_last_regenerate|i:1520156807;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('skesa3iotiehsaasrfusr22f7kt2g8at','127.0.0.1',1520157254,'__ci_last_regenerate|i:1520157254;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('imjjck3ouij7t5amm8gnrmg9rrsh8vc9','127.0.0.1',1520157309,'__ci_last_regenerate|i:1520157309;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('4b8ocj0eq61g3m7i9firc7kq7bkb82el','127.0.0.1',1520157334,'__ci_last_regenerate|i:1520157333;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('0et43g07s38hv7eptu66p0itffqdqgs6','127.0.0.1',1520157369,'__ci_last_regenerate|i:1520157369;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('todm1mlks59se4n5lukb6e058oketeka','127.0.0.1',1520157384,'__ci_last_regenerate|i:1520157383;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:3:\"tea\";}'),('1jipnh8ufpv20obm8pvficv918ir1ks4','127.0.0.1',1520157465,'__ci_last_regenerate|i:1520157465;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:3:\"tea\";}'),('kclcvmq2qichpu1icd0vkgvvibhbban0','127.0.0.1',1520157474,'__ci_last_regenerate|i:1520157474;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:4:\"size\";s:5:\"small\";}'),('1ahmqhe2p2q985i5ife2o1is61gfmckr','127.0.0.1',1520157551,'__ci_last_regenerate|i:1520157550;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:2:{s:5:\"drink\";s:6:\"coffee\";i:0;a:1:{s:5:\"drink\";s:6:\"coffee\";}}'),('jdu2v5gmbsvv03j2ke80othk6dcqgvha','127.0.0.1',1520157571,'__ci_last_regenerate|i:1520157571;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:4:\"size\";s:5:\"small\";}'),('v2qu2ojia1t72pd3o4o0q56efu8l50st','127.0.0.1',1520157579,'__ci_last_regenerate|i:1520157579;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('en020qqtdkiofqp3glhmdjfqcblsd702','127.0.0.1',1520157670,'__ci_last_regenerate|i:1520157670;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('s3li8560m65452dvreltkj3flqp9ijd5','127.0.0.1',1520157799,'__ci_last_regenerate|i:1520157798;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('k0jfcm20m93fb0okf4k7n8balg66uqar','127.0.0.1',1520158248,'__ci_last_regenerate|i:1520158248;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('96un09ngv0ljk0sbo9cbm5ilrh7nbndb','127.0.0.1',1520158298,'__ci_last_regenerate|i:1520158298;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('aglfm90lmjmul8tj0j2njjo8ro7stn64','127.0.0.1',1520158334,'__ci_last_regenerate|i:1520158333;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ih9a73ni6q2i4c7qs5apib2cn8kf4ikk','127.0.0.1',1520158422,'__ci_last_regenerate|i:1520158422;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('kh0876t9l2bhu7bvs3c8qtdf3libeten','127.0.0.1',1520158458,'__ci_last_regenerate|i:1520158458;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('dhoum78nlqqc8bkvemck4fjn6agqa65h','127.0.0.1',1520158605,'__ci_last_regenerate|i:1520158604;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ih00995ngt0iogd68ubp6a0itpvcsn21','127.0.0.1',1520158611,'__ci_last_regenerate|i:1520158610;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('tirjclvbnbteq4u1fh8ta6mfoe73hrd8','127.0.0.1',1520158635,'__ci_last_regenerate|i:1520158629;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('8vm6phm0kqllr3h0r81591kkb00p1ljv','127.0.0.1',1520158649,'__ci_last_regenerate|i:1520158648;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('m0s9tq44rc39g03kk3ul6a0k1mf72d84','127.0.0.1',1520158788,'__ci_last_regenerate|i:1520158788;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('cdsr5n93stn74hbjquc29hfc1tma1am6','127.0.0.1',1520158816,'__ci_last_regenerate|i:1520158815;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('uem5e9o4sp21j88qe3lls6cqkmftcftr','127.0.0.1',1520158833,'__ci_last_regenerate|i:1520158832;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('9f1k0es8cqpg8c25j57hdr0q1sda7f59','127.0.0.1',1520158854,'__ci_last_regenerate|i:1520158853;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('2rejcgk1gvfbv8esn82oe6m9hucqpf07','127.0.0.1',1520158884,'__ci_last_regenerate|i:1520158884;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('l27l1umaeefleggc8t2ugj0hr2rtbj9h','127.0.0.1',1520158915,'__ci_last_regenerate|i:1520158915;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('2c0cirdv84nkpsd0ld3hbclq48q6lnej','127.0.0.1',1520158934,'__ci_last_regenerate|i:1520158933;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('u4u5a5a9084rvlmkujk3k0343r83chb3','127.0.0.1',1520158943,'__ci_last_regenerate|i:1520158943;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('j099aiaritpgqri4iup0rc8d171oa11u','127.0.0.1',1520158971,'__ci_last_regenerate|i:1520158971;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('uu5g1umnlopgdq2o6ej6hftrsrevmpl5','127.0.0.1',1520158983,'__ci_last_regenerate|i:1520158983;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ha5ai0dijpcjb8uda87l4gj6n48omepo','127.0.0.1',1520158999,'__ci_last_regenerate|i:1520158999;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('0t5u0ii8jgdvredv4m31apn5b730d9s6','127.0.0.1',1520159022,'__ci_last_regenerate|i:1520159022;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('qpuqd6dhouhirrpkgfdje0k69c170bhm','127.0.0.1',1520159041,'__ci_last_regenerate|i:1520159040;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('lgithm7t0iiital9bsi5dejd76p1697v','127.0.0.1',1520159093,'__ci_last_regenerate|i:1520159093;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('03vt9dupc8qd66tffcr7bf4q1q014dua','127.0.0.1',1520159119,'__ci_last_regenerate|i:1520159118;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('trdufe5fong4b9llfv1bebj04g807hhm','127.0.0.1',1520159131,'__ci_last_regenerate|i:1520159131;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('3pg113eif1tsovecn7pl6uhdfq3lhvnn','127.0.0.1',1520159142,'__ci_last_regenerate|i:1520159142;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('p87cq3453d149a0cff0qa9rlvfg6b2s3','127.0.0.1',1520159150,'__ci_last_regenerate|i:1520159149;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('0tfqtbs8qtq8i0pqe799b17t9evdcpn0','127.0.0.1',1520159156,'__ci_last_regenerate|i:1520159155;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('d6330noqj9misvlo49a3dj3ac5229shi','127.0.0.1',1520159161,'__ci_last_regenerate|i:1520159161;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('8ka62a9khuun6672a6qp4nbgfqc6kv9g','127.0.0.1',1520159169,'__ci_last_regenerate|i:1520159169;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('7q1rij0k2subpj754ipvgv8ts8prdree','127.0.0.1',1520159174,'__ci_last_regenerate|i:1520159173;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('jn2tm1cq392k15t4elc6jhi64chfj39l','127.0.0.1',1520159201,'__ci_last_regenerate|i:1520159201;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('17274njhfcq3akqno778a1ct04m492r0','127.0.0.1',1520159209,'__ci_last_regenerate|i:1520159209;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('scooulshtmav2b7bfbfete0e4fpgaqcj','127.0.0.1',1520159394,'__ci_last_regenerate|i:1520159393;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ad8ukpv42mjb5l7b4hi9ivnktgon1ra6','127.0.0.1',1520159412,'__ci_last_regenerate|i:1520159411;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ulaft512845efaiceg9vhhk3t5qtimjc','127.0.0.1',1520159429,'__ci_last_regenerate|i:1520159429;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('78cfn11lsvhonvcn4k08fif7vpj3h17c','127.0.0.1',1520159440,'__ci_last_regenerate|i:1520159440;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('entnbfkbtre712ipr6dc3dmi8j9p3gia','127.0.0.1',1520159454,'__ci_last_regenerate|i:1520159454;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('77c2qiior0d3t3cein5de1eorei3fnlp','127.0.0.1',1520159484,'__ci_last_regenerate|i:1520159483;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('uhg0866948je3sg7bsrggvosa7ettp5f','127.0.0.1',1520159502,'__ci_last_regenerate|i:1520159502;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('2i3u4cdj6kh527p5gacoo9jmh0aso6h5','127.0.0.1',1520159587,'__ci_last_regenerate|i:1520159587;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('rafi90rphriai9i2mgnscqs53d49rali','127.0.0.1',1520159644,'__ci_last_regenerate|i:1520159643;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('dalnur8q2mdgla60b2tr6582parv339k','127.0.0.1',1520159649,'__ci_last_regenerate|i:1520159648;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('h8as1ijkkfdplrc9nsue6ao0l8dhmbms','127.0.0.1',1520159713,'__ci_last_regenerate|i:1520159712;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('2tfet6jfgj5cojndtpre64j63gksmtlh','127.0.0.1',1520159750,'__ci_last_regenerate|i:1520159750;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('prf8gt7488dlo7t8tjj4vlugkvgk2sr1','127.0.0.1',1520159757,'__ci_last_regenerate|i:1520159756;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('6b8nva2c04g4jgdfbi8slmmfhdmm35jc','127.0.0.1',1520159815,'__ci_last_regenerate|i:1520159815;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('22c1fvq400iauj4be609710n06sfdkrl','127.0.0.1',1520159859,'__ci_last_regenerate|i:1520159859;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('7brvoi800mjbopqa29jtvaq6sklmq66o','127.0.0.1',1520159870,'__ci_last_regenerate|i:1520159865;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('jv7eavaj5cbg407diic948scn51ffds6','127.0.0.1',1520159882,'__ci_last_regenerate|i:1520159882;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('upmebfl5f0hk6v1vpjg7pm33l6hvoqi2','127.0.0.1',1520159954,'__ci_last_regenerate|i:1520159953;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('024i7sndunjc7nu6tunpomrsbtldoig7','127.0.0.1',1520159981,'__ci_last_regenerate|i:1520159980;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('68t3ep39bmsin9gdepdrnmcdovmf90gr','127.0.0.1',1520159998,'__ci_last_regenerate|i:1520159997;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('sh7vcp53vj6u9met8vs0ttkmu0fn7t5i','127.0.0.1',1520160084,'__ci_last_regenerate|i:1520160084;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('9pmieai617h2556fqshlhljtkbmk8sku','127.0.0.1',1520160103,'__ci_last_regenerate|i:1520160103;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('p4kvi8g84augabgltt8clt4803m2o608','127.0.0.1',1520160114,'__ci_last_regenerate|i:1520160113;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ovlu5ojjnponffpgj23kmkn67gjb4up5','127.0.0.1',1520160121,'__ci_last_regenerate|i:1520160120;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ecsgttb8vr4d3bu4978jb4r1ds84k99l','127.0.0.1',1520160129,'__ci_last_regenerate|i:1520160128;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('0stj11t1lm78dgbh76j3v783qpvfvhq3','127.0.0.1',1520160135,'__ci_last_regenerate|i:1520160134;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ovcbl5tn9nkjm87qkp79nrs5341cbdk1','127.0.0.1',1520160159,'__ci_last_regenerate|i:1520160158;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('26e4m17qjkrhb6vug8nt5gpikpqen3g8','127.0.0.1',1520160189,'__ci_last_regenerate|i:1520160188;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('0fu35vsjrij0bbfmq9cuicvutap7vb30','127.0.0.1',1520160246,'__ci_last_regenerate|i:1520160241;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('8bic9facu5tv0qbpvm0okm2g5iod5fou','127.0.0.1',1520160288,'__ci_last_regenerate|i:1520160288;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('eb62sm3u6a0638rui20uioqohgcarp3m','127.0.0.1',1520160352,'__ci_last_regenerate|i:1520160351;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('s1bkev4q2k2jnrks5blopgpchrous13l','127.0.0.1',1520160363,'__ci_last_regenerate|i:1520160362;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('la1ares8srtis6tsu0m3odvhnqvjol6p','127.0.0.1',1520160418,'__ci_last_regenerate|i:1520160417;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('a2aqe7mmhj7300vn6efqs8eviabss7vv','127.0.0.1',1520160512,'__ci_last_regenerate|i:1520160512;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('fmomgnop8uh7d77vnepu0kashifgalfa','127.0.0.1',1520162116,'__ci_last_regenerate|i:1520162116;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('1ja9uoq4jg6cdmb3d5cd7csadcnnn1jb','127.0.0.1',1520162123,'__ci_last_regenerate|i:1520162123;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('14rthut8sodanpgcpf4ba9u65u5m8olr','127.0.0.1',1520162203,'__ci_last_regenerate|i:1520162202;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('uca6npksf46p7e1hk5uta54i8du312pi','127.0.0.1',1520162228,'__ci_last_regenerate|i:1520162227;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('lm93ggjaiepopkclcu2lo6hn7ahn76ms','127.0.0.1',1520162259,'__ci_last_regenerate|i:1520162259;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ufko583kpftinvcbgoq5p3ktcf9ph41e','127.0.0.1',1520162282,'__ci_last_regenerate|i:1520162282;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('t1hv39p0k1ku5d8qek5kdu8htq70d09i','127.0.0.1',1520162295,'__ci_last_regenerate|i:1520162294;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('a68774betf5mg91arojiu9gh1rddukv7','127.0.0.1',1520162326,'__ci_last_regenerate|i:1520162326;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('kn9qn0s5k2o0hnte32i3749j186j9lc8','127.0.0.1',1520162342,'__ci_last_regenerate|i:1520162341;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('efc14ff871gmu68m8rrss2vfsk7grosl','127.0.0.1',1520162371,'__ci_last_regenerate|i:1520162371;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('ll2708u6kcgvvi003o6hganddi587h71','127.0.0.1',1520162457,'__ci_last_regenerate|i:1520162457;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('jjlgqa4fb4dvk026lv95ee3rtd53je8o','127.0.0.1',1520162482,'__ci_last_regenerate|i:1520162482;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('f83h4mbeeeqe7j75mlkef0qnplm42alu','127.0.0.1',1520162491,'__ci_last_regenerate|i:1520162490;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('hemnug8o9urhkgmk4k0ui7jtfnc5lato','127.0.0.1',1520162528,'__ci_last_regenerate|i:1520162528;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('m3ng20u9m04uajt9cc0f1njn5g9t7dh7','127.0.0.1',1520162539,'__ci_last_regenerate|i:1520162539;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('qpb4bd9kg9bvagfo28tvnbuh8qmdavek','127.0.0.1',1520162554,'__ci_last_regenerate|i:1520162554;session_id|s:32:\"fspjo24n93uel0v1thu2ddm40ca41aog\";'),('rg13ljd07fg38i9d18go5q6aeu1nisfg','127.0.0.1',1520169615,'__ci_last_regenerate|i:1520169615;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ge59smr4j8r4t0usd4ioujqtosirn6pt','127.0.0.1',1520162628,'__ci_last_regenerate|i:1520162628;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('b8lh4qtqca5c8kqtmbloabaf16lc2ojt','127.0.0.1',1520162632,'__ci_last_regenerate|i:1520162632;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('qmf2qbku26e3d461gjngj9aath4hv9uc','127.0.0.1',1520163293,'__ci_last_regenerate|i:1520163292;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('kmdvuio2lsvlv38hcbfnd3motu2iiqoa','127.0.0.1',1520163381,'__ci_last_regenerate|i:1520163380;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('p98d2dk98ibb0lgvp8fk7spjvvufsdo4','127.0.0.1',1520163687,'__ci_last_regenerate|i:1520163687;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('bvke07mqi25hahqesgm5d7c0vj51c659','127.0.0.1',1520163694,'__ci_last_regenerate|i:1520163694;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('9hc2vv5h8av9t20uvll87o13imnhvnvi','127.0.0.1',1520163808,'__ci_last_regenerate|i:1520163808;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('4003pltrkbg3m6c8k3t9pflag75qkqem','127.0.0.1',1520163859,'__ci_last_regenerate|i:1520163859;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('qhqc72avcnk787irqreoeoveupsr0eb6','127.0.0.1',1520163910,'__ci_last_regenerate|i:1520163910;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('dmtjujrhdm5mh77gje40fkrae2q5oaoc','127.0.0.1',1520163924,'__ci_last_regenerate|i:1520163924;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('psej6jl3hs0bt4edr0p98n55b5utf896','127.0.0.1',1520163938,'__ci_last_regenerate|i:1520163937;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('nut9s1t9p35hogm5paevjmjkhsfnvdu9','127.0.0.1',1520163958,'__ci_last_regenerate|i:1520163958;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('a3c89utmho1h4fi4kfgkgprt5gmk1rvo','127.0.0.1',1520164003,'__ci_last_regenerate|i:1520164002;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('mfifb3ups79b0lso63au15porvpcdpmn','127.0.0.1',1520164032,'__ci_last_regenerate|i:1520164031;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('knk21p8h0duk0d632pjqqvlrb9p4jtd5','127.0.0.1',1520164083,'__ci_last_regenerate|i:1520164083;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('bbku8dp6psaiqa4smnso0ag0r3cqg2ga','127.0.0.1',1520164110,'__ci_last_regenerate|i:1520164109;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('2mb9trlku8nvpbusqkdns67juk35h27n','127.0.0.1',1520164116,'__ci_last_regenerate|i:1520164116;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('2u0tl0j8cb743lonhm9qf7iu188q7mfe','127.0.0.1',1520164129,'__ci_last_regenerate|i:1520164129;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('620k7uq5sut1eld80nk6nnu7fhemd2oe','127.0.0.1',1520164176,'__ci_last_regenerate|i:1520164175;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('aekskst1tal67tpfv2v6hdmq5lieng40','127.0.0.1',1520164181,'__ci_last_regenerate|i:1520164180;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('67guhar843449rj95e4a2d2n49ln2d8l','127.0.0.1',1520164304,'__ci_last_regenerate|i:1520164302;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('p3uhp3o9ja819e4ku2cd2horc6fcr2sv','127.0.0.1',1520164349,'__ci_last_regenerate|i:1520164349;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('24tkkd29mhu8rb06l4ljbhe6blgfej6s','127.0.0.1',1520164409,'__ci_last_regenerate|i:1520164408;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('5onceg3ljq9dr7aimpo3nmp7ekqfo2ec','127.0.0.1',1520164431,'__ci_last_regenerate|i:1520164431;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('5e25b4mik08pv4mvu8vc4dbhthi504h5','127.0.0.1',1520164444,'__ci_last_regenerate|i:1520164444;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('iuo9r43egjrc8cpcbe8usl8bcin15rt4','127.0.0.1',1520164500,'__ci_last_regenerate|i:1520164500;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('tuuuajqg9vl9dp3cf65sht3i5v2ghqrj','127.0.0.1',1520164517,'__ci_last_regenerate|i:1520164516;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('t6nldeefm3phj66bbv40i1ev4rgeti18','127.0.0.1',1520164534,'__ci_last_regenerate|i:1520164525;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('j5jnlr4v8p4sma2gqgfneevqs9qsogo1','127.0.0.1',1520164551,'__ci_last_regenerate|i:1520164550;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('bdp7l7idrefum12vc1k1oohig9uii043','127.0.0.1',1520164574,'__ci_last_regenerate|i:1520164574;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('jkutuf2pkuvt1si04a9b9hv3k56e1tbg','127.0.0.1',1520164605,'__ci_last_regenerate|i:1520164604;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('831bea2d7smfjjma0hem3870q68li7s3','127.0.0.1',1520165073,'__ci_last_regenerate|i:1520165073;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('ej6d2vqqjr1r2kfgbm1o5efisram4fr8','127.0.0.1',1520165201,'__ci_last_regenerate|i:1520165201;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('5sppbdpfb8f6njsr06kjo2huhfk22nbf','127.0.0.1',1520165213,'__ci_last_regenerate|i:1520165213;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('4imfmdh6iamnvgdg67oo5esus9ttfko2','127.0.0.1',1520165223,'__ci_last_regenerate|i:1520165222;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('trtgqku3t3jk3rii1m2atletssbllo3g','127.0.0.1',1520165305,'__ci_last_regenerate|i:1520165305;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('flu9m80p1c164414432jtd8hvbpub7ee','127.0.0.1',1520165316,'__ci_last_regenerate|i:1520165316;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('hu7k677jo58mb76gvg7q9dt3r7jqg96s','127.0.0.1',1520165331,'__ci_last_regenerate|i:1520165331;'),('atnrhnb3pkod9r3bhvmkk5ihd6lkbrdu','127.0.0.1',1520165340,'__ci_last_regenerate|i:1520165340;'),('v6vpmstmb571kknj92h3jnisvgahic1s','127.0.0.1',1520165372,'__ci_last_regenerate|i:1520165371;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('mid6hugja38l6k90ibmu60unsrtk1rmm','127.0.0.1',1520165453,'__ci_last_regenerate|i:1520165453;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('fiq7kk0iufeala7pr508ic5ib8v805gg','127.0.0.1',1520165481,'__ci_last_regenerate|i:1520165481;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('efcin0ol7699drqe8ndbkebk4ieiucou','127.0.0.1',1520165574,'__ci_last_regenerate|i:1520165573;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('t23k37nomfbvf3higr0q6fdbarb4cibq','127.0.0.1',1520165606,'__ci_last_regenerate|i:1520165606;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('ufn6qijfparck21p74m0gm2p09305q8f','127.0.0.1',1520165623,'__ci_last_regenerate|i:1520165622;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('hb3c3otvmjf20kshkn5i4o5ad76dece0','127.0.0.1',1520165631,'__ci_last_regenerate|i:1520165631;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('uj48pgf209rjttta517corf5guopb0fl','127.0.0.1',1520165673,'__ci_last_regenerate|i:1520165672;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('8q00m76oog57accrbljr1pah5e3h77fq','127.0.0.1',1520165679,'__ci_last_regenerate|i:1520165678;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('o7ns4pbdfkfg8s2qc1v2e157k03kjumf','127.0.0.1',1520165695,'__ci_last_regenerate|i:1520165694;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('msjm1b8ir4983bdqgi7j2o8ub3rjulnl','127.0.0.1',1520165729,'__ci_last_regenerate|i:1520165729;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('dmgrhlqrvdl68irimvq4t8585pnn6ebt','127.0.0.1',1520165741,'__ci_last_regenerate|i:1520165741;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('q5drp31jq1036f5d0svkjk4jbhsmfj80','127.0.0.1',1520165752,'__ci_last_regenerate|i:1520165752;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('151l3t94c7rcv7c5l13ksdea2pnvpi5p','127.0.0.1',1520165859,'__ci_last_regenerate|i:1520165859;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('tpgrldof9dpsqm4cilg5hd8gfudqech4','127.0.0.1',1520165885,'__ci_last_regenerate|i:1520165884;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('9dgall8tjr9h3cg1m3nsjspp91n2ei77','127.0.0.1',1520165894,'__ci_last_regenerate|i:1520165892;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('7qqu6557ok55a9lukha0ga7fl4p1v43i','127.0.0.1',1520165905,'__ci_last_regenerate|i:1520165905;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('9hjjvc71r78hat931srbp3e76qs9b1hr','127.0.0.1',1520165928,'__ci_last_regenerate|i:1520165927;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('2p0kbce2gqumrq5lcavgeiqfint663hv','127.0.0.1',1520166338,'__ci_last_regenerate|i:1520166337;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('q0vlo04d8l3ci9uhh4jgfe0depgralk7','127.0.0.1',1520166348,'__ci_last_regenerate|i:1520166347;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('bgnf7bfqf7nro55008rqhi82f03rh8t0','127.0.0.1',1520166384,'__ci_last_regenerate|i:1520166383;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('jcq8o6gsl43dnhdakjsnpfrb3v7erpiu','127.0.0.1',1520166408,'__ci_last_regenerate|i:1520166408;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('ananodvvus9a9238ue3eh0mif8rgvlfc','127.0.0.1',1520166457,'__ci_last_regenerate|i:1520166457;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('vdbvtvjduv3if4opua8llrdpvvgsf3o8','127.0.0.1',1520166593,'__ci_last_regenerate|i:1520166593;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('in848a7b5qq855bithvmc7iadf4qdp2k','127.0.0.1',1520166624,'__ci_last_regenerate|i:1520166623;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('gfg5cnhbuq3u268det4jgus1jc5765ic','127.0.0.1',1520166653,'__ci_last_regenerate|i:1520166653;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('incnf76a2ckppddrftena50fe8cruba4','127.0.0.1',1520166679,'__ci_last_regenerate|i:1520166679;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('21l28lcigood6vdgh5omd8shj4o3m8o8','127.0.0.1',1520166687,'__ci_last_regenerate|i:1520166687;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('el43js7pe8kraprvj90u7ljb4rkir790','127.0.0.1',1520166783,'__ci_last_regenerate|i:1520166783;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('hqg02v4rrog5qcbh66u0qcebjrlv626f','127.0.0.1',1520166824,'__ci_last_regenerate|i:1520166823;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('lilhs4sqaemtk245u180m5vs3cfckmnr','127.0.0.1',1520166828,'__ci_last_regenerate|i:1520166828;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('7s78tvam7pb63s8it3vskr22oprq34jh','127.0.0.1',1520166845,'__ci_last_regenerate|i:1520166845;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('gdn3oacvg1ublmst1f5dg76mfhso4ooe','127.0.0.1',1520166857,'__ci_last_regenerate|i:1520166857;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('hej8tcgoj5t1dtr96kksssdl8io2vkrl','127.0.0.1',1520166925,'__ci_last_regenerate|i:1520166925;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('p2hb53pc72joe9qd7544otb24idr0186','127.0.0.1',1520166944,'__ci_last_regenerate|i:1520166944;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('g0j2bnhnh4sin3bof302mq7vk5jembg1','127.0.0.1',1520166953,'__ci_last_regenerate|i:1520166952;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('fch7jjqonj9c593rubrsmglmmvlk7ipc','127.0.0.1',1520167035,'__ci_last_regenerate|i:1520167035;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('umab1eubbo39v8ii13hegs4vih00fmk9','127.0.0.1',1520167044,'__ci_last_regenerate|i:1520167043;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('k9gmiej7ireocvr4mvm1ig5741qkidjs','127.0.0.1',1520167136,'__ci_last_regenerate|i:1520167135;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('ecik88l7vcgreoatj56nc0i2b4o67gr2','127.0.0.1',1520167143,'__ci_last_regenerate|i:1520167143;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('et72oevdrubq1aiu5tluekgp04lb1rd0','127.0.0.1',1520167148,'__ci_last_regenerate|i:1520167147;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('m5j5iodut4v0ppjdsmaoism1h8l728dl','127.0.0.1',1520167159,'__ci_last_regenerate|i:1520167159;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('pc7kfkihibaa2drrlbon0gtb153kgct4','127.0.0.1',1520167168,'__ci_last_regenerate|i:1520167168;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('t384ob7sf59r1b4djlr1ml0vvt5ldb3u','127.0.0.1',1520167330,'__ci_last_regenerate|i:1520167330;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('a03i21h80sat34ccpup9tpvo6emi5gj0','127.0.0.1',1520167445,'__ci_last_regenerate|i:1520167444;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('lmlc9mgasm6gtb5m8a2eo4bij3vbj39r','127.0.0.1',1520167453,'__ci_last_regenerate|i:1520167452;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('hlq9ke6s9i311k2cshioktnavsfkvmoh','127.0.0.1',1520167495,'__ci_last_regenerate|i:1520167494;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('avr93lkdl50ba0q33ibrbpv22a2oa0cb','127.0.0.1',1520167519,'__ci_last_regenerate|i:1520167518;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('ko8a2k28srmmneq89u83klcojeq7087j','127.0.0.1',1520167524,'__ci_last_regenerate|i:1520167523;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('kr19l68019qram1kg81cekphiohqp9ur','127.0.0.1',1520167527,'__ci_last_regenerate|i:1520167527;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('131retkol9mvmmjomj9ur83umr89b6td','127.0.0.1',1520167553,'__ci_last_regenerate|i:1520167552;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('f902ool89gcpbhcnm1u4ni7edgs9so3h','127.0.0.1',1520167558,'__ci_last_regenerate|i:1520167558;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('f8tdkm70ii1uq87cam5h2923c9k523go','127.0.0.1',1520167566,'__ci_last_regenerate|i:1520167565;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('rp1rlrc4818je5fu0pitg8ime2i1da9c','127.0.0.1',1520167610,'__ci_last_regenerate|i:1520167609;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('10crhc95udlou1fv81glt14cqu1gi46a','127.0.0.1',1520167882,'__ci_last_regenerate|i:1520167881;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('44uigmsbdqn6cqvrl88ol06jn2st158d','127.0.0.1',1520167922,'__ci_last_regenerate|i:1520167921;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('dv0qpcgkhdjgmmoep8tkt4v20vhurf84','127.0.0.1',1520167926,'__ci_last_regenerate|i:1520167925;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('t50qfpcfp3au9sv7m40n41t8edoqi36c','127.0.0.1',1520167929,'__ci_last_regenerate|i:1520167928;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('u1g1qrd5jvos0c7krphsfra2ds1u1h9c','127.0.0.1',1520167934,'__ci_last_regenerate|i:1520167934;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('0hjqrd2knfk17rdqudm6kl5kd60lj2c7','127.0.0.1',1520167939,'__ci_last_regenerate|i:1520167938;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('ei13gl1t8jp7rnon70bl5j6doouj1rgu','127.0.0.1',1520167944,'__ci_last_regenerate|i:1520167944;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('21finquq1tobkgapakdp6tqcutta1s7t','127.0.0.1',1520168557,'__ci_last_regenerate|i:1520168557;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('geqnrtrl2h867icis8aogmutg825npn1','127.0.0.1',1520168560,'__ci_last_regenerate|i:1520168560;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('bp07ok3kgutj4g7bm3k7b5fah5p5k2ni','127.0.0.1',1520168561,'__ci_last_regenerate|i:1520168561;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('r2im0p4n2vdg791hecirkleprjp9o648','127.0.0.1',1520168562,'__ci_last_regenerate|i:1520168562;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('fruv8tn2n29aua9r7ms04kbtmn6hlhpm','127.0.0.1',1520168563,'__ci_last_regenerate|i:1520168563;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('d74p8lgck8mhhmhfqs0le8stf4em15pq','127.0.0.1',1520168618,'__ci_last_regenerate|i:1520168617;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('5ttjpcmoikgb5slhnrt25ntrei5sqq1n','127.0.0.1',1520168647,'__ci_last_regenerate|i:1520168647;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('iqac7mfm7i3mfgtisgilea4bcid6jf1e','127.0.0.1',1520169043,'__ci_last_regenerate|i:1520169043;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('af0joe607c4m9ue0q90do9m9mjorcs61','127.0.0.1',1520169054,'__ci_last_regenerate|i:1520169053;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('4p4vasg4qtlfbd1aj045tpc9pb1t4ohj','127.0.0.1',1520169086,'__ci_last_regenerate|i:1520169086;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('180mqku72bmkkvkq00v3eh0br02oesoq','127.0.0.1',1520169243,'__ci_last_regenerate|i:1520169242;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('mfk8vpeqf4ueii37jt7jjinroro8h6cs','127.0.0.1',1520169293,'__ci_last_regenerate|i:1520169292;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('p3k3f18aebe1eopq2q3s1tintvr4e9jt','127.0.0.1',1520169311,'__ci_last_regenerate|i:1520169310;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('718qia3o9brfcgt8afq9s1mqfobud0ju','127.0.0.1',1520169384,'__ci_last_regenerate|i:1520169384;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('uig902fpcac3vtg60j67ukimv22j3dhf','127.0.0.1',1520169581,'__ci_last_regenerate|i:1520169581;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('bibmpmndshk8h56cv3mo4cqe45s2orum','127.0.0.1',1520169590,'__ci_last_regenerate|i:1520169589;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('0hsasviqc8aujla2v1etogkfrqs04111','127.0.0.1',1520169596,'__ci_last_regenerate|i:1520169594;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('d9s7cn3ftd8ibkpr8up4blil7sjuv3mr','127.0.0.1',1520169600,'__ci_last_regenerate|i:1520169599;session_id|s:32:\"rg13ljd07fg38i9d18go5q6aeu1nisfg\";'),('v21tkpu3nk8cbchasnuh7uds65o3dchi','127.0.0.1',1520175608,'__ci_last_regenerate|i:1520175608;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('7ug9dqafvftbvqo1j8s18jed24avtpb9','127.0.0.1',1520169655,'__ci_last_regenerate|i:1520169655;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('19khvjjihtak4lm1fg9dufc5ovek3ckd','127.0.0.1',1520169777,'__ci_last_regenerate|i:1520169777;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('kfbud2fqhs3tu77jqikai54uvrcldveo','127.0.0.1',1520169816,'__ci_last_regenerate|i:1520169814;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('68epifalbkgtghjf42upucdmtmhcctud','127.0.0.1',1520169820,'__ci_last_regenerate|i:1520169819;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('e2f7kll1ffqrtlikfegf1gfiea72cc41','127.0.0.1',1520169823,'__ci_last_regenerate|i:1520169823;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('kq64jajn6e1trd4c5sm74tld4dgkqk2o','127.0.0.1',1520169829,'__ci_last_regenerate|i:1520169828;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('hh5fhg9bm0i5ad0gh1jvsbrk9jk8kua3','127.0.0.1',1520169836,'__ci_last_regenerate|i:1520169836;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('pa3qsd6f1e6mcbvto439gdu780s5ld61','127.0.0.1',1520170894,'__ci_last_regenerate|i:1520170893;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('soc2stft7hilnq9me4j33mskjesb4kcn','127.0.0.1',1520170906,'__ci_last_regenerate|i:1520170906;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('j0siv2ep852puv4ssheieq9lrml072sh','127.0.0.1',1520170941,'__ci_last_regenerate|i:1520170941;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('hgooi0q1bf2jf2nih1mq5o3tt7u93lbm','127.0.0.1',1520170957,'__ci_last_regenerate|i:1520170957;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('75m4f447i7mk08kk02ve2if5okkok1lv','127.0.0.1',1520171001,'__ci_last_regenerate|i:1520171001;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('rdfhkt6glavplhjv0mn0rpcjis6deien','127.0.0.1',1520171100,'__ci_last_regenerate|i:1520171100;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('83e1ogjpadq1f78vu7oi916t0ic30c6d','127.0.0.1',1520171158,'__ci_last_regenerate|i:1520171158;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('do2m63of3ucgfgj7adh9e6cth20eulq7','127.0.0.1',1520172669,'__ci_last_regenerate|i:1520172668;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('p166fuktm8r64c3ec74gd0r4ivlp1cbs','127.0.0.1',1520172755,'__ci_last_regenerate|i:1520172755;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('1302eqoe871v1ltg8gffj6jevohthe4s','127.0.0.1',1520172967,'__ci_last_regenerate|i:1520172967;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('fcvh4vtk7smvlt2m6u579ki3jvguqd5g','127.0.0.1',1520173308,'__ci_last_regenerate|i:1520173307;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('vjo1k8b6j6gf02vqta04j1b33jduotei','127.0.0.1',1520173331,'__ci_last_regenerate|i:1520173330;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('m3pjc1to7hgckeq4lbhv4msf972iosb4','127.0.0.1',1520173333,'__ci_last_regenerate|i:1520173333;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('6l3qfifuo54htfot75jjj4o7bnegdl4l','127.0.0.1',1520173335,'__ci_last_regenerate|i:1520173335;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('imk8mpnebvdprv7nbemdsce3r51vmolu','127.0.0.1',1520173337,'__ci_last_regenerate|i:1520173336;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('5a2ljktpku3oaujkf92b6lc3qh2v6nsn','127.0.0.1',1520173565,'__ci_last_regenerate|i:1520173565;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('ld6ojv8o4rvdmu4jn30ej18mgth09a0a','127.0.0.1',1520173583,'__ci_last_regenerate|i:1520173583;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('ef0ltt7773uansheeg5r88uk2vsd42e2','127.0.0.1',1520173677,'__ci_last_regenerate|i:1520173677;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('cg5593brk32biutl0t3sgjkp43ch0f36','127.0.0.1',1520173701,'__ci_last_regenerate|i:1520173701;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('m7lgtshrmpdncbs226es9s4jpqe962k0','127.0.0.1',1520173738,'__ci_last_regenerate|i:1520173738;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('7v24bunhbhk0d0r12fj9ee4rve74sk8f','127.0.0.1',1520174026,'__ci_last_regenerate|i:1520174026;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('nmgi6j2p63t3m788el1nnaec974cq0c7','127.0.0.1',1520174144,'__ci_last_regenerate|i:1520174144;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('96h85htl59bqh18vfodsl3q2nb1n2cbu','127.0.0.1',1520174156,'__ci_last_regenerate|i:1520174155;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('87dtjqbide2gpip7ftt1t5r74s6lqgv5','127.0.0.1',1520174185,'__ci_last_regenerate|i:1520174185;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('pga83mkpuu3i0i42vq9ql3ero3ec7g88','127.0.0.1',1520174510,'__ci_last_regenerate|i:1520174510;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('cdbe5nk5bnrg5t9eda4v0qlanktq974m','127.0.0.1',1520174550,'__ci_last_regenerate|i:1520174549;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('srrk7a51qck223bvrj57ce3jngr94019','127.0.0.1',1520174565,'__ci_last_regenerate|i:1520174564;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('o3a03bjnmgsdpcg9v510vb0c64r4ptir','127.0.0.1',1520174576,'__ci_last_regenerate|i:1520174575;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('m1j6e2mca3o0cvs3j16cb3j9uvt0nf50','127.0.0.1',1520174582,'__ci_last_regenerate|i:1520174581;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('bn1hophikj1jp84vbar03gf60roqp243','127.0.0.1',1520174587,'__ci_last_regenerate|i:1520174587;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('08bf7s9m6aq7reu6m8ohcmo0659h54uc','127.0.0.1',1520174622,'__ci_last_regenerate|i:1520174622;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('7ntuuej3m67k59akg1ppk5p1k9mp54a9','127.0.0.1',1520174630,'__ci_last_regenerate|i:1520174629;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('1376h9hts47d4b2d3d2km1pfv5svl8p0','127.0.0.1',1520174643,'__ci_last_regenerate|i:1520174643;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('pcu686hjgfog743quhp596eiukn6lm6g','127.0.0.1',1520174650,'__ci_last_regenerate|i:1520174650;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('8d39q9ho3imm1620vs4ghfbg7f524tmq','127.0.0.1',1520174660,'__ci_last_regenerate|i:1520174655;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('cq9nmeg4somadit96hv4ueusgn93qbrp','127.0.0.1',1520174669,'__ci_last_regenerate|i:1520174668;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('hkoqeki139t8fa34ttqpbgd6ufclbspl','127.0.0.1',1520174673,'__ci_last_regenerate|i:1520174672;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('k98t4tv4ei2pfgmrooiq54hbn33ldc68','127.0.0.1',1520174799,'__ci_last_regenerate|i:1520174799;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('52b7gm0f9fji086qprk6tdco61oteob6','127.0.0.1',1520174816,'__ci_last_regenerate|i:1520174816;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('0u6aspd8jog3je8tjr1e7t06drco769i','127.0.0.1',1520175216,'__ci_last_regenerate|i:1520175216;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('l2c53q0sb03s4rppfjt3bt7ihaonge5e','127.0.0.1',1520175221,'__ci_last_regenerate|i:1520175220;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('22f40pcdon3dm8qda2tuugbormbif1gh','127.0.0.1',1520175267,'__ci_last_regenerate|i:1520175266;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('22vh6cvck1uqet063485blr09pork3uv','127.0.0.1',1520175305,'__ci_last_regenerate|i:1520175305;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('p174lg8t61k3q8q5vthbmluj7o2mossl','127.0.0.1',1520175378,'__ci_last_regenerate|i:1520175378;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('ttk36do1s2gpkecvv8sm1hcpqrbopeel','127.0.0.1',1520175397,'__ci_last_regenerate|i:1520175397;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('il41pd1f8nrt3gb01lsdms3vaeepcdg2','127.0.0.1',1520175440,'__ci_last_regenerate|i:1520175439;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('kcof1hrrceo1nq162q76227jfip2q5mj','127.0.0.1',1520175482,'__ci_last_regenerate|i:1520175482;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('crqs8tgddjvaifapo6skuikqhujs7sfk','127.0.0.1',1520175591,'__ci_last_regenerate|i:1520175591;session_id|s:32:\"v21tkpu3nk8cbchasnuh7uds65o3dchi\";'),('941hof8nts4nu49cok1fske0o0hg4739','127.0.0.1',1520176439,'__ci_last_regenerate|i:1520176439;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('qp87kl7an64pa8oqh97ui8ob99mo25bk','127.0.0.1',1520175638,'__ci_last_regenerate|i:1520175638;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('542uddj0pfmhlct6rmquhv4effg6bceu','127.0.0.1',1520175647,'__ci_last_regenerate|i:1520175647;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('nb8s5lct8ne0ecfmqqhtktvhg1g6kv0t','127.0.0.1',1520175652,'__ci_last_regenerate|i:1520175651;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('u408ga2mjtl17mqb0hg5rkcpsisii6ah','127.0.0.1',1520175670,'__ci_last_regenerate|i:1520175670;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('j4bnbmcbp6i44avceqendjds2jh8ki82','127.0.0.1',1520175691,'__ci_last_regenerate|i:1520175691;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('00g8nsmarkl1qq0tifth89svbov9rag7','127.0.0.1',1520175703,'__ci_last_regenerate|i:1520175703;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('a5490ulk3etg8c49rrhrfqqf30c0tn7b','127.0.0.1',1520175717,'__ci_last_regenerate|i:1520175716;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('202b0n6i1vqgr40sg3pkuvria0m810hd','127.0.0.1',1520175729,'__ci_last_regenerate|i:1520175729;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('7qv38lfcqkqgb3ce7f4n28edq1f0ha9o','127.0.0.1',1520175735,'__ci_last_regenerate|i:1520175735;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('qa0kmf1leor10cicrp2c11l1kku4tups','127.0.0.1',1520175746,'__ci_last_regenerate|i:1520175746;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('9k7bqa6l4dgc3m5sdganb3h7uk50r5b7','127.0.0.1',1520175753,'__ci_last_regenerate|i:1520175753;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('rct5ia8kvp566189ek2ma523tssnt4is','127.0.0.1',1520175815,'__ci_last_regenerate|i:1520175815;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('qud4mn2mvkk7b6te82ap7klqgr9b1q60','127.0.0.1',1520175831,'__ci_last_regenerate|i:1520175831;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('qkdmh0q13ok5sqojcnkue5pafn2qifod','127.0.0.1',1520176075,'__ci_last_regenerate|i:1520176074;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('du5ba1c9u9kcsi1mcbebr817gjcs7rcd','127.0.0.1',1520176096,'__ci_last_regenerate|i:1520176096;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('q2o5lm8h2i6dsk3t0sma2jvl7op4gnv8','127.0.0.1',1520176129,'__ci_last_regenerate|i:1520176128;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('7sln8jokbk38tc3dm6tk1siblka2eh27','127.0.0.1',1520176142,'__ci_last_regenerate|i:1520176142;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('d9q8prt5ol7if7ggg9olum43nfu05c7s','127.0.0.1',1520176218,'__ci_last_regenerate|i:1520176218;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('iao17e05g6faiactfi416g6ipe7iabem','127.0.0.1',1520176257,'__ci_last_regenerate|i:1520176256;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('sbn6o47eab5kmt2ncilpissaor76rgu1','127.0.0.1',1520176268,'__ci_last_regenerate|i:1520176268;session_id|s:32:\"941hof8nts4nu49cok1fske0o0hg4739\";'),('d2auobb6n36n8e9f9kq5po1t0s43pvur','127.0.0.1',1520178424,'__ci_last_regenerate|i:1520178424;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('cg6j46qis5h8u8494qvdmmhb3mv0rj3m','127.0.0.1',1520177645,'__ci_last_regenerate|i:1520177645;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('sle435hrmp5fts8og7paldaacjgufcik','127.0.0.1',1520177652,'__ci_last_regenerate|i:1520177651;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('cfma5f88vqc3iq14r6hr8j33gccq1ldj','127.0.0.1',1520177659,'__ci_last_regenerate|i:1520177658;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('5ecruvjp44a13m0ovbg0f6tvipuam90q','127.0.0.1',1520177668,'__ci_last_regenerate|i:1520177668;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('mv7nljmpjhvdklos25fph6ic2tpgn960','127.0.0.1',1520177680,'__ci_last_regenerate|i:1520177680;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('t530ocg7pmq9i36fnl73qcfr6mp550d8','127.0.0.1',1520177684,'__ci_last_regenerate|i:1520177684;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('hc1e8fumiqph1e68g9aauqvfc862liik','127.0.0.1',1520177923,'__ci_last_regenerate|i:1520177917;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('cigm3jfso2kj532d8vqkbktk9dacplgj','127.0.0.1',1520177928,'__ci_last_regenerate|i:1520177928;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('6rkuujrjj61v0tirg39p04tsc4jrj39a','127.0.0.1',1520177943,'__ci_last_regenerate|i:1520177942;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('ub48mdel0cbvfdop1mouo19fi3ebin32','127.0.0.1',1520178224,'__ci_last_regenerate|i:1520178224;session_id|s:32:\"d2auobb6n36n8e9f9kq5po1t0s43pvur\";'),('hscs2ffv31jd2gru4k05gsqfcsgtkt9b','127.0.0.1',1520178745,'__ci_last_regenerate|i:1520178745;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('kjv2sbfd2h6vagv7uk3g394kis6bufal','127.0.0.1',1520179942,'__ci_last_regenerate|i:1520179942;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('9q3mr6tgbcu9b6tvh3uep8etc86bk9g7','127.0.0.1',1520178750,'__ci_last_regenerate|i:1520178749;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('b8dsbibt2ua28n0u9nt4u6aeapcrm7ip','127.0.0.1',1520178760,'__ci_last_regenerate|i:1520178759;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('nnlfi822a802ks9cpt9qs05ger3q9dr0','127.0.0.1',1520178766,'__ci_last_regenerate|i:1520178766;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('oig1h8ua051i5o9gq49ngmfpan28ou8u','127.0.0.1',1520178770,'__ci_last_regenerate|i:1520178770;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('70ce23u31idflcbsm67l1428emqu7dsm','127.0.0.1',1520178782,'__ci_last_regenerate|i:1520178781;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('mipududng1sq00a8socpt0gcebnqg9d5','127.0.0.1',1520178840,'__ci_last_regenerate|i:1520178840;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('fci49mfuukbfr1vghgjqc1i3tr4ni9fj','127.0.0.1',1520178865,'__ci_last_regenerate|i:1520178864;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('8stm87glkpe9dekrs0o0acnn3alkq1eq','127.0.0.1',1520178873,'__ci_last_regenerate|i:1520178872;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('8p7ct6cr8eehs25b1a940se6ue9734la','127.0.0.1',1520178978,'__ci_last_regenerate|i:1520178977;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('sesucia9mu6s6k828utlt86sgld3jv91','127.0.0.1',1520178983,'__ci_last_regenerate|i:1520178983;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('83288vjijqhhldka52fsj6mhklnltu6c','127.0.0.1',1520179134,'__ci_last_regenerate|i:1520179134;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('ns3aqoqmhkpekvu41km4c58rsitg2355','127.0.0.1',1520179195,'__ci_last_regenerate|i:1520179195;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('pl8erbv0esvu4gtko7pdn50r210un9eb','127.0.0.1',1520179218,'__ci_last_regenerate|i:1520179218;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('g7ovs34tfmgb52g1prrembtdabobktjd','127.0.0.1',1520179292,'__ci_last_regenerate|i:1520179292;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('ss474l0h6c2vod4qq4g281ml49ehlopq','127.0.0.1',1520179505,'__ci_last_regenerate|i:1520179505;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('7td4b4vuhq2bh236arfmpj46pnt2ug4n','127.0.0.1',1520179549,'__ci_last_regenerate|i:1520179548;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('1siemc5v1r15a11915j2dv8aqm0ps0u1','127.0.0.1',1520179561,'__ci_last_regenerate|i:1520179560;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('s268i7vfjbnf1jfdi8besmt3m3pc7p8g','127.0.0.1',1520179626,'__ci_last_regenerate|i:1520179619;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('8ikq9qq3bu3maq33a3bjud2sme4rjo32','127.0.0.1',1520179820,'__ci_last_regenerate|i:1520179820;session_id|s:32:\"kjv2sbfd2h6vagv7uk3g394kis6bufal\";'),('2da6a8fr3huo8in2la1roclcldi5457k','127.0.0.1',1520180381,'__ci_last_regenerate|i:1520180381;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('gj9ukd6jaij4nnl1p07bkrg9sdballic','127.0.0.1',1520180068,'__ci_last_regenerate|i:1520180068;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('evvkcmm5tf8c059ej4v2o7n5cjjmeo4g','127.0.0.1',1520180074,'__ci_last_regenerate|i:1520180074;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('udjkno8d4h7urue1vlf16kn4d1r0caca','127.0.0.1',1520180095,'__ci_last_regenerate|i:1520180095;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('cl9o366ps5jl967lb86lqjj43s2g09uh','127.0.0.1',1520180221,'__ci_last_regenerate|i:1520180220;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('7o0t2opc4cokh1lf3c0drm6v43mvo12t','127.0.0.1',1520180242,'__ci_last_regenerate|i:1520180241;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('uvr91fogtskjnf8ac4e9ng8qs3hm4bbh','127.0.0.1',1520180253,'__ci_last_regenerate|i:1520180252;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('79nog4n1bm6qhu3nanaet2ksgerq97fr','127.0.0.1',1520180260,'__ci_last_regenerate|i:1520180259;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('cpesv4g5ab5u5nl2gkbso4h3juu22ubf','127.0.0.1',1520180265,'__ci_last_regenerate|i:1520180264;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('u9u4d3df707hk4djg01629fflpl0imhs','127.0.0.1',1520180267,'__ci_last_regenerate|i:1520180267;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('uhqnnvj8l4vffelhmf9vls3a37endf0q','127.0.0.1',1520180324,'__ci_last_regenerate|i:1520180323;session_id|s:32:\"2da6a8fr3huo8in2la1roclcldi5457k\";'),('o4cek05jfhvl29nk1oul729p3cbbkn55','127.0.0.1',1520180973,'__ci_last_regenerate|i:1520180973;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3026jgrukvn0bhrmsadk09617vt7qtdg','127.0.0.1',1520180433,'__ci_last_regenerate|i:1520180432;session_id|s:32:\"o4cek05jfhvl29nk1oul729p3cbbkn55\";'),('0pv5id0iadv2636r931i8h32igl3202m','127.0.0.1',1520180436,'__ci_last_regenerate|i:1520180436;session_id|s:32:\"o4cek05jfhvl29nk1oul729p3cbbkn55\";'),('q3g9j06esmvpn9v11p6psrg8aqotup6b','127.0.0.1',1520181365,'__ci_last_regenerate|i:1520181365;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kfhgqsfnub64mtbsfog8kroom4cig5ed','127.0.0.1',1520181684,'__ci_last_regenerate|i:1520181684;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('o2f3q0c5gbsvca15ilas00btscqnoqmk','127.0.0.1',1520182295,'__ci_last_regenerate|i:1520182295;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3ie0foe8ft3q514k48hkrrgov8qheo7u','127.0.0.1',1520182754,'__ci_last_regenerate|i:1520182754;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('mfpc13p3boqn6cn0jvhjr7lpnaum7t08','127.0.0.1',1520183292,'__ci_last_regenerate|i:1520183292;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kv1pv6l879ujvd15qo3lad5dd6db2cgn','127.0.0.1',1520183665,'__ci_last_regenerate|i:1520183665;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('e66k4gmlpf0lh3as5cbvrvffege7bdvv','127.0.0.1',1520183975,'__ci_last_regenerate|i:1520183975;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('j9895pubh1pje2jtbbstj7u8ere978o7','127.0.0.1',1520184279,'__ci_last_regenerate|i:1520184279;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('csiqiiebai0iodm05khn1dgqv8dprhi7','127.0.0.1',1520184649,'__ci_last_regenerate|i:1520184649;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;message-success|s:29:\"Intents updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('ko88k73igvqjc9u37vv2h5legbqb1sm4','127.0.0.1',1520184951,'__ci_last_regenerate|i:1520184951;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('82m8f4nlr6v9org4hjgjqt26svrhlvo4','127.0.0.1',1520185320,'__ci_last_regenerate|i:1520185320;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('l4ahuemn4ch1fqcei4b5inn52ogufvct','127.0.0.1',1520186178,'__ci_last_regenerate|i:1520186178;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('17l61lcksbe9t6qvcnm5pgq3cqapjve5','127.0.0.1',1520186826,'__ci_last_regenerate|i:1520186826;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('n3jas8fjpbflm41uv6luo2q2c7v6cpgl','127.0.0.1',1520186188,'__ci_last_regenerate|i:1520186182;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('3u98rj7ledoijipg5c0mq02mdmhfk8jc','127.0.0.1',1520186215,'__ci_last_regenerate|i:1520186214;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('cp4fb5j722s8augqsia5r48rebajihid','127.0.0.1',1520186337,'__ci_last_regenerate|i:1520186337;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('fr57sl70am8omvkgdnpulks01fo7kd0o','127.0.0.1',1520186434,'__ci_last_regenerate|i:1520186433;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('nkgflqeidddvfe9scasoln97r4u3ki58','127.0.0.1',1520186438,'__ci_last_regenerate|i:1520186438;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('rkll6qqrp5nqgfmlj446aj9ksfp6o0en','127.0.0.1',1520186494,'__ci_last_regenerate|i:1520186493;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('3jrgpasjranvpm95kbab48pjktj8nlr9','127.0.0.1',1520186499,'__ci_last_regenerate|i:1520186498;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('48m0u3q1h4ffhomge0pmms54jbb0bo4h','127.0.0.1',1520186607,'__ci_last_regenerate|i:1520186606;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('g96l8frq7t75ov42fpeh15nki6c5vffg','127.0.0.1',1520186657,'__ci_last_regenerate|i:1520186657;session_id|s:32:\"17l61lcksbe9t6qvcnm5pgq3cqapjve5\";'),('ct6u3esvet2eagi2f1dqodimbdgl56dh','127.0.0.1',1520187361,'__ci_last_regenerate|i:1520187361;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('7sffsg6udbsg6radefu2j0ehhlhc2h2g','127.0.0.1',1520186843,'__ci_last_regenerate|i:1520186843;session_id|s:32:\"ct6u3esvet2eagi2f1dqodimbdgl56dh\";'),('rcai2i693g36gbh24ibdp00hfg9s8984','127.0.0.1',1520186908,'__ci_last_regenerate|i:1520186907;session_id|s:32:\"ct6u3esvet2eagi2f1dqodimbdgl56dh\";'),('gmco6e7v2q14u6iep311v6c4hqhnjh7t','127.0.0.1',1520187014,'__ci_last_regenerate|i:1520187014;session_id|s:32:\"ct6u3esvet2eagi2f1dqodimbdgl56dh\";'),('4dbg8amuoqgelf7cjgr7lntfjvafef9v','127.0.0.1',1520187081,'__ci_last_regenerate|i:1520187080;session_id|s:32:\"ct6u3esvet2eagi2f1dqodimbdgl56dh\";'),('kqb5ura0rd8iahb4ald7pkqb1lj28gnu','127.0.0.1',1520187160,'__ci_last_regenerate|i:1520187159;session_id|s:32:\"ct6u3esvet2eagi2f1dqodimbdgl56dh\";'),('pohfb7b48jl7ifpua253v2qlb2fnvuhq','127.0.0.1',1520187194,'__ci_last_regenerate|i:1520187193;session_id|s:32:\"ct6u3esvet2eagi2f1dqodimbdgl56dh\";'),('5hb7kqq43622v2gutg4pa0is2nc0guhe','127.0.0.1',1520187199,'__ci_last_regenerate|i:1520187199;session_id|s:32:\"ct6u3esvet2eagi2f1dqodimbdgl56dh\";'),('2e97g99vngnhejtok4g7rasf62k9hkqn','127.0.0.1',1520187784,'__ci_last_regenerate|i:1520187784;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jn9l1aufp0c4c5p7jbjdnflf8p8qj6bd','127.0.0.1',1520187365,'__ci_last_regenerate|i:1520187364;session_id|s:32:\"2e97g99vngnhejtok4g7rasf62k9hkqn\";'),('fbdae79rklenjjanpq3t0qdpb9j3sdre','127.0.0.1',1520187370,'__ci_last_regenerate|i:1520187369;session_id|s:32:\"2e97g99vngnhejtok4g7rasf62k9hkqn\";'),('4andd6qqr7j24l63j4d5tna9s1mtg8ol','127.0.0.1',1520188102,'__ci_last_regenerate|i:1520188102;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('9pu9dkb5u5glqi5qm7fi4m0lm48ogr71','127.0.0.1',1520187788,'__ci_last_regenerate|i:1520187787;session_id|s:32:\"4andd6qqr7j24l63j4d5tna9s1mtg8ol\";'),('iq43b9ntj3r7s2h3maqjog5ccpki0e55','127.0.0.1',1520187794,'__ci_last_regenerate|i:1520187793;session_id|s:32:\"4andd6qqr7j24l63j4d5tna9s1mtg8ol\";'),('rg7t647g0otrnsptu7agpq4tvv50vkqc','127.0.0.1',1520187842,'__ci_last_regenerate|i:1520187841;session_id|s:32:\"4andd6qqr7j24l63j4d5tna9s1mtg8ol\";'),('m83us8hvau0i27bq1l79ni0p6h3conbe','127.0.0.1',1520187852,'__ci_last_regenerate|i:1520187846;session_id|s:32:\"4andd6qqr7j24l63j4d5tna9s1mtg8ol\";'),('skvb0andue40gflas81haf3okgmtljdm','127.0.0.1',1520187857,'__ci_last_regenerate|i:1520187856;session_id|s:32:\"4andd6qqr7j24l63j4d5tna9s1mtg8ol\";'),('mqg19p6tm26n29scmnjhrm7nn1uf2vah','127.0.0.1',1520187933,'__ci_last_regenerate|i:1520187933;session_id|s:32:\"4andd6qqr7j24l63j4d5tna9s1mtg8ol\";'),('7css1kh2n7hkrni51csdfg70joa402i2','127.0.0.1',1520190480,'__ci_last_regenerate|i:1520190480;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6v41lhkl244o1rdiaou1e0cu3nvge79u','127.0.0.1',1520190852,'__ci_last_regenerate|i:1520190852;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jj8lbeegugeuoj3a1r3ikg6b3sor07i0','127.0.0.1',1520191185,'__ci_last_regenerate|i:1520191185;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6jickb3dj4r6q6s6q4tqldcr5jesm3bt','127.0.0.1',1520191486,'__ci_last_regenerate|i:1520191486;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('cldvg3urc4r60rru789j22varumj7t70','127.0.0.1',1520191410,'__ci_last_regenerate|i:1520191409;session_id|s:32:\"6jickb3dj4r6q6s6q4tqldcr5jesm3bt\";'),('4gccetgipdqod3p2io5d5hk307vkvs04','127.0.0.1',1520191422,'__ci_last_regenerate|i:1520191422;session_id|s:32:\"6jickb3dj4r6q6s6q4tqldcr5jesm3bt\";'),('sc3co6shf3b2b0kg3jo5meqabebpg14s','127.0.0.1',1520191432,'__ci_last_regenerate|i:1520191432;session_id|s:32:\"6jickb3dj4r6q6s6q4tqldcr5jesm3bt\";'),('ove196jd256s23ndp9rdu1khi66en605','127.0.0.1',1520196673,'__ci_last_regenerate|i:1520196673;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4984h7hd925u3rceleagbdpqadv1015b','127.0.0.1',1520191562,'__ci_last_regenerate|i:1520191562;'),('0k5fc222o8tgnqn8cr8lepv4clpsshbd','127.0.0.1',1520202146,'__ci_last_regenerate|i:1520202146;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('rni209t27f56tp3c749e4tceipp3er64','127.0.0.1',1520196826,'__ci_last_regenerate|i:1520196826;'),('51p8o28mo7vds2eu2sjps6nbq2ue0re7','127.0.0.1',1520196874,'__ci_last_regenerate|i:1520196874;'),('einhi1tu56vo3j7adqa797165nh0ktap','127.0.0.1',1520197101,'__ci_last_regenerate|i:1520197101;'),('rb2pfm3ef3qnltms5bpivio39aqg086o','127.0.0.1',1520197112,'__ci_last_regenerate|i:1520197112;'),('l45rj8rc3slcrqhkmvhlkuu2mnfscso7','127.0.0.1',1520197181,'__ci_last_regenerate|i:1520197181;'),('97a7teo0fesq3tbgbqp8bu8u9t0gob2o','127.0.0.1',1520199748,'__ci_last_regenerate|i:1520199748;'),('ojr2d2aagj924km1aoa82hvludc1i8io','127.0.0.1',1520202069,'__ci_last_regenerate|i:1520202069;'),('fsftgksdf0v46hqag2o603bkf739aobs','127.0.0.1',1520202118,'__ci_last_regenerate|i:1520202118;'),('u5805h2vmvb4m1nne6mrb94qfg4eulp7','127.0.0.1',1520202452,'__ci_last_regenerate|i:1520202452;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('c37p1embl3218hd05jkbcifskbj4hmmv','127.0.0.1',1520202178,'__ci_last_regenerate|i:1520202178;'),('msn93ch3ter51ko31jf7vhjdvaa845v4','127.0.0.1',1520204570,'__ci_last_regenerate|i:1520204570;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4sh7kl6voui5dg1otvbkaegt6gvd0qec','127.0.0.1',1520216641,'__ci_last_regenerate|i:1520216641;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('2sjk64u1ktmfk3r1hmcnuq59gdoqeskq','127.0.0.1',1520204572,'__ci_last_regenerate|i:1520204572;'),('bo6nm32o391asc2poih1bvbvldkfilfr','127.0.0.1',1520204605,'__ci_last_regenerate|i:1520204605;'),('mp8pbckkud6f8nijtauo42i7lvl63qqu','127.0.0.1',1520204617,'__ci_last_regenerate|i:1520204617;'),('ju7ivdm8mnds32agkaouf0i1rb7362lh','127.0.0.1',1520204627,'__ci_last_regenerate|i:1520204627;'),('44ecs3mtlh3j4ujq01500mtc840gse9p','127.0.0.1',1520204738,'__ci_last_regenerate|i:1520204738;'),('0i6o9l4vmc2v9f5nu1676f80l569s8em','127.0.0.1',1520204887,'__ci_last_regenerate|i:1520204887;'),('2hv3f7mc3hqvvfjltvl7c2k1its9aenu','127.0.0.1',1520204909,'__ci_last_regenerate|i:1520204908;'),('ot9pl0gojddhllk084d5ugh8in083efp','127.0.0.1',1520204918,'__ci_last_regenerate|i:1520204918;'),('1ll5gtp3j7uu0g7502kon02s7utaidu2','127.0.0.1',1520204987,'__ci_last_regenerate|i:1520204987;'),('hj4s1vj5kduhb1g97lunlrq9ks8p23r3','127.0.0.1',1520205005,'__ci_last_regenerate|i:1520205005;'),('m5b45njkpc3tbb5r30csb14i8ckuh0qm','127.0.0.1',1520205057,'__ci_last_regenerate|i:1520205057;'),('99srsp5qifgni7b274dj1ak5p3de6j0r','127.0.0.1',1520205194,'__ci_last_regenerate|i:1520205194;'),('1gqehs3djiirs2ed0ni9go2o1g0r1dhb','127.0.0.1',1520205198,'__ci_last_regenerate|i:1520205198;'),('v7nuan4ferqg85ju8tjq0dcbf2535897','127.0.0.1',1520205230,'__ci_last_regenerate|i:1520205230;'),('v3m8pv2c159a7a2j0pbfvu0cpe79gij6','127.0.0.1',1520205276,'__ci_last_regenerate|i:1520205276;'),('cjl0jlkmqr99jq4uau9aki03h491v7cm','127.0.0.1',1520205359,'__ci_last_regenerate|i:1520205359;'),('9ci4vs4khv5mpsu7iachv50h3pe0k85p','127.0.0.1',1520205368,'__ci_last_regenerate|i:1520205368;'),('97abrutvdrb37trf5k9dqlar319eknbo','127.0.0.1',1520205399,'__ci_last_regenerate|i:1520205399;'),('ucp5gum97ng61drbhr0lbl1tn9o9ff45','127.0.0.1',1520205455,'__ci_last_regenerate|i:1520205455;'),('bh2ojj02mtqk1crv5m7kf4qjf2hfv1jk','127.0.0.1',1520205469,'__ci_last_regenerate|i:1520205469;'),('jsfv2h4mvrehu8mkqccmgi95ljqrj556','127.0.0.1',1520205477,'__ci_last_regenerate|i:1520205477;'),('fb4an4f2erctpv6oqbq6r1ekhht93fh1','127.0.0.1',1520205487,'__ci_last_regenerate|i:1520205487;'),('7kh1608m01oag5vadko4c0c9bp2fhc8b','127.0.0.1',1520205507,'__ci_last_regenerate|i:1520205507;'),('5v61so60qul96gbblfd22bvbnotd4nrr','127.0.0.1',1520205683,'__ci_last_regenerate|i:1520205683;'),('3jgov69dvn1d2587cg061n89ppakmqqb','127.0.0.1',1520205694,'__ci_last_regenerate|i:1520205694;'),('iv9m6i4uedodv502vdkpae2mmm4pudbb','127.0.0.1',1520216163,'__ci_last_regenerate|i:1520216163;'),('29s01i61hk5n8e8jspp34b4uklpjincb','127.0.0.1',1520216221,'__ci_last_regenerate|i:1520216221;'),('o2h9gb1c4e9k6fd3iiuice5doh0ojofa','127.0.0.1',1520216256,'__ci_last_regenerate|i:1520216256;'),('3k0s8khfn76e5b0qfgl4k5u98j04753j','127.0.0.1',1520216270,'__ci_last_regenerate|i:1520216270;'),('6dpgp3d5r4p10o29bkqcpo3v86r17off','127.0.0.1',1520216314,'__ci_last_regenerate|i:1520216314;'),('n3neri6t39pidm2qvp07p1steuut05a4','127.0.0.1',1520216341,'__ci_last_regenerate|i:1520216341;'),('3vfmik8cajvckkd67drumj35vmooijh5','127.0.0.1',1520216353,'__ci_last_regenerate|i:1520216353;'),('h5a0j4jc4evuht4gkst7vom7mc3me4lg','127.0.0.1',1520216384,'__ci_last_regenerate|i:1520216384;'),('iiqao209ret7tohjcsm5bi0rlc4j7d1t','127.0.0.1',1520216403,'__ci_last_regenerate|i:1520216403;'),('jkpheja45oeu28h7tns1qu76jktraqbv','127.0.0.1',1520216448,'__ci_last_regenerate|i:1520216448;'),('4pj71dr5dnbbiug4avvslt9vcj1jlt7c','127.0.0.1',1520216506,'__ci_last_regenerate|i:1520216506;'),('b4hpegkiv7hkema836hm4gb9k9qvh31o','127.0.0.1',1520216509,'__ci_last_regenerate|i:1520216509;'),('msr4i87ur83farg860d0h3grpgc2qa9g','127.0.0.1',1520217525,'__ci_last_regenerate|i:1520217525;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vpcr368463tl00kr5jd7mbfikmunqj74','127.0.0.1',1520216842,'__ci_last_regenerate|i:1520216842;'),('2ldo7iovehkjmuht27esf1lksa1b80m9','127.0.0.1',1520216922,'__ci_last_regenerate|i:1520216921;'),('pp2m9vu9mtcqc8tv1ksecn5emcaslc5i','127.0.0.1',1520217500,'__ci_last_regenerate|i:1520217500;'),('u015oodnrn2j7si4ki58jn8100uunr05','127.0.0.1',1520218076,'__ci_last_regenerate|i:1520218076;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('sq98ak2kb2ings1vq51qckjlosf0ll6h','127.0.0.1',1520242000,'__ci_last_regenerate|i:1520242000;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('a5ca2esnlsbaluel6qtjrou4etjgdqa5','127.0.0.1',1520218081,'__ci_last_regenerate|i:1520218081;'),('na0910ckqt5lmmjg05h4mqgu6fet6cok','127.0.0.1',1520218106,'__ci_last_regenerate|i:1520218106;'),('pm6joem9jp9t0b43ns3cg0raku2ll331','127.0.0.1',1520218108,'__ci_last_regenerate|i:1520218108;'),('o5b1m3mj5e30216oqgi6vg5014vo079c','127.0.0.1',1520218129,'__ci_last_regenerate|i:1520218129;'),('c5pdlqthtj5i8ebce90nejmo5laceunl','127.0.0.1',1520218141,'__ci_last_regenerate|i:1520218141;'),('4m9q188lb4t6tmk62a2oivof9cepvida','127.0.0.1',1520218144,'__ci_last_regenerate|i:1520218144;'),('bptebdj0ji3kgue5siimitqaamevth1f','127.0.0.1',1520218148,'__ci_last_regenerate|i:1520218148;'),('7lm573852ghabdv1d75qj8tntje9ksv5','127.0.0.1',1520218154,'__ci_last_regenerate|i:1520218154;'),('s0slsmgpme2arq9gdcggua0r2do43h0r','127.0.0.1',1520218173,'__ci_last_regenerate|i:1520218173;'),('7ibfgcgnqlfgi6611e47rd4el1cefqss','127.0.0.1',1520218182,'__ci_last_regenerate|i:1520218182;'),('18dtp3hej9ir7060k59a19l83b282ttr','127.0.0.1',1520218189,'__ci_last_regenerate|i:1520218189;'),('tnra8gv3u4327ubncjs6bcfgjhegog84','127.0.0.1',1520218199,'__ci_last_regenerate|i:1520218199;'),('2ek4tlnes0251r3nijfmg3s500dailee','127.0.0.1',1520218199,'__ci_last_regenerate|i:1520218199;'),('egffhlgnd8j12cpdvanbhggqjphcjc8e','127.0.0.1',1520220848,'__ci_last_regenerate|i:1520220848;'),('qgijag3j783k44qsjc0g3s99t73h9egb','127.0.0.1',1520220859,'__ci_last_regenerate|i:1520220859;'),('62g0cccbftbdv95spkifi5q6seooh16t','127.0.0.1',1520221042,'__ci_last_regenerate|i:1520221042;'),('uj7t8nsg2rtqj6knle2oobqb9mfbes66','127.0.0.1',1520221079,'__ci_last_regenerate|i:1520221079;'),('v5i58568h8td57bfokbq6j7904el0i78','127.0.0.1',1520221426,'__ci_last_regenerate|i:1520221421;'),('2c7a08qingi324b0r5vng4qppugjcevb','127.0.0.1',1520221783,'__ci_last_regenerate|i:1520221783;'),('530a64fmraccj42t30cfcha8sofm67h6','127.0.0.1',1520221863,'__ci_last_regenerate|i:1520221863;'),('98of5ob4d27lncogptgkgta6coo1qahf','127.0.0.1',1520221903,'__ci_last_regenerate|i:1520221903;'),('qdkan3ba40nkqoi0l9a2fm2rd2lkerao','127.0.0.1',1520221941,'__ci_last_regenerate|i:1520221941;'),('hpo3j43l3lvp4lej21ahjvuasoch4kf0','127.0.0.1',1520221985,'__ci_last_regenerate|i:1520221985;'),('70kmv1gq5dvhth9ja96llispk02pcopp','127.0.0.1',1520222020,'__ci_last_regenerate|i:1520222020;'),('jrgbkvo83k2jrk1e9no9nbjfo6c73d0r','127.0.0.1',1520222049,'__ci_last_regenerate|i:1520222049;'),('bm9sgt7r1e81dc8uknir2geqtqav44kg','127.0.0.1',1520222145,'__ci_last_regenerate|i:1520222141;'),('9t00o9dkmhp40q1aou6671l5cc6oiqia','127.0.0.1',1520222485,'__ci_last_regenerate|i:1520222485;'),('op0gak5o29g1duvm2h32ih3tlj4e3gnv','127.0.0.1',1520222649,'__ci_last_regenerate|i:1520222649;'),('tbgejeau20fa7v82p7bh80e77fa2oon8','127.0.0.1',1520222860,'__ci_last_regenerate|i:1520222860;'),('fuk6gt2fgn71bhe9g02bkud86mj6e97q','127.0.0.1',1520222885,'__ci_last_regenerate|i:1520222885;'),('j03s7foakuc51hprcouiitkhs0brjuun','127.0.0.1',1520222929,'__ci_last_regenerate|i:1520222929;'),('f2kp1poafs2d4s6uq6v3abarkdpu3b55','127.0.0.1',1520222975,'__ci_last_regenerate|i:1520222974;'),('b5h6l1kug30q00gnqv5vdjurjvflfa73','127.0.0.1',1520223100,'__ci_last_regenerate|i:1520223100;'),('dfi60u9hhm9svmvrkooi3coft3srr27f','127.0.0.1',1520223138,'__ci_last_regenerate|i:1520223138;'),('jcejf2g77rnjusunh7u1pcejk06ris8b','127.0.0.1',1520223145,'__ci_last_regenerate|i:1520223145;'),('m7lgq95749nt05vfvgqhsji4p60p4qkd','127.0.0.1',1520223174,'__ci_last_regenerate|i:1520223174;'),('1c2rs37jn0c3m4626ksvr4dt8n39goma','127.0.0.1',1520223202,'__ci_last_regenerate|i:1520223202;'),('5ejc0i7hs05qmb8ee7spk1g05ldvgnkj','127.0.0.1',1520223250,'__ci_last_regenerate|i:1520223250;'),('58mqqf391jb8vteqk3764d5nc3ik8t3a','127.0.0.1',1520223283,'__ci_last_regenerate|i:1520223283;'),('n7ejt5gv5uetsvjdlnh2ookhuhf5b12m','127.0.0.1',1520223461,'__ci_last_regenerate|i:1520223461;'),('hvu4n79p11omquesdf84ru82u72urr87','127.0.0.1',1520223478,'__ci_last_regenerate|i:1520223478;'),('ho8nrcmsvc6iic120rjve151q4crm66e','127.0.0.1',1520223499,'__ci_last_regenerate|i:1520223498;'),('8n9h7mbags4bh15qavirf7umdmaumh5u','127.0.0.1',1520223541,'__ci_last_regenerate|i:1520223541;'),('oai7u74tmbv8o1eilkh1l3tl2b0e6rks','127.0.0.1',1520223577,'__ci_last_regenerate|i:1520223577;'),('8jpth9douhjp081kf1eggv37ujh16l86','127.0.0.1',1520223761,'__ci_last_regenerate|i:1520223761;'),('n49j20sk1chklec71tknil5j9epkr81j','127.0.0.1',1520223785,'__ci_last_regenerate|i:1520223785;'),('onh2gl0i8tdbgaruhgstp7hgt604j3ch','127.0.0.1',1520223801,'__ci_last_regenerate|i:1520223801;'),('m2f903sr2qvk8l3uqabf2een3ks38fto','127.0.0.1',1520241782,'__ci_last_regenerate|i:1520241782;'),('ckemqv039dfc8bp10rpb9vfh7hqg9m1d','127.0.0.1',1520241828,'__ci_last_regenerate|i:1520241827;'),('moqq6a0jng5hb66q5b8s6ls47lib682f','127.0.0.1',1520241980,'__ci_last_regenerate|i:1520241980;'),('dfo2jh1pgs4ol2374ltj7pbqi2322dfh','127.0.0.1',1520246344,'__ci_last_regenerate|i:1520246344;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('p5m7kg3lk54i5n4raeh2prsf8fg32fau','127.0.0.1',1520242010,'__ci_last_regenerate|i:1520242010;'),('al5ga7klrbucn51er4jpfhd220bj4hlq','127.0.0.1',1520242224,'__ci_last_regenerate|i:1520242224;'),('smtf0eja3683hu5o9fjaqb9683bs1dhh','127.0.0.1',1520242251,'__ci_last_regenerate|i:1520242251;'),('0ec91qd83i7iuua7gs0n8h84orth2fte','127.0.0.1',1520242292,'__ci_last_regenerate|i:1520242292;'),('1u1tulhol7nb8kresvp9q6nho47mjed7','127.0.0.1',1520242407,'__ci_last_regenerate|i:1520242407;'),('4lh0kdpuiotdjq9l6p3pcaqag14gbiqo','127.0.0.1',1520242437,'__ci_last_regenerate|i:1520242437;'),('8ktv6k2fh6346io2bircrt7eldffgif6','127.0.0.1',1520242457,'__ci_last_regenerate|i:1520242457;'),('ihl88k8s1kludup6ltju5n6n0saae0gm','127.0.0.1',1520242470,'__ci_last_regenerate|i:1520242470;'),('a07dstf8gnl11u9a801q1safns2iug1u','127.0.0.1',1520242498,'__ci_last_regenerate|i:1520242498;'),('n0busl8m7t22fc7e6vsci4rb1rtsqvfl','127.0.0.1',1520242515,'__ci_last_regenerate|i:1520242515;'),('b85drb008tt63q5cglip8d8gm5bp0k9n','127.0.0.1',1520242543,'__ci_last_regenerate|i:1520242543;'),('lgsl6ibn1mkiqh3ksjgdmevj3uspo9ik','127.0.0.1',1520242620,'__ci_last_regenerate|i:1520242620;'),('mu88qcp2s3anndu2scude0vno3qoeqm8','127.0.0.1',1520242638,'__ci_last_regenerate|i:1520242638;'),('obiuv34953tjs3m9mcblqbc1gi6bkh4c','127.0.0.1',1520242660,'__ci_last_regenerate|i:1520242660;'),('meivbil8aam4ev2umlfe99rls1gfjun7','127.0.0.1',1520242735,'__ci_last_regenerate|i:1520242734;'),('ck56jbfikpvo148h28muv1gtd04qhldh','127.0.0.1',1520243127,'__ci_last_regenerate|i:1520243127;'),('ip4tlk55nbe4jvcfp3e19kvakktep1vt','127.0.0.1',1520243169,'__ci_last_regenerate|i:1520243169;'),('jduedhfkgjq5e1rde78t3ml4sq1ktga0','127.0.0.1',1520243179,'__ci_last_regenerate|i:1520243179;'),('6lh6h3h910tdq76gkn4sd3j1gq4v2dpd','127.0.0.1',1520243209,'__ci_last_regenerate|i:1520243209;'),('q1pv27gjiqoo5n4hj3fc8jgmnkgsdnru','127.0.0.1',1520243313,'__ci_last_regenerate|i:1520243313;'),('ua2p9t83uv8tp8tk65hh3o3ba9drr4sn','127.0.0.1',1520243388,'__ci_last_regenerate|i:1520243388;'),('hkeil99a2pqvgavlgcrd99q0neg017hf','127.0.0.1',1520244057,'__ci_last_regenerate|i:1520244056;'),('fhujnq4obh1glfigt2um070u6cvvqiqm','127.0.0.1',1520244099,'__ci_last_regenerate|i:1520244099;'),('renhnums7eq1q2ualggql9am0f51842q','127.0.0.1',1520244353,'__ci_last_regenerate|i:1520244353;'),('uvb5cgim1od021dcuohckvp632lfeuvc','127.0.0.1',1520244376,'__ci_last_regenerate|i:1520244376;'),('83k2gsp4qpho1om379j7qajus3refcv2','127.0.0.1',1520244470,'__ci_last_regenerate|i:1520244470;'),('50a9h3qrq7e9dds2k6hlnqpvrve0teuo','127.0.0.1',1520244527,'__ci_last_regenerate|i:1520244527;'),('el62c6dv3sah2bg158pofommr7hcrith','127.0.0.1',1520244557,'__ci_last_regenerate|i:1520244557;'),('m3td2tq3g8c6mhk2mvavo76a2d0nutm1','127.0.0.1',1520244644,'__ci_last_regenerate|i:1520244644;'),('jil2pem3dt8s3gdljpoh9pkm4m2q8gif','127.0.0.1',1520244867,'__ci_last_regenerate|i:1520244867;'),('4ai5sqjpbed0gdcn18605mevo23tl109','127.0.0.1',1520244884,'__ci_last_regenerate|i:1520244884;'),('ru6hulvtmtia1v4e7dpb7amqpu2dst0o','127.0.0.1',1520244909,'__ci_last_regenerate|i:1520244909;'),('rc3ikcnnt8hsfjv2rk2dcoa3f8af63ek','127.0.0.1',1520244952,'__ci_last_regenerate|i:1520244952;'),('v28qb67tm0oemred6orjpmupapg9t90d','127.0.0.1',1520245028,'__ci_last_regenerate|i:1520245028;'),('o0t918cor5h3r5sof9eb9spj3gar91sn','127.0.0.1',1520245174,'__ci_last_regenerate|i:1520245174;'),('d1h0mpblrpdjpb62j5s4qt6v9hsms175','127.0.0.1',1520245220,'__ci_last_regenerate|i:1520245220;'),('bs3lkehenne35t8mc4p837ttg3stbqnm','127.0.0.1',1520245249,'__ci_last_regenerate|i:1520245249;'),('f94a1otac3eg57uji9enn12302id0cl5','127.0.0.1',1520245283,'__ci_last_regenerate|i:1520245283;'),('08b24qmmftmltkj6s77duces1tgea3tl','127.0.0.1',1520245310,'__ci_last_regenerate|i:1520245310;'),('87u891gucsfaqck6206v8gbsl51kvdj4','127.0.0.1',1520245342,'__ci_last_regenerate|i:1520245342;'),('gb5f0lkv8e7g0s7m2vmhtdk6pfkj0khl','127.0.0.1',1520245372,'__ci_last_regenerate|i:1520245372;'),('nkpsoor5r3ot6oa2oj00hkdghdjrof4m','127.0.0.1',1520245445,'__ci_last_regenerate|i:1520245445;'),('ub063brvortbtfd7oi8hcsa6ros7gid2','127.0.0.1',1520245497,'__ci_last_regenerate|i:1520245497;'),('ks4jna2b0c8l16aij5fq6onblh3caq1o','127.0.0.1',1520245524,'__ci_last_regenerate|i:1520245523;'),('mt4iosth137njq9sqt254u69hpt6gtei','127.0.0.1',1520245578,'__ci_last_regenerate|i:1520245578;'),('i5ddbbdu71u5h432l1jb5hm0daept4pf','127.0.0.1',1520245593,'__ci_last_regenerate|i:1520245593;'),('l54625fddrmqq6k09guj6a5mq2b8pg0a','127.0.0.1',1520245626,'__ci_last_regenerate|i:1520245626;'),('08g0dg095t3hnsm37316faaccqg1pth4','127.0.0.1',1520245639,'__ci_last_regenerate|i:1520245639;'),('kuncd2opdg4kf8600vm5l8lnbokp2ksn','127.0.0.1',1520245693,'__ci_last_regenerate|i:1520245693;'),('vvsjg9j5dlt11uh045kpgpa1f1dl510t','127.0.0.1',1520245718,'__ci_last_regenerate|i:1520245718;'),('poa479vluh5btrff61lejsfbpdug7vqf','127.0.0.1',1520245730,'__ci_last_regenerate|i:1520245730;'),('omaujeeh2oavu55e3qnj8h9djss7dcs6','127.0.0.1',1520245747,'__ci_last_regenerate|i:1520245747;'),('99liv4vo3qvil5i2dql0hj4id2qa0f8v','127.0.0.1',1520245780,'__ci_last_regenerate|i:1520245780;'),('6c5ndmmvp0s6t8hdl8a9igudq9j97m0k','127.0.0.1',1520245834,'__ci_last_regenerate|i:1520245834;'),('tisfoiuqeu5210ce7acfeo9cvslhcods','127.0.0.1',1520245855,'__ci_last_regenerate|i:1520245855;'),('8d5i0hmhfsdtmejh38k0sjc14i877gec','127.0.0.1',1520245873,'__ci_last_regenerate|i:1520245873;'),('lqr637hqvgtsn4cqm0se4g2rree53sqe','127.0.0.1',1520245886,'__ci_last_regenerate|i:1520245886;'),('geugldfhg971ucr9sigl8ltlodjj1qg5','127.0.0.1',1520245955,'__ci_last_regenerate|i:1520245955;'),('i2jibv2g42b9c7uhaaijmb53tsgtrlud','127.0.0.1',1520245979,'__ci_last_regenerate|i:1520245979;'),('au26erd1lasjkskjbd3sbv5hmp14q9cl','127.0.0.1',1520246011,'__ci_last_regenerate|i:1520246011;'),('i3b82aiff6foc8h33ubv1776lthkgm07','127.0.0.1',1520246193,'__ci_last_regenerate|i:1520246193;'),('4tfulqmjcilac9hcj00ile7maedolnie','127.0.0.1',1520246220,'__ci_last_regenerate|i:1520246219;'),('bnu3ipc53f62jredd536idn9q34jtnua','127.0.0.1',1520246235,'__ci_last_regenerate|i:1520246235;'),('ckrs98enj9ic9ktrce1vjbsb305uo3si','127.0.0.1',1520246252,'__ci_last_regenerate|i:1520246252;'),('nelbuaec1t1ag0uluo1iiaklbrfqgp2h','127.0.0.1',1520246274,'__ci_last_regenerate|i:1520246274;'),('h5j5utfcb7gos0sfb4v9tv0kilc929cq','127.0.0.1',1520246289,'__ci_last_regenerate|i:1520246289;'),('3q2lqlgq4klgmrktemof0iiovmc0qv9a','127.0.0.1',1520246307,'__ci_last_regenerate|i:1520246307;'),('amt1sk6aqp9jtf2l465j0pc6sou62e16','127.0.0.1',1520247322,'__ci_last_regenerate|i:1520247322;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jkdl1c9hb1be1p1p3amrj6mpo2mm7tqh','127.0.0.1',1520246633,'__ci_last_regenerate|i:1520246632;'),('j834tbaalpde8nc8ha36qlarfdkmu1qf','127.0.0.1',1520247161,'__ci_last_regenerate|i:1520247161;'),('vjrkudebega41er3qdnuinj8rlgceqf1','127.0.0.1',1520247243,'__ci_last_regenerate|i:1520247243;'),('kg32oijpouc3uojejltimai2lbadcn5f','127.0.0.1',1520247284,'__ci_last_regenerate|i:1520247284;'),('biol83ib1nr9a2e6f28qaj8h7vt04fn8','127.0.0.1',1520247288,'__ci_last_regenerate|i:1520247288;'),('nf8hcsr6fmjl37l6l83mh129sls34vf3','127.0.0.1',1520247295,'__ci_last_regenerate|i:1520247295;'),('85du2po9k8at3nbmr04d79t016ddmdlt','127.0.0.1',1520247299,'__ci_last_regenerate|i:1520247299;'),('3rfmhm86tpfec9sjup6tvs8ri5eb0t64','127.0.0.1',1520247304,'__ci_last_regenerate|i:1520247304;'),('2hpuiphbsiasejcsk1lm565hfvlavl47','127.0.0.1',1520249691,'__ci_last_regenerate|i:1520249691;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tq14omjkam7cg0k5amgjsvfiu95lkf7g','127.0.0.1',1520247357,'__ci_last_regenerate|i:1520247357;'),('f4i30n9vpktuloi6ghbjg339eumc6clg','127.0.0.1',1520249998,'__ci_last_regenerate|i:1520249998;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('b24776jnsjhlara26mpa21g1iviou412','127.0.0.1',1520249712,'__ci_last_regenerate|i:1520249712;'),('5mee4icglfjt6q82mc6hf8orjsmjjs0o','127.0.0.1',1520249983,'__ci_last_regenerate|i:1520249983;'),('avmabu622gpj971vpujcmu4kku9eplgt','127.0.0.1',1520249983,'__ci_last_regenerate|i:1520249983;'),('m5en3r5c9drbi0g723l7k19uk2vocee9','127.0.0.1',1520250449,'__ci_last_regenerate|i:1520250449;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ql8rbkgom7nou2j9u5qo9kkt6179gu0i','127.0.0.1',1520250270,'__ci_last_regenerate|i:1520250270;'),('ejmpecdro723lsrgb8ui4p44vnrv3opr','127.0.0.1',1520250301,'__ci_last_regenerate|i:1520250301;'),('giq20eahsmnqm519rd7b8it6b5fjf4ji','127.0.0.1',1520250332,'__ci_last_regenerate|i:1520250332;'),('gckkm9e8un6dlilqvoa704cnmvmn0jfd','127.0.0.1',1520250360,'__ci_last_regenerate|i:1520250360;'),('51hpphd0vkftg41btp7lfjgg5i555kef','127.0.0.1',1520250385,'__ci_last_regenerate|i:1520250385;'),('sj533gp905r2mg71jor88jlrftr1q863','127.0.0.1',1520250416,'__ci_last_regenerate|i:1520250416;'),('t32ubfh42lcld0gvjlfr0mfoge0t7e2k','127.0.0.1',1520250852,'__ci_last_regenerate|i:1520250852;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ch10ueinpmjb0rdk14irlavmnfpojch7','127.0.0.1',1520250453,'__ci_last_regenerate|i:1520250453;'),('fsrgq1514jl3mommc49ldaft36fl3c13','127.0.0.1',1520250478,'__ci_last_regenerate|i:1520250478;'),('1h17n5dabkjd3toj3etk9al14l2bg150','127.0.0.1',1520250526,'__ci_last_regenerate|i:1520250526;'),('rtfbmng4rg7ekgefej95cr61vbqo5vh5','127.0.0.1',1520250534,'__ci_last_regenerate|i:1520250534;'),('sfnlh3girpoeclcp0755aujr8290lhmt','127.0.0.1',1520250577,'__ci_last_regenerate|i:1520250577;'),('s8viijld2sc351hbka41bsfbtoou3c7g','127.0.0.1',1520250585,'__ci_last_regenerate|i:1520250585;'),('hc58e9jg3clea6nhf3k53jsv00l30sua','127.0.0.1',1520250601,'__ci_last_regenerate|i:1520250601;'),('aindi4bhsc0qqvfm5lv1gf8rvdlsb41n','127.0.0.1',1520250707,'__ci_last_regenerate|i:1520250707;'),('rd4uf8qqi42n6humocrrrev4lufm8t4c','127.0.0.1',1520250830,'__ci_last_regenerate|i:1520250830;'),('7bo0m8ash2ko8o3rnv1dud9qk5tfcjd8','127.0.0.1',1520251209,'__ci_last_regenerate|i:1520251209;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('brpc7qjg3m0dfqcdco8oarrleral8esr','127.0.0.1',1520250855,'__ci_last_regenerate|i:1520250854;'),('db4huf8u5p7qc4kl9fpmok2mq9gejj8a','127.0.0.1',1520250894,'__ci_last_regenerate|i:1520250894;'),('h4a2mbalqtl1ug3na5lnosjtp7t86c5p','127.0.0.1',1520251139,'__ci_last_regenerate|i:1520251139;'),('5ea0f9me0n7b18uogmioea06889l11ve','127.0.0.1',1520251153,'__ci_last_regenerate|i:1520251153;'),('pdh04v5dgpo6saqqvgq3gduqdamsvlbf','127.0.0.1',1520251540,'__ci_last_regenerate|i:1520251540;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('per8966e89f3hc0qrfqg7viq2fe41h1v','127.0.0.1',1520251217,'__ci_last_regenerate|i:1520251217;'),('e7kp100n90qn9mf4m9u52ts0sbaoj556','127.0.0.1',1520251268,'__ci_last_regenerate|i:1520251268;'),('u63sno5vv5jv9qh1s0h87is9u7fg46e1','127.0.0.1',1520251338,'__ci_last_regenerate|i:1520251338;'),('colbhqbnuaqbtqh3ld4vj4bm3sfq0tu0','127.0.0.1',1520251399,'__ci_last_regenerate|i:1520251399;'),('e0m8ff3katjcs55fom9cibfjputpol56','127.0.0.1',1520251448,'__ci_last_regenerate|i:1520251448;'),('88tmgt20nq461ni07tpuu8e5cr4h892c','127.0.0.1',1520251477,'__ci_last_regenerate|i:1520251477;'),('6ed42v03ort3e5u2biuu3o6vghsafoi7','127.0.0.1',1520251484,'__ci_last_regenerate|i:1520251484;'),('2hdopg0cr3im2146t8bu7tko7hk6d0ii','127.0.0.1',1520251490,'__ci_last_regenerate|i:1520251490;'),('rh0b1ad37dnuhnfk8p520qr641momd01','127.0.0.1',1520251525,'__ci_last_regenerate|i:1520251525;'),('lq7i5cnroo9jrob02ngsqqr6mvgtgl55','127.0.0.1',1520253347,'__ci_last_regenerate|i:1520253347;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4tii6lcvvds9jopg661ucp51ihdlv9ma','127.0.0.1',1520251545,'__ci_last_regenerate|i:1520251545;'),('eagbn6s9eblbkr2ihnrt2novcqam59ml','127.0.0.1',1520251574,'__ci_last_regenerate|i:1520251574;'),('6lgcmjgvfkr7fvvi87tafe6rrjnncnec','127.0.0.1',1520251585,'__ci_last_regenerate|i:1520251585;'),('tfstikeecof7joj3ifbbbd2igcr3jl97','127.0.0.1',1520251898,'__ci_last_regenerate|i:1520251897;'),('gg0026267hvj68p8gfqj59cddsmmk186','127.0.0.1',1520252000,'__ci_last_regenerate|i:1520252000;'),('v29s71etpshvmrp49o67g6dnntaur88r','127.0.0.1',1520252005,'__ci_last_regenerate|i:1520252005;'),('cq39u955ffki2it9t3io97rpnb0pgbgh','127.0.0.1',1520252076,'__ci_last_regenerate|i:1520252076;'),('mad3mq2qrg81ffe34svdq7crgiu7vuuv','127.0.0.1',1520252089,'__ci_last_regenerate|i:1520252089;'),('huj7gneqq1m61i50fr520uais3ib6al5','127.0.0.1',1520252165,'__ci_last_regenerate|i:1520252165;'),('fagopq3bgoaist1hnh89vsqt2mahc6dr','127.0.0.1',1520252203,'__ci_last_regenerate|i:1520252203;'),('8sl6k07md4o2oi0kmbqr9398936ja4lg','127.0.0.1',1520252213,'__ci_last_regenerate|i:1520252213;'),('3kn8b8k8dim777q4cri75p7oghvv1oaj','127.0.0.1',1520252310,'__ci_last_regenerate|i:1520252310;'),('j35ij1trqsjicmale2chgb7jp05b671r','127.0.0.1',1520252344,'__ci_last_regenerate|i:1520252344;'),('asf0plskiqbp518lpu5f54dkl321253p','127.0.0.1',1520252352,'__ci_last_regenerate|i:1520252352;'),('rhcgvsfkv735ol8nbdk1as2c67luu2vl','127.0.0.1',1520252357,'__ci_last_regenerate|i:1520252357;'),('hjveduruf5vtovem6gai8opa86ag0jj5','127.0.0.1',1520252366,'__ci_last_regenerate|i:1520252365;'),('impli60uvbf05q3t579mpi6d03tdd2lg','127.0.0.1',1520252389,'__ci_last_regenerate|i:1520252389;'),('2d10uh63cjsiscsrpfedo0vp58if875a','127.0.0.1',1520252392,'__ci_last_regenerate|i:1520252392;'),('03gv6l2kvirpkkpvaabqaveia7i1ir5r','127.0.0.1',1520252394,'__ci_last_regenerate|i:1520252394;'),('rcil8ccl4t6fftge3vgp12hj4p2oab8m','127.0.0.1',1520252400,'__ci_last_regenerate|i:1520252400;'),('mhaqoji491hjdt3batu8big56slg7kec','127.0.0.1',1520252404,'__ci_last_regenerate|i:1520252404;'),('c3h937c6s2j3n39ac21nljg9je87hkg2','127.0.0.1',1520252408,'__ci_last_regenerate|i:1520252408;'),('7jja386rh6tqkg4kijo1bhc2e2suuctr','127.0.0.1',1520252411,'__ci_last_regenerate|i:1520252411;'),('qreuctsofmc0bno1r8f7eab7kmujvrj5','127.0.0.1',1520252472,'__ci_last_regenerate|i:1520252472;'),('jrbcqrrd7cd8e4g7u9n71i9kinb1avhb','127.0.0.1',1520252475,'__ci_last_regenerate|i:1520252475;'),('busrvr2tcnf71qjfg92ciqmcclkv3uem','127.0.0.1',1520252485,'__ci_last_regenerate|i:1520252485;'),('mp5123c3hnfelg42kbgf2u6fnhgmh420','127.0.0.1',1520252490,'__ci_last_regenerate|i:1520252490;'),('e81bi0hkkbqk5pj4gpludk001qpc6kb8','127.0.0.1',1520252493,'__ci_last_regenerate|i:1520252493;'),('8vhv86vjl7990vehm0ku9o10almdjkvl','127.0.0.1',1520252497,'__ci_last_regenerate|i:1520252497;'),('pgr26m1lscf0tecertj339vcnmtfp5qi','127.0.0.1',1520252501,'__ci_last_regenerate|i:1520252501;'),('5hjfaff534kcfgqfvdrpj290qbcp42lh','127.0.0.1',1520252507,'__ci_last_regenerate|i:1520252507;'),('543q441p1989cagm1km371r9kigv3b5j','127.0.0.1',1520252597,'__ci_last_regenerate|i:1520252597;'),('64gmaf7mub3v9pda23bvpcvkf0ps8sit','127.0.0.1',1520252686,'__ci_last_regenerate|i:1520252686;'),('vfh9ovf3nqdf6dtsmt7o6ned11cfp9nl','127.0.0.1',1520252730,'__ci_last_regenerate|i:1520252730;'),('a0olfquqhqu138ec7ee3ehlgigcflqhl','127.0.0.1',1520252776,'__ci_last_regenerate|i:1520252776;'),('n4kl4npsi2u7nsba8533spk8d6a9s22j','127.0.0.1',1520252796,'__ci_last_regenerate|i:1520252796;'),('2f9fmng033tqbr41fish6jm4d2i32b3d','127.0.0.1',1520252820,'__ci_last_regenerate|i:1520252820;'),('kkqj7pk2toikknf75iigi3m8pjq1qeos','127.0.0.1',1520252853,'__ci_last_regenerate|i:1520252853;'),('dh8kuunevige9b6n1rl47qg3j9uv7tii','127.0.0.1',1520252891,'__ci_last_regenerate|i:1520252891;'),('4umocp2a0e55g3u4lkur7bpr4oqqe2pj','127.0.0.1',1520252903,'__ci_last_regenerate|i:1520252903;'),('ocarhe2fiu1kojkfti0ok1vulmpflr7d','127.0.0.1',1520252922,'__ci_last_regenerate|i:1520252922;'),('rm2tusolo8a5it3urb118h61nrpa3hg2','127.0.0.1',1520252954,'__ci_last_regenerate|i:1520252954;'),('hhvcm40pmh6hl7jkoep54t0906eosaui','127.0.0.1',1520253017,'__ci_last_regenerate|i:1520253017;'),('720e3mg1agu9qpvad4g76m144d2rq76f','127.0.0.1',1520253049,'__ci_last_regenerate|i:1520253049;'),('f5mkkkg3n96gjl5buln3ia6vgm4m73o8','127.0.0.1',1520253052,'__ci_last_regenerate|i:1520253052;'),('1s0m8btmfm6kdocnmd83i3003pbbcc0j','127.0.0.1',1520253058,'__ci_last_regenerate|i:1520253058;'),('b4s0he5bv3lke76vjcrqbljgpb2qcvut','127.0.0.1',1520253063,'__ci_last_regenerate|i:1520253063;'),('acatr6ihm3a87kqnl1c0rjb5fm29eu4a','127.0.0.1',1520253070,'__ci_last_regenerate|i:1520253070;'),('nnj7dakkjf4i2ofebpgecvekchlff8j2','127.0.0.1',1520253089,'__ci_last_regenerate|i:1520253089;'),('4qlgfhvsfddq6sofpmf24psf6kjko6kn','127.0.0.1',1520253094,'__ci_last_regenerate|i:1520253094;'),('tip0h9945gm3h411be6qlnl572sinr53','127.0.0.1',1520253123,'__ci_last_regenerate|i:1520253123;'),('9rt2pbs4b1qgpl9knji1uspt85foac9n','127.0.0.1',1520253129,'__ci_last_regenerate|i:1520253129;'),('508hlhd2po6j8d58qssll59ll4dsd7fm','127.0.0.1',1520253133,'__ci_last_regenerate|i:1520253133;'),('brdp5nni5fa0ophle9ksmsm3lac6l2ii','127.0.0.1',1520253139,'__ci_last_regenerate|i:1520253139;'),('mqrj1b2ghri3dbic9pk7pu7jht6l74hp','127.0.0.1',1520253142,'__ci_last_regenerate|i:1520253142;'),('d2q9e24e6hrjt9u4ffj6l38ifkjjjddg','127.0.0.1',1520253186,'__ci_last_regenerate|i:1520253186;'),('ia93ubtdur9kceuo0s18jaeoiseiiukn','127.0.0.1',1520259644,'__ci_last_regenerate|i:1520259644;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('khnq5vnicv04kp2f6qns734g1543hunk','127.0.0.1',1520253350,'__ci_last_regenerate|i:1520253350;'),('sb52qir14acqbod5t76tvd4ajlumq5kv','127.0.0.1',1520253440,'__ci_last_regenerate|i:1520253440;'),('b253l3tk81f9a029nn0keoviron50b33','127.0.0.1',1520253497,'__ci_last_regenerate|i:1520253497;'),('ciuoqu8df54cplbgnbvjrgfmrhm34vv2','127.0.0.1',1520253527,'__ci_last_regenerate|i:1520253527;'),('7rkpsp2cgvl4p1miprpbbuo7sp5pld8a','127.0.0.1',1520253560,'__ci_last_regenerate|i:1520253560;'),('22sc0oo7efj906afojn2ra13gq137cks','127.0.0.1',1520261534,'__ci_last_regenerate|i:1520261534;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('h3iiggbr35l7gi22hulp7ijt4eegta8d','127.0.0.1',1520259841,'__ci_last_regenerate|i:1520259840;'),('s1u4q23nk8t04buhvj4b1i4tru86ajpb','127.0.0.1',1520260043,'__ci_last_regenerate|i:1520260043;'),('v8r22gsmnuq0aqb7oc04sck2po795j4p','127.0.0.1',1520260169,'__ci_last_regenerate|i:1520260169;'),('9ejfmqc8c3ll4681n3v60ms9lm3dnf9m','127.0.0.1',1520260178,'__ci_last_regenerate|i:1520260178;'),('j13vt0oi9klkdcbau6t6gmm1d7nu03p8','127.0.0.1',1520260180,'__ci_last_regenerate|i:1520260180;'),('bgeua4s3eh25hicv5fn9uh7ofsgl7p3u','127.0.0.1',1520260185,'__ci_last_regenerate|i:1520260185;'),('dvfa2gggmpko84qvmen2m1ourl7tt7c0','127.0.0.1',1520260188,'__ci_last_regenerate|i:1520260188;'),('u5v89g9not4alb4co2nfg7a3qqul8qkj','127.0.0.1',1520260190,'__ci_last_regenerate|i:1520260190;'),('7gk5il63an6a9596gu5fkhhiinjo00i4','127.0.0.1',1520260192,'__ci_last_regenerate|i:1520260192;'),('qmho2oal3mcddn8e5rveev9jjktvnd35','127.0.0.1',1520260196,'__ci_last_regenerate|i:1520260196;'),('q77gmbgleanjb7u6fftfdqrtf24dslgs','127.0.0.1',1520260845,'__ci_last_regenerate|i:1520260845;'),('fldncvomp2p31lf9oeq6hbbhskmo6f52','127.0.0.1',1520261885,'__ci_last_regenerate|i:1520261885;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('undtlk4pn3p71c8cr3rh5ru8h63mqvi8','127.0.0.1',1520262398,'__ci_last_regenerate|i:1520262398;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('lvuuo4kdg5lbb2fhnik9scvl4auigi9f','127.0.0.1',1520267894,'__ci_last_regenerate|i:1520267894;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('oq05itc920a38j8atabg014scvlmg5pr','127.0.0.1',1520262433,'__ci_last_regenerate|i:1520262433;'),('5l932n90hjn3n75fgr0akp8c41j9ofkd','127.0.0.1',1520262482,'__ci_last_regenerate|i:1520262482;'),('h85jq3dgcbiiuo7qti94bu5lj5h05ngc','127.0.0.1',1520262499,'__ci_last_regenerate|i:1520262499;'),('5mdlmk014v8ti1jdjm1fon4bbsv3mbkt','127.0.0.1',1520262800,'__ci_last_regenerate|i:1520262800;'),('t8q08riirqmvthgakv9pl16jefvhuuhs','127.0.0.1',1520262934,'__ci_last_regenerate|i:1520262934;'),('sbis41bks8jjdvv2fh3v01dec10vemg4','127.0.0.1',1520262939,'__ci_last_regenerate|i:1520262939;'),('cabvan45u7nijfkmoqs0n7r2rk71f7af','127.0.0.1',1520262957,'__ci_last_regenerate|i:1520262957;'),('npv6nkncru22p033g964odblspk51t7o','127.0.0.1',1520262961,'__ci_last_regenerate|i:1520262961;'),('vqtku08sjpr04jtp6ng5jbmhoc21kttp','127.0.0.1',1520262973,'__ci_last_regenerate|i:1520262973;'),('ugv00mcas4b9tbqpf4jbqe31dcbidkbj','127.0.0.1',1520262976,'__ci_last_regenerate|i:1520262976;'),('te60o9slg1kg678c20c3hlmtoo1d04ft','127.0.0.1',1520262978,'__ci_last_regenerate|i:1520262978;'),('ml1iojofc453ffu2d5068b30nq0vfkpm','127.0.0.1',1520263048,'__ci_last_regenerate|i:1520263048;'),('ajk7spko7metin5jptubjad1vgaksrbm','127.0.0.1',1520263051,'__ci_last_regenerate|i:1520263051;'),('a95n8sjtpctdqtrjdd2755rfhd581vrg','127.0.0.1',1520263055,'__ci_last_regenerate|i:1520263055;'),('s5d7rtnho8mrm7fu6grgml958p3h18os','127.0.0.1',1520263210,'__ci_last_regenerate|i:1520263210;'),('ec4uqc2v211sd14360ocrh7bj3jehob1','127.0.0.1',1520263216,'__ci_last_regenerate|i:1520263216;'),('tf33enogg3degn7gaidvsh0k4kfg60g9','127.0.0.1',1520263219,'__ci_last_regenerate|i:1520263219;'),('6tfuif22gvllrc1hevd8v51ajtrgl4qe','127.0.0.1',1520263223,'__ci_last_regenerate|i:1520263223;'),('ae250k7l05p8aqvf1dh90813u8d753qe','127.0.0.1',1520263245,'__ci_last_regenerate|i:1520263245;'),('gtpap401kki2pubcfh4lmsnbk6mq4pfe','127.0.0.1',1520263251,'__ci_last_regenerate|i:1520263251;'),('8veo00gh09p940cdvnbf3ik7rn9o523o','127.0.0.1',1520263257,'__ci_last_regenerate|i:1520263257;'),('89p9jaoufokl0p0lb1itkn9rqt905h3d','127.0.0.1',1520263308,'__ci_last_regenerate|i:1520263308;'),('0tfqh031pa6d8hl29d3ff9uqc25ovoa4','127.0.0.1',1520263315,'__ci_last_regenerate|i:1520263315;'),('0osp3uph98dnm0q23ke0sgj09btrqngp','127.0.0.1',1520263355,'__ci_last_regenerate|i:1520263355;'),('5vqge36a9tplpnc2e9q36dpgstjf09fr','127.0.0.1',1520263371,'__ci_last_regenerate|i:1520263371;'),('090hh3oc36ffabo0o1tj9h0d217r93mg','127.0.0.1',1520263385,'__ci_last_regenerate|i:1520263385;'),('qctppili8uip0s95mf3a31c179lppaf4','127.0.0.1',1520263448,'__ci_last_regenerate|i:1520263448;'),('bitfu6vgl2d89mn15o068dqkql7bb4tu','127.0.0.1',1520263497,'__ci_last_regenerate|i:1520263497;'),('sdsctk6cr8r7dbcvmm73c0bdcvvp543k','127.0.0.1',1520263606,'__ci_last_regenerate|i:1520263606;'),('0j42jotrom4bs6pl0ogictca3hk4dsb1','127.0.0.1',1520263625,'__ci_last_regenerate|i:1520263624;'),('dq2vkqifp5mf7ldj8g29v7onlfl39bpd','127.0.0.1',1520263673,'__ci_last_regenerate|i:1520263672;'),('6op01j0jm4asg5281qpsvs1hebrkal2q','127.0.0.1',1520263697,'__ci_last_regenerate|i:1520263697;'),('8p65fkatijomj7mk1h1ia81btjlqs46p','127.0.0.1',1520263747,'__ci_last_regenerate|i:1520263747;'),('vm9g4e80n9ej9idc3hdq1smhslegupq0','127.0.0.1',1520263783,'__ci_last_regenerate|i:1520263783;'),('k8ajikhf9goidq0fettl3co5hb8emlu4','127.0.0.1',1520263785,'__ci_last_regenerate|i:1520263785;'),('mped0guoitaij6471ar0gubiaum3mldg','127.0.0.1',1520264182,'__ci_last_regenerate|i:1520264182;'),('lcn4a435adljf1iur989f229j75fdeaf','127.0.0.1',1520264422,'__ci_last_regenerate|i:1520264422;'),('2nor4g4d3lj5qqa9gsdau9r6k684c99u','127.0.0.1',1520264439,'__ci_last_regenerate|i:1520264439;'),('kradv9rc25efbt4ererfq93lrmhnqucd','127.0.0.1',1520264455,'__ci_last_regenerate|i:1520264455;'),('2l3hc6j2e5r1gqo45nt505tt95dfnfua','127.0.0.1',1520264465,'__ci_last_regenerate|i:1520264465;'),('jb0n82pnpr7nle6ggq91e5b6da53ecah','127.0.0.1',1520264501,'__ci_last_regenerate|i:1520264501;'),('v2buhvfov3s0cflq25o2ha2g49kc4eus','127.0.0.1',1520264511,'__ci_last_regenerate|i:1520264511;'),('ooll97nk0ghnej85ngd2mc9b0rhrcef9','127.0.0.1',1520264534,'__ci_last_regenerate|i:1520264534;'),('0m1na6vb3lbekkjrcae8mq86dedimdvt','127.0.0.1',1520264589,'__ci_last_regenerate|i:1520264589;'),('dl97h4v3ns4b6gftj35n4a4ordarc77k','127.0.0.1',1520264596,'__ci_last_regenerate|i:1520264596;'),('6d8j6j7bnpf1ecliktvnmdmha6ancp0d','127.0.0.1',1520264610,'__ci_last_regenerate|i:1520264610;'),('u767dfjp5plvb8g9tr8l7a53vakbfhkn','127.0.0.1',1520264667,'__ci_last_regenerate|i:1520264667;'),('voo6rd1aqdvu9vq92ipoj8bagnja30u0','127.0.0.1',1520264672,'__ci_last_regenerate|i:1520264672;'),('ruq164mtv70u6l7kb3e9fkmf4drnv5ej','127.0.0.1',1520264696,'__ci_last_regenerate|i:1520264696;'),('grvd62vjo4fmi9qelnvi4an80r99m3o1','127.0.0.1',1520264701,'__ci_last_regenerate|i:1520264701;'),('shros58hvr2mfj34g4440ohvu4d9ldgp','127.0.0.1',1520264706,'__ci_last_regenerate|i:1520264706;'),('qm01a5ocp2fc94ruc0ur9jnfjkuc740i','127.0.0.1',1520264911,'__ci_last_regenerate|i:1520264911;'),('s0ojp35lecr4rtr484ndm7vjaco958bd','127.0.0.1',1520264914,'__ci_last_regenerate|i:1520264914;'),('m69j1ngbtb4cmr2v89geqlundogg6qp7','127.0.0.1',1520265040,'__ci_last_regenerate|i:1520265039;'),('8u51pjuuf8oq3duo4k9a7lqf91126s7v','127.0.0.1',1520265045,'__ci_last_regenerate|i:1520265045;'),('gjbhest2cfo8llqivu0n7o19m6sfc3jh','127.0.0.1',1520265128,'__ci_last_regenerate|i:1520265128;'),('i2gkccnqbqcnpppe2c5ukgn5s0v62dht','127.0.0.1',1520265203,'__ci_last_regenerate|i:1520265203;'),('h9sl6v3404a0a1fcg2ddrc1ohrah7904','127.0.0.1',1520265271,'__ci_last_regenerate|i:1520265271;'),('n01fkri06m51tr68m9j36flbijlue4up','127.0.0.1',1520265368,'__ci_last_regenerate|i:1520265368;'),('vbvnfjrc7qdnevbl24824suhdqpreeet','127.0.0.1',1520265377,'__ci_last_regenerate|i:1520265377;'),('sqipb8d7phrlm46917rm95olgi880otq','127.0.0.1',1520265382,'__ci_last_regenerate|i:1520265382;'),('jv9qsq5r13rh264bchq8k5cq6q9spa8c','127.0.0.1',1520266873,'__ci_last_regenerate|i:1520266873;'),('jctdl3f384nl71laosiu3rgiar8jest7','127.0.0.1',1520266890,'__ci_last_regenerate|i:1520266890;'),('5d5f96njb3hemf04u7tr0muura00hpbm','127.0.0.1',1520268255,'__ci_last_regenerate|i:1520268255;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('9b5c7v9lqddktkkcpv2pnccfdqit0b9d','127.0.0.1',1520268979,'__ci_last_regenerate|i:1520268979;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3bhb6lmvdrn1vg4mqr0ncqbildtnvinh','127.0.0.1',1520272221,'__ci_last_regenerate|i:1520272221;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('4s60o8aibss63onrnggcp2mh963grst7','127.0.0.1',1520269077,'__ci_last_regenerate|i:1520269077;'),('tbfk4u7bqsopctfui0oo1ht8d7ln4ueb','127.0.0.1',1520269164,'__ci_last_regenerate|i:1520269164;'),('l79rrmto9f64303hmaa659tqss0hvt7n','127.0.0.1',1520269329,'__ci_last_regenerate|i:1520269328;'),('3e6ihiglnk9anea4r238e4isobh45cpr','127.0.0.1',1520269356,'__ci_last_regenerate|i:1520269356;'),('tb4fn5cjlt0tlm0q7l8pqnc7i6ojq17m','127.0.0.1',1520269434,'__ci_last_regenerate|i:1520269434;'),('n30bf0og1rl162cvb7bvin1dag9qka69','127.0.0.1',1520269494,'__ci_last_regenerate|i:1520269494;'),('jgpv46me3j0521j71eo67gd9k2bjkblv','127.0.0.1',1520269666,'__ci_last_regenerate|i:1520269666;'),('fkubp41peat2tiptrrcq4g5vubdsjqdo','127.0.0.1',1520269770,'__ci_last_regenerate|i:1520269770;session_id|N;'),('ak0iovje4rg903gk1m4qd431136ej891','127.0.0.1',1520269896,'__ci_last_regenerate|i:1520269896;session_id|N;'),('jbg7069g08096830qqbk6t8778gfn8cn','127.0.0.1',1520269966,'__ci_last_regenerate|i:1520269966;session_id|N;'),('53pkhuui2jcb5t2ku43e6247paua2hve','127.0.0.1',1520270082,'__ci_last_regenerate|i:1520270082;session_id|N;'),('2rhv83fff8lgffje7ih6pp4b6be2dm8i','127.0.0.1',1520270119,'__ci_last_regenerate|i:1520270119;session_id|N;'),('blfd2r5ce24u8kle6o158k345hu3v97n','127.0.0.1',1520270136,'__ci_last_regenerate|i:1520270136;session_id|s:3:\"111\";'),('afigekovc616a07hd15qaoluu4dc2391','127.0.0.1',1520270199,'__ci_last_regenerate|i:1520270199;session_id|s:32:\"3bhb6lmvdrn1vg4mqr0ncqbildtnvinh\";'),('glf3fas644cqgjmssr5nhocnoksvic17','127.0.0.1',1520270238,'__ci_last_regenerate|i:1520270238;echelon|a:1:{s:10:\"session_id\";s:32:\"3bhb6lmvdrn1vg4mqr0ncqbildtnvinh\";}'),('m0qripd8jdcgd16ukgioqgraeguc6ku9','127.0.0.1',1520270273,'__ci_last_regenerate|i:1520270273;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('r15k1su56ak6u5jdbvl78hsafsgjvq57','127.0.0.1',1520270334,'__ci_last_regenerate|i:1520270334;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('6sv65o6cd0va6idlnpansapvft0atnc5','127.0.0.1',1520270375,'__ci_last_regenerate|i:1520270375;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('akclqjknbhs76djhjd96h80ge4onak0m','127.0.0.1',1520270444,'__ci_last_regenerate|i:1520270444;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('hs8v63c78jl8tun130dlj4jp48b2e9ln','127.0.0.1',1520270459,'__ci_last_regenerate|i:1520270459;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('79bhfot6ihl7r8dqrd8rfl2kne73m7ti','127.0.0.1',1520270479,'__ci_last_regenerate|i:1520270479;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('tanooka7jsm0vqi8g4kdq1sh8ougseh8','127.0.0.1',1520270944,'__ci_last_regenerate|i:1520270944;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('t4a1cvgjefl5g4ncub8if7isaf6b25lm','127.0.0.1',1520270950,'__ci_last_regenerate|i:1520270950;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('4qaujiqsbhjb3lb67do7cvh8a5qd2cce','127.0.0.1',1520271258,'__ci_last_regenerate|i:1520271258;'),('c1rpkuvnslqq1js9h2l9vucv40qvojf6','127.0.0.1',1520271299,'__ci_last_regenerate|i:1520271299;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('h0n3u3569cu2qh3aitf6dd87egcs87lq','127.0.0.1',1520271457,'__ci_last_regenerate|i:1520271457;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('t02gtfchjqmgboknlh05cf9780j744d2','127.0.0.1',1520271491,'__ci_last_regenerate|i:1520271491;'),('ppan4np3p8thqu80d5qp1cvp0cb3fbcs','127.0.0.1',1520271518,'__ci_last_regenerate|i:1520271518;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('04n9aq988dkfmdqbuf9uhc82cr2um7dv','127.0.0.1',1520271546,'__ci_last_regenerate|i:1520271546;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('sc9pqbm488vkurk8k46iaeubke0v8h5v','127.0.0.1',1520271719,'__ci_last_regenerate|i:1520271719;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('6f9m5j1sdi7rbb1l1hd7i3e1vhs5du3a','127.0.0.1',1520271751,'__ci_last_regenerate|i:1520271751;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('ud07kgsiq9fpose40sl5otfkjl93hpcv','127.0.0.1',1520271767,'__ci_last_regenerate|i:1520271767;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('gavkgd1e5r7hi8at85bj1r7hislu0gqn','127.0.0.1',1520271795,'__ci_last_regenerate|i:1520271795;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('4b3mbh7lf2lba1i4ajhtqphfie3ds7pd','127.0.0.1',1520271833,'__ci_last_regenerate|i:1520271833;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('k0u2p7pjvhf82i7glghsdic2vah1g1d7','127.0.0.1',1520271843,'__ci_last_regenerate|i:1520271843;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('4cvkro6lq70hpnjtdr8rtat3e4tpon37','127.0.0.1',1520271878,'__ci_last_regenerate|i:1520271878;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('gcufd0fp9b5jm7ufstjbi7tvlkt541jr','127.0.0.1',1520271900,'__ci_last_regenerate|i:1520271900;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('ffr0jehiifr4g4cscuvoq7jq4thd3ihh','127.0.0.1',1520271943,'__ci_last_regenerate|i:1520271943;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('u9epk6ih8ine7261ksgnc8c6upgathmr','127.0.0.1',1520271960,'__ci_last_regenerate|i:1520271960;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('2523itgmbquhsev37f7rbqe81hgiguke','127.0.0.1',1520271972,'__ci_last_regenerate|i:1520271972;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('emq5nh81e0lm2su9rmkkma9cobff2g3b','127.0.0.1',1520271978,'__ci_last_regenerate|i:1520271978;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('pmaigmvvo2ft1fc0ehdfkjf71lu8p8iv','127.0.0.1',1520271981,'__ci_last_regenerate|i:1520271981;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('cb3dhqehpu8bc3njks1s9n3u49qt3c4n','127.0.0.1',1520271984,'__ci_last_regenerate|i:1520271984;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('5dk8rlckf006num8g44tr2jcg1ohe5b9','127.0.0.1',1520272029,'__ci_last_regenerate|i:1520272029;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('j4en8v5iamgr974j1dmjknf8p8ukvu55','127.0.0.1',1520272043,'__ci_last_regenerate|i:1520272043;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('m6bfo2kbaq2acnalltnhrj3kvvg53sor','127.0.0.1',1520272066,'__ci_last_regenerate|i:1520272066;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('pm5j7o8tdnallncgav5q745m30ce4oq7','127.0.0.1',1520272176,'__ci_last_regenerate|i:1520272176;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('rtt40rek8kgm38bmuslhgfgoobq5a21f','127.0.0.1',1520272185,'__ci_last_regenerate|i:1520272185;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('n366rn6d8h7589nq9v48i70d75tolhee','127.0.0.1',1520272198,'__ci_last_regenerate|i:1520272197;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('erj6jch72i4b0ouon0f9omfino32798p','127.0.0.1',1520272217,'__ci_last_regenerate|i:1520272217;|a:0:{}3bhb6lmvdrn1vg4mqr0ncqbildtnvinh|a:0:{}'),('i2tdro119rdu3acg57bm02ngau7sg932','127.0.0.1',1520275209,'__ci_last_regenerate|i:1520275209;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('k3pkg0ki74plh8inelkhc7hnntqrge4p','127.0.0.1',1520272237,'__ci_last_regenerate|i:1520272237;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('fbtlnmdtocn9auubfg5leu1v8ejssdqs','127.0.0.1',1520272247,'__ci_last_regenerate|i:1520272247;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('51o5q04294tomsr12d0hvv7g3fb1ck7j','127.0.0.1',1520272252,'__ci_last_regenerate|i:1520272252;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('e0peuemt7nu2nj9eav7p4ttbcvaiibfc','127.0.0.1',1520272259,'__ci_last_regenerate|i:1520272259;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('gnnsgstdkrc1hj75t2mranvja6f3ns7s','127.0.0.1',1520272298,'__ci_last_regenerate|i:1520272298;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('qml7r9ngitp09navq6d8fh9dn4mqufnr','127.0.0.1',1520272397,'__ci_last_regenerate|i:1520272397;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('s7knqda0ph7f70avo49kri1mrh6ea1bp','127.0.0.1',1520272416,'__ci_last_regenerate|i:1520272416;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('tev53k1nel004mv27bl6f935ad4lcfb8','127.0.0.1',1520272434,'__ci_last_regenerate|i:1520272434;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('9qlsvn0q6n34lt7gsef1q1sl05hin2l1','127.0.0.1',1520272441,'__ci_last_regenerate|i:1520272441;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('c09hbjv4d8u66g8rptg6rnqvp7t8q3dd','127.0.0.1',1520272448,'__ci_last_regenerate|i:1520272448;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('02okjv1k33lbvmt7ooodccshdqtnqe51','127.0.0.1',1520272452,'__ci_last_regenerate|i:1520272452;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('uf3kqa82os5vi9ceukrc89chi29nelk9','127.0.0.1',1520272481,'__ci_last_regenerate|i:1520272481;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('hu6r4qtq69u9o4pit7p59f20msh389np','127.0.0.1',1520274744,'__ci_last_regenerate|i:1520274744;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('2mvu979blhlef40v5o2sl4nbh9n2efsc','127.0.0.1',1520275005,'__ci_last_regenerate|i:1520275005;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('ca4h3b071g67lmpbka15sh7slpt5o7u6','127.0.0.1',1520275090,'__ci_last_regenerate|i:1520275090;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('vd1ohiulo145njtguqufv8qa1qp8o02v','127.0.0.1',1520275095,'__ci_last_regenerate|i:1520275095;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('6sgm4culhvf04vomnaea8cnup0j0o4m4','127.0.0.1',1520275113,'__ci_last_regenerate|i:1520275113;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('cf773ouo1cen2ogeca210h7h0p9j4dke','127.0.0.1',1520275127,'__ci_last_regenerate|i:1520275127;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('72059em990jrosgriag8p2afcam8in3r','127.0.0.1',1520275179,'__ci_last_regenerate|i:1520275179;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('rf82g8v5qjf0fdqknvhvnl8lmrthmufl','127.0.0.1',1520275182,'__ci_last_regenerate|i:1520275182;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('hugksdcpmmts3opf0nkv4ps9ai60f5dh','127.0.0.1',1520275185,'__ci_last_regenerate|i:1520275185;|a:0:{}i2tdro119rdu3acg57bm02ngau7sg932|a:0:{}'),('2ek08j5lm12lg3jbfko810btu6vpbti3','127.0.0.1',1520275998,'__ci_last_regenerate|i:1520275998;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('s4njbqs5diq4947qurekbojstd7ioe81','127.0.0.1',1520275223,'__ci_last_regenerate|i:1520275223;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('o2d53obqha9qlt2mopcqrkaktqr2bur6','127.0.0.1',1520275228,'__ci_last_regenerate|i:1520275228;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('60suromo92h00fj7tk4k5hde8n6kdkpm','127.0.0.1',1520275238,'__ci_last_regenerate|i:1520275238;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('ijl9v8omtvobvcvmftk2msk8pu9q08aa','127.0.0.1',1520275461,'__ci_last_regenerate|i:1520275461;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('gj2d8ln7f4d0t8pck50fi4h8pi64td0o','127.0.0.1',1520275466,'__ci_last_regenerate|i:1520275466;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('k8ub1a20n7ek6pne0u82m3qd2dhemd49','127.0.0.1',1520275472,'__ci_last_regenerate|i:1520275472;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('o9jts1ic4m6j1midsqsmgcsipgbcgi1d','127.0.0.1',1520275479,'__ci_last_regenerate|i:1520275479;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('b794hbbm5sgul017ja7gibdbe2i0mu9k','127.0.0.1',1520275640,'__ci_last_regenerate|i:1520275640;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('betrik87n8jqpcbkf573irf31i68lc6e','127.0.0.1',1520275649,'__ci_last_regenerate|i:1520275649;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('fmt4sbnc9b6nn2g75j54hfge778p9stl','127.0.0.1',1520275653,'__ci_last_regenerate|i:1520275653;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('mhnojoi2hrbhf8qgdi71fh12ut7qf67g','127.0.0.1',1520275664,'__ci_last_regenerate|i:1520275664;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('vgt2esj50kb39t0otnia5suibjvlkep4','127.0.0.1',1520275671,'__ci_last_regenerate|i:1520275671;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('v5jj2gu1a7797i42vvl8dbrgi20ebceg','127.0.0.1',1520275677,'__ci_last_regenerate|i:1520275677;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('en47hhtisgd6gpjmrcdogro68tdjl4bv','127.0.0.1',1520275802,'__ci_last_regenerate|i:1520275802;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}parameters|a:0:{}'),('h33plqlbr9hlfjpv5ee784hsbeid5r0a','127.0.0.1',1520275810,'__ci_last_regenerate|i:1520275810;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('2h8rp2t058lq6shm9ubcddfpc3gb7pod','127.0.0.1',1520275880,'__ci_last_regenerate|i:1520275880;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('8cd4ph58bpo35mcqd1l0mu4cjipc2f82','127.0.0.1',1520275898,'__ci_last_regenerate|i:1520275898;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('phb8v6k9lvarapj54bmnhhng8ve7ke1h','127.0.0.1',1520275903,'__ci_last_regenerate|i:1520275903;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}parameters|a:0:{}'),('rnibklfvh51m3t9d9ggtcbr3jv0bu4al','127.0.0.1',1520275910,'__ci_last_regenerate|i:1520275910;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}parameters|a:0:{}'),('rf21qno8oaf8uf4rlt1u1iui2dtrqil9','127.0.0.1',1520275947,'__ci_last_regenerate|i:1520275947;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}'),('8ipgacb2b2pa82oehrpee56eeeb018hh','127.0.0.1',1520275951,'__ci_last_regenerate|i:1520275951;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}parameters|a:0:{}'),('hecfup4q0895iig6ealn5g22n85c90d5','127.0.0.1',1520275956,'__ci_last_regenerate|i:1520275956;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}parameters|a:0:{}'),('344d40uqbhu29qs91fkg3mo296qgkpe0','127.0.0.1',1520275962,'__ci_last_regenerate|i:1520275962;|a:0:{}2ek08j5lm12lg3jbfko810btu6vpbti3|a:0:{}parameters|a:0:{}'),('5dgc68lkvjj8t9vangtqhd1pjle16561','127.0.0.1',1520287623,'__ci_last_regenerate|i:1520287623;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('c4f9mslqtdv2tihp5i7gu6sv90pd7qq8','127.0.0.1',1520276023,'__ci_last_regenerate|i:1520276023;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}parameters|a:0:{}'),('meh8ledc6ls9fv3ba0m50gh0l0ulfo2l','127.0.0.1',1520276029,'__ci_last_regenerate|i:1520276029;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('531h8v5n6cti5r5240q3mi25fba85lrg','127.0.0.1',1520276038,'__ci_last_regenerate|i:1520276038;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}parameters|a:0:{}'),('l2ugloani90l0cls92u9eo7f035mpk90','127.0.0.1',1520276047,'__ci_last_regenerate|i:1520276047;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}parameters|a:0:{}'),('s6djbjqeeqm00283bv09hf8branhpumu','127.0.0.1',1520276052,'__ci_last_regenerate|i:1520276052;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}parameters|a:0:{}'),('b1t8mt0fpdn662v4siaqppo50bqpknei','127.0.0.1',1520276068,'__ci_last_regenerate|i:1520276068;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}'),('q1b5hl6ct480mhhfuer64o70bulgsv5o','127.0.0.1',1520276073,'__ci_last_regenerate|i:1520276073;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}'),('9k9g7nbrmu16dfgsrbjmiib8d4ra1t9q','127.0.0.1',1520276087,'__ci_last_regenerate|i:1520276087;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}'),('60439vhclt0057bj6400q07a6lk3btjq','127.0.0.1',1520276097,'__ci_last_regenerate|i:1520276097;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}'),('31qt92n7ekv41b14f5l8ar7dau68qsi0','127.0.0.1',1520276104,'__ci_last_regenerate|i:1520276104;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}'),('9borpdgqbi2she7ntvrnotavuks6u6u8','127.0.0.1',1520279664,'__ci_last_regenerate|i:1520279664;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}parameters|a:0:{}'),('9v6qlfbm2bb9dvmh11fvjoda7q7h4l8c','127.0.0.1',1520280909,'__ci_last_regenerate|i:1520280909;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}'),('b4f88qmttv14sf38mudmrb8qm1ugl5hs','127.0.0.1',1520280921,'__ci_last_regenerate|i:1520280921;|a:0:{}5dgc68lkvjj8t9vangtqhd1pjle16561|a:0:{}'),('jqu4otmdhkf99lgn955hscrldb2a6lhn','127.0.0.1',1520287623,'__ci_last_regenerate|i:1520287623;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ic7qugkrl4ou9guhf76mdtglgqjdt334','127.0.0.1',1520321236,'__ci_last_regenerate|i:1520321236;'),('743pntc83r84r5dmvpsm59mvmqfvsv2h','127.0.0.1',1520321542,'__ci_last_regenerate|i:1520321542;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('khjs9la1mlvt3g25urcuus4n5po3bag6','127.0.0.1',1520322284,'__ci_last_regenerate|i:1520322284;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('clhdoi1o78j8ujlh8jajbm6pnd11sk0v','127.0.0.1',1520321577,'__ci_last_regenerate|i:1520321577;'),('9q0jc8kpa7ekj9gad6qnvijggidd83cc','127.0.0.1',1520321577,'__ci_last_regenerate|i:1520321577;|a:0:{}khjs9la1mlvt3g25urcuus4n5po3bag6|a:0:{}parameters|a:0:{}'),('jdr1uj3gp3fstjfd4m867m5uiv3jd1q5','127.0.0.1',1520321618,'__ci_last_regenerate|i:1520321618;|a:0:{}khjs9la1mlvt3g25urcuus4n5po3bag6|a:0:{}parameters|a:0:{}'),('t5f2gd5iopnbd9l8p9ov3igtgo2aq4h4','127.0.0.1',1520322644,'__ci_last_regenerate|i:1520322644;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('rmao0n4k903qbjro7d70u723og51659i','127.0.0.1',1520322288,'__ci_last_regenerate|i:1520322288;|a:0:{}t5f2gd5iopnbd9l8p9ov3igtgo2aq4h4|a:0:{}parameters|a:0:{}'),('49snr1oms77dkbigs8qpelbrmetm036s','127.0.0.1',1520322293,'__ci_last_regenerate|i:1520322293;|a:0:{}t5f2gd5iopnbd9l8p9ov3igtgo2aq4h4|a:0:{}'),('qf4fguglcna7mm3fjhevgurl9j7rt2am','127.0.0.1',1520322372,'__ci_last_regenerate|i:1520322372;|a:0:{}t5f2gd5iopnbd9l8p9ov3igtgo2aq4h4|a:0:{}'),('2bc31mt986ou6cg07k1ih8p19prtjpv9','127.0.0.1',1520322399,'__ci_last_regenerate|i:1520322399;|a:0:{}t5f2gd5iopnbd9l8p9ov3igtgo2aq4h4|a:0:{}'),('mihsvu9dvifk5lmsobsmb38cj5okhhi1','127.0.0.1',1520322405,'__ci_last_regenerate|i:1520322405;|a:0:{}t5f2gd5iopnbd9l8p9ov3igtgo2aq4h4|a:0:{}parameters|a:0:{}'),('rs3go7j6ju696f1p5grcnn9va0ttc88b','127.0.0.1',1520322635,'__ci_last_regenerate|i:1520322635;|a:0:{}t5f2gd5iopnbd9l8p9ov3igtgo2aq4h4|a:0:{}'),('d1gcq20a19m3mfomn0pbp4e4s833l08h','127.0.0.1',1520323978,'__ci_last_regenerate|i:1520323978;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jrvpspaael23c2e1rrpsrp9g9tbfbf2m','127.0.0.1',1520322663,'__ci_last_regenerate|i:1520322663;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('7a20cv3vhemda13egl1i61m3f7gsrsfe','127.0.0.1',1520322803,'__ci_last_regenerate|i:1520322802;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('5s0arf8s5q2u12ttj9fqkq4jcqrms9a9','127.0.0.1',1520323012,'__ci_last_regenerate|i:1520323012;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('llh0smftrr89c7ujn7v7sno44h7jf08b','127.0.0.1',1520323037,'__ci_last_regenerate|i:1520323037;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('682m4tb47hpr1a2j242ed1n5fgueeusf','127.0.0.1',1520323143,'__ci_last_regenerate|i:1520323143;'),('tvke7t2gffjqiinpq7a135759n79qk59','127.0.0.1',1520323159,'__ci_last_regenerate|i:1520323159;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('o2sc7vueb9ciu4i6rdlstn1ma1voqhap','127.0.0.1',1520323183,'__ci_last_regenerate|i:1520323183;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('9ma0qqs125bvrf2vls0sc8jk229t3lbq','127.0.0.1',1520323251,'__ci_last_regenerate|i:1520323251;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('37ksnrdofchahuu0trkhef2rhff58d3s','127.0.0.1',1520323272,'__ci_last_regenerate|i:1520323272;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('7mgg93o06kfur7sm6g7e0m0bqemtmj5n','127.0.0.1',1520323287,'__ci_last_regenerate|i:1520323287;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('116ept64vbqlkm82trqlijosldud3c29','127.0.0.1',1520323333,'__ci_last_regenerate|i:1520323333;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('v8i03h8tqcaqtccgk56qrea0c4ediesb','127.0.0.1',1520323418,'__ci_last_regenerate|i:1520323418;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('l6j9p3h99icpmpt7urtbj8j9d6iooolh','127.0.0.1',1520323445,'__ci_last_regenerate|i:1520323445;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('2m2sq53tbch1dti935uqeb5ur99i1fr9','127.0.0.1',1520323481,'__ci_last_regenerate|i:1520323481;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('gd4c0ckvvhhidaonte73ombb0818dj79','127.0.0.1',1520323505,'__ci_last_regenerate|i:1520323505;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('odcmr2f67491s7nt8ldrb0ggr7f4u5dt','127.0.0.1',1520323524,'__ci_last_regenerate|i:1520323524;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('psem8ggv0td5n276gfmqqo749eeb0e6q','127.0.0.1',1520323575,'__ci_last_regenerate|i:1520323575;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('pfssub59uc1nqh1n200oflb7eouf05ve','127.0.0.1',1520323620,'__ci_last_regenerate|i:1520323620;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('h1gsil0mlir9vbttb1ok03iu2uo27ji7','127.0.0.1',1520323922,'__ci_last_regenerate|i:1520323922;|a:0:{}d1gcq20a19m3mfomn0pbp4e4s833l08h|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('e9hkiceb67d2ou5i9o3q7g06g7kkjrmj','127.0.0.1',1520327311,'__ci_last_regenerate|i:1520327311;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('l0rhlajkmk2vfggcfv9ibr9kmt3oj51j','127.0.0.1',1520324082,'__ci_last_regenerate|i:1520324082;|a:0:{}e9hkiceb67d2ou5i9o3q7g06g7kkjrmj|a:0:{}parameters|a:0:{}'),('so6bbv0qnbvjqae1dse4pdu2s7ombuvt','127.0.0.1',1520326771,'__ci_last_regenerate|i:1520326771;|a:0:{}e9hkiceb67d2ou5i9o3q7g06g7kkjrmj|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('728richlvpnh639r50tncq4e0akqhmes','127.0.0.1',1520326824,'__ci_last_regenerate|i:1520326824;|a:0:{}e9hkiceb67d2ou5i9o3q7g06g7kkjrmj|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('srkrsu3g2ljsmplo7ki3ghoo4v54srmp','127.0.0.1',1520326849,'__ci_last_regenerate|i:1520326849;|a:0:{}e9hkiceb67d2ou5i9o3q7g06g7kkjrmj|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('m7abbae2caiflaf4sdoui97v8fj3u9oh','127.0.0.1',1520326852,'__ci_last_regenerate|i:1520326852;|a:0:{}e9hkiceb67d2ou5i9o3q7g06g7kkjrmj|a:0:{}parameters|a:0:{}'),('sm7nee4qj19i9huk42vds4lp6qvb8v2q','127.0.0.1',1520326891,'__ci_last_regenerate|i:1520326891;|a:0:{}e9hkiceb67d2ou5i9o3q7g06g7kkjrmj|a:0:{}parameters|a:0:{}'),('70jtk1rrcffvf0re4hdc7fd4oidgp3ic','127.0.0.1',1520326967,'__ci_last_regenerate|i:1520326967;|a:0:{}e9hkiceb67d2ou5i9o3q7g06g7kkjrmj|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('idk84s0361ftps8rrj4h5uu26sro0fml','127.0.0.1',1520328251,'__ci_last_regenerate|i:1520328251;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('kbc9mr4cm9g52p32coe2fuv61lp01tjr','127.0.0.1',1520327603,'__ci_last_regenerate|i:1520327603;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('gkg6l8c3tovcf7lg1o8jn737obg7hkkl','127.0.0.1',1520327624,'__ci_last_regenerate|i:1520327624;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('r5gjmn05bq4k26jg46umj065nhq9espr','127.0.0.1',1520327650,'__ci_last_regenerate|i:1520327650;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('aqm6a4ogphef6qu678gfi3107d0afv45','127.0.0.1',1520327678,'__ci_last_regenerate|i:1520327678;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('ac2ca7vfbk5li89j06adjl9ol8948por','127.0.0.1',1520328160,'__ci_last_regenerate|i:1520328160;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('iserepkpueal28ai2ea4of6ivet7movp','127.0.0.1',1520328185,'__ci_last_regenerate|i:1520328185;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('3he5bda94iphq62s1cgoj3pi1pv4oeln','127.0.0.1',1520328192,'__ci_last_regenerate|i:1520328192;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:0:{}'),('qhdefum6olt6s8l4uegf2shtibgdob9l','127.0.0.1',1520328216,'__ci_last_regenerate|i:1520328216;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:0:{}'),('gndu9b8og5nnd7o0oabgsf3edbknott2','127.0.0.1',1520328235,'__ci_last_regenerate|i:1520328235;|a:0:{}idk84s0361ftps8rrj4h5uu26sro0fml|a:0:{}parameters|a:0:{}'),('go3k41m9tmknp86edd2ip092hh0k58fm','127.0.0.1',1520328574,'__ci_last_regenerate|i:1520328574;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3me38hi9tohljum51iumiipt7vtouf70','127.0.0.1',1520328266,'__ci_last_regenerate|i:1520328266;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('n1pjfrjvtq2n6pl73ibeqddvcjvigq8o','127.0.0.1',1520328270,'__ci_last_regenerate|i:1520328270;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}'),('tge5u9o5b2ajthgulo1cf4qqorbgpogd','127.0.0.1',1520328272,'__ci_last_regenerate|i:1520328272;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('moopcb57e9mfkes57qj9mlrcj1tad54i','127.0.0.1',1520328279,'__ci_last_regenerate|i:1520328279;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('852nrisb63emlsiqnil5gegsv8jjidvs','127.0.0.1',1520328303,'__ci_last_regenerate|i:1520328303;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('eiqrsotafb6n2droh9ip6i73e2n4g6n5','127.0.0.1',1520328346,'__ci_last_regenerate|i:1520328346;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('l8mramdkam1tb9fpf79dsn5od5lf59gk','127.0.0.1',1520328351,'__ci_last_regenerate|i:1520328351;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('kkgr983a9jer73q27lbve03htig0kt3u','127.0.0.1',1520328353,'__ci_last_regenerate|i:1520328353;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('1r0ck9aeclgnt7ndb7dufo9c0th6o43b','127.0.0.1',1520328358,'__ci_last_regenerate|i:1520328358;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('ogjjnqnmodocakllll78lg9fdqs809kq','127.0.0.1',1520328442,'__ci_last_regenerate|i:1520328442;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('imj3b0k1eq7mko3e6rsr6ohbf1dl9d6n','127.0.0.1',1520328446,'__ci_last_regenerate|i:1520328446;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('mn49p5f7k66on02qjuk5606f6de5v44v','127.0.0.1',1520328456,'__ci_last_regenerate|i:1520328456;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('oaf9dd7uona3hh2cni5a0hv3am2cd61v','127.0.0.1',1520328458,'__ci_last_regenerate|i:1520328458;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('g0ghhacskps40svgtqvudec6476o1o0t','127.0.0.1',1520328463,'__ci_last_regenerate|i:1520328463;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('l8btugpnaj2i0b4qj19p2k9gu0ks6scq','127.0.0.1',1520328467,'__ci_last_regenerate|i:1520328467;|a:0:{}go3k41m9tmknp86edd2ip092hh0k58fm|a:0:{}parameters|a:0:{}'),('07md3fs0dl6t6qp810hrpbq0m871dnlq','127.0.0.1',1520328967,'__ci_last_regenerate|i:1520328967;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('o3l1urpv95nutbtvbkk2e4m38mouobla','127.0.0.1',1520328673,'__ci_last_regenerate|i:1520328673;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('4sdsvqjgkg86nm8a1qc1uqs2g7vc00o7','127.0.0.1',1520328680,'__ci_last_regenerate|i:1520328680;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('019nv9jcca3qvvpnvohqapq3s3sd1a38','127.0.0.1',1520328685,'__ci_last_regenerate|i:1520328685;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('k5lr2bvg562uppbited7ot7k9p8an25t','127.0.0.1',1520328690,'__ci_last_regenerate|i:1520328690;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('vi42r3mvr91br38chvu9ab0ej43812j2','127.0.0.1',1520328695,'__ci_last_regenerate|i:1520328695;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('802v7vnvlg30tcmm3otcdbgne2pblmjg','127.0.0.1',1520328736,'__ci_last_regenerate|i:1520328736;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('ate8q3nbihi5frsa2trlc6rv08jf98v5','127.0.0.1',1520328738,'__ci_last_regenerate|i:1520328738;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('5pu0hsi8j4v4ji6klq9m9p0q20sdkon4','127.0.0.1',1520328763,'__ci_last_regenerate|i:1520328763;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('jut6f3m7i3r2395cme9bp44tnqv8960i','127.0.0.1',1520328861,'__ci_last_regenerate|i:1520328861;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('0ah85dnul8ho4uq2joh93h185mtb7arl','127.0.0.1',1520328865,'__ci_last_regenerate|i:1520328865;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('2tc2etc4uhpr6mjm53koas4gbiudrjhk','127.0.0.1',1520328868,'__ci_last_regenerate|i:1520328868;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('gekri4bkufo5no7lv8n25fo94etmrpt1','127.0.0.1',1520328870,'__ci_last_regenerate|i:1520328870;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('rmrc4f18t8qm52cik63s5go5c84hioqj','127.0.0.1',1520328873,'__ci_last_regenerate|i:1520328873;|a:0:{}07md3fs0dl6t6qp810hrpbq0m871dnlq|a:0:{}parameters|a:0:{}'),('4eeo4nmeb2jr313b2anc0ii9mkvauvrr','127.0.0.1',1520329532,'__ci_last_regenerate|i:1520329532;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('vjnk2eabm57udq0hn56tsaamdb1mbdvb','127.0.0.1',1520328989,'__ci_last_regenerate|i:1520328989;|a:0:{}4eeo4nmeb2jr313b2anc0ii9mkvauvrr|a:0:{}parameters|a:0:{}'),('gv0pd9uic90dl2p1dqhfgeuetsogdk3e','127.0.0.1',1520328992,'__ci_last_regenerate|i:1520328992;|a:0:{}4eeo4nmeb2jr313b2anc0ii9mkvauvrr|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('q38g6hvi1l0fs8m6qal39qri9m00vroj','127.0.0.1',1520328999,'__ci_last_regenerate|i:1520328999;|a:0:{}4eeo4nmeb2jr313b2anc0ii9mkvauvrr|a:0:{}parameters|a:0:{}'),('if70aqp2nhr6c82ae9pbhi3g07d813iq','127.0.0.1',1520329002,'__ci_last_regenerate|i:1520329002;|a:0:{}4eeo4nmeb2jr313b2anc0ii9mkvauvrr|a:0:{}parameters|a:0:{}'),('c76rmcs2r4gihmnlcgrggv3bd86vppud','127.0.0.1',1520330833,'__ci_last_regenerate|i:1520330833;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3q9caqqjq2orct1quh359sn77frsi107','127.0.0.1',1520329677,'__ci_last_regenerate|i:1520329677;'),('k8pmllea5v1743mrjhnp1ijhqp0v12to','127.0.0.1',1520329677,'__ci_last_regenerate|i:1520329677;'),('7psm7qr32eoplkf65t9kuchulc8a7bin','127.0.0.1',1520332648,'__ci_last_regenerate|i:1520332648;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ea57etu83l5qk9guc8lfi0bud4ngp56v','127.0.0.1',1520330913,'__ci_last_regenerate|i:1520330913;|a:0:{}7psm7qr32eoplkf65t9kuchulc8a7bin|a:0:{}parameters|a:0:{}'),('shcvhjglqqrq6qdirm0a6k4te93d4tp6','127.0.0.1',1520330918,'__ci_last_regenerate|i:1520330918;|a:0:{}7psm7qr32eoplkf65t9kuchulc8a7bin|a:0:{}parameters|a:0:{}'),('0tdp1vvuf3bask1ng2i8rftm9olndifv','127.0.0.1',1520334405,'__ci_last_regenerate|i:1520334405;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('2tdnngpngpcvedgvru5ug214cu11lfok','127.0.0.1',1520332652,'__ci_last_regenerate|i:1520332652;|a:0:{}0tdp1vvuf3bask1ng2i8rftm9olndifv|a:0:{}parameters|a:0:{}'),('1fjjcr4e2vhn3iccetd7g91g9lebvgi6','127.0.0.1',1520332687,'__ci_last_regenerate|i:1520332687;|a:0:{}0tdp1vvuf3bask1ng2i8rftm9olndifv|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('5qr4dtfq2ifu7f7dggov5eg6la458ong','127.0.0.1',1520332729,'__ci_last_regenerate|i:1520332729;|a:0:{}0tdp1vvuf3bask1ng2i8rftm9olndifv|a:0:{}parameters|a:0:{}'),('smh4udmdq5a7aq2vfhir8p28aclvflmm','127.0.0.1',1520332764,'__ci_last_regenerate|i:1520332764;|a:0:{}0tdp1vvuf3bask1ng2i8rftm9olndifv|a:0:{}parameters|a:0:{}'),('g78i9odrhiel0va5neted8ctsk6l92s5','127.0.0.1',1520332787,'__ci_last_regenerate|i:1520332787;|a:0:{}0tdp1vvuf3bask1ng2i8rftm9olndifv|a:0:{}parameters|a:0:{}'),('c5ag0dq30qlpndupr0dodj51jd6g8nps','127.0.0.1',1520338429,'__ci_last_regenerate|i:1520338428;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('rs2glbuk2a2ba3q349hg83dqu6torahb','127.0.0.1',1520334408,'__ci_last_regenerate|i:1520334408;|a:0:{}c5ag0dq30qlpndupr0dodj51jd6g8nps|a:0:{}parameters|a:0:{}'),('c9s9mr65nln3ghujt2g4020999rjookm','127.0.0.1',1520334413,'__ci_last_regenerate|i:1520334413;|a:0:{}c5ag0dq30qlpndupr0dodj51jd6g8nps|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('52lj5fgr3pg6p1vlbe96s9iicg1f4nqj','127.0.0.1',1520334423,'__ci_last_regenerate|i:1520334423;|a:0:{}c5ag0dq30qlpndupr0dodj51jd6g8nps|a:0:{}parameters|a:0:{}'),('25sjmqrfi9dv0g7rr9sa2f64gnbkbbbi','127.0.0.1',1520334484,'__ci_last_regenerate|i:1520334484;|a:0:{}c5ag0dq30qlpndupr0dodj51jd6g8nps|a:0:{}parameters|a:0:{}'),('0hnb955t48gjpulmfiq76s30kp3j15lt','127.0.0.1',1520334529,'__ci_last_regenerate|i:1520334529;|a:0:{}c5ag0dq30qlpndupr0dodj51jd6g8nps|a:0:{}parameters|a:0:{}'),('lqrvfs1tvrt9e09536ucfr0b3t4nslp0','127.0.0.1',1520338444,'__ci_last_regenerate|i:1520338443;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}parameters|a:0:{}'),('968ceb7mda7j09bf69enae3lakllma1o','127.0.0.1',1520338449,'__ci_last_regenerate|i:1520338449;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}parameters|a:0:{}'),('duc8rmlusmahjk388aapqmvrcqr5ck3b','127.0.0.1',1520338479,'__ci_last_regenerate|i:1520338479;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}parameters|a:0:{}'),('fko8u2rk0frg8s7gnilplb1qor670mma','127.0.0.1',1520338482,'__ci_last_regenerate|i:1520338482;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}'),('sbgs96mqnffm8oloabutk6mjj1rif7rr','127.0.0.1',1520338486,'__ci_last_regenerate|i:1520338486;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}'),('80j8gbohvp0kb4l35au055k3gleetihs','127.0.0.1',1520338496,'__ci_last_regenerate|i:1520338496;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('lfov8on8e9js6gej519cso03lhneecd9','127.0.0.1',1520338506,'__ci_last_regenerate|i:1520338506;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}parameters|a:0:{}'),('bt0dgvilb20ii7bed8d730vfo5daad13','127.0.0.1',1520338515,'__ci_last_regenerate|i:1520338515;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}parameters|a:0:{}'),('9uanp4f54mjlo55j3eebn1ilrj6h0r0m','127.0.0.1',1520338519,'__ci_last_regenerate|i:1520338519;|a:0:{}g5e2src2q3efti31af6mv5v662g69eq5|a:0:{}parameters|a:0:{}'),('evo8ahnk8q966aoba9v2imt44c7dohkd','127.0.0.1',1520338583,'__ci_last_regenerate|i:1520338583;'),('4mp1gilvoun5dn7ngqpdbobmj5lkc3un','127.0.0.1',1520338868,'__ci_last_regenerate|i:1520338868;'),('bktmm3n1ar0eg9b74ldod4394k3oq1iq','127.0.0.1',1520401068,'__ci_last_regenerate|i:1520401068;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3ero5smau4p5rqbhmpjvfu878mqfamn0','127.0.0.1',1520400846,'__ci_last_regenerate|i:1520400846;|a:0:{}bktmm3n1ar0eg9b74ldod4394k3oq1iq|a:0:{}parameters|a:0:{}'),('lg9pjl6ctukcb7jtisur4j7uphacgg3i','127.0.0.1',1520400850,'__ci_last_regenerate|i:1520400850;|a:0:{}bktmm3n1ar0eg9b74ldod4394k3oq1iq|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('75ng4f1dnk17035pp8212m02eko0p8h5','127.0.0.1',1520400874,'__ci_last_regenerate|i:1520400874;|a:0:{}bktmm3n1ar0eg9b74ldod4394k3oq1iq|a:0:{}parameters|a:0:{}'),('fjndcjcc2o5e6j6uh02qq69it9v8htd4','127.0.0.1',1520400958,'__ci_last_regenerate|i:1520400958;|a:0:{}bktmm3n1ar0eg9b74ldod4394k3oq1iq|a:0:{}parameters|a:0:{}'),('sd2fegq9pm8o8d4rgqmgg4bupgubda52','127.0.0.1',1520414744,'__ci_last_regenerate|i:1520414744;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('121uj76bmniq1ve6q5iadn4s8525m7bc','127.0.0.1',1520420852,'__ci_last_regenerate|i:1520420852;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('d5ro4acl1o334qprm0m6k42cu4ojq93a','127.0.0.1',1520414835,'__ci_last_regenerate|i:1520414835;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('jb461qik46b7qqgv2odp6p3fanei7r23','127.0.0.1',1520414838,'__ci_last_regenerate|i:1520414838;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('unjfdmr7ml9rl5p81prks3407qk965kg','127.0.0.1',1520414847,'__ci_last_regenerate|i:1520414847;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:1:{s:5:\"drink\";s:6:\"coffee\";}'),('jk41sp6q53pkrru965n75v876bjajp70','127.0.0.1',1520414853,'__ci_last_regenerate|i:1520414853;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('ngflgdn0i2ff0hf1o6if718mn3gdbici','127.0.0.1',1520415522,'__ci_last_regenerate|i:1520415522;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('bs1g8jspela8m8ssro832mlojbgm443l','127.0.0.1',1520415548,'__ci_last_regenerate|i:1520415548;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('rtstk9jggeuv9kje6r3u6iov834hiojm','127.0.0.1',1520416059,'__ci_last_regenerate|i:1520416059;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('9d6o5hnit6877g7ffqkefieeaibdacrj','127.0.0.1',1520416184,'__ci_last_regenerate|i:1520416184;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('ac0kd8a0m03pvitcf7gn0hht5fnne9h7','127.0.0.1',1520416206,'__ci_last_regenerate|i:1520416206;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('utacj62ucfp5kdrtjoc6aaqrp4hm7jmq','127.0.0.1',1520417512,'__ci_last_regenerate|i:1520417512;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('28u8fi5dimp3corh7rgt5fu92g105pd8','127.0.0.1',1520417566,'__ci_last_regenerate|i:1520417566;|a:0:{}121uj76bmniq1ve6q5iadn4s8525m7bc|a:0:{}parameters|a:0:{}'),('rtubgjo0irfh25h24doc449iuffma446','127.0.0.1',1520426266,'__ci_last_regenerate|i:1520426266;'),('ht7f7lqq82r7b568ptls2ttfpkrorbis','127.0.0.1',1520426662,'__ci_last_regenerate|i:1520426662;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('oe133mqf7ttcm712v9db38t2l059krah','127.0.0.1',1520426669,'__ci_last_regenerate|i:1520426662;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('0ombni9kmmtmgu7303b9cocicvv4i08g','127.0.0.1',1520426669,'__ci_last_regenerate|i:1520426669;|a:0:{}oe133mqf7ttcm712v9db38t2l059krah|a:0:{}parameters|a:0:{}'),('rddttmud530us6kthr0uihkohvb69i0l','127.0.0.1',1520496623,'__ci_last_regenerate|i:1520496623;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ejq6r63097mq5olbqoi7pg8u0olorasc','127.0.0.1',1520488455,'__ci_last_regenerate|i:1520488455;|a:0:{}rddttmud530us6kthr0uihkohvb69i0l|a:0:{}parameters|a:0:{}'),('timvktq4sfvjduf5qon15fprlbr75156','127.0.0.1',1520488539,'__ci_last_regenerate|i:1520488539;|a:0:{}rddttmud530us6kthr0uihkohvb69i0l|a:0:{}'),('9g8179alua1p0keljq09b66i8d9fd7rt','127.0.0.1',1520488550,'__ci_last_regenerate|i:1520488550;|a:0:{}rddttmud530us6kthr0uihkohvb69i0l|a:0:{}'),('b6ui2227062j248s4r6lvqh5fqtp2f8n','127.0.0.1',1520488570,'__ci_last_regenerate|i:1520488570;|a:0:{}rddttmud530us6kthr0uihkohvb69i0l|a:0:{}'),('gii5krjk9hg66rkbiefedm1656pr4806','127.0.0.1',1520493763,'__ci_last_regenerate|i:1520493763;'),('v3u58i7f9c97ddfcb9lbder1e8hhjpco','127.0.0.1',1520494932,'__ci_last_regenerate|i:1520494932;'),('c0qas98b3jueoqae3fn6gic761t6848b','127.0.0.1',1520494961,'__ci_last_regenerate|i:1520494961;'),('sqodsiuooa5o12h04eh0f63mfncnjg0p','127.0.0.1',1520494991,'__ci_last_regenerate|i:1520494990;'),('oq1rbsm4tvju3q7brkra6fk5ol9cpmqa','127.0.0.1',1520495186,'__ci_last_regenerate|i:1520495186;'),('r9qhvtdn3v2qeovo2s16dm47ff3plq6n','127.0.0.1',1520495199,'__ci_last_regenerate|i:1520495199;'),('0l70rlmjl12d7ddttqdn09u1mn8mjpk0','127.0.0.1',1520495207,'__ci_last_regenerate|i:1520495207;'),('dgu6qsm6b62mvsur49do1tklqptp8vdt','127.0.0.1',1520495291,'__ci_last_regenerate|i:1520495291;'),('vccgper1cfqg6q613b7f46ndkck4ucog','127.0.0.1',1520495322,'__ci_last_regenerate|i:1520495322;'),('d2k2l5p7vun7doi3fqpa5kd7km9ujl08','127.0.0.1',1520495406,'__ci_last_regenerate|i:1520495406;'),('7d7o30jjn00jlimbmfgd1ipvmmtnhet4','127.0.0.1',1520495436,'__ci_last_regenerate|i:1520495436;'),('ae1vjeu31is7ai20l2bvr9g1434hsvo3','127.0.0.1',1520495450,'__ci_last_regenerate|i:1520495450;'),('8otspkdnsk9q1d2iquuk2r9vqnjl4qcd','127.0.0.1',1520495480,'__ci_last_regenerate|i:1520495480;'),('q6126hc00h11mq3t3q6ci564p838rpip','127.0.0.1',1520495511,'__ci_last_regenerate|i:1520495511;'),('jq4140qa9536knitfhai9pn4dobcocmn','127.0.0.1',1520495545,'__ci_last_regenerate|i:1520495545;'),('nh0gs42qr5ua8j1urgmcs0v4scr60thv','127.0.0.1',1520495554,'__ci_last_regenerate|i:1520495554;'),('pupbncfqcnid06bcqj4hfqtpem81rnq5','127.0.0.1',1520495579,'__ci_last_regenerate|i:1520495579;'),('amgevt5o69vut6s7ke1t9n95b2vvlscv','127.0.0.1',1520495620,'__ci_last_regenerate|i:1520495620;'),('da60vmr2g2h6l9p3d8np319lnbv09788','127.0.0.1',1520495917,'__ci_last_regenerate|i:1520495917;'),('lqnqj0h0pi1l9blbavevtpqfgbrcs2dr','127.0.0.1',1520495940,'__ci_last_regenerate|i:1520495940;'),('gq4t10q85beid43mk6phf6g45reeq6vs','127.0.0.1',1520495986,'__ci_last_regenerate|i:1520495986;'),('ifugf1ai4jg7g08gl8lf2f60llfe9e15','127.0.0.1',1520495999,'__ci_last_regenerate|i:1520495999;'),('0d2lj6l6kcf1dnpevice3d33ho3j4om7','127.0.0.1',1520496012,'__ci_last_regenerate|i:1520496012;'),('d9ujo6h40vq6u218tsbg204dlodkg743','127.0.0.1',1520496023,'__ci_last_regenerate|i:1520496023;'),('aurlthd8ucm65b4tiaetce16511gdl2d','127.0.0.1',1520496038,'__ci_last_regenerate|i:1520496038;'),('91748m7ep4ei79s0po5nj445dia3jo2u','127.0.0.1',1520496041,'__ci_last_regenerate|i:1520496041;'),('odloc5begdqj2daf8e0qj816u5lu145k','127.0.0.1',1520496055,'__ci_last_regenerate|i:1520496055;'),('h06n98hru7pfjfkinki6dm334nftjbsr','127.0.0.1',1520496065,'__ci_last_regenerate|i:1520496065;'),('7tme2um6j14kul3gqtlcc0abpig4f9qd','127.0.0.1',1520496112,'__ci_last_regenerate|i:1520496112;'),('3qg59hrl6cq7shccbo716oti8kr80he9','127.0.0.1',1520496137,'__ci_last_regenerate|i:1520496137;'),('ubekudpipjfes62eshaopbveq16p1ar3','127.0.0.1',1520496498,'__ci_last_regenerate|i:1520496498;'),('oqri7gd2fj5vkv1fn0i83eohovbrtu35','127.0.0.1',1520496510,'__ci_last_regenerate|i:1520496510;'),('l6rqemamu5hful3rq9mq3tt3ura8alf3','127.0.0.1',1520496512,'__ci_last_regenerate|i:1520496512;'),('9rr3jjmdboc1vvnfdaa0c8i2t95ihtps','127.0.0.1',1520496549,'__ci_last_regenerate|i:1520496549;'),('rp6lfdovhisrmmm2u4fsp6f6ietoe6qh','127.0.0.1',1520496551,'__ci_last_regenerate|i:1520496551;'),('nnpb3r2492c28msvqusstekiph5qblsh','127.0.0.1',1520496977,'__ci_last_regenerate|i:1520496977;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('uncceh31e75128n97spkl4627lq1g6uo','127.0.0.1',1520502585,'__ci_last_regenerate|i:1520502585;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('s8cnufa1rinmha1rlec4te3jn6pektdq','127.0.0.1',1520496984,'__ci_last_regenerate|i:1520496984;'),('c9rlh9qqc135gffko8rje73eu78tpvn6','127.0.0.1',1520497391,'__ci_last_regenerate|i:1520497391;'),('0174e00ircbnfpia0oqasn1smgvdqm53','127.0.0.1',1520497394,'__ci_last_regenerate|i:1520497394;'),('q8a24d3u63od8jskond73ftau1ca5bl5','127.0.0.1',1520501485,'__ci_last_regenerate|i:1520501484;'),('p6hplg1i8f0ihj9h5auqktil7fbtunbq','127.0.0.1',1520501546,'__ci_last_regenerate|i:1520501546;'),('j3bij3uj6t0uvtldhlrjh698g57if1ro','127.0.0.1',1520501567,'__ci_last_regenerate|i:1520501567;'),('pof822a58rn4fosm48rpgbtmo0gonsa4','127.0.0.1',1520501576,'__ci_last_regenerate|i:1520501576;'),('5c2tv7o68b79jft0dgp08adap7g933ls','127.0.0.1',1520501595,'__ci_last_regenerate|i:1520501595;'),('rv5qppf4mcm7slncihd5kfcp94igrlvg','127.0.0.1',1520501611,'__ci_last_regenerate|i:1520501611;'),('06t40f745uh0fnaqtqj24gsvm3lqfrnn','127.0.0.1',1520501648,'__ci_last_regenerate|i:1520501648;'),('a6lsp60j82etqv4qhqitag11nhb3c6n4','127.0.0.1',1520501790,'__ci_last_regenerate|i:1520501790;'),('o92j1gj2e2e90pb1cqc7l18bpj7p83lo','127.0.0.1',1520501819,'__ci_last_regenerate|i:1520501819;'),('eafp73s7u8opmqfpva17t3snocs3fffj','127.0.0.1',1520501837,'__ci_last_regenerate|i:1520501837;'),('tdq77olg4dsbf0s7dtuhs9tsb1cra0pj','127.0.0.1',1520501846,'__ci_last_regenerate|i:1520501846;'),('nvmj4055n3bbgk5q0nkdm2vpm09h50sg','127.0.0.1',1520501881,'__ci_last_regenerate|i:1520501881;'),('7cedfvltg4t59n5a7kp61k9jr8lile9v','127.0.0.1',1520501897,'__ci_last_regenerate|i:1520501897;'),('95kic4320hvthktrbmeh8viimesrjabl','127.0.0.1',1520501950,'__ci_last_regenerate|i:1520501950;'),('fplf4fmbjbao6mhlojhbpcj77d84ku7n','127.0.0.1',1520501961,'__ci_last_regenerate|i:1520501961;'),('9jf25qekhcct00dgv5q137iptqo268qf','127.0.0.1',1520502033,'__ci_last_regenerate|i:1520502033;'),('gcgtumoqr8ovgdu46g086gvr4edk16cs','127.0.0.1',1520502119,'__ci_last_regenerate|i:1520502119;'),('5gldpmik31ao5cpk6v8usqoi9jq81mgl','127.0.0.1',1520502178,'__ci_last_regenerate|i:1520502178;'),('0afbfl1dg9d2hkq7s5g5f54faa6cpabe','127.0.0.1',1520502209,'__ci_last_regenerate|i:1520502209;'),('8d5e06q1uplbhg34hp17d0ootvtr22a9','127.0.0.1',1520502246,'__ci_last_regenerate|i:1520502246;'),('9p2s3q54v6pm7bg62glcad5bb05c6fmc','127.0.0.1',1520502299,'__ci_last_regenerate|i:1520502299;'),('s8qfp7md9cqo43nf7q67sr2hcktvahlj','127.0.0.1',1520502309,'__ci_last_regenerate|i:1520502309;'),('8r5r9eub7nr4kpcg8q7fn4vn2i9d85dg','127.0.0.1',1520502332,'__ci_last_regenerate|i:1520502332;'),('58bmnl0k2je2da5duqs1fb08a8qat7pp','127.0.0.1',1520502342,'__ci_last_regenerate|i:1520502342;'),('fp3ht6uohvlcj0r6ju0ak2sauv669dh3','127.0.0.1',1520502395,'__ci_last_regenerate|i:1520502395;'),('1f35qsqb7ao0338s0kb0sjdb3pbnjuhh','127.0.0.1',1520502410,'__ci_last_regenerate|i:1520502410;'),('fcbie74nsn1cpeodm2abhm40od5dor4b','127.0.0.1',1520502453,'__ci_last_regenerate|i:1520502453;'),('haqal69r58676iua0n4j9t1lggj2jos5','127.0.0.1',1520502490,'__ci_last_regenerate|i:1520502490;'),('kcf18kntt0rv0crb2fh1027oh3u479a1','127.0.0.1',1520502533,'__ci_last_regenerate|i:1520502533;'),('ulgea9ucq31779fgn6tsjnpvcjlbnsps','127.0.0.1',1520502551,'__ci_last_regenerate|i:1520502550;'),('mfviq94mjm3en476slsg7q2843d07fdi','127.0.0.1',1520502566,'__ci_last_regenerate|i:1520502566;'),('cc7dku6rmuqj79lnvn64oro29a7pjti4','127.0.0.1',1520502810,'__ci_last_regenerate|i:1520502625;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('32sa6dr0nio189qm95bjpssv0inthki2','127.0.0.1',1520503255,'__ci_last_regenerate|i:1520503255;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('omh7illaccebpl8r7pn335tc2sfprcre','127.0.0.1',1520502875,'__ci_last_regenerate|i:1520502875;'),('lgeq7bmgmcfj7ina4jqredi8lgcknqvq','127.0.0.1',1520502896,'__ci_last_regenerate|i:1520502896;'),('7qntel6q608t4d598l5mgc79o1v5vh1a','127.0.0.1',1520502936,'__ci_last_regenerate|i:1520502936;'),('pfpgi7ebr5gvg09d0h5ognpehiseuno6','127.0.0.1',1520503031,'__ci_last_regenerate|i:1520503031;'),('14kqtin067oj8pm08t6dqph30hm98mt9','127.0.0.1',1520505570,'__ci_last_regenerate|i:1520505570;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('iltegpimthl999e8lrpe5agav25bqsm3','127.0.0.1',1520503281,'__ci_last_regenerate|i:1520503280;'),('nleoptugbcjcd8edaor6a3vho4t5d842','127.0.0.1',1520503516,'__ci_last_regenerate|i:1520503516;'),('ju62lj98kepkb1raa0d2mfn8hq3e8tao','127.0.0.1',1520503522,'__ci_last_regenerate|i:1520503522;'),('npsokom1q9eivnjldsof1r12s6jp2eh5','127.0.0.1',1520503531,'__ci_last_regenerate|i:1520503531;'),('usgl15vfu3ssvu6ritl3fi6n0bqa6ic5','127.0.0.1',1520503560,'__ci_last_regenerate|i:1520503559;'),('27dip3c6hhiho53l6ium4q02t6gak0hr','127.0.0.1',1520503577,'__ci_last_regenerate|i:1520503576;'),('d290uqpahu58tmdqdom92uhq5jcu3bi7','127.0.0.1',1520503587,'__ci_last_regenerate|i:1520503587;'),('fb2402cbt9b7ut9saf92jbuqpfuk4cvh','127.0.0.1',1520503599,'__ci_last_regenerate|i:1520503599;'),('u856ul8ohol7fnek1kb6224htco2a1eb','127.0.0.1',1520503613,'__ci_last_regenerate|i:1520503613;'),('0kgv55fppivuucqr5ifj5j0vionvspus','127.0.0.1',1520503666,'__ci_last_regenerate|i:1520503666;'),('phjjqd0ihn9epre9s1v930pepqnida1v','127.0.0.1',1520503693,'__ci_last_regenerate|i:1520503693;'),('8cpahopcan954e9epabdi41lt5ismjaj','127.0.0.1',1520503697,'__ci_last_regenerate|i:1520503697;'),('lecslku9qvou2ick1jhca6erp2dg1qlv','127.0.0.1',1520503721,'__ci_last_regenerate|i:1520503721;'),('ea7oi7k92g3bioqgp3bj2biio8t0ihrm','127.0.0.1',1520503734,'__ci_last_regenerate|i:1520503734;'),('qh4klbko6r0je20luk1q2aklmle72h9g','127.0.0.1',1520503752,'__ci_last_regenerate|i:1520503752;'),('4t6jsp80f6v0ge92qn5dl0dvpjoei2lf','127.0.0.1',1520503773,'__ci_last_regenerate|i:1520503773;'),('43uaodogpgb2fhil3so7lgatoc7k5kdf','127.0.0.1',1520503855,'__ci_last_regenerate|i:1520503855;'),('lm6qvgj9un4mgfsl7gefi1k2jkbke698','127.0.0.1',1520503910,'__ci_last_regenerate|i:1520503910;'),('e98gkmensdsb2ko4815tbkkvhnsdj7fb','127.0.0.1',1520503922,'__ci_last_regenerate|i:1520503922;'),('jvhc6tamd9rss6824mbd9bbfioosq0gl','127.0.0.1',1520504018,'__ci_last_regenerate|i:1520504018;'),('hfi1thd2rgf1ou7dne04iucms3v57lob','127.0.0.1',1520504034,'__ci_last_regenerate|i:1520504034;'),('qap8f1unu4h23040gfpq0h4m6kqrj89n','127.0.0.1',1520504066,'__ci_last_regenerate|i:1520504066;'),('ln1u4lsrgjoe1vfvo1e336hr85kk0671','127.0.0.1',1520504087,'__ci_last_regenerate|i:1520504087;'),('4crfn02dtaooogp54g06f6kdr1s1994c','127.0.0.1',1520504123,'__ci_last_regenerate|i:1520504123;'),('q9skqs17as9n94j4mei12h6dsalplg4k','127.0.0.1',1520504156,'__ci_last_regenerate|i:1520504156;'),('s9hp0c466cqc5jlhr0mf4a8mabijhbin','127.0.0.1',1520504228,'__ci_last_regenerate|i:1520504228;'),('tmfa31diib0quqccie7n6p0bue66l7g0','127.0.0.1',1520504249,'__ci_last_regenerate|i:1520504249;'),('rtnv3l9fjbsk2fl462fhfpfrqoupulm6','127.0.0.1',1520504281,'__ci_last_regenerate|i:1520504281;'),('qdkg4jn10disrhnk09bg8uufn6o1v0b2','127.0.0.1',1520504327,'__ci_last_regenerate|i:1520504327;'),('g8ff5eakb5qjv9jhfg2k6jdquafjj7na','127.0.0.1',1520504363,'__ci_last_regenerate|i:1520504363;'),('0rjvvndtd1eagm94po4026oaml65f0gt','127.0.0.1',1520504386,'__ci_last_regenerate|i:1520504386;'),('v082qcf1lhinskm6posriadt0ov59aam','127.0.0.1',1520504422,'__ci_last_regenerate|i:1520504422;'),('6d7214kquiqlmnj3c3mb3eobqgb4k5vp','127.0.0.1',1520504451,'__ci_last_regenerate|i:1520504451;'),('p06d5bt39mkoe27vi3r6fdm3afk5o4od','127.0.0.1',1520504461,'__ci_last_regenerate|i:1520504461;'),('7hsgj2co6bdbg4j7teo2l2eai8flo53d','127.0.0.1',1520504494,'__ci_last_regenerate|i:1520504494;'),('psc5srnhprkr5d9tp7l982rkbb9be3sh','127.0.0.1',1520504505,'__ci_last_regenerate|i:1520504505;'),('6qev4i3heb15ubfo8equmb4ac8l8scim','127.0.0.1',1520504559,'__ci_last_regenerate|i:1520504559;'),('8697vqn6tu6pt66hi0r39itin848tboc','127.0.0.1',1520504619,'__ci_last_regenerate|i:1520504619;'),('6ldal7v395dl1e5dfn5fg021okn9odqo','127.0.0.1',1520504666,'__ci_last_regenerate|i:1520504666;'),('dpaeob9rb0ndmq77s3laob9nb5t4nq2q','127.0.0.1',1520504669,'__ci_last_regenerate|i:1520504669;'),('f36k6jnrgjas1jb6rehd3cusn4kksq5h','127.0.0.1',1520504728,'__ci_last_regenerate|i:1520504728;'),('vubv74vtqfug3t3dust9fopltg744gik','127.0.0.1',1520504780,'__ci_last_regenerate|i:1520504779;'),('3jr44adg2qtmjgfinmn8smbolup5i1gh','127.0.0.1',1520504807,'__ci_last_regenerate|i:1520504807;'),('vispui9dm43jheorop2eteh3nog1rht9','127.0.0.1',1520504819,'__ci_last_regenerate|i:1520504819;'),('vlsvhvt6of8nja0s086voqge3bvtggt3','127.0.0.1',1520504843,'__ci_last_regenerate|i:1520504843;'),('ilf56s3k489d1qvpcisnfn4mtfnv9jmg','127.0.0.1',1520504920,'__ci_last_regenerate|i:1520504920;'),('2cd6qthn6d2ug7sa6vn7bdn10edkqegp','127.0.0.1',1520504949,'__ci_last_regenerate|i:1520504949;'),('e1imrm0qsv7i4jk528pd25kiiuphh7m4','127.0.0.1',1520505043,'__ci_last_regenerate|i:1520505043;'),('vn9duf58nj34bl0s1kskrf9e3j6727ng','127.0.0.1',1520505146,'__ci_last_regenerate|i:1520505146;'),('6jq56u3qo8p2eb56vga93ir0pp6m242r','127.0.0.1',1520505154,'__ci_last_regenerate|i:1520505154;'),('lmonu3ab9idora3tli01rv0ip34rj0oc','127.0.0.1',1520505170,'__ci_last_regenerate|i:1520505170;'),('hi6j728rhf1d7gnu3dhql9p2vlbbnful','127.0.0.1',1520505202,'__ci_last_regenerate|i:1520505202;'),('ba5vlu1mpc3k619jjnet3mr0ab2spdgk','127.0.0.1',1520505234,'__ci_last_regenerate|i:1520505234;'),('36483rh777o2ga2b23apmrul72fumalc','127.0.0.1',1520505242,'__ci_last_regenerate|i:1520505242;'),('65btnielmamnjr88sfmo06hu89ds9dl2','127.0.0.1',1520505263,'__ci_last_regenerate|i:1520505263;'),('pqkfe5d17dmqt8171556gd0bg02r56ot','127.0.0.1',1520505272,'__ci_last_regenerate|i:1520505272;'),('o74pj4641ncv7praejvn5o2ef4ntf3fe','127.0.0.1',1520505308,'__ci_last_regenerate|i:1520505308;'),('6615bkcr1hcvodsjrqhvjeuokd1pdoce','127.0.0.1',1520505361,'__ci_last_regenerate|i:1520505361;'),('jolv5rc74nevnjbb4bsc9lu7qo00v9dr','127.0.0.1',1520505369,'__ci_last_regenerate|i:1520505369;'),('gui4gohva27l0q2ef7p2kfljshp4s8j2','127.0.0.1',1520505557,'__ci_last_regenerate|i:1520505557;'),('vkn4uch9e18484v8mas40unk7hse50kg','127.0.0.1',1520506357,'__ci_last_regenerate|i:1520506357;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3ru2tfbaai9stngp3uq9sflopktum5qt','127.0.0.1',1520505820,'__ci_last_regenerate|i:1520505820;'),('2q2bsuu8fqive5skoklquj0b0bb26ele','127.0.0.1',1520505850,'__ci_last_regenerate|i:1520505850;'),('r5ca3mrrr1fr7199g9ccv83joee576ha','127.0.0.1',1520505898,'__ci_last_regenerate|i:1520505898;'),('vkdo16i9s0p3hkf4q4hjc9qrncace6v2','127.0.0.1',1520505912,'__ci_last_regenerate|i:1520505912;'),('ruquag7f4agao5mgb4nlra85e5b5nrtr','127.0.0.1',1520506036,'__ci_last_regenerate|i:1520506036;'),('3urvqrv327bm7t23b94739u0aii5i301','127.0.0.1',1520506070,'__ci_last_regenerate|i:1520506070;'),('op1ltcfonj5dh0iegs2pu1c0ar0hh2ta','127.0.0.1',1520506143,'__ci_last_regenerate|i:1520506143;'),('knilgll1t9m954dnd42ccohod5esnhjv','127.0.0.1',1520506258,'__ci_last_regenerate|i:1520506258;'),('nsrcrd7clb19kh7khvdiaqqqaio9p7h3','127.0.0.1',1520506319,'__ci_last_regenerate|i:1520506319;'),('4r52upt6t5uo5qt76nlhrd80qhchndks','127.0.0.1',1520506328,'__ci_last_regenerate|i:1520506328;'),('anlmf6mq259l85m2lga93kmmau7gp7ts','127.0.0.1',1520506701,'__ci_last_regenerate|i:1520506701;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5ccdrcvh1f4pa2v66jejaleqotnjeuga','127.0.0.1',1520506401,'__ci_last_regenerate|i:1520506401;'),('pmm17agkht6hdofhp5tr0rudk7h2g3be','127.0.0.1',1520506447,'__ci_last_regenerate|i:1520506447;'),('2vaq2uc5iapa06v3gk2rrmb1l8cukji6','127.0.0.1',1520506534,'__ci_last_regenerate|i:1520506534;'),('2l2qg4t1mgu3c2509q1o26abog50dqvk','127.0.0.1',1520506572,'__ci_last_regenerate|i:1520506572;'),('hmd5qsk4hc4jt17tqt3re6jod7992sr5','127.0.0.1',1520506591,'__ci_last_regenerate|i:1520506591;'),('6todvt0i5ccms2972uthmj7lv7ubn3ls','127.0.0.1',1520506612,'__ci_last_regenerate|i:1520506612;'),('7os4lsdelvsphulsqes4okg9upk2unif','127.0.0.1',1520506648,'__ci_last_regenerate|i:1520506648;'),('v98a60tj3mn39prm9mu3i2q1t366pllq','127.0.0.1',1520506701,'__ci_last_regenerate|i:1520506701;'),('jbbd5mak9mkf500as1su5rodd3o44g7m','127.0.0.1',1520516708,'__ci_last_regenerate|i:1520516708;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('q4j3a6p3kb5u3naoagit7mcl3pn3s6pq','127.0.0.1',1520506747,'__ci_last_regenerate|i:1520506747;'),('9afuijms6k0csp57qlb1s7vicf8vdsmb','127.0.0.1',1520506775,'__ci_last_regenerate|i:1520506775;'),('pctosfjppvfdgg4p1karat51ndk7r5fq','127.0.0.1',1520506793,'__ci_last_regenerate|i:1520506793;'),('e4ps2ncca945blrosm5jhiggv7naeou7','127.0.0.1',1520506811,'__ci_last_regenerate|i:1520506811;'),('c6dpv8lg2dcmg6scqefa5523agkblh5d','127.0.0.1',1520506898,'__ci_last_regenerate|i:1520506898;'),('4vi0aiv3614k9ujmi9ihffu4ivm2qt2l','127.0.0.1',1520507701,'__ci_last_regenerate|i:1520507701;'),('p02uuragr2leuh8emc2jfrc2fth5erpq','127.0.0.1',1520509447,'__ci_last_regenerate|i:1520509447;'),('239j682arqk0cn388lvss8coeccafg9s','127.0.0.1',1520509600,'__ci_last_regenerate|i:1520509600;'),('98vgfl1tkbs6vor9dma0mmgabqp94var','127.0.0.1',1520509664,'__ci_last_regenerate|i:1520509664;'),('4dr5707jl0l22qhbjuicbf2e4bodhsci','127.0.0.1',1520509677,'__ci_last_regenerate|i:1520509677;'),('ir3j0h2f5jerai9v5bk4mq7mhf0ifimu','127.0.0.1',1520509708,'__ci_last_regenerate|i:1520509708;'),('s8gf78ti2t210s9n4o7n3mioep3m7iqe','127.0.0.1',1520519322,'__ci_last_regenerate|i:1520519322;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6bkjrbgmjlofdmj4reajdp7nbo1thc8l','127.0.0.1',1520516744,'__ci_last_regenerate|i:1520516743;'),('l4l3me0t6j33ab8i2ofpp8birk7gr5lu','127.0.0.1',1520516941,'__ci_last_regenerate|i:1520516941;'),('34o61p0vd5bckbbipsv9e6c6uo0bod06','127.0.0.1',1520517000,'__ci_last_regenerate|i:1520517000;'),('29o878t44dpsb65tfbjr18q0bdol5gec','127.0.0.1',1520517000,'__ci_last_regenerate|i:1520517000;'),('3mido3t0jq7n2ascuuf10avrh6d360m6','127.0.0.1',1520519774,'__ci_last_regenerate|i:1520519774;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('8fhbesnmn39490d70n9gfbgqm0ci320o','127.0.0.1',1520519431,'__ci_last_regenerate|i:1520519431;'),('m8f8b7i893vqvkbrji42lqqv7u11slsa','127.0.0.1',1520519675,'__ci_last_regenerate|i:1520519675;'),('inrj6uvnt7dp66phe14i456ch4gbqlv0','127.0.0.1',1520519680,'__ci_last_regenerate|i:1520519680;'),('b5o922vuovnn440qapa30leqkmkd68gf','127.0.0.1',1520519767,'__ci_last_regenerate|i:1520519767;'),('1160p2jcj0gkvvabubfc7a42ltfje0e1','127.0.0.1',1520519770,'__ci_last_regenerate|i:1520519770;'),('cbfvt1uujb1tmememkrsukjphub7edqq','127.0.0.1',1520520085,'__ci_last_regenerate|i:1520520085;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('bm2h0tu2ja3u9m8scv3j6ivvfcbp6dne','127.0.0.1',1520519793,'__ci_last_regenerate|i:1520519793;'),('vchsdco85hkmvvgeun603pu7p8130l2m','127.0.0.1',1520519798,'__ci_last_regenerate|i:1520519798;'),('miiv61dcim6mddd29q48csbnkgloijoh','127.0.0.1',1520519865,'__ci_last_regenerate|i:1520519865;'),('ppi0j2ksolumfqauarhcrfpd9pq4c0jn','127.0.0.1',1520519868,'__ci_last_regenerate|i:1520519868;'),('s7pice42hdmkusgov1vci04qu3v2q452','127.0.0.1',1520519872,'__ci_last_regenerate|i:1520519872;'),('q004k6g0mppek4s1laekdj62pc5rfq8g','127.0.0.1',1520519880,'__ci_last_regenerate|i:1520519879;'),('o1b1lv3achp8i2n2k50fbg2sb862ahfs','127.0.0.1',1520519911,'__ci_last_regenerate|i:1520519911;'),('kt9o9992airu10nei9c3k0qlgemnbhls','127.0.0.1',1520519915,'__ci_last_regenerate|i:1520519915;'),('fi1cd58649sggh8fn59siko3mbm6i3gm','127.0.0.1',1520519919,'__ci_last_regenerate|i:1520519919;'),('j336mnq3795c80h4ikrlruu5pg4673q3','127.0.0.1',1520519974,'__ci_last_regenerate|i:1520519974;'),('ikjac0ekasb4icjscpljcpgbp3fa8skt','127.0.0.1',1520519988,'__ci_last_regenerate|i:1520519988;'),('m4dm7drtvtvofm2o3umfj2d5q7kp2p5b','127.0.0.1',1520519992,'__ci_last_regenerate|i:1520519992;'),('muq3qtpvsa1q1en4l3genieibnvg4mgf','127.0.0.1',1520520425,'__ci_last_regenerate|i:1520520425;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('q5m7mut4h6sfnq2sl2qbsq72a7mgc25a','127.0.0.1',1520520094,'__ci_last_regenerate|i:1520520094;'),('g9el1f3k5g83kk6flkc39qtg6okj2lmv','127.0.0.1',1520520099,'__ci_last_regenerate|i:1520520099;'),('jihi1b44ktn6sbf20tbsrc7lfgsbh92g','127.0.0.1',1520520107,'__ci_last_regenerate|i:1520520107;'),('3ru4k73mhbv63ve5sgu4fn2brbopgiqi','127.0.0.1',1520520111,'__ci_last_regenerate|i:1520520111;'),('88l5tb9cte14lm070qdi7c9ccjoakg4u','127.0.0.1',1520520153,'__ci_last_regenerate|i:1520520153;'),('ds8k2jbc5qr44micgb1tq9g8o6vclhg7','127.0.0.1',1520520156,'__ci_last_regenerate|i:1520520156;'),('ssa4paeose5ai6fu2320nr1ihgpophri','127.0.0.1',1520520163,'__ci_last_regenerate|i:1520520163;'),('obd002u2m4qege0ahvd72lbf2908slar','127.0.0.1',1520520213,'__ci_last_regenerate|i:1520520213;'),('20uc3hvggs5l68e6dbm5mp764qcqaqci','127.0.0.1',1520520219,'__ci_last_regenerate|i:1520520219;'),('p0hrflsnjeikl2q0m6n71hrec1p9u5s3','127.0.0.1',1520520231,'__ci_last_regenerate|i:1520520231;'),('0pmff41hdsu716rljbuann5srj8h0q1g','127.0.0.1',1520520238,'__ci_last_regenerate|i:1520520238;'),('2bldkog8784aqbqtoa05t1snj9mt82ei','127.0.0.1',1520520380,'__ci_last_regenerate|i:1520520380;'),('361j16majucc5dgksap1uibnd59l046c','127.0.0.1',1520520386,'__ci_last_regenerate|i:1520520386;'),('qoc0ee1js69m3g3315blmdgquna5kuml','127.0.0.1',1520520392,'__ci_last_regenerate|i:1520520392;'),('a4dq7aa5vc6co0bi0bm4d51o8cfu0atm','127.0.0.1',1520522762,'__ci_last_regenerate|i:1520522762;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('etcnd77evr2h0hbrq1qeo2g2dad4a795','127.0.0.1',1520520460,'__ci_last_regenerate|i:1520520460;'),('0pn9t04hu6261t428l167qi1pll4r8d2','127.0.0.1',1520520470,'__ci_last_regenerate|i:1520520470;'),('0u67oe3ne0l6abnvhtadtsd85cm9aj2o','127.0.0.1',1520520498,'__ci_last_regenerate|i:1520520498;'),('ajkkfuhskfsnmlivuo7dbk5ribsgegls','127.0.0.1',1520520503,'__ci_last_regenerate|i:1520520503;'),('9pk91m0bcqnsfr4lps1386sbfl35rv7g','127.0.0.1',1520520510,'__ci_last_regenerate|i:1520520510;'),('cf1t0pv723hf47f7an5t30uuhluukq0g','127.0.0.1',1520520518,'__ci_last_regenerate|i:1520520518;'),('bjpj0d08ksgio59cm0s7les9p22hb19m','127.0.0.1',1520520521,'__ci_last_regenerate|i:1520520521;'),('p9akrnsj8hvfjnpnrl71jh0j0snmlicb','127.0.0.1',1520520600,'__ci_last_regenerate|i:1520520600;'),('hc5v9ggn89pacffo5c0f8v34epuae61k','127.0.0.1',1520520929,'__ci_last_regenerate|i:1520520929;'),('j3upj88d2r0e3n5r4hlgmkq4oqfmgt1u','127.0.0.1',1520520978,'__ci_last_regenerate|i:1520520978;'),('5chgfvqg43ekf98k82bmm36hpfgfb498','127.0.0.1',1520521045,'__ci_last_regenerate|i:1520521045;'),('rue42229t19f9g2bgfpo5ggmst0en863','127.0.0.1',1520521059,'__ci_last_regenerate|i:1520521059;'),('a5en64h7mb74nlqj35aofe6nu4v586ri','127.0.0.1',1520521064,'__ci_last_regenerate|i:1520521064;'),('6716km1rbhdf58grak43fp14ik0spfar','127.0.0.1',1520521070,'__ci_last_regenerate|i:1520521070;'),('3fvg42kq2j78fhle57jvs7tdrld37scf','127.0.0.1',1520521076,'__ci_last_regenerate|i:1520521076;'),('9thdild6og2eioefa2mhln9eoamel1p8','127.0.0.1',1520521087,'__ci_last_regenerate|i:1520521087;'),('38tseh4r3hb7m4vl6t6to0l9rnh982vg','127.0.0.1',1520523837,'__ci_last_regenerate|i:1520523837;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('6fpdlepdd5f8rdfvs6rr17d97ivjnddb','127.0.0.1',1520522811,'__ci_last_regenerate|i:1520522811;'),('iqa4qgaei1aisppbm0c3d2sd77d3596c','127.0.0.1',1520522831,'__ci_last_regenerate|i:1520522831;'),('v37p00fpauivelrta8u9i8a58h0d62dl','127.0.0.1',1520522844,'__ci_last_regenerate|i:1520522844;'),('dn7dur342rtde2ua5c1jiqle743hf3m3','127.0.0.1',1520522858,'__ci_last_regenerate|i:1520522858;'),('dcstrag99cdlb8h2eopufkvq7k0u8k8b','127.0.0.1',1520522872,'__ci_last_regenerate|i:1520522871;'),('oocho9vv5o16c2ao6oiuj4k8lucce7hc','127.0.0.1',1520524146,'__ci_last_regenerate|i:1520524146;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('5iu5n23bslqbr473itakgc476vesqb2h','127.0.0.1',1520523953,'__ci_last_regenerate|i:1520523953;'),('qur6p84fl122m9i3g01tn8k0ku03o7r1','127.0.0.1',1520523971,'__ci_last_regenerate|i:1520523971;'),('84u8rhe8j8bpgs8vqm3d7eer1o064rp8','127.0.0.1',1520523972,'__ci_last_regenerate|i:1520523972;'),('u8fh1ntci325aao0uo9hrpenf3a3cppv','127.0.0.1',1520524583,'__ci_last_regenerate|i:1520524583;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('poqfslcicatfmr0r2o3cm1l558ghd559','127.0.0.1',1520524401,'__ci_last_regenerate|i:1520524401;'),('0hn5rinlciag56i0butn8c0j237u1gid','127.0.0.1',1520525283,'__ci_last_regenerate|i:1520525283;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ap55vapc6j2o0v744o6a0otm928sl8uu','127.0.0.1',1520524592,'__ci_last_regenerate|i:1520524592;'),('63qtcts2lf0ntu6mjjt6qi15ha2h1dte','127.0.0.1',1520525627,'__ci_last_regenerate|i:1520525627;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('b04trrd60fd8ap1dlkdbd8vhh880mbkq','127.0.0.1',1520526319,'__ci_last_regenerate|i:1520526319;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('ko7r8efdutka71ttbbten5aq9veujmoj','127.0.0.1',1520526817,'__ci_last_regenerate|i:1520526817;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('8f2omg1ddo52pn8gklsdukc40n3dk5mh','127.0.0.1',1520527229,'__ci_last_regenerate|i:1520527229;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('e2770u6b63dmfhvfi0ei1atne53ln5o4','127.0.0.1',1520527557,'__ci_last_regenerate|i:1520527557;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('fvr3kdfge20dt65litun6vll4vbuespm','127.0.0.1',1520527874,'__ci_last_regenerate|i:1520527874;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hqb4573v3il6jml3q4ho2201r9hfmhr3','127.0.0.1',1520528367,'__ci_last_regenerate|i:1520528367;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('3vatnrgo2jsrvr1nff019jktvppg5o6g','127.0.0.1',1520528674,'__ci_last_regenerate|i:1520528674;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('gpdmuima87ovc93uaqmo7f0enog11n5m','127.0.0.1',1520529077,'__ci_last_regenerate|i:1520529077;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('9c2th493c3e4mim4gs5d33f1ucpsbgu6','127.0.0.1',1520529568,'__ci_last_regenerate|i:1520529568;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('7mc57boa6jsrk2ksb35kdf40vlo7qs7c','127.0.0.1',1520530204,'__ci_last_regenerate|i:1520530204;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2o37191tc72mp15m4elgunu0u2tfehg0','127.0.0.1',1520530514,'__ci_last_regenerate|i:1520530514;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('hkkmmp95pur3fcjma79qlshop0v3467d','127.0.0.1',1520530816,'__ci_last_regenerate|i:1520530816;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('58jhk97b1erg04135e5rbqaj6q7cvc5h','127.0.0.1',1520537967,'__ci_last_regenerate|i:1520537967;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('810rtpubr21dqragt3uagm4bqcj2hdu4','127.0.0.1',1520538022,'__ci_last_regenerate|i:1520537967;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('s8slofcghhs007tpf02sm8t2bfh7bv21','127.0.0.1',1520572715,'__ci_last_regenerate|i:1520572715;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qqkibnb70cmkknplrq9v7l463aejrao9','127.0.0.1',1520573366,'__ci_last_regenerate|i:1520573366;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('67qreuj6cjgea1sbh24j9veka5qi941d','127.0.0.1',1520573689,'__ci_last_regenerate|i:1520573689;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('743ssjd8opk67qjgj81a94mtb8s65ja8','127.0.0.1',1520574139,'__ci_last_regenerate|i:1520574139;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('mfc3so8v6qpt5ickaod98l60f42iop5p','127.0.0.1',1520574818,'__ci_last_regenerate|i:1520574818;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('8jj8vn4no2lv3chfvgijfgdk6hcm6693','127.0.0.1',1520575374,'__ci_last_regenerate|i:1520575374;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('n0q5r7d2ttsqp22co6nev7r01ut2ffi5','127.0.0.1',1520576083,'__ci_last_regenerate|i:1520576083;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:32:\"categories updated successfully.\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('tbcbhhhg9do58bk5erlhlh6ffgdfid0c','127.0.0.1',1520576467,'__ci_last_regenerate|i:1520576467;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ot4l87pk3oaqlidvhaqso82k1vr642tj','127.0.0.1',1520576823,'__ci_last_regenerate|i:1520576823;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('mrhkf8sqdfvfh0hae2e6t676kvr1qoo0','127.0.0.1',1520577128,'__ci_last_regenerate|i:1520577128;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vepmnguit2tvvfqukuhb6civ3kjemfa6','127.0.0.1',1520577532,'__ci_last_regenerate|i:1520577532;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qg2fng2q2b9muu0k39u19umgtouuqtlk','127.0.0.1',1520577987,'__ci_last_regenerate|i:1520577987;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('i1jfstkilhinnvsighfpc611ha3s9u40','127.0.0.1',1520577983,'__ci_last_regenerate|i:1520577983;red_url|s:24:\"admin/echelon/category/1\";'),('5ksl9b3p3n4vaoinkm6sfg4lua6qf2rt','127.0.0.1',1520577983,'__ci_last_regenerate|i:1520577983;'),('jfq7t2ul60klk0j9lreiokcilsoh754d','127.0.0.1',1520579080,'__ci_last_regenerate|i:1520579080;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('muu54ek6pjfj2e7dtjk4st4l3edif6m6','127.0.0.1',1520579397,'__ci_last_regenerate|i:1520579397;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('bqr7t02lh2djbe2etkppvrkgo08avb1e','127.0.0.1',1520579741,'__ci_last_regenerate|i:1520579741;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('3fqvervu8g8ufjb0gr11idccj8nu2liu','127.0.0.1',1520580046,'__ci_last_regenerate|i:1520580046;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('olfm08ulo5pcfpote4ftg9uv5td0ceu1','127.0.0.1',1520580570,'__ci_last_regenerate|i:1520580570;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ttuimrsced47rom1qbij8lr1o3amdrhk','127.0.0.1',1520582685,'__ci_last_regenerate|i:1520582685;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1cljmr6865lt93mppc6g4ucecubibh5s','127.0.0.1',1520583337,'__ci_last_regenerate|i:1520583337;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fukv5teguq0seq1fljmdts31sr8l828n','127.0.0.1',1520583650,'__ci_last_regenerate|i:1520583650;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('cacn5laqit3lp3ht783rd4tm53rfvec9','127.0.0.1',1520584042,'__ci_last_regenerate|i:1520584042;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('tk4eojsi99uklb5tgg2o73g11juci8si','127.0.0.1',1520584407,'__ci_last_regenerate|i:1520584407;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ulk7i3g5qinffi5l62t9l1vnb2f22kpu','127.0.0.1',1520584817,'__ci_last_regenerate|i:1520584817;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('b84jrfboc4teso5r9156b7mu3ecoh0o7','127.0.0.1',1520585325,'__ci_last_regenerate|i:1520585325;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('mltthqat6v0jjhh94mrecs3uu9u0q0pl','127.0.0.1',1520585628,'__ci_last_regenerate|i:1520585628;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('iej1fvd08b51oingqlclh4c9k9dcha3v','127.0.0.1',1520585951,'__ci_last_regenerate|i:1520585951;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('r71hmabas6tifn7tuodab5u35a5441h0','127.0.0.1',1520586295,'__ci_last_regenerate|i:1520586295;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('1s2ghq9jmqbvr1h50r8g89abt45pdg53','127.0.0.1',1520586612,'__ci_last_regenerate|i:1520586612;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('2rk5epe5ksblhkk047tohf3cteidaoa6','127.0.0.1',1520587156,'__ci_last_regenerate|i:1520587156;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('pf4uhcjhvhqb280e55l5083q1aic1r46','127.0.0.1',1520597542,'__ci_last_regenerate|i:1520597542;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vpdlmp0fq7stba9id2aftigoo6kv5gio','127.0.0.1',1520587727,'__ci_last_regenerate|i:1520587727;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('jpcetgjm7mie6v2jpmt04u5fqv1rlhc2','127.0.0.1',1520587261,'__ci_last_regenerate|i:1520587261;'),('ousq7jmlevo2asmbelggh8vuavi2p307','127.0.0.1',1520587347,'__ci_last_regenerate|i:1520587347;'),('tgn16rr91qd8hdquu1cngnf8n86uh0n1','127.0.0.1',1520587428,'__ci_last_regenerate|i:1520587428;'),('e89cpa5kf1kmt15vtl4ls1cpc7u9tqnf','127.0.0.1',1520587641,'__ci_last_regenerate|i:1520587641;'),('ssgj9dv8lt8ukn85d2e6k893mcd2fivu','127.0.0.1',1520587652,'__ci_last_regenerate|i:1520587652;'),('2i3avik7dpamr0sunqrmje2j6nr54iqn','127.0.0.1',1520587669,'__ci_last_regenerate|i:1520587669;'),('cnbhg543q5nq16t6vcmli5uq2i3vpras','127.0.0.1',1520587677,'__ci_last_regenerate|i:1520587677;'),('ub8j6fqbs645rhlfijmbcialfvtqiona','127.0.0.1',1520587690,'__ci_last_regenerate|i:1520587690;'),('6l7omiasd2hi9ujm01iqahlnegcfkkue','127.0.0.1',1520587700,'__ci_last_regenerate|i:1520587700;'),('9f30lblrrmuek3itikacr3po6d689bln','127.0.0.1',1520589327,'__ci_last_regenerate|i:1520589327;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('du37bveu6cdrk6o050a825qnb3lvhi8o','127.0.0.1',1520587751,'__ci_last_regenerate|i:1520587751;'),('q78gj9d2i5j04so1u9c5s72v7ds6nh4i','127.0.0.1',1520587762,'__ci_last_regenerate|i:1520587762;'),('mt15t9etmbfq7iv66rgohcgglcojo2n2','127.0.0.1',1520587793,'__ci_last_regenerate|i:1520587793;'),('uc5kfbsnhbcr5m1igusqfp4rq8daouin','127.0.0.1',1520593616,'__ci_last_regenerate|i:1520593616;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('f3h1rabacse14r6nj83vi530hpvqdncd','127.0.0.1',1520589337,'__ci_last_regenerate|i:1520589337;'),('fvg5s2jv87sqom51tg4f2k3gl3sdmvjk','127.0.0.1',1520592947,'__ci_last_regenerate|i:1520592947;'),('r1d6214868iftinvh26bk2l389m5p4jh','127.0.0.1',1520593600,'__ci_last_regenerate|i:1520593600;'),('5bgag5vmv810dkik9b2l8m5v50augih1','127.0.0.1',1520597988,'__ci_last_regenerate|i:1520597988;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('3jt5607l5j5i3obltetiu6527vv08kao','127.0.0.1',1520593638,'__ci_last_regenerate|i:1520593638;'),('tc5um2fad1vlebmg7u9b0fk8men0k2kf','127.0.0.1',1520593641,'__ci_last_regenerate|i:1520593641;'),('4ptt8mrl7g93aujp47khn5n8iich86ks','127.0.0.1',1520593675,'__ci_last_regenerate|i:1520593675;'),('s8k67qbn2kvaog8qoncfb4e3iaa699c8','127.0.0.1',1520597494,'__ci_last_regenerate|i:1520597492;'),('0a7mro76tojeth5naam31lsfh87bmth6','127.0.0.1',1520597503,'__ci_last_regenerate|i:1520597500;'),('m6a79cqq0ql6uc8rr0v4khhr0o9opm1u','127.0.0.1',1520597513,'__ci_last_regenerate|i:1520597511;'),('3obi21d0h8sman710j8fjarlt45t0p2n','127.0.0.1',1520597526,'__ci_last_regenerate|i:1520597524;'),('p6c0ojnmv6sqsrcb1110muomaq4rv5mi','127.0.0.1',1520600194,'__ci_last_regenerate|i:1520600194;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('grs7udt2d0vh01k86guqfpgkk479b7c2','127.0.0.1',1520597558,'__ci_last_regenerate|i:1520597556;'),('kfj2ji9qrq5ukt2681qtpsasmp8j4kke','127.0.0.1',1520597570,'__ci_last_regenerate|i:1520597568;'),('rtstcghivcdvjlu2ihj2jo5gjpmejjie','127.0.0.1',1520597606,'__ci_last_regenerate|i:1520597604;'),('vhels8tn2rvn6fua4ij2tbinmrte0ivo','127.0.0.1',1520597619,'__ci_last_regenerate|i:1520597617;'),('7b608n4tbot0hapnelrd9784n6j87h47','127.0.0.1',1520597629,'__ci_last_regenerate|i:1520597627;'),('h78evdld3ao94g66m7cftlt6q8vvcevd','127.0.0.1',1520597661,'__ci_last_regenerate|i:1520597659;'),('2bd0jp2ulne80m6c8pnhoj6kkego4dvl','127.0.0.1',1520597672,'__ci_last_regenerate|i:1520597670;'),('3429krt1kaele8kgekp3q72dpbnkou0j','127.0.0.1',1520597691,'__ci_last_regenerate|i:1520597689;'),('7h92c4p6bjg79634mtr6h8gihqpgrs77','127.0.0.1',1520597749,'__ci_last_regenerate|i:1520597747;'),('g598rfjmatdvkanek7800qa72mk2vjok','127.0.0.1',1520597760,'__ci_last_regenerate|i:1520597758;'),('rbsfr3ku3lgqa5do9ts00mnvurlm96k6','127.0.0.1',1520597776,'__ci_last_regenerate|i:1520597774;'),('u2fthbq4nirie6ceq0f0fq2l15422ps9','127.0.0.1',1520597788,'__ci_last_regenerate|i:1520597786;'),('gq0aj41ctasjajof2jufva5dauirvabg','127.0.0.1',1520597794,'__ci_last_regenerate|i:1520597792;'),('nnvq231poft4s6bq2mpbn9p3de6qp0n2','127.0.0.1',1520597809,'__ci_last_regenerate|i:1520597807;'),('ocdrochfsjcbts8eu02lvt5269pmgokt','127.0.0.1',1520597814,'__ci_last_regenerate|i:1520597812;'),('081bh0q6aec7jj2ha6dqqmuiaa539ll6','127.0.0.1',1520599298,'__ci_last_regenerate|i:1520599298;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('bh09oaco1ioh9qtu716o6c9fhcf8biv8','127.0.0.1',1520597999,'__ci_last_regenerate|i:1520597997;'),('nm6ju4qt4e6npdg5fl7msop229ithh7d','127.0.0.1',1520598102,'__ci_last_regenerate|i:1520598100;'),('5ete9qek81ivriggoce6l69bl2j1esrg','127.0.0.1',1520598115,'__ci_last_regenerate|i:1520598113;'),('vvt5vjpr4i111j6ipp74iiill1oafbom','127.0.0.1',1520598121,'__ci_last_regenerate|i:1520598119;'),('mi0e03vsa55qhlghvkq5mts5tuk3ruho','127.0.0.1',1520598138,'__ci_last_regenerate|i:1520598136;'),('7r3je1fddsrh9h74jcq37jis2lcb7d8f','127.0.0.1',1520598524,'__ci_last_regenerate|i:1520598522;'),('pmad9nfngrv26vsum0mmseqhu68bbotu','127.0.0.1',1520598535,'__ci_last_regenerate|i:1520598533;'),('nnskjnblsgiir5fg6dicf3k8t5p4ji54','127.0.0.1',1520598552,'__ci_last_regenerate|i:1520598550;'),('v02mfhlb0dhvlfet3mm1ptb397cd1mrb','127.0.0.1',1520598564,'__ci_last_regenerate|i:1520598562;'),('sbed5958vn7nlgso9hjqi6s3ln04dgam','127.0.0.1',1520598569,'__ci_last_regenerate|i:1520598567;'),('fi7fcqgj68c4btm1s0mg98tggce2s7f0','127.0.0.1',1520598580,'__ci_last_regenerate|i:1520598578;'),('qemoj5uljt9ps5e719m86u8hreker08d','127.0.0.1',1520599015,'__ci_last_regenerate|i:1520599015;'),('gt2kpd01lv91gid0g2ogglmh1su4mkak','127.0.0.1',1520599035,'__ci_last_regenerate|i:1520599035;'),('35rikme7kab7ph489ibfl84v0grh8pr1','127.0.0.1',1520599048,'__ci_last_regenerate|i:1520599048;'),('61e1c1ek3ro64df77fm5nhpusfgkhemg','127.0.0.1',1520599102,'__ci_last_regenerate|i:1520599100;'),('896mleqe7287ue89on16go2bdlu626oo','127.0.0.1',1520599147,'__ci_last_regenerate|i:1520599145;'),('4b1age5i9vepukuc0mo2av95s0quikv9','127.0.0.1',1520599192,'__ci_last_regenerate|i:1520599190;'),('9s4rlu7s0nojte7g6hvh1d0m46t244l9','127.0.0.1',1520599259,'__ci_last_regenerate|i:1520599257;'),('i5gf6jbhbi7u3elad9sl18opap19j0d1','127.0.0.1',1520599284,'__ci_last_regenerate|i:1520599282;'),('rlskvq6uacs9p8ip99bi15ctajp92965','127.0.0.1',1520606897,'__ci_last_regenerate|i:1520606897;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('21to8gq7iibl819u9pi9nhmjt5djsa41','127.0.0.1',1520599316,'__ci_last_regenerate|i:1520599314;'),('ug322436huvhes3jm64hoecjkhu7vla1','127.0.0.1',1520599320,'__ci_last_regenerate|i:1520599318;'),('1qbuco5n700a5gmu6mm22hrvielfhime','127.0.0.1',1520604551,'__ci_last_regenerate|i:1520604551;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('r93tbjuhbsg5c9l14dnf5ov9fil1nrsi','127.0.0.1',1520604956,'__ci_last_regenerate|i:1520604956;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('nki4210nbpicdsn9qmcpj8i5379j9f88','127.0.0.1',1520606807,'__ci_last_regenerate|i:1520606807;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gtl0k24pkr167vptivrjkjq4199gjkpe','127.0.0.1',1520607336,'__ci_last_regenerate|i:1520607336;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('gdcakcosuole06qu9qogf582ci4q902g','127.0.0.1',1520606852,'__ci_last_regenerate|i:1520606822;'),('etklf55jj6035ilmmg9hgoejo62dustf','127.0.0.1',1520631936,'__ci_last_regenerate|i:1520631936;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('ckuon123v25lk1q8pgsslcbulrdd26kn','127.0.0.1',1520606932,'__ci_last_regenerate|i:1520606902;'),('qca0irl9vvc1kfa6mobop7doapjkkekc','127.0.0.1',1520607060,'__ci_last_regenerate|i:1520607060;'),('adr63r424a994pd0v9puk7o3bj7e0lu7','127.0.0.1',1520607073,'__ci_last_regenerate|i:1520607072;'),('8bgo32cjuuuckk6shmcj675hop7j42lm','127.0.0.1',1520607076,'__ci_last_regenerate|i:1520607076;'),('0n6uq0020hn6peg4fnp7mh4kd75kvvnl','127.0.0.1',1520607085,'__ci_last_regenerate|i:1520607085;'),('ql1covf4s613fn4dmt42abg3fks7ma5k','127.0.0.1',1520607092,'__ci_last_regenerate|i:1520607092;'),('tnoo974q9v7noto80cj623e3rrh1rjjq','127.0.0.1',1520607098,'__ci_last_regenerate|i:1520607097;'),('548jvaak0f4a8rui6hg0hm3452356bbh','127.0.0.1',1520607103,'__ci_last_regenerate|i:1520607102;'),('re99hntldokjcc0jr31s3jaq1nsmqeoo','127.0.0.1',1520607106,'__ci_last_regenerate|i:1520607106;'),('62uiumm9q1lo04ic0spt4sffkhvbe0q7','127.0.0.1',1520613879,'__ci_last_regenerate|i:1520613879;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('e93rfi3ble9sbblterjbjqpus06gkrc7','127.0.0.1',1520607362,'__ci_last_regenerate|i:1520607361;'),('cj4bkptu7htpa43ub466tpap92c9ldj6','127.0.0.1',1520607368,'__ci_last_regenerate|i:1520607367;'),('t1acq0538cctj868icm8o8npvjtpj06n','127.0.0.1',1520607386,'__ci_last_regenerate|i:1520607386;'),('qnvaf9ji5bg1b705tvdlt0efj1e7o59d','127.0.0.1',1520614188,'__ci_last_regenerate|i:1520614188;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('pgvu3fup4pok6kop6qvt5r4img6t0vp1','127.0.0.1',1520615079,'__ci_last_regenerate|i:1520615079;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('gjji0m3hfl9i3krvmbeqvh1re6l5dnfl','127.0.0.1',1520620346,'__ci_last_regenerate|i:1520620346;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('shqg09lltp97eg1pa3u1bnpnk1cf4r6v','127.0.0.1',1520620654,'__ci_last_regenerate|i:1520620654;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|b:1;'),('uqet44fkec5pdh6vh6o4i5slp8kp45e0','127.0.0.1',1520621121,'__ci_last_regenerate|i:1520621121;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('2codham3p9ep8p3usl9np5il93lrc88u','127.0.0.1',1520621547,'__ci_last_regenerate|i:1520621547;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('0859ogiiofdvp72m4rqba3naj5gga4tn','127.0.0.1',1520622665,'__ci_last_regenerate|i:1520622665;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('nt0cha4h9ogsn92ufdqhnkf61irqakvk','127.0.0.1',1520623026,'__ci_last_regenerate|i:1520623026;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('178fgh9mjel0nkvl488sjfg4m1bj8tf8','127.0.0.1',1520623629,'__ci_last_regenerate|i:1520623629;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('s55v207cac82j8d30d8eeuvc4298r55r','127.0.0.1',1520624038,'__ci_last_regenerate|i:1520624038;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('u10apt3qqed7kk8f1fdb6jou5uc58a7h','127.0.0.1',1520624383,'__ci_last_regenerate|i:1520624383;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('g6b73uv54mep6mcsr2pnve5b9e80cdv8','127.0.0.1',1520625435,'__ci_last_regenerate|i:1520625435;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('d99mlh48c9ds94ggo1bkf39ofidlmf4d','127.0.0.1',1520628224,'__ci_last_regenerate|i:1520628224;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('7fdff7ajvcd38t9hdspp3si7ojh4k6d4','127.0.0.1',1520628682,'__ci_last_regenerate|i:1520628682;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('7o6vusvmjofomgtjbhqrs80j0imubkns','127.0.0.1',1520629123,'__ci_last_regenerate|i:1520629123;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('jo1n9rptgqgvnm2rbh19ifp2imqvmr6i','127.0.0.1',1520629467,'__ci_last_regenerate|i:1520629467;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('ae4u2jh414p1b3c4jk85rrjirndtukoh','127.0.0.1',1520629772,'__ci_last_regenerate|i:1520629772;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('i45iorb7gohl2ckb99320u4muvjr6rjl','127.0.0.1',1520629801,'__ci_last_regenerate|i:1520629772;staff_user_id|s:1:\"1\";staff_logged_in|b:1;setup-menu-open|s:0:\"\";'),('0e6b2qrq49fgscb96pq6p7tjoap59nsd','127.0.0.1',1520632240,'__ci_last_regenerate|i:1520632240;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('13pgkhriuvdb1d30f804a0ne755n0dom','127.0.0.1',1520631945,'__ci_last_regenerate|i:1520631945;'),('0gbvbo4q2o3gse3l2bnc47231ddluhad','127.0.0.1',1520631982,'__ci_last_regenerate|i:1520631982;'),('et9lcvsd7thm1p2deid14uh1lgqiludf','127.0.0.1',1520632043,'__ci_last_regenerate|i:1520632043;'),('t8lvjhv7lpc0d85mmfgtt241j3oqfom6','127.0.0.1',1520632063,'__ci_last_regenerate|i:1520632063;'),('i28spnvvvs7kjbih0h1baqu39uj0klkd','127.0.0.1',1520632084,'__ci_last_regenerate|i:1520632084;'),('s1c507n91vp59ahr6ge3ib1tuaap564u','127.0.0.1',1520632133,'__ci_last_regenerate|i:1520632133;'),('6acuja2q7tah6mj4a6d42uhjmi8omfu1','127.0.0.1',1520632189,'__ci_last_regenerate|i:1520632188;'),('69qsuggme25uq5r15klnm1rohkf6uhuo','127.0.0.1',1520633741,'__ci_last_regenerate|i:1520633741;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('tknrfe92dkglgtlsafhflp1ptlfk55rl','127.0.0.1',1520632287,'__ci_last_regenerate|i:1520632287;'),('qqob400g4u9boss531u0i6plm9bq225e','127.0.0.1',1520632322,'__ci_last_regenerate|i:1520632322;'),('0i9si28b8e17jc7gc6599gkl4skih6ih','127.0.0.1',1520632362,'__ci_last_regenerate|i:1520632362;'),('qil5emgmllg7pivumo7jro1ndjib0ngn','127.0.0.1',1520632367,'__ci_last_regenerate|i:1520632367;'),('979nbbvt5ik35o0808itdd6pelb437nt','127.0.0.1',1520632393,'__ci_last_regenerate|i:1520632393;'),('lihp3haiqlbe2jum3f2a2ua3eotasbec','127.0.0.1',1520632402,'__ci_last_regenerate|i:1520632402;'),('e3qd39bfk7afs6lrpnp0f8cea8iacq7j','127.0.0.1',1520632420,'__ci_last_regenerate|i:1520632420;'),('ke57ujd2nakg72raq6gao80l8mk68nt0','127.0.0.1',1520632431,'__ci_last_regenerate|i:1520632431;'),('me1mlm4dg2ufriqagvoin3h9i5pr7s6v','127.0.0.1',1520632442,'__ci_last_regenerate|i:1520632442;'),('m5o9vc7arp6au9hriud7sgl589656tha','127.0.0.1',1520632456,'__ci_last_regenerate|i:1520632456;'),('trc12n4pe39udn11p1915gds09d8g3jm','127.0.0.1',1520632540,'__ci_last_regenerate|i:1520632540;'),('9urnin2f442l4b4ohuct980leh794f71','127.0.0.1',1520632601,'__ci_last_regenerate|i:1520632601;'),('t5j7epi3uadahotopkerbk776d40nsp8','127.0.0.1',1520632628,'__ci_last_regenerate|i:1520632628;'),('0l7qnthv1fl7p2ssung8fnh6psi8qhrs','127.0.0.1',1520632789,'__ci_last_regenerate|i:1520632789;'),('fhhk0e02dd79ch3p4agmb1risdrdu14t','127.0.0.1',1520632942,'__ci_last_regenerate|i:1520632942;'),('3c9t1en0u134vl1r5e3b274v88stuf75','127.0.0.1',1520633259,'__ci_last_regenerate|i:1520633259;'),('igfqcvfcccjgn1khc7sbhammbfha7ibt','127.0.0.1',1520633273,'__ci_last_regenerate|i:1520633273;'),('an2aa14pifnvum821kavip2inj2hdd1d','127.0.0.1',1520633330,'__ci_last_regenerate|i:1520633330;'),('0sccetgno1tnnsg4cermi70aifmo6f3k','127.0.0.1',1520633403,'__ci_last_regenerate|i:1520633403;'),('867mrtdm4pjh115gv8iou17sb2p3kln2','127.0.0.1',1520633416,'__ci_last_regenerate|i:1520633416;'),('0tnm51oh3cf5v1csambl7dcp7m2ff71d','127.0.0.1',1520633741,'__ci_last_regenerate|i:1520633741;'),('3oq54qmp01p3en33g6nk9g9e7u8v9j0e','127.0.0.1',1520682044,'__ci_last_regenerate|i:1520682043;'),('6nu989f74ahcp59gt2eebjki7jdt61bk','127.0.0.1',1520748883,'__ci_last_regenerate|i:1520748883;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('0madbapj603lupsl2i5qb0jt31b3gdc1','127.0.0.1',1520748269,'__ci_last_regenerate|i:1520748269;'),('nu427m1659lb2qu0o7uh6ldtsl6lk0gc','127.0.0.1',1520748371,'__ci_last_regenerate|i:1520748371;'),('8nqjn9ck444udtlpfeu93dhk5dje1teq','127.0.0.1',1520748371,'__ci_last_regenerate|i:1520748371;'),('p8tmi6a8l6h2b47n6craq88cjei84l5t','127.0.0.1',1520749292,'__ci_last_regenerate|i:1520749292;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('sdv9mvinqt3n5b1v81jglsnnjnb185ae','127.0.0.1',1520749614,'__ci_last_regenerate|i:1520749614;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fkv1cgoop213gg0pjk1imktgajtjvu2f','127.0.0.1',1520750016,'__ci_last_regenerate|i:1520750016;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:17:\"Training deleted!\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('sfmtef62to3seegiplq1c2svhmtrpj5q','127.0.0.1',1520750956,'__ci_last_regenerate|i:1520750956;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ue35an59fa1blmikiv7ilr5kkkhg9t45','127.0.0.1',1520770445,'__ci_last_regenerate|i:1520750094;client_user_id|s:1:\"1\";contact_user_id|s:1:\"1\";client_logged_in|b:1;'),('0srif2h102ep5aancon52nbk0mdvcn18','127.0.0.1',1520751364,'__ci_last_regenerate|i:1520751364;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:17:\"Training deleted!\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('kejc5uq8ii4q12lk942n951479bo39j7','127.0.0.1',1520752468,'__ci_last_regenerate|i:1520752468;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('pu999ff41tcol71tfglpl2sei9gktpei','127.0.0.1',1520752833,'__ci_last_regenerate|i:1520752833;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('rpffi68tu3rak62dg9el3avb4sgqvqo4','127.0.0.1',1520753393,'__ci_last_regenerate|i:1520753393;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('tfjfg6k4dkriqu1h6nbgdq3h0ug3kb6h','127.0.0.1',1520753833,'__ci_last_regenerate|i:1520753833;staff_user_id|s:1:\"1\";staff_logged_in|b:1;message-success|s:17:\"Training deleted!\";__ci_vars|a:1:{s:15:\"message-success\";s:3:\"old\";}'),('t5iso8fkc4s1qqt4llid625rd6jh89c1','127.0.0.1',1520754286,'__ci_last_regenerate|i:1520754286;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('h4tl41b4gtdsuvvtpk4rq1urj5k6d6u5','127.0.0.1',1520754625,'__ci_last_regenerate|i:1520754625;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('uht0gdu8p1rt1542knvcm983bpgqvift','127.0.0.1',1520754962,'__ci_last_regenerate|i:1520754962;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('t87q5s4jnucnk7i7eu3qcdaip8qqkjmt','127.0.0.1',1520755927,'__ci_last_regenerate|i:1520755927;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('s8vv0lcn69kmh5efub32d2kqdtm9qlnm','127.0.0.1',1520756767,'__ci_last_regenerate|i:1520756767;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('8v3okp9g7fnfuil5oonjmm4dufsk46c2','127.0.0.1',1520760793,'__ci_last_regenerate|i:1520760793;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('qb8ddjg2vrp39idd4i0elaqem4f8bb36','127.0.0.1',1520761196,'__ci_last_regenerate|i:1520761196;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('lttafkl2c9mll7pjjn1b3h7uuksma2c7','127.0.0.1',1520761720,'__ci_last_regenerate|i:1520761720;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('a6500j7dh5far4i3jad8br46g2mb3j5q','127.0.0.1',1520761264,'__ci_last_regenerate|i:1520761264;'),('j8167sv50h7e1c0briphh757dsdb06ok','127.0.0.1',1520761393,'__ci_last_regenerate|i:1520761393;'),('g8o8pr3kvtlug05st25ca8hkarv95nm7','127.0.0.1',1520761427,'__ci_last_regenerate|i:1520761427;'),('l7vfunvjgt8uktil0odh03ubkoj60lta','127.0.0.1',1520761454,'__ci_last_regenerate|i:1520761454;'),('3vgp4qp0hed3o9lj5om5ajr1tsukju4j','127.0.0.1',1520761516,'__ci_last_regenerate|i:1520761516;'),('vmr35j5hk3fgqulo8dpb4gae68lfgfov','127.0.0.1',1520761529,'__ci_last_regenerate|i:1520761529;'),('lineg47acjj31o66p4ljiq8um98r4ig7','127.0.0.1',1520761577,'__ci_last_regenerate|i:1520761577;'),('lakt4ujd78u9oul9pqsqsaaaluvjbo71','127.0.0.1',1520761601,'__ci_last_regenerate|i:1520761601;'),('fnn8d5ei7r674cnp3hb6gmh4rfi532qj','127.0.0.1',1520761633,'__ci_last_regenerate|i:1520761633;'),('3vlv4tc61ik3purq5qabl4rknirst27g','127.0.0.1',1520761639,'__ci_last_regenerate|i:1520761639;'),('fadks4pdut0gud7j3ombkkashfjqnjt9','127.0.0.1',1520761645,'__ci_last_regenerate|i:1520761645;'),('evmb8h0fsb6sfkca866p1tlcp5k03buj','127.0.0.1',1520761649,'__ci_last_regenerate|i:1520761649;'),('jfjb4sbhno3lqb5sbhp2klmahqok8gss','127.0.0.1',1520762142,'__ci_last_regenerate|i:1520762142;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('fe4gbb53vnijnubesg3q1a8r4raghkn9','127.0.0.1',1520761966,'__ci_last_regenerate|i:1520761965;'),('1ufal69t0fkv1mhf1ocb83ves05a3736','127.0.0.1',1520761972,'__ci_last_regenerate|i:1520761972;'),('kqaf44vnst2a4oegg6n3ai7e8ldl9s64','127.0.0.1',1520761977,'__ci_last_regenerate|i:1520761977;'),('7dacai98s91eal1mta86js2al9k4jagg','127.0.0.1',1520761985,'__ci_last_regenerate|i:1520761985;'),('enavo6appp9hria4lutc8tcnptm24j07','127.0.0.1',1520762013,'__ci_last_regenerate|i:1520762013;'),('e4bf6i1hamnali4h8rd1h294mu8h74o3','127.0.0.1',1520762017,'__ci_last_regenerate|i:1520762017;'),('daebkj182j43r0jaqus7208p2ben693g','127.0.0.1',1520762022,'__ci_last_regenerate|i:1520762022;'),('1n10h7qpe9mlqes0nce831lmrsplia5u','127.0.0.1',1520762026,'__ci_last_regenerate|i:1520762026;'),('akbugkmngf99rpn6omgmak7ltvgndsgk','127.0.0.1',1520762740,'__ci_last_regenerate|i:1520762740;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('59n507108ftci3lgis056epghe4ifkuc','127.0.0.1',1520762157,'__ci_last_regenerate|i:1520762157;'),('uo8qcu11isvmm1on6veaireer7mc3npf','127.0.0.1',1520762172,'__ci_last_regenerate|i:1520762172;'),('9gbgq1bkkr8ourquhjduaksvmpj2odqh','127.0.0.1',1520762286,'__ci_last_regenerate|i:1520762286;'),('t7kfqp056685sliiht7kk6v6csq7rtlv','127.0.0.1',1520762294,'__ci_last_regenerate|i:1520762294;'),('66v7a12iqv529tb8k8an6c5ojcs1grir','127.0.0.1',1520762299,'__ci_last_regenerate|i:1520762299;'),('cersaqd5qtbghslek7d9unnnc655a02b','127.0.0.1',1520762314,'__ci_last_regenerate|i:1520762314;'),('4upej5vrb0nruas1fdu0rtkrrgkcgtev','127.0.0.1',1520762320,'__ci_last_regenerate|i:1520762320;'),('i67klnaueoccqmsrhnlrujmrme30j3dp','127.0.0.1',1520762441,'__ci_last_regenerate|i:1520762441;'),('mfqcqk5b59hs0rda67vj95ffdajf9hcf','127.0.0.1',1520762445,'__ci_last_regenerate|i:1520762445;'),('99h5mhpar89obr7jn0uppf3q4ommjt0q','127.0.0.1',1520762562,'__ci_last_regenerate|i:1520762562;'),('0ohqdnqienldnfke6o7rdmu7ieatrps9','127.0.0.1',1520762583,'__ci_last_regenerate|i:1520762583;'),('3rbdvldsve6eq8576tqguuma944e0vq4','127.0.0.1',1520763066,'__ci_last_regenerate|i:1520763066;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('rj6hvnn08jiqvrdfuhq6hvmh3evs89na','127.0.0.1',1520762902,'__ci_last_regenerate|i:1520762901;'),('20fdtmj20vscru5hojcu1k68sn0pnoeo','127.0.0.1',1520762935,'__ci_last_regenerate|i:1520762935;'),('8lmlsie0j8epv9lqitnhscqm17tp3kio','127.0.0.1',1520763783,'__ci_last_regenerate|i:1520763783;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('35dlcea0r47tkv5m73cjhshrkn54bu8p','127.0.0.1',1520763356,'__ci_last_regenerate|i:1520763356;'),('pdclpfdijusp7i2dreknua735gi8vqvg','127.0.0.1',1520766549,'__ci_last_regenerate|i:1520766549;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('vc7c5gt50ntmlokgsg79eoe1a7c4ko65','127.0.0.1',1520764173,'__ci_last_regenerate|i:1520764173;'),('3f93smbt669dabhmggp8jngkqm583ers','127.0.0.1',1520764177,'__ci_last_regenerate|i:1520764177;'),('4fhq7m60plik550532tbl5nqklgofkjo','127.0.0.1',1520764185,'__ci_last_regenerate|i:1520764185;'),('4fphefo979bde103du3tvaej4r2uv17t','127.0.0.1',1520764917,'__ci_last_regenerate|i:1520764917;'),('butrfnsk6jeri0lfj8rp6ugaiq485tik','127.0.0.1',1520766223,'__ci_last_regenerate|i:1520766223;'),('p443ann1urs057jtg0dtar94147ecv23','127.0.0.1',1520769007,'__ci_last_regenerate|i:1520769007;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('925kgl7vb66hffm4ckocm8s2cq4ivk5q','127.0.0.1',1520769342,'__ci_last_regenerate|i:1520769342;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('8cjdignp7fm248lve25grqlcpb78qs0e','127.0.0.1',1520769994,'__ci_last_regenerate|i:1520769994;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('skpfev3d0glpjkv845sat8kn536ii5ra','127.0.0.1',1520769583,'__ci_last_regenerate|i:1520769583;'),('51hd5vi31p4jr7dn51q9c8msis4ghgam','127.0.0.1',1520769697,'__ci_last_regenerate|i:1520769697;'),('m3gqfvli9t87on6m513akkp6eg0ocags','127.0.0.1',1520769702,'__ci_last_regenerate|i:1520769702;'),('23qrl3hj5qqblgqgatq0d9kpg5sosla1','127.0.0.1',1520769708,'__ci_last_regenerate|i:1520769708;'),('jmcq35c11u08ot16033oaulomnke45ps','127.0.0.1',1520769716,'__ci_last_regenerate|i:1520769716;'),('e4ofvfg82g59feo6ksqqsouitonlvdei','127.0.0.1',1520769846,'__ci_last_regenerate|i:1520769846;'),('b3jlcfildgumj58pg6sht2h74mndlm6f','127.0.0.1',1520769864,'__ci_last_regenerate|i:1520769861;'),('6css4mblkr5g035g3e53chqjfb5p88fe','127.0.0.1',1520769870,'__ci_last_regenerate|i:1520769868;'),('r540or2ak2pdmbgm4hucrgiqdqj55dr0','127.0.0.1',1520769885,'__ci_last_regenerate|i:1520769883;'),('dqgjgsbpdilt98turf92fnam507jtsfi','127.0.0.1',1520769892,'__ci_last_regenerate|i:1520769889;'),('rhlh5bovu609ij73tvbtlj2umfohbs3r','127.0.0.1',1520769898,'__ci_last_regenerate|i:1520769896;'),('1g9b4s1g6evvma28kcdcigcpahmk7r65','127.0.0.1',1520769905,'__ci_last_regenerate|i:1520769903;'),('ggum8rjebu1hhho69c51h58rv3anrsfp','127.0.0.1',1520769915,'__ci_last_regenerate|i:1520769912;'),('nql9ugumd9rn0jr3un6n12maftc3sogv','127.0.0.1',1520769933,'__ci_last_regenerate|i:1520769931;'),('h91jnfraa7s3c3l8r0q12li2r5c9qotm','127.0.0.1',1520769943,'__ci_last_regenerate|i:1520769941;'),('7tieggm2of0127pisqeemvosgfhc71kr','127.0.0.1',1520769949,'__ci_last_regenerate|i:1520769947;'),('cjpm6vevllh4m8r0bspga5v3pldtp67a','127.0.0.1',1520769985,'__ci_last_regenerate|i:1520769982;'),('sbjp467d5a9qefp4f4ihb3na2jbjepda','127.0.0.1',1520770358,'__ci_last_regenerate|i:1520770358;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('ehe19bsjg0e735huhj1uicr8thtfg3gs','127.0.0.1',1520770013,'__ci_last_regenerate|i:1520770011;'),('r03dj8egb4emlsdi3d1d94r57ojn22hg','127.0.0.1',1520770029,'__ci_last_regenerate|i:1520770026;'),('riakd61573shpsfrt9i41jult05e9h57','127.0.0.1',1520770037,'__ci_last_regenerate|i:1520770035;'),('00rjr25ghi80g38p4q06dgu8clpueqav','127.0.0.1',1520770042,'__ci_last_regenerate|i:1520770040;'),('2qmt1fvv85fr3u5dhorba97dt14muu04','127.0.0.1',1520770072,'__ci_last_regenerate|i:1520770069;'),('bbnlabthf05675ht0sk8dio5dk7ns6q9','127.0.0.1',1520770118,'__ci_last_regenerate|i:1520770115;'),('23gddide4b4240i3u7tbnaksgkedk38t','127.0.0.1',1520770129,'__ci_last_regenerate|i:1520770126;'),('ddhk2fmo3e8irkl1bo24v9kkn9tgjukq','127.0.0.1',1520770148,'__ci_last_regenerate|i:1520770145;'),('trbofj65uf9hnmmu9gnj87pmo5ag9033','127.0.0.1',1520770177,'__ci_last_regenerate|i:1520770174;'),('t6vio1jpdcr3l0lcpakshrnpoe3d1k9u','127.0.0.1',1520772291,'__ci_last_regenerate|i:1520772291;staff_user_id|s:1:\"1\";staff_logged_in|b:1;'),('4o39h6flhc1pjp3vnjsl70acots9q59d','127.0.0.1',1520770372,'__ci_last_regenerate|i:1520770370;'),('ja3npj88tbpcv00ljitsbvb7t8ijc23e','127.0.0.1',1520770445,'__ci_last_regenerate|i:1520770442;'),('eoe412j25vquhba0q5f6vuviqljqauup','127.0.0.1',1520772292,'__ci_last_regenerate|i:1520772291;staff_user_id|s:1:\"1\";staff_logged_in|b:1;');
/*!40000 ALTER TABLE `tblsessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsmalltalkreferences`
--

DROP TABLE IF EXISTS `tblsmalltalkreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsmalltalkreferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smalltalkid` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci,
  `answer` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`smalltalkid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsmalltalkreferences`
--

LOCK TABLES `tblsmalltalkreferences` WRITE;
/*!40000 ALTER TABLE `tblsmalltalkreferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsmalltalkreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsmalltalks`
--

DROP TABLE IF EXISTS `tblsmalltalks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsmalltalks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `small_talk_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `action` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_system` int(1) DEFAULT '0',
  `merge` int(1) DEFAULT '0',
  `is_default` int(1) DEFAULT '0',
  `is_public` int(1) DEFAULT '0',
  PRIMARY KEY (`id`,`agentid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsmalltalks`
--

LOCK TABLES `tblsmalltalks` WRITE;
/*!40000 ALTER TABLE `tblsmalltalks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblsmalltalks` ENABLE KEYS */;
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
INSERT INTO `tblstaff` VALUES (1,'ahmet.gudenoglu@gmail.com','','',NULL,NULL,NULL,NULL,'$2a$08$IgCoaD3DdYJOUcpxw64Ss.Ggb1naYs0d6O7V8itZHTBBDgBeTI946','2018-02-25 12:24:53',NULL,'127.0.0.1','2018-03-11 07:14:55',NULL,NULL,NULL,1,NULL,1,NULL,NULL,NULL,0,0.00,NULL);
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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

-- Dump completed on 2018-03-11 13:50:49
