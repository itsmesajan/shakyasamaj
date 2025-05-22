-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: localhost    Database: palpa_cycling
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `tbl_applicants`
--

DROP TABLE IF EXISTS `tbl_applicants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_applicants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `qualification` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_applicants`
--

LOCK TABLES `tbl_applicants` WRITE;
/*!40000 ALTER TABLE `tbl_applicants` DISABLE KEYS */;
INSERT INTO `tbl_applicants` VALUES (1,'','Swarna Shakya','KTM','9849482842','','swarna@longtail.info',1,'1','family-fun-1.jpg','test'),(2,'','asdasd','Chettrapati, Dhobichaur a','9861369900','','asdasd@gmail.com',2,'11','','asdasd'),(3,'','sahas','Chettrapati, Dhobichaur a','9861369900','','statshakya@gmail.com',3,'13','IMG-20231018-WA0009.jpg','testing');
/*!40000 ALTER TABLE `tbl_applicants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_articles`
--

DROP TABLE IF EXISTS `tbl_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `homepage` int NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_articles`
--

LOCK TABLES `tbl_articles` WRITE;
/*!40000 ALTER TABLE `tbl_articles` DISABLE KEYS */;
INSERT INTO `tbl_articles` VALUES (17,0,'about-us','About Us','Community, it\'s what we are all about.','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 30px; color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	The Palpa District Cycling Association is dedicated to promoting cycling as a sport and a means of transportation in the Palpa district. Our mission is to foster a vibrant cycling community, encourage healthy lifestyles, and support local tourism through cycling events and activities.</p>\r\n<div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 30px; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -.5); margin-left: calc(var(--bs-gutter-x) * -.5); color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	<div class=\"col-lg-6\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 330px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); -webkit-box-flex: 0;\">\r\n		<ul class=\"rdn_list\" style=\"box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin: 0px; list-style: none;\">\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Promote cycling as a sustainable and healthy mode of transportation.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Organize cycling events and competitions to engage the community.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-lg-6\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 330px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); -webkit-box-flex: 0;\">\r\n		<ul class=\"rdn_list\" style=\"box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin: 0px; list-style: none;\">\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Support local tourism by highlighting scenic and historical routes.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Advocate for cyclist-friendly infrastructure and policies.</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n',0,'',1,'','','',0,'2025-02-10 12:49:21','2025-02-10 12:54:03',2,0,_binary 'a:1:{i:0;s:15:\"t82Bi-about.jpg\";}','',''),(16,0,'community-its-what-we-are-all-about','Community, it\'s what we are all about.','About Us','<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 30px; color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	The Palpa District Cycling Association is dedicated to promoting cycling as a sport and a means of transportation in the Palpa district. Our mission is to foster a vibrant cycling community, encourage healthy lifestyles, and support local tourism through cycling events and activities.</p>\r\n<div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 30px; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -.5); margin-left: calc(var(--bs-gutter-x) * -.5); color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	<div class=\"col-lg-6\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 330px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); -webkit-box-flex: 0;\">\r\n		<ul class=\"rdn_list\" style=\"box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin: 0px; list-style: none;\">\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Promote cycling as a sustainable and healthy mode of transportation.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Organize cycling events and competitions to engage the community.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-lg-6\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 330px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); -webkit-box-flex: 0;\">\r\n		<ul class=\"rdn_list\" style=\"box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin: 0px; list-style: none;\">\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Support local tourism by highlighting scenic and historical routes.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Advocate for cyclist-friendly infrastructure and policies.</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n',0,'',1,'','','',0,'2025-02-06 17:25:41','2025-02-06 17:25:41',1,1,_binary 'a:0:{}','',''),(18,0,'test','test','test','<p>\r\n	test</p>\r\n',0,'',1,'','','',0,'2025-02-10 13:12:21','2025-02-10 13:12:21',3,0,_binary 'a:0:{}','','');
/*!40000 ALTER TABLE `tbl_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_blog`
--

DROP TABLE IF EXISTS `tbl_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `blog_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `sortorder` int NOT NULL,
  `status` int NOT NULL,
  `image` varchar(50) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int NOT NULL,
  `viewcount` int NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `linksrc` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linktype` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_blog`
--

LOCK TABLES `tbl_blog` WRITE;
/*!40000 ALTER TABLE `tbl_blog` DISABLE KEYS */;
INSERT INTO `tbl_blog` VALUES (20,'heritage-ride-2081','Heritage Ride 2081','Palpa District Cycling Association','Under the confederation. The executive power shall be vested in one supreme court, and all such laws shall make.','','2025-02-03','0000-00-00',1,1,'LBK4X-event1.jpg','',0,0,'','','2025-02-06 17:35:39','','0'),(21,'heritage-ride-2081','Heritage Ride 2081','Palpa District Cycling Association','Under the confederation. The executive power shall be vested in one supreme court, and all such laws shall make.','','2025-02-09','0000-00-00',2,1,'KwSKR-event1.jpg','',0,0,'','','2025-02-06 17:36:02','','0'),(22,'heritage-ride-2081','Heritage Ride 2081','Palpa District Cycling Association','Under the confederation. The executive power shall be vested in one supreme court, and all such laws shall make.','','2025-02-02','0000-00-00',3,1,'Msrml-event6.jpg','',0,0,'','','2025-02-06 17:36:28','','0'),(23,'heritage','Heritage','Palpa District Cycling Association','Under the confederation. The executive power shall be vested in one supreme court, and all such laws shall make','','2025-02-11','0000-00-00',0,1,'ya2y5-small3.jpg','',0,0,'','','2025-02-12 13:08:24','','0');
/*!40000 ALTER TABLE `tbl_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_conbined_news`
--

DROP TABLE IF EXISTS `tbl_conbined_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_conbined_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_conbined_news`
--

LOCK TABLES `tbl_conbined_news` WRITE;
/*!40000 ALTER TABLE `tbl_conbined_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_conbined_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_configs`
--

DROP TABLE IF EXISTS `tbl_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_configs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `gallery_upload` varchar(255) NOT NULL,
  `contact_upload` varchar(255) NOT NULL,
  `other_upload` varchar(255) NOT NULL,
  `facility_upload` varchar(240) NOT NULL,
  `offer_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT '1',
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `schema_code` tinytext NOT NULL,
  `book_type` tinyint NOT NULL DEFAULT '1',
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `booking_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text,
  `footer` text,
  `search_box` text,
  `search_result` text,
  `action` tinyint(1) NOT NULL DEFAULT '0',
  `contact_info2` varchar(100) NOT NULL,
  `pobox` varchar(50) NOT NULL,
  `pixel_code` mediumtext NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `whatsapp_a` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_configs`
--

LOCK TABLES `tbl_configs` WRITE;
/*!40000 ALTER TABLE `tbl_configs` DISABLE KEYS */;
INSERT INTO `tbl_configs` VALUES (1,'Palpa District Cycling Association','8SHID-favicon.png','4AByU-logo.jpg','','','VqlGu-hero2.jpg','ps0Rs-contact.jpg','Pkh4u-about.jpg','QLYv8-event2.jpg','','Palpa District Cycling Association',1,'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14128.071612788246!2d85.5202536!3d27.7167335!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb0681e69f4d5f%3A0xd75300924c37f8c7!2sClub%20Himalaya%20by%20ACE%20Hotels!5e0!3m2!1sen!2snp!4v1693730469588!5m2!1sen!2snp','aHQyy-map.jpg',' Tansen, Palpa, Nepal','ktm location','+977-01-6680080,01-6680083',' 123456789',' info@palpacycling.org.np','<p>\r\n	With a mission to improve lives through bicycling we teach the joys of bicycling - advocate for safe places to ride.</p>\r\n','© Copyright {year}. All Rights Reserved Palpa District Cycling Association.','Palpa District Cycling Association','Palpa District Cycling Association','Synhawk3.0','','','#','User-agent: *\r\nDisallow: /cgi-bin/','',2,'result.php','LmpYUF','LmpYUF','web','blue','','','Develop By Amit prajapati','Develop By Amit prajapati',0,'email@email.com','2769','','987568562222','');
/*!40000 ALTER TABLE `tbl_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_countries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_countries`
--

LOCK TABLES `tbl_countries` WRITE;
/*!40000 ALTER TABLE `tbl_countries` DISABLE KEYS */;
INSERT INTO `tbl_countries` VALUES (1,'United States',1),(2,'Canada',1),(3,'Mexico',1),(4,'Afghanistan',1),(5,'Albania',1),(6,'Algeria',1),(7,'Andorra',1),(8,'Angola',1),(9,'Anguilla',1),(10,'Antarctica',1),(11,'Antigua and Barbuda',1),(12,'Argentina',1),(13,'Armenia',1),(14,'Aruba',1),(15,'Ascension Island',1),(16,'Australia',1),(17,'Austria',1),(18,'Azerbaijan',1),(19,'Bahamas',1),(20,'Bahrain',1),(21,'Bangladesh',1),(22,'Barbados',1),(23,'Belarus',1),(24,'Belgium',1),(25,'Belize',1),(26,'Benin',1),(27,'Bermuda',1),(28,'Bhutan',1),(29,'Bolivia',1),(30,'Bophuthatswana',1),(31,'Bosnia-Herzegovina',1),(32,'Botswana',1),(33,'Bouvet Island',1),(34,'Brazil',1),(35,'British Indian Ocean',1),(36,'British Virgin Islands',1),(37,'Brunei Darussalam',1),(38,'Bulgaria',1),(39,'Burkina Faso',1),(40,'Burundi',1),(41,'Cambodia',1),(42,'Cameroon',1),(44,'Cape Verde Island',1),(45,'Cayman Islands',1),(46,'Central Africa',1),(47,'Chad',1),(48,'Channel Islands',1),(49,'Chile',1),(50,'China, Peoples Republic',1),(51,'Christmas Island',1),(52,'Cocos (Keeling) Islands',1),(53,'Colombia',1),(54,'Comoros Islands',1),(55,'Congo',1),(56,'Cook Islands',1),(57,'Costa Rica',1),(58,'Croatia',1),(59,'Cuba',1),(60,'Cyprus',1),(61,'Czech Republic',1),(62,'Denmark',1),(63,'Djibouti',1),(64,'Dominica',1),(65,'Dominican Republic',1),(66,'Easter Island',1),(67,'Ecuador',1),(68,'Egypt',1),(69,'El Salvador',1),(70,'England',1),(71,'Equatorial Guinea',1),(72,'Estonia',1),(73,'Ethiopia',1),(74,'Falkland Islands',1),(75,'Faeroe Islands',1),(76,'Fiji',1),(77,'Finland',1),(78,'France',1),(79,'French Guyana',1),(80,'French Polynesia',1),(81,'Gabon',1),(82,'Gambia',1),(83,'Georgia Republic',1),(84,'Germany',1),(85,'Gibraltar',1),(86,'Greece',1),(87,'Greenland',1),(88,'Grenada',1),(89,'Guadeloupe (French)',1),(90,'Guatemala',1),(91,'Guernsey Island',1),(92,'Guinea Bissau',1),(93,'Guinea',1),(94,'Guyana',1),(95,'Haiti',1),(96,'Heard and McDonald Isls',1),(97,'Honduras',1),(98,'Hong Kong',1),(99,'Hungary',1),(100,'Iceland',1),(101,'India',1),(102,'Iran',1),(103,'Iraq',1),(104,'Ireland',1),(105,'Isle of Man',1),(106,'Israel',1),(107,'Italy',1),(108,'Ivory Coast',1),(109,'Jamaica',1),(110,'Japan',1),(111,'Jersey Island',1),(112,'Jordan',1),(113,'Kazakhstan',1),(114,'Kenya',1),(115,'Kiribati',1),(116,'Kuwait',1),(117,'Laos',1),(118,'Latvia',1),(119,'Lebanon',1),(120,'Lesotho',1),(121,'Liberia',1),(122,'Libya',1),(123,'Liechtenstein',1),(124,'Lithuania',1),(125,'Luxembourg',1),(126,'Macao',1),(127,'Macedonia',1),(128,'Madagascar',1),(129,'Malawi',1),(130,'Malaysia',1),(131,'Maldives',1),(132,'Mali',1),(133,'Malta',1),(134,'Martinique (French)',1),(135,'Mauritania',1),(136,'Mauritius',1),(137,'Mayotte',1),(139,'Micronesia',1),(140,'Moldavia',1),(141,'Monaco',1),(142,'Mongolia',1),(143,'Montenegro',1),(144,'Montserrat',1),(145,'Morocco',1),(146,'Mozambique',1),(147,'Myanmar',1),(148,'Namibia',1),(149,'Nauru',1),(150,'Nepal',1),(151,'Netherlands Antilles',1),(152,'Netherlands',1),(153,'New Caledonia (French)',1),(154,'New Zealand',1),(155,'Nicaragua',1),(156,'Niger',1),(157,'Niue',1),(158,'Norfolk Island',1),(159,'North Korea',1),(160,'Northern Ireland',1),(161,'Norway',1),(162,'Oman',1),(163,'Pakistan',1),(164,'Panama',1),(165,'Papua New Guinea',1),(166,'Paraguay',1),(167,'Peru',1),(168,'Philippines',1),(169,'Pitcairn Island',1),(170,'Poland',1),(171,'Polynesia (French)',1),(172,'Portugal',1),(173,'Qatar',1),(174,'Reunion Island',1),(175,'Romania',1),(176,'Russia',1),(177,'Rwanda',1),(178,'S.Georgia Sandwich Isls',1),(179,'Sao Tome, Principe',1),(180,'San Marino',1),(181,'Saudi Arabia',1),(182,'Scotland',1),(183,'Senegal',1),(184,'Serbia',1),(185,'Seychelles',1),(186,'Shetland',1),(187,'Sierra Leone',1),(188,'Singapore',1),(189,'Slovak Republic',1),(190,'Slovenia',1),(191,'Solomon Islands',1),(192,'Somalia',1),(193,'South Africa',1),(194,'South Korea',1),(195,'Spain',1),(196,'Sri Lanka',1),(197,'St. Helena',1),(198,'St. Lucia',1),(199,'St. Pierre Miquelon',1),(200,'St. Martins',1),(201,'St. Kitts Nevis Anguilla',1),(202,'St. Vincent Grenadines',1),(203,'Sudan',1),(204,'Suriname',1),(205,'Svalbard Jan Mayen',1),(206,'Swaziland',1),(207,'Sweden',1),(208,'Switzerland',1),(209,'Syria',1),(210,'Tajikistan',1),(211,'Taiwan',1),(212,'Tahiti',1),(213,'Tanzania',1),(214,'Thailand',1),(215,'Togo',1),(216,'Tokelau',1),(217,'Tonga',1),(218,'Trinidad and Tobago',1),(219,'Tunisia',1),(220,'Turkmenistan',1),(221,'Turks and Caicos Isls',1),(222,'Tuvalu',1),(223,'Uganda',1),(224,'Ukraine',1),(225,'United Arab Emirates',1),(226,'Uruguay',1),(227,'Uzbekistan',1),(228,'Vanuatu',1),(229,'Vatican City State',1),(230,'Venezuela',1),(231,'Vietnam',1),(232,'Virgin Islands (Brit,1)',1),(233,'Wales',1),(234,'Wallis Futuna Islands',1),(235,'Western Sahara',1),(236,'Western Samoa',1),(237,'Yemen',1),(238,'Yugoslavia',1),(239,'Zaire',1),(240,'Zambia',1),(241,'Zimbabwe',1);
/*!40000 ALTER TABLE `tbl_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_download`
--

DROP TABLE IF EXISTS `tbl_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_download` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `image` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_download`
--

LOCK TABLES `tbl_download` WRITE;
/*!40000 ALTER TABLE `tbl_download` DISABLE KEYS */;
INSERT INTO `tbl_download` VALUES (1,'asdasd','asdasd',1,1,'T8z6W-abs.pdf');
/*!40000 ALTER TABLE `tbl_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_events`
--

DROP TABLE IF EXISTS `tbl_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_events`
--

LOCK TABLES `tbl_events` WRITE;
/*!40000 ALTER TABLE `tbl_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_faq`
--

DROP TABLE IF EXISTS `tbl_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `title_gr` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `content_gr` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `added_date` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_faq`
--

LOCK TABLES `tbl_faq` WRITE;
/*!40000 ALTER TABLE `tbl_faq` DISABLE KEYS */;
INSERT INTO `tbl_faq` VALUES (2,'What are the services available?','','<p>\r\n	Fax/Photocopying, Laundry, Meeting/Banquet Facilities, Currency Exchange, Tour Desk, Business Centre, Ironing Service, Car Hire, Ticket Service, Souvenirs/Gift Shop, Concierge Service,Airport Shuttle (surcharge), Bicycle Rental, Shuttle Service (surcharge)</p>\r\n','',1,12,'2023-08-28 11:17:00'),(3,'What are the activities guests can enjoy?','','<p>\r\n	Nagarkot is a tranquil place where guests can escape the chaos and the hectic demands of the city life. While many guests prefer to enjoy the natural beauty of the surroundings by taking long walks, watching the sunrise and sunsets and enjoying a quite drink at our cozy bar, the hotel also offer activities such as :Massage, Spa &amp; Wellness Center, Cycling (booking shall be made in advance), Hiking, Library, Indoor Swimming Pool etc.</p>\r\n','',1,3,'2023-08-29 11:44:10'),(4,'What are the amenities and facilities in the hotel?','','<p>\r\n	Area shuttle (surcharge) &ndash; Bar/lounge- Total number of rooms 68 &ndash; Number of floors 5 &ndash; Number of buildings 2- Free Wi-fi ( Lobby area only)- Restaurant(s) in hotel- 1 Swimming pool &ndash; indoor &ndash; Spa &ndash; Rooftop sun deck- Souvenir shops- Helipad- Hot tub- Library- Multiple small meeting rooms &ndash; Multiple conference/ meeting rooms &ndash; Event catering &ndash; Banquet facilities &ndash; Concierge- Town Car Service available &ndash; Security guard &ndash; Multilingual staff &ndash; 24-hour front desk &ndash; Currency exchange &ndash; Parking</p>\r\n','',1,2,'2023-08-29 11:44:28'),(6,'Internet','','<p>\r\n	Free! Wi-fi is available in public areas and is free of charge.</p>\r\n','',1,0,'2023-09-15 11:22:44'),(7,'Parking','','<p>\r\n	Free! Free private parking is possible on site (reservation is needed).</p>\r\n','',1,1,'2023-09-15 11:23:01'),(8,'How do I get to the hotel?','','<p>\r\n	Nagarkot is 32 kilometers East of Kathmandu. From the Tribhuvan International Airport, guests can easily hire a taxi. It costs around 3500 Nepali rupees ( this is an approximate figure and subject to change) one-way. If you are already in Kathmandu or elsewhere, your hotel can easily arrange a private car or taxi. If you&#39;d like assistance, it is best to email us at ambassador@ambassador.com.np or call us at 977-1-6680080/46. To read more about transportation you may also visit the Lonely Planet site.</p>\r\n','',1,4,'2023-09-15 11:23:55'),(9,'What are the things to do in Nagarkot?','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span><br style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">According to TripAdvisor.com following are the 5 good reasons to visit Nagarkot:</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. For those longing for some really refreshing environment to be free from hectic busy schedules in the crowded Kathmandu.Nagarkot provides a scenic beauty and divine peace far from heat, dust, smoke and city&rsquo;s hustle bustle.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Nagarkot is the nearest point from the Kathmandu valley from where on a clear day, the view of Mount Everest can be seen.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. Nagarkot is ideal hilltop venue to acclimatize for high altitude adventures as it is located at 7200 ft above sea level.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. It is the transit point for Helambu and Lang-tang trekking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Nagarkot is also a good point for mini-trekking. There are several treks possible to and from Nagarkot such as sankhu, changu Narayan, Dhulikhel, Sundarijal, Nala, etc.</li>\r\n</ol>\r\n','',1,10,'2023-09-15 11:24:12'),(10,'We guarantee','','<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. Booking is safe. When you book with us your details are protected by a secure connection.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Best Price Guarantee. Found your room online at a lower price (exact date and same terms &amp; conditions)? We&rsquo;ll match it. Email <a href=\"mailto:pam@acehotelsnepal.com\">pam@acehotelsnepal.com</a>.</li>\r\n</ol>\r\n','',1,5,'2023-09-15 11:24:26'),(11,'What are the accepted credit cards?','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Visa, Euro/Mastercard/ AMEX</span></p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 15px; padding-right: 0px; padding-left: 30px; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		1. A credit card number is required to confirm the booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		2. Prepayment for full duration of stay will be charged at the time of booking.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		3. 100% deposit will be refunded in the event of cancellation / modification 7 days prior to arrival date.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		4. Any cancellation less than 7 days notification, 50% of amount paid will be refunded.</li>\r\n	<li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">\r\n		5. Prepayment will not be refunded for No-shows.</li>\r\n</ol>\r\n','',1,6,'2023-09-15 11:24:38'),(12,'Pets','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Pets are not allowed.</span></p>\r\n','',1,7,'2023-09-15 11:24:49'),(13,'What are the Hotel Policies?','','<p style=\"text-align: left;\">\r\n	Check-in: 2:00 pm</p>\r\n<p style=\"text-align: left;\">\r\n	Check-out: 12:00 noon</p>\r\n<ul style=\"list-style-type:circle; text-align: left;\">\r\n	<li>\r\n		Rates are subjected to 13% VAT and 10% services charge.</li>\r\n	<li>\r\n		Note that children age 11 and older are charged the adult rate.</li>\r\n	<li>\r\n		Please include them in the number entered in the No. of Adults box.</li>\r\n	<li>\r\n		All rates quoted are subject to change without prior notice.</li>\r\n	<li>\r\n		Should you wish to change an existing reservation, you are required to cancel the existing booking and proceed to create a new reservation.This may be done by visiting our website.</li>\r\n	<li>\r\n		Should you wish to cancel an existing reservation, simply click on the reservation link at our</li>\r\n</ul>\r\n','',1,8,'2023-09-15 11:25:00'),(14,'When is the best time to visit?','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Locals visit Nagarkot through out the year as it is the perfect escape from the hustle and bustle of Kathmandu city; but October- March is probably the time when guests enjoy clear views of the mountain ranges.</span></p>\r\n','',1,11,'2023-09-15 11:25:11'),(15,'What is the weather in Nagarkot like ?','','<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: sans-serif; font-size: 14px;\">Nagarkot is very windy throughout the year, so always bring a wind cheater, a cap, glove, cold cream or lip guard, sunglasses and light walking shoes. Don&#39;t forget your binocular &amp; camera to catch the view. Avoid loose flying skirts and sarees unless you want a Marilyne Monroe experience!</span></p>\r\n<div class=\"table-responsive\">\r\n	<table class=\"table table-bordered\">\r\n		<tbody style=\"box-sizing: border-box;\">\r\n			<tr style=\"box-sizing: border-box;\">\r\n				<td>\r\n					&nbsp;</td>\r\n				<td>\r\n					&nbsp;Max<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px; text-align: center;\">\r\n					&nbsp; Min</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"40%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Jan- March (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;4 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;warm woolens with head cover</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;April-June (Spring / summer)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;25 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;wind cheater, umbrella raincoat, light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"20%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;July &ndash; Sept (Monsoon / Autumn)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;28 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					15 o C<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;light wind cheater umbrella, raincoat,Light cap</td>\r\n			</tr>\r\n			<tr style=\"box-sizing: border-box;\" width=\"30%\">\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;Oct- Dec (Winter)<span class=\"Apple-tab-span\" style=\"box-sizing: border-box; white-space: pre;\"> </span></td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;15 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;2 o C</td>\r\n				<td style=\"box-sizing: border-box; padding: 0px;\">\r\n					&nbsp;very heavy woolens</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n','',1,9,'2023-09-15 11:25:23');
/*!40000 ALTER TABLE `tbl_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_features`
--

DROP TABLE IF EXISTS `tbl_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `parentId` int NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_features`
--

LOCK TABLES `tbl_features` WRITE;
/*!40000 ALTER TABLE `tbl_features` DISABLE KEYS */;
INSERT INTO `tbl_features` VALUES (47,'Services',0,'','','',1,1,'2020-05-24 12:37:54'),(110,'Toiletriesi',47,'5Wl4A-toiletries.png','','',1,10,'2023-06-22 12:55:49'),(109,'No Smoking',47,'HhdMH-smoking.png','','',1,9,'2023-06-22 12:55:34'),(108,'Free Wi-Fi',47,'BRTHe-wifi.png','','',1,8,'2023-06-22 12:35:27'),(107,'In Room Safe (Locker)',47,'czpVO-locker.png','','',1,7,'2023-06-22 12:35:15'),(106,'Shower-bathtub combination',47,'nvshS-bathtub.png','','',1,6,'2023-06-22 12:35:03'),(105,'Flat screen TV',47,'p6ajD-tv.png','','',1,5,'2023-06-22 12:34:55'),(104,'House Keeping',47,'zdiBw-gousekeeping.png','','',1,4,'2023-06-22 12:34:46'),(103,'Bathrobe & slippers',47,'3nJ5P-slippers.png','','',1,3,'2023-06-22 12:34:36'),(102,'Coffee/ Tea Maker',47,'XcKIX-coffee-maker.png','','',1,2,'2023-06-21 12:17:40'),(118,'facilities',0,'','','',1,2,'2024-01-25 16:51:25');
/*!40000 ALTER TABLE `tbl_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_galleries`
--

DROP TABLE IF EXISTS `tbl_galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_galleries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_galleries`
--

LOCK TABLES `tbl_galleries` WRITE;
/*!40000 ALTER TABLE `tbl_galleries` DISABLE KEYS */;
INSERT INTO `tbl_galleries` VALUES (11,'footer-gallery','Footer gallery','VjyMI-1.jpg','',1,1,'2025-02-07 13:21:50',2),(12,'event-2022','Event 2022','7ThdE-2.jpg','',1,2,'2025-02-10 13:28:28',1),(13,'event-2023','Event 2023','WtWpz-2.jpg','',1,3,'2025-02-10 13:29:41',1),(14,'event-2024','Event 2024','qtlW3-466415548_889769849958795_617553083960556229','',1,4,'2025-02-10 13:30:44',1);
/*!40000 ALTER TABLE `tbl_galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_gallery_images`
--

DROP TABLE IF EXISTS `tbl_gallery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_gallery_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `galleryid` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `detail` varchar(200) NOT NULL,
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  `content` varchar(350) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_gallery_images`
--

LOCK TABLES `tbl_gallery_images` WRITE;
/*!40000 ALTER TABLE `tbl_gallery_images` DISABLE KEYS */;
INSERT INTO `tbl_gallery_images` VALUES (193,11,'Enjoy the ride.','PHKM6-5.jpg',1,'',4,'2025-02-07 15:26:11','Riders from all over country have registered for the inaugural event.'),(194,11,'Enjoy the ride.','tlrFB-2.jpg',1,'',5,'2025-02-07 15:26:11','Riders from all over country have registered for the inaugural event.'),(192,11,'Enjoy the ride.','NoKZp-6.jpg',1,'',3,'2025-02-07 15:26:11','Riders from all over country have registered for the inaugural event.'),(191,11,'Enjoy the ride.','DnXhr-3.jpg',1,'',1,'2025-02-07 15:26:11','Riders from all over country have registered for the inaugural event.'),(190,11,'Enjoy the ride.','sbspE-1.jpg',1,'',2,'2025-02-07 15:26:11','Riders from all over country have registered for the inaugural event.'),(195,11,'Enjoy the ride.','Cktit-4.jpg',1,'',6,'2025-02-07 15:26:11','Riders from all over country have registered for the inaugural event.'),(196,11,'Enjoy the ride.','liHUO-7.jpg',1,'',7,'2025-02-07 15:26:11','Riders from all over country have registered for the inaugural event.'),(197,11,'Enjoy the ride.','JOv4c-8.jpg',1,'',8,'2025-02-07 15:26:11','Riders from all over country have registered for the inaugural event.'),(198,12,'title','V5Bfj-3.jpg',1,'',1,'2025-02-10 13:29:16','content'),(199,12,'title','fltZy-2.jpg',1,'',2,'2025-02-10 13:29:16','content'),(200,12,'title','Ha0gP-1.jpg',1,'',3,'2025-02-10 13:29:16','content'),(201,12,'title','5DmxN-4.jpg',1,'',4,'2025-02-10 13:29:16','content'),(202,13,'title','2jEQz-11.jpg',1,'',1,'2025-02-10 13:30:24','short content'),(203,13,'title','APg49-6.jpg',1,'',2,'2025-02-10 13:30:24','short content'),(204,13,'title','NJ191-8.jpg',1,'',3,'2025-02-10 13:30:24','short content'),(205,13,'title','5WdYc-7.jpg',1,'',4,'2025-02-10 13:30:24','shortcontetn'),(206,14,'title','3tOGP-11.jpg',1,'',1,'2025-02-10 13:31:21','short content'),(207,14,'title','lNLwR-2.jpg',1,'',2,'2025-02-10 13:31:21','short content'),(208,14,'title','EXq1N-7.jpg',1,'',3,'2025-02-10 13:31:21','short content'),(209,14,'title','rOi5T-5.jpg',1,'',4,'2025-02-10 13:31:21','short content');
/*!40000 ALTER TABLE `tbl_gallery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_group_type`
--

DROP TABLE IF EXISTS `tbl_group_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_group_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint NOT NULL DEFAULT '1' COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint NOT NULL,
  `permission` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_group_type`
--

LOCK TABLES `tbl_group_type` WRITE;
/*!40000 ALTER TABLE `tbl_group_type` DISABLE KEYS */;
INSERT INTO `tbl_group_type` VALUES (1,'Administrator','1',1,'',1,'a:27:{i:0;s:2:\"74\";i:1;s:3:\"306\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:2:\"25\";i:7;s:2:\"23\";i:8;s:2:\"24\";i:9;s:2:\"20\";i:10;s:1:\"5\";i:11;s:2:\"11\";i:12;s:2:\"17\";i:13;s:3:\"303\";i:14;s:3:\"302\";i:15;s:3:\"309\";i:16;s:3:\"310\";i:17;s:2:\"27\";i:18;s:3:\"300\";i:19;s:3:\"301\";i:20;s:2:\"19\";i:21;s:2:\"28\";i:22;s:2:\"12\";i:23;s:2:\"16\";i:24;s:2:\"15\";i:25;s:2:\"14\";i:26;s:2:\"13\";}'),(2,'General Admin','1',1,'',1,'a:17:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:2:\"25\";i:6;s:2:\"23\";i:7;s:2:\"20\";i:8;s:1:\"5\";i:9;s:2:\"11\";i:10;s:3:\"310\";i:11;s:2:\"27\";i:12;s:2:\"36\";i:13;s:2:\"28\";i:14;s:2:\"12\";i:15;s:2:\"14\";i:16;s:2:\"13\";}');
/*!40000 ALTER TABLE `tbl_group_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_logs`
--

DROP TABLE IF EXISTS `tbl_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `registered` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  `user_action` int NOT NULL,
  `ip_track` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1275 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logs`
--

LOCK TABLES `tbl_logs` WRITE;
/*!40000 ALTER TABLE `tbl_logs` DISABLE KEYS */;
INSERT INTO `tbl_logs` VALUES (1,'Log has been cleared.','2023-06-22 16:11:02',1,6,'::1'),(2,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-06-22 16:25:42',1,4,'::1'),(3,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-06-22 16:26:17',1,4,'::1'),(4,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-06-22 16:30:56',1,4,'::1'),(5,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-06-22 16:32:30',1,4,'::1'),(6,'Login: Hotel Shangrila Blu   logged in.','2023-08-28 12:01:38',1,1,'::1'),(7,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-08-28 12:05:23',1,4,'::1'),(8,'Menu [ROOMS & SUITES] Edit Successfully','2023-08-29 11:03:06',1,4,'::1'),(9,'Menu [mice] Edit Successfully','2023-08-29 11:03:42',1,4,'::1'),(10,'Menu [MICE] Edit Successfully','2023-08-29 11:03:51',1,4,'::1'),(11,'Menu [HOME] Edit Successfully','2023-08-29 11:04:00',1,4,'::1'),(12,'Menu [ABOUT US] Edit Successfully','2023-08-29 11:04:08',1,4,'::1'),(13,'Menu [RESTAURANTS & SHOPS] Edit Successfully','2023-08-29 11:04:43',1,4,'::1'),(14,'Menu [FACILITIES] Edit Successfully','2023-08-29 11:04:56',1,4,'::1'),(15,'Menu [GALLERY] Edit Successfully','2023-08-29 11:05:11',1,4,'::1'),(16,'Menu [CAREER] CreatedData has added successfully.','2023-08-29 11:05:42',1,3,'::1'),(17,'Menu [CONTACT US] Edit Successfully','2023-08-29 11:06:03',1,4,'::1'),(18,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-08-29 11:18:34',1,4,'::1'),(19,'Changes on Article \'About Us\' has been saved successfully.','2023-08-29 12:02:58',1,4,'::1'),(20,'Menu [MICE] Edit Successfully','2023-08-29 12:05:39',1,4,'::1'),(21,'Menu [RESTAURANTS & SHOPS] Edit Successfully','2023-08-29 12:05:45',1,4,'::1'),(22,'Package [Mice]Data has added successfully.','2023-08-29 12:22:54',1,3,'::1'),(23,'Menu [MICE] Edit Successfully','2023-08-29 12:24:54',1,4,'::1'),(24,'Sub Package \'Bhaktapur Hall\' has added successfully.','2023-08-29 13:03:28',1,3,'::1'),(25,'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.','2023-08-29 13:05:03',1,4,'::1'),(26,'Login: Hotel Shangrila Blu   logged in.','2023-08-29 13:16:34',1,1,'::1'),(27,'Sub Package Image [b]Data has added successfully.','2023-08-29 13:16:58',1,3,'::1'),(28,'Sub Package Image [bb]Data has added successfully.','2023-08-29 13:16:58',1,3,'::1'),(29,'Sub Package Image [b]Data has added successfully.','2023-08-29 13:16:58',1,3,'::1'),(30,'Package [Other Services]Data has deleted successfully.','2023-08-29 14:31:10',1,6,'::1'),(31,'Package [Dining]Data has added successfully.','2023-08-29 14:33:04',1,3,'::1'),(32,'Sub Package \'Kantipur Restaurant\' has added successfully.','2023-08-29 14:35:35',1,3,'::1'),(33,'Sub Package Image [k]Data has added successfully.','2023-08-29 14:36:06',1,3,'::1'),(34,'Sub Package Image [k]Data has added successfully.','2023-08-29 14:36:06',1,3,'::1'),(35,'Sub Package Image [k]Data has added successfully.','2023-08-29 14:36:06',1,3,'::1'),(36,'Sub Package \'Nagarkot Hall\' has added successfully.','2023-08-29 14:53:38',1,3,'::1'),(37,'Sub Package Image [n]Data has added successfully.','2023-08-29 14:54:22',1,3,'::1'),(38,'Sub Package Image [nn]Data has added successfully.','2023-08-29 14:54:22',1,3,'::1'),(39,'Sub Package Image [n]Data has added successfully.','2023-08-29 14:54:22',1,3,'::1'),(40,'Menu [yfty] CreatedData has added successfully.','2023-08-29 15:05:34',1,3,'::1'),(41,'Menu  [yfty]Data has deleted successfully.','2023-08-29 15:05:49',1,6,'::1'),(42,'Changes on Sub Package \'Deluxe Premium\' has been saved successfully.','2023-08-30 12:48:44',1,4,'::1'),(43,'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.','2023-08-30 13:04:50',1,6,'::1'),(44,'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.','2023-08-30 13:04:56',1,6,'::1'),(45,'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.','2023-08-30 13:05:15',1,6,'::1'),(46,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:17',1,6,'::1'),(47,'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.','2023-08-30 13:05:17',1,6,'::1'),(48,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:21',1,6,'::1'),(49,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:21',1,6,'::1'),(50,'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.','2023-08-30 13:05:21',1,6,'::1'),(51,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:25',1,6,'::1'),(52,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:25',1,6,'::1'),(53,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:25',1,6,'::1'),(54,'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.','2023-08-30 13:05:25',1,6,'::1'),(55,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:27',1,6,'::1'),(56,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:27',1,6,'::1'),(57,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:27',1,6,'::1'),(58,'SubPackage Gallery Image []Data has deleted successfully.','2023-08-30 13:05:27',1,6,'::1'),(59,'SubPackage Gallery Image [Super Deluxe King Room]Data has deleted successfully.','2023-08-30 13:05:27',1,6,'::1'),(60,'Sub Package Image [del]Data has added successfully.','2023-08-30 13:05:51',1,3,'::1'),(61,'Sub Package Image [del]Data has added successfully.','2023-08-30 13:05:51',1,3,'::1'),(62,'Sub Package Image [del]Data has added successfully.','2023-08-30 13:05:51',1,3,'::1'),(63,'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.','2023-08-30 13:06:31',1,4,'::1'),(64,'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.','2023-08-30 13:07:26',1,4,'::1'),(65,'Login: Hotel Shangrila Blu   logged in.','2023-08-31 17:26:22',1,1,'::1'),(66,'Blog  [asdasd]Data has deleted successfully.','2023-08-31 17:53:51',1,6,'::1'),(67,'Blog [test 1]Data has added successfully.','2023-08-31 17:54:29',1,3,'::1'),(68,'Blog  [Options and basic details about Atithi Suites or Things to know about Atithi Suites]Data has ','2023-08-31 18:14:39',1,6,'::1'),(69,'User [Hotel Shangrila Blu  ] Edit Successfully','2023-08-31 18:56:24',1,4,'::1'),(70,'Changes on FAQ \'Do you have any discount code\' has been saved successfully.','2023-08-31 18:56:39',1,4,'::1'),(71,'User [Hotel Shangrila Blu  ] Edit Successfully','2023-09-01 07:52:37',1,4,'::1'),(72,'Changes on Article \'Pashupatinath Temple\' has been saved successfully.','2023-09-01 07:52:56',1,4,'::1'),(73,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-09-01 07:56:06',1,4,'::1'),(74,'User [Hotel Shangrila Blu  ] Edit Successfully','2023-09-01 08:35:19',1,4,'::1'),(75,'Menu [CAREER] Edit Successfully','2023-09-01 08:37:21',1,4,'::1'),(76,'Login: Hotel Shangrila Blu   logged in.','2023-09-01 18:31:39',1,1,'::1'),(77,'Slideshow  [Bedroom]Data has deleted successfully.','2023-09-01 18:31:54',1,6,'::1'),(78,'Slideshow  [Dining]Data has deleted successfully.','2023-09-01 18:31:54',1,6,'::1'),(79,'Slideshow  [Food]Data has deleted successfully.','2023-09-01 18:31:54',1,6,'::1'),(80,'Package [What\'s New]Data has deleted successfully.','2023-09-01 18:39:41',1,6,'::1'),(81,'Login: Hotel Shangrila Blu   logged in.','2023-09-01 19:28:56',1,1,'::1'),(82,'User [Hotel Shangrila Blu  ] Edit Successfully','2023-09-01 19:29:05',1,4,'::1'),(83,'Article \'test 1\' has added successfully.','2023-09-01 19:31:43',1,3,'::1'),(84,'Article \'Spa\' has added successfully.','2023-09-03 12:16:37',1,3,'::1'),(85,'Articles  [Spa]Data has deleted successfully.','2023-09-03 12:16:48',1,6,'::1'),(86,'Article \'spa \' has added successfully.','2023-09-03 12:17:00',1,3,'::1'),(87,'Articles  [spa ]Data has deleted successfully.','2023-09-03 12:17:08',1,6,'::1'),(88,'Article \'asd\' has added successfully.','2023-09-03 12:18:50',1,3,'::1'),(89,'Articles  [asd]Data has deleted successfully.','2023-09-03 12:18:58',1,6,'::1'),(90,'Article \'AS\' has added successfully.','2023-09-03 12:26:04',1,3,'::1'),(91,'Articles  [AS]Data has deleted successfully.','2023-09-03 12:26:15',1,6,'::1'),(92,'Article \'sda\' has added successfully.','2023-09-03 12:28:59',1,3,'::1'),(93,'Articles  [sda]Data has deleted successfully.','2023-09-03 12:29:11',1,6,'::1'),(94,'Article \'asdasd\' has added successfully.','2023-09-03 12:33:54',1,3,'::1'),(95,'Articles  [asdasd]Data has deleted successfully.','2023-09-03 12:34:03',1,6,'::1'),(96,'Article \'asd\' has added successfully.','2023-09-03 12:36:50',1,3,'::1'),(97,'Article \'asdasd\' has added successfully.','2023-09-03 12:37:51',1,3,'::1'),(98,'Articles  []Data has deleted successfully.','2023-09-03 12:39:32',1,6,'::1'),(99,'Article \'asd\' has added successfully.','2023-09-03 12:39:41',1,3,'::1'),(100,'Article \'asdas\' has added successfully.','2023-09-03 12:42:56',1,3,'::1'),(101,'Articles  []Data has deleted successfully.','2023-09-03 12:46:54',1,6,'::1'),(102,'Article \'awwesxwe\' has added successfully.','2023-09-03 12:47:20',1,3,'::1'),(103,'Article \'wszxe\' has added successfully.','2023-09-03 12:47:40',1,3,'::1'),(104,'Articles  []Data has deleted successfully.','2023-09-03 12:49:36',1,6,'::1'),(105,'Article \'asdasd\' has added successfully.','2023-09-03 12:49:59',1,3,'::1'),(106,'Changes on Article \'asdasdasdasd\' has been saved successfully.','2023-09-03 12:50:07',1,4,'::1'),(107,'Article \'asdasd\' has added successfully.','2023-09-03 12:50:28',1,3,'::1'),(108,'Articles  [Experience Hospitality The Nepalese Way]Data has deleted successfully.','2023-09-03 12:51:20',1,6,'::1'),(109,'Changes on Article \'asdasdasdasd\' has been saved successfully.','2023-09-03 13:08:55',1,4,'::1'),(110,'Changes on Article \'SPA\' has been saved successfully.','2023-09-03 13:22:04',1,4,'::1'),(111,'Article \'Pool & Jacuzzi\' has added successfully.','2023-09-03 14:08:35',1,3,'::1'),(112,'Articles  [test 1]Data has deleted successfully.','2023-09-03 14:23:22',1,6,'::1'),(113,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-03 14:24:04',1,4,'::1'),(114,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-03 14:24:27',1,4,'::1'),(115,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-03 14:25:06',1,4,'::1'),(116,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-09-03 14:26:56',1,4,'::1'),(117,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-09-03 14:29:42',1,4,'::1'),(118,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-09-03 14:30:17',1,4,'::1'),(119,'Changes on Config \'Hotel Shangrila Blu\' has been saved successfully.','2023-09-03 14:31:29',1,4,'::1'),(120,'Login: Hotel Shangrila Blu   logged in.','2023-09-03 15:02:51',1,1,'::1'),(121,'Vacency [backend]Data has added successfully.','2023-09-03 15:03:21',1,3,'::1'),(122,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-03 15:33:53',1,4,'::1'),(123,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-03 15:34:30',1,4,'::1'),(124,'Menu [ABOUT US] Edit Successfully','2023-09-03 15:40:48',1,4,'::1'),(125,'Menu [ABOUT US] Edit Successfully','2023-09-03 15:42:22',1,4,'::1'),(126,'Changes on Article \'About Us\' has been saved successfully.','2023-09-03 15:44:15',1,4,'::1'),(127,'Articles  [About Us]Data has deleted successfully.','2023-09-03 15:53:17',1,6,'::1'),(128,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-03 15:53:38',1,4,'::1'),(129,'Article \'about us\' has added successfully.','2023-09-03 15:53:53',1,3,'::1'),(130,'Changes on Article \'about us\' has been saved successfully.','2023-09-03 15:58:02',1,4,'::1'),(131,'Changes on Article \'about us\' has been saved successfully.','2023-09-03 16:47:36',1,4,'::1'),(132,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-03 16:48:20',1,4,'::1'),(133,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-03 16:51:46',1,4,'::1'),(134,'User [Hotel Shangrila Blu  ] Edit Successfully','2023-09-03 17:44:39',1,4,'::1'),(135,'Popup \'sdad\' has added successfully.','2023-09-03 17:44:58',1,3,'::1'),(136,'Slideshow [Exterior] Edit Successfully','2023-09-03 17:53:20',1,4,'::1'),(137,'Slideshow [Exterior] Edit Successfully','2023-09-03 17:54:35',1,4,'::1'),(138,'Slideshow [By Ace Hotel] Edit Successfully','2023-09-03 17:55:07',1,4,'::1'),(139,'Slideshow [By Ace Hotel] Edit Successfully','2023-09-03 17:56:34',1,4,'::1'),(140,'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.','2023-09-03 20:17:48',1,4,'::1'),(141,'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.','2023-09-03 20:22:12',1,4,'::1'),(142,'Gallery Image  [Home page]Data has deleted successfully.','2023-09-03 20:26:24',1,6,'::1'),(143,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:26',1,6,'::1'),(144,'Gallery Image  [Hotel]Data has deleted successfully.','2023-09-03 20:26:26',1,6,'::1'),(145,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:28',1,6,'::1'),(146,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:28',1,6,'::1'),(147,'Gallery Image  [Rooms]Data has deleted successfully.','2023-09-03 20:26:28',1,6,'::1'),(148,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:30',1,6,'::1'),(149,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:30',1,6,'::1'),(150,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:30',1,6,'::1'),(151,'Gallery Image  [Dining]Data has deleted successfully.','2023-09-03 20:26:30',1,6,'::1'),(152,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:32',1,6,'::1'),(153,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:32',1,6,'::1'),(154,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:32',1,6,'::1'),(155,'Gallery Image  []Data has deleted successfully.','2023-09-03 20:26:32',1,6,'::1'),(156,'Gallery Image  [Event Hall]Data has deleted successfully.','2023-09-03 20:26:32',1,6,'::1'),(157,'Blog  [test 1]Data has deleted successfully.','2023-09-03 20:26:38',1,6,'::1'),(158,'Blog  []Data has deleted successfully.','2023-09-03 20:26:40',1,6,'::1'),(159,'Blog  [Festivals in Lalitpur]Data has deleted successfully.','2023-09-03 20:26:40',1,6,'::1'),(160,'Blog  []Data has deleted successfully.','2023-09-03 20:26:42',1,6,'::1'),(161,'Blog  []Data has deleted successfully.','2023-09-03 20:26:42',1,6,'::1'),(162,'Blog  [History of Shangrila Blu]Data has deleted successfully.','2023-09-03 20:26:42',1,6,'::1'),(163,'User [ClubHimalaya  ] Edit Successfully','2023-09-03 20:27:05',1,4,'::1'),(164,'Login: ClubHimalaya   logged in.','2023-09-03 20:27:10',1,1,'::1'),(165,'Services [Panoramic Views]Data has added successfully.','2023-09-03 20:41:45',1,3,'::1'),(166,'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.','2023-09-03 20:44:24',1,4,'::1'),(167,'Sub Package \'asd\' has added successfully.','2023-09-03 20:51:34',1,3,'::1'),(168,'Sub Package [asd]Data has deleted successfully.','2023-09-03 20:51:50',1,6,'::1'),(169,'Changes on Sub Package \'Super Deluxe King Room\' has been saved successfully.','2023-09-03 20:51:54',1,4,'::1'),(170,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-09-03 21:04:29',1,4,'::1'),(171,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-09-03 21:06:24',1,4,'::1'),(172,'Login: ClubHimalaya   logged in.','2023-09-04 10:28:34',1,1,'27.34.84.147'),(173,'Login: ClubHimalaya   logged in.','2023-09-04 11:53:03',1,1,'27.34.84.147'),(174,'Blog [Brief On Club Himalaya]Data has added successfully.','2023-09-04 11:54:01',1,3,'27.34.84.147'),(175,'Blog [Excursions to nearby places]Data has added successfully.','2023-09-04 11:54:38',1,3,'27.34.84.147'),(176,'Blog [Places-of-interest]Data has added successfully.','2023-09-04 11:55:59',1,3,'27.34.84.147'),(177,'Blog [test 1]Data has added successfully.','2023-09-04 11:56:28',1,3,'27.34.84.147'),(178,'Blog [qwseasdas]Data has added successfully.','2023-09-04 12:25:01',1,3,'27.34.84.147'),(179,'Services  [All Cards Accepted]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(180,'Services  [Doctor on Call]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(181,'Services  [Currency Exchange]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(182,'Services  [Event Halls]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(183,'Services  [Electricity Backup]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(184,'Services  [Hot & Cold Water]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(185,'Services  [Safe Locker]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(186,'Services  [Laundry Service]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(187,'Services  [International Standard A/C Rooms]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(188,'Services  [Daily House Keeping]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(189,'Services  [Mini-Bar<br>on request]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(190,'Services  [Underground Parking]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(191,'Services  [Multi Cuisine Restaurant]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(192,'Services  [Healthy Breakfast]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(193,'Services  [Luggage Storage]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(194,'Services  [24hrs Reception]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(195,'Services  [Fire extinguisher]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(196,'Services  [Free WiFi]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(197,'Services  [Garden View]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(198,'Services  [Elevator]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(199,'Services  [Room Service]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(200,'Services  [24hrs Checkin]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(201,'Services  [Airport pickup]Data has deleted successfully.','2023-09-04 12:29:40',1,6,'27.34.84.147'),(202,'Services [Breakfast]Data has added successfully.','2023-09-04 12:30:30',1,3,'27.34.84.147'),(203,'Services [Room Services]Data has added successfully.','2023-09-04 12:30:46',1,3,'27.34.84.147'),(204,'Services [Free WiFi]Data has added successfully.','2023-09-04 12:31:01',1,3,'27.34.84.147'),(205,'Services [Air-Conditioner]Data has added successfully.','2023-09-04 12:31:18',1,3,'27.34.84.147'),(206,'Services [Bathtub]Data has added successfully.','2023-09-04 12:31:39',1,3,'27.34.84.147'),(207,'Services [Coffee Maker]Data has added successfully.','2023-09-04 12:31:56',1,3,'27.34.84.147'),(208,'Services [24hrs Front-desk]Data has added successfully.','2023-09-04 12:32:09',1,3,'27.34.84.147'),(209,'Services [Safety Deposite Box]Data has added successfully.','2023-09-04 12:32:28',1,3,'27.34.84.147'),(210,'Services [Free Parking]Data has added successfully.','2023-09-04 12:32:53',1,3,'27.34.84.147'),(211,'Services [Spa]Data has added successfully.','2023-09-04 12:33:08',1,3,'27.34.84.147'),(212,'Services [Pool/Hot Tub]Data has added successfully.','2023-09-04 12:33:33',1,3,'27.34.84.147'),(213,'Services [EV Charging station]Data has added successfully.','2023-09-04 12:33:47',1,3,'27.34.84.147'),(214,'Services [Iron/Iron Boar]Data has added successfully.','2023-09-04 12:34:10',1,3,'27.34.84.147'),(215,'Services [Pick/Drop]Data has added successfully.','2023-09-04 12:34:43',1,3,'27.34.84.147'),(216,'Services [Meeting Hall]Data has added successfully.','2023-09-04 12:35:00',1,3,'27.34.84.147'),(217,'Services [Mini-bar In Suites]Data has added successfully.','2023-09-04 12:35:15',1,3,'27.34.84.147'),(218,'Services [Room Slippers]Data has added successfully.','2023-09-04 12:35:29',1,3,'27.34.84.147'),(219,'Services [Hair Dryer]Data has added successfully.','2023-09-04 12:35:46',1,3,'27.34.84.147'),(220,'Services [LED Tv]Data has added successfully.','2023-09-04 12:35:57',1,3,'27.34.84.147'),(221,'Changes on Sub Package \'Junior Suite\' has been saved successfully.','2023-09-04 12:38:43',1,4,'27.34.84.147'),(222,'SubPackage Gallery Image [del]Data has deleted successfully.','2023-09-04 12:39:18',1,6,'27.34.84.147'),(223,'SubPackage Gallery Image [del]Data has deleted successfully.','2023-09-04 12:39:21',1,6,'27.34.84.147'),(224,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:39:21',1,6,'27.34.84.147'),(225,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:39:24',1,6,'27.34.84.147'),(226,'SubPackage Gallery Image [del]Data has deleted successfully.','2023-09-04 12:39:24',1,6,'27.34.84.147'),(227,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:39:24',1,6,'27.34.84.147'),(228,'Sub Package Image [j]Data has added successfully.','2023-09-04 12:39:46',1,3,'27.34.84.147'),(229,'Sub Package Image [j]Data has added successfully.','2023-09-04 12:39:46',1,3,'27.34.84.147'),(230,'Sub Package Image [j]Data has added successfully.','2023-09-04 12:39:46',1,3,'27.34.84.147'),(231,'Menu [Junior Suite] Edit Successfully','2023-09-04 12:41:15',1,4,'27.34.84.147'),(232,'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.','2023-09-04 12:41:59',1,6,'27.34.84.147'),(233,'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.','2023-09-04 12:42:09',1,6,'27.34.84.147'),(234,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:09',1,6,'27.34.84.147'),(235,'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.','2023-09-04 12:42:12',1,6,'27.34.84.147'),(236,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:12',1,6,'27.34.84.147'),(237,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:12',1,6,'27.34.84.147'),(238,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:15',1,6,'27.34.84.147'),(239,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:15',1,6,'27.34.84.147'),(240,'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.','2023-09-04 12:42:15',1,6,'27.34.84.147'),(241,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:15',1,6,'27.34.84.147'),(242,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:18',1,6,'27.34.84.147'),(243,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:18',1,6,'27.34.84.147'),(244,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:18',1,6,'27.34.84.147'),(245,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 12:42:18',1,6,'27.34.84.147'),(246,'SubPackage Gallery Image [Deluxe Queen Room]Data has deleted successfully.','2023-09-04 12:42:18',1,6,'27.34.84.147'),(247,'Sub Package Image [dep]Data has added successfully.','2023-09-04 12:42:45',1,3,'27.34.84.147'),(248,'Sub Package Image [dep]Data has added successfully.','2023-09-04 12:42:45',1,3,'27.34.84.147'),(249,'Sub Package Image [dep]Data has added successfully.','2023-09-04 12:42:45',1,3,'27.34.84.147'),(250,'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.','2023-09-04 12:44:20',1,4,'27.34.84.147'),(251,'Menu [Deluxe premium Room] Edit Successfully','2023-09-04 12:45:01',1,4,'27.34.84.147'),(252,'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.','2023-09-04 12:45:32',1,4,'27.34.84.147'),(253,'Changes on Sub Package \'Deluxe Room\' has been saved successfully.','2023-09-04 12:49:30',1,4,'27.34.84.147'),(254,'Sub Package \'Standard Room\' has added successfully.','2023-09-04 12:51:09',1,3,'27.34.84.147'),(255,'Features [Coffee/ Tea Maker] Edit Successfully','2023-09-04 12:52:15',1,4,'27.34.84.147'),(256,'Features [Bathrobe & slippers] Edit Successfully','2023-09-04 12:52:49',1,4,'27.34.84.147'),(257,'Features [House Keeping] Edit Successfully','2023-09-04 12:53:04',1,4,'27.34.84.147'),(258,'Features [Flat screen TV] Edit Successfully','2023-09-04 12:53:24',1,4,'27.34.84.147'),(259,'Features [Shower-bathtub combination] Edit Successfully','2023-09-04 12:53:41',1,4,'27.34.84.147'),(260,'Features [In Room Safe (Locker)] Edit Successfully','2023-09-04 12:54:01',1,4,'27.34.84.147'),(261,'Features [Free Wi-Fi] Edit Successfully','2023-09-04 12:54:19',1,4,'27.34.84.147'),(262,'Features [No Smoking] Edit Successfully','2023-09-04 12:54:36',1,4,'27.34.84.147'),(263,'Features [Toiletriesi] Edit Successfully','2023-09-04 12:55:06',1,4,'27.34.84.147'),(264,'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.','2023-09-04 12:56:46',1,4,'27.34.84.147'),(265,'Sub Package \'Lalitpur Hall\' has added successfully.','2023-09-04 12:57:42',1,3,'27.34.84.147'),(266,'Sub Package Image [a]Data has added successfully.','2023-09-04 12:58:24',1,3,'27.34.84.147'),(267,'Sub Package Image [a]Data has added successfully.','2023-09-04 12:58:24',1,3,'27.34.84.147'),(268,'Sub Package \'Indrawati Bar\' has added successfully.','2023-09-04 12:59:53',1,3,'27.34.84.147'),(269,'Sub Package Image [s]Data has added successfully.','2023-09-04 13:00:16',1,3,'27.34.84.147'),(270,'Sub Package Image [s]Data has added successfully.','2023-09-04 13:00:16',1,3,'27.34.84.147'),(271,'SubPackage Gallery Image [k]Data has deleted successfully.','2023-09-04 13:00:23',1,6,'27.34.84.147'),(272,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 13:00:26',1,6,'27.34.84.147'),(273,'SubPackage Gallery Image [k]Data has deleted successfully.','2023-09-04 13:00:26',1,6,'27.34.84.147'),(274,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 13:00:29',1,6,'27.34.84.147'),(275,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-04 13:00:29',1,6,'27.34.84.147'),(276,'SubPackage Gallery Image [k]Data has deleted successfully.','2023-09-04 13:00:29',1,6,'27.34.84.147'),(277,'Sub Package Image [a]Data has added successfully.','2023-09-04 13:00:44',1,3,'27.34.84.147'),(278,'Sub Package Image [a]Data has added successfully.','2023-09-04 13:00:44',1,3,'27.34.84.147'),(279,'Gallery [rooms]Data has added successfully.','2023-09-04 13:01:57',1,3,'27.34.84.147'),(280,'Sub Gallery Image [a]Data has added successfully.','2023-09-04 13:02:18',1,3,'27.34.84.147'),(281,'Sub Gallery Image [a]Data has added successfully.','2023-09-04 13:02:18',1,3,'27.34.84.147'),(282,'Sub Gallery Image [a]Data has added successfully.','2023-09-04 13:02:18',1,3,'27.34.84.147'),(283,'Sub Gallery Image [a]Data has added successfully.','2023-09-04 13:02:18',1,3,'27.34.84.147'),(284,'Sub Gallery Image [a]Data has added successfully.','2023-09-04 13:02:18',1,3,'27.34.84.147'),(285,'Sub Gallery Image [a]Data has added successfully.','2023-09-04 13:02:18',1,3,'27.34.84.147'),(286,'Gallery [restaurant]Data has added successfully.','2023-09-04 13:02:43',1,3,'27.34.84.147'),(287,'Sub Gallery Image [e]Data has added successfully.','2023-09-04 13:03:18',1,3,'27.34.84.147'),(288,'Sub Gallery Image [e]Data has added successfully.','2023-09-04 13:03:18',1,3,'27.34.84.147'),(289,'Sub Gallery Image [e]Data has added successfully.','2023-09-04 13:03:18',1,3,'27.34.84.147'),(290,'Gallery [hall]Data has added successfully.','2023-09-04 13:03:45',1,3,'27.34.84.147'),(291,'Sub Gallery Image [d]Data has added successfully.','2023-09-04 13:03:57',1,3,'27.34.84.147'),(292,'Sub Gallery Image [d]Data has added successfully.','2023-09-04 13:03:57',1,3,'27.34.84.147'),(293,'Sub Gallery Image [d]Data has added successfully.','2023-09-04 13:03:57',1,3,'27.34.84.147'),(294,'Gallery [Recreation]Data has added successfully.','2023-09-04 13:04:17',1,3,'27.34.84.147'),(295,'Sub Gallery Image [e]Data has added successfully.','2023-09-04 13:04:35',1,3,'27.34.84.147'),(296,'Sub Gallery Image [e]Data has added successfully.','2023-09-04 13:04:35',1,3,'27.34.84.147'),(297,'Sub Gallery Image [e]Data has added successfully.','2023-09-04 13:04:35',1,3,'27.34.84.147'),(298,'Vacency [Painter / Plumber] Edit Successfully','2023-09-04 13:06:56',1,4,'27.34.84.147'),(299,'Vacency [Asst. Laundry Manager] Edit Successfully','2023-09-04 13:07:16',1,4,'27.34.84.147'),(300,'Vacency  [Intern]Data has deleted successfully.','2023-09-04 13:07:21',1,6,'27.34.84.147'),(301,'Vacency [Sales Executive] Edit Successfully','2023-09-04 13:07:33',1,4,'27.34.84.147'),(302,'Changes on Sub Package \'Standard Room\' has been saved successfully.','2023-09-04 13:09:33',1,4,'27.34.84.147'),(303,'Changes on Sub Package \'Deluxe Room\' has been saved successfully.','2023-09-04 13:10:08',1,4,'27.34.84.147'),(304,'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.','2023-09-04 13:10:45',1,4,'27.34.84.147'),(305,'Changes on Sub Package \'Junior Suite\' has been saved successfully.','2023-09-04 13:11:12',1,4,'27.34.84.147'),(306,'Article \'Children Play Area Indoor & Outdoor\' has added successfully.','2023-09-04 13:12:47',1,3,'27.34.84.147'),(307,'Changes on Article \'Children Play Area Indoor & Outdoor\' has been saved successfully.','2023-09-04 13:18:43',1,4,'27.34.84.147'),(308,'Testimonial [Rebecca] Edit Successfully','2023-09-04 13:21:07',1,4,'27.34.84.147'),(309,'Testimonial [WIRAEN - MALAYSIA] Edit Successfully','2023-09-04 13:21:41',1,4,'27.34.84.147'),(310,'Testimonial [WIRAEN - MALAYSIA] Edit Successfully','2023-09-04 13:22:19',1,4,'27.34.84.147'),(311,'Article \'Nagarkot View Tower\' has added successfully.','2023-09-04 13:25:10',1,3,'27.34.84.147'),(312,'Article \'Mahankal Temple\' has added successfully.','2023-09-04 13:26:09',1,3,'27.34.84.147'),(313,'Article \'Santi stupa\' has added successfully.','2023-09-04 13:26:55',1,3,'27.34.84.147'),(314,'Article \'Changu Narayan Temple\' has added successfully.','2023-09-04 13:27:35',1,3,'27.34.84.147'),(315,'Article \'Dhulikhel\' has added successfully.','2023-09-04 13:28:02',1,3,'27.34.84.147'),(316,'Article \'Bhaktapur\' has added successfully.','2023-09-04 13:28:33',1,3,'27.34.84.147'),(317,'Changes on Article \'Bhaktapur\' has been saved successfully.','2023-09-04 13:29:17',1,4,'27.34.84.147'),(318,'Login: ClubHimalaya   logged in.','2023-09-04 14:52:09',1,1,'27.34.2.119'),(319,'Login: ClubHimalaya   logged in.','2023-09-04 17:33:42',1,1,'27.34.2.119'),(320,'Menu [ABOUT US] Edit Successfully','2023-09-04 17:33:54',1,4,'27.34.2.119'),(321,'Menu [ABOUT US] Edit Successfully','2023-09-04 17:34:22',1,4,'27.34.2.119'),(322,'Login: ClubHimalaya   logged in.','2023-09-06 15:41:32',1,1,'27.34.64.16'),(323,'Login: ClubHimalaya   logged in.','2023-09-15 11:20:48',1,1,'103.10.29.84'),(324,'FAQ [test]Data has deleted successfully.','2023-09-15 11:21:12',1,6,'103.10.29.84'),(325,'Changes on FAQ \'What are the amenities and facilities in the hotel?\' has been saved successfully.','2023-09-15 11:21:34',1,4,'103.10.29.84'),(326,'Changes on FAQ \'What are the activities guests can enjoy?\' has been saved successfully.','2023-09-15 11:22:01',1,4,'103.10.29.84'),(327,'Changes on FAQ \'What are the services available?\' has been saved successfully.','2023-09-15 11:22:25',1,4,'103.10.29.84'),(328,'FAQ \'Internet\' has added successfully.','2023-09-15 11:22:44',1,3,'103.10.29.84'),(329,'FAQ \'Parking\' has added successfully.','2023-09-15 11:23:01',1,3,'103.10.29.84'),(330,'FAQ \'How do I get to the hotel?\' has added successfully.','2023-09-15 11:23:55',1,3,'103.10.29.84'),(331,'FAQ \'What are the things to do in Nagarkot?\' has added successfully.','2023-09-15 11:24:12',1,3,'103.10.29.84'),(332,'FAQ \'We guarantee\' has added successfully.','2023-09-15 11:24:26',1,3,'103.10.29.84'),(333,'FAQ \'What are the accepted credit cards?\' has added successfully.','2023-09-15 11:24:38',1,3,'103.10.29.84'),(334,'FAQ \'Pets\' has added successfully.','2023-09-15 11:24:49',1,3,'103.10.29.84'),(335,'FAQ \'What are the Hotel Policies?\' has added successfully.','2023-09-15 11:25:00',1,3,'103.10.29.84'),(336,'FAQ \'When is the best time to visit?\' has added successfully.','2023-09-15 11:25:11',1,3,'103.10.29.84'),(337,'FAQ \'What is the weather in Nagarkot like ?\' has added successfully.','2023-09-15 11:25:23',1,3,'103.10.29.84'),(338,'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.','2023-09-15 11:27:35',1,4,'103.10.29.84'),(339,'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.','2023-09-15 11:28:20',1,4,'103.10.29.84'),(340,'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.','2023-09-15 11:29:40',1,4,'103.10.29.84'),(341,'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.','2023-09-15 11:30:43',1,4,'103.10.29.84'),(342,'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.','2023-09-15 11:31:45',1,4,'103.10.29.84'),(343,'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.','2023-09-15 11:33:30',1,4,'103.10.29.84'),(344,'Changes on FAQ \'What are the Hotel Policies?\' has been saved successfully.','2023-09-15 11:34:04',1,4,'103.10.29.84'),(345,'Menu [Deluxe Room] Edit Successfully','2023-09-15 11:38:50',1,4,'103.10.29.84'),(346,'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.','2023-09-15 11:39:18',1,6,'103.10.29.84'),(347,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:21',1,6,'103.10.29.84'),(348,'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.','2023-09-15 11:39:21',1,6,'103.10.29.84'),(349,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:24',1,6,'103.10.29.84'),(350,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:24',1,6,'103.10.29.84'),(351,'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.','2023-09-15 11:39:24',1,6,'103.10.29.84'),(352,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:27',1,6,'103.10.29.84'),(353,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:28',1,6,'103.10.29.84'),(354,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:28',1,6,'103.10.29.84'),(355,'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.','2023-09-15 11:39:28',1,6,'103.10.29.84'),(356,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:30',1,6,'103.10.29.84'),(357,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:30',1,6,'103.10.29.84'),(358,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:30',1,6,'103.10.29.84'),(359,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:30',1,6,'103.10.29.84'),(360,'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.','2023-09-15 11:39:30',1,6,'103.10.29.84'),(361,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:33',1,6,'103.10.29.84'),(362,'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.','2023-09-15 11:39:33',1,6,'103.10.29.84'),(363,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:33',1,6,'103.10.29.84'),(364,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:33',1,6,'103.10.29.84'),(365,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:33',1,6,'103.10.29.84'),(366,'SubPackage Gallery Image []Data has deleted successfully.','2023-09-15 11:39:33',1,6,'103.10.29.84'),(367,'Sub Package Image [deluxe]Data has added successfully.','2023-09-15 11:40:40',1,3,'103.10.29.84'),(368,'Sub Package Image [delxue]Data has added successfully.','2023-09-15 11:40:40',1,3,'103.10.29.84'),(369,'Sub Package Image [deluxe]Data has added successfully.','2023-09-15 11:40:40',1,3,'103.10.29.84'),(370,'Changes on Sub Package \'Deluxe Room\' has been saved successfully.','2023-09-15 11:42:06',1,4,'103.10.29.84'),(371,'Changes on Sub Package \'Deluxe Room\' has been saved successfully.','2023-09-15 11:44:10',1,4,'103.10.29.84'),(372,'Changes on Sub Package \'Deluxe Room\' has been saved successfully.','2023-09-15 11:45:21',1,4,'103.10.29.84'),(373,'Changes on Sub Package \'Standard Room\' has been saved successfully.','2023-09-15 11:45:47',1,4,'103.10.29.84'),(374,'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.','2023-09-15 11:46:31',1,4,'103.10.29.84'),(375,'Changes on Sub Package \'Junior Suite\' has been saved successfully.','2023-09-15 11:47:11',1,4,'103.10.29.84'),(376,'Package Rooms Edit Successfully','2023-09-15 11:59:06',1,4,'103.10.29.84'),(377,'Blog [Brief On Club Himalaya] Edit Successfully','2023-09-15 12:04:11',1,4,'103.10.29.84'),(378,'Testimonial [Andrew Parker - Writer] Edit Successfully','2023-09-15 12:08:45',1,4,'103.10.29.84'),(379,'Testimonial [Greg. S - Wagga] Edit Successfully','2023-09-15 12:09:02',1,4,'103.10.29.84'),(380,'Testimonial [Andrew Parker - writer] Edit Successfully','2023-09-15 12:10:59',1,4,'103.10.29.84'),(381,'Menu [ABOUT US] Edit Successfully','2023-09-15 12:27:48',1,4,'103.10.29.84'),(382,'Login: ClubHimalaya   logged in.','2023-09-15 12:44:06',1,1,'27.34.64.76'),(383,'Login: ClubHimalaya   logged in.','2023-09-17 12:46:18',1,1,'27.34.76.145'),(384,'Sub Package Image [standard]Data has added successfully.','2023-09-17 12:48:42',1,3,'27.34.76.145'),(385,'Sub Package Image [standard]Data has added successfully.','2023-09-17 12:48:42',1,3,'27.34.76.145'),(386,'Sub Package Image [standard]Data has added successfully.','2023-09-17 12:48:42',1,3,'27.34.76.145'),(387,'Login: ClubHimalaya   logged in.','2023-09-17 13:55:22',1,1,'27.34.76.150'),(388,'Testimonial [Andrew Parker - writer] Edit Successfully','2023-09-17 13:55:38',1,4,'27.34.76.150'),(389,'Testimonial [Andrew Parker] Edit Successfully','2023-09-17 13:55:47',1,4,'27.34.76.150'),(390,'Testimonial [Greg. S ] Edit Successfully','2023-09-17 13:57:54',1,4,'27.34.76.150'),(391,'Testimonial [WIRAEN] Edit Successfully','2023-09-17 13:58:08',1,4,'27.34.76.150'),(392,'Login: ClubHimalaya   logged in.','2023-09-17 17:11:07',1,1,'27.34.76.150'),(393,'Sub Package \'Library\' has added successfully.','2023-09-17 17:15:37',1,3,'27.34.76.150'),(394,'Sub Package Image [kli]Data has added successfully.','2023-09-17 17:16:29',1,3,'27.34.76.150'),(395,'SubPackage Gallery Image [kli]Data has deleted successfully.','2023-09-17 17:16:36',1,6,'27.34.76.150'),(396,'Sub Package Image [lib]Data has added successfully.','2023-09-17 17:18:17',1,3,'27.34.76.150'),(397,'Sub Package Image [lib]Data has added successfully.','2023-09-17 17:18:17',1,3,'27.34.76.150'),(398,'Blog [Nagarkot Nepal ]Data has added successfully.','2023-09-17 17:22:38',1,3,'27.34.76.150'),(399,'Blog [Nagarkot Nepal ] Edit Successfully','2023-09-17 17:24:15',1,4,'27.34.76.150'),(400,'Blog [Nagarkot Nepal ] Edit Successfully','2023-09-17 17:24:40',1,4,'27.34.76.150'),(401,'Blog [Nagarkot Nepal ] Edit Successfully','2023-09-17 17:25:39',1,4,'27.34.76.150'),(402,'Blog [Nagarkot Nepal ] Edit Successfully','2023-09-17 17:26:22',1,4,'27.34.76.150'),(403,'Blog [Nagarkot Nepal ] Edit Successfully','2023-09-17 17:27:26',1,4,'27.34.76.150'),(404,'Login: ClubHimalaya   logged in.','2023-09-18 08:28:10',1,1,'27.34.76.150'),(405,'Menu [Standard Room] CreatedData has added successfully.','2023-09-18 08:35:32',1,3,'27.34.76.150'),(406,'Changes on Article \'about us home page\' has been saved successfully.','2023-09-18 08:57:44',1,4,'27.34.76.150'),(407,'Changes on Article \'about us home page\' has been saved successfully.','2023-09-18 08:58:00',1,4,'27.34.76.150'),(408,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-09-18 08:58:08',1,4,'27.34.76.150'),(409,'Login: ClubHimalaya   logged in.','2023-09-18 09:30:13',1,1,'27.34.76.150'),(410,'Login: ClubHimalaya   logged in.','2023-09-18 10:34:46',1,1,'27.34.76.150'),(411,'Login: ClubHimalaya   logged in.','2023-09-19 09:59:36',1,1,'27.34.76.167'),(412,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-19 10:04:06',1,4,'27.34.76.167'),(413,'Login: ClubHimalaya   logged in.','2023-09-19 17:49:22',1,1,'27.34.76.164'),(414,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-19 17:53:16',1,4,'27.34.76.164'),(415,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-19 17:54:33',1,4,'27.34.76.164'),(416,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-19 17:56:15',1,4,'27.34.76.164'),(417,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-19 17:57:25',1,4,'27.34.76.164'),(418,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-19 18:05:13',1,4,'27.34.76.164'),(419,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-19 18:06:00',1,4,'27.34.76.164'),(420,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-19 18:06:34',1,4,'27.34.76.164'),(421,'Login: ClubHimalaya   logged in.','2023-09-21 08:19:17',1,1,'27.34.76.158'),(422,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-21 08:21:01',1,4,'27.34.76.158'),(423,'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.','2023-09-21 08:21:37',1,4,'27.34.76.158'),(424,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-21 08:22:34',1,4,'27.34.76.158'),(425,'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.','2023-09-21 08:23:21',1,4,'27.34.76.158'),(426,'Changes on Sub Package \'Library\' has been saved successfully.','2023-09-21 08:23:59',1,4,'27.34.76.158'),(427,'Changes on Sub Package \'Library\' has been saved successfully.','2023-09-21 08:24:48',1,4,'27.34.76.158'),(428,'Changes on Sub Package \'Nagarkot Hall\' has been saved successfully.','2023-09-21 08:25:25',1,4,'27.34.76.158'),(429,'Changes on Sub Package \'Lalitpur Hall\' has been saved successfully.','2023-09-21 08:27:48',1,4,'27.34.76.158'),(430,'Changes on Sub Package \'Bhaktapur Hall\' has been saved successfully.','2023-09-21 08:28:11',1,4,'27.34.76.158'),(431,'Login: ClubHimalaya   logged in.','2023-10-16 14:28:42',1,1,'27.34.64.117'),(432,'Changes on Article \'about us home page\' has been saved successfully.','2023-10-16 14:34:55',1,4,'27.34.64.117'),(433,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-10-16 14:35:27',1,4,'27.34.64.117'),(434,'Changes on Article \'about us home page\' has been saved successfully.','2023-10-16 14:37:06',1,4,'27.34.64.117'),(435,'Menu [ABOUT US] Edit Successfully','2023-10-16 14:37:47',1,4,'27.34.64.117'),(436,'Changes on Article \'about us\' has been saved successfully.','2023-10-16 14:38:47',1,4,'27.34.64.117'),(437,'Menu [ABOUT US] Edit Successfully','2023-10-16 14:39:05',1,4,'27.34.64.117'),(438,'Changes on Article \'about us\' has been saved successfully.','2023-10-16 14:39:34',1,4,'27.34.64.117'),(439,'Changes on Article \'welcome To Club Himalaya\' has been saved successfully.','2023-10-16 14:39:52',1,4,'27.34.64.117'),(440,'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.','2023-10-16 14:42:11',1,4,'27.34.64.117'),(441,'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.','2023-10-16 14:42:35',1,4,'27.34.64.117'),(442,'Changes on Main service \'Children Play Area Indoor & Outdoor\' has been saved successfully.','2023-10-16 14:42:54',1,4,'27.34.64.117'),(443,'Login: ClubHimalaya   logged in.','2023-10-17 13:12:04',1,1,'27.34.64.117'),(444,'Article \'Exceptional Experiences\' has added successfully.','2023-10-17 13:56:59',1,3,'27.34.64.117'),(445,'Testimonial [Greg. S ] Edit Successfully','2023-10-17 13:58:48',1,4,'27.34.64.117'),(446,'Changes on Article \'Exceptional Experiences\' has been saved successfully.','2023-10-17 14:01:43',1,4,'27.34.64.117'),(447,'Changes on Article \'Exceptional Experiences\' has been saved successfully.','2023-10-17 14:04:07',1,4,'27.34.64.117'),(448,'Login: ClubHimalaya   logged in.','2023-10-17 14:06:04',1,1,'27.34.76.163'),(449,'Login: ClubHimalaya   logged in.','2023-10-20 08:23:42',1,1,'27.34.76.176'),(450,'Slideshow [By Ace Hotel] Edit Successfully','2023-10-20 08:50:04',1,4,'27.34.76.176'),(451,'Slideshow [By Ace Hotel] Edit Successfully','2023-10-20 08:50:11',1,4,'27.34.76.176'),(452,'Slideshow [By Ace Hotel] Edit Successfully','2023-10-20 08:51:20',1,4,'27.34.76.176'),(453,'Login: ClubHimalaya   logged in.','2023-10-29 13:52:56',1,1,'27.34.64.54'),(454,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-10-29 13:53:26',1,4,'27.34.64.54'),(455,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-10-29 13:53:48',1,4,'27.34.64.54'),(456,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-10-29 13:59:19',1,4,'27.34.64.54'),(457,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-10-29 14:15:31',1,4,'27.34.64.54'),(458,'Changes on FAQ \'What are the accepted credit cards?\' has been saved successfully.','2023-10-29 14:37:43',1,4,'27.34.64.54'),(459,'Changes on FAQ \'What are the accepted credit cards?\' has been saved successfully.','2023-10-29 14:38:12',1,4,'27.34.64.54'),(460,'Changes on FAQ \'We guarantee\' has been saved successfully.','2023-10-29 14:39:02',1,4,'27.34.64.54'),(461,'Changes on FAQ \'What are the things to do in Nagarkot?\' has been saved successfully.','2023-10-29 14:39:55',1,4,'27.34.64.54'),(462,'Article \'Partners\' has added successfully.','2023-10-29 14:41:53',1,3,'27.34.64.54'),(463,'Menu [Our Partners] Edit Successfully','2023-10-29 14:42:22',1,4,'27.34.64.54'),(464,'Menu [FAQ\'s] Edit Successfully','2023-10-29 14:42:46',1,4,'27.34.64.54'),(465,'Changes on Article \'Partners\' has been saved successfully.','2023-10-29 14:43:46',1,4,'27.34.64.54'),(466,'Article \'Enhanced Safety\' has added successfully.','2023-10-29 14:46:24',1,3,'27.34.64.54'),(467,'Menu [Enhanced Safety] Edit Successfully','2023-10-29 14:46:57',1,4,'27.34.64.54'),(468,'Changes on Article \'Enhanced Safety\' has been saved successfully.','2023-10-29 14:48:23',1,4,'27.34.64.54'),(469,'Blog [Brief On Club Himalaya] Edit Successfully','2023-10-29 14:50:39',1,4,'27.34.64.54'),(470,'Blog [Nagarkot Nepal ] Edit Successfully','2023-10-29 14:52:40',1,4,'27.34.64.54'),(471,'Login: ClubHimalaya   logged in.','2023-10-30 09:21:27',1,1,'27.34.76.183'),(472,'User [ClubHimalaya  ] Edit Successfully','2023-10-30 09:21:49',1,4,'27.34.76.183'),(473,'Login: ClubHimalaya   logged in.','2023-10-30 10:54:57',1,1,'27.34.0.5'),(474,'Login: ClubHimalaya   logged in.','2023-10-30 13:48:32',1,1,'27.34.0.5'),(475,'Changes on Main service \'SPA\' has been saved successfully.','2023-10-30 13:50:58',1,4,'27.34.0.5'),(476,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-10-30 13:53:17',1,4,'27.34.0.5'),(477,'Login: ClubHimalaya   logged in.','2023-10-30 14:07:44',1,1,'27.34.64.54'),(478,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-10-30 14:08:16',1,4,'27.34.0.5'),(479,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-10-30 14:08:34',1,4,'27.34.64.54'),(480,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-10-30 14:09:39',1,4,'27.34.64.54'),(481,'Slideshow [By Ace Hotel] Edit Successfully','2023-10-30 14:17:37',1,4,'27.34.0.5'),(482,'Slideshow [By Ace Hotel] Edit Successfully','2023-10-30 14:17:51',1,4,'27.34.0.5'),(483,'Changes on Article \'about us\' has been saved successfully.','2023-10-30 14:24:08',1,4,'27.34.64.54'),(484,'Changes on Article \'about us\' has been saved successfully.','2023-10-30 14:24:31',1,4,'27.34.64.54'),(485,'Login: ClubHimalaya   logged in.','2023-10-30 14:24:34',1,1,'27.34.64.193'),(486,'Changes on Article \'about us\' has been saved successfully.','2023-10-30 14:24:50',1,4,'27.34.64.54'),(487,'SocialNetworking [Facebook] Edit Successfully','2023-10-30 14:30:21',1,4,'27.34.0.5'),(488,'Changes on Main service \'SPA\' has been saved successfully.','2023-10-30 14:38:13',1,4,'27.34.0.5'),(489,'Changes on Main service \'SPA\' has been saved successfully.','2023-10-30 14:38:42',1,4,'27.34.0.5'),(490,'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.','2023-10-30 14:39:43',1,4,'27.34.64.193'),(491,'SubPackage Gallery Image []Data has deleted successfully.','2023-10-30 14:41:22',1,6,'27.34.64.193'),(492,'SubPackage Gallery Image []Data has deleted successfully.','2023-10-30 14:42:12',1,6,'27.34.0.5'),(493,'SubPackage Gallery Image []Data has deleted successfully.','2023-10-30 14:42:22',1,6,'27.34.0.5'),(494,'SubPackage Gallery Image []Data has deleted successfully.','2023-10-30 14:42:22',1,6,'27.34.0.5'),(495,'SubPackage Gallery Image []Data has deleted successfully.','2023-10-30 14:42:34',1,6,'27.34.0.5'),(496,'SubPackage Gallery Image []Data has deleted successfully.','2023-10-30 14:42:34',1,6,'27.34.0.5'),(497,'SubPackage Gallery Image []Data has deleted successfully.','2023-10-30 14:42:34',1,6,'27.34.0.5'),(498,'Vacency [HR post wanted]Data has added successfully.','2023-10-30 14:42:48',1,3,'27.34.0.5'),(499,'SubPackage Gallery Image []Data has deleted successfully.','2023-10-30 14:43:16',1,6,'27.34.64.193'),(500,'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.','2023-10-30 14:46:05',1,4,'27.34.64.193'),(501,'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.','2023-10-30 14:57:14',1,4,'27.34.64.193'),(502,'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.','2023-10-30 14:59:48',1,4,'27.34.64.193'),(503,'Login: ClubHimalaya   logged in.','2023-10-30 16:19:42',1,1,'27.34.64.193'),(504,'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.','2023-10-30 16:20:02',1,4,'27.34.64.193'),(505,'Login: ClubHimalaya   logged in.','2023-10-31 14:05:47',1,1,'27.34.64.54'),(506,'Login: ClubHimalaya   logged in.','2023-11-02 15:02:34',1,1,'27.34.64.4'),(507,'Changes on Article \'about us\' has been saved successfully.','2023-11-02 15:03:17',1,4,'27.34.64.4'),(508,'Menu [RESTAURANTS / BAR] Edit Successfully','2023-11-02 15:06:33',1,4,'27.34.64.4'),(509,'Menu [RESTAURANTS & BAR] Edit Successfully','2023-11-02 15:06:48',1,4,'27.34.64.4'),(510,'Package Dining Edit Successfully','2023-11-02 15:10:24',1,4,'27.34.64.4'),(511,'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.','2023-11-02 15:10:51',1,4,'27.34.64.4'),(512,'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.','2023-11-02 15:11:28',1,4,'27.34.64.4'),(513,'Login: ClubHimalaya   logged in.','2023-11-05 12:35:52',1,1,'163.53.26.226'),(514,'Package Dining Edit Successfully','2023-11-05 12:36:16',1,4,'163.53.26.226'),(515,'Package Dining Edit Successfully','2023-11-05 12:36:53',1,4,'163.53.26.226'),(516,'Package Dining Edit Successfully','2023-11-05 12:39:13',1,4,'163.53.26.226'),(517,'Package Dining Edit Successfully','2023-11-05 12:40:33',1,4,'163.53.26.226'),(518,'Changes on Sub Package \'Kantipur Restaurant\' has been saved successfully.','2023-11-05 12:43:48',1,4,'163.53.26.226'),(519,'Changes on Sub Package \'Indrawati Bar\' has been saved successfully.','2023-11-05 12:45:22',1,4,'163.53.26.226'),(520,'Login: ClubHimalaya   logged in.','2023-11-05 16:08:23',1,1,'113.199.255.222'),(521,'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.','2023-11-05 16:09:59',1,4,'113.199.255.222'),(522,'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.','2023-11-05 16:14:12',1,4,'113.199.255.222'),(523,'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.','2023-11-05 16:15:19',1,4,'113.199.255.222'),(524,'Changes on FAQ \'What is the weather in Nagarkot like ?\' has been saved successfully.','2023-11-05 16:28:05',1,4,'113.199.255.222'),(525,'Login: ClubHimalaya   logged in.','2023-11-09 07:49:33',1,1,'::1'),(526,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 08:05:04',1,4,'::1'),(527,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 08:09:56',1,4,'::1'),(528,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 08:19:06',1,4,'::1'),(529,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 10:38:20',1,4,'::1'),(530,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 10:38:30',1,4,'::1'),(531,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 10:38:38',1,4,'::1'),(532,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 10:44:08',1,4,'::1'),(533,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 10:52:23',1,4,'::1'),(534,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 10:52:34',1,4,'::1'),(535,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 10:52:53',1,4,'::1'),(536,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 11:01:21',1,4,'::1'),(537,'Login: ClubHimalaya   logged in.','2023-11-09 11:13:42',1,1,'::1'),(538,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 12:59:53',1,4,'::1'),(539,'Login: ClubHimalaya   logged in.','2023-11-09 13:14:02',1,1,'::1'),(540,'SocialNetworking [Facebook] Edit Successfully','2023-11-09 13:16:15',1,4,'::1'),(541,'SocialNetworking [Facebook] Edit Successfully','2023-11-09 13:18:59',1,4,'::1'),(542,'SocialNetworking [Twitter] Edit Successfully','2023-11-09 13:28:18',1,4,'::1'),(543,'SocialNetworking [Twitter] Edit Successfully','2023-11-09 13:28:26',1,4,'::1'),(544,'SocialNetworking [Twitter] Edit Successfully','2023-11-09 13:28:56',1,4,'::1'),(545,'SocialNetworking [Twitter] Edit Successfully','2023-11-09 13:29:31',1,4,'::1'),(546,'Login: ClubHimalaya   logged in.','2023-11-09 15:07:07',1,1,'::1'),(547,'Login: ClubHimalaya   logged in.','2023-11-09 15:10:05',1,1,'::1'),(548,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 15:15:15',1,4,'::1'),(549,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 15:20:22',1,4,'::1'),(550,'Package [asdasd]Data has added successfully.','2023-11-09 15:24:44',1,3,'::1'),(551,'Package asdasd Edit Successfully','2023-11-09 15:25:12',1,4,'::1'),(552,'Package asdasd Edit Successfully','2023-11-09 15:25:44',1,4,'::1'),(553,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 15:26:14',1,4,'::1'),(554,'Login: ClubHimalaya   logged in.','2023-11-09 15:41:26',1,1,'::1'),(555,'Login: Super admin   logged in.','2023-11-09 15:59:32',1,1,'::1'),(556,'Login: ClubHimalaya   logged in.','2023-11-09 16:05:26',1,1,'::1'),(557,'Login: ClubHimalaya   logged in.','2023-11-09 16:35:17',1,1,'::1'),(558,'Login: ClubHimalaya   logged in.','2023-11-09 16:39:40',1,1,'::1'),(559,'Login: Super admin   logged in.','2023-11-09 16:40:07',1,1,'::1'),(560,'User [Super admin  ] Edit Successfully','2023-11-09 16:48:42',1,4,'::1'),(561,'Login: Super admin   logged in.','2023-11-09 16:48:59',1,1,'::1'),(562,'Login: ClubHimalaya   logged in.','2023-11-09 16:55:28',1,1,'::1'),(563,'Changes on Article \'Enhanced Safety\' has been saved successfully.','2023-11-09 17:06:08',1,4,'::1'),(564,'Changes on Article \'about us\' has been saved successfully.','2023-11-09 17:06:28',1,4,'::1'),(565,'Changes on Article \'about us\' has been saved successfully.','2023-11-09 17:10:38',1,4,'::1'),(566,'Changes on Article \'about us\' has been saved successfully.','2023-11-09 17:12:25',1,4,'::1'),(567,'Changes on Article \'about us\' has been saved successfully.','2023-11-09 17:19:03',1,4,'::1'),(568,'Changes on Article \'about us\' has been saved successfully.','2023-11-09 17:20:06',1,4,'::1'),(569,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 17:41:56',1,4,'::1'),(570,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 17:42:04',1,4,'::1'),(571,'Login: ClubHimalaya   logged in.','2023-11-09 17:55:33',1,1,'::1'),(572,'Login: Super admin   logged in.','2023-11-09 17:56:29',1,1,'::1'),(573,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 17:58:44',1,4,'::1'),(574,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 18:05:05',1,4,'::1'),(575,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-09 18:05:15',1,4,'::1'),(576,'Login: ClubHimalaya   logged in.','2023-11-10 10:41:03',1,1,'::1'),(577,'Login: Super admin   logged in.','2023-11-10 10:42:06',1,1,'::1'),(578,'Login: ClubHimalaya   logged in.','2023-11-10 11:59:19',1,1,'::1'),(579,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-10 12:10:51',1,4,'::1'),(580,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-10 12:11:03',1,4,'::1'),(581,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-10 12:18:24',1,4,'::1'),(582,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-10 12:32:34',1,4,'::1'),(583,'Changes on Config \'Club Himalaya\' has been saved successfully.','2023-11-10 13:39:16',1,4,'::1'),(584,'Login: ClubHimalaya   logged in.','2023-11-11 12:24:05',1,1,'::1'),(585,'Login: Super admin   logged in.','2023-11-11 12:24:59',1,1,'::1'),(586,'User [ClubHimalaya  ] Edit Successfully','2023-11-11 12:25:10',1,4,'::1'),(587,'User [Super admin  ] Edit Successfully','2023-11-11 12:25:51',1,4,'::1'),(588,'ota [asdasdasd]Data has added successfully.','2023-11-11 12:27:21',1,3,'::1'),(589,'ota [booking.com]Data has added successfully.','2023-11-11 12:29:41',1,3,'::1'),(590,'ota [asd]Data has added successfully.','2023-11-11 12:31:50',1,3,'::1'),(591,'ota  [asdasdasd]Data has deleted successfully.','2023-11-11 12:31:59',1,6,'::1'),(592,'ota  [asdasdasd]Data has deleted successfully.','2023-11-11 12:31:59',1,6,'::1'),(593,'ota  []Data has deleted successfully.','2023-11-11 12:32:02',1,6,'::1'),(594,'ota  []Data has deleted successfully.','2023-11-11 12:32:02',1,6,'::1'),(595,'ota  [booking.com]Data has deleted successfully.','2023-11-11 12:32:02',1,6,'::1'),(596,'ota  [booking.com]Data has deleted successfully.','2023-11-11 12:32:02',1,6,'::1'),(597,'ota [booking.com] Edit Successfully','2023-11-11 12:32:27',1,4,'::1'),(598,'ota [agoda]Data has added successfully.','2023-11-11 12:32:45',1,3,'::1'),(599,'ota [booking] Edit Successfully','2023-11-11 12:32:54',1,4,'::1'),(600,'ota [expedia]Data has added successfully.','2023-11-11 12:33:12',1,3,'::1'),(601,'ota [tripadvisor]Data has added successfully.','2023-11-11 12:33:35',1,3,'::1'),(602,'ota [Make My Trip]Data has added successfully.','2023-11-11 12:33:56',1,3,'::1'),(603,'Login: ClubHimalaya   logged in.','2023-11-21 11:26:47',1,1,'::1'),(604,'Login: ClubHimalaya   logged in.','2023-11-21 11:42:05',1,1,'::1'),(605,'Slideshow [asdasdasdasd]Data has added successfully.','2023-11-21 11:55:43',1,3,'::1'),(606,'Login: ClubHimalaya   logged in.','2023-11-22 12:39:54',1,1,'::1'),(607,'Login: ClubHimalaya   logged in.','2023-11-29 19:11:14',1,1,'::1'),(608,'Login: ClubHimalaya   logged in.','2023-12-12 10:50:45',1,1,'::1'),(609,'Login: ClubHimalaya   logged in.','2024-01-08 14:49:51',1,1,'::1'),(610,'Login: ClubHimalaya   logged in.','2024-01-10 12:47:25',1,1,'::1'),(611,'Login: ClubHimalaya   logged in.','2024-01-10 12:47:40',1,1,'::1'),(612,'Login: ClubHimalaya   logged in.','2024-01-10 12:49:19',1,1,'::1'),(613,'Login: ClubHimalaya   logged in.','2024-01-10 12:51:17',1,1,'::1'),(614,'Login: ClubHimalaya   logged in.','2024-01-10 12:52:51',1,1,'::1'),(615,'User [asdasd asdasd asdasd] login Created Data has added successfully.','2024-01-10 12:55:05',1,3,'::1'),(616,'Login: Super admin   logged in.','2024-01-10 12:55:36',1,1,'::1'),(617,'Menu [test] CreatedData has added successfully.','2024-01-10 12:57:00',1,3,'::1'),(618,'Menu  [test]Data has deleted successfully.','2024-01-10 12:57:47',1,6,'::1'),(619,'Article \'asdfasdf\' has added successfully.','2024-01-10 13:11:12',1,3,'::1'),(620,'Changes on Article \'asdfasdf\' has been saved successfully.','2024-01-10 13:11:39',1,4,'::1'),(621,'Features [inabsdioniasd]Data has added successfully.','2024-01-10 13:13:19',1,3,'::1'),(622,'Features  [inabsdioniasd]Data has deleted successfully.','2024-01-10 13:13:28',1,6,'::1'),(623,'Features [adfwererrd]Data has added successfully.','2024-01-10 13:13:48',1,3,'::1'),(624,'Features  [adfwererrd]Data has deleted successfully.','2024-01-10 13:14:09',1,6,'::1'),(625,'Package [testing 8.2]Data has added successfully.','2024-01-10 13:14:35',1,3,'::1'),(626,'Sub Package \'asdasdasddasasd\' has added successfully.','2024-01-10 13:15:21',1,3,'::1'),(627,'Slideshows  [asdasdasdasd]Data has deleted successfully.','2024-01-10 13:15:39',1,6,'::1'),(628,'Slideshow  [asdasdasdasd]Data has deleted successfully.','2024-01-10 13:15:39',1,6,'::1'),(629,'Slideshows  []Data has deleted successfully.','2024-01-10 13:15:49',1,6,'::1'),(630,'Slideshow  []Data has deleted successfully.','2024-01-10 13:15:49',1,6,'::1'),(631,'Vacency  [HR post wanted]Data has deleted successfully.','2024-01-10 13:16:09',1,6,'::1'),(632,'Main service \'yuvvyuvyui\' has added successfully.','2024-01-10 13:22:30',1,3,'::1'),(633,'Changes on Main service \'yuvvyuvyui\' has been saved successfully.','2024-01-10 13:22:41',1,4,'::1'),(634,'Changes on Main service \'yuvvyuvyui\' has been saved successfully.','2024-01-10 13:22:54',1,4,'::1'),(635,'Sub Gallery Image  [e]Data has deleted successfully.','2024-01-10 13:25:45',1,6,'::1'),(636,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 13:25:48',1,6,'::1'),(637,'Sub Gallery Image  [e]Data has deleted successfully.','2024-01-10 13:25:48',1,6,'::1'),(638,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 13:25:52',1,6,'::1'),(639,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 13:25:52',1,6,'::1'),(640,'Sub Gallery Image  [e]Data has deleted successfully.','2024-01-10 13:25:52',1,6,'::1'),(641,'Sub Gallery Image [ytvasd]Data has added successfully.','2024-01-10 13:26:05',1,3,'::1'),(642,'Sub Gallery Image [yvasydiv]Data has added successfully.','2024-01-10 13:26:05',1,3,'::1'),(643,'Sub Gallery Image [asdyvhjkv]Data has added successfully.','2024-01-10 13:26:05',1,3,'::1'),(644,'User [Super admin  ] Edit Successfully','2024-01-10 13:26:49',1,4,'::1'),(645,'Offers [ASAs]Data has added successfully.','2024-01-10 13:29:39',1,3,'::1'),(646,'Offers [ASAs] Edit Successfully','2024-01-10 13:30:02',1,4,'::1'),(647,'Offers [ASAs] Edit Successfully','2024-01-10 13:30:23',1,4,'::1'),(648,'Login: Super admin   logged in.','2024-01-10 14:50:52',1,1,'::1'),(649,'Sub Gallery Image  [a]Data has deleted successfully.','2024-01-10 14:52:01',1,6,'::1'),(650,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:04',1,6,'::1'),(651,'Sub Gallery Image  [a]Data has deleted successfully.','2024-01-10 14:52:04',1,6,'::1'),(652,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:30',1,6,'::1'),(653,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:30',1,6,'::1'),(654,'Sub Gallery Image  [a]Data has deleted successfully.','2024-01-10 14:52:30',1,6,'::1'),(655,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:35',1,6,'::1'),(656,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:35',1,6,'::1'),(657,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:35',1,6,'::1'),(658,'Sub Gallery Image  [a]Data has deleted successfully.','2024-01-10 14:52:35',1,6,'::1'),(659,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:38',1,6,'::1'),(660,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:38',1,6,'::1'),(661,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:38',1,6,'::1'),(662,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:38',1,6,'::1'),(663,'Sub Gallery Image  [a]Data has deleted successfully.','2024-01-10 14:52:39',1,6,'::1'),(664,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:44',1,6,'::1'),(665,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:44',1,6,'::1'),(666,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:44',1,6,'::1'),(667,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:44',1,6,'::1'),(668,'Sub Gallery Image  []Data has deleted successfully.','2024-01-10 14:52:44',1,6,'::1'),(669,'Sub Gallery Image  [a]Data has deleted successfully.','2024-01-10 14:52:44',1,6,'::1'),(670,'Sub Gallery Image [a]Data has added successfully.','2024-01-10 14:53:12',1,3,'::1'),(671,'Sub Gallery Image [a]Data has added successfully.','2024-01-10 14:53:12',1,3,'::1'),(672,'Sub Gallery Image [a]Data has added successfully.','2024-01-10 14:53:12',1,3,'::1'),(673,'Popup \'asefasdasd\' has added successfully.','2024-01-10 14:55:03',1,3,'::1'),(674,'Services [rtsetsdf]Data has added successfully.','2024-01-10 14:57:52',1,3,'::1'),(675,'Servicess  [rtsetsdf]Data has deleted successfully.','2024-01-10 14:58:09',1,6,'::1'),(676,'Services  [rtsetsdf]Data has deleted successfully.','2024-01-10 14:58:09',1,6,'::1'),(677,'Login: Super admin   logged in.','2024-01-11 17:07:29',1,1,'::1'),(678,'Login: ClubHimalaya   logged in.','2024-01-12 10:59:26',1,1,'::1'),(679,'Login: ClubHimalaya   logged in.','2024-01-16 10:32:37',1,1,'::1'),(680,'SocialNetworking [Facebook] Edit Successfully','2024-01-16 10:35:23',1,4,'::1'),(681,'Login: ClubHimalaya   logged in.','2024-01-17 11:13:45',1,1,'::1'),(682,'Menu  [HOME]Data has deleted successfully.','2024-01-17 11:13:52',1,6,'::1'),(683,'Menu  [ABOUT US]Data has deleted successfully.','2024-01-17 11:13:55',1,6,'::1'),(684,'Menu  [ROOMS & SUITES]Data has deleted successfully.','2024-01-17 11:13:57',1,6,'::1'),(685,'Menu  [MICE]Data has deleted successfully.','2024-01-17 11:13:59',1,6,'::1'),(686,'Menu  [RESTAURANTS & BAR]Data has deleted successfully.','2024-01-17 11:14:01',1,6,'::1'),(687,'Menu  [FACILITIES]Data has deleted successfully.','2024-01-17 11:14:03',1,6,'::1'),(688,'Menu  [GALLERY]Data has deleted successfully.','2024-01-17 11:14:05',1,6,'::1'),(689,'Menu  [CAREER]Data has deleted successfully.','2024-01-17 11:14:07',1,6,'::1'),(690,'Menu  [CONTACT US]Data has deleted successfully.','2024-01-17 11:14:09',1,6,'::1'),(691,'Menu  [Our Partners]Data has deleted successfully.','2024-01-17 11:14:11',1,6,'::1'),(692,'Login: ClubHimalaya   logged in.','2024-01-18 13:37:35',1,1,'::1'),(693,'Login: ClubHimalaya   logged in.','2024-01-23 15:41:13',1,1,'::1'),(694,'Login: Super admin   logged in.','2024-01-23 15:50:09',1,1,'::1'),(695,'Login: ClubHimalaya   logged in.','2024-01-23 15:50:16',1,1,'::1'),(696,'User [ClubHimalaya  ] Edit Successfully','2024-01-23 15:53:56',1,4,'::1'),(697,'User [ClubHimalaya  ] Edit Successfully','2024-01-23 15:57:02',1,4,'::1'),(698,'Login: ClubHimalaya   logged in.','2024-01-23 15:57:08',1,1,'::1'),(699,'Login: Super admin   logged in.','2024-01-23 16:00:52',1,1,'::1'),(700,'User [Super admin  ] Edit Successfully','2024-01-23 16:47:00',1,4,'::1'),(701,'User Group [Administrator] Edit Successfully','2024-01-23 16:48:35',1,4,'::1'),(702,'User Group [Administrator] Edit Successfully','2024-01-23 16:48:59',1,4,'::1'),(703,'User [Super admin  ] Edit Successfully','2024-01-23 16:49:15',1,4,'::1'),(704,'Login: Super admin   logged in.','2024-01-23 16:49:20',1,1,'::1'),(705,'User [Super admin  ] Edit Successfully','2024-01-23 16:49:39',1,4,'::1'),(706,'Login: Super admin   logged in.','2024-01-23 16:49:44',1,1,'::1'),(707,'User Group [Administrator] Edit Successfully','2024-01-23 16:56:17',1,4,'::1'),(708,'User [Super admin  ] Edit Successfully','2024-01-23 16:56:27',1,4,'::1'),(709,'Login: Super admin   logged in.','2024-01-23 16:56:31',1,1,'::1'),(710,'Login: Super admin   logged in.','2024-01-24 10:56:17',1,1,'::1'),(711,'Changes on Config \'Club Himalaya\' has been saved successfully.','2024-01-24 11:15:08',1,4,'::1'),(712,'Changes on Config \'Club Himalaya\' has been saved successfully.','2024-01-24 11:18:03',1,4,'::1'),(713,'Changes on Config \'Club Himalaya\' has been saved successfully.','2024-01-24 11:18:13',1,4,'::1'),(714,'User [Super admin  ] Edit Successfully','2024-01-24 11:28:50',1,4,'::1'),(715,'Login: Super admin   logged in.','2024-01-24 12:12:57',1,1,'::1'),(716,'Login: Super admin   logged in.','2024-01-24 12:13:06',1,1,'::1'),(717,'Login: Super admin   logged in.','2024-01-24 12:14:50',1,1,'::1'),(718,'Login: Super admin   logged in.','2024-01-24 12:17:27',1,1,'::1'),(719,'Login: Super admin   logged in.','2024-01-24 12:18:09',1,1,'::1'),(720,'Login: Super admin   logged in.','2024-01-24 12:18:42',1,1,'::1'),(721,'User Group [Administrator] Edit Successfully','2024-01-24 12:21:38',1,4,'::1'),(722,'User Group [Administrator] Edit Successfully','2024-01-24 12:39:43',1,4,'::1'),(723,'Slideshow [testing video]Data has added successfully.','2024-01-24 12:50:22',1,3,'::1'),(724,'Changes on Config \'Synhawk3.0\' has been saved successfully.','2024-01-24 15:21:29',1,4,'::1'),(725,'Changes on Config \'Synhawk3.0\' has been saved successfully.','2024-01-24 15:22:25',1,4,'::1'),(726,'Changes on Config \'Synhawk3.0\' has been saved successfully.','2024-01-24 15:22:58',1,4,'::1'),(727,'Successfully Preference Properties Settings','2024-01-24 15:54:10',1,4,'::1'),(728,'Login: ClubHimalaya   logged in.','2024-01-25 15:54:57',1,1,'::1'),(729,'Login: ClubHimalaya   logged in.','2024-01-25 15:55:21',1,1,'::1'),(730,'Login: ClubHimalaya   logged in.','2024-01-25 15:56:37',1,1,'::1'),(731,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-25 15:56:52',1,4,'::1'),(732,'Login: ClubHimalaya   logged in.','2024-01-25 16:18:24',1,1,'::1'),(733,'Login: Super admin   logged in.','2024-01-25 16:21:15',1,1,'::1'),(734,'User Group [Administrator] Edit Successfully','2024-01-25 16:21:39',1,4,'::1'),(735,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-25 16:23:44',1,4,'::1'),(736,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-25 16:23:58',1,4,'::1'),(737,'Successfully Preference Properties Settings','2024-01-25 16:26:19',1,4,'::1'),(738,'User Group [Administrator] Edit Successfully','2024-01-25 16:27:28',1,4,'::1'),(739,'Features [facilities]Data has added successfully.','2024-01-25 16:51:25',1,3,'::1'),(740,'Gallery Image [] Edit Successfully','2024-01-25 16:52:36',1,4,'::1'),(741,'Gallery Image [asdasd] Edit Successfully','2024-01-25 16:52:39',1,4,'::1'),(742,'Login: ClubHimalaya   logged in.','2024-01-26 15:22:51',1,1,'::1'),(743,'Testimonial [Andrew Parker] Edit Successfully','2024-01-26 15:27:16',1,4,'::1'),(744,'Testimonial [Andrew Parker] Edit Successfully','2024-01-26 15:27:20',1,4,'::1'),(745,'Testimonial [Andrew Parker] Edit Successfully','2024-01-26 15:36:21',1,4,'::1'),(746,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-26 16:26:36',1,4,'::1'),(747,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-26 16:26:45',1,4,'::1'),(748,'Login: ClubHimalaya   logged in.','2024-01-28 10:29:13',1,1,'::1'),(749,'User Group [Administrator] Edit Successfully','2024-01-28 10:45:29',1,4,'::1'),(750,'Login: ClubHimalaya   logged in.','2024-01-28 11:03:59',1,1,'::1'),(751,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-28 11:20:35',1,4,'::1'),(752,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-28 11:20:43',1,4,'::1'),(753,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-28 11:23:35',1,4,'::1'),(754,'User Group [General Admin] Edit Successfully','2024-01-28 11:32:02',1,4,'::1'),(755,'Login: Super admin   logged in.','2024-01-28 11:49:53',1,1,'::1'),(756,'User Group [Hotel Users] Edit Successfully','2024-01-28 11:50:16',1,4,'::1'),(757,'User Group [General Users] Edit Successfully','2024-01-28 11:50:38',1,4,'::1'),(758,'User [ClubHimalaya  ] Edit Successfully','2024-01-28 11:50:52',1,4,'::1'),(759,'User [asdasd asdasd asdasd] Edit Successfully','2024-01-28 11:51:10',1,4,'::1'),(760,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:08:34',1,3,'::1'),(761,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:12:59',1,3,'::1'),(762,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:15:31',1,3,'::1'),(763,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:17:00',1,3,'::1'),(764,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:20:20',1,3,'::1'),(765,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:21:19',1,3,'::1'),(766,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:22:38',1,3,'::1'),(767,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:22:52',1,3,'::1'),(768,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:23:15',1,3,'::1'),(769,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:23:24',1,3,'::1'),(770,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:24:52',1,3,'::1'),(771,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:26:06',1,3,'::1'),(772,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:30:36',1,3,'::1'),(773,'Slideshow [dsaasd]Data has added successfully.','2024-01-28 12:35:36',1,3,'::1'),(774,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 12:36:35',1,3,'::1'),(775,'Slideshow [asdasdasdasdasd]Data has added successfully.','2024-01-28 12:42:51',1,3,'::1'),(776,'Slideshow [asdasdasdasdasd]Data has added successfully.','2024-01-28 12:43:05',1,3,'::1'),(777,'Slideshow [asdasdasdasdasd]Data has added successfully.','2024-01-28 12:43:36',1,3,'::1'),(778,'Slideshows  [asdasdasdasdasd]Data has deleted successfully.','2024-01-28 12:55:32',1,6,'::1'),(779,'Slideshow  [asdasdasdasdasd]Data has deleted successfully.','2024-01-28 12:55:32',1,6,'::1'),(780,'Slideshows  [asdasdasdasdasd]Data has deleted successfully.','2024-01-28 12:55:35',1,6,'::1'),(781,'Slideshow  [asdasdasdasdasd]Data has deleted successfully.','2024-01-28 12:55:35',1,6,'::1'),(782,'Slideshows  [asdasdasdasdasd]Data has deleted successfully.','2024-01-28 12:55:37',1,6,'::1'),(783,'Slideshow  [asdasdasdasdasd]Data has deleted successfully.','2024-01-28 12:55:37',1,6,'::1'),(784,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:03:33',1,3,'::1'),(785,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:05:53',1,3,'::1'),(786,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:06:56',1,3,'::1'),(787,'Slideshow [asdasdas]Data has added successfully.','2024-01-28 13:09:30',1,3,'::1'),(788,'Slideshow [asdasdas]Data has added successfully.','2024-01-28 13:09:43',1,3,'::1'),(789,'Slideshow [asdasdas]Data has added successfully.','2024-01-28 13:13:33',1,3,'::1'),(790,'Slideshows  [asdasdas]Data has deleted successfully.','2024-01-28 13:14:48',1,6,'::1'),(791,'Slideshow  [asdasdas]Data has deleted successfully.','2024-01-28 13:14:48',1,6,'::1'),(792,'Slideshows  [asdasdas]Data has deleted successfully.','2024-01-28 13:14:51',1,6,'::1'),(793,'Slideshow  [asdasdas]Data has deleted successfully.','2024-01-28 13:14:51',1,6,'::1'),(794,'Slideshows  [asdasdas]Data has deleted successfully.','2024-01-28 13:14:54',1,6,'::1'),(795,'Slideshow  [asdasdas]Data has deleted successfully.','2024-01-28 13:14:54',1,6,'::1'),(796,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:16:38',1,3,'::1'),(797,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:16:46',1,3,'::1'),(798,'Slideshow [asdasd]Data has added successfully.','2024-01-28 13:20:47',1,3,'::1'),(799,'Slideshow [asdasd]Data has added successfully.','2024-01-28 13:21:28',1,3,'::1'),(800,'Slideshow  [asdasd]Data has deleted successfully.','2024-01-28 13:21:46',1,6,'::1'),(801,'Slideshow  [asdasdasd]Data has deleted successfully.','2024-01-28 13:21:46',1,6,'::1'),(802,'Slideshow  [asdasdasd]Data has deleted successfully.','2024-01-28 13:21:46',1,6,'::1'),(803,'Slideshow  [testing]Data has deleted successfully.','2024-01-28 13:21:46',1,6,'::1'),(804,'Slideshow [asdasdasdasdasd]Data has added successfully.','2024-01-28 13:22:05',1,3,'::1'),(805,'Slideshow [asdasdasdasdasdsASDasd] Edit Successfully','2024-01-28 13:24:30',1,4,'::1'),(806,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:25:05',1,3,'::1'),(807,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:31:57',1,3,'::1'),(808,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:40:15',1,3,'::1'),(809,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:41:03',1,3,'::1'),(810,'Slideshow [asdasdasd]Data has added successfully.','2024-01-28 13:41:40',1,3,'::1'),(811,'Slideshow [asdasd]Data has added successfully.','2024-01-28 13:42:15',1,3,'::1'),(812,'Slideshow [asdasd]Data has added successfully.','2024-01-28 13:42:44',1,3,'::1'),(813,'Slideshow [asdasd]Data has added successfully.','2024-01-28 13:47:49',1,3,'::1'),(814,'Slideshow [asdasd]Data has added successfully.','2024-01-28 13:48:10',1,3,'::1'),(815,'Slideshow [asdasd]Data has added successfully.','2024-01-28 13:51:14',1,3,'::1'),(816,'Successfully Tour Package Properties Settings','2024-01-28 14:10:12',1,4,'::1'),(817,'Successfully Tour Package Properties Settings','2024-01-28 14:10:30',1,4,'::1'),(818,'Login: Super admin   logged in.','2024-01-28 14:51:04',1,1,'::1'),(819,'Slideshow  [asdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(820,'Slideshow  [asdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(821,'Slideshow  [asdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(822,'Slideshow  [asdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(823,'Slideshow  [asdasdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(824,'Slideshow  [asdasdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(825,'Slideshow  [asdasdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(826,'Slideshow  [asdasdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(827,'Slideshow  [asdasdasd]Data has deleted successfully.','2024-01-28 14:51:38',1,6,'::1'),(828,'Slideshow [qweqweqwe]Data has added successfully.','2024-01-28 14:54:26',1,3,'::1'),(829,'Slideshow [qweqweqwe]Data has added successfully.','2024-01-28 14:54:46',1,3,'::1'),(830,'Slideshow [sadfasdsdafasd]Data has added successfully.','2024-01-28 15:02:25',1,3,'::1'),(831,'Slideshow [sadfasdsdafasd]Data has added successfully.','2024-01-28 15:02:49',1,3,'::1'),(832,'Slideshow [asd]Data has added successfully.','2024-01-28 15:09:35',1,3,'::1'),(833,'Slideshow  [sadfasdsdafasd]Data has deleted successfully.','2024-01-28 15:14:18',1,6,'::1'),(834,'Slideshow  [sadfasdsdafasd]Data has deleted successfully.','2024-01-28 15:14:18',1,6,'::1'),(835,'Slideshow  [qweqweqwe]Data has deleted successfully.','2024-01-28 15:14:18',1,6,'::1'),(836,'Slideshow  [qweqweqwe]Data has deleted successfully.','2024-01-28 15:14:18',1,6,'::1'),(837,'Slideshow  [asdasd]Data has deleted successfully.','2024-01-28 15:14:18',1,6,'::1'),(838,'Slideshow  [dsaasd]Data has deleted successfully.','2024-01-28 15:14:18',1,6,'::1'),(839,'Slideshow [saddsaasd]Data has added successfully.','2024-01-28 15:14:30',1,3,'::1'),(840,'Slideshow [saddsaasd]Data has added successfully.','2024-01-28 15:15:37',1,3,'::1'),(841,'Slideshow [saddsaasd]Data has added successfully.','2024-01-28 15:17:55',1,3,'::1'),(842,'Slideshow [saddsaasd]Data has added successfully.','2024-01-28 15:20:35',1,3,'::1'),(843,'Slideshow  [saddsaasd]Data has deleted successfully.','2024-01-28 15:20:59',1,6,'::1'),(844,'Slideshow  [saddsaasd]Data has deleted successfully.','2024-01-28 15:20:59',1,6,'::1'),(845,'Slideshow  [saddsaasd]Data has deleted successfully.','2024-01-28 15:20:59',1,6,'::1'),(846,'Slideshow  [saddsaasd]Data has deleted successfully.','2024-01-28 15:20:59',1,6,'::1'),(847,'Slideshow [dsadsadad]Data has added successfully.','2024-01-28 15:21:34',1,3,'::1'),(848,'Slideshow [asdasdasdsad]Data has added successfully.','2024-01-28 15:22:18',1,3,'::1'),(849,'Slideshow [asdasdasdsad]Data has added successfully.','2024-01-28 15:23:07',1,3,'::1'),(850,'Slideshow [asdasdasdsada]Data has added successfully.','2024-01-28 15:24:42',1,3,'::1'),(851,'Slideshow [asdasdasdsad] Edit Successfully','2024-01-28 15:30:58',1,4,'::1'),(852,'Slideshow  [asdasdasdsada]Data has deleted successfully.','2024-01-28 15:31:50',1,6,'::1'),(853,'Slideshow  [asdasdasdsad]Data has deleted successfully.','2024-01-28 15:31:50',1,6,'::1'),(854,'Slideshow  [asdasdasdsad]Data has deleted successfully.','2024-01-28 15:31:50',1,6,'::1'),(855,'Slideshow  [dsadsadad]Data has deleted successfully.','2024-01-28 15:31:50',1,6,'::1'),(856,'Slideshow [asd]Data has added successfully.','2024-01-28 15:32:02',1,3,'::1'),(857,'Slideshow [asdd] Edit Successfully','2024-01-28 15:32:15',1,4,'::1'),(858,'Slideshow [asdd] Edit Successfully','2024-01-28 15:35:12',1,4,'::1'),(859,'Slideshow [asddd] Edit Successfully','2024-01-28 15:35:25',1,4,'::1'),(860,'Slideshow [asddd] Edit Successfully','2024-01-28 15:35:32',1,4,'::1'),(861,'Slideshow [asddd] Edit Successfully','2024-01-28 15:35:35',1,4,'::1'),(862,'Login: ClubHimalaya   logged in.','2024-01-28 15:38:58',1,1,'::1'),(863,'User [ClubHimalayaa  ] Edit Successfully','2024-01-28 15:39:06',1,4,'::1'),(864,'User [ClubHimalayaa  ] Edit Successfully','2024-01-28 15:39:23',1,4,'::1'),(865,'Login: Super admin   logged in.','2024-01-28 15:40:29',1,1,'::1'),(866,'Login: ClubHimalayaa   logged in.','2024-01-28 15:44:54',1,1,'::1'),(867,'Login: ClubHimalayaa   logged in.','2024-01-28 15:45:31',1,1,'::1'),(868,'Login: Super admin   logged in.','2024-01-28 15:45:38',1,1,'::1'),(869,'User [ClubHimalayaa  ] Edit Successfully','2024-01-28 15:45:49',1,4,'::1'),(870,'Login: ClubHimalayaa   logged in.','2024-01-28 15:46:07',1,1,'::1'),(871,'User [ClubHimalayaa  ] Edit Successfully','2024-01-28 15:46:55',1,4,'::1'),(872,'Login: Super admin   logged in.','2024-01-28 15:48:13',1,1,'::1'),(873,'Login: ClubHimalayaa   logged in.','2024-01-28 15:48:32',1,1,'::1'),(874,'Login: Super admin   logged in.','2024-01-28 15:48:35',1,1,'::1'),(875,'User [ClubHimalayaa  ] Edit Successfully','2024-01-28 15:50:22',1,4,'::1'),(876,'Login: ClubHimalayaa   logged in.','2024-01-28 15:50:28',1,1,'::1'),(877,'User [ClubHimalaya  ] Edit Successfully','2024-01-28 15:50:42',1,4,'::1'),(878,'Login: ClubHimalaya   logged in.','2024-01-28 15:50:49',1,1,'::1'),(879,'Login: Super admin   logged in.','2024-01-28 15:51:57',1,1,'::1'),(880,'User [Super admina  ] Edit Successfully','2024-01-28 15:52:08',1,4,'::1'),(881,'User [Super admina  ] Edit Successfully','2024-01-28 15:55:50',1,4,'::1'),(882,'Login: Super admina   logged in.','2024-01-28 15:55:58',1,1,'::1'),(883,'User [Super admin  ] Edit Successfully','2024-01-28 15:56:05',1,4,'::1'),(884,'Login: Super admin   logged in.','2024-01-28 15:56:10',1,1,'::1'),(885,'User [Super admin  ] Edit Successfully','2024-01-28 15:58:44',1,4,'::1'),(886,'Login: Super admin   logged in.','2024-01-28 15:58:54',1,1,'::1'),(887,'User [Super admina  ] Edit Successfully','2024-01-28 15:59:10',1,4,'::1'),(888,'Login: Super admina   logged in.','2024-01-28 15:59:16',1,1,'::1'),(889,'User [Super admin  ] Edit Successfully','2024-01-28 15:59:25',1,4,'::1'),(890,'Login: ClubHimalaya   logged in.','2024-01-28 16:00:08',1,1,'::1'),(891,'Login: Super admin   logged in.','2024-01-28 16:01:36',1,1,'::1'),(892,'Successfully Preference Properties Settings','2024-01-28 16:26:42',1,4,'::1'),(893,'Successfully Preference Properties Settings','2024-01-28 16:29:24',1,4,'::1'),(894,'Successfully Preference Properties Settings','2024-01-28 16:32:13',1,4,'::1'),(895,'Successfully Preference Properties Settings','2024-01-28 16:32:22',1,4,'::1'),(896,'Login: Super admin   logged in.','2024-01-28 16:52:41',1,1,'::1'),(897,'Login: ClubHimalaya   logged in.','2024-01-28 16:53:39',1,1,'::1'),(898,'Login: Super admin   logged in.','2024-01-28 16:54:10',1,1,'::1'),(899,'User Group [Administrator] Edit Successfully','2024-01-28 17:02:39',1,4,'::1'),(900,'User Group [Administrator] Edit Successfully','2024-01-28 17:02:46',1,4,'::1'),(901,'User Group [Hotel Users] Edit Successfully','2024-01-28 17:03:12',1,4,'::1'),(902,'User Group [General Users] Edit Successfully','2024-01-28 17:03:22',1,4,'::1'),(903,'Successfully Preference Properties Settings','2024-01-28 17:05:34',1,4,'::1'),(904,'Slideshow [qweqwe]Data has added successfully.','2024-01-28 17:06:12',1,3,'::1'),(905,'Slideshow [qweqweqw]Data has added successfully.','2024-01-28 17:06:28',1,3,'::1'),(906,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-28 17:16:18',1,4,'::1'),(907,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-28 17:17:16',1,4,'::1'),(908,'Login: Super admin   logged in.','2024-01-28 23:06:25',1,1,'::1'),(909,'Login: Super admin   logged in.','2024-01-29 10:32:12',1,1,'::1'),(910,'Login: ClubHimalaya   logged in.','2024-01-29 10:43:48',1,1,'::1'),(911,'Changes on Sub Package \'Junior Suite\' has been saved successfully.','2024-01-29 10:44:19',1,4,'::1'),(912,'Changes on Sub Package \'Deluxe Room\' has been saved successfully.','2024-01-29 10:44:34',1,4,'::1'),(913,'Changes on Sub Package \'Deluxe Premium Room\' has been saved successfully.','2024-01-29 10:44:46',1,4,'::1'),(914,'Changes on Sub Package \'Standard Room\' has been saved successfully.','2024-01-29 10:45:03',1,4,'::1'),(915,'Login: Super admin   logged in.','2024-01-29 10:54:13',1,1,'::1'),(916,'Successfully News Properties Settings','2024-01-29 10:57:01',1,4,'::1'),(917,'Successfully News Properties Settings','2024-01-29 10:59:28',1,4,'::1'),(918,'Successfully News Properties Settings','2024-01-29 11:02:32',1,4,'::1'),(919,'Successfully News Properties Settings','2024-01-29 11:03:39',1,4,'::1'),(920,'Successfully Offers Properties Settings','2024-01-29 11:07:43',1,4,'::1'),(921,'Successfully  Package Properties Settings','2024-01-29 11:22:42',1,4,'::1'),(922,'Successfully Social Link Properties Settings','2024-01-29 11:25:20',1,4,'::1'),(923,'Successfully Articles Properties Settings','2024-01-29 11:28:22',1,4,'::1'),(924,'Successfully Slideshow Properties Settings','2024-01-29 11:29:23',1,4,'::1'),(925,'Successfully  Package Properties Settings','2024-01-29 11:30:28',1,4,'::1'),(926,'Successfully Gallery Properties Settings','2024-01-29 11:33:20',1,4,'::1'),(927,'Gallery [adasdas]Data has added successfully.','2024-01-29 11:33:38',1,3,'::1'),(928,'Successfully Testimonial Properties Settings','2024-01-29 11:37:44',1,4,'::1'),(929,'Successfully Social Link Properties Settings','2024-01-29 11:47:58',1,4,'::1'),(930,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-29 11:50:01',1,4,'::1'),(931,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-29 11:51:11',1,4,'::1'),(932,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-29 12:15:31',1,4,'::1'),(933,'Changes on Config \'Synhawk 3.0\' has been saved successfully.','2024-01-29 12:15:47',1,4,'::1'),(934,'Login: ClubHimalaya   logged in.','2024-05-10 16:32:10',1,1,'::1'),(935,'Login: Super admin   logged in.','2024-05-10 16:40:01',1,1,'::1'),(936,'User Group [Administrator] Edit Successfully','2024-05-10 16:40:11',1,4,'::1'),(937,'Download [asdasd]Data has added successfully.','2024-05-10 16:44:57',1,3,'::1'),(938,'Login: admin logged in.','2025-02-06 15:45:58',1,1,'::1'),(939,'Slideshow  [qweqweqw]Data has deleted successfully.','2025-02-06 15:46:53',1,6,'::1'),(940,'Slideshow  [asddd]Data has deleted successfully.','2025-02-06 15:46:53',1,6,'::1'),(941,'Slideshow  [qweqwe]Data has deleted successfully.','2025-02-06 15:47:03',1,6,'::1'),(942,'Slideshow  [asd]Data has deleted successfully.','2025-02-06 15:47:03',1,6,'::1'),(943,'Slideshow  [asdasdasdasdasdsASDasd]Data has deleted successfully.','2025-02-06 15:47:03',1,6,'::1'),(944,'Slideshow  [asdasd]Data has deleted successfully.','2025-02-06 15:47:03',1,6,'::1'),(945,'Login: admin logged in.','2025-02-06 16:04:16',1,1,'::1'),(946,'Slideshow [We are the best cycling club in town.]Data has added successfully.','2025-02-06 16:04:55',1,3,'::1'),(947,'Slideshow [We are the best cycling club in town.]Data has added successfully.','2025-02-06 16:05:24',1,3,'::1'),(948,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-06 17:08:42',1,4,'::1'),(949,'Articles  [about us]Data has deleted successfully.','2025-02-06 17:11:38',1,6,'::1'),(950,'Articles  []Data has deleted successfully.','2025-02-06 17:11:41',1,6,'::1'),(951,'Articles  [welcome To Club Himalaya]Data has deleted successfully.','2025-02-06 17:11:41',1,6,'::1'),(952,'Article \'Community, it\'s what we are all about.\' has added successfully.','2025-02-06 17:25:41',1,3,'::1'),(953,'Blog  [Nagarkot Nepal ]Data has deleted successfully.','2025-02-06 17:32:31',1,6,'::1'),(954,'Blog  [qwseasdas]Data has deleted successfully.','2025-02-06 17:32:31',1,6,'::1'),(955,'Blog  [test 1]Data has deleted successfully.','2025-02-06 17:32:31',1,6,'::1'),(956,'Blog  [Places-of-interest]Data has deleted successfully.','2025-02-06 17:32:31',1,6,'::1'),(957,'Blog  [Excursions to nearby places]Data has deleted successfully.','2025-02-06 17:32:31',1,6,'::1'),(958,'Blog  [Brief On Club Himalaya]Data has deleted successfully.','2025-02-06 17:32:31',1,6,'::1'),(959,'User [Palpa District Cycling Association  ] Edit Successfully','2025-02-06 17:33:59',1,4,'::1'),(960,'Login: admin logged in.','2025-02-06 17:34:12',1,1,'::1'),(961,'Blog [Heritage Ride 2081]Data has added successfully.','2025-02-06 17:35:39',1,3,'::1'),(962,'Blog [Heritage Ride 2081]Data has added successfully.','2025-02-06 17:36:02',1,3,'::1'),(963,'Blog [Heritage Ride 2081]Data has added successfully.','2025-02-06 17:36:28',1,3,'::1'),(964,'Login: admin logged in.','2025-02-07 11:18:57',1,1,'::1'),(965,'Menu  [FAQ\'s]Data has deleted successfully.','2025-02-07 11:19:32',1,6,'::1'),(966,'Menu  [Enhanced Safety]Data has deleted successfully.','2025-02-07 11:19:41',1,6,'::1'),(967,'Menu  [Event Halls]Data has deleted successfully.','2025-02-07 11:19:43',1,6,'::1'),(968,'Menu  [Contact]Data has deleted successfully.','2025-02-07 11:19:49',1,6,'::1'),(969,'Menu [Home] CreatedData has added successfully.','2025-02-07 11:20:01',1,3,'::1'),(970,'Menu [About Us] CreatedData has added successfully.','2025-02-07 11:20:13',1,3,'::1'),(971,'Menu [Members] CreatedData has added successfully.','2025-02-07 11:21:50',1,3,'::1'),(972,'Menu [Our Events] CreatedData has added successfully.','2025-02-07 11:22:12',1,3,'::1'),(973,'Menu [Blog] CreatedData has added successfully.','2025-02-07 11:22:25',1,3,'::1'),(974,'Menu [Gallery] CreatedData has added successfully.','2025-02-07 11:22:36',1,3,'::1'),(975,'Menu [Contact] CreatedData has added successfully.','2025-02-07 11:22:58',1,3,'::1'),(976,'Menu [Upcoming] CreatedData has added successfully.','2025-02-07 11:25:32',1,3,'::1'),(977,'Menu [Completed] CreatedData has added successfully.','2025-02-07 11:25:47',1,3,'::1'),(978,'Menu [Heritage Ride 2082] CreatedData has added successfully.','2025-02-07 11:26:26',1,3,'::1'),(979,'Menu [Heritage Ride 2083] CreatedData has added successfully.','2025-02-07 11:26:45',1,3,'::1'),(980,'Menu [Heritage Ride 2081] CreatedData has added successfully.','2025-02-07 11:27:00',1,3,'::1'),(981,'Menu [Heritage Ride 2081] CreatedData has added successfully.','2025-02-07 11:27:19',1,3,'::1'),(982,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-07 11:31:31',1,4,'::1'),(983,'Login: admin logged in.','2025-02-07 11:58:24',1,1,'::1'),(984,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-07 11:59:11',1,4,'::1'),(985,'Login: admin logged in.','2025-02-07 12:13:12',1,1,'::1'),(986,'SocialNetworking [Instagram]Data has added successfully.','2025-02-07 12:14:28',1,3,'::1'),(987,'SocialNetworking [Pinterest]Data has added successfully.','2025-02-07 12:14:43',1,3,'::1'),(988,'SocialNetworking [Twitter]Data has added successfully.','2025-02-07 12:15:02',1,3,'::1'),(989,'SocialNetworking [Facebook]Data has added successfully.','2025-02-07 12:15:20',1,3,'::1'),(990,'Services  [LED Tv]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(991,'Services  [Hair Dryer]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(992,'Services  [Room Slippers]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(993,'Services  [Mini-bar In Suites]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(994,'Services  [Meeting Hall]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(995,'Services  [Pick/Drop]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(996,'Services  [Iron/Iron Boar]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(997,'Services  [EV Charging station]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(998,'Services  [Pool/Hot Tub]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(999,'Services  [Spa]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1000,'Services  [Free Parking]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1001,'Services  [Safety Deposite Box]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1002,'Services  [24hrs Front-desk]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1003,'Services  [Coffee Maker]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1004,'Services  [Bathtub]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1005,'Services  [Air-Conditioner]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1006,'Services  [Free WiFi]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1007,'Services  [Room Services]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1008,'Services  [Breakfast]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1009,'Services  [Panoramic Views]Data has deleted successfully.','2025-02-07 12:30:09',1,6,'::1'),(1010,'Services [Cycling Events]Data has added successfully.','2025-02-07 12:35:11',1,3,'::1'),(1011,'Services [Training Programs]Data has added successfully.','2025-02-07 12:36:10',1,3,'::1'),(1012,'Services [Community Engagement]Data has added successfully.','2025-02-07 12:37:00',1,3,'::1'),(1013,'Services [Tourism Promotion]Data has added successfully.','2025-02-07 12:37:35',1,3,'::1'),(1014,'Menu [The Ultimate Tour] CreatedData has added successfully.','2025-02-07 12:48:01',1,3,'::1'),(1015,'Menu [The Ultimate Tour] CreatedData has added successfully.','2025-02-07 12:49:14',1,3,'::1'),(1016,'Menu [Race On Road Challenge] CreatedData has added successfully.','2025-02-07 12:49:33',1,3,'::1'),(1017,'Menu [City Championship] CreatedData has added successfully.','2025-02-07 12:49:47',1,3,'::1'),(1018,'Menu [Special Max Classic] CreatedData has added successfully.','2025-02-07 12:50:05',1,3,'::1'),(1019,'Menu  [The Ultimate Tour]Data has deleted successfully.','2025-02-07 12:50:19',1,6,'::1'),(1020,'Menu [About Us] CreatedData has added successfully.','2025-02-07 12:50:36',1,3,'::1'),(1021,'Menu [Our News] CreatedData has added successfully.','2025-02-07 12:50:49',1,3,'::1'),(1022,'Menu [Events & Schedule] CreatedData has added successfully.','2025-02-07 12:51:09',1,3,'::1'),(1023,'Menu [Contact Today] CreatedData has added successfully.','2025-02-07 12:51:23',1,3,'::1'),(1024,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-07 12:55:41',1,4,'::1'),(1025,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-07 13:10:57',1,4,'::1'),(1026,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-07 13:11:20',1,4,'::1'),(1027,'Gallery [Footer gallery]Data has added successfully.','2025-02-07 13:21:50',1,3,'::1'),(1028,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1029,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1030,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1031,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1032,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1033,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1034,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1035,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1036,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1037,'Sub Gallery Image [Palpa Cycling]Data has added successfully.','2025-02-07 13:23:01',1,3,'::1'),(1038,'Gallery Image [] Edit Successfully','2025-02-07 13:28:32',1,4,'::1'),(1039,'Gallery Image [Palpa Cycling] Edit Successfully','2025-02-07 13:28:48',1,4,'::1'),(1040,'Sub Gallery Image [asdf]Data has added successfully.','2025-02-07 13:37:17',1,3,'::1'),(1041,'Login: admin logged in.','2025-02-07 14:51:30',1,1,'::1'),(1042,'Sub Gallery Image [test]Data has added successfully.','2025-02-07 14:51:56',1,3,'::1'),(1043,'Gallery Image [] Edit Successfully','2025-02-07 14:52:25',1,4,'::1'),(1044,'Gallery Image [test] Edit Successfully','2025-02-07 14:52:43',1,4,'::1'),(1045,'Gallery Image [] Edit Successfully','2025-02-07 14:52:44',1,4,'::1'),(1046,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 14:53:41',1,6,'::1'),(1047,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 14:53:45',1,6,'::1'),(1048,'Sub Gallery Image  [asdf]Data has deleted successfully.','2025-02-07 14:53:45',1,6,'::1'),(1049,'Sub Gallery Image [test]Data has added successfully.','2025-02-07 14:57:14',1,3,'::1'),(1050,'Sub Gallery Image  [test]Data has deleted successfully.','2025-02-07 15:10:28',1,6,'::1'),(1051,'Sub Gallery Image [sans]Data has added successfully.','2025-02-07 15:17:42',1,3,'::1'),(1052,'Sub Gallery Image  [sans]Data has deleted successfully.','2025-02-07 15:18:07',1,6,'::1'),(1053,'Sub Gallery Image [test]Data has added successfully.','2025-02-07 15:20:49',1,3,'::1'),(1054,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:21:19',1,6,'::1'),(1055,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:22',1,6,'::1'),(1056,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:21:22',1,6,'::1'),(1057,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:24',1,6,'::1'),(1058,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:24',1,6,'::1'),(1059,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:21:24',1,6,'::1'),(1060,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:27',1,6,'::1'),(1061,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:27',1,6,'::1'),(1062,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:27',1,6,'::1'),(1063,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:21:27',1,6,'::1'),(1064,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:57',1,6,'::1'),(1065,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:57',1,6,'::1'),(1066,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:58',1,6,'::1'),(1067,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:21:58',1,6,'::1'),(1068,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:21:58',1,6,'::1'),(1069,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:02',1,6,'::1'),(1070,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:02',1,6,'::1'),(1071,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:02',1,6,'::1'),(1072,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:02',1,6,'::1'),(1073,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:02',1,6,'::1'),(1074,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:22:02',1,6,'::1'),(1075,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:41',1,6,'::1'),(1076,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:41',1,6,'::1'),(1077,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:41',1,6,'::1'),(1078,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:41',1,6,'::1'),(1079,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:41',1,6,'::1'),(1080,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:22:41',1,6,'::1'),(1081,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:22:41',1,6,'::1'),(1082,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:02',1,6,'::1'),(1083,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:02',1,6,'::1'),(1084,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:02',1,6,'::1'),(1085,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:02',1,6,'::1'),(1086,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:02',1,6,'::1'),(1087,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:02',1,6,'::1'),(1088,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:02',1,6,'::1'),(1089,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:23:02',1,6,'::1'),(1090,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1091,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1092,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1093,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1094,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1095,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1096,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1097,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1098,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:23:09',1,6,'::1'),(1099,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:20',1,6,'::1'),(1100,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1101,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1102,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1103,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1104,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1105,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1106,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1107,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1108,'Sub Gallery Image  [Palpa Cycling]Data has deleted successfully.','2025-02-07 15:23:21',1,6,'::1'),(1109,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1110,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1111,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1112,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1113,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1114,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1115,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1116,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1117,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1118,'Sub Gallery Image  []Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1119,'Sub Gallery Image  [test]Data has deleted successfully.','2025-02-07 15:23:24',1,6,'::1'),(1120,'Sub Gallery Image [Enjoy the ride.]Data has added successfully.','2025-02-07 15:26:11',1,3,'::1'),(1121,'Sub Gallery Image [Enjoy the ride.]Data has added successfully.','2025-02-07 15:26:11',1,3,'::1'),(1122,'Sub Gallery Image [Enjoy the ride.]Data has added successfully.','2025-02-07 15:26:11',1,3,'::1'),(1123,'Sub Gallery Image [Enjoy the ride.]Data has added successfully.','2025-02-07 15:26:11',1,3,'::1'),(1124,'Sub Gallery Image [Enjoy the ride.]Data has added successfully.','2025-02-07 15:26:11',1,3,'::1'),(1125,'Sub Gallery Image [Enjoy the ride.]Data has added successfully.','2025-02-07 15:26:11',1,3,'::1'),(1126,'Sub Gallery Image [Enjoy the ride.]Data has added successfully.','2025-02-07 15:26:11',1,3,'::1'),(1127,'Sub Gallery Image [Enjoy the ride.]Data has added successfully.','2025-02-07 15:26:11',1,3,'::1'),(1128,'Login: admin logged in.','2025-02-07 17:59:30',1,1,'::1'),(1129,'Login: admin logged in.','2025-02-10 11:10:51',1,1,'::1'),(1130,'Package [Charity]Data has added successfully.','2025-02-10 11:19:31',1,3,'::1'),(1131,'Sub Package \'Heritage Ride-2081\' has added successfully.','2025-02-10 11:32:05',1,3,'::1'),(1132,'Sub Package \'Heritage Ride-2082\' has added successfully.','2025-02-10 11:33:39',1,3,'::1'),(1133,'Sub Package \'Heirtage Ride\' has added successfully.','2025-02-10 11:34:08',1,3,'::1'),(1134,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-10 11:38:04',1,4,'::1'),(1135,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-10 11:38:57',1,4,'::1'),(1136,'Changes on Sub Package \'Heritage Ride-2082\' has been saved successfully.','2025-02-10 11:39:07',1,4,'::1'),(1137,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-10 11:39:17',1,4,'::1'),(1138,'Changes on Sub Package \'Heritage Ride-2082\' has been saved successfully.','2025-02-10 11:39:26',1,4,'::1'),(1139,'Changes on Sub Package \'Heritage Ride-2081\' has been saved successfully.','2025-02-10 11:39:36',1,4,'::1'),(1140,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-10 11:39:45',1,4,'::1'),(1141,'Package [Special Event]Data has added successfully.','2025-02-10 11:43:26',1,3,'::1'),(1142,'Sub Package \'Senior Metro Road 1\' has added successfully.','2025-02-10 11:44:10',1,3,'::1'),(1143,'Sub Package \'Senior Metro Road 2\' has added successfully.','2025-02-10 11:44:32',1,3,'::1'),(1144,'Sub Package \'Senior Metro Road 3\' has added successfully.','2025-02-10 11:44:56',1,3,'::1'),(1145,'Changes on Sub Package \'Senior Metro Road 2\' has been saved successfully.','2025-02-10 11:45:13',1,4,'::1'),(1146,'Package [Social Event]Data has added successfully.','2025-02-10 11:45:54',1,3,'::1'),(1147,'Sub Package \'Heritage 1\' has added successfully.','2025-02-10 11:46:19',1,3,'::1'),(1148,'Sub Package \'Heritage 2\' has added successfully.','2025-02-10 11:46:37',1,3,'::1'),(1149,'Sub Package \'Heritage 3\' has added successfully.','2025-02-10 11:46:58',1,3,'::1'),(1150,'Menu [Home] Edit Successfully','2025-02-10 12:32:55',1,4,'::1'),(1151,'Menu [About Us] Edit Successfully','2025-02-10 12:35:36',1,4,'::1'),(1152,'Article \'About Us\' has added successfully.','2025-02-10 12:49:21',1,3,'::1'),(1153,'Changes on Article \'About Us\' has been saved successfully.','2025-02-10 12:54:03',1,4,'::1'),(1154,'Menu [About Us] Edit Successfully','2025-02-10 12:54:59',1,4,'::1'),(1155,'Article \'test\' has added successfully.','2025-02-10 13:12:21',1,3,'::1'),(1156,'Gallery [Event 2022]Data has added successfully.','2025-02-10 13:28:28',1,3,'::1'),(1157,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:29:16',1,3,'::1'),(1158,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:29:16',1,3,'::1'),(1159,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:29:16',1,3,'::1'),(1160,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:29:16',1,3,'::1'),(1161,'Gallery [Event 2023]Data has added successfully.','2025-02-10 13:29:41',1,3,'::1'),(1162,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:30:24',1,3,'::1'),(1163,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:30:24',1,3,'::1'),(1164,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:30:24',1,3,'::1'),(1165,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:30:24',1,3,'::1'),(1166,'Gallery [Event 2024]Data has added successfully.','2025-02-10 13:30:44',1,3,'::1'),(1167,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:31:21',1,3,'::1'),(1168,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:31:21',1,3,'::1'),(1169,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:31:21',1,3,'::1'),(1170,'Sub Gallery Image [title]Data has added successfully.','2025-02-10 13:31:21',1,3,'::1'),(1171,'Menu [Gallery] Edit Successfully','2025-02-10 13:33:28',1,4,'::1'),(1172,'Menu [Contact] Edit Successfully','2025-02-10 14:56:11',1,4,'::1'),(1173,'User [Palpa District Cycling Association  ] Edit Successfully','2025-02-10 15:09:14',1,4,'::1'),(1174,'Login: admin logged in.','2025-02-10 15:13:23',1,1,'::1'),(1175,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-10 15:14:16',1,4,'::1'),(1176,'Login: superadmin logged in.','2025-02-10 15:34:03',1,1,'::1'),(1177,'Login: admin logged in.','2025-02-10 15:34:23',1,1,'::1'),(1178,'Menu [Upcoming] Edit Successfully','2025-02-10 16:13:13',1,4,'::1'),(1179,'Menu [Upcoming] Edit Successfully','2025-02-10 16:19:25',1,4,'::1'),(1180,'Menu [Completed] Edit Successfully','2025-02-10 16:19:40',1,4,'::1'),(1181,'Menu [Completed] Edit Successfully','2025-02-10 16:26:49',1,4,'::1'),(1182,'Menu [Completed] Edit Successfully','2025-02-10 16:27:02',1,4,'::1'),(1183,'Login: superadmin logged in.','2025-02-10 16:54:17',1,1,'::1'),(1184,'User Group [General Admin] Edit Successfully','2025-02-10 16:54:28',1,4,'::1'),(1185,'User Group [Administrator] Edit Successfully','2025-02-10 16:54:36',1,4,'::1'),(1186,'Login: admin logged in.','2025-02-10 16:55:39',1,1,'::1'),(1187,'Teams [Player]Data has added successfully.','2025-02-10 17:59:37',1,3,'::1'),(1188,'Login: admin logged in.','2025-02-11 10:55:58',1,1,'::1'),(1189,'Teams  [Player]Data has deleted successfully.','2025-02-11 11:14:43',1,6,'::1'),(1190,'Teams [Player]Data has added successfully.','2025-02-11 11:14:55',1,3,'::1'),(1191,'Sub Doctor \'asdf\' has added successfully.','2025-02-11 11:17:21',1,3,'::1'),(1192,'Sub Doctor [asdf]Data has deleted successfully.','2025-02-11 11:24:31',1,6,'::1'),(1193,'Sub Doctor [asdf]Data has deleted successfully.','2025-02-11 11:24:45',1,6,'::1'),(1194,'Sub Doctor [asdf]Data has deleted successfully.','2025-02-11 11:28:21',1,6,'::1'),(1195,'Sub Doctor \'asdfasdf\' has added successfully.','2025-02-11 11:28:34',1,3,'::1'),(1196,'Review [asdf]Data has added successfully.','2025-02-11 11:29:00',1,3,'::1'),(1197,'Review  [asdf]Data has deleted successfully.','2025-02-11 11:29:13',1,6,'::1'),(1198,'Changes on Sub Doctor \'asdfasdf\' has been saved successfully.','2025-02-11 11:52:48',1,4,'::1'),(1199,'Teams Player player player player player Edit Successfully','2025-02-11 11:59:49',1,4,'::1'),(1200,'Changes on Sub Package \'Heritage 2\' has been saved successfully.','2025-02-11 13:05:10',1,4,'::1'),(1201,'Menu [Upcoming] Edit Successfully','2025-02-11 13:07:44',1,4,'::1'),(1202,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-11 13:17:31',1,4,'::1'),(1203,'Menu [Heritage Ride 2081] Edit Successfully','2025-02-11 13:40:53',1,4,'::1'),(1204,'Menu [Heritage Ride 2082] Edit Successfully','2025-02-11 13:41:20',1,4,'::1'),(1205,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-11 13:48:47',1,4,'::1'),(1206,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-11 13:49:15',1,4,'::1'),(1207,'Sub Package Image [heritage]Data has added successfully.','2025-02-11 14:51:05',1,3,'::1'),(1208,'Sub Package Image [heritage]Data has added successfully.','2025-02-11 14:51:05',1,3,'::1'),(1209,'Sub Package Image [heritage]Data has added successfully.','2025-02-11 14:51:05',1,3,'::1'),(1210,'Sub Package Image [heritage]Data has added successfully.','2025-02-11 14:51:05',1,3,'::1'),(1211,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-11 14:53:01',1,4,'::1'),(1212,'Menu [Ongoing] CreatedData has added successfully.','2025-02-11 14:53:56',1,3,'::1'),(1213,'Changes on Sub Package \'Heritage Ride-2082\' has been saved successfully.','2025-02-11 15:10:13',1,4,'::1'),(1214,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-11 15:10:59',1,4,'::1'),(1215,'Menu [Heritage Ride] CreatedData has added successfully.','2025-02-11 15:11:36',1,3,'::1'),(1216,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-11 16:12:06',1,4,'::1'),(1217,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-11 16:15:42',1,4,'::1'),(1218,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-11 16:19:10',1,4,'::1'),(1219,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-11 16:19:57',1,4,'::1'),(1220,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-11 16:21:48',1,4,'::1'),(1221,'Menu [Members] Edit Successfully','2025-02-11 16:27:14',1,4,'::1'),(1222,'Menu [Members] Edit Successfully','2025-02-11 16:27:36',1,4,'::1'),(1223,'Teams  [Player player player player player]Data has deleted successfully.','2025-02-11 16:30:31',1,6,'::1'),(1224,'Teams [Member]Data has added successfully.','2025-02-11 16:31:05',1,3,'::1'),(1225,'Sub Doctor \'John doe\' has added successfully.','2025-02-11 16:45:12',1,3,'::1'),(1226,'Login: admin logged in.','2025-02-12 11:22:38',1,1,'::1'),(1227,'Changes on Sub Doctor \'John doe\' has been saved successfully.','2025-02-12 11:43:13',1,4,'::1'),(1228,'Changes on Sub Doctor \'John doea\' has been saved successfully.','2025-02-12 11:45:19',1,4,'::1'),(1229,'Sub Doctor \'John doe\' has added successfully.','2025-02-12 11:54:52',1,3,'::1'),(1230,'Sub Doctor \'John doe\' has added successfully.','2025-02-12 11:56:16',1,3,'::1'),(1231,'Teams [executive]Data has added successfully.','2025-02-12 12:28:46',1,3,'::1'),(1232,'Sub Doctor \'asdfasdf\' has added successfully.','2025-02-12 12:28:57',1,3,'::1'),(1233,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-12 12:45:31',1,4,'::1'),(1234,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-12 13:02:23',1,4,'::1'),(1235,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-12 13:02:39',1,4,'::1'),(1236,'Menu [Blog] Edit Successfully','2025-02-12 13:04:47',1,4,'::1'),(1237,'Blog [Heritage]Data has added successfully.','2025-02-12 13:08:24',1,3,'::1'),(1238,'Blog [Heritage] Edit Successfully','2025-02-12 13:10:25',1,4,'::1'),(1239,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-12 16:33:47',1,4,'::1'),(1240,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-12 16:50:50',1,4,'::1'),(1241,'SocialNetworking [100% organic]Data has added successfully.','2025-02-12 17:08:52',1,3,'::1'),(1242,'SocialNetworking [Yoga]Data has added successfully.','2025-02-12 17:09:28',1,3,'::1'),(1243,'SocialNetworking [Natural product]Data has added successfully.','2025-02-12 17:09:46',1,3,'::1'),(1244,'SocialNetworking [Organic]Data has added successfully.','2025-02-12 17:10:11',1,3,'::1'),(1245,'SocialNetworking [Organic product]Data has added successfully.','2025-02-12 17:10:32',1,3,'::1'),(1246,'SocialNetworking [Beauty]Data has added successfully.','2025-02-12 17:10:56',1,3,'::1'),(1247,'SocialNetworking [Coffee]Data has added successfully.','2025-02-12 17:12:06',1,3,'::1'),(1248,'Login: admin logged in.','2025-02-13 11:01:07',1,1,'::1'),(1249,'Changes on Config \'Palpa District Cycling Association\' has been saved successfully.','2025-02-13 11:13:01',1,4,'::1'),(1250,'Login: superadmin logged in.','2025-02-13 11:25:39',1,1,'::1'),(1251,'User Group [General Admin] Edit Successfully','2025-02-13 11:26:41',1,4,'::1'),(1252,'Login: admin logged in.','2025-02-13 11:26:51',1,1,'::1'),(1253,'Package Social Event Edit Successfully','2025-02-13 11:28:50',1,4,'::1'),(1254,'Package Social Event Edit Successfully','2025-02-13 11:29:12',1,4,'::1'),(1255,'Changes on Sub Package \'Heirtage Ride\' has been saved successfully.','2025-02-13 11:37:44',1,4,'::1'),(1256,'Login: superadmin logged in.','2025-02-13 12:32:39',1,1,'::1'),(1257,'User Group [General Admin] Edit Successfully','2025-02-13 12:38:34',1,4,'::1'),(1258,'Login: admin logged in.','2025-02-13 12:38:41',1,1,'::1'),(1259,'Notice [Can Cycling Cause Skin Cancer?]Data has added successfully.','2025-02-13 12:43:45',1,3,'::1'),(1260,'Notice [Can Cycling Cause Skin Cancer?] Edit Successfully','2025-02-13 13:26:18',1,4,'::1'),(1261,'Notice [USA Cycling Announces 2025 Cyclocross World Championships Team]Data has added successfully.','2025-02-13 13:27:59',1,3,'::1'),(1262,'Notice [How To Watch the 2025 UCI Cyclocross World Championships]Data has added successfully.','2025-02-13 14:15:59',1,3,'::1'),(1263,'Notice [How To Watch the 2025 UCI Cyclocross World Championships]Data has added successfully.','2025-02-13 14:16:07',1,3,'::1'),(1264,'Notice [test]Data has added successfully.','2025-02-13 14:39:28',1,3,'::1'),(1265,'Notice [test]Data has added successfully.','2025-02-13 14:42:08',1,3,'::1'),(1266,'Notice [test]Data has added successfully.','2025-02-13 14:42:20',1,3,'::1'),(1267,'SocialNetworking [Instagram] Edit Successfully','2025-02-13 14:50:51',1,4,'::1'),(1268,'Popup \'asdf\' has added successfully.','2025-02-13 14:54:01',1,3,'::1'),(1269,'Changes on Popup \'asdf\' has been saved successfully.','2025-02-13 14:54:24',1,4,'::1'),(1270,'Popup \'asdfadsf\' has added successfully.','2025-02-13 14:57:35',1,3,'::1'),(1271,'Changes on Popup \'asdfadsf\' has been saved successfully.','2025-02-13 16:39:27',1,4,'::1'),(1272,'Popup \'asdfsdf\' has added successfully.','2025-02-13 16:49:14',1,3,'::1'),(1273,'User [Palpa District Cycling Association  ] Edit Successfully','2025-02-13 17:54:11',1,4,'::1'),(1274,'Login: admin logged in.','2025-02-13 17:54:14',1,1,'::1');
/*!40000 ALTER TABLE `tbl_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_logs_action`
--

DROP TABLE IF EXISTS `tbl_logs_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_logs_action` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `bgcolor` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_logs_action`
--

LOCK TABLES `tbl_logs_action` WRITE;
/*!40000 ALTER TABLE `tbl_logs_action` DISABLE KEYS */;
INSERT INTO `tbl_logs_action` VALUES (1,'Login','icon-sign-in','bg-blue'),(2,'Logout','icon-sign-out','primary-bg'),(3,'Add','icon-plus-circle','bg-green'),(4,'Edit','icon-edit','bg-blue-alt'),(5,'Copy','icon-copy','ui-state-default'),(6,'Delete','icon-clock-os-circle','bg-red');
/*!40000 ALTER TABLE `tbl_logs_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mainservices`
--

DROP TABLE IF EXISTS `tbl_mainservices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mainservices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `homepage` int NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mainservices`
--

LOCK TABLES `tbl_mainservices` WRITE;
/*!40000 ALTER TABLE `tbl_mainservices` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mainservices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_menu`
--

DROP TABLE IF EXISTS `tbl_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `linksrc` varchar(150) COLLATE utf8mb3_unicode_ci NOT NULL,
  `parentOf` int NOT NULL DEFAULT '0',
  `linktype` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `icon` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_menu`
--

LOCK TABLES `tbl_menu` WRITE;
/*!40000 ALTER TABLE `tbl_menu` DISABLE KEYS */;
INSERT INTO `tbl_menu` VALUES (20,'Home','home',0,'0',1,1,'2025-02-07 11:20:01',1,''),(21,'About Us','about-us',0,'0',1,2,'2025-02-07 11:20:13',1,''),(22,'Members','members-list',0,'0',1,3,'2025-02-07 11:21:50',1,''),(23,'Our Events','#',0,'0',1,4,'2025-02-07 11:22:12',1,''),(24,'Blog','blog',0,'0',1,5,'2025-02-07 11:22:25',1,''),(25,'Gallery','gallery-list',0,'0',1,6,'2025-02-07 11:22:36',1,''),(26,'Contact','contact-us',0,'0',1,7,'2025-02-07 11:22:58',1,''),(27,'Upcoming','upcoming',23,'0',1,1,'2025-02-07 11:25:32',1,''),(28,'Completed','completed',23,'0',1,2,'2025-02-07 11:25:47',1,''),(29,'Heritage Ride 2082','heritage-ride-2082',27,'0',1,1,'2025-02-07 11:26:26',1,''),(30,'Heritage Ride 2083','#',27,'0',1,2,'2025-02-07 11:26:45',1,''),(31,'Heritage Ride 2081','heritage-ride-2081',28,'0',1,1,'2025-02-07 11:27:00',1,''),(32,'Heritage Ride 2081','#',28,'0',1,2,'2025-02-07 11:27:19',1,''),(34,'The Ultimate Tour','#',0,'0',1,9,'2025-02-07 12:49:14',3,''),(35,'Race On Road Challenge','#',0,'0',1,10,'2025-02-07 12:49:33',3,''),(36,'City Championship','#',0,'0',1,11,'2025-02-07 12:49:47',3,''),(37,'Special Max Classic','#',0,'0',1,12,'2025-02-07 12:50:05',3,''),(38,'About Us','#',0,'0',1,13,'2025-02-07 12:50:36',2,''),(39,'Our News','#',0,'0',1,14,'2025-02-07 12:50:49',2,''),(40,'Events & Schedule','#',0,'0',1,15,'2025-02-07 12:51:09',2,''),(41,'Contact Today','#',0,'0',1,16,'2025-02-07 12:51:23',2,''),(42,'Ongoing','ongoing',23,'0',1,3,'2025-02-11 14:53:56',1,''),(43,'Heritage Ride','heirtage-ride',42,'0',1,1,'2025-02-11 15:11:36',1,'');
/*!40000 ALTER TABLE `tbl_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_mlink`
--

DROP TABLE IF EXISTS `tbl_mlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_mlink`
--

LOCK TABLES `tbl_mlink` WRITE;
/*!40000 ALTER TABLE `tbl_mlink` DISABLE KEYS */;
INSERT INTO `tbl_mlink` VALUES ('Subpackage','deluxe-premium-room',28),('Subpackage','deluxe-room',29),('Subpackage','event-halls',31),('Subpackage','tribhuvan-intl-airport',33),('Subpackage','patan-durbar-square',34),('Subpackage','swayambhunath-temple',35),('Subpackage','pashupatinath-temple',36),('Subpackage','nagarkot-hall',39),('Article','pool-jacuzzi',3),('Subpackage','standard-room',41),('Subpackage','lalitpur-hall',42),('Subpackage','indrawati-bar',43),('Article','children-play-area-indoor-outdoor',4),('Article','community-its-what-we-are-all-about',16),('Article','about-us',17),('Article','test',18),('Subpackage','library',44),('Main service','children-play-area-indoor-outdoor',4),('Main service','spa',1),('Article','asdfasdf',0),('Package','social-event',0),('Subpackage','heritage-3',0),('Main service','yuvvyuvyui',0),('Main service','yuvvyuvyui',5),('Subpackage','heirtage-ride',48),('Subpackage','heritage-ride-2082',47),('Subpackage','heritage-ride-2081',46),('Subpackage','senior-metro-road-2',50),('Subpackage','heritage-2',53),('Package','social-event',17);
/*!40000 ALTER TABLE `tbl_mlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modules`
--

DROP TABLE IF EXISTS `tbl_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_modules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `icon_link` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` date NOT NULL,
  `properties` text COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modules`
--

LOCK TABLES `tbl_modules` WRITE;
/*!40000 ALTER TABLE `tbl_modules` DISABLE KEYS */;
INSERT INTO `tbl_modules` VALUES (1,74,'User Mgmt','user/list','user','icon-users',1,1,'0000-00-00',''),(2,0,'Menu Mgmt','menu/list','menu','icon-list',1,2,'0000-00-00','a:1:{s:5:\"level\";s:1:\"3\";}'),(3,0,'Articles Mgmt','articles/list','articles','icon-adn',1,2,'0000-00-00','a:2:{s:8:\"imgwidth\";s:3:\"450\";s:9:\"imgheight\";s:3:\"350\";}'),(4,0,'Slideshow Mgmt','slideshow/list','slideshow','icon-film',1,2,'0000-00-00','a:2:{s:8:\"imgwidth\";s:4:\"1263\";s:9:\"imgheight\";s:3:\"600\";}'),(5,0,'Gallery Mgmt','gallery/list','gallery','icon-picture-o',1,6,'0000-00-00','a:4:{s:8:\"imgwidth\";s:3:\"900\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),(6,0,'News Mgmt','news/list','news','icon-list-alt',0,19,'0000-00-00','a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),(7,0,'Event Mgmt','events/list','events','icon-bullhorn',0,10,'0000-00-00',''),(8,0,'Advertisement Mgmt','advertisement/list','advertisement','icon-indent',0,4,'0000-00-00','a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),(9,0,'Video Mgmt','video/list','video','icon-hdd-o',0,13,'0000-00-00',''),(10,0,'Poll Mgmt','poll/list','poll','icon-exchange',0,22,'0000-00-00',''),(11,0,'Social / OTA Mgmt','social/list','social','icon-google-plus',1,6,'0000-00-00','a:2:{s:8:\"imgwidth\";s:3:\"141\";s:9:\"imgheight\";s:2:\"13\";}'),(12,0,'Setting Mgmt','setting/list','settings','icon-gear',1,21,'0000-00-00',''),(13,12,'Preference Mgmt','preference/list','preference','icon-gear',1,1,'0000-00-00','a:18:{s:8:\"imgwidth\";s:8:\"12312312\";s:9:\"imgheight\";s:2:\"12\";s:9:\"simgwidth\";s:2:\"12\";s:10:\"simgheight\";s:2:\"12\";s:10:\"fbimgwidth\";s:2:\"12\";s:11:\"fbimgheight\";s:2:\"12\";s:9:\"timgwidth\";s:2:\"12\";s:10:\"timgheight\";s:2:\"12\";s:9:\"gimgwidth\";s:2:\"12\";s:10:\"gimgheight\";s:2:\"12\";s:9:\"cimgwidth\";s:3:\"121\";s:10:\"cimgheight\";s:2:\"12\";s:9:\"oimgwidth\";s:2:\"12\";s:10:\"oimgheight\";s:2:\"12\";s:9:\"fimgwidth\";s:2:\"21\";s:10:\"fimgheight\";s:2:\"21\";s:10:\"ofimgwidth\";s:2:\"21\";s:11:\"ofimgheight\";s:2:\"12\";}'),(14,12,'Office Info/Location','location/list','location','icon-gear',1,2,'0000-00-00',''),(15,12,'Modules Mgmt','module/list','module','icon-gear',0,3,'0000-00-00',''),(16,12,'Properties Mgmt','properties/list','properties','icon-gear',1,4,'0000-00-00',''),(17,0,'Testimonial','testimonial/list','testimonial','icon-list-alt',1,6,'0000-00-00','a:2:{s:8:\"imgwidth\";s:4:\"1001\";s:9:\"imgheight\";s:3:\"100\";}'),(18,0,'Subscribers Mgmt','subscribers/list','subscribers','icon-comments',0,14,'2015-05-17',''),(19,0,'Offers Mgmt','offers/list','offers','icon-tags',1,18,'2015-05-20','a:4:{s:9:\"bimgwidth\";s:2:\"22\";s:10:\"bimgheight\";s:2:\"22\";s:8:\"imgwidth\";s:3:\"200\";s:9:\"imgheight\";s:3:\"200\";}'),(20,0,'Services Mgmt','services/list','services','icon-exchange',1,5,'2015-08-09','a:2:{s:8:\"imgwidth\";s:2:\"48\";s:9:\"imgheight\";s:2:\"48\";}'),(21,0,'Movies Mgmt','movies/list','movies','icon-list',0,15,'2015-10-30',''),(22,0,'Theaters','theaters/list','theaters','icon-film',0,17,'2015-11-01',''),(23,25,'Package Mgmt','package/list','package','icon-exchange',1,5,'2016-06-17','a:6:{s:8:\"imgwidth\";s:1:\"4\";s:9:\"imgheight\";s:3:\"350\";s:12:\"subbimgwidth\";s:2:\"11\";s:13:\"subbimgheight\";s:2:\"12\";s:11:\"subimgwidth\";s:2:\"13\";s:12:\"subimgheight\";s:2:\"14\";}'),(24,25,'Features Mgmt','features/list','features','icon-gear',1,1,'2016-11-16',''),(25,0,'Package Mgmt','package/list','','icon-bullhorn',1,4,'2016-11-16',''),(26,0,'Activity Mgmt','activity/list','activity','\r\nicon-hand-o-left',0,7,'0000-00-00','a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),(27,0,'Blog Mgmt','blog/list','blog','\r\n\r\n\r\n\r\nicon-list-alt',1,8,'0000-00-00','a:2:{s:8:\"imgwidth\";s:2:\"22\";s:9:\"imgheight\";s:2:\"22\";}'),(28,0,'Popup','popup/list','popup','icon-list',1,20,'2020-02-13','a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"300\";}'),(29,0,' News/Events Mgmt','combinednews/list','combinednews','icon-tags',0,14,'2020-09-05','a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),(30,0,'Product Mgmt','product/list','product','icon-list',0,1,'2021-11-25',''),(36,0,'Notice Mgmt','notice/list','notice','icon-list-alt',1,14,'2022-02-18',''),(74,0,'Users','','','icon-users',1,1,'2021-10-03',''),(300,0,'FAQ','faq/list','faq','icon-list',1,8,'2023-08-31',''),(301,0,'Nearby ','nearby/list','nearby','icon-list',1,8,'2023-08-29','a:2:{s:8:\"imgwidth\";s:2:\"23\";s:9:\"imgheight\";s:2:\"23\";}'),(302,0,'Vacancy Mgmt','vacency/list','vacency','icon-list',1,7,'2023-08-28',''),(303,0,'Main service Mgt','mservices/list','mservice','icon-list',1,6,'2023-09-01','a:2:{s:8:\"imgwidth\";s:2:\"12\";s:9:\"imgheight\";s:2:\"12\";}'),(304,0,'OTA Mgmt','ota/list','ota','icon-google-plus',0,12,'0000-00-00','a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),(305,0,'Nearby ','nearby/list','nearby','icon-list',0,8,'2023-08-29',''),(306,74,'User Group','usergroup/list','usergroup','icon-gears',1,3,'2023-10-10',''),(309,0,'Download Mgmt','download/list','download','icon-gear',1,7,'2024-03-28',''),(310,0,'Team Mgmt','teams/list','teams','icon-users',1,7,'2025-02-10','');
/*!40000 ALTER TABLE `tbl_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nearby`
--

DROP TABLE IF EXISTS `tbl_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nearby` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `homepage` int NOT NULL DEFAULT '0',
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nearby`
--

LOCK TABLES `tbl_nearby` WRITE;
/*!40000 ALTER TABLE `tbl_nearby` DISABLE KEYS */;
INSERT INTO `tbl_nearby` VALUES (13,0,'nagarkot-view-tower','Nagarkot View Tower','Nagarkot View Tower','<p>\r\n	Nagarkot, at an altitude of 2,175 meters above the sea level, is the most popular touristic destination out of the Kathmandu ValleyNagarkot, at an altitude of 2,175 meters above the sea level, is the most popular touristic destination out of the Kathmandu Valley</p>\r\n',0,'',1,'','','',0,'2023-09-04 13:25:10','2023-09-04 13:25:10',1,0,_binary 'a:0:{}','','','3.6 K.m'),(14,0,'mahankal-temple','Mahankal Temple','Mahankal Temple','<p>\r\n	The temple of Mahankal is situated near New Road in Kathmandu. Mahankal denotes someone who is beyond time and the Lord Mahankal is also known as Mahankaleshvar. The temple as well as the statue of the god is one of the most amazing examples of the Nepalese ancient heritage. Every day thousands of devotees come to worship the Lord in this temple. The area is also called Mahankal because of the presence of the temple.</p>\r\n',0,'',1,'','','',0,'2023-09-04 13:26:09','2023-09-04 13:26:09',2,0,_binary 'a:0:{}','','','30.8 km'),(15,0,'santi-stupa','Santi stupa','santi stupa','',0,'',1,'','','',0,'2023-09-04 13:26:55','2023-09-04 13:26:55',3,0,_binary 'a:0:{}','','','46.2 km'),(16,0,'changu-narayan-temple','Changu Narayan Temple','Changu Narayan Temple','',0,'',1,'','','',0,'2023-09-04 13:27:35','2023-09-04 13:27:35',4,0,_binary 'a:0:{}','','','19.8 km'),(17,0,'dhulikhel','Dhulikhel','Dhulikhel','',0,'',1,'','','',0,'2023-09-04 13:28:02','2023-09-04 13:28:02',5,0,_binary 'a:0:{}','','','23.8 km'),(18,0,'bhaktapur','Bhaktapur','Bhaktapur','<p>\r\n	testing</p>\r\n',0,'',1,'','','',0,'2023-09-04 13:28:33','2023-09-04 13:29:17',6,0,_binary 'a:0:{}','','','16.7 km');
/*!40000 ALTER TABLE `tbl_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_news`
--

DROP TABLE IF EXISTS `tbl_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `author` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `brief` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `source` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `viewcount` int NOT NULL DEFAULT '0',
  `meta_keywords` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `added_date` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_news`
--

LOCK TABLES `tbl_news` WRITE;
/*!40000 ALTER TABLE `tbl_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notice`
--

DROP TABLE IF EXISTS `tbl_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `title_np` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `author_np` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linksrc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `notice_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `content_np` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notice`
--

LOCK TABLES `tbl_notice` WRITE;
/*!40000 ALTER TABLE `tbl_notice` DISABLE KEYS */;
INSERT INTO `tbl_notice` VALUES (1,'can-cycling-cause-skin-cancer','Can Cycling Cause Skin Cancer?','','Palpa District Cycling Association','Palpa District Cycling Association','https://drive.google.com/file/d/1Z8Ekp8hALEoBSWI2jOr1aM3BLaEV50G7/view?usp=sharing','chxLr-1hum7-sajha-yatayat_bolpatra-radda.pdf','',1,'','',1,1,'2025-02-13 12:43:45','2025-02-13 13:26:18'),(2,'usa-cycling-announces-2025-cyclocross-world-championships-team','USA Cycling Announces 2025 Cyclocross World Championships Team','','Palpa District Cycling Association','Palpa District Cycling Association','','','',1,'','',1,2,'2025-02-13 13:27:59','2025-02-13 13:27:59'),(3,'how-to-watch-the-2025-uci-cyclocross-world-championships','How To Watch the 2025 UCI Cyclocross World Championships','','Palpa District Cycling Association','Palpa District Cycling Association','','','',1,'','',1,3,'2025-02-13 14:15:59','2025-02-13 14:15:59'),(4,'how-to-watch-the-2025-uci-cyclocross-world-championships','How To Watch the 2025 UCI Cyclocross World Championships','','Palpa District Cycling Association','Palpa District Cycling Association','','','',1,'','',1,4,'2025-02-13 14:16:07','2025-02-13 14:16:07'),(5,'test','test','','Palpa District Cycling Association','Palpa District Cycling Association','','','',1,'','',0,5,'2025-02-13 14:39:28','2025-02-13 14:39:28'),(6,'test','test','','Palpa District Cycling Association','Palpa District Cycling Association','','','',1,'','',0,6,'2025-02-13 14:42:08','2025-02-13 14:42:08'),(7,'test','test','','Palpa District Cycling Association','Palpa District Cycling Association','','','',1,'','',0,7,'2025-02-13 14:42:20','2025-02-13 14:42:20');
/*!40000 ALTER TABLE `tbl_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_offer_child`
--

DROP TABLE IF EXISTS `tbl_offer_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_offer_child` (
  `offer_id` int NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int NOT NULL,
  KEY `offer_id` (`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_offer_child`
--

LOCK TABLES `tbl_offer_child` WRITE;
/*!40000 ALTER TABLE `tbl_offer_child` DISABLE KEYS */;
INSERT INTO `tbl_offer_child` VALUES (1,'12','23','','',1),(1,'11','34','','',2);
/*!40000 ALTER TABLE `tbl_offer_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_offers`
--

DROP TABLE IF EXISTS `tbl_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_offers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int NOT NULL,
  `children` int NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `rate` int NOT NULL,
  `discount` int NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `added_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_offers`
--

LOCK TABLES `tbl_offers` WRITE;
/*!40000 ALTER TABLE `tbl_offers` DISABLE KEYS */;
INSERT INTO `tbl_offers` VALUES (1,'asas','ASAs','AdgZx-facilities.jpg','aKLfu-1920x1064_bg.jpg',1,0,'',0,12,3,'','<p>\r\n	Aas</p>\r\n',1,'2024-01-10 13:29:39',1,0);
/*!40000 ALTER TABLE `tbl_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ota`
--

DROP TABLE IF EXISTS `tbl_ota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ota` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ota`
--

LOCK TABLES `tbl_ota` WRITE;
/*!40000 ALTER TABLE `tbl_ota` DISABLE KEYS */;
INSERT INTO `tbl_ota` VALUES (7,'booking','guqcq-bo.png','','#',1,1,''),(8,'agoda','8fj3b-ag.png','','#',1,2,''),(9,'expedia','hhqsu-ex.png','','#',1,3,''),(10,'tripadvisor','qw86F-ta.png','','#',1,4,''),(11,'Make My Trip','sFzjy-ma.png','','#',1,5,'');
/*!40000 ALTER TABLE `tbl_ota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_package`
--

DROP TABLE IF EXISTS `tbl_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_package` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb3_unicode_ci NOT NULL,
  `sub_title` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `banner_image` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` int NOT NULL,
  `country` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_package`
--

LOCK TABLES `tbl_package` WRITE;
/*!40000 ALTER TABLE `tbl_package` DISABLE KEYS */;
INSERT INTO `tbl_package` VALUES (15,'charity','Charity','','','','a:0:{}','','','','','',1,1,'2025-02-10 11:19:31','2025-02-10 11:19:31',0,''),(16,'special-event','Special Event','','','','a:0:{}','','','','','',1,2,'2025-02-10 11:43:26','2025-02-10 11:43:26',0,''),(17,'social-event','Social Event','','','','a:0:{}','','','','','',1,3,'2025-02-10 11:45:54','2025-02-13 11:29:12',0,'');
/*!40000 ALTER TABLE `tbl_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_package_sub`
--

DROP TABLE IF EXISTS `tbl_package_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_package_sub` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `sub_title` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `detail` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `image2` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image4` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `facility_title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `number_room` int NOT NULL,
  `currency` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `discount` int NOT NULL,
  `people_qnty` int NOT NULL,
  `onep_price` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `twop_price` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `threep_price` int NOT NULL,
  `oneb_price` int NOT NULL,
  `twob_price` int NOT NULL,
  `threeb_price` int NOT NULL,
  `extra_bed` varchar(10) COLLATE utf8mb3_unicode_ci NOT NULL,
  `short_title` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `serve` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `theatre_style` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `class_room_style` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `shape` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `round_table` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `clusture` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `cocktail` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `seats` varchar(20) COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `below_content` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `seminar` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `meeting` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `events` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `conference` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `catering` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `celebration` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `organic_food` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `occupancy` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `view` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `service` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `live_music` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `bed` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `room_size` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `room_service` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `airport_pickup` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `private_balcony` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `checkinout` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rojai_room_id` int DEFAULT NULL,
  `projectstatus` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_package_sub`
--

LOCK TABLES `tbl_package_sub` WRITE;
/*!40000 ALTER TABLE `tbl_package_sub` DISABLE KEYS */;
INSERT INTO `tbl_package_sub` VALUES (46,'heritage-ride-2081','Heritage Ride-2081','','','a:1:{i:0;s:16:\"1Ar2R-event1.jpg\";}','','','','',_binary 'a:0:{}','','',1,'',0,0,'0','0',0,0,0,0,'','','','','','','','','','','','','','','',1,1,'2025-02-10 11:32:05','2025-02-10 11:39:36',15,'','','','','','','','','','','','','','','','','','','',0,0),(47,'heritage-ride-2082','Heritage Ride-2082','','Riders from all over country have registered for the inaugural event Many will be staying in our club over the weekend boosting tourism and bringing considerable economic benefits to the local region.','a:1:{i:0;s:16:\"1avak-event5.jpg\";}','','','','',_binary 'a:0:{}','<p class=\"rdn_boldtext\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 30px; font-weight: 600; color: rgb(85, 85, 85); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	Laboriosam sit iusto, eveniet veritatis illo a ex itaque ullam molestiae inventore repudiandae corporis laborum cumque porro obcaecati voluptatum amet numquam assumenda non.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 30px; color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	Dolores facere voluptas fugit numquam. Impedit sequi, magni quos excepturi cum odit saepe, assumenda voluptatibus quasi voluptas nemo iusto. Minima aspernatur temporibus illo, dolorem rerum exercitationem facere nesciunt magni dignissimos molestias est tempore molestiae asperiores reiciendis ipsum.</p>\r\n<div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 30px; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -.5); margin-left: calc(var(--bs-gutter-x) * -.5); color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	<div class=\"col-lg-6\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 440px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); -webkit-box-flex: 0;\">\r\n		<ul class=\"rdn_list\" style=\"box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin: 0px; list-style: none;\">\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				They shall in a Term of four Years.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				A narrow wedge of light from framed a heap.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				State from which he fled hall be liable.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-lg-6\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 440px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); -webkit-box-flex: 0;\">\r\n		<ul class=\"rdn_list\" style=\"box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin: 0px; list-style: none;\">\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				If any Bill shall be entered.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Representatives and direct Taxes.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Majority of each State.</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n','',1,'08.00 AM -',0,0,'0','2025',0,0,0,0,'','','','','','','','','','','','Tansen, Palpa, Nepal','','','',1,2,'2025-02-10 11:33:39','2025-02-11 15:10:13',15,'','','','','','','','','','','','','','','','','','','',0,2),(48,'heirtage-ride','Heirtage Ride','','Riders from all over country have registered for the inaugural event Many will be staying in our club over the weekend boosting tourism and bringing considerable economic benefits to the local region.','a:1:{i:0;s:16:\"TIPV3-event7.jpg\";}','','','','',_binary 'a:0:{}','<p class=\"rdn_boldtext\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 30px; font-weight: 600; color: rgb(85, 85, 85); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	Laboriosam sit iusto, eveniet veritatis illo a ex itaque ullam molestiae inventore repudiandae corporis laborum cumque porro obcaecati voluptatum amet numquam assumenda non.</p>\r\n<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 30px; color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	Dolores facere voluptas fugit numquam. Impedit sequi, magni quos excepturi cum odit saepe, assumenda voluptatibus quasi voluptas nemo iusto. Minima aspernatur temporibus illo, dolorem rerum exercitationem facere nesciunt magni dignissimos molestias est tempore molestiae asperiores reiciendis ipsum.</p>\r\n<div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 30px; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(var(--bs-gutter-y) * -1); margin-right: calc(var(--bs-gutter-x) * -.5); margin-left: calc(var(--bs-gutter-x) * -.5); color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">\r\n	<div class=\"col-lg-6\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 440px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); -webkit-box-flex: 0;\">\r\n		<ul class=\"rdn_list\" style=\"box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin: 0px; list-style: none;\">\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				They shall in a Term of four Years.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				A narrow wedge of light from framed a heap.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				State from which he fled hall be liable.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-lg-6\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 440px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); -webkit-box-flex: 0;\">\r\n		<ul class=\"rdn_list\" style=\"box-sizing: border-box; padding-right: 0px; padding-left: 0px; margin: 0px; list-style: none;\">\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				If any Bill shall be entered.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Representatives and direct Taxes.</li>\r\n			<li style=\"box-sizing: border-box; margin-bottom: 15px; padding: 0px; display: flex; -webkit-box-align: start; align-items: flex-start;\">\r\n				Majority of each State.</li>\r\n		</ul>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n','',1,'08.00 AM - 01.00 PM',0,0,'All Member Allowed','2025-02-11',0,0,0,0,'','','','','','','','','','','','Tansen, Palpa, Nepal','','','',1,3,'2025-02-10 11:34:08','2025-02-13 11:37:44',15,'','','','','','','','','','','','','','','','','','','',0,1),(49,'senior-metro-road-1','Senior Metro Road 1','','','a:1:{i:0;s:16:\"oJ4FS-event1.jpg\";}','','','','',_binary 'a:0:{}','','',1,'',0,0,'0','0',0,0,0,0,'','','','','','','','','','','','','','','',1,1,'2025-02-10 11:44:10','2025-02-10 11:44:10',16,'','','','','','','','','','','','','','','','','','','',0,0),(50,'senior-metro-road-2','Senior Metro Road 2','','','a:1:{i:0;s:16:\"62AAw-event7.jpg\";}','','','','',_binary 'a:0:{}','','',1,'',0,0,'0','0',0,0,0,0,'','','','','','','','','','','','','','','',1,2,'2025-02-10 11:44:32','2025-02-10 11:45:13',16,'','','','','','','','','','','','','','','','','','','',0,1),(51,'senior-metro-road-3','Senior Metro Road 3','','','a:1:{i:0;s:16:\"FicKh-event2.jpg\";}','','','','',_binary 'a:0:{}','','',1,'',0,0,'0','0',0,0,0,0,'','','','','','','','','','','','','','','',1,3,'2025-02-10 11:44:56','2025-02-10 11:44:56',16,'','','','','','','','','','','','','','','','','','','',0,2),(52,'heritage-1','Heritage 1','','','a:1:{i:0;s:16:\"LcP2j-event3.jpg\";}','','','','',_binary 'a:0:{}','','',1,'',0,0,'0','0',0,0,0,0,'','','','','','','','','','','','','','','',1,1,'2025-02-10 11:46:19','2025-02-10 11:46:19',17,'','','','','','','','','','','','','','','','','','','',0,0),(53,'heritage-2','Heritage 2','','','a:1:{i:0;s:16:\"qoDQr-event4.jpg\";}','','','','',_binary 'a:0:{}','','',1,'',0,0,'0','0',0,0,0,0,'','','','','','','','','','','','','','','',1,2,'2025-02-10 11:46:37','2025-02-11 13:05:10',17,'','','','','','','','','','','','','','','','','','','',0,0),(54,'heritage-3','Heritage 3','','','a:1:{i:0;s:16:\"lCA5n-event6.jpg\";}','','','','',_binary 'a:0:{}','','',1,'',0,0,'0','0',0,0,0,0,'','','','','','','','','','','','','','','',1,3,'2025-02-10 11:46:58','2025-02-10 11:46:58',17,'','','','','','','','','','','','','','','','','','','',0,2);
/*!40000 ALTER TABLE `tbl_package_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_permission`
--

DROP TABLE IF EXISTS `tbl_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(5) COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_id` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `module_id` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_permission`
--

LOCK TABLES `tbl_permission` WRITE;
/*!40000 ALTER TABLE `tbl_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_popup`
--

DROP TABLE IF EXISTS `tbl_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_popup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `type` int NOT NULL,
  `slug` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_popup`
--

LOCK TABLES `tbl_popup` WRITE;
/*!40000 ALTER TABLE `tbl_popup` DISABLE KEYS */;
INSERT INTO `tbl_popup` VALUES (1,'sdad','2023-09-03','2023-09-21','a:1:{i:0;s:18:\"V8G5t-82861346.jpg\";}','','0','about-us',1,0,1,1,'sdad'),(2,'asefasdasd','2024-01-01','2024-01-31','a:1:{i:0;s:22:\"nrUrx-880x864_img2.jpg\";}','','0','about-us',1,1,2,1,'asefasdasd'),(3,'asdf','2025-02-13','2025-02-16','a:2:{i:0;s:16:\"MWjj9-small3.jpg\";i:1;s:16:\"g3KeQ-small4.jpg\";}','','0','',2,1,3,1,'asdf'),(4,'asdfadsf','2025-02-13','2025-02-17','','https://www.youtube.com/watch?v=o1W9OWkbQvg','0','',1,1,4,0,'asdfadsf'),(5,'asdfsdf','2025-02-13','2025-02-17','','https://www.youtube.com/watch?v=o1W9OWkbQvg','0','',1,1,5,0,'asdfsdf');
/*!40000 ALTER TABLE `tbl_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_jpg` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img_png` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `img_svg` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `modified_date` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (2,'test','test ','<p>\r\n	dfcgvhhjbk</p>\r\n','','','','',1,1,'2021-11-24 12:47:12','2021-11-24 12:50:00');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_review`
--

DROP TABLE IF EXISTS `tbl_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_review` (
  `id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `review_hotel_id` int NOT NULL,
  `hotel_id` int NOT NULL DEFAULT '0',
  `review` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `rating` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_review`
--

LOCK TABLES `tbl_review` WRITE;
/*!40000 ALTER TABLE `tbl_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_room_price`
--

DROP TABLE IF EXISTS `tbl_room_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_room_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `season_id` int NOT NULL,
  `one_person` int NOT NULL,
  `two_person` int NOT NULL,
  `three_person` int NOT NULL,
  `registered` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_room_price`
--

LOCK TABLES `tbl_room_price` WRITE;
/*!40000 ALTER TABLE `tbl_room_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_room_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_services`
--

DROP TABLE IF EXISTS `tbl_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `added_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint NOT NULL,
  `meta_keywords` int NOT NULL,
  `meta_description` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_services`
--

LOCK TABLES `tbl_services` WRITE;
/*!40000 ALTER TABLE `tbl_services` DISABLE KEYS */;
INSERT INTO `tbl_services` VALUES (66,'tourism-promotion','Tourism Promotion','','a:0:{}','ph-medal','',0,'<p>\r\n	<span style=\"color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">Highlighting the beautiful landscapes and historical sites of Palpa through organized cycling tours.</span></p>\r\n',1,'2025-02-07 12:37:35',2,0,'',0,0,0),(64,'training-programs','Training Programs','','a:0:{}','ph-medal','',0,'Offering training sessions for beginners and advanced cyclists to improve their skills and knowledge.',1,'2025-02-07 12:36:10',0,0,'',0,0,0),(65,'community-engagement','Community Engagement','','a:0:{}','ph-medal','',0,'<p>\r\n	<span style=\"color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">Collaborating with local schools, businesses, and organizations to promote cycling and its benefits.</span></p>\r\n',1,'2025-02-07 12:37:00',1,0,'',0,0,0),(63,'cycling-events','Cycling Events','','a:0:{}','ph-medal','',0,'<p>\r\n	<span style=\"color: rgb(102, 102, 102); font-family: Archivo, sans-serif; font-size: 16px;\">We organize regular cycling tours, races, and community rides to encourage participation from all age groups.</span></p>\r\n',1,'2025-02-07 12:35:11',3,0,'',0,0,0);
/*!40000 ALTER TABLE `tbl_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slideshow`
--

DROP TABLE IF EXISTS `tbl_slideshow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slideshow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `m_status` tinyint(1) NOT NULL DEFAULT '1',
  `added_date` varchar(50) NOT NULL,
  `sortorder` int NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `source` varchar(250) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `mode` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slideshow`
--

LOCK TABLES `tbl_slideshow` WRITE;
/*!40000 ALTER TABLE `tbl_slideshow` DISABLE KEYS */;
INSERT INTO `tbl_slideshow` VALUES (81,'We are the best cycling club in town.','ABvBd-slider1.jpg','',0,'',1,0,'2025-02-06 16:04:55',2,0,'','','','','','','',1),(82,'We are the best cycling club in town.','wndKx-slider2.jpg','',0,'',1,0,'2025-02-06 16:05:24',3,0,'','','','','','','',1),(44,'asdasdasd','','',0,'',0,0,'2024-01-28 13:03:33',1,1,'https://www.youtube.com/watch?v=LKLBRwEpF1c','','','','','','',0);
/*!40000 ALTER TABLE `tbl_slideshow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

DROP TABLE IF EXISTS `tbl_slideshows_withouttlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `sortorder` int NOT NULL,
  `registered` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_slideshows_withouttlist`
--

LOCK TABLES `tbl_slideshows_withouttlist` WRITE;
/*!40000 ALTER TABLE `tbl_slideshows_withouttlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_slideshows_withouttlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_social_networking`
--

DROP TABLE IF EXISTS `tbl_social_networking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_social_networking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` int NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_social_networking`
--

LOCK TABLES `tbl_social_networking` WRITE;
/*!40000 ALTER TABLE `tbl_social_networking` DISABLE KEYS */;
INSERT INTO `tbl_social_networking` VALUES (10,'Yoga','HwvV3-client6.png','',2,'#',1,10,'2025-02-12 17:09:28'),(9,'100% organic','NLvLq-client7.png','',2,'#',1,9,'2025-02-12 17:08:52'),(5,'Instagram','','fab fa-instagram',1,'instagram.com',1,5,'2025-02-07 12:14:28'),(6,'Pinterest','','fab fa-pinterest',1,'#',1,6,'2025-02-07 12:14:43'),(7,'Twitter','','fab fa-twitter',1,'#',1,7,'2025-02-07 12:15:02'),(8,'Facebook','','fab fa-facebook',1,'#',1,8,'2025-02-07 12:15:20'),(11,'Natural product','amHHo-client5.png','',2,'#',1,11,'2025-02-12 17:09:46'),(12,'Organic','qQije-client4.png','',2,'#',1,12,'2025-02-12 17:10:11'),(13,'Organic product','g8uMG-client3.png','',2,'#',1,13,'2025-02-12 17:10:32'),(14,'Beauty','hOhEV-client2.png','',2,'#',1,14,'2025-02-12 17:10:56'),(15,'Coffee','nIWjC-client1.png','',2,'#',1,15,'2025-02-12 17:12:05');
/*!40000 ALTER TABLE `tbl_social_networking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subpackage_images`
--

DROP TABLE IF EXISTS `tbl_subpackage_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subpackage_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `subpackageid` int NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int NOT NULL,
  `sortorder` int NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subpackage_images`
--

LOCK TABLES `tbl_subpackage_images` WRITE;
/*!40000 ALTER TABLE `tbl_subpackage_images` DISABLE KEYS */;
INSERT INTO `tbl_subpackage_images` VALUES (73,'Hall',31,'',1,19,'2023-06-21 13:59:14','lumn1-1.jpg'),(74,'Hall',31,'',1,20,'2023-06-21 13:59:14','TXYew-2.jpg'),(75,'Hall',31,'',1,21,'2023-06-21 13:59:14','3WSgO-3.jpg'),(76,'Hall',31,'',1,22,'2023-06-21 13:59:14','V7UWD-4.jpg'),(77,'Hall',31,'',1,23,'2023-06-21 13:59:14','IZ0in-5.jpg'),(78,'Hall',31,'',1,24,'2023-06-21 13:59:14','s8rXz-6.jpg'),(96,'n',39,'',1,8,'2023-08-29 14:54:22','1ftnO-img2.jpg'),(97,'nn',39,'',1,17,'2023-08-29 14:54:22','T13H4-img2.jpg'),(98,'n',39,'',1,18,'2023-08-29 14:54:22','6ZaBg-img2.jpg'),(105,'dep',28,'',1,2,'2023-09-04 12:42:45','h26jS-delpre.jpg'),(106,'dep',28,'',1,9,'2023-09-04 12:42:45','4PvHa-delpre.jpg'),(107,'dep',28,'',1,14,'2023-09-04 12:42:45','aTYbg-delpre.jpg'),(108,'a',42,'',1,4,'2023-09-04 12:58:24','Jpoxc-img3.jpg'),(109,'a',42,'',1,10,'2023-09-04 12:58:24','Xlari-img3.jpg'),(110,'s',43,'',1,5,'2023-09-04 13:00:16','eUhDU-880x864_img2.jpg'),(111,'s',43,'',1,11,'2023-09-04 13:00:16','DlMGX-880x864_img2.jpg'),(114,'deluxe',29,'',1,6,'2023-09-15 11:40:40','FFzBD-del.jpg'),(115,'delxue',29,'',1,12,'2023-09-15 11:40:40','D5uYC-del.jpg'),(116,'deluxe',29,'',1,15,'2023-09-15 11:40:40','ecYs1-del.jpg'),(117,'standard',41,'',1,13,'2023-09-17 12:48:42','wath6-standard.jpg'),(118,'standard',41,'',1,7,'2023-09-17 12:48:42','zSkxL-stand.jpg'),(119,'standard',41,'',1,16,'2023-09-17 12:48:42','8Ws0F-stand.jpg'),(121,'lib',44,'',1,1,'2023-09-17 17:18:17','mEXDT-library.jpg'),(122,'lib',44,'',1,3,'2023-09-17 17:18:17','nFb8K-library.jpg'),(123,'heritage',48,'',1,1,'2025-02-11 14:51:05','c6xxC-single2.jpg'),(124,'heritage',48,'',1,2,'2025-02-11 14:51:05','T8bqp-single1.jpg'),(125,'heritage',48,'',1,3,'2025-02-11 14:51:05','BrbSi-single4.jpg'),(126,'heritage',48,'',1,4,'2025-02-11 14:51:05','as1ux-single3.jpg');
/*!40000 ALTER TABLE `tbl_subpackage_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_subscribers`
--

DROP TABLE IF EXISTS `tbl_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_subscribers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_subscribers`
--

LOCK TABLES `tbl_subscribers` WRITE;
/*!40000 ALTER TABLE `tbl_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_teams`
--

DROP TABLE IF EXISTS `tbl_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_teams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `sub_title` tinytext NOT NULL,
  `image` varchar(50) NOT NULL,
  `pac_icon` text NOT NULL,
  `header_image` tinytext NOT NULL,
  `banner_image` text NOT NULL,
  `detail` mediumtext NOT NULL,
  `content` text NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int NOT NULL,
  `team` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_teams`
--

LOCK TABLES `tbl_teams` WRITE;
/*!40000 ALTER TABLE `tbl_teams` DISABLE KEYS */;
INSERT INTO `tbl_teams` VALUES (3,'member','Member','','','','','a:0:{}','','','','','',1,1,'2025-02-11 16:31:05',0,0),(4,'executive','executive','','','','','a:0:{}','','','','','',1,2,'2025-02-12 12:28:46',0,0);
/*!40000 ALTER TABLE `tbl_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_teams_sub`
--

DROP TABLE IF EXISTS `tbl_teams_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_teams_sub` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `nmc` varchar(200) NOT NULL,
  `qualification` mediumtext NOT NULL,
  `image` text NOT NULL,
  `header_image` tinytext NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `offers` text NOT NULL,
  `offer_link` text NOT NULL,
  `pac_icon` text NOT NULL,
  `feature` blob NOT NULL,
  `content` text NOT NULL,
  `facility_title` varchar(255) NOT NULL,
  `number_room` tinytext NOT NULL,
  `currency` tinytext NOT NULL,
  `discount` int NOT NULL,
  `people_qnty` tinytext NOT NULL,
  `onep_price` tinytext NOT NULL,
  `twop_price` tinytext NOT NULL,
  `threep_price` int NOT NULL DEFAULT '0',
  `extra_bed` tinytext NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` tinytext NOT NULL,
  `meta_description` tinytext NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0',
  `schedule` text NOT NULL,
  `team` int NOT NULL,
  `color` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_teams_sub`
--

LOCK TABLES `tbl_teams_sub` WRITE;
/*!40000 ALTER TABLE `tbl_teams_sub` DISABLE KEYS */;
INSERT INTO `tbl_teams_sub` VALUES (2,'asdfasdf','asdfasdf','asdf','a:1:{i:0;s:4:\"asdf\";}','','','','','','','','','','','','',0,'','','',0,'','','','',1,1,'2025-02-11 11:28:34',2,'',0,0),(3,'john-doea','John doea','Member','a:1:{i:0;s:4:\"asdf\";}','','','','','','','','','','','','',0,'','','',0,'','','','',1,1,'2025-02-11 16:45:12',3,'',0,0),(4,'john-doe','John doe','Member','a:1:{i:0;s:0:\"\";}','','','9jPqO-event1.jpg','','','','','','','','','',0,'','','',0,'','','','',1,2,'2025-02-12 11:54:52',3,'',0,0),(5,'john-doe','John doe','Member','a:1:{i:0;s:0:\"\";}','','','PVpwg-event1.jpg','','','','','','','','','',0,'','','',0,'','','','',1,3,'2025-02-12 11:56:16',3,'',0,0),(6,'asdfasdf','asdfasdf','executive','a:1:{i:0;s:0:\"\";}','','','','','','','','','','','','',0,'','','',0,'','','','',1,1,'2025-02-12 12:28:57',4,'',0,0);
/*!40000 ALTER TABLE `tbl_teams_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_testimonial`
--

DROP TABLE IF EXISTS `tbl_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_testimonial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parentOf` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(225) COLLATE utf8mb3_unicode_ci NOT NULL,
  `linksrc` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `sortorder` int NOT NULL,
  `status` int DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `via_type` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `type` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_testimonial`
--

LOCK TABLES `tbl_testimonial` WRITE;
/*!40000 ALTER TABLE `tbl_testimonial` DISABLE KEYS */;
INSERT INTO `tbl_testimonial` VALUES (1,0,'WIRAEN','FP3jC-review1.jpg','','<p>\r\n	Stayed one night after a hike from Chisopani. The hotel was clean and spacious. We had a lovely time wondering around the premise. There were plenty of outdoor viewing areas and the rooms were huge! Buffet were good too. Wish we had time to wonder around the little town.</p>\r\n',0,1,1,'','MALAYSIA',0),(2,0,'Greg. S ','lLPbj-review2.jpg','','<h3>\r\n	This is a beautiful hotel with the best views of the Himalayan mountains at sunrise. It is really worth the effort to get up before sunrise. The rooms are spacious well appointed and warm. The meals are excellent with a delicious Buffet breakfast and dinner. It is well well worth the effort to visit Nagarkot and stay at the Club Himalaya ffffffffffffff</h3>\r\n',0,2,1,'','Wagga',0),(3,0,'Andrew Parker','NPgI4-3.jpg','link','<h3>\r\n	I stayed at your Club Himalaya Hotel in Nagarkot back in January and have to say it&rsquo;s one of the best places I&rsquo;ve ever spent the night (in fact 3 nights!). Fantastic and the staff were wonderful too &ndash; especially the ever-smiling female receptionist and waitress Binita, who are a credit to your establishment and nation.</h3>\r\n',5,3,1,'WIRAEN - MALAYSIA','- writer',0);
/*!40000 ALTER TABLE `tbl_testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `middle_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `contact` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `optional_email` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `hall_email` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `hr_email` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(65) COLLATE utf8mb3_unicode_ci NOT NULL,
  `accesskey` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `group_id` int NOT NULL,
  `access_code` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook_uid` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook_accesstoken` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'Palpa District Cycling Association','','','','anuj@longtail.info','anuj@longtail.info','anuj@longtail.info','anuj@longtail.info','admin','32b9da145699ea9058dd7d6669e6bcc5','vlrlQBRYuYOmkJgOTwmGoZSnJ','',2,'IKLxivj8RW','','','2021-04-29 05:40:38',1,1,'2014-03-26',_binary 'a:21:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:2:\"25\";i:4;s:2:\"24\";i:5;s:2:\"23\";i:6;s:1:\"4\";i:7;s:3:\"302\";i:8;s:3:\"303\";i:9;s:1:\"5\";i:10;s:2:\"27\";i:11;s:3:\"300\";i:12;s:3:\"301\";i:13;s:2:\"11\";i:14;s:3:\"304\";i:15;s:2:\"17\";i:16;s:2:\"20\";i:17;s:2:\"28\";i:18;s:2:\"12\";i:19;s:2:\"13\";i:20;s:2:\"14\";}'),(2,'Super admin','','','','support@longtail.info','support@longtail.info','support@longtail.info','support@longtail.info','superadmin','4ef961d430016feab913571a25818e97','5BnuwlwbgTcJNtbymC8Kmq23e','',1,'','','','2023-11-09 10:05:54',1,0,'0000-00-00',_binary 'a:26:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:3:\"306\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:2:\"25\";i:6;s:2:\"24\";i:7;s:2:\"23\";i:8;s:1:\"4\";i:9;s:3:\"302\";i:10;s:3:\"303\";i:11;s:1:\"5\";i:12;s:2:\"27\";i:13;s:3:\"300\";i:14;s:3:\"301\";i:15;s:3:\"305\";i:16;s:2:\"11\";i:17;s:2:\"17\";i:18;s:3:\"304\";i:19;s:2:\"20\";i:20;s:2:\"19\";i:21;s:2:\"28\";i:22;s:2:\"12\";i:23;s:2:\"13\";i:24;s:2:\"14\";i:25;s:2:\"16\";}'),(3,'asdasd','asdasd','asdasd','','stat@gmail.com','stat@gmail.com','stat@gmail.com','stat@gmail.com','asdas','80c9ef0fb86369cd25f90af27ef53a9e','XZtQjE8Rse66xhHG6sSVqzyDZ','',3,'','','','0000-00-00 00:00:00',1,2,'2024-01-10','');
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vacency`
--

DROP TABLE IF EXISTS `tbl_vacency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_vacency` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `image` varchar(50) NOT NULL,
  `type` int NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vacency`
--

LOCK TABLES `tbl_vacency` WRITE;
/*!40000 ALTER TABLE `tbl_vacency` DISABLE KEYS */;
INSERT INTO `tbl_vacency` VALUES (9,'Asst. Laundry Manager','Manager','Kathmandu, Nepal','asst-laundry-manager','1','<p>\r\n	Bachelor</p>\r\n','0000-00-00','2023-08-31','0000-00-00',1,1,'',0,'','','2023-08-28 15:12:02'),(10,'Painter / Plumber','Painter / Plumber','Kathmandu, Nepal','painter-plumber','1','<p>\r\n	<span style=\"color: rgb(71, 61, 53); font-family: Roboto, sans-serif; font-size: 20px; background-color: rgb(247, 246, 246);\">Painter / Plumber</span></p>\r\n','0000-00-00','2023-09-22','0000-00-00',3,1,'',0,'','','2023-08-29 11:42:43'),(12,'Sales Executive','Sales Executive','patan','sales-executive','1','<p>\r\n	asdasd</p>\r\n','0000-00-00','2023-09-15','0000-00-00',2,1,'',0,'','','2023-09-03 15:03:21');
/*!40000 ALTER TABLE `tbl_vacency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_video`
--

DROP TABLE IF EXISTS `tbl_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(200) COLLATE utf8mb3_unicode_ci NOT NULL,
  `url_type` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `thumb_image` longtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8mb3_unicode_ci NOT NULL,
  `class` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `sortorder` int NOT NULL,
  `added_date` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_video`
--

LOCK TABLES `tbl_video` WRITE;
/*!40000 ALTER TABLE `tbl_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-14 11:18:53
