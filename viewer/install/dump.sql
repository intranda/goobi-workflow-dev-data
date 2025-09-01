-- MariaDB dump 10.19-11.4.5-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: viewer
-- ------------------------------------------------------
-- Server version	11.4.5-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `PersistentCMSComponent_ATTRIBUTES`
--

DROP TABLE IF EXISTS `PersistentCMSComponent_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `PersistentCMSComponent_ATTRIBUTES` (
  `PersistentCMSComponent_component_id` bigint(20) DEFAULT NULL,
  `cms_component_attributes` varchar(255) DEFAULT NULL,
  `component_id` varchar(255) DEFAULT NULL,
  KEY `PrsstntCMSCmpnntTTRBUTESPrsstntCMSCmpnntcmponentid` (`PersistentCMSComponent_component_id`),
  CONSTRAINT `PrsstntCMSCmpnntTTRBUTESPrsstntCMSCmpnntcmponentid` FOREIGN KEY (`PersistentCMSComponent_component_id`) REFERENCES `cms_components` (`component_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PersistentCMSComponent_ATTRIBUTES`
--

LOCK TABLES `PersistentCMSComponent_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `PersistentCMSComponent_ATTRIBUTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `PersistentCMSComponent_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annotations_comments`
--

DROP TABLE IF EXISTS `annotations_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `annotations_comments` (
  `annotation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_condition` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `generator_id` bigint(20) DEFAULT NULL,
  `motivation` varchar(255) DEFAULT NULL,
  `publication_status` varchar(255) DEFAULT NULL,
  `reviewer_id` bigint(20) DEFAULT NULL,
  `target` longtext DEFAULT NULL,
  `target_pi` varchar(255) DEFAULT NULL,
  `target_page` int(11) DEFAULT NULL,
  PRIMARY KEY (`annotation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations_comments`
--

LOCK TABLES `annotations_comments` WRITE;
/*!40000 ALTER TABLE `annotations_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `annotations_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `annotations_crowdsourcing`
--

DROP TABLE IF EXISTS `annotations_crowdsourcing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `annotations_crowdsourcing` (
  `annotation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_condition` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_modified` datetime(6) DEFAULT NULL,
  `generator_id` bigint(20) DEFAULT NULL,
  `motivation` varchar(255) DEFAULT NULL,
  `publication_status` varchar(255) DEFAULT NULL,
  `reviewer_id` bigint(20) DEFAULT NULL,
  `target` longtext DEFAULT NULL,
  `target_pi` varchar(255) DEFAULT NULL,
  `target_page` int(11) DEFAULT NULL,
  PRIMARY KEY (`annotation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `annotations_crowdsourcing`
--

LOCK TABLES `annotations_crowdsourcing` WRITE;
/*!40000 ALTER TABLE `annotations_crowdsourcing` DISABLE KEYS */;
/*!40000 ALTER TABLE `annotations_crowdsourcing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelf_group_shares`
--

DROP TABLE IF EXISTS `bookshelf_group_shares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelf_group_shares` (
  `bookshelf_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`bookshelf_id`,`user_group_id`),
  KEY `FK_bookshelf_group_shares_user_group_id` (`user_group_id`),
  CONSTRAINT `FK_bookshelf_group_shares_bookshelf_id` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`bookshelf_id`),
  CONSTRAINT `FK_bookshelf_group_shares_user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelf_group_shares`
--

LOCK TABLES `bookshelf_group_shares` WRITE;
/*!40000 ALTER TABLE `bookshelf_group_shares` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshelf_group_shares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelf_items`
--

DROP TABLE IF EXISTS `bookshelf_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelf_items` (
  `bookshelf_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_added` datetime(6) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `logid` varchar(255) DEFAULT NULL,
  `main_title` varchar(255) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `page_order` int(11) DEFAULT NULL,
  `pi` varchar(255) DEFAULT NULL,
  `urn` varchar(255) DEFAULT NULL,
  `bookshelf_id` bigint(20) NOT NULL,
  PRIMARY KEY (`bookshelf_item_id`),
  KEY `FK_bookshelf_items_bookshelf_id` (`bookshelf_id`),
  CONSTRAINT `FK_bookshelf_items_bookshelf_id` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`bookshelf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelf_items`
--

LOCK TABLES `bookshelf_items` WRITE;
/*!40000 ALTER TABLE `bookshelf_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshelf_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves`
--

DROP TABLE IF EXISTS `bookshelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelves` (
  `bookshelf_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_updated` datetime(6) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `public` tinyint(1) DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `share_key` varchar(64) DEFAULT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`bookshelf_id`),
  KEY `FK_bookshelves_owner_id` (`owner_id`),
  CONSTRAINT `FK_bookshelves_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `viewer_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves`
--

LOCK TABLES `bookshelves` WRITE;
/*!40000 ALTER TABLE `bookshelves` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_applications`
--

DROP TABLE IF EXISTS `client_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `client_applications` (
  `client_application_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_status` varchar(255) DEFAULT NULL,
  `client_identifier` varchar(255) DEFAULT NULL,
  `client_ip` varchar(255) DEFAULT NULL,
  `date_last_access` datetime(6) NOT NULL,
  `date_registered` datetime(6) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subnet_mask` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_applications`
--

LOCK TABLES `client_applications` WRITE;
/*!40000 ALTER TABLE `client_applications` DISABLE KEYS */;
INSERT INTO `client_applications` VALUES
(1,'NON_APPLICABLE','74b2b989-753f-4eea-a3f9-8fa7243f3966',NULL,'2025-03-04 13:01:07.921595','2025-03-04 13:01:07.921575',NULL,NULL,NULL);
/*!40000 ALTER TABLE `client_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_categories`
--

DROP TABLE IF EXISTS `cms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_categories` (
  `category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_categories`
--

LOCK TABLES `cms_categories` WRITE;
/*!40000 ALTER TABLE `cms_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_collections`
--

DROP TABLE IF EXISTS `cms_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_collections` (
  `cms_collection_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collection_url` varchar(255) DEFAULT NULL,
  `representative_work_pi` varchar(255) DEFAULT NULL,
  `solr_field` varchar(255) DEFAULT NULL,
  `solr_value` varchar(255) DEFAULT NULL,
  `media_item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cms_collection_id`),
  UNIQUE KEY `UNQ_cms_collections_0` (`solr_field`,`solr_value`),
  KEY `FK_cms_collections_media_item_id` (`media_item_id`),
  CONSTRAINT `FK_cms_collections_media_item_id` FOREIGN KEY (`media_item_id`) REFERENCES `cms_media_items` (`cms_media_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_collections`
--

LOCK TABLES `cms_collections` WRITE;
/*!40000 ALTER TABLE `cms_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_components`
--

DROP TABLE IF EXISTS `cms_components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_components` (
  `component_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `component_order` int(11) DEFAULT NULL,
  `publication_state` varchar(255) DEFAULT NULL,
  `template_filename` varchar(255) DEFAULT NULL,
  `owning_page_id` bigint(20) DEFAULT NULL,
  `owning_template_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`component_id`),
  KEY `FK_cms_components_owning_template_id` (`owning_template_id`),
  KEY `FK_cms_components_owning_page_id` (`owning_page_id`),
  CONSTRAINT `FK_cms_components_owning_page_id` FOREIGN KEY (`owning_page_id`) REFERENCES `cms_pages` (`cms_page_id`) ON DELETE CASCADE,
  CONSTRAINT `FK_cms_components_owning_template_id` FOREIGN KEY (`owning_template_id`) REFERENCES `cms_page_templates` (`cms_page_template_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_components`
--

LOCK TABLES `cms_components` WRITE;
/*!40000 ALTER TABLE `cms_components` DISABLE KEYS */;
INSERT INTO `cms_components` VALUES
(1,2,'PUBLISHED','image',1,NULL),
(2,3,'PUBLISHED','htmltext',1,NULL),
(3,1,'PUBLISHED','htmltext',1,NULL);
/*!40000 ALTER TABLE `cms_components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content`
--

DROP TABLE IF EXISTS `cms_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_content` (
  `cms_content_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content_type` varchar(31) DEFAULT NULL,
  `item_id` varchar(20) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `owning_component_id` bigint(20) DEFAULT NULL,
  `archive_id` varchar(255) DEFAULT NULL,
  `open_in_overlay` tinyint(1) DEFAULT 0,
  `solr_field` varchar(40) DEFAULT NULL,
  `collection_name` varchar(255) DEFAULT NULL,
  `filter_query` varchar(255) DEFAULT NULL,
  `grouping_field` varchar(40) DEFAULT NULL,
  `ignore_collections` longtext DEFAULT NULL,
  `ignore_hierarchy` tinyint(1) DEFAULT 0,
  `open_expanded` tinyint(1) DEFAULT 0,
  `sorting` varchar(20) DEFAULT NULL,
  `media_item_id` bigint(20) DEFAULT NULL,
  `geomap_id` bigint(20) DEFAULT NULL,
  `glossary` varchar(120) DEFAULT NULL,
  `images_per_view` int(11) DEFAULT NULL,
  `important_images_per_view` int(11) DEFAULT NULL,
  `mediumtext_text` mediumtext DEFAULT NULL,
  `metadata_fields` varchar(255) DEFAULT NULL,
  `group_by_category` tinyint(1) DEFAULT 0,
  `elements_per_page` int(11) DEFAULT NULL,
  `include_structure_elements` tinyint(1) DEFAULT 0,
  `metadata_list_type` varchar(40) DEFAULT NULL,
  `result_group` varchar(40) DEFAULT NULL,
  `show_options` tinyint(1) DEFAULT 0,
  `solr_query` text DEFAULT NULL,
  `sort_field` varchar(40) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `items_per_view` int(11) DEFAULT NULL,
  `displayEmptySearchResults` tinyint(1) DEFAULT 0,
  `search_prefix` text DEFAULT NULL,
  `facet_field` varchar(40) DEFAULT NULL,
  `shorttext_text` text DEFAULT NULL,
  `slider_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cms_content_id`),
  KEY `FK_cms_content_media_item_id` (`media_item_id`),
  KEY `FK_cms_content_geomap_id` (`geomap_id`),
  KEY `FK_cms_content_slider_id` (`slider_id`),
  KEY `FK_cms_content_owning_component_id` (`owning_component_id`),
  CONSTRAINT `FK_cms_content_geomap_id` FOREIGN KEY (`geomap_id`) REFERENCES `cms_geomap` (`geomap_id`),
  CONSTRAINT `FK_cms_content_media_item_id` FOREIGN KEY (`media_item_id`) REFERENCES `cms_media_items` (`cms_media_item_id`),
  CONSTRAINT `FK_cms_content_owning_component_id` FOREIGN KEY (`owning_component_id`) REFERENCES `cms_components` (`component_id`),
  CONSTRAINT `FK_cms_content_slider_id` FOREIGN KEY (`slider_id`) REFERENCES `cms_sliders` (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content`
--

LOCK TABLES `cms_content` WRITE;
/*!40000 ALTER TABLE `cms_content` DISABLE KEYS */;
INSERT INTO `cms_content` VALUES
(1,'media','image',0,1,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
(2,'mediumtext','text',0,3,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'{\"de\":[\"<p>The Goobi viewer is a web application that allows digitised material to be displayed in a web browser. It is used as central basis for an online digital library and offers various functionalities as browsing through digital collections, complex full-text searches, displaying images based on the IIIF standard, deliver audio and video material and a lot more.</p>\"]}',NULL,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL),
(3,'mediumtext','text',0,2,NULL,0,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,'{\"de\":[\"<figure class=\\\"tpl-simple__media\\\">\\n<figcaption></figcaption>\\n</figure>\\n<div class=\\\"tpl-simple__text\\\">\\n<h3>Metadata handling</h3>\\n<p>A consistent use of standardised metadata format (e.g. METS or LIDO) allows to present data from various sources. Additionally the viewer can be fully integrated into Goobi, the popular open-source workflow management software for digitisation projects, thus creating a seamless transition from the book to the web presentation.</p>\\n<h3><a id=\\\"user-content-content-and-access\\\" class=\\\"anchor\\\" href=\\\"https://github.com/intranda/goobi-viewer-core#content-and-access\\\"></a>Content and access</h3>\\n<p>The Goobi viewer handles the entire visualisation of the digitised material. Based on standardised metadata formats, it not only displays the material but also offers website visitors a range of useful tools that help them to navigate and even to contribute their own content – for example a page turning/location function and quick links from the digital index. Content inside of the Goobi viewer is available for download as small parts (e.g. individual chapters) or as a complete work in the form of archivable PDF/A files. Beside this there is a licensing system embedded to control the access to special content by granting an authorisation for example to certain IP addresses or to individual users.</p>\\n<h3><a id=\\\"user-content-layout\\\" class=\\\"anchor\\\" href=\\\"https://github.com/intranda/goobi-viewer-core#layout\\\"></a>Layout</h3>\\n<p>The layout of the Goobi viewer is based on a sophisticated templating engine with highly configurable skins to offer a wide range of visual display options and to allow an integration fully into a given corporate design.</p>\\n</div>\"]}',NULL,0,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_imagelist_categories`
--

DROP TABLE IF EXISTS `cms_content_imagelist_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_content_imagelist_categories` (
  `content_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`content_id`,`category_id`),
  KEY `FK_cms_content_imagelist_categories_category_id` (`category_id`),
  CONSTRAINT `FK_cms_content_imagelist_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `cms_categories` (`category_id`),
  CONSTRAINT `FK_cms_content_imagelist_categories_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`cms_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_imagelist_categories`
--

LOCK TABLES `cms_content_imagelist_categories` WRITE;
/*!40000 ALTER TABLE `cms_content_imagelist_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_content_imagelist_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_content_pagelist_categories`
--

DROP TABLE IF EXISTS `cms_content_pagelist_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_content_pagelist_categories` (
  `content_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`content_id`,`category_id`),
  KEY `FK_cms_content_pagelist_categories_category_id` (`category_id`),
  CONSTRAINT `FK_cms_content_pagelist_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `cms_categories` (`category_id`),
  CONSTRAINT `FK_cms_content_pagelist_categories_content_id` FOREIGN KEY (`content_id`) REFERENCES `cms_content` (`cms_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_content_pagelist_categories`
--

LOCK TABLES `cms_content_pagelist_categories` WRITE;
/*!40000 ALTER TABLE `cms_content_pagelist_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_content_pagelist_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_geomap`
--

DROP TABLE IF EXISTS `cms_geomap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_geomap` (
  `geomap_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator_id` bigint(20) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `initial_view` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`geomap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_geomap`
--

LOCK TABLES `cms_geomap` WRITE;
/*!40000 ALTER TABLE `cms_geomap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_geomap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_geomap_features`
--

DROP TABLE IF EXISTS `cms_geomap_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_geomap_features` (
  `featureset_id` bigint(20) DEFAULT NULL,
  `features` longtext DEFAULT NULL,
  KEY `FK_cms_geomap_features_featureset_id` (`featureset_id`),
  CONSTRAINT `FK_cms_geomap_features_featureset_id` FOREIGN KEY (`featureset_id`) REFERENCES `cms_geomap_featureset` (`featureset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_geomap_features`
--

LOCK TABLES `cms_geomap_features` WRITE;
/*!40000 ALTER TABLE `cms_geomap_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_geomap_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_geomap_featureset`
--

DROP TABLE IF EXISTS `cms_geomap_featureset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_geomap_featureset` (
  `featureset_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `feature_source` varchar(31) DEFAULT NULL,
  `marker` varchar(255) DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `aggregate_results` tinyint(1) DEFAULT 0,
  `marker_title_field` varchar(255) DEFAULT NULL,
  `solr_query` text DEFAULT NULL,
  `owner_geomap` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`featureset_id`),
  KEY `FK_cms_geomap_featureset_owner_geomap` (`owner_geomap`),
  CONSTRAINT `FK_cms_geomap_featureset_owner_geomap` FOREIGN KEY (`owner_geomap`) REFERENCES `cms_geomap` (`geomap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_geomap_featureset`
--

LOCK TABLES `cms_geomap_featureset` WRITE;
/*!40000 ALTER TABLE `cms_geomap_featureset` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_geomap_featureset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_geomap_translation`
--

DROP TABLE IF EXISTS `cms_geomap_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_geomap_translation` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `translation_value` longtext DEFAULT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`translation_id`),
  KEY `FK_cms_geomap_translation_owner_id` (`owner_id`),
  CONSTRAINT `FK_cms_geomap_translation_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `cms_geomap` (`geomap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_geomap_translation`
--

LOCK TABLES `cms_geomap_translation` WRITE;
/*!40000 ALTER TABLE `cms_geomap_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_geomap_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_highlights`
--

DROP TABLE IF EXISTS `cms_highlights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_highlights` (
  `highlight_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_end` datetime(6) DEFAULT NULL,
  `date_start` datetime(6) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 0,
  `image_mode` varchar(255) DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `record_identifier` varchar(255) DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `target_url` varchar(255) DEFAULT NULL,
  `media_item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`highlight_id`),
  KEY `FK_cms_highlights_media_item_id` (`media_item_id`),
  CONSTRAINT `FK_cms_highlights_media_item_id` FOREIGN KEY (`media_item_id`) REFERENCES `cms_media_items` (`cms_media_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_highlights`
--

LOCK TABLES `cms_highlights` WRITE;
/*!40000 ALTER TABLE `cms_highlights` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_highlights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_media_item_cms_categories`
--

DROP TABLE IF EXISTS `cms_media_item_cms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_media_item_cms_categories` (
  `media_item_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`media_item_id`,`category_id`),
  KEY `FK_cms_media_item_cms_categories_category_id` (`category_id`),
  CONSTRAINT `FK_cms_media_item_cms_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `cms_categories` (`category_id`),
  CONSTRAINT `FK_cms_media_item_cms_categories_media_item_id` FOREIGN KEY (`media_item_id`) REFERENCES `cms_media_items` (`cms_media_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_media_item_cms_categories`
--

LOCK TABLES `cms_media_item_cms_categories` WRITE;
/*!40000 ALTER TABLE `cms_media_item_cms_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_media_item_cms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_media_item_metadata`
--

DROP TABLE IF EXISTS `cms_media_item_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_media_item_metadata` (
  `description` longtext DEFAULT NULL,
  `language` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner_media_item_id` bigint(20) DEFAULT NULL,
  KEY `FK_cms_media_item_metadata_owner_media_item_id` (`owner_media_item_id`),
  CONSTRAINT `FK_cms_media_item_metadata_owner_media_item_id` FOREIGN KEY (`owner_media_item_id`) REFERENCES `cms_media_items` (`cms_media_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_media_item_metadata`
--

LOCK TABLES `cms_media_item_metadata` WRITE;
/*!40000 ALTER TABLE `cms_media_item_metadata` DISABLE KEYS */;
INSERT INTO `cms_media_item_metadata` VALUES
(NULL,'de',NULL,1),
('','en','',1),
(NULL,'nn',NULL,1),
(NULL,'es',NULL,1),
(NULL,'he',NULL,1),
(NULL,'fr',NULL,1),
(NULL,'ar',NULL,1),
(NULL,'nb',NULL,1);
/*!40000 ALTER TABLE `cms_media_item_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_media_items`
--

DROP TABLE IF EXISTS `cms_media_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_media_items` (
  `cms_media_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image_alt_text` varchar(255) DEFAULT NULL,
  `display_order` int(11) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`cms_media_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_media_items`
--

LOCK TABLES `cms_media_items` WRITE;
/*!40000 ALTER TABLE `cms_media_items` DISABLE KEYS */;
INSERT INTO `cms_media_items` VALUES
(1,'',0,'goobi_viewer.png','',1);
/*!40000 ALTER TABLE `cms_media_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_navigation_items`
--

DROP TABLE IF EXISTS `cms_navigation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_navigation_items` (
  `cms_navigation_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `absolute_link` tinyint(1) DEFAULT 0,
  `associated_theme` varchar(255) DEFAULT NULL,
  `display_rule` int(11) DEFAULT NULL,
  `item_label` varchar(255) NOT NULL,
  `open_in_new_window` tinyint(1) DEFAULT 0,
  `item_order` int(11) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `parent_item_id` bigint(20) DEFAULT NULL,
  `cms_page_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cms_navigation_item_id`),
  KEY `FK_cms_navigation_items_parent_item_id` (`parent_item_id`),
  KEY `FK_cms_navigation_items_cms_page_id` (`cms_page_id`),
  CONSTRAINT `FK_cms_navigation_items_cms_page_id` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`cms_page_id`),
  CONSTRAINT `FK_cms_navigation_items_parent_item_id` FOREIGN KEY (`parent_item_id`) REFERENCES `cms_navigation_items` (`cms_navigation_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_navigation_items`
--

LOCK TABLES `cms_navigation_items` WRITE;
/*!40000 ALTER TABLE `cms_navigation_items` DISABLE KEYS */;
INSERT INTO `cms_navigation_items` VALUES
(1,0,'reference',0,'home',0,0,'index',NULL,NULL),
(2,0,'reference',0,'search',0,1,'search',NULL,NULL),
(3,0,'reference',0,'browse',0,2,'browse',NULL,NULL),
(4,0,'reference',0,'timematrix',0,3,'timematrix',NULL,NULL);
/*!40000 ALTER TABLE `cms_navigation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_cms_categories`
--

DROP TABLE IF EXISTS `cms_page_cms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_page_cms_categories` (
  `page_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`page_id`,`category_id`),
  KEY `FK_cms_page_cms_categories_category_id` (`category_id`),
  CONSTRAINT `FK_cms_page_cms_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `cms_categories` (`category_id`),
  CONSTRAINT `FK_cms_page_cms_categories_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_pages` (`cms_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_cms_categories`
--

LOCK TABLES `cms_page_cms_categories` WRITE;
/*!40000 ALTER TABLE `cms_page_cms_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_page_cms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_sidebar_elements`
--

DROP TABLE IF EXISTS `cms_page_sidebar_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_page_sidebar_elements` (
  `cms_sidebar_element_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `generation_type` varchar(31) DEFAULT NULL,
  `content_type` varchar(255) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `owner_page_id` bigint(20) DEFAULT NULL,
  `owner_template_id` bigint(20) DEFAULT NULL,
  `geomap_id` bigint(20) DEFAULT NULL,
  `custom_widget_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`cms_sidebar_element_id`),
  KEY `FK_cms_page_sidebar_elements_owner_page_id` (`owner_page_id`),
  KEY `FK_cms_page_sidebar_elements_owner_template_id` (`owner_template_id`),
  KEY `FK_cms_page_sidebar_elements_custom_widget_id` (`custom_widget_id`),
  KEY `FK_cms_page_sidebar_elements_geomap_id` (`geomap_id`),
  CONSTRAINT `FK_cms_page_sidebar_elements_custom_widget_id` FOREIGN KEY (`custom_widget_id`) REFERENCES `custom_sidebar_widgets` (`widget_id`),
  CONSTRAINT `FK_cms_page_sidebar_elements_geomap_id` FOREIGN KEY (`geomap_id`) REFERENCES `cms_geomap` (`geomap_id`),
  CONSTRAINT `FK_cms_page_sidebar_elements_owner_page_id` FOREIGN KEY (`owner_page_id`) REFERENCES `cms_pages` (`cms_page_id`),
  CONSTRAINT `FK_cms_page_sidebar_elements_owner_template_id` FOREIGN KEY (`owner_template_id`) REFERENCES `cms_page_templates` (`cms_page_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_sidebar_elements`
--

LOCK TABLES `cms_page_sidebar_elements` WRITE;
/*!40000 ALTER TABLE `cms_page_sidebar_elements` DISABLE KEYS */;
INSERT INTO `cms_page_sidebar_elements` VALUES
(1,'CUSTOM','WIDGET_RSSFEED',1,1,NULL,NULL,1),
(2,'DEFAULT','WIDGET_BROWSING',0,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cms_page_sidebar_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_templates`
--

DROP TABLE IF EXISTS `cms_page_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_page_templates` (
  `cms_page_template_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `lecacy_template` tinyint(1) DEFAULT 0,
  `lock_components` tinyint(1) DEFAULT 0,
  `publication_status` varchar(255) NOT NULL,
  `subtheme_discriminator` varchar(255) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `use_default_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `wrapper_element_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cms_page_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_templates`
--

LOCK TABLES `cms_page_templates` WRITE;
/*!40000 ALTER TABLE `cms_page_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_page_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pages`
--

DROP TABLE IF EXISTS `cms_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_pages` (
  `cms_page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `menu_title` text DEFAULT NULL,
  `page_sorting` bigint(20) DEFAULT NULL,
  `parent_page` varchar(255) DEFAULT NULL,
  `persistent_url` varchar(255) DEFAULT NULL,
  `publication_status` varchar(255) DEFAULT NULL,
  `related_pi` varchar(255) DEFAULT NULL,
  `searchable` tinyint(1) DEFAULT 0,
  `subtheme_discriminator` varchar(255) DEFAULT NULL,
  `page_template_id` bigint(20) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `use_as_default_record_view` tinyint(1) DEFAULT 0,
  `use_default_sidebar` tinyint(1) NOT NULL DEFAULT 0,
  `wrapper_element_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cms_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pages`
--

LOCK TABLES `cms_pages` WRITE;
/*!40000 ALTER TABLE `cms_pages` DISABLE KEYS */;
INSERT INTO `cms_pages` VALUES
(1,'2025-03-04 13:04:19.095609','2025-03-04 13:54:01.924953','',NULL,'','','PUBLISHED','',0,'',NULL,'{\"de\":[\"Goobi: Digital library framework\"]}',0,0,'');
/*!40000 ALTER TABLE `cms_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_properties`
--

DROP TABLE IF EXISTS `cms_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_properties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `property_key` varchar(255) DEFAULT NULL,
  `property_value` longtext DEFAULT NULL,
  `owner_page_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cms_properties_owner_page_id` (`owner_page_id`),
  CONSTRAINT `FK_cms_properties_owner_page_id` FOREIGN KEY (`owner_page_id`) REFERENCES `cms_pages` (`cms_page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_properties`
--

LOCK TABLES `cms_properties` WRITE;
/*!40000 ALTER TABLE `cms_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_record_notes`
--

DROP TABLE IF EXISTS `cms_record_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_record_notes` (
  `cms_record_note_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `note_type` varchar(31) DEFAULT NULL,
  `display_note` tinyint(1) DEFAULT 1,
  `note_text` mediumtext DEFAULT NULL,
  `note_title` tinytext DEFAULT NULL,
  `style_class` varchar(255) DEFAULT NULL,
  `query` varchar(4096) DEFAULT '',
  `record_pi` varchar(255) DEFAULT '',
  `record_title` varchar(4096) DEFAULT '',
  PRIMARY KEY (`cms_record_note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_record_notes`
--

LOCK TABLES `cms_record_notes` WRITE;
/*!40000 ALTER TABLE `cms_record_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_record_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_sliders`
--

DROP TABLE IF EXISTS `cms_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_sliders` (
  `slider_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `categories` longtext DEFAULT NULL,
  `collections` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `max_entries` int(11) DEFAULT NULL,
  `name` longtext DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `sort_field` longtext DEFAULT NULL,
  `source_type` int(11) NOT NULL,
  `style` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_sliders`
--

LOCK TABLES `cms_sliders` WRITE;
/*!40000 ALTER TABLE `cms_sliders` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_static_pages`
--

DROP TABLE IF EXISTS `cms_static_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_static_pages` (
  `static_page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cms_page_Id` bigint(20) DEFAULT NULL,
  `static_page_name` varchar(255) NOT NULL,
  PRIMARY KEY (`static_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_static_pages`
--

LOCK TABLES `cms_static_pages` WRITE;
/*!40000 ALTER TABLE `cms_static_pages` DISABLE KEYS */;
INSERT INTO `cms_static_pages` VALUES
(1,1,'index');
/*!40000 ALTER TABLE `cms_static_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_template_cms_categories`
--

DROP TABLE IF EXISTS `cms_template_cms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cms_template_cms_categories` (
  `template_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`template_id`,`category_id`),
  KEY `FK_cms_template_cms_categories_category_id` (`category_id`),
  CONSTRAINT `FK_cms_template_cms_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `cms_categories` (`category_id`),
  CONSTRAINT `FK_cms_template_cms_categories_template_id` FOREIGN KEY (`template_id`) REFERENCES `cms_page_templates` (`cms_page_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_template_cms_categories`
--

LOCK TABLES `cms_template_cms_categories` WRITE;
/*!40000 ALTER TABLE `cms_template_cms_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_template_cms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_groups`
--

DROP TABLE IF EXISTS `comment_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_groups` (
  `comment_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `core_type` tinyint(1) DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 0,
  `members_may_delete_comments` tinyint(1) DEFAULT 0,
  `members_may_edit_comments` tinyint(1) DEFAULT 0,
  `send_email_notifications` tinyint(1) DEFAULT 0,
  `solr_query` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_group_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_group_id`),
  KEY `FK_comment_groups_user_group_id` (`user_group_id`),
  CONSTRAINT `FK_comment_groups_user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_groups`
--

LOCK TABLES `comment_groups` WRITE;
/*!40000 ALTER TABLE `comment_groups` DISABLE KEYS */;
INSERT INTO `comment_groups` VALUES
(1,1,'admin__comment_groups_all_comments_desc',1,0,0,1,NULL,'admin__comment_groups_all_comments_title',NULL);
/*!40000 ALTER TABLE `comment_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cookie_banner`
--

DROP TABLE IF EXISTS `cookie_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cookie_banner` (
  `cookie_banner_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT 0,
  `ignore_on` varchar(255) DEFAULT NULL,
  `requires_consent_after` datetime(6) NOT NULL,
  `text` mediumtext DEFAULT NULL,
  PRIMARY KEY (`cookie_banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cookie_banner`
--

LOCK TABLES `cookie_banner` WRITE;
/*!40000 ALTER TABLE `cookie_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `cookie_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaign_log`
--

DROP TABLE IF EXISTS `cs_campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaign_log` (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator_id` bigint(20) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `pi` varchar(255) NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `FK_cs_campaign_log_campaign_id` (`campaign_id`),
  CONSTRAINT `FK_cs_campaign_log_campaign_id` FOREIGN KEY (`campaign_id`) REFERENCES `cs_campaigns` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaign_log`
--

LOCK TABLES `cs_campaign_log` WRITE;
/*!40000 ALTER TABLE `cs_campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaign_record_page_statistic_annotators`
--

DROP TABLE IF EXISTS `cs_campaign_record_page_statistic_annotators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaign_record_page_statistic_annotators` (
  `campaign_record_page_statistic_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`campaign_record_page_statistic_id`,`user_id`),
  KEY `cscampaign_record_page_statistic_annotatorsuser_id` (`user_id`),
  CONSTRAINT `cscampaign_record_page_statistic_annotatorsuser_id` FOREIGN KEY (`user_id`) REFERENCES `viewer_users` (`user_id`),
  CONSTRAINT `cscmpgnrcrdpgsttsticannotatorscmpgnrcrdpgsttsticid` FOREIGN KEY (`campaign_record_page_statistic_id`) REFERENCES `cs_campaign_record_page_statistics` (`campaign_record_page_statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaign_record_page_statistic_annotators`
--

LOCK TABLES `cs_campaign_record_page_statistic_annotators` WRITE;
/*!40000 ALTER TABLE `cs_campaign_record_page_statistic_annotators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaign_record_page_statistic_annotators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaign_record_page_statistic_reviewers`
--

DROP TABLE IF EXISTS `cs_campaign_record_page_statistic_reviewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaign_record_page_statistic_reviewers` (
  `campaign_record_page_statistic_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`campaign_record_page_statistic_id`,`user_id`),
  KEY `cs_campaign_record_page_statistic_reviewersuser_id` (`user_id`),
  CONSTRAINT `cs_campaign_record_page_statistic_reviewersuser_id` FOREIGN KEY (`user_id`) REFERENCES `viewer_users` (`user_id`),
  CONSTRAINT `cscmpgnrcrdpgsttisticreviewerscmpgnrcrdpgsttsticid` FOREIGN KEY (`campaign_record_page_statistic_id`) REFERENCES `cs_campaign_record_page_statistics` (`campaign_record_page_statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaign_record_page_statistic_reviewers`
--

LOCK TABLES `cs_campaign_record_page_statistic_reviewers` WRITE;
/*!40000 ALTER TABLE `cs_campaign_record_page_statistic_reviewers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaign_record_page_statistic_reviewers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaign_record_page_statistics`
--

DROP TABLE IF EXISTS `cs_campaign_record_page_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaign_record_page_statistics` (
  `campaign_record_page_statistic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `pi_page_key` varchar(255) NOT NULL,
  `page` int(11) NOT NULL,
  `pi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`campaign_record_page_statistic_id`),
  KEY `FK_cs_campaign_record_page_statistics_owner_id` (`owner_id`),
  CONSTRAINT `FK_cs_campaign_record_page_statistics_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `cs_campaign_record_statistics` (`campaign_record_statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaign_record_page_statistics`
--

LOCK TABLES `cs_campaign_record_page_statistics` WRITE;
/*!40000 ALTER TABLE `cs_campaign_record_page_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaign_record_page_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaign_record_statistic_annotators`
--

DROP TABLE IF EXISTS `cs_campaign_record_statistic_annotators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaign_record_statistic_annotators` (
  `campaign_record_statistic_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`campaign_record_statistic_id`,`user_id`),
  KEY `FK_cs_campaign_record_statistic_annotators_user_id` (`user_id`),
  CONSTRAINT `FK_cs_campaign_record_statistic_annotators_user_id` FOREIGN KEY (`user_id`) REFERENCES `viewer_users` (`user_id`),
  CONSTRAINT `cscmpgnrcrdstatisticannotatorscmpgnrcrdstatisticid` FOREIGN KEY (`campaign_record_statistic_id`) REFERENCES `cs_campaign_record_statistics` (`campaign_record_statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaign_record_statistic_annotators`
--

LOCK TABLES `cs_campaign_record_statistic_annotators` WRITE;
/*!40000 ALTER TABLE `cs_campaign_record_statistic_annotators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaign_record_statistic_annotators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaign_record_statistic_reviewers`
--

DROP TABLE IF EXISTS `cs_campaign_record_statistic_reviewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaign_record_statistic_reviewers` (
  `campaign_record_statistic_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`campaign_record_statistic_id`,`user_id`),
  KEY `FK_cs_campaign_record_statistic_reviewers_user_id` (`user_id`),
  CONSTRAINT `FK_cs_campaign_record_statistic_reviewers_user_id` FOREIGN KEY (`user_id`) REFERENCES `viewer_users` (`user_id`),
  CONSTRAINT `cscmpgnrcordstatisticreviewerscmpgnrcrdstatisticid` FOREIGN KEY (`campaign_record_statistic_id`) REFERENCES `cs_campaign_record_statistics` (`campaign_record_statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaign_record_statistic_reviewers`
--

LOCK TABLES `cs_campaign_record_statistic_reviewers` WRITE;
/*!40000 ALTER TABLE `cs_campaign_record_statistic_reviewers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaign_record_statistic_reviewers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaign_record_statistics`
--

DROP TABLE IF EXISTS `cs_campaign_record_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaign_record_statistics` (
  `campaign_record_statistic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `pi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `total_pages` int(11) DEFAULT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`campaign_record_statistic_id`),
  KEY `FK_cs_campaign_record_statistics_owner_id` (`owner_id`),
  CONSTRAINT `FK_cs_campaign_record_statistics_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `cs_campaigns` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaign_record_statistics`
--

LOCK TABLES `cs_campaign_record_statistics` WRITE;
/*!40000 ALTER TABLE `cs_campaign_record_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaign_record_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaign_translations`
--

DROP TABLE IF EXISTS `cs_campaign_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaign_translations` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`translation_id`),
  KEY `FK_cs_campaign_translations_owner_id` (`owner_id`),
  CONSTRAINT `FK_cs_campaign_translations_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `cs_campaigns` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaign_translations`
--

LOCK TABLES `cs_campaign_translations` WRITE;
/*!40000 ALTER TABLE `cs_campaign_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaign_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_campaigns`
--

DROP TABLE IF EXISTS `cs_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_campaigns` (
  `campaign_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `breadcrumb_parent_page` varchar(255) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_end` datetime(6) DEFAULT NULL,
  `date_start` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  `limit_to_group` tinyint(1) DEFAULT 0,
  `permalink` varchar(255) DEFAULT NULL,
  `restrict_annotation_access` tinyint(1) DEFAULT 0,
  `review_mode` int(11) DEFAULT NULL,
  `show_log` tinyint(1) DEFAULT 0,
  `solr_query` varchar(255) NOT NULL,
  `statistic_mode` varchar(255) DEFAULT NULL,
  `time_period_enabled` tinyint(1) DEFAULT 0,
  `visibility` varchar(255) NOT NULL,
  `revewier_user_group_id` bigint(20) DEFAULT NULL,
  `user_group_id` bigint(20) DEFAULT NULL,
  `media_item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`campaign_id`),
  KEY `FK_cs_campaigns_user_group_id` (`user_group_id`),
  KEY `FK_cs_campaigns_media_item_id` (`media_item_id`),
  KEY `FK_cs_campaigns_revewier_user_group_id` (`revewier_user_group_id`),
  CONSTRAINT `FK_cs_campaigns_media_item_id` FOREIGN KEY (`media_item_id`) REFERENCES `cms_media_items` (`cms_media_item_id`),
  CONSTRAINT `FK_cs_campaigns_revewier_user_group_id` FOREIGN KEY (`revewier_user_group_id`) REFERENCES `user_groups` (`user_group_id`),
  CONSTRAINT `FK_cs_campaigns_user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_campaigns`
--

LOCK TABLES `cs_campaigns` WRITE;
/*!40000 ALTER TABLE `cs_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cs_questions`
--

DROP TABLE IF EXISTS `cs_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cs_questions` (
  `question_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `metadata_fields` longtext DEFAULT NULL,
  `question_type` varchar(255) NOT NULL,
  `target_frequency` int(11) NOT NULL,
  `target_selector` varchar(255) NOT NULL,
  `text` longtext DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `FK_cs_questions_owner_id` (`owner_id`),
  CONSTRAINT `FK_cs_questions_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `cs_campaigns` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cs_questions`
--

LOCK TABLES `cs_questions` WRITE;
/*!40000 ALTER TABLE `cs_questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cs_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_sidebar_widgets`
--

DROP TABLE IF EXISTS `custom_sidebar_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_sidebar_widgets` (
  `widget_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `widget_type` varchar(31) DEFAULT NULL,
  `collapsed` tinyint(1) DEFAULT 0,
  `widget_description` mediumtext DEFAULT NULL,
  `style_class` varchar(255) DEFAULT NULL,
  `widget_title` mediumtext DEFAULT NULL,
  `html_text` longtext DEFAULT NULL,
  `facet_field` tinytext DEFAULT NULL,
  `filter_query` mediumtext DEFAULT NULL,
  `num_entries` int(11) DEFAULT NULL,
  `page_ids` mediumtext DEFAULT NULL,
  `descending_sorting` tinyint(1) DEFAULT 0,
  `sort_field` text DEFAULT NULL,
  PRIMARY KEY (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_sidebar_widgets`
--

LOCK TABLES `custom_sidebar_widgets` WRITE;
/*!40000 ALTER TABLE `custom_sidebar_widgets` DISABLE KEYS */;
INSERT INTO `custom_sidebar_widgets` VALUES
(1,'RssFeedSidebarWidget',0,'','','{\"de\":[\"Neuzugänge\"],\"en\":[\"New records\"]}',NULL,NULL,'',5,NULL,1,'DATECREATED');
/*!40000 ALTER TABLE `custom_sidebar_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disclaimer`
--

DROP TABLE IF EXISTS `disclaimer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `disclaimer` (
  `disclaimer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `acceptance_scope` varchar(255) NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `display_scope` varchar(255) DEFAULT NULL,
  `requires_consent_after` datetime(6) NOT NULL,
  `text` mediumtext DEFAULT NULL,
  PRIMARY KEY (`disclaimer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disclaimer`
--

LOCK TABLES `disclaimer` WRITE;
/*!40000 ALTER TABLE `disclaimer` DISABLE KEYS */;
/*!40000 ALTER TABLE `disclaimer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_job_observers`
--

DROP TABLE IF EXISTS `download_job_observers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `download_job_observers` (
  `download_job_id` bigint(20) DEFAULT NULL,
  `observer` varchar(255) DEFAULT NULL,
  KEY `FK_download_job_observers_download_job_id` (`download_job_id`),
  CONSTRAINT `FK_download_job_observers_download_job_id` FOREIGN KEY (`download_job_id`) REFERENCES `download_jobs` (`download_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_job_observers`
--

LOCK TABLES `download_job_observers` WRITE;
/*!40000 ALTER TABLE `download_job_observers` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_job_observers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_jobs`
--

DROP TABLE IF EXISTS `download_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `download_jobs` (
  `download_job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(31) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `identifier` varchar(255) NOT NULL,
  `last_requested` datetime(6) NOT NULL,
  `logid` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `pi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `ttl` bigint(20) NOT NULL,
  PRIMARY KEY (`download_job_id`),
  UNIQUE KEY `identifier` (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_jobs`
--

LOCK TABLES `download_jobs` WRITE;
/*!40000 ALTER TABLE `download_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download_tickets`
--

DROP TABLE IF EXISTS `download_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `download_tickets` (
  `download_ticket_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `expiration_date` datetime(6) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `pi` varchar(255) NOT NULL,
  `request_message` mediumtext DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`download_ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download_tickets`
--

LOCK TABLES `download_tickets` WRITE;
/*!40000 ALTER TABLE `download_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `download_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_ranges`
--

DROP TABLE IF EXISTS `ip_ranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_ranges` (
  `ip_range_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `subnet_mask` varchar(255) NOT NULL,
  PRIMARY KEY (`ip_range_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_ranges`
--

LOCK TABLES `ip_ranges` WRITE;
/*!40000 ALTER TABLE `ip_ranges` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_ranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_cms_categories`
--

DROP TABLE IF EXISTS `license_cms_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_cms_categories` (
  `license_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`license_id`,`category_id`),
  KEY `FK_license_cms_categories_category_id` (`category_id`),
  CONSTRAINT `FK_license_cms_categories_category_id` FOREIGN KEY (`category_id`) REFERENCES `cms_categories` (`category_id`),
  CONSTRAINT `FK_license_cms_categories_license_id` FOREIGN KEY (`license_id`) REFERENCES `licenses` (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_cms_categories`
--

LOCK TABLES `license_cms_categories` WRITE;
/*!40000 ALTER TABLE `license_cms_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_cms_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_cms_subthemes`
--

DROP TABLE IF EXISTS `license_cms_subthemes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_cms_subthemes` (
  `license_id` bigint(20) DEFAULT NULL,
  `subtheme_discriminator_value` varchar(255) DEFAULT NULL,
  KEY `FK_license_cms_subthemes_license_id` (`license_id`),
  CONSTRAINT `FK_license_cms_subthemes_license_id` FOREIGN KEY (`license_id`) REFERENCES `licenses` (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_cms_subthemes`
--

LOCK TABLES `license_cms_subthemes` WRITE;
/*!40000 ALTER TABLE `license_cms_subthemes` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_cms_subthemes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_cms_templates`
--

DROP TABLE IF EXISTS `license_cms_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_cms_templates` (
  `license_id` bigint(20) NOT NULL,
  `template_id` bigint(20) NOT NULL,
  PRIMARY KEY (`license_id`,`template_id`),
  KEY `FK_license_cms_templates_template_id` (`template_id`),
  CONSTRAINT `FK_license_cms_templates_license_id` FOREIGN KEY (`license_id`) REFERENCES `licenses` (`license_id`),
  CONSTRAINT `FK_license_cms_templates_template_id` FOREIGN KEY (`template_id`) REFERENCES `cms_page_templates` (`cms_page_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_cms_templates`
--

LOCK TABLES `license_cms_templates` WRITE;
/*!40000 ALTER TABLE `license_cms_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_cms_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_crowdsourcing_campaigns`
--

DROP TABLE IF EXISTS `license_crowdsourcing_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_crowdsourcing_campaigns` (
  `license_id` bigint(20) NOT NULL,
  `campaign_id` bigint(20) NOT NULL,
  PRIMARY KEY (`license_id`,`campaign_id`),
  KEY `FK_license_crowdsourcing_campaigns_campaign_id` (`campaign_id`),
  CONSTRAINT `FK_license_crowdsourcing_campaigns_campaign_id` FOREIGN KEY (`campaign_id`) REFERENCES `cs_campaigns` (`campaign_id`),
  CONSTRAINT `FK_license_crowdsourcing_campaigns_license_id` FOREIGN KEY (`license_id`) REFERENCES `licenses` (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_crowdsourcing_campaigns`
--

LOCK TABLES `license_crowdsourcing_campaigns` WRITE;
/*!40000 ALTER TABLE `license_crowdsourcing_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_crowdsourcing_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_privileges`
--

DROP TABLE IF EXISTS `license_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_privileges` (
  `license_id` bigint(20) DEFAULT NULL,
  `privilege_name` varchar(255) DEFAULT NULL,
  KEY `FK_license_privileges_license_id` (`license_id`),
  CONSTRAINT `FK_license_privileges_license_id` FOREIGN KEY (`license_id`) REFERENCES `licenses` (`license_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_privileges`
--

LOCK TABLES `license_privileges` WRITE;
/*!40000 ALTER TABLE `license_privileges` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_type_privileges`
--

DROP TABLE IF EXISTS `license_type_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_type_privileges` (
  `license_type_id` bigint(20) DEFAULT NULL,
  `privilege_name` varchar(255) DEFAULT NULL,
  KEY `FK_license_type_privileges_license_type_id` (`license_type_id`),
  CONSTRAINT `FK_license_type_privileges_license_type_id` FOREIGN KEY (`license_type_id`) REFERENCES `license_types` (`license_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_type_privileges`
--

LOCK TABLES `license_type_privileges` WRITE;
/*!40000 ALTER TABLE `license_type_privileges` DISABLE KEYS */;
INSERT INTO `license_type_privileges` VALUES
(1,'SET_REPRESENTATIVE_IMAGE'),
(2,'DELETE_OCR_PAGE'),
(3,'CMS_PAGES'),
(4,'PRIV_LEGAL_DISCLAIMER');
/*!40000 ALTER TABLE `license_type_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_types`
--

DROP TABLE IF EXISTS `license_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_types` (
  `license_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `concurrent_views_limit` tinyint(1) DEFAULT 0,
  `core` tinyint(1) DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `moving_wall` tinyint(1) DEFAULT 0,
  `name` varchar(180) DEFAULT NULL,
  `open_access` tinyint(1) DEFAULT 0,
  `pdf_download_quota` tinyint(1) DEFAULT 0,
  `redirect` tinyint(1) DEFAULT 0,
  `redirect_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`license_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_types`
--

LOCK TABLES `license_types` WRITE;
/*!40000 ALTER TABLE `license_types` DISABLE KEYS */;
INSERT INTO `license_types` VALUES
(1,1,1,'licenseType_setRepresentativeImage_desc',0,'licenseType_setRepresentativeImage',0,1,0,NULL),
(2,1,1,'licenseType_deleteOcrPage_desc',0,'licenseType_deleteOcrPage',0,1,0,NULL),
(3,1,1,'licenseType_cms_desc',0,'licenseType_cms',0,1,0,NULL),
(4,1,1,'licenseType_disclaimer_desc',0,'licenseType_disclaimer',0,1,0,NULL);
/*!40000 ALTER TABLE `license_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `license_types_overriding`
--

DROP TABLE IF EXISTS `license_types_overriding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `license_types_overriding` (
  `license_type_id` bigint(20) NOT NULL,
  `overriding_license_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`license_type_id`,`overriding_license_type_id`),
  KEY `license_types_overridingoverriding_license_type_id` (`overriding_license_type_id`),
  CONSTRAINT `FK_license_types_overriding_license_type_id` FOREIGN KEY (`license_type_id`) REFERENCES `license_types` (`license_type_id`),
  CONSTRAINT `license_types_overridingoverriding_license_type_id` FOREIGN KEY (`overriding_license_type_id`) REFERENCES `license_types` (`license_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `license_types_overriding`
--

LOCK TABLES `license_types_overriding` WRITE;
/*!40000 ALTER TABLE `license_types_overriding` DISABLE KEYS */;
/*!40000 ALTER TABLE `license_types_overriding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `licenses` (
  `license_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conditions` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `legal_disclaimer_scope` varchar(255) DEFAULT NULL,
  `date_end` datetime(6) DEFAULT NULL,
  `date_start` datetime(6) DEFAULT NULL,
  `ticket_required` tinyint(1) DEFAULT 0,
  `client_id` bigint(20) DEFAULT NULL,
  `ip_range_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_group_id` bigint(20) DEFAULT NULL,
  `license_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`license_id`),
  KEY `FK_licenses_user_id` (`user_id`),
  KEY `FK_licenses_ip_range_id` (`ip_range_id`),
  KEY `FK_licenses_license_type_id` (`license_type_id`),
  KEY `FK_licenses_client_id` (`client_id`),
  KEY `FK_licenses_user_group_id` (`user_group_id`),
  CONSTRAINT `FK_licenses_client_id` FOREIGN KEY (`client_id`) REFERENCES `client_applications` (`client_application_id`),
  CONSTRAINT `FK_licenses_ip_range_id` FOREIGN KEY (`ip_range_id`) REFERENCES `ip_ranges` (`ip_range_id`),
  CONSTRAINT `FK_licenses_license_type_id` FOREIGN KEY (`license_type_id`) REFERENCES `license_types` (`license_type_id`),
  CONSTRAINT `FK_licenses_user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`),
  CONSTRAINT `FK_licenses_user_id` FOREIGN KEY (`user_id`) REFERENCES `viewer_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mq_message_properties`
--

DROP TABLE IF EXISTS `mq_message_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mq_message_properties` (
  `message_id` bigint(20) DEFAULT NULL,
  `property_value` varchar(255) DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  KEY `FK_mq_message_properties_message_id` (`message_id`),
  CONSTRAINT `FK_mq_message_properties_message_id` FOREIGN KEY (`message_id`) REFERENCES `mq_messages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mq_message_properties`
--

LOCK TABLES `mq_message_properties` WRITE;
/*!40000 ALTER TABLE `mq_message_properties` DISABLE KEYS */;
INSERT INTO `mq_message_properties` VALUES
(1,'625017145','identifiers');
/*!40000 ALTER TABLE `mq_message_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mq_messages`
--

DROP TABLE IF EXISTS `mq_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mq_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `delay_millis` bigint(20) DEFAULT NULL,
  `last_update_time` datetime(6) DEFAULT NULL,
  `max_retries` int(11) DEFAULT NULL,
  `message_id` varchar(255) NOT NULL,
  `message_status` varchar(255) DEFAULT NULL,
  `queue` varchar(255) DEFAULT NULL,
  `retry_count` int(11) DEFAULT NULL,
  `message_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mq_messages`
--

LOCK TABLES `mq_messages` WRITE;
/*!40000 ALTER TABLE `mq_messages` DISABLE KEYS */;
INSERT INTO `mq_messages` VALUES
(1,0,'2025-03-04 13:23:02.119012',10,'ID:059a4cfa7884-42535-1741090938241-16:1:1:1:1','FINISH','viewer',1,'REFRESH_ARCHIVE_TREE');
/*!40000 ALTER TABLE `mq_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `openid_accounts`
--

DROP TABLE IF EXISTS `openid_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `openid_accounts` (
  `user_id` bigint(20) DEFAULT NULL,
  `claimed_identifier` varchar(255) DEFAULT NULL,
  KEY `FK_openid_accounts_user_id` (`user_id`),
  CONSTRAINT `FK_openid_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `viewer_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `openid_accounts`
--

LOCK TABLES `openid_accounts` WRITE;
/*!40000 ALTER TABLE `openid_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `openid_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurring_task_trigger`
--

DROP TABLE IF EXISTS `recurring_task_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `recurring_task_trigger` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `laste_time_triggered` datetime(6) DEFAULT NULL,
  `schedule_expression` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `task_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_task_trigger`
--

LOCK TABLES `recurring_task_trigger` WRITE;
/*!40000 ALTER TABLE `recurring_task_trigger` DISABLE KEYS */;
INSERT INTO `recurring_task_trigger` VALUES
(1,NULL,'0 45 0 * * ?','RUNNING','INDEX_USAGE_STATISTICS'),
(2,NULL,'0 42 8,12,17 * * ?','RUNNING','NOTIFY_SEARCH_UPDATE'),
(3,NULL,'0 40 0 * * ?','RUNNING','PURGE_EXPIRED_DOWNLOAD_TICKETS'),
(4,NULL,'0 50 0 * * ?','RUNNING','UPDATE_SITEMAP'),
(5,NULL,'0 42 0 * * ?','RUNNING','UPDATE_UPLOAD_JOBS');
/*!40000 ALTER TABLE `recurring_task_trigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_privileges`
--

DROP TABLE IF EXISTS `role_privileges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_privileges` (
  `role_id` bigint(20) DEFAULT NULL,
  `privilege_name` varchar(255) DEFAULT NULL,
  KEY `FK_role_privileges_role_id` (`role_id`),
  CONSTRAINT `FK_role_privileges_role_id` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_privileges`
--

LOCK TABLES `role_privileges` WRITE;
/*!40000 ALTER TABLE `role_privileges` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_privileges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `searches`
--

DROP TABLE IF EXISTS `searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `searches` (
  `search_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `custom_filter_query` longtext DEFAULT NULL,
  `date_updated` datetime(6) NOT NULL,
  `expand_query` longtext DEFAULT NULL,
  `filter` varchar(255) DEFAULT NULL,
  `last_hits_count` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `new_hits_notification` tinyint(1) DEFAULT 0,
  `page` int(11) NOT NULL,
  `proximity_search_distance` int(11) DEFAULT NULL,
  `query` longtext DEFAULT NULL,
  `search_filter` varchar(255) DEFAULT NULL,
  `search_type` int(11) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `user_input` varchar(255) DEFAULT NULL,
  `owner_id` bigint(20) NOT NULL,
  PRIMARY KEY (`search_id`),
  KEY `FK_searches_owner_id` (`owner_id`),
  CONSTRAINT `FK_searches_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `viewer_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `searches`
--

LOCK TABLES `searches` WRITE;
/*!40000 ALTER TABLE `searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_statistics`
--

DROP TABLE IF EXISTS `session_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_statistics` (
  `session_statistics_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_ip` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`session_statistics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_statistics`
--

LOCK TABLES `session_statistics` WRITE;
/*!40000 ALTER TABLE `session_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session_statistics_record_requests`
--

DROP TABLE IF EXISTS `session_statistics_record_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `session_statistics_record_requests` (
  `session_statistics_id` bigint(20) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `record_identifier` varchar(255) DEFAULT NULL,
  KEY `sessionstatisticsrecordrequestssessionstatisticsid` (`session_statistics_id`),
  CONSTRAINT `sessionstatisticsrecordrequestssessionstatisticsid` FOREIGN KEY (`session_statistics_id`) REFERENCES `session_statistics` (`session_statistics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session_statistics_record_requests`
--

LOCK TABLES `session_statistics_record_requests` WRITE;
/*!40000 ALTER TABLE `session_statistics_record_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `session_statistics_record_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_of_use`
--

DROP TABLE IF EXISTS `terms_of_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_of_use` (
  `terms_of_use_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`terms_of_use_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_of_use`
--

LOCK TABLES `terms_of_use` WRITE;
/*!40000 ALTER TABLE `terms_of_use` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms_of_use` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terms_of_use_translations`
--

DROP TABLE IF EXISTS `terms_of_use_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `terms_of_use_translations` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `translation_value` longtext DEFAULT NULL,
  `translation_owner_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  KEY `FK_terms_of_use_translations_translation_owner_id` (`translation_owner_id`),
  CONSTRAINT `FK_terms_of_use_translations_translation_owner_id` FOREIGN KEY (`translation_owner_id`) REFERENCES `terms_of_use` (`terms_of_use_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terms_of_use_translations`
--

LOCK TABLES `terms_of_use_translations` WRITE;
/*!40000 ALTER TABLE `terms_of_use_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `terms_of_use_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_configuration`
--

DROP TABLE IF EXISTS `theme_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme_configuration` (
  `theme_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `footer_link` text DEFAULT NULL,
  `fullscreen_logo` bigint(20) DEFAULT NULL,
  `icon` bigint(20) DEFAULT NULL,
  `javascript` longtext DEFAULT NULL,
  `label` tinytext DEFAULT NULL,
  `logo` bigint(20) DEFAULT NULL,
  `name` tinytext DEFAULT NULL,
  `social_media_link` text DEFAULT NULL,
  `stylesheet` longtext DEFAULT NULL,
  PRIMARY KEY (`theme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_configuration`
--

LOCK TABLES `theme_configuration` WRITE;
/*!40000 ALTER TABLE `theme_configuration` DISABLE KEYS */;
/*!40000 ALTER TABLE `theme_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transkribus_job_observers`
--

DROP TABLE IF EXISTS `transkribus_job_observers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transkribus_job_observers` (
  `job_id` bigint(20) DEFAULT NULL,
  `observer` varchar(255) DEFAULT NULL,
  KEY `FK_transkribus_job_observers_job_id` (`job_id`),
  CONSTRAINT `FK_transkribus_job_observers_job_id` FOREIGN KEY (`job_id`) REFERENCES `transkribus_jobs` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transkribus_job_observers`
--

LOCK TABLES `transkribus_job_observers` WRITE;
/*!40000 ALTER TABLE `transkribus_job_observers` DISABLE KEYS */;
/*!40000 ALTER TABLE `transkribus_job_observers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transkribus_jobs`
--

DROP TABLE IF EXISTS `transkribus_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `transkribus_jobs` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(31) DEFAULT NULL,
  `date_created` datetime(6) NOT NULL,
  `description` longtext DEFAULT NULL,
  `docId` varchar(255) DEFAULT NULL,
  `jobId` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `owner_id` varchar(255) NOT NULL,
  `pi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `user_collection_id` varchar(255) NOT NULL,
  `viewer_collection_id` varchar(255) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transkribus_jobs`
--

LOCK TABLES `transkribus_jobs` WRITE;
/*!40000 ALTER TABLE `transkribus_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `transkribus_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `translation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) DEFAULT NULL,
  `tag` longtext DEFAULT NULL,
  `translation_value` longtext DEFAULT NULL,
  `translation_owner_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`translation_id`),
  KEY `FK_translations_translation_owner_id` (`translation_owner_id`),
  CONSTRAINT `FK_translations_translation_owner_id` FOREIGN KEY (`translation_owner_id`) REFERENCES `cms_collections` (`cms_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_jobs`
--

DROP TABLE IF EXISTS `upload_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_jobs` (
  `upload_job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `creator_id` bigint(20) NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `description` longtext DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `pi` varchar(255) NOT NULL,
  `process_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `title` longtext DEFAULT NULL,
  PRIMARY KEY (`upload_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_jobs`
--

LOCK TABLES `upload_jobs` WRITE;
/*!40000 ALTER TABLE `upload_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_statistics`
--

DROP TABLE IF EXISTS `usage_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usage_statistics` (
  `usage_statistics_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `viewer_instance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usage_statistics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_statistics`
--

LOCK TABLES `usage_statistics` WRITE;
/*!40000 ALTER TABLE `usage_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_statistics_daily_session`
--

DROP TABLE IF EXISTS `usage_statistics_daily_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `usage_statistics_daily_session` (
  `usage_statistics_id` bigint(20) NOT NULL,
  `session_statistics_id` bigint(20) NOT NULL,
  PRIMARY KEY (`usage_statistics_id`,`session_statistics_id`),
  KEY `usagestatistics_daily_sessionsession_statistics_id` (`session_statistics_id`),
  CONSTRAINT `usage_statistics_daily_session_usage_statistics_id` FOREIGN KEY (`usage_statistics_id`) REFERENCES `usage_statistics` (`usage_statistics_id`),
  CONSTRAINT `usagestatistics_daily_sessionsession_statistics_id` FOREIGN KEY (`session_statistics_id`) REFERENCES `session_statistics` (`session_statistics_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_statistics_daily_session`
--

LOCK TABLES `usage_statistics_daily_session` WRITE;
/*!40000 ALTER TABLE `usage_statistics_daily_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_statistics_daily_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_groups`
--

DROP TABLE IF EXISTS `user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_groups` (
  `user_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_group_id`),
  KEY `FK_user_groups_owner_id` (`owner_id`),
  CONSTRAINT `FK_user_groups_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `viewer_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_groups`
--

LOCK TABLES `user_groups` WRITE;
/*!40000 ALTER TABLE `user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_properties`
--

DROP TABLE IF EXISTS `user_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_properties` (
  `user_id` bigint(20) DEFAULT NULL,
  `property_value` varchar(255) DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  KEY `FK_user_properties_user_id` (`user_id`),
  CONSTRAINT `FK_user_properties_user_id` FOREIGN KEY (`user_id`) REFERENCES `viewer_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_properties`
--

LOCK TABLES `user_properties` WRITE;
/*!40000 ALTER TABLE `user_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FK_user_role_user_group_id` (`user_group_id`),
  KEY `FK_user_role_user_id` (`user_id`),
  KEY `FK_user_role_role_id` (`role_id`),
  CONSTRAINT `FK_user_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`role_id`),
  CONSTRAINT `FK_user_role_user_group_id` FOREIGN KEY (`user_group_id`) REFERENCES `user_groups` (`user_group_id`),
  CONSTRAINT `FK_user_role_user_id` FOREIGN KEY (`user_id`) REFERENCES `viewer_users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext DEFAULT NULL,
  `name` varchar(180) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES
(1,NULL,'member');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viewer_users`
--

DROP TABLE IF EXISTS `viewer_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `viewer_users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activation_key` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `agreed_to_terms_of_use` tinyint(1) DEFAULT 0,
  `avatar_type` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `local_avatar_updated` bigint(20) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `score` bigint(20) DEFAULT NULL,
  `superuser` tinyint(1) NOT NULL DEFAULT 0,
  `suspended` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`),
  KEY `index_users_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viewer_users`
--

LOCK TABLES `viewer_users` WRITE;
/*!40000 ALTER TABLE `viewer_users` DISABLE KEYS */;
INSERT INTO `viewer_users` VALUES
(1,NULL,0,0,'DEFAULT',NULL,'anonymous@goobi.io',NULL,NULL,NULL,NULL,'Anonymous',NULL,0,0,1),
(2,NULL,1,1,'DEFAULT',NULL,'goobi@intranda.com',NULL,'2025-03-04 15:21:52.467465',NULL,NULL,'Goobi Administrator','$2a$10$38CTNjvJie6zVMRa6KM8EOuCAZ9weyvP2LBOVBgxPA1Hr4dYs04xy',0,1,0);
/*!40000 ALTER TABLE `viewer_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-03-04 15:23:53
