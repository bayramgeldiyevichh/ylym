-- MySQL dump 10.13  Distrib 8.0.29, for macos12.2 (x86_64)
--
-- Host: localhost    Database: martfury
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'4eihigSeN19j4iL6OmLEjm4HqUMUcM3X',1,'2022-08-04 20:10:01','2022-08-04 20:10:01','2022-08-04 20:10:01');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Top Slider Image 1','2027-08-05 00:00:00','not_set','VC2C8Q1UGCBG','promotion/1.jpg','/products',0,1,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(2,'Top Slider Image 2','2027-08-05 00:00:00','not_set','NBDWRXTSVZ8N','promotion/2.jpg','/products',0,2,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(3,'Homepage middle 1','2027-08-05 00:00:00','not_set','IZ6WU8KUALYD','promotion/3.jpg','/products',0,3,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(4,'Homepage middle 2','2027-08-05 00:00:00','not_set','ILSFJVYFGCPZ','promotion/4.jpg','/products',0,4,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(5,'Homepage middle 3','2027-08-05 00:00:00','not_set','ZDOZUZZIU7FT','promotion/5.jpg','/products',0,5,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(6,'Homepage big 1','2027-08-05 00:00:00','not_set','Q9YDUIC9HSWS','promotion/6.jpg','/products',0,6,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(7,'Homepage bottom small','2027-08-05 00:00:00','not_set','BE77BHQLZWMO','promotion/7.jpg','/products',0,7,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(8,'Product sidebar','2027-08-05 00:00:00','product-sidebar','SYCMLTVIECEQ','promotion/8.jpg','/products',0,8,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(9,'Homepage big 2','2027-08-05 00:00:00','not_set','IZ6WU8KUALYE','promotion/9.jpg','/products',0,9,'published','2022-08-04 20:10:01','2022-08-04 20:10:01');
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
INSERT INTO `ads_translations` VALUES ('vi',1,'Top Slider Image 1','promotion/1.jpg','/vi/products'),('vi',2,'Top Slider Image 2','promotion/2.jpg','/vi/products'),('vi',3,'Homepage middle 1','promotion/3.jpg','/vi/products'),('vi',4,'Homepage middle 2','promotion/4.jpg','/vi/products'),('vi',5,'Homepage middle 3','promotion/5.jpg','/vi/products'),('vi',6,'Homepage big 1','promotion/6.jpg','/vi/products'),('vi',7,'Homepage bottom small','promotion/7.jpg','/vi/products'),('vi',8,'Product sidebar','promotion/8.jpg','/vi/products'),('vi',9,'Homepage big 2','promotion/9.jpg','/vi/products');
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Nihil nihil et dolor ipsa voluptatem consequatur quasi. Culpa quis impedit et. Nihil modi qui quo eum ea. Magnam ea ut non nemo. Quia vitae possimus autem explicabo et quo odio nam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(2,'Fashion',0,'Magnam corrupti pariatur et voluptas sunt qui. Et architecto beatae sed molestiae quia eveniet. Corporis officiis qui eligendi aliquam quibusdam odit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(3,'Electronic',0,'Voluptas totam cupiditate accusantium voluptas illum. Placeat distinctio sit dignissimos et nisi quidem. Doloremque velit praesentium nulla nihil esse.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(4,'Commercial',0,'Sapiente rem et consequatur. Possimus quos qui laudantium nulla dignissimos velit. Et numquam adipisci eum perspiciatis eum eaque quia. Sit facere voluptate quia.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2022-08-04 20:09:57','2022-08-04 20:09:57');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int unsigned NOT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Ms. Jada Nader PhD','wreichel@example.org','272.949.1815','12758 Taryn Park\nHuelsstad, MD 16666-2011','Eaque quaerat ipsa esse sint fugit quia quia.','Odio iusto est non vero. Qui ducimus quo id aliquam laboriosam eveniet. Laudantium accusantium aut rem cupiditate mollitia debitis. Alias sapiente velit impedit corporis quas quis. Exercitationem exercitationem velit autem iusto neque. Et vitae omnis illum amet fugit voluptatum. Et nemo vel inventore aliquam vel. Eos cumque ut voluptatem aliquam. Voluptas ipsam impedit labore veritatis. Illo non sapiente rerum earum quia blanditiis in.','read','2022-08-04 20:09:53','2022-08-04 20:09:53'),(2,'Ms. Reva Grady','myrtle.abbott@example.com','+13516207741','676 Mellie Alley\nKlingland, OK 91575','Corporis hic ipsum voluptate sunt non minima vel.','Iure voluptatum accusantium consequatur corporis sequi atque. Eius nesciunt illo et maiores. Illo ad est sint dolorem et quis velit. Quo est rerum adipisci repudiandae eligendi incidunt. Omnis quia repellendus a tempore maiores voluptates. Ut eaque qui aut voluptatem quasi eos. Impedit veniam a et accusantium et sint accusantium. Autem est quis ipsa id sit illum.','read','2022-08-04 20:09:53','2022-08-04 20:09:53'),(3,'Della Collier','charlene.cole@example.org','1-425-383-0602','66824 Jerde Ways\nAdrianaview, PA 97467-8763','Aliquid magni recusandae possimus qui et.','Voluptate expedita tempore quisquam totam. Quae a asperiores officiis. Vitae labore fugiat optio quia temporibus deserunt et. Quibusdam ad dolores magnam voluptatum expedita. Vitae unde aperiam fuga non aut harum. Mollitia autem ut ipsum sapiente labore vel. Aliquid est quo labore consectetur. Totam consequatur animi neque illum. Eligendi omnis quisquam quia perspiciatis in. Eum possimus eius ipsum aspernatur a voluptas est. Totam at impedit aut necessitatibus illo.','read','2022-08-04 20:09:53','2022-08-04 20:09:53'),(4,'Jolie Fritsch','daugherty.colin@example.net','+1 (225) 893-7902','81432 Nash Port\nNew Aliya, GA 74099','Voluptas quidem sapiente eum rerum.','Dolor excepturi necessitatibus labore et deleniti doloribus et. Quis quisquam expedita itaque quo veritatis hic. Officiis reiciendis eum quis magnam dolores. Velit dolorum omnis reprehenderit excepturi amet. Voluptas incidunt repellat nobis quia omnis qui repudiandae. Delectus eos voluptatem omnis nam tempora beatae est est. Consectetur nostrum ipsam quis temporibus quos. Nesciunt voluptatum deserunt perferendis culpa nihil doloremque est.','read','2022-08-04 20:09:53','2022-08-04 20:09:53'),(5,'Dr. Rhea Hackett IV','leilani61@example.com','283.984.1617','586 Ena Junctions\nKyraside, MN 83532','Sunt voluptatum hic quod quia.','Porro temporibus provident quis possimus et quia architecto. A eius consequatur in nam. Quo voluptatem voluptatem est. Optio magni nesciunt aut recusandae. Suscipit quo quis dolores sit. Omnis voluptas vel laudantium nesciunt. Non iure voluptatem libero natus praesentium nisi. Velit deserunt quos et similique. Consequuntur blanditiis quam quas aut. Corrupti iure rerum magnam tenetur inventore dolor. Ex dicta nostrum quia autem. Esse numquam quod aliquid fugit.','read','2022-08-04 20:09:53','2022-08-04 20:09:53'),(6,'Jaylin Braun','beulah.schulist@example.com','1-863-737-9460','947 Mittie Parks\nLittletown, KY 87980','Non at ut rerum aut.','Dignissimos facilis debitis soluta aliquam. Vero eos est ducimus autem voluptatem consequatur maxime. Quidem facilis sed necessitatibus. Eius magni aspernatur explicabo in sapiente quam nesciunt veritatis. Corporis qui ut dignissimos ut atque. Eum eius accusamus et dolor aut. Rerum quod et reprehenderit ullam blanditiis et placeat eos. A quasi dolores ab est unde commodi.','unread','2022-08-04 20:09:53','2022-08-04 20:09:53'),(7,'Mrs. Keara Hartmann','cummings.naomie@example.net','+1 (224) 414-5874','905 Murazik Turnpike\nNew Kaelyn, WV 57672','Id quia impedit ex quibusdam doloribus nisi.','Perspiciatis consequatur dignissimos quo ea cum. Aut pariatur quis laudantium et. Odio reprehenderit deserunt molestiae. Earum non quas delectus animi distinctio. Aut non in quia recusandae. Minus voluptatum mollitia et qui exercitationem. Quas labore sunt laboriosam. Assumenda eum aperiam quia sequi qui omnis. In aut rerum quam vel quae. Dolor dolorem animi voluptas.','read','2022-08-04 20:09:53','2022-08-04 20:09:53'),(8,'Mr. Grayson Johnson','hlueilwitz@example.org','820.515.1997','90747 Adams Unions Suite 595\nJaydonburgh, MI 46319','Quisquam qui sed sunt quasi placeat.','Nam sint consectetur et natus rerum ut dolore. Est cumque neque velit amet aut impedit saepe. Provident debitis accusantium expedita quis quos sed et cum. Fugiat quos quia facere illum quae. Omnis id et reiciendis fuga. Praesentium dolor earum est nihil voluptate. Minima maxime libero et dolorem placeat. Autem deleniti dolores placeat quis iste qui voluptatum enim. Accusamus cum alias aperiam dolore. A consequuntur omnis enim tempore et necessitatibus a.','unread','2022-08-04 20:09:53','2022-08-04 20:09:53'),(9,'Deborah Schuppe Sr.','htillman@example.net','(725) 908-8054','4672 Windler Path\nNew Candido, NY 85027-7019','Et omnis eum in sequi.','Et culpa error quaerat dolor praesentium. Voluptatibus asperiores sit debitis nemo inventore molestiae. Ea modi vel iusto placeat vero et est sed. Adipisci dolore reprehenderit autem porro ea. Illo et est enim assumenda blanditiis. Earum quaerat ipsum dolores corrupti officia neque officia. Aut consequuntur soluta deleniti blanditiis consequatur quod. Vero tempora sit labore aut et iure est consectetur. Enim libero laudantium dolores repellendus veritatis.','unread','2022-08-04 20:09:53','2022-08-04 20:09:53'),(10,'Jedediah Bednar','abernathy.jacky@example.com','1-678-843-6575','48853 Terrill Mall\nWuckertmouth, HI 72955','Consequatur atque sed et ad voluptatem ea.','Nulla assumenda est ex voluptatem culpa. Minima quasi nihil laborum esse et est ut. Nobis ipsum tempore et aut fuga sint numquam. Sit incidunt ab velit asperiores natus. Quo eligendi iure adipisci quas iste. A at rem voluptas quia et consequatur. Iure voluptatibus aspernatur voluptas cupiditate consectetur dolor. Quis accusamus qui assumenda et consequuntur sunt facere. Libero sit architecto ut sequi suscipit officia perspiciatis. Qui nobis et quam repudiandae deleniti dicta.','unread','2022-08-04 20:09:53','2022-08-04 20:09:53');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.jpg','published',0,1,'2022-08-04 20:09:28','2022-08-04 20:09:28'),(2,'Hand crafted',NULL,NULL,'brands/2.jpg','published',1,1,'2022-08-04 20:09:28','2022-08-04 20:09:28'),(3,'Mestonix',NULL,NULL,'brands/3.jpg','published',2,1,'2022-08-04 20:09:28','2022-08-04 20:09:28'),(4,'Sunshine',NULL,NULL,'brands/4.jpg','published',3,1,'2022-08-04 20:09:28','2022-08-04 20:09:28'),(5,'Pure',NULL,NULL,'brands/5.jpg','published',4,1,'2022-08-04 20:09:28','2022-08-04 20:09:28'),(6,'Anfold',NULL,NULL,'brands/6.jpg','published',5,1,'2022-08-04 20:09:28','2022-08-04 20:09:28'),(7,'Automotive',NULL,NULL,'brands/7.jpg','published',6,1,'2022-08-04 20:09:28','2022-08-04 20:09:28');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2022-08-04 20:09:28','2022-08-04 20:09:28'),(2,'EUR','€',0,2,1,0,0.84,'2022-08-04 20:09:28','2022-08-04 20:09:28'),(3,'VND','₫',0,0,2,0,23203,'2022-08-04 20:09:28','2022-08-04 20:09:28');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Jarod Crooks','customer@botble.com','+12517454758','LV','Kansas','Moorestad','97180 Dare Lock',1,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','86959'),(2,'Jarod Crooks','customer@botble.com','+15634779649','GM','Oklahoma','Port Rose','5414 Kuphal Gateway Suite 964',1,0,'2022-08-04 20:09:51','2022-08-04 20:09:51','48759'),(3,'Hilma Kuhic','vendor@botble.com','+13868362143','TM','Minnesota','Taramouth','60017 Rupert Cliff Suite 578',2,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','36973'),(4,'Hilma Kuhic','vendor@botble.com','+15203482969','FJ','Arkansas','New Marshall','147 Spencer Stravenue',2,0,'2022-08-04 20:09:51','2022-08-04 20:09:51','92312'),(5,'Kasandra Toy','wrunte@example.com','+16126901609','ZW','Rhode Island','Einarbury','9107 Kip Freeway Suite 401',3,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','48591'),(6,'Stella Senger','luettgen.garrison@example.net','+13478011692','FR','Virginia','Huelchester','541 Jayson Rue',4,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','52179-2015'),(7,'Prof. Maurine Greenfelder','febert@example.org','+12155574703','BD','Kentucky','East Willard','34095 Abernathy Mission Suite 781',5,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','66337-3786'),(8,'Prof. Myra Kassulke','mhalvorson@example.com','+18593076094','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',6,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','32173-3699'),(9,'Ms. Chanel Huel','rozella.mccullough@example.net','+17635957984','TH','Nevada','Myrlberg','97730 Rolfson Path',7,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','14272'),(10,'Freeman Abshire','strosin.hertha@example.org','+12142203333','GP','District of Columbia','New Devon','11396 Runolfsdottir Ranch Suite 048',8,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','10618'),(11,'Mr. Filiberto Ryan Jr.','zhaag@example.org','+15865949202','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',9,1,'2022-08-04 20:09:51','2022-08-04 20:09:51','37813-8554'),(12,'Rosina Kassulke','lschmitt@example.net','+13517894589','GD','Kansas','North Amanda','9006 Florence Harbor',10,1,'2022-08-04 20:09:52','2022-08-04 20:09:52','35060');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Jarod Crooks','customer@botble.com','$2y$10$lit7y1QlRgpxAZAq9MzYSO.VlqY5hhhiK.kLyOPxib9UGI7yca88y','customers/6.jpg','1982-07-15','+13856513922',NULL,'2022-08-04 20:09:51','2022-08-04 20:09:51','2022-08-05 03:09:51',NULL,0,NULL,'activated'),(2,'Hilma Kuhic','vendor@botble.com','$2y$10$6hnSJz/y8Ukl64WCq3qybeJYJpPTVOuT11zsrdVqC0s24wWrT2tUS','customers/7.jpg','1992-07-27','+14055834434',NULL,'2022-08-04 20:09:51','2022-08-04 20:10:07','2022-08-05 03:09:51',NULL,1,'2022-08-05 03:10:07','activated'),(3,'Kasandra Toy','wrunte@example.com','$2y$10$IEfsHWh3fEJ4DQeKp3dFueHN7RqXOFMrsDOAo5pqGeTQRrHRhc.ky','customers/1.jpg','1997-07-07','+16816737233',NULL,'2022-08-04 20:09:51','2022-08-04 20:09:51','2022-08-05 03:09:51',NULL,0,NULL,'activated'),(4,'Stella Senger','luettgen.garrison@example.net','$2y$10$rTYkJgWC2HFvQH52PdEkO.QKbUDPCTBp/QvvutFdcNo2JhzPXUU9a','customers/2.jpg','1991-07-21','+18587087694',NULL,'2022-08-04 20:09:51','2022-08-04 20:09:51','2022-08-05 03:09:51',NULL,0,NULL,'activated'),(5,'Prof. Maurine Greenfelder','febert@example.org','$2y$10$VOJKfrd8t3l5NlS57lH1GOIorN1T0mJ7lp0yQBaJ9zCMWtmtQQqhS','customers/3.jpg','1986-07-29','+19599976928',NULL,'2022-08-04 20:09:51','2022-08-04 20:10:07','2022-08-05 03:09:51',NULL,1,'2022-08-05 03:10:07','activated'),(6,'Prof. Myra Kassulke','mhalvorson@example.com','$2y$10$fn9LWPz5d9OoOCE8vmJ8s.JI3g09b3QK4ydYzZnfcdfdnnykZ9CNu','customers/4.jpg','1984-07-27','+18723782835',NULL,'2022-08-04 20:09:51','2022-08-04 20:09:51','2022-08-05 03:09:51',NULL,0,NULL,'activated'),(7,'Ms. Chanel Huel','rozella.mccullough@example.net','$2y$10$a0R/SDAcJvMRP/sKN6e43.0Al4HOzhSHXGqyGC0dDnsrm8VbYvm8u','customers/5.jpg','1988-07-18','+16234742304',NULL,'2022-08-04 20:09:51','2022-08-04 20:10:07','2022-08-05 03:09:51',NULL,1,'2022-08-05 03:10:07','activated'),(8,'Freeman Abshire','strosin.hertha@example.org','$2y$10$ZUJv0D2l7TCEQ5EQOKXoV.AJMrBWpPYUttXDrYQvMUukPDsmz.iEi','customers/6.jpg','2002-07-31','+14403752604',NULL,'2022-08-04 20:09:51','2022-08-04 20:09:51','2022-08-05 03:09:51',NULL,0,NULL,'activated'),(9,'Mr. Filiberto Ryan Jr.','zhaag@example.org','$2y$10$A.A5qyf6FrnIu8aCvmcBFuvcJ2GwTXtfqdmCMugeo7j.UuYhFefFy','customers/7.jpg','1994-07-28','+18602832553',NULL,'2022-08-04 20:09:51','2022-08-04 20:09:51','2022-08-05 03:09:51',NULL,0,NULL,'activated'),(10,'Rosina Kassulke','lschmitt@example.net','$2y$10$KTf5r00FgM/fNAtAURJwJec5hbbm3aalOB5qNG6WAO6t3sGAPcGdG','customers/8.jpg','1977-07-16','+18315365107',NULL,'2022-08-04 20:09:51','2022-08-04 20:10:07','2022-08-05 03:09:52',NULL,1,'2022-08-05 03:10:07','activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` int unsigned NOT NULL,
  `customer_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` int unsigned NOT NULL,
  `product_collection_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,33.705,10,3),(1,2,18.225,20,5),(1,3,8.6,18,5),(1,4,431.9615,20,1),(1,5,654.36,20,4),(1,6,431.1,11,3),(1,7,183.24,15,3),(1,8,667.4244,19,4),(1,9,302.4,20,5),(1,10,809.4,13,2);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2022-09-04 00:00:00','published','2022-08-04 20:09:52','2022-08-04 20:09:52');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi mùa đông.');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Prof. Myra Kassulke','+18593076094','mhalvorson@example.com','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',1,'32173-3699'),(2,'Prof. Myra Kassulke','+18593076094','mhalvorson@example.com','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',2,'32173-3699'),(3,'Prof. Myra Kassulke','+18593076094','mhalvorson@example.com','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',3,'32173-3699'),(4,'Prof. Myra Kassulke','+18593076094','mhalvorson@example.com','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',4,'32173-3699'),(5,'Prof. Myra Kassulke','+18593076094','mhalvorson@example.com','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',5,'32173-3699'),(6,'Prof. Myra Kassulke','+18593076094','mhalvorson@example.com','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',6,'32173-3699'),(7,'Prof. Myra Kassulke','+18593076094','mhalvorson@example.com','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',7,'32173-3699'),(8,'Prof. Myra Kassulke','+18593076094','mhalvorson@example.com','CW','Texas','Alexysmouth','35389 Jerald Parkways Suite 925',8,'32173-3699'),(9,'Stella Senger','+13478011692','luettgen.garrison@example.net','FR','Virginia','Huelchester','541 Jayson Rue',9,'52179-2015'),(10,'Stella Senger','+13478011692','luettgen.garrison@example.net','FR','Virginia','Huelchester','541 Jayson Rue',10,'52179-2015'),(11,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',11,'37813-8554'),(12,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',12,'37813-8554'),(13,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',13,'37813-8554'),(14,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',14,'37813-8554'),(15,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',15,'37813-8554'),(16,'Kasandra Toy','+16126901609','wrunte@example.com','ZW','Rhode Island','Einarbury','9107 Kip Freeway Suite 401',16,'48591'),(17,'Kasandra Toy','+16126901609','wrunte@example.com','ZW','Rhode Island','Einarbury','9107 Kip Freeway Suite 401',17,'48591'),(18,'Jarod Crooks','+12517454758','customer@botble.com','LV','Kansas','Moorestad','97180 Dare Lock',18,'86959'),(19,'Jarod Crooks','+12517454758','customer@botble.com','LV','Kansas','Moorestad','97180 Dare Lock',19,'86959'),(20,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',20,'37813-8554'),(21,'Kasandra Toy','+16126901609','wrunte@example.com','ZW','Rhode Island','Einarbury','9107 Kip Freeway Suite 401',21,'48591'),(22,'Kasandra Toy','+16126901609','wrunte@example.com','ZW','Rhode Island','Einarbury','9107 Kip Freeway Suite 401',22,'48591'),(23,'Stella Senger','+13478011692','luettgen.garrison@example.net','FR','Virginia','Huelchester','541 Jayson Rue',23,'52179-2015'),(24,'Stella Senger','+13478011692','luettgen.garrison@example.net','FR','Virginia','Huelchester','541 Jayson Rue',24,'52179-2015'),(25,'Kasandra Toy','+16126901609','wrunte@example.com','ZW','Rhode Island','Einarbury','9107 Kip Freeway Suite 401',25,'48591'),(26,'Kasandra Toy','+16126901609','wrunte@example.com','ZW','Rhode Island','Einarbury','9107 Kip Freeway Suite 401',26,'48591'),(27,'Stella Senger','+13478011692','luettgen.garrison@example.net','FR','Virginia','Huelchester','541 Jayson Rue',27,'52179-2015'),(28,'Stella Senger','+13478011692','luettgen.garrison@example.net','FR','Virginia','Huelchester','541 Jayson Rue',28,'52179-2015'),(29,'Stella Senger','+13478011692','luettgen.garrison@example.net','FR','Virginia','Huelchester','541 Jayson Rue',29,'52179-2015'),(30,'Stella Senger','+13478011692','luettgen.garrison@example.net','FR','Virginia','Huelchester','541 Jayson Rue',30,'52179-2015'),(31,'Jarod Crooks','+12517454758','customer@botble.com','LV','Kansas','Moorestad','97180 Dare Lock',31,'86959'),(32,'Jarod Crooks','+12517454758','customer@botble.com','LV','Kansas','Moorestad','97180 Dare Lock',32,'86959'),(33,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',33,'37813-8554'),(34,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',34,'37813-8554'),(35,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',35,'37813-8554'),(36,'Mr. Filiberto Ryan Jr.','+15865949202','zhaag@example.org','EE','Nebraska','Feilfort','37120 Lockman Rest Apt. 478',36,'37813-8554'),(37,'Kasandra Toy','+16126901609','wrunte@example.com','ZW','Rhode Island','Einarbury','9107 Kip Freeway Suite 401',37,'48591'),(38,'Freeman Abshire','+12142203333','strosin.hertha@example.org','GP','District of Columbia','New Devon','11396 Runolfsdottir Ranch Suite 048',38,'10618'),(39,'Freeman Abshire','+12142203333','strosin.hertha@example.org','GP','District of Columbia','New Devon','11396 Runolfsdottir Ranch Suite 048',39,'10618'),(40,'Freeman Abshire','+12142203333','strosin.hertha@example.org','GP','District of Columbia','New Devon','11396 Runolfsdottir Ranch Suite 048',40,'10618'),(41,'Jarod Crooks','+12517454758','customer@botble.com','LV','Kansas','Moorestad','97180 Dare Lock',41,'86959'),(42,'Jarod Crooks','+12517454758','customer@botble.com','LV','Kansas','Moorestad','97180 Dare Lock',42,'86959'),(43,'Jarod Crooks','+12517454758','customer@botble.com','LV','Kansas','Moorestad','97180 Dare Lock',43,'86959'),(44,'Jarod Crooks','+12517454758','customer@botble.com','LV','Kansas','Moorestad','97180 Dare Lock',44,'86959');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2022-07-30 20:10:08','2022-07-30 20:10:08'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2022-07-30 20:10:08','2022-07-30 20:10:08'),(3,'confirm_payment','Payment was confirmed (amount $2,222.80) by %user_name%',0,1,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2022-07-20 00:10:08','2022-07-20 00:10:08'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2022-07-20 00:10:08','2022-07-20 00:10:08'),(7,'confirm_payment','Payment was confirmed (amount $2,808.00) by %user_name%',0,2,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(9,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(10,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2022-07-29 12:10:08','2022-07-29 12:10:08'),(11,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2022-07-29 12:10:08','2022-07-29 12:10:08'),(12,'confirm_payment','Payment was confirmed (amount $2,998.50) by %user_name%',0,3,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(13,'create_shipment','Created shipment for order',0,3,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(14,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2022-07-22 08:10:08','2022-07-22 08:10:08'),(15,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2022-07-22 08:10:08','2022-07-22 08:10:08'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(17,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(18,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2022-07-20 20:10:08','2022-07-20 20:10:08'),(19,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2022-07-20 20:10:08','2022-07-20 20:10:08'),(20,'confirm_payment','Payment was confirmed (amount $2,248.80) by %user_name%',0,5,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(21,'create_shipment','Created shipment for order',0,5,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2022-07-23 20:10:08','2022-07-23 20:10:08'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2022-07-23 20:10:08','2022-07-23 20:10:08'),(24,'confirm_payment','Payment was confirmed (amount $2,979.10) by %user_name%',0,6,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2022-07-28 18:10:08','2022-07-28 18:10:08'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2022-07-28 18:10:08','2022-07-28 18:10:08'),(28,'confirm_payment','Payment was confirmed (amount $6,249.50) by %user_name%',0,7,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2022-07-27 08:10:08','2022-07-27 08:10:08'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2022-07-27 08:10:08','2022-07-27 08:10:08'),(32,'create_shipment','Created shipment for order',0,8,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(33,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2022-07-26 12:10:08','2022-07-26 12:10:08'),(35,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2022-07-26 12:10:08','2022-07-26 12:10:08'),(36,'create_shipment','Created shipment for order',0,9,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(37,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(38,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2022-08-02 04:10:08','2022-08-02 04:10:08'),(39,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2022-08-02 04:10:08','2022-08-02 04:10:08'),(40,'confirm_payment','Payment was confirmed (amount $2,018.10) by %user_name%',0,10,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(41,'create_shipment','Created shipment for order',0,10,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2022-07-23 08:10:08','2022-07-23 08:10:08'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2022-07-23 08:10:08','2022-07-23 08:10:08'),(45,'confirm_payment','Payment was confirmed (amount $3,628.70) by %user_name%',0,11,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(46,'create_shipment','Created shipment for order',0,11,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2022-07-30 20:10:08','2022-07-30 20:10:08'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2022-07-30 20:10:08','2022-07-30 20:10:08'),(49,'confirm_payment','Payment was confirmed (amount $3,729.30) by %user_name%',0,12,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(50,'create_shipment','Created shipment for order',0,12,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(51,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(52,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2022-08-01 08:10:08','2022-08-01 08:10:08'),(53,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2022-08-01 08:10:08','2022-08-01 08:10:08'),(54,'confirm_payment','Payment was confirmed (amount $42.00) by %user_name%',0,13,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(55,'create_shipment','Created shipment for order',0,13,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(56,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(57,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2022-07-28 20:10:08','2022-07-28 20:10:08'),(58,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2022-07-28 20:10:08','2022-07-28 20:10:08'),(59,'create_shipment','Created shipment for order',0,14,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(60,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(61,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2022-07-25 08:10:08','2022-07-25 08:10:08'),(62,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2022-07-25 08:10:08','2022-07-25 08:10:08'),(63,'create_shipment','Created shipment for order',0,15,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(64,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(65,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2022-07-31 12:10:08','2022-07-31 12:10:08'),(66,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2022-07-31 12:10:08','2022-07-31 12:10:08'),(67,'confirm_payment','Payment was confirmed (amount $578.60) by %user_name%',0,16,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(68,'create_shipment','Created shipment for order',0,16,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2022-08-02 16:10:08','2022-08-02 16:10:08'),(70,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2022-08-02 16:10:08','2022-08-02 16:10:08'),(71,'confirm_payment','Payment was confirmed (amount $3,816.10) by %user_name%',0,17,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(72,'create_shipment','Created shipment for order',0,17,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(74,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2022-07-31 20:10:08','2022-07-31 20:10:08'),(75,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2022-07-31 20:10:08','2022-07-31 20:10:08'),(76,'confirm_payment','Payment was confirmed (amount $877.80) by %user_name%',0,18,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(77,'create_shipment','Created shipment for order',0,18,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(79,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2022-07-29 20:10:08','2022-07-29 20:10:08'),(80,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2022-07-29 20:10:08','2022-07-29 20:10:08'),(81,'confirm_payment','Payment was confirmed (amount $2,278.60) by %user_name%',0,19,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(82,'create_shipment','Created shipment for order',0,19,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(83,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2022-07-26 16:10:08','2022-07-26 16:10:08'),(84,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2022-07-26 16:10:08','2022-07-26 16:10:08'),(85,'create_shipment','Created shipment for order',0,20,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(87,'create_order_from_seeder','Order is created from the checkout page',NULL,21,NULL,'2022-08-02 08:10:08','2022-08-02 08:10:08'),(88,'confirm_order','Order was verified by %user_name%',0,21,NULL,'2022-08-02 08:10:08','2022-08-02 08:10:08'),(89,'confirm_payment','Payment was confirmed (amount $1,230.00) by %user_name%',0,21,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(90,'create_shipment','Created shipment for order',0,21,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(92,'create_order_from_seeder','Order is created from the checkout page',NULL,22,NULL,'2022-08-01 12:10:08','2022-08-01 12:10:08'),(93,'confirm_order','Order was verified by %user_name%',0,22,NULL,'2022-08-01 12:10:08','2022-08-01 12:10:08'),(94,'confirm_payment','Payment was confirmed (amount $1,291.50) by %user_name%',0,22,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(95,'create_shipment','Created shipment for order',0,22,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(96,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(97,'create_order_from_seeder','Order is created from the checkout page',NULL,23,NULL,'2022-08-02 14:10:08','2022-08-02 14:10:08'),(98,'confirm_order','Order was verified by %user_name%',0,23,NULL,'2022-08-02 14:10:08','2022-08-02 14:10:08'),(99,'create_shipment','Created shipment for order',0,23,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(100,'create_order_from_seeder','Order is created from the checkout page',NULL,24,NULL,'2022-08-01 02:10:08','2022-08-01 02:10:08'),(101,'confirm_order','Order was verified by %user_name%',0,24,NULL,'2022-08-01 02:10:08','2022-08-01 02:10:08'),(102,'confirm_payment','Payment was confirmed (amount $601.70) by %user_name%',0,24,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(103,'create_shipment','Created shipment for order',0,24,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(104,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(105,'create_order_from_seeder','Order is created from the checkout page',NULL,25,NULL,'2022-08-02 20:10:08','2022-08-02 20:10:08'),(106,'confirm_order','Order was verified by %user_name%',0,25,NULL,'2022-08-02 20:10:08','2022-08-02 20:10:08'),(107,'confirm_payment','Payment was confirmed (amount $2,351.70) by %user_name%',0,25,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(108,'create_shipment','Created shipment for order',0,25,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(109,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(110,'create_order_from_seeder','Order is created from the checkout page',NULL,26,NULL,'2022-08-02 04:10:08','2022-08-02 04:10:08'),(111,'confirm_order','Order was verified by %user_name%',0,26,NULL,'2022-08-02 04:10:08','2022-08-02 04:10:08'),(112,'create_shipment','Created shipment for order',0,26,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(113,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(114,'create_order_from_seeder','Order is created from the checkout page',NULL,27,NULL,'2022-08-01 08:10:09','2022-08-01 08:10:09'),(115,'confirm_order','Order was verified by %user_name%',0,27,NULL,'2022-08-01 08:10:09','2022-08-01 08:10:09'),(116,'confirm_payment','Payment was confirmed (amount $1,675.80) by %user_name%',0,27,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(117,'create_shipment','Created shipment for order',0,27,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(118,'create_order_from_seeder','Order is created from the checkout page',NULL,28,NULL,'2022-08-03 02:10:09','2022-08-03 02:10:09'),(119,'confirm_order','Order was verified by %user_name%',0,28,NULL,'2022-08-03 02:10:09','2022-08-03 02:10:09'),(120,'confirm_payment','Payment was confirmed (amount $3,077.70) by %user_name%',0,28,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(121,'create_shipment','Created shipment for order',0,28,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(122,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(123,'create_order_from_seeder','Order is created from the checkout page',NULL,29,NULL,'2022-08-01 08:10:09','2022-08-01 08:10:09'),(124,'confirm_order','Order was verified by %user_name%',0,29,NULL,'2022-08-01 08:10:09','2022-08-01 08:10:09'),(125,'confirm_payment','Payment was confirmed (amount $1,068.90) by %user_name%',0,29,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(126,'create_shipment','Created shipment for order',0,29,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(127,'create_order_from_seeder','Order is created from the checkout page',NULL,30,NULL,'2022-08-04 08:10:09','2022-08-04 08:10:09'),(128,'confirm_order','Order was verified by %user_name%',0,30,NULL,'2022-08-04 08:10:09','2022-08-04 08:10:09'),(129,'confirm_payment','Payment was confirmed (amount $611.60) by %user_name%',0,30,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(130,'create_shipment','Created shipment for order',0,30,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(131,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(132,'create_order_from_seeder','Order is created from the checkout page',NULL,31,NULL,'2022-08-03 04:10:09','2022-08-03 04:10:09'),(133,'confirm_order','Order was verified by %user_name%',0,31,NULL,'2022-08-03 04:10:09','2022-08-03 04:10:09'),(134,'confirm_payment','Payment was confirmed (amount $1,675.80) by %user_name%',0,31,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(135,'create_shipment','Created shipment for order',0,31,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(136,'create_order_from_seeder','Order is created from the checkout page',NULL,32,NULL,'2022-08-02 18:10:09','2022-08-02 18:10:09'),(137,'confirm_order','Order was verified by %user_name%',0,32,NULL,'2022-08-02 18:10:09','2022-08-02 18:10:09'),(138,'confirm_payment','Payment was confirmed (amount $2,898.50) by %user_name%',0,32,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(139,'create_shipment','Created shipment for order',0,32,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(140,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(141,'create_order_from_seeder','Order is created from the checkout page',NULL,33,NULL,'2022-08-02 20:10:09','2022-08-02 20:10:09'),(142,'confirm_order','Order was verified by %user_name%',0,33,NULL,'2022-08-02 20:10:09','2022-08-02 20:10:09'),(143,'confirm_payment','Payment was confirmed (amount $88.28) by %user_name%',0,33,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(144,'create_shipment','Created shipment for order',0,33,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(145,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(146,'create_order_from_seeder','Order is created from the checkout page',NULL,34,NULL,'2022-08-01 12:10:09','2022-08-01 12:10:09'),(147,'confirm_order','Order was verified by %user_name%',0,34,NULL,'2022-08-01 12:10:09','2022-08-01 12:10:09'),(148,'confirm_payment','Payment was confirmed (amount $3,816.10) by %user_name%',0,34,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(149,'create_shipment','Created shipment for order',0,34,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(150,'create_order_from_seeder','Order is created from the checkout page',NULL,35,NULL,'2022-08-04 04:10:09','2022-08-04 04:10:09'),(151,'confirm_order','Order was verified by %user_name%',0,35,NULL,'2022-08-04 04:10:09','2022-08-04 04:10:09'),(152,'confirm_payment','Payment was confirmed (amount $2,979.10) by %user_name%',0,35,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(153,'create_shipment','Created shipment for order',0,35,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(154,'create_order_from_seeder','Order is created from the checkout page',NULL,36,NULL,'2022-08-02 04:10:09','2022-08-02 04:10:09'),(155,'confirm_order','Order was verified by %user_name%',0,36,NULL,'2022-08-02 04:10:09','2022-08-02 04:10:09'),(156,'create_shipment','Created shipment for order',0,36,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(157,'create_order_from_seeder','Order is created from the checkout page',NULL,37,NULL,'2022-08-03 02:10:09','2022-08-03 02:10:09'),(158,'confirm_order','Order was verified by %user_name%',0,37,NULL,'2022-08-03 02:10:09','2022-08-03 02:10:09'),(159,'confirm_payment','Payment was confirmed (amount $5,092.50) by %user_name%',0,37,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(160,'create_shipment','Created shipment for order',0,37,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(161,'create_order_from_seeder','Order is created from the checkout page',NULL,38,NULL,'2022-08-04 08:10:09','2022-08-04 08:10:09'),(162,'confirm_order','Order was verified by %user_name%',0,38,NULL,'2022-08-04 08:10:09','2022-08-04 08:10:09'),(163,'confirm_payment','Payment was confirmed (amount $594.00) by %user_name%',0,38,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(164,'create_shipment','Created shipment for order',0,38,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(165,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(166,'create_order_from_seeder','Order is created from the checkout page',NULL,39,NULL,'2022-08-03 16:10:09','2022-08-03 16:10:09'),(167,'confirm_order','Order was verified by %user_name%',0,39,NULL,'2022-08-03 16:10:09','2022-08-03 16:10:09'),(168,'confirm_payment','Payment was confirmed (amount $3,816.10) by %user_name%',0,39,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(169,'create_shipment','Created shipment for order',0,39,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(170,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(171,'create_order_from_seeder','Order is created from the checkout page',NULL,40,NULL,'2022-08-03 08:10:09','2022-08-03 08:10:09'),(172,'confirm_order','Order was verified by %user_name%',0,40,NULL,'2022-08-03 08:10:09','2022-08-03 08:10:09'),(173,'create_shipment','Created shipment for order',0,40,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(174,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(175,'create_order_from_seeder','Order is created from the checkout page',NULL,41,NULL,'2022-08-04 12:10:09','2022-08-04 12:10:09'),(176,'confirm_order','Order was verified by %user_name%',0,41,NULL,'2022-08-04 12:10:09','2022-08-04 12:10:09'),(177,'confirm_payment','Payment was confirmed (amount $1,068.90) by %user_name%',0,41,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(178,'create_shipment','Created shipment for order',0,41,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(179,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(180,'create_order_from_seeder','Order is created from the checkout page',NULL,42,NULL,'2022-08-04 14:10:09','2022-08-04 14:10:09'),(181,'confirm_order','Order was verified by %user_name%',0,42,NULL,'2022-08-04 14:10:09','2022-08-04 14:10:09'),(182,'confirm_payment','Payment was confirmed (amount $1,148.70) by %user_name%',0,42,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(183,'create_shipment','Created shipment for order',0,42,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(184,'create_order_from_seeder','Order is created from the checkout page',NULL,43,NULL,'2022-08-04 18:10:09','2022-08-04 18:10:09'),(185,'confirm_order','Order was verified by %user_name%',0,43,NULL,'2022-08-04 18:10:09','2022-08-04 18:10:09'),(186,'confirm_payment','Payment was confirmed (amount $1,354.10) by %user_name%',0,43,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(187,'create_shipment','Created shipment for order',0,43,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(188,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(189,'create_order_from_seeder','Order is created from the checkout page',NULL,44,NULL,'2022-08-04 04:10:09','2022-08-04 04:10:09'),(190,'confirm_order','Order was verified by %user_name%',0,44,NULL,'2022-08-04 04:10:09','2022-08-04 04:10:09'),(191,'confirm_payment','Payment was confirmed (amount $1,963.50) by %user_name%',0,44,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(192,'create_shipment','Created shipment for order',0,44,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(193,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(194,'update_status','Order confirmed by %user_name%',0,2,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(195,'update_status','Order confirmed by %user_name%',0,10,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(196,'update_status','Order confirmed by %user_name%',0,12,NULL,'2022-08-04 20:10:10','2022-08-04 20:10:10'),(197,'update_status','Order confirmed by %user_name%',0,13,NULL,'2022-08-04 20:10:10','2022-08-04 20:10:10'),(198,'update_status','Order confirmed by %user_name%',0,17,NULL,'2022-08-04 20:10:10','2022-08-04 20:10:10'),(199,'update_status','Order confirmed by %user_name%',0,18,NULL,'2022-08-04 20:10:10','2022-08-04 20:10:10'),(200,'update_status','Order confirmed by %user_name%',0,21,NULL,'2022-08-04 20:10:10','2022-08-04 20:10:10'),(201,'update_status','Order confirmed by %user_name%',0,22,NULL,'2022-08-04 20:10:10','2022-08-04 20:10:10'),(202,'update_status','Order confirmed by %user_name%',0,24,NULL,'2022-08-04 20:10:11','2022-08-04 20:10:11'),(203,'update_status','Order confirmed by %user_name%',0,25,NULL,'2022-08-04 20:10:11','2022-08-04 20:10:11'),(204,'update_status','Order confirmed by %user_name%',0,28,NULL,'2022-08-04 20:10:11','2022-08-04 20:10:11'),(205,'update_status','Order confirmed by %user_name%',0,30,NULL,'2022-08-04 20:10:11','2022-08-04 20:10:11'),(206,'update_status','Order confirmed by %user_name%',0,32,NULL,'2022-08-04 20:10:11','2022-08-04 20:10:11'),(207,'update_status','Order confirmed by %user_name%',0,33,NULL,'2022-08-04 20:10:11','2022-08-04 20:10:11'),(208,'update_status','Order confirmed by %user_name%',0,38,NULL,'2022-08-04 20:10:12','2022-08-04 20:10:12'),(209,'update_status','Order confirmed by %user_name%',0,39,NULL,'2022-08-04 20:10:12','2022-08-04 20:10:12'),(210,'update_status','Order confirmed by %user_name%',0,41,NULL,'2022-08-04 20:10:12','2022-08-04 20:10:12'),(211,'update_status','Order confirmed by %user_name%',0,43,NULL,'2022-08-04 20:10:12','2022-08-04 20:10:12'),(212,'update_status','Order confirmed by %user_name%',0,44,NULL,'2022-08-04 20:10:12','2022-08-04 20:10:12');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_id` int unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,509.00,50.90,'[]',40,'Audio Equipment',845.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(2,1,2,509.00,50.90,'[]',41,'Audio Equipment',1690.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(3,1,1,540.00,54.00,'[]',46,'Samsung Smart Phone',841.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(4,2,3,540.00,54.00,'[]',43,'Samsung Smart Phone',2523.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(5,2,2,540.00,54.00,'[]',45,'Samsung Smart Phone',1682.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(6,3,2,520.00,52.00,'[]',56,'B&O Play Mini Bluetooth Speaker',1348.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(7,3,3,615.00,61.50,'[]',72,'MVMTH Classical Leather Watch In Black',1911.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(8,4,3,1157.00,115.70,'[]',50,'Xbox One Wireless Controller Black Color',2130.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(9,5,3,526.00,52.60,'[]',55,'Sound Intone I65 Earphone White Version',1638.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(10,5,1,562.00,56.20,'[]',62,'Samsung Gear VR Virtual Reality Headset',576.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(11,6,3,961.00,96.10,'[]',68,'NYX Beauty Couton Pallete Makeup 12',2088.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(12,7,3,1157.00,115.70,'[]',50,'Xbox One Wireless Controller Black Color',2130.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(13,7,2,1268.00,126.80,'[]',77,'Ciate Palemore Lipstick Bold Red Color',1214.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(14,8,2,478.00,47.80,'[]',76,'Baxter Care Hair Kit For Bearded Mens',1124.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(15,9,3,596.00,59.60,'[]',59,'Apple MacBook Air Retina 13.3-Inch Laptop',1935.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(16,10,2,961.00,96.10,'[]',69,'NYX Beauty Couton Pallete Makeup 12',1392.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(17,11,2,20.00,2.00,'[]',30,'Beat Headphone',1686.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(18,11,3,1157.00,115.70,'[]',50,'Xbox One Wireless Controller Black Color',2130.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(19,12,3,1203.00,120.30,'[]',42,'Smart Televisions',1950.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(20,13,2,20.00,2.00,'[]',29,'Beat Headphone',1686.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(21,14,2,526.00,52.60,'[]',54,'Sound Intone I65 Earphone White Version',1092.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(22,14,1,596.00,59.60,'[]',58,'Apple MacBook Air Retina 13.3-Inch Laptop',645.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(23,15,2,1231.00,123.10,'[]',67,'Aveeno Moisturizing Body Shower 450ml',1394.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(24,16,1,526.00,52.60,'[]',55,'Sound Intone I65 Earphone White Version',546.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(25,17,3,1231.00,123.10,'[]',65,'Aveeno Moisturizing Body Shower 450ml',2091.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(26,18,1,798.00,79.80,'[]',34,'Smart Watch External',807.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(27,19,2,479.00,47.90,'[]',36,'Nikon HD camera',1096.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(28,19,1,1157.00,115.70,'[]',50,'Xbox One Wireless Controller Black Color',710.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(29,20,1,20.00,2.00,'[]',29,'Beat Headphone',843.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(30,20,3,509.00,50.90,'[]',40,'Audio Equipment',2535.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(31,20,1,540.00,54.00,'[]',44,'Samsung Smart Phone',841.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(32,21,2,20.00,2.00,'[]',30,'Beat Headphone',1686.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(33,21,1,540.00,54.00,'[]',45,'Samsung Smart Phone',841.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(34,21,1,540.00,54.00,'[]',46,'Samsung Smart Phone',841.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(35,22,2,615.00,61.50,'[]',72,'MVMTH Classical Leather Watch In Black',1274.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(36,23,1,1140.00,114.00,'[]',47,'Herschel Leather Duffle Bag In Brown Color',798.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(37,24,1,547.00,54.70,'[]',60,'Apple MacBook Air Retina 12-Inch Laptop',729.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(38,25,1,571.00,57.10,'[]',31,'Red & Black Headphone',559.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(39,25,3,556.00,55.60,'[]',52,'EPSION Plaster Printer',2685.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(40,26,2,540.00,54.00,'[]',46,'Samsung Smart Phone',1682.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(41,27,2,798.00,79.80,'[]',35,'Smart Watch External',1614.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(42,28,3,556.00,55.60,'[]',53,'EPSION Plaster Printer',2685.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(43,28,1,1231.00,123.10,'[]',66,'Aveeno Moisturizing Body Shower 450ml',697.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(44,29,2,509.00,50.90,'[]',41,'Audio Equipment',1690.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(45,30,1,556.00,55.60,'[]',53,'EPSION Plaster Printer',895.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(46,31,2,798.00,79.80,'[]',35,'Smart Watch External',1614.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(47,32,3,935.00,93.50,'[]',71,'NYX Beauty Couton Pallete Makeup 12',1764.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(48,33,1,80.25,8.03,'[]',24,'Dual Camera 20MP',567.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(49,34,3,1231.00,123.10,'[]',64,'Aveeno Moisturizing Body Shower 450ml',2091.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(50,35,3,961.00,96.10,'[]',68,'NYX Beauty Couton Pallete Makeup 12',2088.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(51,36,1,1268.00,126.80,'[]',78,'Ciate Palemore Lipstick Bold Red Color',607.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(52,37,2,1157.00,115.70,'[]',49,'Xbox One Wireless Controller Black Color',1420.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(53,37,2,1268.00,126.80,'[]',79,'Ciate Palemore Lipstick Bold Red Color',1214.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(54,38,1,540.00,54.00,'[]',46,'Samsung Smart Phone',841.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(55,39,3,1231.00,123.10,'[]',64,'Aveeno Moisturizing Body Shower 450ml',2091.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(56,40,1,961.00,96.10,'[]',69,'NYX Beauty Couton Pallete Makeup 12',696.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(57,41,2,509.00,50.90,'[]',38,'Audio Equipment',1690.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(58,42,2,547.00,54.70,'[]',60,'Apple MacBook Air Retina 12-Inch Laptop',1458.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(59,43,1,1231.00,123.10,'[]',65,'Aveeno Moisturizing Body Shower 450ml',697.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(60,44,2,935.00,93.50,'[]',71,'NYX Beauty Couton Pallete Makeup 12',1176.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09');
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '1',
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,6,'1','default','pending',2222.80,155.80,0.00,NULL,NULL,0.00,2067.00,1,NULL,1,'znjnQBAucnx7520gYZFTZKdcmOqWd',1,'2022-07-30 20:10:08','2022-08-04 20:10:08',2),(2,6,'1','default','completed',2808.00,108.00,0.00,NULL,NULL,0.00,2700.00,1,NULL,1,'6coFtFXJzkYs4q74unzOHqeTk0uru',2,'2022-07-20 00:10:08','2022-08-04 20:10:08',2),(3,6,'1','default','pending',2998.50,113.50,0.00,NULL,NULL,0.00,2885.00,1,NULL,1,'fAax4z2T6SsXuV1ZDYRUaskSbVLkR',3,'2022-07-29 12:10:08','2022-08-04 20:10:08',3),(4,6,'1','default','completed',3586.70,115.70,0.00,NULL,NULL,0.00,3471.00,1,NULL,1,'6qOgUEyebQukCC9Wl0kFc83iAZNrH',4,'2022-07-22 08:10:08','2022-08-04 20:10:08',2),(5,6,'1','default','pending',2248.80,108.80,0.00,NULL,NULL,0.00,2140.00,1,NULL,1,'MIMINYpFdkg5ViftZYVUI779xgra7',5,'2022-07-20 20:10:08','2022-08-04 20:10:08',3),(6,6,'1','default','pending',2979.10,96.10,0.00,NULL,NULL,0.00,2883.00,1,NULL,1,'LkkgMgtp1IKHUcPenWEJKSB7iVN80',6,'2022-07-23 20:10:08','2022-08-04 20:10:08',1),(7,6,'1','default','pending',6249.50,242.50,0.00,NULL,NULL,0.00,6007.00,1,NULL,1,'dsax1tKIIGE1aUGHKZkKHoVZH7RHV',7,'2022-07-28 18:10:08','2022-08-04 20:10:08',2),(8,6,'1','default','completed',1003.80,47.80,0.00,NULL,NULL,0.00,956.00,1,NULL,1,'wjlAQkyUjdIHivF5zLLsyif4xC4DK',8,'2022-07-27 08:10:08','2022-08-04 20:10:08',4),(9,4,'1','default','completed',1847.60,59.60,0.00,NULL,NULL,0.00,1788.00,1,NULL,1,'5GXRh2zxm28U4HOXayYsJ5ngcEfgU',9,'2022-07-26 12:10:08','2022-08-04 20:10:08',3),(10,4,'1','default','completed',2018.10,96.10,0.00,NULL,NULL,0.00,1922.00,1,NULL,1,'ekFsrlwpCS8qdsxvnaVD6Wab4CJKX',10,'2022-08-02 04:10:08','2022-08-04 20:10:08',1),(11,9,'1','default','pending',3628.70,117.70,0.00,NULL,NULL,0.00,3511.00,1,NULL,1,'Y9GLbWTmFXFHeqBqZ69ABIW6IxNlg',11,'2022-07-23 08:10:08','2022-08-04 20:10:08',2),(12,9,'1','default','completed',3729.30,120.30,0.00,NULL,NULL,0.00,3609.00,1,NULL,1,'bp1Ypceem57oM2G3xJF4c1N1R2fMO',12,'2022-07-30 20:10:08','2022-08-04 20:10:08',1),(13,9,'1','default','completed',42.00,2.00,0.00,NULL,NULL,0.00,40.00,1,NULL,1,'hw5VoJ6KGhVu50mL4YrTOPVxJeIVV',13,'2022-08-01 08:10:08','2022-08-04 20:10:08',2),(14,9,'1','default','completed',1760.20,112.20,0.00,NULL,NULL,0.00,1648.00,1,NULL,1,'4HBOFMOkYytuaLCvqwPWNryX6p8cN',14,'2022-07-28 20:10:08','2022-08-04 20:10:08',3),(15,9,'1','default','completed',2585.10,123.10,0.00,NULL,NULL,0.00,2462.00,1,NULL,1,'gsMeVXFFg9MfuAEzizguW1LBfiz9Y',15,'2022-07-25 08:10:08','2022-08-04 20:10:08',4),(16,3,'1','default','pending',578.60,52.60,0.00,NULL,NULL,0.00,526.00,1,NULL,1,'umFlCJKFF9pvjvbxB25ufsD70K0cG',16,'2022-07-31 12:10:08','2022-08-04 20:10:08',3),(17,3,'1','default','completed',3816.10,123.10,0.00,NULL,NULL,0.00,3693.00,1,NULL,1,'8nDe63jEPSwBYp52COEicYYYNrrZU',17,'2022-08-02 16:10:08','2022-08-04 20:10:08',4),(18,1,'1','default','completed',877.80,79.80,0.00,NULL,NULL,0.00,798.00,1,NULL,1,'n9w0KD1bKLmOi4yIZ4KlYMv8Iuen0',18,'2022-07-31 20:10:08','2022-08-04 20:10:08',3),(19,1,'1','default','pending',2278.60,163.60,0.00,NULL,NULL,0.00,2115.00,1,NULL,1,'6NAOHS6r7OwFX5n4JIZsTzOoG1Qft',19,'2022-07-29 20:10:08','2022-08-04 20:10:08',2),(20,9,'1','default','completed',2193.90,106.90,0.00,NULL,NULL,0.00,2087.00,1,NULL,1,'0hsXLW1JuT4MgJnPb5GiV0qAtB2Lq',20,'2022-07-26 16:10:08','2022-08-04 20:10:08',2),(21,3,'1','default','completed',1230.00,110.00,0.00,NULL,NULL,0.00,1120.00,1,NULL,1,'v9rNJDKcbYEzX7bKaURdCKnhEpMkz',21,'2022-08-02 08:10:08','2022-08-04 20:10:08',2),(22,3,'1','default','completed',1291.50,61.50,0.00,NULL,NULL,0.00,1230.00,1,NULL,1,'ZzH8IMUZGv5LjqUQBC0YGYbHTjDNJ',22,'2022-08-01 12:10:08','2022-08-04 20:10:08',3),(23,4,'1','default','pending',1254.00,114.00,0.00,NULL,NULL,0.00,1140.00,1,NULL,1,'pMbM8Y5b5S4ns0yYW4ogxjBXwsH56',23,'2022-08-02 14:10:08','2022-08-04 20:10:08',4),(24,4,'1','default','completed',601.70,54.70,0.00,NULL,NULL,0.00,547.00,1,NULL,1,'B6xtI9LQLeeeoayhLdf6BGfUKang6',24,'2022-08-01 02:10:08','2022-08-04 20:10:08',3),(25,3,'1','default','completed',2351.70,112.70,0.00,NULL,NULL,0.00,2239.00,1,NULL,1,'UWehk4DUZUw7YIlPtGsSEKI6kSMKe',25,'2022-08-02 20:10:08','2022-08-04 20:10:08',4),(26,3,'1','default','completed',1134.00,54.00,0.00,NULL,NULL,0.00,1080.00,1,NULL,1,'1JPFdPkMsa3Krp4YjnwVCsYTGrPOT',26,'2022-08-02 04:10:08','2022-08-04 20:10:08',2),(27,4,'1','default','pending',1675.80,79.80,0.00,NULL,NULL,0.00,1596.00,1,NULL,1,'WR6ZxuYtg5xkKMNoRKn2LytfEyCNd',27,'2022-08-01 08:10:09','2022-08-04 20:10:09',3),(28,4,'1','default','completed',3077.70,178.70,0.00,NULL,NULL,0.00,2899.00,1,NULL,1,'iCYRjqG5ojrkVNiNYWCO4ekWBnPIF',28,'2022-08-03 02:10:09','2022-08-04 20:10:09',4),(29,4,'1','default','pending',1068.90,50.90,0.00,NULL,NULL,0.00,1018.00,1,NULL,1,'xFoxk3gbizho77Ouf71O4brYnePg0',29,'2022-08-01 08:10:09','2022-08-04 20:10:09',2),(30,4,'1','default','completed',611.60,55.60,0.00,NULL,NULL,0.00,556.00,1,NULL,1,'1Iarrn3vRdbrsaxUuUQnGUXYoiffu',30,'2022-08-04 08:10:09','2022-08-04 20:10:09',4),(31,1,'1','default','pending',1675.80,79.80,0.00,NULL,NULL,0.00,1596.00,1,NULL,1,'z0oEF7k51hmW52Sq4V0UfA86Ejufr',31,'2022-08-03 04:10:09','2022-08-04 20:10:09',3),(32,1,'1','default','completed',2898.50,93.50,0.00,NULL,NULL,0.00,2805.00,1,NULL,1,'QbZBrzLBFG2nWXH1WGKf0Y9YPoavF',32,'2022-08-02 18:10:09','2022-08-04 20:10:09',1),(33,9,'1','default','completed',88.28,8.03,0.00,NULL,NULL,0.00,80.25,1,NULL,1,'dj1nnN5WmqTLg8fFRfUUGEwcn7ASK',33,'2022-08-02 20:10:09','2022-08-04 20:10:09',3),(34,9,'1','default','pending',3816.10,123.10,0.00,NULL,NULL,0.00,3693.00,1,NULL,1,'iVthhIjJj4Gw7cjStLecVjrmnwInv',34,'2022-08-01 12:10:09','2022-08-04 20:10:09',4),(35,9,'1','default','pending',2979.10,96.10,0.00,NULL,NULL,0.00,2883.00,1,NULL,1,'2rmIAeVyKYFKuPJnO0q2ZvMkcVsjF',35,'2022-08-04 04:10:09','2022-08-04 20:10:09',1),(36,9,'1','default','pending',1394.80,126.80,0.00,NULL,NULL,0.00,1268.00,1,NULL,1,'oqTZLkVqO1SkIckPrS1aaRVz8Wd44',36,'2022-08-02 04:10:09','2022-08-04 20:10:09',2),(37,3,'1','default','pending',5092.50,242.50,0.00,NULL,NULL,0.00,4850.00,1,NULL,1,'eKjzcE97LfNZJ7UGykue1kHjL4Ye2',37,'2022-08-03 02:10:09','2022-08-04 20:10:09',2),(38,8,'1','default','completed',594.00,54.00,0.00,NULL,NULL,0.00,540.00,1,NULL,1,'LpSVoK3ZfEdRdxbxSoxfYAquuPUK2',38,'2022-08-04 08:10:09','2022-08-04 20:10:09',2),(39,8,'1','default','completed',3816.10,123.10,0.00,NULL,NULL,0.00,3693.00,1,NULL,1,'rUwaat2Ogy5KovpUsbwGT1sumxJRo',39,'2022-08-03 16:10:09','2022-08-04 20:10:09',4),(40,8,'1','default','completed',1057.10,96.10,0.00,NULL,NULL,0.00,961.00,1,NULL,1,'HaHFJXQL8OuYMGQjlUeozeq1dy9vp',40,'2022-08-03 08:10:09','2022-08-04 20:10:09',1),(41,1,'1','default','completed',1068.90,50.90,0.00,NULL,NULL,0.00,1018.00,1,NULL,1,'quHVuJdY4yhL4FzH3Fuu4jtigaALe',41,'2022-08-04 12:10:09','2022-08-04 20:10:09',2),(42,1,'1','default','pending',1148.70,54.70,0.00,NULL,NULL,0.00,1094.00,1,NULL,1,'UMrNYNMcxXjWdsXgWcE2vgYx96h3P',42,'2022-08-04 14:10:09','2022-08-04 20:10:09',3),(43,1,'1','default','completed',1354.10,123.10,0.00,NULL,NULL,0.00,1231.00,1,NULL,1,'AnXkFm3rSjCT3Sg10rpGOSaZCOAs6',43,'2022-08-04 18:10:09','2022-08-04 20:10:09',4),(44,1,'1','default','completed',1963.50,93.50,0.00,NULL,NULL,0.00,1870.00,1,NULL,1,'pYq80FgB3iJHQgkH0BHMZ0dZ0F3rb',44,'2022-08-04 04:10:09','2022-08-04 20:10:09',1);
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2022-08-04 20:09:48','2022-08-04 20:09:48',0),(2,'Size','size','text',1,1,1,'published',1,'2022-08-04 20:09:48','2022-08-04 20:09:48',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(6,2,'S','s',NULL,NULL,1,1,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(7,2,'M','m',NULL,NULL,0,2,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(8,2,'L','l',NULL,NULL,0,3,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2022-08-04 20:09:48','2022-08-04 20:09:48'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2022-08-04 20:09:49','2022-08-04 20:09:49');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Hot Promotions',0,NULL,'published',0,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(2,'Electronics',0,NULL,'published',1,'product-categories/1.jpg',1,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(3,'Consumer Electronic',2,NULL,'published',0,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(4,'Home Audio & Theaters',3,NULL,'published',0,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(5,'TV & Videos',3,NULL,'published',1,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(6,'Camera, Photos & Videos',3,NULL,'published',2,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(7,'Cellphones & Accessories',3,NULL,'published',3,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(8,'Headphones',3,NULL,'published',4,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(9,'Videos games',3,NULL,'published',5,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(10,'Wireless Speakers',3,NULL,'published',6,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(11,'Office Electronic',3,NULL,'published',7,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(12,'Accessories & Parts',2,NULL,'published',1,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(13,'Digital Cables',12,NULL,'published',0,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(14,'Audio & Video Cables',12,NULL,'published',1,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(15,'Batteries',12,NULL,'published',2,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(16,'Clothing',0,NULL,'published',2,'product-categories/2.jpg',1,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(17,'Computers',0,NULL,'published',3,'product-categories/3.jpg',1,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(18,'Computer & Technologies',17,NULL,'published',0,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(19,'Computer & Tablets',18,NULL,'published',0,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(20,'Laptop',18,NULL,'published',1,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(21,'Monitors',18,NULL,'published',2,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(22,'Computer Components',18,NULL,'published',3,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(23,'Networking',17,NULL,'published',1,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(24,'Drive & Storages',23,NULL,'published',0,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(25,'Gaming Laptop',23,NULL,'published',1,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(26,'Security & Protection',23,NULL,'published',2,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(27,'Accessories',23,NULL,'published',3,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(28,'Home & Kitchen',0,NULL,'published',4,'product-categories/4.jpg',1,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(29,'Health & Beauty',0,NULL,'published',5,'product-categories/5.jpg',1,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(30,'Jewelry & Watch',0,NULL,'published',6,'product-categories/6.jpg',1,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(31,'Technology Toys',0,NULL,'published',7,'product-categories/7.jpg',1,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(32,'Phones',0,NULL,'published',8,'product-categories/8.jpg',1,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(33,'Babies & Moms',0,NULL,'published',9,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(34,'Sport & Outdoor',0,NULL,'published',10,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(35,'Books & Office',0,NULL,'published',11,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(36,'Cars & Motorcycles',0,NULL,'published',12,NULL,0,'2022-08-04 20:09:29','2022-08-04 20:09:29'),(37,'Home Improvements',0,NULL,'published',13,NULL,0,'2022-08-04 20:09:30','2022-08-04 20:09:30');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Khuyến mãi hấp dẫn',NULL),('vi',2,'Điện tử',NULL),('vi',3,'Điện tử tiêu dùng',NULL),('vi',4,'Thiết bị nghe nhìn',NULL),('vi',5,'TV & Videos',NULL),('vi',6,'Camera, Photos & Videos',NULL),('vi',7,'Điện thoại di động & Phụ kiện',NULL),('vi',8,'Tai nghe',NULL),('vi',9,'Trò chơi video',NULL),('vi',10,'Loa không dây',NULL),('vi',11,'Điện tử văn phòng',NULL),('vi',12,'Phụ kiện & Phụ tùng',NULL),('vi',13,'Digital Cables',NULL),('vi',14,'Audio & Video Cables',NULL),('vi',15,'Pin',NULL),('vi',16,'Quần áo',NULL),('vi',17,'Máy tính',NULL),('vi',18,'Máy tính & Công nghệ',NULL),('vi',19,'Máy tính & Máy tính bảng',NULL),('vi',20,'Máy tính xách tay',NULL),('vi',21,'Màn hình',NULL),('vi',22,'Linh kiện Máy tính',NULL),('vi',23,'Mạng máy tính',NULL),('vi',24,'Thiết bị lưu trữ',NULL),('vi',25,'Máy tính xách tay chơi game',NULL),('vi',26,'Thiết bị bảo mật',NULL),('vi',27,'Phụ kiện',NULL),('vi',28,'Đồ dùng làm bếp',NULL),('vi',29,'Sức khỏe & làm đẹp',NULL),('vi',30,'Trang sức & Đồng hồ',NULL),('vi',31,'Đồ chơi công nghệ',NULL),('vi',32,'Điện thoại',NULL),('vi',33,'Mẹ và bé',NULL),('vi',34,'Thể thao & ngoài trời',NULL),('vi',35,'Sách & Văn phòng',NULL),('vi',36,'Ô tô & Xe máy',NULL),('vi',37,'Cải tiến nhà cửa',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,26,1),(2,23,1),(3,27,1),(4,9,2),(5,3,2),(6,5,2),(7,37,2),(8,2,3),(9,22,3),(10,14,3),(11,24,3),(12,25,4),(13,27,4),(14,32,4),(15,22,4),(16,37,5),(17,11,5),(18,26,5),(19,31,5),(20,31,6),(21,2,6),(22,1,6),(23,5,7),(24,11,7),(25,25,7),(26,23,7),(27,13,8),(28,14,8),(29,16,8),(30,32,8),(31,29,9),(32,3,9),(33,28,9),(34,32,9),(35,27,10),(36,36,10),(37,26,10),(38,30,10),(39,32,11),(40,36,11),(41,19,11),(42,2,12),(43,17,12),(44,9,12),(45,15,12),(46,8,13),(47,6,13),(48,2,13),(49,27,13),(50,18,14),(51,11,14),(52,1,14),(53,20,14),(54,17,15),(55,21,15),(56,18,15),(57,8,16),(58,2,16),(59,7,16),(60,34,16),(61,29,17),(62,6,17),(63,8,17),(64,24,17),(65,2,18),(66,11,18),(67,12,18),(68,26,18),(69,10,19),(70,31,19),(71,6,19),(72,34,19),(73,35,20),(74,6,20),(75,25,20),(76,28,20),(77,18,21),(78,7,21),(79,1,21),(80,37,21),(81,24,22),(82,16,22),(83,7,22),(84,27,22),(85,4,23),(86,35,23),(87,34,23);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_collection_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,2,1),(2,1,2),(3,2,3),(4,1,4),(5,2,5),(6,1,6),(7,1,7),(8,2,8),(9,1,9),(10,3,10),(11,1,11),(12,2,12),(13,3,13),(14,1,14),(15,2,15),(16,3,16),(17,2,17),(18,1,18),(19,2,19),(20,3,20),(21,2,21),(22,2,22),(23,2,23);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2022-08-04 20:09:30','2022-08-04 20:09:30',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2022-08-04 20:09:30','2022-08-04 20:09:30',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2022-08-04 20:09:30','2022-08-04 20:09:30',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,1,11),(2,1,8),(3,1,14),(4,1,18),(5,2,15),(6,2,5),(7,2,17),(8,2,19),(9,2,20),(10,2,12),(11,2,1),(12,3,8),(13,3,2),(14,3,1),(15,3,15),(16,3,7),(17,3,13),(18,3,14),(19,4,15),(20,4,20),(21,4,16),(22,4,8),(23,4,9),(24,4,13),(25,5,16),(26,5,13),(27,5,19),(28,5,6),(29,5,11),(30,6,4),(31,6,12),(32,6,20),(33,6,3),(34,6,15),(35,7,16),(36,7,11),(37,7,13),(38,7,15),(39,7,8),(40,7,17),(41,7,5),(42,8,6),(43,8,11),(44,8,14),(45,8,13),(46,8,17),(47,8,15),(48,9,18),(49,9,10),(50,9,16),(51,9,19),(52,9,5),(53,9,8),(54,10,20),(55,10,17),(56,10,6),(57,10,5),(58,10,4),(59,10,15),(60,11,6),(61,11,18),(62,11,19),(63,11,4),(64,11,2),(65,11,8),(66,12,6),(67,12,16),(68,12,8),(69,12,18),(70,12,20),(71,12,19),(72,13,14),(73,13,5),(74,13,20),(75,13,18),(76,13,9),(77,13,16),(78,14,1),(79,14,17),(80,14,2),(81,14,9),(82,14,7),(83,15,5),(84,15,9),(85,15,13),(86,15,2),(87,15,12),(88,15,6),(89,15,17),(90,16,13),(91,16,9),(92,16,12),(93,16,18),(94,16,11),(95,17,14),(96,17,20),(97,17,11),(98,17,8),(99,17,13),(100,17,15),(101,18,20),(102,18,9),(103,18,12),(104,18,10),(105,18,6),(106,18,8),(107,18,13),(108,19,2),(109,19,5),(110,19,7),(111,19,10),(112,19,15),(113,19,4),(114,20,10),(115,20,5),(116,20,2),(117,20,9),(118,20,13),(119,21,18),(120,21,16),(121,21,17),(122,21,19),(123,21,10),(124,21,8),(125,22,8),(126,22,16),(127,22,14),(128,22,10),(129,22,19),(130,22,9),(131,22,18),(132,23,19),(133,23,6),(134,23,14),(135,23,2),(136,23,18),(137,23,17);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,9),(1,21),(2,15),(2,18),(3,12);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2022-08-04 20:09:31','2022-08-04 20:09:31'),(2,'New','#00c9a7','published','2022-08-04 20:09:31','2022-08-04 20:09:31'),(3,'Sale','#fe9931','published','2022-08-04 20:09:31','2022-08-04 20:09:31');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` int unsigned NOT NULL,
  `tag_id` int unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,5),(1,6),(2,2),(2,4),(3,1),(3,6),(4,1),(4,5),(4,6),(5,2),(5,3),(6,4),(6,6),(7,2),(7,5),(8,2),(8,5),(9,2),(9,6),(10,4),(10,5),(10,6),(11,1),(11,2),(11,6),(12,1),(12,5),(12,6),(13,1),(13,4),(13,5),(14,3),(14,6),(15,2),(15,6),(16,1),(16,3),(17,1),(17,2),(17,3),(18,2),(18,3),(18,4),(19,1),(19,2),(19,3),(20,3),(20,5),(20,6),(21,1),(21,2),(21,3),(22,1),(22,6),(23,1),(23,2),(23,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2022-08-04 20:09:52','2022-08-04 20:09:52'),(2,'Mobile',NULL,'published','2022-08-04 20:09:52','2022-08-04 20:09:52'),(3,'Iphone',NULL,'published','2022-08-04 20:09:52','2022-08-04 20:09:52'),(4,'Printer',NULL,'published','2022-08-04 20:09:52','2022-08-04 20:09:52'),(5,'Office',NULL,'published','2022-08-04 20:09:52','2022-08-04 20:09:52'),(6,'IT',NULL,'published','2022-08-04 20:09:52','2022-08-04 20:09:52');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
INSERT INTO `ec_product_tags_translations` VALUES ('vi',1,'Electronic'),('vi',2,'Mobile'),('vi',3,'Iphone'),('vi',4,'Printer'),('vi',5,'Office'),('vi',6,'IT');
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `from_product_id` int unsigned NOT NULL,
  `to_product_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int unsigned NOT NULL,
  `variation_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (5,1,3),(31,1,16),(41,1,21),(53,1,27),(71,1,36),(77,1,39),(81,1,41),(85,1,43),(87,1,44),(3,2,2),(9,2,5),(15,2,8),(33,2,17),(55,2,28),(67,2,34),(69,2,35),(75,2,38),(91,2,46),(93,2,47),(99,2,50),(101,2,51),(103,2,52),(1,3,1),(17,3,9),(19,3,10),(21,3,11),(23,3,12),(25,3,13),(37,3,19),(45,3,23),(51,3,26),(57,3,29),(65,3,33),(83,3,42),(89,3,45),(7,4,4),(29,4,15),(35,4,18),(47,4,24),(49,4,25),(61,4,31),(73,4,37),(95,4,48),(11,5,6),(13,5,7),(27,5,14),(39,5,20),(43,5,22),(59,5,30),(63,5,32),(79,5,40),(97,5,49),(105,5,53),(107,5,54),(109,5,55),(111,5,56),(10,6,5),(24,6,12),(26,6,13),(32,6,16),(42,6,21),(54,6,27),(76,6,38),(80,6,40),(104,6,52),(108,6,54),(8,7,4),(16,7,8),(20,7,10),(30,7,15),(38,7,19),(60,7,30),(64,7,32),(66,7,33),(68,7,34),(84,7,42),(94,7,47),(96,7,48),(102,7,51),(12,8,6),(58,8,29),(70,8,35),(78,8,39),(86,8,43),(88,8,44),(100,8,50),(6,9,3),(18,9,9),(22,9,11),(36,9,18),(40,9,20),(46,9,23),(50,9,25),(52,9,26),(56,9,28),(62,9,31),(72,9,36),(74,9,37),(92,9,46),(110,9,55),(2,10,1),(4,10,2),(14,10,7),(28,10,14),(34,10,17),(44,10,22),(48,10,24),(82,10,41),(90,10,45),(98,10,49),(106,10,53),(112,10,56);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int unsigned DEFAULT NULL,
  `configurable_product_id` int unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,24,1,1),(2,25,2,1),(3,26,2,0),(4,27,2,0),(5,28,3,1),(6,29,3,0),(7,30,3,0),(8,31,4,1),(9,32,4,0),(10,33,5,1),(11,34,5,0),(12,35,5,0),(13,36,6,1),(14,37,6,0),(15,38,7,1),(16,39,7,0),(17,40,7,0),(18,41,7,0),(19,42,8,1),(20,43,9,1),(21,44,9,0),(22,45,9,0),(23,46,9,0),(24,47,10,1),(25,48,10,0),(26,49,11,1),(27,50,11,0),(28,51,11,0),(29,52,12,1),(30,53,12,0),(31,54,13,1),(32,55,13,0),(33,56,14,1),(34,57,15,1),(35,58,15,0),(36,59,15,0),(37,60,16,1),(38,61,17,1),(39,62,17,0),(40,63,17,0),(41,64,18,1),(42,65,18,0),(43,66,18,0),(44,67,18,0),(45,68,19,1),(46,69,19,0),(47,70,19,0),(48,71,20,1),(49,72,21,1),(50,73,21,0),(51,74,21,0),(52,75,22,1),(53,76,22,0),(54,77,23,1),(55,78,23,0),(56,79,23,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,1,0),(2,2,1,0),(3,1,2,0),(4,2,2,0),(5,1,3,0),(6,2,3,0),(7,1,4,0),(8,2,4,0),(9,1,5,0),(10,2,5,0),(11,1,6,0),(12,2,6,0),(13,1,7,0),(14,2,7,0),(15,1,8,0),(16,2,8,0),(17,1,9,0),(18,2,9,0),(19,1,10,0),(20,2,10,0),(21,1,11,0),(22,2,11,0),(23,1,12,0),(24,2,12,0),(25,1,13,0),(26,2,13,0),(27,1,14,0),(28,2,14,0),(29,1,15,0),(30,2,15,0),(31,1,16,0),(32,2,16,0),(33,1,17,0),(34,2,17,0),(35,1,18,0),(36,2,18,0),(37,1,19,0),(38,2,19,0),(39,1,20,0),(40,2,20,0),(41,1,21,0),(42,2,21,0),(43,1,22,0),(44,2,22,0),(45,1,23,0),(46,2,23,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` int unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` int unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `store_id` int unsigned DEFAULT NULL,
  `created_by_id` int DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` int DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Dual Camera 20MP','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\"]','SW-184-A0',0,18,0,1,1,6,0,0,80.25,NULL,NULL,NULL,19.00,13.00,13.00,567.00,1,192008,'2022-08-04 20:09:45','2022-08-04 20:10:07','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(2,'Smart Watches','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','SW-143-A0',0,15,0,1,1,1,0,0,40.5,NULL,NULL,NULL,16.00,15.00,14.00,755.00,1,94853,'2022-08-04 20:09:45','2022-08-04 20:10:07','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(3,'Beat Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\"]','SW-121-A0',0,10,0,1,1,4,0,0,20,NULL,NULL,NULL,14.00,10.00,20.00,843.00,1,70373,'2022-08-04 20:09:45','2022-08-04 20:10:07','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(4,'Red & Black Headphone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','SW-146-A0',0,19,0,1,1,4,0,0,571,508.19,NULL,NULL,18.00,16.00,15.00,559.00,1,121755,'2022-08-04 20:09:45','2022-08-04 20:10:07','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(5,'Smart Watch External','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','SW-142-A0',0,13,0,1,1,4,0,0,798,NULL,NULL,NULL,17.00,12.00,11.00,807.00,1,90489,'2022-08-04 20:09:45','2022-08-04 20:10:07','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(6,'Nikon HD camera','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\"]','SW-151-A0',0,10,0,1,1,3,0,0,479,NULL,NULL,NULL,12.00,13.00,14.00,548.00,1,194452,'2022-08-04 20:09:45','2022-08-04 20:10:07','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(7,'Audio Equipment','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\"]','SW-149-A0',0,19,0,1,1,5,0,0,509,NULL,NULL,NULL,14.00,18.00,12.00,845.00,1,144334,'2022-08-04 20:09:45','2022-08-04 20:10:07','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(8,'Smart Televisions','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\",\"products\\/8-2.jpg\",\"products\\/8-3.jpg\"]','SW-176-A0',0,16,0,1,1,3,0,0,1203,914.28,NULL,NULL,13.00,15.00,11.00,650.00,1,90098,'2022-08-04 20:09:45','2022-08-04 20:10:07','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(9,'Samsung Smart Phone','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\",\"products\\/9-2.jpg\"]','SW-127-A0',0,11,0,1,1,1,0,0,540,NULL,NULL,NULL,19.00,15.00,19.00,841.00,1,143940,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(10,'Herschel Leather Duffle Bag In Brown Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\",\"products\\/10-2.jpg\"]','SW-120-A0',0,14,0,1,0,4,0,0,1140,NULL,NULL,NULL,10.00,17.00,15.00,798.00,1,87736,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(11,'Xbox One Wireless Controller Black Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\",\"products\\/11-2.jpg\",\"products\\/11-3.jpg\"]','SW-108-A0',0,12,0,1,0,4,0,0,1157,NULL,NULL,NULL,15.00,11.00,19.00,710.00,1,107615,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(12,'EPSION Plaster Printer','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\",\"products\\/12-2.jpg\",\"products\\/12-3.jpg\"]','SW-129-A0',0,18,0,1,0,4,0,0,556,500.4,NULL,NULL,11.00,18.00,17.00,895.00,1,140424,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(13,'Sound Intone I65 Earphone White Version','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','SW-166-A0',0,17,0,1,0,7,0,0,526,NULL,NULL,NULL,13.00,16.00,16.00,546.00,1,39520,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(14,'B&O Play Mini Bluetooth Speaker','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\"]','SW-113-A0',0,14,0,1,0,7,0,0,520,NULL,NULL,NULL,10.00,12.00,14.00,674.00,1,19463,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(15,'Apple MacBook Air Retina 13.3-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','SW-119-A0',0,11,0,1,0,2,0,0,596,NULL,NULL,NULL,20.00,17.00,12.00,645.00,1,8348,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(16,'Apple MacBook Air Retina 12-Inch Laptop','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','SW-124-A0',0,16,0,1,0,1,0,0,547,486.83,NULL,NULL,16.00,19.00,15.00,729.00,1,74325,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(17,'Samsung Gear VR Virtual Reality Headset','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\",\"products\\/17-1.jpg\",\"products\\/17-2.jpg\",\"products\\/17-3.jpg\"]','SW-173-A0',0,12,0,1,0,6,0,0,562,NULL,NULL,NULL,17.00,20.00,10.00,576.00,1,97307,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(18,'Aveeno Moisturizing Body Shower 450ml','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\",\"products\\/18-3.jpg\"]','SW-175-A0',0,11,0,1,0,4,0,0,1231,NULL,NULL,NULL,18.00,12.00,19.00,697.00,1,141538,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(19,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\",\"products\\/19-2.jpg\",\"products\\/19-3.jpg\"]','SW-110-A0',0,19,0,1,0,6,0,0,961,NULL,NULL,NULL,15.00,14.00,20.00,696.00,1,173838,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(20,'NYX Beauty Couton Pallete Makeup 12','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\",\"products\\/20-2.jpg\",\"products\\/20-3.jpg\"]','SW-195-A0',0,10,0,1,0,2,0,0,935,794.75,NULL,NULL,10.00,13.00,18.00,588.00,1,47419,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',1,0,'Botble\\ACL\\Models\\User',0,NULL),(21,'MVMTH Classical Leather Watch In Black','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\",\"products\\/21-2.jpg\"]','SW-135-A0',0,10,0,1,0,4,0,0,615,NULL,NULL,NULL,17.00,19.00,11.00,637.00,1,108898,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',3,0,'Botble\\ACL\\Models\\User',0,NULL),(22,'Baxter Care Hair Kit For Bearded Mens','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\",\"products\\/22-2.jpg\",\"products\\/22-3.jpg\"]','SW-164-A0',0,10,0,1,0,1,0,0,478,NULL,NULL,NULL,17.00,12.00,16.00,562.00,1,105798,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',4,0,'Botble\\ACL\\Models\\User',0,NULL),(23,'Ciate Palemore Lipstick Bold Red Color','<ul><li> Unrestrained and portable active stereo speaker</li>\n            <li> Free from the confines of wires and chords</li>\n            <li> 20 hours of portable capabilities</li>\n            <li> Double-ended Coil Cord with 3.5mm Stereo Plugs Included</li>\n            <li> 3/4″ Dome Tweeters: 2X and 4″ Woofer: 1X</li></ul>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains&rsquo; signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\",\"products\\/23-2.jpg\",\"products\\/23-3.jpg\"]','SW-132-A0',0,10,0,1,0,6,0,0,1268,NULL,NULL,NULL,15.00,17.00,17.00,607.00,1,142900,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',2,0,'Botble\\ACL\\Models\\User',0,NULL),(24,'Dual Camera 20MP',NULL,NULL,'published','[\"products\\/1.jpg\"]','SW-184-A0',0,18,0,1,0,6,1,0,80.25,NULL,NULL,NULL,19.00,13.00,13.00,567.00,NULL,0,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(25,'Smart Watches',NULL,NULL,'published','[\"products\\/2.jpg\"]','SW-143-A0',0,15,0,1,0,1,1,0,40.5,NULL,NULL,NULL,16.00,15.00,14.00,755.00,NULL,0,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(26,'Smart Watches',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','SW-143-A0-A1',0,15,0,1,0,1,1,0,40.5,NULL,NULL,NULL,16.00,15.00,14.00,755.00,NULL,0,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(27,'Smart Watches',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','SW-143-A0-A2',0,15,0,1,0,1,1,0,40.5,NULL,NULL,NULL,16.00,15.00,14.00,755.00,NULL,0,'2022-08-04 20:09:46','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(28,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-121-A0',0,10,0,1,0,4,1,0,20,NULL,NULL,NULL,14.00,10.00,20.00,843.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(29,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-121-A0-A1',0,10,0,1,0,4,1,0,20,NULL,NULL,NULL,14.00,10.00,20.00,843.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(30,'Beat Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','SW-121-A0-A2',0,10,0,1,0,4,1,0,20,NULL,NULL,NULL,14.00,10.00,20.00,843.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(31,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4.jpg\"]','SW-146-A0',0,19,0,1,0,4,1,0,571,508.19,NULL,NULL,18.00,16.00,15.00,559.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(32,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','SW-146-A0-A1',0,19,0,1,0,4,1,0,571,479.64,NULL,NULL,18.00,16.00,15.00,559.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(33,'Smart Watch External',NULL,NULL,'published','[\"products\\/5.jpg\"]','SW-142-A0',0,13,0,1,0,4,1,0,798,NULL,NULL,NULL,17.00,12.00,11.00,807.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(34,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','SW-142-A0-A1',0,13,0,1,0,4,1,0,798,NULL,NULL,NULL,17.00,12.00,11.00,807.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(35,'Smart Watch External',NULL,NULL,'published','[\"products\\/5-2.jpg\"]','SW-142-A0-A2',0,13,0,1,0,4,1,0,798,NULL,NULL,NULL,17.00,12.00,11.00,807.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(36,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-151-A0',0,10,0,1,0,3,1,0,479,NULL,NULL,NULL,12.00,13.00,14.00,548.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(37,'Nikon HD camera',NULL,NULL,'published','[\"products\\/6.jpg\"]','SW-151-A0-A1',0,10,0,1,0,3,1,0,479,NULL,NULL,NULL,12.00,13.00,14.00,548.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(38,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-149-A0',0,19,0,1,0,5,1,0,509,NULL,NULL,NULL,14.00,18.00,12.00,845.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(39,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-149-A0-A1',0,19,0,1,0,5,1,0,509,NULL,NULL,NULL,14.00,18.00,12.00,845.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(40,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-149-A0-A2',0,19,0,1,0,5,1,0,509,NULL,NULL,NULL,14.00,18.00,12.00,845.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(41,'Audio Equipment',NULL,NULL,'published','[\"products\\/7.jpg\"]','SW-149-A0-A3',0,19,0,1,0,5,1,0,509,NULL,NULL,NULL,14.00,18.00,12.00,845.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(42,'Smart Televisions',NULL,NULL,'published','[\"products\\/8.jpg\"]','SW-176-A0',0,16,0,1,0,3,1,0,1203,914.28,NULL,NULL,13.00,15.00,11.00,650.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(43,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-127-A0',0,11,0,1,0,1,1,0,540,NULL,NULL,NULL,19.00,15.00,19.00,841.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(44,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','SW-127-A0-A1',0,11,0,1,0,1,1,0,540,NULL,NULL,NULL,19.00,15.00,19.00,841.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(45,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9-2.jpg\"]','SW-127-A0-A2',0,11,0,1,0,1,1,0,540,NULL,NULL,NULL,19.00,15.00,19.00,841.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(46,'Samsung Smart Phone',NULL,NULL,'published','[\"products\\/9.jpg\"]','SW-127-A0-A3',0,11,0,1,0,1,1,0,540,NULL,NULL,NULL,19.00,15.00,19.00,841.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(47,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10.jpg\"]','SW-120-A0',0,14,0,1,0,4,1,0,1140,NULL,NULL,NULL,10.00,17.00,15.00,798.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(48,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','SW-120-A0-A1',0,14,0,1,0,4,1,0,1140,NULL,NULL,NULL,10.00,17.00,15.00,798.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(49,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11.jpg\"]','SW-108-A0',0,12,0,1,0,4,1,0,1157,NULL,NULL,NULL,15.00,11.00,19.00,710.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(50,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','SW-108-A0-A1',0,12,0,1,0,4,1,0,1157,NULL,NULL,NULL,15.00,11.00,19.00,710.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(51,'Xbox One Wireless Controller Black Color',NULL,NULL,'published','[\"products\\/11-2.jpg\"]','SW-108-A0-A2',0,12,0,1,0,4,1,0,1157,NULL,NULL,NULL,15.00,11.00,19.00,710.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(52,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12.jpg\"]','SW-129-A0',0,18,0,1,0,4,1,0,556,500.4,NULL,NULL,11.00,18.00,17.00,895.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(53,'EPSION Plaster Printer',NULL,NULL,'published','[\"products\\/12-1.jpg\"]','SW-129-A0-A1',0,18,0,1,0,4,1,0,556,394.76,NULL,NULL,11.00,18.00,17.00,895.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(54,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13.jpg\"]','SW-166-A0',0,17,0,1,0,7,1,0,526,NULL,NULL,NULL,13.00,16.00,16.00,546.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(55,'Sound Intone I65 Earphone White Version',NULL,NULL,'published','[\"products\\/13-1.jpg\"]','SW-166-A0-A1',0,17,0,1,0,7,1,0,526,NULL,NULL,NULL,13.00,16.00,16.00,546.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(56,'B&O Play Mini Bluetooth Speaker',NULL,NULL,'published','[\"products\\/14.jpg\"]','SW-113-A0',0,14,0,1,0,7,1,0,520,NULL,NULL,NULL,10.00,12.00,14.00,674.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(57,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-119-A0',0,11,0,1,0,2,1,0,596,NULL,NULL,NULL,20.00,17.00,12.00,645.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(58,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','SW-119-A0-A1',0,11,0,1,0,2,1,0,596,NULL,NULL,NULL,20.00,17.00,12.00,645.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL,'published','[\"products\\/15.jpg\"]','SW-119-A0-A2',0,11,0,1,0,2,1,0,596,NULL,NULL,NULL,20.00,17.00,12.00,645.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(60,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL,'published','[\"products\\/16.jpg\"]','SW-124-A0',0,16,0,1,0,1,1,0,547,486.83,NULL,NULL,16.00,19.00,15.00,729.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(61,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17.jpg\"]','SW-173-A0',0,12,0,1,0,6,1,0,562,NULL,NULL,NULL,17.00,20.00,10.00,576.00,NULL,0,'2022-08-04 20:09:47','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(62,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-1.jpg\"]','SW-173-A0-A1',0,12,0,1,0,6,1,0,562,NULL,NULL,NULL,17.00,20.00,10.00,576.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(63,'Samsung Gear VR Virtual Reality Headset',NULL,NULL,'published','[\"products\\/17-2.jpg\"]','SW-173-A0-A2',0,12,0,1,0,6,1,0,562,NULL,NULL,NULL,17.00,20.00,10.00,576.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(64,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18.jpg\"]','SW-175-A0',0,11,0,1,0,4,1,0,1231,NULL,NULL,NULL,18.00,12.00,19.00,697.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(65,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-1.jpg\"]','SW-175-A0-A1',0,11,0,1,0,4,1,0,1231,NULL,NULL,NULL,18.00,12.00,19.00,697.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(66,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-2.jpg\"]','SW-175-A0-A2',0,11,0,1,0,4,1,0,1231,NULL,NULL,NULL,18.00,12.00,19.00,697.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(67,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL,'published','[\"products\\/18-3.jpg\"]','SW-175-A0-A3',0,11,0,1,0,4,1,0,1231,NULL,NULL,NULL,18.00,12.00,19.00,697.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(68,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19.jpg\"]','SW-110-A0',0,19,0,1,0,6,1,0,961,NULL,NULL,NULL,15.00,14.00,20.00,696.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(69,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','SW-110-A0-A1',0,19,0,1,0,6,1,0,961,NULL,NULL,NULL,15.00,14.00,20.00,696.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(70,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/19-2.jpg\"]','SW-110-A0-A2',0,19,0,1,0,6,1,0,961,NULL,NULL,NULL,15.00,14.00,20.00,696.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(71,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL,'published','[\"products\\/20.jpg\"]','SW-195-A0',0,10,0,1,0,2,1,0,935,794.75,NULL,NULL,10.00,13.00,18.00,588.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(72,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21.jpg\"]','SW-135-A0',0,10,0,1,0,4,1,0,615,NULL,NULL,NULL,17.00,19.00,11.00,637.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(73,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','SW-135-A0-A1',0,10,0,1,0,4,1,0,615,NULL,NULL,NULL,17.00,19.00,11.00,637.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(74,'MVMTH Classical Leather Watch In Black',NULL,NULL,'published','[\"products\\/21-2.jpg\"]','SW-135-A0-A2',0,10,0,1,0,4,1,0,615,NULL,NULL,NULL,17.00,19.00,11.00,637.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22.jpg\"]','SW-164-A0',0,10,0,1,0,1,1,0,478,NULL,NULL,NULL,17.00,12.00,16.00,562.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(76,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','SW-164-A0-A1',0,10,0,1,0,1,1,0,478,NULL,NULL,NULL,17.00,12.00,16.00,562.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23.jpg\"]','SW-132-A0',0,10,0,1,0,6,1,0,1268,NULL,NULL,NULL,15.00,17.00,17.00,607.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','SW-132-A0-A1',0,10,0,1,0,6,1,0,1268,NULL,NULL,NULL,15.00,17.00,17.00,607.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL),(79,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL,'published','[\"products\\/23-2.jpg\"]','SW-132-A0-A2',0,10,0,1,0,6,1,0,1268,NULL,NULL,NULL,15.00,17.00,17.00,607.00,NULL,0,'2022-08-04 20:09:48','2022-08-04 20:10:07','in_stock',NULL,0,'Botble\\ACL\\Models\\User',0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Dual Camera 20MP',NULL,NULL),('vi',2,'Smart Watches',NULL,NULL),('vi',3,'Beat Headphone',NULL,NULL),('vi',4,'Red & Black Headphone',NULL,NULL),('vi',5,'Smart Watch External',NULL,NULL),('vi',6,'Nikon HD camera',NULL,NULL),('vi',7,'Audio Equipment',NULL,NULL),('vi',8,'Smart Televisions',NULL,NULL),('vi',9,'Samsung Smart Phone',NULL,NULL),('vi',10,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',11,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',12,'EPSION Plaster Printer',NULL,NULL),('vi',13,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',14,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',15,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',16,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',17,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',18,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',19,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',20,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',21,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',22,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',23,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',24,'Dual Camera 20MP',NULL,NULL),('vi',25,'Smart Watches',NULL,NULL),('vi',26,'Smart Watches',NULL,NULL),('vi',27,'Smart Watches',NULL,NULL),('vi',28,'Beat Headphone',NULL,NULL),('vi',29,'Beat Headphone',NULL,NULL),('vi',30,'Beat Headphone',NULL,NULL),('vi',31,'Red & Black Headphone',NULL,NULL),('vi',32,'Red & Black Headphone',NULL,NULL),('vi',33,'Smart Watch External',NULL,NULL),('vi',34,'Smart Watch External',NULL,NULL),('vi',35,'Smart Watch External',NULL,NULL),('vi',36,'Nikon HD camera',NULL,NULL),('vi',37,'Nikon HD camera',NULL,NULL),('vi',38,'Audio Equipment',NULL,NULL),('vi',39,'Audio Equipment',NULL,NULL),('vi',40,'Audio Equipment',NULL,NULL),('vi',41,'Audio Equipment',NULL,NULL),('vi',42,'Smart Televisions',NULL,NULL),('vi',43,'Samsung Smart Phone',NULL,NULL),('vi',44,'Samsung Smart Phone',NULL,NULL),('vi',45,'Samsung Smart Phone',NULL,NULL),('vi',46,'Samsung Smart Phone',NULL,NULL),('vi',47,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',48,'Herschel Leather Duffle Bag In Brown Color',NULL,NULL),('vi',49,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',50,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',51,'Xbox One Wireless Controller Black Color',NULL,NULL),('vi',52,'EPSION Plaster Printer',NULL,NULL),('vi',53,'EPSION Plaster Printer',NULL,NULL),('vi',54,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',55,'Sound Intone I65 Earphone White Version',NULL,NULL),('vi',56,'B&O Play Mini Bluetooth Speaker',NULL,NULL),('vi',57,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',58,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',59,'Apple MacBook Air Retina 13.3-Inch Laptop',NULL,NULL),('vi',60,'Apple MacBook Air Retina 12-Inch Laptop',NULL,NULL),('vi',61,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',62,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',63,'Samsung Gear VR Virtual Reality Headset',NULL,NULL),('vi',64,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',65,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',66,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',67,'Aveeno Moisturizing Body Shower 450ml',NULL,NULL),('vi',68,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',69,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',70,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',71,'NYX Beauty Couton Pallete Makeup 12',NULL,NULL),('vi',72,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',73,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',74,'MVMTH Classical Leather Watch In Black',NULL,NULL),('vi',75,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',76,'Baxter Care Hair Kit For Bearded Mens',NULL,NULL),('vi',77,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',78,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL),('vi',79,'Ciate Palemore Lipstick Bold Red Color',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,4,7,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/15.jpg\"]'),(2,4,11,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(3,3,19,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(4,6,22,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(5,5,23,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(6,8,3,3.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(7,6,17,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(8,8,7,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(9,3,10,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/13.jpg\"]'),(10,10,22,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(11,10,2,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/14.jpg\"]'),(12,3,17,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\"]'),(13,9,20,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/8.jpg\"]'),(14,3,10,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/18.jpg\"]'),(15,1,2,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(16,7,7,5.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(17,5,21,1.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(18,1,11,2.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/18.jpg\"]'),(19,4,3,4.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(20,6,19,4.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(21,3,13,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(22,5,12,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(23,2,16,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(24,1,23,4.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(25,4,2,3.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(26,2,16,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/20.jpg\"]'),(27,6,5,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/12.jpg\"]'),(28,1,17,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\"]'),(29,4,7,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(30,9,14,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\"]'),(31,7,17,5.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(32,4,13,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(33,2,20,5.00,'Good app, good backup service and support. Good documentation.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(34,1,23,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(35,2,5,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/22.jpg\"]'),(36,4,13,3.00,'Good app, good backup service and support. Good documentation.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/21.jpg\"]'),(37,10,14,1.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(38,2,12,4.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(39,1,19,3.00,'Clean & perfect source code','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/22.jpg\"]'),(40,7,10,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/8.jpg\"]'),(41,10,12,5.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\"]'),(42,9,17,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\"]'),(43,5,7,3.00,'Clean & perfect source code','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(44,1,1,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(45,10,11,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(46,2,18,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\"]'),(47,10,12,4.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(48,3,2,5.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\"]'),(49,9,4,4.00,'Good app, good backup service and support. Good documentation.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\"]'),(50,4,13,2.00,'Best ecommerce CMS online store!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\"]'),(51,6,14,2.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/17.jpg\"]'),(52,7,2,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(53,4,22,1.00,'Best ecommerce CMS online store!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(54,3,18,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(55,7,4,2.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/22.jpg\"]'),(56,8,17,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\"]'),(57,7,11,4.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(58,3,4,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\"]'),(59,4,18,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(60,9,8,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/8.jpg\"]'),(61,6,3,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\"]'),(62,2,13,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(63,9,16,3.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(64,5,2,1.00,'Clean & perfect source code','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(65,2,1,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(66,4,6,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(67,3,8,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(68,2,21,2.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/16.jpg\"]'),(69,4,9,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\"]'),(70,1,14,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(71,9,5,3.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\"]'),(72,3,19,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/5.jpg\",\"products\\/17.jpg\"]'),(73,6,17,1.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(74,6,19,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/7.jpg\"]'),(75,4,12,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(76,1,23,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(77,4,18,5.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(78,8,22,5.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(79,9,22,4.00,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/15.jpg\"]'),(80,5,18,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\"]'),(81,3,8,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/14.jpg\"]'),(82,2,15,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(83,2,11,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(84,8,14,1.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(85,4,1,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\"]'),(86,2,22,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(87,10,10,5.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(88,6,5,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(89,4,21,5.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(90,8,12,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(91,5,11,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(92,9,5,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\"]'),(93,9,23,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(94,2,21,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(95,6,17,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(96,2,21,4.00,'Best ecommerce CMS online store!','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\"]'),(97,9,16,1.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(98,3,16,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/1.jpg\"]'),(99,10,17,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/11.jpg\"]'),(100,1,18,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2022-08-04 20:09:52','2022-08-04 20:09:52','[\"products\\/2.jpg\",\"products\\/5.jpg\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `shipment_id` int unsigned NOT NULL,
  `order_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2022-07-30 20:10:08','2022-07-30 20:10:08'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2022-08-03 04:10:08','2022-08-04 20:10:08'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2022-07-20 00:10:08','2022-07-20 00:10:08'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2022-08-03 06:10:08','2022-08-04 20:10:08'),(5,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,2,2,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(6,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2022-07-29 12:10:08','2022-07-29 12:10:08'),(7,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2022-08-03 06:10:08','2022-08-04 20:10:08'),(8,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2022-07-22 08:10:08','2022-07-22 08:10:08'),(9,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2022-08-03 08:10:08','2022-08-04 20:10:08'),(10,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,4,4,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(11,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2022-07-20 20:10:08','2022-07-20 20:10:08'),(12,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2022-08-03 08:10:08','2022-08-04 20:10:08'),(13,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2022-07-23 20:10:08','2022-07-23 20:10:08'),(14,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2022-08-03 08:10:08','2022-08-04 20:10:08'),(15,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2022-07-28 18:10:08','2022-07-28 18:10:08'),(16,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2022-08-03 10:10:08','2022-08-04 20:10:08'),(17,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2022-07-27 08:10:08','2022-07-27 08:10:08'),(18,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2022-08-03 10:10:08','2022-08-04 20:10:08'),(19,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,8,8,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,8,8,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(21,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2022-07-26 12:10:08','2022-07-26 12:10:08'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2022-08-03 12:10:08','2022-08-04 20:10:08'),(23,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(24,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2022-08-02 04:10:08','2022-08-02 04:10:08'),(25,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2022-08-03 12:10:08','2022-08-04 20:10:08'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,10,10,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(27,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2022-07-23 08:10:08','2022-07-23 08:10:08'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2022-08-03 14:10:08','2022-08-04 20:10:08'),(29,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2022-07-30 20:10:08','2022-07-30 20:10:08'),(30,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2022-08-03 14:10:08','2022-08-04 20:10:08'),(31,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(32,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2022-08-01 08:10:08','2022-08-01 08:10:08'),(33,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2022-08-03 16:10:08','2022-08-04 20:10:08'),(34,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(35,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2022-07-28 20:10:08','2022-07-28 20:10:08'),(36,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2022-08-03 16:10:08','2022-08-04 20:10:08'),(37,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,14,14,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(39,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2022-07-25 08:10:08','2022-07-25 08:10:08'),(40,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2022-08-03 16:10:08','2022-08-04 20:10:08'),(41,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,15,15,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,15,15,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(43,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2022-07-31 12:10:08','2022-07-31 12:10:08'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2022-08-03 18:10:08','2022-08-04 20:10:08'),(45,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2022-08-02 16:10:08','2022-08-02 16:10:08'),(46,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2022-08-03 18:10:08','2022-08-04 20:10:08'),(47,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(48,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2022-07-31 20:10:08','2022-07-31 20:10:08'),(49,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2022-08-03 20:10:08','2022-08-04 20:10:08'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(51,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2022-07-29 20:10:08','2022-07-29 20:10:08'),(52,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2022-08-03 20:10:08','2022-08-04 20:10:08'),(53,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2022-07-26 16:10:08','2022-07-26 16:10:08'),(54,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2022-08-03 22:10:08','2022-08-04 20:10:08'),(55,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(56,'create_from_order','Shipping was created from order %order_id%',0,21,21,'2022-08-02 08:10:08','2022-08-02 08:10:08'),(57,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,21,21,'2022-08-04 00:10:08','2022-08-04 20:10:08'),(58,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,21,21,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(59,'create_from_order','Shipping was created from order %order_id%',0,22,22,'2022-08-01 12:10:08','2022-08-01 12:10:08'),(60,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,22,22,'2022-08-04 00:10:08','2022-08-04 20:10:08'),(61,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,22,22,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(62,'create_from_order','Shipping was created from order %order_id%',0,23,23,'2022-08-02 14:10:08','2022-08-02 14:10:08'),(63,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,23,23,'2022-08-04 02:10:08','2022-08-04 20:10:08'),(64,'create_from_order','Shipping was created from order %order_id%',0,24,24,'2022-08-01 02:10:08','2022-08-01 02:10:08'),(65,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,24,24,'2022-08-04 02:10:08','2022-08-04 20:10:08'),(66,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,24,24,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(67,'create_from_order','Shipping was created from order %order_id%',0,25,25,'2022-08-02 20:10:08','2022-08-02 20:10:08'),(68,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,25,25,'2022-08-04 04:10:08','2022-08-04 20:10:08'),(69,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,25,25,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(70,'create_from_order','Shipping was created from order %order_id%',0,26,26,'2022-08-02 04:10:08','2022-08-02 04:10:08'),(71,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,26,26,'2022-08-04 04:10:08','2022-08-04 20:10:08'),(72,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,26,26,'2022-08-04 20:10:08','2022-08-04 20:10:08'),(73,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,26,26,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(74,'create_from_order','Shipping was created from order %order_id%',0,27,27,'2022-08-01 08:10:09','2022-08-01 08:10:09'),(75,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,27,27,'2022-08-04 06:10:09','2022-08-04 20:10:09'),(76,'create_from_order','Shipping was created from order %order_id%',0,28,28,'2022-08-03 02:10:09','2022-08-03 02:10:09'),(77,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,28,28,'2022-08-04 06:10:09','2022-08-04 20:10:09'),(78,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,28,28,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(79,'create_from_order','Shipping was created from order %order_id%',0,29,29,'2022-08-01 08:10:09','2022-08-01 08:10:09'),(80,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,29,29,'2022-08-04 08:10:09','2022-08-04 20:10:09'),(81,'create_from_order','Shipping was created from order %order_id%',0,30,30,'2022-08-04 08:10:09','2022-08-04 08:10:09'),(82,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,30,30,'2022-08-04 08:10:09','2022-08-04 20:10:09'),(83,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,30,30,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(84,'create_from_order','Shipping was created from order %order_id%',0,31,31,'2022-08-03 04:10:09','2022-08-03 04:10:09'),(85,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,31,31,'2022-08-04 10:10:09','2022-08-04 20:10:09'),(86,'create_from_order','Shipping was created from order %order_id%',0,32,32,'2022-08-02 18:10:09','2022-08-02 18:10:09'),(87,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,32,32,'2022-08-04 10:10:09','2022-08-04 20:10:09'),(88,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,32,32,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(89,'create_from_order','Shipping was created from order %order_id%',0,33,33,'2022-08-02 20:10:09','2022-08-02 20:10:09'),(90,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,33,33,'2022-08-04 12:10:09','2022-08-04 20:10:09'),(91,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,33,33,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(92,'create_from_order','Shipping was created from order %order_id%',0,34,34,'2022-08-01 12:10:09','2022-08-01 12:10:09'),(93,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,34,34,'2022-08-04 12:10:09','2022-08-04 20:10:09'),(94,'create_from_order','Shipping was created from order %order_id%',0,35,35,'2022-08-04 04:10:09','2022-08-04 04:10:09'),(95,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,35,35,'2022-08-04 12:10:09','2022-08-04 20:10:09'),(96,'create_from_order','Shipping was created from order %order_id%',0,36,36,'2022-08-02 04:10:09','2022-08-02 04:10:09'),(97,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,36,36,'2022-08-04 12:10:09','2022-08-04 20:10:09'),(98,'create_from_order','Shipping was created from order %order_id%',0,37,37,'2022-08-03 02:10:09','2022-08-03 02:10:09'),(99,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,37,37,'2022-08-04 14:10:09','2022-08-04 20:10:09'),(100,'create_from_order','Shipping was created from order %order_id%',0,38,38,'2022-08-04 08:10:09','2022-08-04 08:10:09'),(101,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,38,38,'2022-08-04 16:10:09','2022-08-04 20:10:09'),(102,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,38,38,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(103,'create_from_order','Shipping was created from order %order_id%',0,39,39,'2022-08-03 16:10:09','2022-08-03 16:10:09'),(104,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,39,39,'2022-08-04 16:10:09','2022-08-04 20:10:09'),(105,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,39,39,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(106,'create_from_order','Shipping was created from order %order_id%',0,40,40,'2022-08-03 08:10:09','2022-08-03 08:10:09'),(107,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,40,40,'2022-08-04 16:10:09','2022-08-04 20:10:09'),(108,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,40,40,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(109,'create_from_order','Shipping was created from order %order_id%',0,41,41,'2022-08-04 12:10:09','2022-08-04 12:10:09'),(110,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,41,41,'2022-08-04 18:10:09','2022-08-04 20:10:09'),(111,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,41,41,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(112,'create_from_order','Shipping was created from order %order_id%',0,42,42,'2022-08-04 14:10:09','2022-08-04 14:10:09'),(113,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,42,42,'2022-08-04 18:10:09','2022-08-04 20:10:09'),(114,'create_from_order','Shipping was created from order %order_id%',0,43,43,'2022-08-04 18:10:09','2022-08-04 18:10:09'),(115,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,43,43,'2022-08-04 18:10:09','2022-08-04 20:10:09'),(116,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,43,43,'2022-08-04 20:10:09','2022-08-04 20:10:09'),(117,'create_from_order','Shipping was created from order %order_id%',0,44,44,'2022-08-04 04:10:09','2022-08-04 04:10:09'),(118,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,44,44,'2022-08-04 18:10:09','2022-08-04 20:10:09'),(119,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,44,44,'2022-08-04 20:10:09','2022-08-04 20:10:09');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int unsigned NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,3376.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0061734937','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-11 03:10:08',NULL),(2,2,NULL,4205.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0039408949','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-10 03:10:08','2022-08-05 03:10:08'),(3,3,NULL,3259.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0064843082','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-12 03:10:08',NULL),(4,4,NULL,2130.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0026164512','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-12 03:10:08','2022-08-05 03:10:08'),(5,5,NULL,2214.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0050391140','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-07 03:10:08',NULL),(6,6,NULL,2088.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0075825458','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-10 03:10:08',NULL),(7,7,NULL,3344.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0020908136','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-08 03:10:08',NULL),(8,8,NULL,1124.00,NULL,'','delivered',1003.80,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0021213164','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-11 03:10:08','2022-08-05 03:10:08'),(9,9,NULL,1935.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0084501746','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-14 03:10:08','2022-08-05 03:10:08'),(10,10,NULL,1392.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0069790053','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-10 03:10:08','2022-08-05 03:10:08'),(11,11,NULL,3816.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0081590607','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-08 03:10:08',NULL),(12,12,NULL,1950.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0010756631','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-09 03:10:08','2022-08-05 03:10:08'),(13,13,NULL,1686.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0049775307','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-14 03:10:08','2022-08-05 03:10:08'),(14,14,NULL,1737.00,NULL,'','delivered',1760.20,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0083219129','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-11 03:10:08','2022-08-05 03:10:08'),(15,15,NULL,1394.00,NULL,'','delivered',2585.10,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0072869598','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-11 03:10:08','2022-08-05 03:10:08'),(16,16,NULL,546.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0056927795','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-10 03:10:08',NULL),(17,17,NULL,2091.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0068626950','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-10 03:10:08','2022-08-05 03:10:08'),(18,18,NULL,807.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD007464344','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-09 03:10:08','2022-08-05 03:10:08'),(19,19,NULL,1806.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0065816946','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-06 03:10:08',NULL),(20,20,NULL,4219.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0099410613','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-14 03:10:08','2022-08-05 03:10:08'),(21,21,NULL,3368.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0071088317','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-09 03:10:08','2022-08-05 03:10:08'),(22,22,NULL,1274.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0023532622','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-11 03:10:08','2022-08-05 03:10:08'),(23,23,NULL,798.00,NULL,'','approved',1254.00,'pending','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0048266432','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-13 03:10:08',NULL),(24,24,NULL,729.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0023980960','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-08 03:10:08','2022-08-05 03:10:08'),(25,25,NULL,3244.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0044295565','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-11 03:10:08','2022-08-05 03:10:08'),(26,26,NULL,1682.00,NULL,'','delivered',1134.00,'completed','pending',0.00,0,'2022-08-04 20:10:08','2022-08-04 20:10:08','JJD0092041922','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-15 03:10:08','2022-08-05 03:10:08'),(27,27,NULL,1614.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0015690114','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-07 03:10:09',NULL),(28,28,NULL,3382.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0048825642','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-14 03:10:09','2022-08-05 03:10:09'),(29,29,NULL,1690.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD006701924','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-14 03:10:09',NULL),(30,30,NULL,895.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0044285557','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-10 03:10:09','2022-08-05 03:10:09'),(31,31,NULL,1614.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD002424889','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-08 03:10:09',NULL),(32,32,NULL,1764.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0065942334','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-08 03:10:09','2022-08-05 03:10:09'),(33,33,NULL,567.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD007623987','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-13 03:10:09','2022-08-05 03:10:09'),(34,34,NULL,2091.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0046493251','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-13 03:10:09',NULL),(35,35,NULL,2088.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0072432944','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-07 03:10:09',NULL),(36,36,NULL,607.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0097006417','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-12 03:10:09',NULL),(37,37,NULL,2634.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0078121487','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-13 03:10:09',NULL),(38,38,NULL,841.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0078106386','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-12 03:10:09','2022-08-05 03:10:09'),(39,39,NULL,2091.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0042021082','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-10 03:10:09','2022-08-05 03:10:09'),(40,40,NULL,696.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0041246795','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-11 03:10:09','2022-08-05 03:10:09'),(41,41,NULL,1690.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0086235148','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-13 03:10:09','2022-08-05 03:10:09'),(42,42,NULL,1458.00,NULL,'','approved',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0089774569','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-13 03:10:09',NULL),(43,43,NULL,697.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0057258117','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-06 03:10:09','2022-08-05 03:10:09'),(44,44,NULL,1176.00,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2022-08-04 20:10:09','2022-08-04 20:10:09','JJD0064752912','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2022-08-12 03:10:09','2022-08-05 03:10:09');
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2022-08-04 20:09:52','2022-08-04 20:09:52');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` int unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` int unsigned NOT NULL,
  `type` enum('base_on_price','base_on_weight') COLLATE utf8mb4_unicode_ci DEFAULT 'base_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Delivery',1,'base_on_price',0.00,NULL,0.00,'2022-08-04 20:09:53','2022-08-04 20:09:53');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Martfury','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2022-08-04 20:10:01','2022-08-04 20:10:01');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2022-08-04 20:09:52','2022-08-04 20:09:52'),(2,'None',0.000000,2,'published','2022-08-04 20:09:52','2022-08-04 20:09:52');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'SHIPPING',0,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(2,'PAYMENT',1,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(3,'ORDER & RETURNS',2,'published','2022-08-04 20:10:01','2022-08-04 20:10:01');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2022-08-04 20:10:01','2022-08-04 20:10:01');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','1a78349e82e718e4dd6a38209b5904d3',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','1a78349e82e718e4dd6a38209b5904d3',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','3b5c7fde675aa5e76b67df143190dea7',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','8708bbbe2285d993c650abe2e27b21f9',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','2ccd8b74cf58ccf5a3645b2a2eb1e3eb',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','b5d62d676de6e933cbf40610503e6657',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','28e555b8164632ead13a6295ade4f4fc',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','db8ddce447525cf92506f1000c93f68c',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','8708bbbe2285d993c650abe2e27b21f9',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','2ccd8b74cf58ccf5a3645b2a2eb1e3eb',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','b5d62d676de6e933cbf40610503e6657',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','28e555b8164632ead13a6295ade4f4fc',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1',1,'image/jpeg',2200,'brands/1.jpg','[]','2022-08-04 20:09:27','2022-08-04 20:09:27',NULL),(2,0,'2',1,'image/jpeg',2685,'brands/2.jpg','[]','2022-08-04 20:09:27','2022-08-04 20:09:27',NULL),(3,0,'3',1,'image/jpeg',2311,'brands/3.jpg','[]','2022-08-04 20:09:27','2022-08-04 20:09:27',NULL),(4,0,'4',1,'image/jpeg',2374,'brands/4.jpg','[]','2022-08-04 20:09:27','2022-08-04 20:09:27',NULL),(5,0,'5',1,'image/jpeg',1927,'brands/5.jpg','[]','2022-08-04 20:09:28','2022-08-04 20:09:28',NULL),(6,0,'6',1,'image/jpeg',2519,'brands/6.jpg','[]','2022-08-04 20:09:28','2022-08-04 20:09:28',NULL),(7,0,'7',1,'image/jpeg',3043,'brands/7.jpg','[]','2022-08-04 20:09:28','2022-08-04 20:09:28',NULL),(8,0,'1',2,'image/jpeg',5173,'product-categories/1.jpg','[]','2022-08-04 20:09:28','2022-08-04 20:09:28',NULL),(9,0,'2',2,'image/jpeg',7355,'product-categories/2.jpg','[]','2022-08-04 20:09:28','2022-08-04 20:09:28',NULL),(10,0,'3',2,'image/jpeg',4427,'product-categories/3.jpg','[]','2022-08-04 20:09:28','2022-08-04 20:09:28',NULL),(11,0,'4',2,'image/jpeg',2963,'product-categories/4.jpg','[]','2022-08-04 20:09:28','2022-08-04 20:09:28',NULL),(12,0,'5',2,'image/jpeg',5016,'product-categories/5.jpg','[]','2022-08-04 20:09:29','2022-08-04 20:09:29',NULL),(13,0,'6',2,'image/jpeg',4101,'product-categories/6.jpg','[]','2022-08-04 20:09:29','2022-08-04 20:09:29',NULL),(14,0,'7',2,'image/jpeg',2576,'product-categories/7.jpg','[]','2022-08-04 20:09:29','2022-08-04 20:09:29',NULL),(15,0,'8',2,'image/jpeg',4670,'product-categories/8.jpg','[]','2022-08-04 20:09:29','2022-08-04 20:09:29',NULL),(16,0,'1',3,'image/jpeg',4911,'products/1.jpg','[]','2022-08-04 20:09:31','2022-08-04 20:09:31',NULL),(17,0,'10-1',3,'image/jpeg',120755,'products/10-1.jpg','[]','2022-08-04 20:09:31','2022-08-04 20:09:31',NULL),(18,0,'10-2',3,'image/jpeg',148563,'products/10-2.jpg','[]','2022-08-04 20:09:31','2022-08-04 20:09:31',NULL),(19,0,'10',3,'image/jpeg',11176,'products/10.jpg','[]','2022-08-04 20:09:31','2022-08-04 20:09:31',NULL),(20,0,'11-1',3,'image/jpeg',13706,'products/11-1.jpg','[]','2022-08-04 20:09:31','2022-08-04 20:09:31',NULL),(21,0,'11-2',3,'image/jpeg',16809,'products/11-2.jpg','[]','2022-08-04 20:09:32','2022-08-04 20:09:32',NULL),(22,0,'11-3',3,'image/jpeg',23991,'products/11-3.jpg','[]','2022-08-04 20:09:32','2022-08-04 20:09:32',NULL),(23,0,'11',3,'image/jpeg',8234,'products/11.jpg','[]','2022-08-04 20:09:32','2022-08-04 20:09:32',NULL),(24,0,'12-1',3,'image/jpeg',47775,'products/12-1.jpg','[]','2022-08-04 20:09:32','2022-08-04 20:09:32',NULL),(25,0,'12-2',3,'image/jpeg',52722,'products/12-2.jpg','[]','2022-08-04 20:09:32','2022-08-04 20:09:32',NULL),(26,0,'12-3',3,'image/jpeg',57295,'products/12-3.jpg','[]','2022-08-04 20:09:33','2022-08-04 20:09:33',NULL),(27,0,'12',3,'image/jpeg',9642,'products/12.jpg','[]','2022-08-04 20:09:33','2022-08-04 20:09:33',NULL),(28,0,'13-1',3,'image/jpeg',7494,'products/13-1.jpg','[]','2022-08-04 20:09:33','2022-08-04 20:09:33',NULL),(29,0,'13',3,'image/jpeg',7266,'products/13.jpg','[]','2022-08-04 20:09:33','2022-08-04 20:09:33',NULL),(30,0,'14',3,'image/jpeg',6626,'products/14.jpg','[]','2022-08-04 20:09:33','2022-08-04 20:09:33',NULL),(31,0,'15-1',3,'image/jpeg',9014,'products/15-1.jpg','[]','2022-08-04 20:09:33','2022-08-04 20:09:33',NULL),(32,0,'15',3,'image/jpeg',6629,'products/15.jpg','[]','2022-08-04 20:09:33','2022-08-04 20:09:33',NULL),(33,0,'16',3,'image/jpeg',8558,'products/16.jpg','[]','2022-08-04 20:09:33','2022-08-04 20:09:33',NULL),(34,0,'17-1',3,'image/jpeg',63248,'products/17-1.jpg','[]','2022-08-04 20:09:34','2022-08-04 20:09:34',NULL),(35,0,'17-2',3,'image/jpeg',71404,'products/17-2.jpg','[]','2022-08-04 20:09:34','2022-08-04 20:09:34',NULL),(36,0,'17-3',3,'image/jpeg',58949,'products/17-3.jpg','[]','2022-08-04 20:09:34','2022-08-04 20:09:34',NULL),(37,0,'17',3,'image/jpeg',7050,'products/17.jpg','[]','2022-08-04 20:09:34','2022-08-04 20:09:34',NULL),(38,0,'18-1',3,'image/jpeg',527022,'products/18-1.jpg','[]','2022-08-04 20:09:34','2022-08-04 20:09:34',NULL),(39,0,'18-2',3,'image/jpeg',43849,'products/18-2.jpg','[]','2022-08-04 20:09:35','2022-08-04 20:09:35',NULL),(40,0,'18-3',3,'image/jpeg',63876,'products/18-3.jpg','[]','2022-08-04 20:09:35','2022-08-04 20:09:35',NULL),(41,0,'18',3,'image/jpeg',61587,'products/18.jpg','[]','2022-08-04 20:09:35','2022-08-04 20:09:35',NULL),(42,0,'19-1',3,'image/jpeg',23166,'products/19-1.jpg','[]','2022-08-04 20:09:35','2022-08-04 20:09:35',NULL),(43,0,'19-2',3,'image/jpeg',12306,'products/19-2.jpg','[]','2022-08-04 20:09:36','2022-08-04 20:09:36',NULL),(44,0,'19-3',3,'image/jpeg',51458,'products/19-3.jpg','[]','2022-08-04 20:09:36','2022-08-04 20:09:36',NULL),(45,0,'19',3,'image/jpeg',227872,'products/19.jpg','[]','2022-08-04 20:09:36','2022-08-04 20:09:36',NULL),(46,0,'2-1',3,'image/jpeg',85522,'products/2-1.jpg','[]','2022-08-04 20:09:36','2022-08-04 20:09:36',NULL),(47,0,'2-2',3,'image/jpeg',122423,'products/2-2.jpg','[]','2022-08-04 20:09:36','2022-08-04 20:09:36',NULL),(48,0,'2-3',3,'image/jpeg',61996,'products/2-3.jpg','[]','2022-08-04 20:09:37','2022-08-04 20:09:37',NULL),(49,0,'2',3,'image/jpeg',10832,'products/2.jpg','[]','2022-08-04 20:09:37','2022-08-04 20:09:37',NULL),(50,0,'20-1',3,'image/jpeg',108013,'products/20-1.jpg','[]','2022-08-04 20:09:37','2022-08-04 20:09:37',NULL),(51,0,'20-2',3,'image/jpeg',107598,'products/20-2.jpg','[]','2022-08-04 20:09:38','2022-08-04 20:09:38',NULL),(52,0,'20-3',3,'image/jpeg',31959,'products/20-3.jpg','[]','2022-08-04 20:09:38','2022-08-04 20:09:38',NULL),(53,0,'20',3,'image/jpeg',12798,'products/20.jpg','[]','2022-08-04 20:09:38','2022-08-04 20:09:38',NULL),(54,0,'21-1',3,'image/jpeg',92022,'products/21-1.jpg','[]','2022-08-04 20:09:38','2022-08-04 20:09:38',NULL),(55,0,'21-2',3,'image/jpeg',73796,'products/21-2.jpg','[]','2022-08-04 20:09:39','2022-08-04 20:09:39',NULL),(56,0,'21',3,'image/jpeg',72410,'products/21.jpg','[]','2022-08-04 20:09:39','2022-08-04 20:09:39',NULL),(57,0,'22-1',3,'image/jpeg',50174,'products/22-1.jpg','[]','2022-08-04 20:09:39','2022-08-04 20:09:39',NULL),(58,0,'22-2',3,'image/jpeg',63267,'products/22-2.jpg','[]','2022-08-04 20:09:39','2022-08-04 20:09:39',NULL),(59,0,'22-3',3,'image/jpeg',125017,'products/22-3.jpg','[]','2022-08-04 20:09:39','2022-08-04 20:09:39',NULL),(60,0,'22',3,'image/jpeg',88636,'products/22.jpg','[]','2022-08-04 20:09:40','2022-08-04 20:09:40',NULL),(61,0,'23-1',3,'image/jpeg',64117,'products/23-1.jpg','[]','2022-08-04 20:09:40','2022-08-04 20:09:40',NULL),(62,0,'23-2',3,'image/jpeg',96786,'products/23-2.jpg','[]','2022-08-04 20:09:40','2022-08-04 20:09:40',NULL),(63,0,'23-3',3,'image/jpeg',46477,'products/23-3.jpg','[]','2022-08-04 20:09:40','2022-08-04 20:09:40',NULL),(64,0,'23',3,'image/jpeg',68142,'products/23.jpg','[]','2022-08-04 20:09:41','2022-08-04 20:09:41',NULL),(65,0,'3',3,'image/jpeg',8388,'products/3.jpg','[]','2022-08-04 20:09:41','2022-08-04 20:09:41',NULL),(66,0,'4-1',3,'image/jpeg',39071,'products/4-1.jpg','[]','2022-08-04 20:09:41','2022-08-04 20:09:41',NULL),(67,0,'4-2',3,'image/jpeg',35982,'products/4-2.jpg','[]','2022-08-04 20:09:41','2022-08-04 20:09:41',NULL),(68,0,'4-3',3,'image/jpeg',62867,'products/4-3.jpg','[]','2022-08-04 20:09:41','2022-08-04 20:09:41',NULL),(69,0,'4',3,'image/jpeg',5547,'products/4.jpg','[]','2022-08-04 20:09:42','2022-08-04 20:09:42',NULL),(70,0,'5-1',3,'image/jpeg',72383,'products/5-1.jpg','[]','2022-08-04 20:09:42','2022-08-04 20:09:42',NULL),(71,0,'5-2',3,'image/jpeg',108591,'products/5-2.jpg','[]','2022-08-04 20:09:42','2022-08-04 20:09:42',NULL),(72,0,'5-3',3,'image/jpeg',63741,'products/5-3.jpg','[]','2022-08-04 20:09:42','2022-08-04 20:09:42',NULL),(73,0,'5',3,'image/jpeg',98052,'products/5.jpg','[]','2022-08-04 20:09:42','2022-08-04 20:09:42',NULL),(74,0,'6',3,'image/jpeg',10944,'products/6.jpg','[]','2022-08-04 20:09:43','2022-08-04 20:09:43',NULL),(75,0,'7',3,'image/jpeg',10160,'products/7.jpg','[]','2022-08-04 20:09:43','2022-08-04 20:09:43',NULL),(76,0,'8-1',3,'image/jpeg',9986,'products/8-1.jpg','[]','2022-08-04 20:09:43','2022-08-04 20:09:43',NULL),(77,0,'8-2',3,'image/jpeg',8132,'products/8-2.jpg','[]','2022-08-04 20:09:43','2022-08-04 20:09:43',NULL),(78,0,'8-3',3,'image/jpeg',7867,'products/8-3.jpg','[]','2022-08-04 20:09:43','2022-08-04 20:09:43',NULL),(79,0,'8',3,'image/jpeg',10459,'products/8.jpg','[]','2022-08-04 20:09:43','2022-08-04 20:09:43',NULL),(80,0,'9-1',3,'image/jpeg',623616,'products/9-1.jpg','[]','2022-08-04 20:09:43','2022-08-04 20:09:43',NULL),(81,0,'9-2',3,'image/jpeg',647454,'products/9-2.jpg','[]','2022-08-04 20:09:44','2022-08-04 20:09:44',NULL),(82,0,'9',3,'image/jpeg',16733,'products/9.jpg','[]','2022-08-04 20:09:44','2022-08-04 20:09:44',NULL),(83,0,'1',4,'image/jpeg',11752,'customers/1.jpg','[]','2022-08-04 20:09:49','2022-08-04 20:09:49',NULL),(84,0,'10',4,'image/jpeg',27814,'customers/10.jpg','[]','2022-08-04 20:09:49','2022-08-04 20:09:49',NULL),(85,0,'2',4,'image/jpeg',19005,'customers/2.jpg','[]','2022-08-04 20:09:49','2022-08-04 20:09:49',NULL),(86,0,'3',4,'image/jpeg',20400,'customers/3.jpg','[]','2022-08-04 20:09:49','2022-08-04 20:09:49',NULL),(87,0,'4',4,'image/jpeg',26819,'customers/4.jpg','[]','2022-08-04 20:09:49','2022-08-04 20:09:49',NULL),(88,0,'5',4,'image/jpeg',14367,'customers/5.jpg','[]','2022-08-04 20:09:50','2022-08-04 20:09:50',NULL),(89,0,'6',4,'image/jpeg',12367,'customers/6.jpg','[]','2022-08-04 20:09:50','2022-08-04 20:09:50',NULL),(90,0,'7',4,'image/jpeg',20652,'customers/7.jpg','[]','2022-08-04 20:09:50','2022-08-04 20:09:50',NULL),(91,0,'8',4,'image/jpeg',21164,'customers/8.jpg','[]','2022-08-04 20:09:50','2022-08-04 20:09:50',NULL),(92,0,'9',4,'image/jpeg',6084,'customers/9.jpg','[]','2022-08-04 20:09:50','2022-08-04 20:09:50',NULL),(93,0,'1',5,'image/jpeg',532819,'news/1.jpg','[]','2022-08-04 20:09:53','2022-08-04 20:09:53',NULL),(94,0,'10',5,'image/jpeg',342651,'news/10.jpg','[]','2022-08-04 20:09:53','2022-08-04 20:09:53',NULL),(95,0,'11',5,'image/jpeg',296740,'news/11.jpg','[]','2022-08-04 20:09:54','2022-08-04 20:09:54',NULL),(96,0,'2',5,'image/jpeg',553729,'news/2.jpg','[]','2022-08-04 20:09:54','2022-08-04 20:09:54',NULL),(97,0,'3',5,'image/jpeg',522223,'news/3.jpg','[]','2022-08-04 20:09:54','2022-08-04 20:09:54',NULL),(98,0,'4',5,'image/jpeg',910908,'news/4.jpg','[]','2022-08-04 20:09:55','2022-08-04 20:09:55',NULL),(99,0,'5',5,'image/jpeg',666561,'news/5.jpg','[]','2022-08-04 20:09:55','2022-08-04 20:09:55',NULL),(100,0,'6',5,'image/jpeg',431929,'news/6.jpg','[]','2022-08-04 20:09:55','2022-08-04 20:09:55',NULL),(101,0,'7',5,'image/jpeg',568268,'news/7.jpg','[]','2022-08-04 20:09:55','2022-08-04 20:09:55',NULL),(102,0,'8',5,'image/jpeg',351088,'news/8.jpg','[]','2022-08-04 20:09:56','2022-08-04 20:09:56',NULL),(103,0,'9',5,'image/jpeg',353751,'news/9.jpg','[]','2022-08-04 20:09:56','2022-08-04 20:09:56',NULL),(104,0,'1-lg',6,'image/jpeg',66405,'sliders/1-lg.jpg','[]','2022-08-04 20:09:58','2022-08-04 20:09:58',NULL),(105,0,'1-md',6,'image/jpeg',40964,'sliders/1-md.jpg','[]','2022-08-04 20:09:58','2022-08-04 20:09:58',NULL),(106,0,'1-sm',6,'image/jpeg',40964,'sliders/1-sm.jpg','[]','2022-08-04 20:09:58','2022-08-04 20:09:58',NULL),(107,0,'2-lg',6,'image/jpeg',37835,'sliders/2-lg.jpg','[]','2022-08-04 20:09:58','2022-08-04 20:09:58',NULL),(108,0,'2-md',6,'image/jpeg',31875,'sliders/2-md.jpg','[]','2022-08-04 20:09:58','2022-08-04 20:09:58',NULL),(109,0,'2-sm',6,'image/jpeg',31875,'sliders/2-sm.jpg','[]','2022-08-04 20:09:58','2022-08-04 20:09:58',NULL),(110,0,'3-lg',6,'image/jpeg',40072,'sliders/3-lg.jpg','[]','2022-08-04 20:09:59','2022-08-04 20:09:59',NULL),(111,0,'3-md',6,'image/jpeg',32107,'sliders/3-md.jpg','[]','2022-08-04 20:09:59','2022-08-04 20:09:59',NULL),(112,0,'3-sm',6,'image/jpeg',32107,'sliders/3-sm.jpg','[]','2022-08-04 20:09:59','2022-08-04 20:09:59',NULL),(113,0,'1',7,'image/jpeg',56015,'promotion/1.jpg','[]','2022-08-04 20:10:00','2022-08-04 20:10:00',NULL),(114,0,'2',7,'image/jpeg',39964,'promotion/2.jpg','[]','2022-08-04 20:10:00','2022-08-04 20:10:00',NULL),(115,0,'3',7,'image/jpeg',71948,'promotion/3.jpg','[]','2022-08-04 20:10:00','2022-08-04 20:10:00',NULL),(116,0,'4',7,'image/jpeg',94590,'promotion/4.jpg','[]','2022-08-04 20:10:00','2022-08-04 20:10:00',NULL),(117,0,'5',7,'image/jpeg',96153,'promotion/5.jpg','[]','2022-08-04 20:10:00','2022-08-04 20:10:00',NULL),(118,0,'6',7,'image/jpeg',160910,'promotion/6.jpg','[]','2022-08-04 20:10:00','2022-08-04 20:10:00',NULL),(119,0,'7',7,'image/jpeg',59044,'promotion/7.jpg','[]','2022-08-04 20:10:00','2022-08-04 20:10:00',NULL),(120,0,'8',7,'image/jpeg',39964,'promotion/8.jpg','[]','2022-08-04 20:10:01','2022-08-04 20:10:01',NULL),(121,0,'9',7,'image/jpeg',54865,'promotion/9.jpg','[]','2022-08-04 20:10:01','2022-08-04 20:10:01',NULL),(122,0,'app',8,'image/png',88771,'general/app.png','[]','2022-08-04 20:10:02','2022-08-04 20:10:02',NULL),(123,0,'coming-soon',8,'image/jpeg',83359,'general/coming-soon.jpg','[]','2022-08-04 20:10:02','2022-08-04 20:10:02',NULL),(124,0,'favicon',8,'image/png',5147,'general/favicon.png','[]','2022-08-04 20:10:02','2022-08-04 20:10:02',NULL),(125,0,'logo-dark',8,'image/png',906,'general/logo-dark.png','[]','2022-08-04 20:10:02','2022-08-04 20:10:02',NULL),(126,0,'logo-light',8,'image/png',1430,'general/logo-light.png','[]','2022-08-04 20:10:03','2022-08-04 20:10:03',NULL),(127,0,'logo',8,'image/png',892,'general/logo.png','[]','2022-08-04 20:10:03','2022-08-04 20:10:03',NULL),(128,0,'newsletter',8,'image/jpeg',25569,'general/newsletter.jpg','[]','2022-08-04 20:10:03','2022-08-04 20:10:03',NULL),(129,0,'payment-method-1',8,'image/jpeg',976,'general/payment-method-1.jpg','[]','2022-08-04 20:10:03','2022-08-04 20:10:03',NULL),(130,0,'payment-method-2',8,'image/jpeg',1122,'general/payment-method-2.jpg','[]','2022-08-04 20:10:03','2022-08-04 20:10:03',NULL),(131,0,'payment-method-3',8,'image/jpeg',1040,'general/payment-method-3.jpg','[]','2022-08-04 20:10:03','2022-08-04 20:10:03',NULL),(132,0,'payment-method-4',8,'image/jpeg',722,'general/payment-method-4.jpg','[]','2022-08-04 20:10:03','2022-08-04 20:10:03',NULL),(133,0,'payment-method-5',8,'image/jpeg',773,'general/payment-method-5.jpg','[]','2022-08-04 20:10:04','2022-08-04 20:10:04',NULL),(134,0,'1',9,'image/png',11920,'stores/1.png','[]','2022-08-04 20:10:04','2022-08-04 20:10:04',NULL),(135,0,'10',9,'image/png',6583,'stores/10.png','[]','2022-08-04 20:10:04','2022-08-04 20:10:04',NULL),(136,0,'11',9,'image/png',6934,'stores/11.png','[]','2022-08-04 20:10:04','2022-08-04 20:10:04',NULL),(137,0,'12',9,'image/png',7396,'stores/12.png','[]','2022-08-04 20:10:04','2022-08-04 20:10:04',NULL),(138,0,'13',9,'image/png',5881,'stores/13.png','[]','2022-08-04 20:10:05','2022-08-04 20:10:05',NULL),(139,0,'14',9,'image/png',7188,'stores/14.png','[]','2022-08-04 20:10:05','2022-08-04 20:10:05',NULL),(140,0,'15',9,'image/png',7142,'stores/15.png','[]','2022-08-04 20:10:05','2022-08-04 20:10:05',NULL),(141,0,'16',9,'image/png',4659,'stores/16.png','[]','2022-08-04 20:10:05','2022-08-04 20:10:05',NULL),(142,0,'17',9,'image/png',6781,'stores/17.png','[]','2022-08-04 20:10:05','2022-08-04 20:10:05',NULL),(143,0,'2',9,'image/png',12300,'stores/2.png','[]','2022-08-04 20:10:05','2022-08-04 20:10:05',NULL),(144,0,'3',9,'image/png',10778,'stores/3.png','[]','2022-08-04 20:10:06','2022-08-04 20:10:06',NULL),(145,0,'4',9,'image/png',10771,'stores/4.png','[]','2022-08-04 20:10:06','2022-08-04 20:10:06',NULL),(146,0,'5',9,'image/png',13041,'stores/5.png','[]','2022-08-04 20:10:06','2022-08-04 20:10:06',NULL),(147,0,'6',9,'image/png',14006,'stores/6.png','[]','2022-08-04 20:10:06','2022-08-04 20:10:06',NULL),(148,0,'7',9,'image/png',5978,'stores/7.png','[]','2022-08-04 20:10:06','2022-08-04 20:10:06',NULL),(149,0,'8',9,'image/png',6586,'stores/8.png','[]','2022-08-04 20:10:06','2022-08-04 20:10:06',NULL),(150,0,'9',9,'image/png',6173,'stores/9.png','[]','2022-08-04 20:10:07','2022-08-04 20:10:07',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2022-08-04 20:09:27','2022-08-04 20:09:27',NULL),(2,0,'product-categories','product-categories',0,'2022-08-04 20:09:28','2022-08-04 20:09:28',NULL),(3,0,'products','products',0,'2022-08-04 20:09:31','2022-08-04 20:09:31',NULL),(4,0,'customers','customers',0,'2022-08-04 20:09:49','2022-08-04 20:09:49',NULL),(5,0,'news','news',0,'2022-08-04 20:09:53','2022-08-04 20:09:53',NULL),(6,0,'sliders','sliders',0,'2022-08-04 20:09:58','2022-08-04 20:09:58',NULL),(7,0,'promotion','promotion',0,'2022-08-04 20:09:59','2022-08-04 20:09:59',NULL),(8,0,'general','general',0,'2022-08-04 20:10:02','2022-08-04 20:10:02',NULL),(9,0,'stores','stores',0,'2022-08-04 20:10:04','2022-08-04 20:10:04',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2022-08-04 20:10:01','2022-08-04 20:10:01'),(2,5,'main-menu','2022-08-04 20:10:02','2022-08-04 20:10:02');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(2,1,0,NULL,NULL,'#',NULL,0,'Pages',NULL,'_self',1,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(3,1,2,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(4,1,2,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(5,1,2,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(6,1,2,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(7,1,2,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Coming soon',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(8,1,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',1,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(9,1,8,NULL,NULL,'/products',NULL,0,'All products',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(10,1,8,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Products Of Category',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(11,1,8,NULL,NULL,'/products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(12,1,0,NULL,NULL,'/stores',NULL,0,'Stores',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(13,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(14,1,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(15,1,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(16,2,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Terms Of Use',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(17,2,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Terms & Conditions',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(18,2,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Refund Policy',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(19,2,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(20,2,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(21,3,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About us',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(22,3,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Affiliate',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(23,3,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Career',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(24,3,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact us',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(25,4,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Our blog',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(26,4,0,NULL,NULL,'/cart',NULL,0,'Cart',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(27,4,0,NULL,NULL,'/customer/overview',NULL,0,'My account',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(28,4,0,NULL,NULL,'/products',NULL,0,'Shop',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(30,5,0,NULL,NULL,'#',NULL,0,'Trang',NULL,'_self',1,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(31,5,30,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(32,5,30,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(33,5,30,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(34,5,30,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(35,5,30,12,'Botble\\Page\\Models\\Page','/coming-soon',NULL,0,'Sắp ra mắt',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(36,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',1,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(37,5,36,NULL,NULL,'/products',NULL,0,'Tất cả sản phẩm',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(38,5,36,15,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/batteries',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(39,5,36,NULL,NULL,'/products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(40,5,0,NULL,NULL,'/stores',NULL,0,'Cửa hàng',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(41,5,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(42,5,0,7,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(43,5,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(44,6,0,3,'Botble\\Page\\Models\\Page','/terms-of-use',NULL,0,'Điều khoản sử dụng',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(45,6,0,4,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,0,'Điều khoản và quy định',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(46,6,0,5,'Botble\\Page\\Models\\Page','/refund-policy',NULL,0,'Chính sách hoàn hàng',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(47,6,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'FAQs',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(48,6,0,NULL,NULL,'/nothing',NULL,0,'404 Page',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(49,7,0,2,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(50,7,0,10,'Botble\\Page\\Models\\Page','/affiliate',NULL,0,'Tiếp thị liên kết',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(51,7,0,11,'Botble\\Page\\Models\\Page','/career',NULL,0,'Tuyển dụng',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(52,7,0,8,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Liên hệ',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(53,8,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(54,8,0,NULL,NULL,'/cart',NULL,0,'Giỏ hàng',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(55,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02'),(56,8,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2022-08-04 20:10:02','2022-08-04 20:10:02');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2022-08-04 20:10:01','2022-08-04 20:10:01'),(2,'Quick links','quick-links','published','2022-08-04 20:10:02','2022-08-04 20:10:02'),(3,'Company','company','published','2022-08-04 20:10:02','2022-08-04 20:10:02'),(4,'Business','business','published','2022-08-04 20:10:02','2022-08-04 20:10:02'),(5,'Menu chính','menu-chinh','published','2022-08-04 20:10:02','2022-08-04 20:10:02'),(6,'Liên kết nhanh','lien-ket-nhanh','published','2022-08-04 20:10:02','2022-08-04 20:10:02'),(7,'Công ty','cong-ty','published','2022-08-04 20:10:02','2022-08-04 20:10:02'),(8,'Doanh nghiệp','doanh-nghiep','published','2022-08-04 20:10:02','2022-08-04 20:10:02');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"icon-star\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(2,'icon','[\"icon-laundry\"]',2,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(3,'icon','[\"icon-shirt\"]',16,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(4,'icon','[\"icon-desktop\"]',17,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(5,'icon','[\"icon-lampshade\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(6,'icon','[\"icon-heart-pulse\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(7,'icon','[\"icon-diamond2\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(8,'icon','[\"icon-desktop\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(9,'icon','[\"icon-smartphone\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(10,'icon','[\"icon-baby-bottle\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(11,'icon','[\"icon-baseball\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(12,'icon','[\"icon-book2\"]',35,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(13,'icon','[\"icon-car-siren\"]',36,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:29','2022-08-04 20:09:29'),(14,'icon','[\"icon-wrench\"]',37,'Botble\\Ecommerce\\Models\\ProductCategory','2022-08-04 20:09:30','2022-08-04 20:09:30'),(15,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:45','2022-08-04 20:09:45'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:45','2022-08-04 20:09:45'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:45','2022-08-04 20:09:45'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:45','2022-08-04 20:09:45'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:45','2022-08-04 20:09:45'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:45','2022-08-04 20:09:45'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:45','2022-08-04 20:09:45'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2022-08-04 20:09:46','2022-08-04 20:09:46'),(38,'tablet_image','[\"sliders\\/1-md.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(39,'mobile_image','[\"sliders\\/1-sm.jpg\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(40,'tablet_image','[\"sliders\\/2-md.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(41,'mobile_image','[\"sliders\\/2-sm.jpg\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(42,'tablet_image','[\"sliders\\/3-md.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(43,'mobile_image','[\"sliders\\/3-sm.jpg\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(44,'tablet_image','[\"sliders\\/1-md.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(45,'mobile_image','[\"sliders\\/1-sm.jpg\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(46,'tablet_image','[\"sliders\\/2-md.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(47,'mobile_image','[\"sliders\\/2-sm.jpg\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(48,'tablet_image','[\"sliders\\/3-md.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59'),(49,'mobile_image','[\"sliders\\/3-sm.jpg\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2022-08-04 20:09:59','2022-08-04 20:09:59');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2015_06_18_033822_create_blog_table',1),(6,'2015_06_29_025744_create_audit_history',1),(7,'2016_06_10_230148_create_acl_tables',1),(8,'2016_06_14_230857_create_menus_table',1),(9,'2016_06_17_091537_create_contacts_table',1),(10,'2016_06_28_221418_create_pages_table',1),(11,'2016_10_03_032336_create_languages_table',1),(12,'2016_10_05_074239_create_setting_table',1),(13,'2016_10_07_193005_create_translations_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_05_18_080441_create_payment_tables',1),(18,'2017_07_11_140018_create_simple_slider_table',1),(19,'2017_10_24_154832_create_newsletter_table',1),(20,'2017_11_03_070450_create_slug_table',1),(21,'2018_07_09_221238_create_faq_table',1),(22,'2019_01_05_053554_create_jobs_table',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2019_11_18_061011_create_country_table',1),(25,'2019_12_14_000001_create_personal_access_tokens_table',1),(26,'2020_03_05_041139_create_ecommerce_tables',1),(27,'2020_11_18_150916_ads_create_ads_table',1),(28,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(29,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(30,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(31,'2021_02_16_092633_remove_default_value_for_author_type',1),(32,'2021_02_18_073505_update_table_ec_reviews',1),(33,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(34,'2021_03_10_025153_change_column_tax_amount',1),(35,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(36,'2021_03_27_144913_add_customer_type_into_table_payments',1),(37,'2021_04_28_074008_ecommerce_create_product_label_table',1),(38,'2021_05_24_034720_make_column_currency_nullable',1),(39,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(40,'2021_06_28_153141_correct_slugs_data',1),(41,'2021_07_06_030002_create_marketplace_table',1),(42,'2021_08_02_084121_fix_old_shortcode',1),(43,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(44,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(45,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(46,'2021_09_01_115151_remove_unused_fields_in_ec_products',1),(47,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(48,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(49,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(50,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(51,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(52,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(53,'2021_10_19_020859_update_metadata_field',1),(54,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(55,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(56,'2021_11_23_071403_correct_languages_for_product_variations',1),(57,'2021_11_28_031808_add_product_tags_translations',1),(58,'2021_12_01_031123_add_featured_image_to_ec_products',1),(59,'2021_12_02_035301_add_ads_translations_table',1),(60,'2021_12_03_030600_create_blog_translations',1),(61,'2021_12_03_075608_create_page_translations',1),(62,'2021_12_03_082134_create_faq_translations',1),(63,'2021_12_03_084118_create_location_translations',1),(64,'2021_12_03_094518_migrate_old_location_data',1),(65,'2021_12_06_031304_update_table_mp_customer_revenues',1),(66,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(67,'2022_01_01_033107_update_table_ec_shipments',1),(68,'2022_01_16_085908_improve_plugin_location',1),(69,'2022_02_16_042457_improve_product_attribute_sets',1),(70,'2022_03_22_075758_correct_product_name',1),(71,'2022_04_19_113334_add_index_to_ec_products',1),(72,'2022_04_19_113923_add_index_to_table_posts',1),(73,'2022_04_20_100851_add_index_to_media_table',1),(74,'2022_04_20_101046_add_index_to_menu_table',1),(75,'2022_04_28_144405_remove_unused_table',1),(76,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(77,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(78,'2022_06_16_095633_add_index_to_some_tables',1),(79,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(80,'2022_06_30_035148_create_order_referrals_table',1),(81,'2022_07_07_153354_update_charge_id_in_table_payments',1),(82,'2022_07_10_034813_move_lang_folder_to_root',1),(83,'2022_08_04_051940_add_missing_column_expires_at',1),(84,'2022_08_04_052122_delete_location_backup_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
INSERT INTO `mp_customer_revenues` VALUES (1,5,2,2808.00,0.00,2808.00,0.00,'USD',NULL,'2022-08-03 08:10:09','2022-08-03 08:10:09',0,NULL),(2,2,10,2018.10,0.00,2018.10,0.00,'USD',NULL,'2022-08-02 02:10:09','2022-08-02 02:10:09',0,NULL),(3,2,12,3729.30,0.00,3729.30,2018.10,'USD',NULL,'2022-08-03 18:10:10','2022-08-03 18:10:10',0,NULL),(4,5,13,42.00,0.00,42.00,2808.00,'USD',NULL,'2022-07-24 04:10:10','2022-07-24 04:10:10',0,NULL),(5,10,17,3816.10,0.00,3816.10,0.00,'USD',NULL,'2022-08-01 20:10:10','2022-08-01 20:10:10',0,NULL),(6,7,18,877.80,0.00,877.80,0.00,'USD',NULL,'2022-07-23 04:10:10','2022-07-23 04:10:10',0,NULL),(7,5,21,1230.00,0.00,1230.00,2850.00,'USD',NULL,'2022-07-24 20:10:10','2022-07-24 20:10:10',0,NULL),(8,7,22,1291.50,0.00,1291.50,877.80,'USD',NULL,'2022-07-18 14:10:10','2022-07-18 14:10:10',0,NULL),(9,7,24,601.70,0.00,601.70,2169.30,'USD',NULL,'2022-07-25 10:10:11','2022-07-25 10:10:11',0,NULL),(10,10,25,2351.70,0.00,2351.70,3816.10,'USD',NULL,'2022-07-27 04:10:11','2022-07-27 04:10:11',0,NULL),(11,10,28,3077.70,0.00,3077.70,6167.80,'USD',NULL,'2022-07-23 18:10:11','2022-07-23 18:10:11',0,NULL),(12,10,30,611.60,0.00,611.60,9245.50,'USD',NULL,'2022-08-02 06:10:11','2022-08-02 06:10:11',0,NULL),(13,2,32,2898.50,0.00,2898.50,5747.40,'USD',NULL,'2022-07-08 08:10:11','2022-07-08 08:10:11',0,NULL),(14,7,33,88.28,0.00,88.28,2771.00,'USD',NULL,'2022-07-24 12:10:11','2022-07-24 12:10:11',0,NULL),(15,5,38,594.00,0.00,594.00,4080.00,'USD',NULL,'2022-08-01 14:10:12','2022-08-01 14:10:12',0,NULL),(16,10,39,3816.10,0.00,3816.10,9857.10,'USD',NULL,'2022-07-12 12:10:12','2022-07-12 12:10:12',0,NULL),(17,5,41,1068.90,0.00,1068.90,4674.00,'USD',NULL,'2022-07-07 20:10:12','2022-07-07 20:10:12',0,NULL),(18,10,43,1354.10,0.00,1354.10,13673.20,'USD',NULL,'2022-07-28 12:10:12','2022-07-28 12:10:12',0,NULL),(19,2,44,1963.50,0.00,1963.50,8645.90,'USD',NULL,'2022-07-13 08:10:12','2022-07-13 08:10:12',0,NULL);
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
INSERT INTO `mp_customer_withdrawals` VALUES (1,2,0.00,2985.00,10609.40,'USD','','{\"name\":\"Corbin Schaden\",\"number\":\"+12562624034\",\"full_name\":\"Prof. Shyanne Tromp III\",\"description\":\"Alanna Considine\"}',NULL,0,'pending',NULL,'2022-08-04 20:10:12','2022-08-04 20:10:12',NULL),(2,2,0.00,1877.00,7624.40,'USD','','{\"name\":\"Corbin Schaden\",\"number\":\"+12562624034\",\"full_name\":\"Prof. Shyanne Tromp III\",\"description\":\"Alanna Considine\"}',NULL,0,'pending',NULL,'2022-08-04 20:10:13','2022-08-04 20:10:13',NULL),(3,2,0.00,1444.00,5747.40,'USD','','{\"name\":\"Corbin Schaden\",\"number\":\"+12562624034\",\"full_name\":\"Prof. Shyanne Tromp III\",\"description\":\"Alanna Considine\"}',NULL,0,'completed',NULL,'2022-08-04 20:10:13','2022-08-04 20:10:13',NULL),(4,2,0.00,403.00,4303.40,'USD','','{\"name\":\"Corbin Schaden\",\"number\":\"+12562624034\",\"full_name\":\"Prof. Shyanne Tromp III\",\"description\":\"Alanna Considine\"}',NULL,0,'processing',NULL,'2022-08-04 20:10:13','2022-08-04 20:10:13',NULL),(5,5,0.00,1764.00,5742.90,'USD','','{\"name\":\"Kiara Moen\",\"number\":\"+16789792798\",\"full_name\":\"Earnest Quitzon\",\"description\":\"Wilford Windler\"}',NULL,0,'pending',NULL,'2022-08-04 20:10:13','2022-08-04 20:10:13',NULL),(6,5,0.00,417.00,3978.90,'USD','','{\"name\":\"Kiara Moen\",\"number\":\"+16789792798\",\"full_name\":\"Earnest Quitzon\",\"description\":\"Wilford Windler\"}',NULL,0,'pending',NULL,'2022-08-04 20:10:13','2022-08-04 20:10:13',NULL),(7,5,0.00,469.00,3561.90,'USD','','{\"name\":\"Kiara Moen\",\"number\":\"+16789792798\",\"full_name\":\"Earnest Quitzon\",\"description\":\"Wilford Windler\"}',NULL,0,'completed',NULL,'2022-08-04 20:10:13','2022-08-04 20:10:13',NULL),(8,5,0.00,213.00,3092.90,'USD','','{\"name\":\"Kiara Moen\",\"number\":\"+16789792798\",\"full_name\":\"Earnest Quitzon\",\"description\":\"Wilford Windler\"}',NULL,0,'pending',NULL,'2022-08-04 20:10:14','2022-08-04 20:10:14',NULL),(9,7,0.00,597.00,2859.28,'USD','','{\"name\":\"Juana O\'Hara\",\"number\":\"+13614428273\",\"full_name\":\"Miss Lila Berge\",\"description\":\"Caden Sipes\"}',NULL,0,'pending',NULL,'2022-08-04 20:10:14','2022-08-04 20:10:14',NULL),(10,7,0.00,247.00,2262.28,'USD','','{\"name\":\"Juana O\'Hara\",\"number\":\"+13614428273\",\"full_name\":\"Miss Lila Berge\",\"description\":\"Caden Sipes\"}',NULL,0,'completed',NULL,'2022-08-04 20:10:14','2022-08-04 20:10:14',NULL),(11,10,0.00,979.00,15027.30,'USD','','{\"name\":\"Dr. Santos Hettinger PhD\",\"number\":\"+17264543449\",\"full_name\":\"Fern Krajcik\",\"description\":\"Miss Nellie Wyman PhD\"}',NULL,0,'completed',NULL,'2022-08-04 20:10:14','2022-08-04 20:10:14',NULL),(12,10,0.00,3660.00,14048.30,'USD','','{\"name\":\"Dr. Santos Hettinger PhD\",\"number\":\"+17264543449\",\"full_name\":\"Fern Krajcik\",\"description\":\"Miss Nellie Wyman PhD\"}',NULL,0,'pending',NULL,'2022-08-04 20:10:14','2022-08-04 20:10:14',NULL);
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','stark.ezequiel@example.org','+17868645718','770 Hayes Tunnel Apt. 737','SD','District of Columbia','Port Carmine',2,'stores/1.png','Sequi quia ab id ipsa fuga.','Voluptatem dignissimos maxime officia sit nostrum. Aut eius sed corrupti est et. Et numquam saepe aut sed.','published',NULL,'2022-08-04 20:10:07','2022-08-04 20:10:07'),(2,'Global Office','edward72@example.net','+12543343537','24084 Erik Roads','CF','Mississippi','Thompsonfurt',5,'stores/2.png','Qui officiis totam praesentium quod labore et.','Qui nobis tempore sint odit iusto voluptatibus. Dolorem perferendis ducimus architecto. Et vero repellendus architecto dolores itaque dolores.','published',NULL,'2022-08-04 20:10:07','2022-08-04 20:10:07'),(3,'Young Shop','durgan.jules@example.org','+15419102138','631 Danyka Shore Suite 892','PG','Wyoming','North Mckenzie',7,'stores/3.png','Excepturi eum sit unde saepe.','Et dolorum earum ipsa consequuntur reiciendis sunt odio. Ea suscipit est quas. Ut vitae fugit nihil.','published',NULL,'2022-08-04 20:10:07','2022-08-04 20:10:07'),(4,'Global Store','aurelio47@example.com','+13417086085','671 Tyler Ports','KW','New Hampshire','North Weston',10,'stores/4.png','Rem distinctio praesentium modi reiciendis.','Voluptas ut ratione commodi officiis consequatur cumque. Provident aspernatur non ea nemo. Ratione qui rem porro alias rerum.','published',NULL,'2022-08-04 20:10:07','2022-08-04 20:10:07');
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,3900.40,0.00,10609.40,'$2y$10$rPXAJ41CHC4SqDG/xdI9.O6cNw4ZNgJ8psZ2F4GUxbwrO40VtPD92','{\"name\":\"Corbin Schaden\",\"number\":\"+12562624034\",\"full_name\":\"Prof. Shyanne Tromp III\",\"description\":\"Alanna Considine\"}','2022-08-04 20:10:07','2022-08-04 20:10:13'),(2,5,2879.90,0.00,5742.90,'$2y$10$c3vfWwmAkYuWlweTy0tRc.60P54rxC3pnG11/VQ0MGsaqFfAPQzEa','{\"name\":\"Kiara Moen\",\"number\":\"+16789792798\",\"full_name\":\"Earnest Quitzon\",\"description\":\"Wilford Windler\"}','2022-08-04 20:10:07','2022-08-04 20:10:14'),(3,7,2015.28,0.00,2859.28,'$2y$10$CD17rvqtXVFQLslxP9RUKOHbtsVKHftgVeABzuFsvlp5LlgADsxDi','{\"name\":\"Juana O\'Hara\",\"number\":\"+13614428273\",\"full_name\":\"Miss Lila Berge\",\"description\":\"Caden Sipes\"}','2022-08-04 20:10:07','2022-08-04 20:10:14'),(4,10,10388.30,0.00,15027.30,'$2y$10$LnR1CcyPbwIQBoKXvGfS6.vFxAtqFpBy4Smrf/fmDDWTI2JuM1wem','{\"name\":\"Dr. Santos Hettinger PhD\",\"number\":\"+17264543449\",\"full_name\":\"Fern Krajcik\",\"description\":\"Miss Nellie Wyman PhD\"}','2022-08-04 20:10:07','2022-08-04 20:10:15');
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Free Delivery\" subtitle1=\"For all orders over $99\" icon2=\"icon-sync\" title2=\"90 Days Return\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Secure Payment\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"24/7 Support\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Gift Service\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Deal of the day\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Top Categories\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Featured products\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Download Martfury App Now!\" subtitle=\"Shopping fastly and easily more with our app. Get a link to download the app on your phone.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Subscribe to get information about products and coupons\"][/newsletter-form]</div>',1,NULL,'homepage',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(2,'About us','<p>I believe.\' \'Boots and shoes under the hedge. In another moment down went Alice after it, never once considering how in the kitchen. \'When I\'M a Duchess,\' she said to herself. (Alice had been jumping about like that!\' \'I couldn\'t afford to learn it.\' said the Mock Turtle at last, and they went up to them to be lost: away went Alice after it, \'Mouse dear! Do come back again, and all the jurors had a consultation about this, and after a few yards off. The Cat seemed to Alice again. \'No, I give.</p><p>Mabel, for I know who I WAS when I got up and saying, \'Thank you, it\'s a very difficult game indeed. The players all played at once crowded round it, panting, and asking, \'But who is to France-- Then turn not pale, beloved snail, but come and join the dance. Would not, could not, would not stoop? Soup of the fact. \'I keep them to sell,\' the Hatter grumbled: \'you shouldn\'t have put it to her that she never knew so much already, that it was the first minute or two, they began running when they.</p><p>Cheshire cats always grinned; in fact, I didn\'t know how to begin.\' He looked at Alice, as she fell past it. \'Well!\' thought Alice to herself, and began staring at the top of her hedgehog. The hedgehog was engaged in a great deal to ME,\' said the Eaglet. \'I don\'t believe it,\' said Alice, \'I\'ve often seen them so shiny?\' Alice looked at Alice, as she went hunting about, and shouting \'Off with his whiskers!\' For some minutes the whole court was in March.\' As she said to Alice; and Alice heard.</p><p>I\'d hardly finished the guinea-pigs!\' thought Alice. \'I don\'t see,\' said the Duck: \'it\'s generally a frog or a serpent?\' \'It matters a good many voices all talking together: she made out the answer to shillings and pence. \'Take off your hat,\' the King said to the table to measure herself by it, and they can\'t prove I did: there\'s no use going back to the Gryphon. \'Do you mean \"purpose\"?\' said Alice. \'Off with her head in the world! Oh, my dear paws! Oh my dear paws! Oh my fur and whiskers!.</p>',1,NULL,'default',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(3,'Terms Of Use','<p>Dormouse sulkily remarked, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mouse, frowning, but very glad to find her in the window, and on both sides of it; then Alice, thinking it was too slippery; and when Alice had never had to leave off this minute!\' She generally gave herself very good advice, (though she very good-naturedly began hunting about for them, but they began solemnly dancing round and look up in a Little Bill It was the BEST butter,\' the March Hare took the regular.</p><p>Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Queen, but she ran out of the other was sitting on the song, she kept fanning herself all the arches are gone from this side of WHAT? The other guests had taken advantage of the court. \'What do you know about this business?\' the King said, for about the twentieth time that day. \'A likely story indeed!\' said the White Rabbit was still in existence; \'and now for the hot day made her feel very uneasy: to be almost out of.</p><p>PLEASE mind what you\'re doing!\' cried Alice, quite forgetting her promise. \'Treacle,\' said the Hatter, \'I cut some more tea,\' the March Hare said to herself in a tone of great dismay, and began an account of the others all joined in chorus, \'Yes, please do!\' but the cook and the Queen added to one of them.\' In another moment it was perfectly round, she came rather late, and the others all joined in chorus, \'Yes, please do!\' but the Dodo managed it.) First it marked out a box of comfits.</p><p>Mock Turtle in the distance. \'And yet what a wonderful dream it had been. But her sister kissed her, and the moon, and memory, and muchness--you know you say it.\' \'That\'s nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t take this child away with me,\' thought Alice, as she fell past it. \'Well!\' thought Alice to herself, as she tucked it away under her arm, and timidly said \'Consider, my dear: she is only a mouse that had made the whole head appeared, and then unrolled the parchment.</p>',1,NULL,'default',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(4,'Terms & Conditions','<p>Alice said; \'there\'s a large rabbit-hole under the door; so either way I\'ll get into the sky. Twinkle, twinkle--\"\' Here the Dormouse indignantly. However, he consented to go through next walking about at the door-- Pray, what is the same age as herself, to see it trying in a deep voice, \'What are tarts made of?\' \'Pepper, mostly,\' said the March Hare. \'Exactly so,\' said Alice. \'I\'ve so often read in the court!\' and the Panther received knife and fork with a table set out under a tree in front.</p><p>I to do?\' said Alice. \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Mouse with an M--\' \'Why with an M--\' \'Why with an air of great relief. \'Now at OURS they had been would have appeared to them she heard a voice she had put the Dormouse indignantly. However, he consented to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Cat. \'--so long as I was sent for.\' \'You ought to eat or drink anything; so I\'ll just see what I get\" is the capital of Rome, and.</p><p>I get it home?\' when it saw mine coming!\' \'How do you know that you\'re mad?\' \'To begin with,\' said the Hatter: \'as the things get used to it!\' pleaded poor Alice in a thick wood. \'The first thing she heard one of the moment they saw Alice coming. \'There\'s PLENTY of room!\' said Alice a little wider. \'Come, it\'s pleased so far,\' thought Alice, \'shall I NEVER get any older than I am now? That\'ll be a grin, and she could not help bursting out laughing: and when she had put on your shoes and.</p><p>Knave \'Turn them over!\' The Knave did so, and giving it something out of sight, he said in a pleased tone. \'Pray don\'t trouble yourself to say it over) \'--yes, that\'s about the crumbs,\' said the Queen, pointing to the door, and knocked. \'There\'s no such thing!\' Alice was rather glad there WAS no one could possibly hear you.\' And certainly there was mouth enough for it to annoy, Because he knows it teases.\' CHORUS. (In which the March Hare had just begun to think about it, so she went on, half.</p>',1,NULL,'default',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(5,'Refund Policy','<p>English!\' said the King; and as Alice could see, when she noticed that they could not join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance? \"You can really have no sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as well wait, as she listened, or seemed to have no idea how confusing it is to do with this creature when I got up in such a curious dream, dear, certainly: but now run in to your places!\'.</p><p>The poor little thing howled so, that Alice could see it quite plainly through the neighbouring pool--she could hear the Rabbit hastily interrupted. \'There\'s a great deal of thought, and looked into its eyes again, to see if there are, nobody attends to them--and you\'ve no idea how to spell \'stupid,\' and that you think I must go back by railway,\' she said these words her foot as far down the bottle, she found herself at last came a rumbling of little Alice herself, and fanned herself with one.</p><p>They all made a snatch in the night? Let me see: four times six is thirteen, and four times six is thirteen, and four times five is twelve, and four times six is thirteen, and four times seven is--oh dear! I shall ever see such a simple question,\' added the Hatter, with an M, such as mouse-traps, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess took her choice, and was delighted to find that she ran across the field after it, never.</p><p>White Rabbit; \'in fact, there\'s nothing written on the breeze that followed them, the melancholy words:-- \'Soo--oop of the table, half hoping that the Queen to play with, and oh! ever so many lessons to learn! No, I\'ve made up my mind about it; if I\'m not used to read fairy-tales, I fancied that kind of sob, \'I\'ve tried the effect of lying down on their slates, and then Alice put down her anger as well as I tell you, you coward!\' and at once set to work throwing everything within her reach at.</p>',1,NULL,'default',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(6,'Blog','<p>---</p>',1,NULL,'blog-sidebar',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(7,'FAQs','<div>[faq title=\"Frequently Asked Questions\"][/faq]</div>',1,NULL,'default',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(8,'Contact','<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Contact Us For Any Questions\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>',1,NULL,'full-width',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(10,'Affiliate','<p>King, \'that only makes the matter on, What would become of me? They\'re dreadfully fond of pretending to be Involved in this way! Stop this moment, and fetch me a good deal until she made out what it was: at first she thought it over a little shriek, and went to school in the pool as it settled down again, the cook took the least notice of them say, \'Look out now, Five! Don\'t go splashing paint over me like a snout than a real Turtle.\' These words were followed by a very pretty dance,\' said.</p><p>Caterpillar. Alice thought the whole party at once in a low voice. \'Not at first, perhaps,\' said the Hatter: \'but you could only see her. She is such a fall as this, I shall only look up in a great hurry; \'this paper has just been picked up.\' \'What\'s in it?\' said the King. Here one of the gloves, and she went on, \'you throw the--\' \'The lobsters!\' shouted the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of the jury wrote it down \'important,\' and some of them hit her in a.</p><p>I wonder what I eat\" is the driest thing I ever saw in another minute there was hardly room for her. \'I can tell you more than three.\' \'Your hair wants cutting,\' said the King, and the sound of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Caterpillar sternly. \'Explain yourself!\' \'I can\'t remember half of them--and it belongs to the jury. \'Not yet, not yet!\' the Rabbit angrily. \'Here! Come and help me out of sight. Alice remained looking.</p><p>Indeed, she had but to open it; but, as the White Rabbit read out, at the Lizard as she could. \'The game\'s going on between the executioner, the King, the Queen, \'and he shall tell you what year it is?\' \'Of course you know about this business?\' the King triumphantly, pointing to the company generally, \'You are all pardoned.\' \'Come, THAT\'S a good opportunity for croqueting one of the sort. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said Alice, \'but I know all the while.</p>',1,NULL,'default',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(11,'Career','<p>I must be kind to them,\' thought Alice, \'it\'ll never do to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was THAT like?\' said Alice. \'Call it what you mean,\' said Alice. \'I don\'t know what they\'re like.\' \'I believe so,\' Alice replied in an encouraging tone. Alice looked all round the thistle again; then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' added the Gryphon, sighing in his.</p><p>And he added looking angrily at the frontispiece if you drink much from a Caterpillar The Caterpillar was the first really clever thing the King very decidedly, and he wasn\'t one?\' Alice asked. \'We called him a fish)--and rapped loudly at the frontispiece if you only walk long enough.\' Alice felt so desperate that she was saying, and the Queen\'s shrill cries to the shore, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened.</p><p>GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be collected at once without waiting for turns, quarrelling all the other birds tittered audibly. \'What I was a treacle-well.\' \'There\'s no such thing!\' Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a great letter, nearly as large as the jury had a vague sort of knot, and then said \'The fourth.\' \'Two days wrong!\' sighed the Lory, who at last she spread out her hand, watching the setting sun, and thinking of little.</p><p>And in she went. Once more she found she had plenty of time as she went to the seaside once in her own child-life, and the pair of white kid gloves in one hand and a piece of bread-and-butter in the wind, and the other arm curled round her head. \'If I eat one of these cakes,\' she thought, and rightly too, that very few little girls in my size; and as the whole pack of cards, after all. I needn\'t be afraid of it. Presently the Rabbit whispered in a great interest in questions of eating and.</p>',1,NULL,'default',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(12,'Coming soon','<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2022 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>',1,NULL,'coming-soon',0,NULL,'published','2022-08-04 20:09:59','2022-08-04 20:09:59');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"home-slider\" ads_1=\"VC2C8Q1UGCBG\" ads_2=\"NBDWRXTSVZ8N\"][/simple-slider]</div><div>[site-features icon1=\"icon-rocket\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Cho đơn hàng từ 2tr\" icon2=\"icon-sync\" title2=\"Miễn phí hoàn hàng\" subtitle2=\"If goods have problems\" icon3=\"icon-credit-card\" title3=\"Thanh toán bảo mật\" subtitle3=\"100% secure payment\" icon4=\"icon-bubbles\" title4=\"Hỗ trợ 24/7\" subtitle4=\"Dedicated support\" icon5=\"icon-gift\" title5=\"Dịch vụ gói quà\" subtitle5=\"Support gift service\"][/site-features]</div><div>[flash-sale title=\"Khuyến mãi hot\" flash_sale_id=\"1\"][/flash-sale]</div><div>[featured-product-categories title=\"Danh mục nổi bật\"][/featured-product-categories]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[featured-products title=\"Sản phẩm nổi bật\"][/featured-products]</div><div>[theme-ads key_1=\"Q9YDUIC9HSWS\" key_2=\"IZ6WU8KUALYE\"][/theme-ads]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[product-category-products category_id=\"18\"][/product-category-products]</div><div>[download-app title=\"Tải Martfury App Ngay!\" subtitle=\"Mua sắm nhanh chóng và dễ dàng hơn với ứng dụng của chúng tôi. Nhận liên kết để tải xuống ứng dụng trên điện thoại của bạn.\" screenshot=\"general/app.png\" android_app_url=\"https://www.appstore.com\" ios_app_url=\"https://play.google.com/store\"][/download-app]</div><div>[product-category-products category_id=\"23\"][/product-category-products]</div><div>[newsletter-form title=\"Tham gia bản tin ngay\" subtitle=\"Đăng ký để nhận thông tin về sản phẩm và phiếu giảm giá\"][/newsletter-form]</div>'),('vi',2,'Về chúng tôi',NULL,NULL),('vi',3,'Điều khoản sử dụng',NULL,NULL),('vi',4,'Điều khoản và điều kiện',NULL,NULL),('vi',5,'Điều kiện hoàn hàng',NULL,NULL),('vi',6,'Tin tức',NULL,'<p>---</p>'),('vi',7,'Câu hỏi thường gặp',NULL,'<div>[faq title=\"Các câu hỏi thường gặp\"][/faq]</div>'),('vi',8,'Liên hệ',NULL,'<div>[google-map]502 New Street, Brighton VIC, Australia[/google-map]</div><div>[contact-info-boxes title=\"Liên hệ với chúng tôi nếu bạn có thắc mắc\"][/contact-info-boxes]</div><div>[contact-form][/contact-form]</div>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>'),('vi',10,'Tiếp thị liên kết',NULL,NULL),('vi',11,'Tuyển dụng',NULL,NULL),('vi',12,'Sắp ra mắt',NULL,'<p>Condimentum ipsum a adipiscing hac dolor set consectetur urna commodo elit parturient <br/>molestie ut nisl partu convallier ullamcorpe.</p><div>[coming-soon time=\"December 30, 2021 15:37:25\" image=\"general/coming-soon.jpg\"][/coming-soon]</div>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'5UUJQXJBVO','razorpay',NULL,2222.80,1,'completed','confirm',6,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'ELJZTA8DFX','razorpay',NULL,2808.00,2,'completed','confirm',6,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'2FPYNDQB5K','sslcommerz',NULL,2998.50,3,'completed','confirm',6,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'D6AQOEBZI6','bank_transfer',NULL,3586.70,4,'pending','confirm',6,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'H9UQDTU2TO','razorpay',NULL,2248.80,5,'completed','confirm',6,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'IV8EOUIQHI','razorpay',NULL,2979.10,6,'completed','confirm',6,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'DSXFPWUPWG','paypal',NULL,6249.50,7,'completed','confirm',6,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'WSK8AT870F','cod',NULL,1003.80,8,'pending','confirm',6,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'WXTIJQUXAQ','bank_transfer',NULL,1847.60,9,'pending','confirm',4,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'3SLPIY8AJ6','stripe',NULL,2018.10,10,'completed','confirm',4,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'M2XO43NBJE','paystack',NULL,3628.70,11,'completed','confirm',9,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'ULEGEWCCDZ','mollie',NULL,3729.30,12,'completed','confirm',9,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'XQS8ISN9F1','stripe',NULL,42.00,13,'completed','confirm',9,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'6L8ZFJPDJE','cod',NULL,1760.20,14,'pending','confirm',9,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'OYMW9ANH3B','cod',NULL,2585.10,15,'pending','confirm',9,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'FWMFELXXVQ','paystack',NULL,578.60,16,'completed','confirm',3,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'PLNBWFMWFW','mollie',NULL,3816.10,17,'completed','confirm',3,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'VPTMDMZCGC','mollie',NULL,877.80,18,'completed','confirm',1,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'LHUBDNFTEG','sslcommerz',NULL,2278.60,19,'completed','confirm',1,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'YU012ZH5OF','bank_transfer',NULL,2193.90,20,'pending','confirm',9,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(21,'USD',0,'JKPLYMBECA','sslcommerz',NULL,1230.00,21,'completed','confirm',3,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(22,'USD',0,'GJAZK7IUIR','razorpay',NULL,1291.50,22,'completed','confirm',3,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(23,'USD',0,'DR7IEBZRNY','cod',NULL,1254.00,23,'pending','confirm',4,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(24,'USD',0,'HUZ5XGDA4Z','razorpay',NULL,601.70,24,'completed','confirm',4,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(25,'USD',0,'XHNEXREUGI','stripe',NULL,2351.70,25,'completed','confirm',3,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(26,'USD',0,'YLHAKJRAJ4','cod',NULL,1134.00,26,'pending','confirm',3,NULL,NULL,'2022-08-04 20:10:08','2022-08-04 20:10:08','Botble\\Ecommerce\\Models\\Customer',NULL),(27,'USD',0,'BFQJZCL5XS','stripe',NULL,1675.80,27,'completed','confirm',4,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(28,'USD',0,'8HY6RD8MOR','paystack',NULL,3077.70,28,'completed','confirm',4,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(29,'USD',0,'S9M75TXZ8N','mollie',NULL,1068.90,29,'completed','confirm',4,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(30,'USD',0,'ZTKH4WPH9S','sslcommerz',NULL,611.60,30,'completed','confirm',4,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(31,'USD',0,'IOJANT49KK','paypal',NULL,1675.80,31,'completed','confirm',1,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(32,'USD',0,'EPVRMJQNWO','paypal',NULL,2898.50,32,'completed','confirm',1,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(33,'USD',0,'KP58GLFTKS','mollie',NULL,88.28,33,'completed','confirm',9,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(34,'USD',0,'EA4FUH0DYJ','sslcommerz',NULL,3816.10,34,'completed','confirm',9,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(35,'USD',0,'EBQFG2YBRD','stripe',NULL,2979.10,35,'completed','confirm',9,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(36,'USD',0,'4LU3Z6QPJJ','bank_transfer',NULL,1394.80,36,'pending','confirm',9,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(37,'USD',0,'X7J1LC9CQZ','paystack',NULL,5092.50,37,'completed','confirm',3,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(38,'USD',0,'GCVSCUBX1C','paystack',NULL,594.00,38,'completed','confirm',8,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(39,'USD',0,'NJW0QCBZVL','mollie',NULL,3816.10,39,'completed','confirm',8,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(40,'USD',0,'SMMZRDBW1K','bank_transfer',NULL,1057.10,40,'pending','confirm',8,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(41,'USD',0,'PZBJBS9AR1','sslcommerz',NULL,1068.90,41,'completed','confirm',1,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(42,'USD',0,'ND77XY1SS6','paystack',NULL,1148.70,42,'completed','confirm',1,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(43,'USD',0,'NBLUIWGDBM','paystack',NULL,1354.10,43,'completed','confirm',1,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL),(44,'USD',0,'PAXYEJFGAW','sslcommerz',NULL,1963.50,44,'completed','confirm',1,NULL,NULL,'2022-08-04 20:10:09','2022-08-04 20:10:09','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1,1),(2,4,1),(3,2,2),(4,4,2),(5,1,3),(6,3,3),(7,2,4),(8,3,4),(9,1,5),(10,3,5),(11,2,6),(12,4,6),(13,2,7),(14,4,7),(15,2,8),(16,3,8),(17,2,9),(18,4,9),(19,2,10),(20,4,10),(21,1,11),(22,3,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,2),(7,2,2),(8,3,2),(9,4,2),(10,5,2),(11,1,3),(12,2,3),(13,3,3),(14,4,3),(15,5,3),(16,1,4),(17,2,4),(18,3,4),(19,4,4),(20,5,4),(21,1,5),(22,2,5),(23,3,5),(24,4,5),(25,5,5),(26,1,6),(27,2,6),(28,3,6),(29,4,6),(30,5,6),(31,1,7),(32,2,7),(33,3,7),(34,4,7),(35,5,7),(36,1,8),(37,2,8),(38,3,8),(39,4,8),(40,5,8),(41,1,9),(42,2,9),(43,3,9),(44,4,9),(45,5,9),(46,1,10),(47,2,10),(48,3,10),(49,4,10),(50,5,10),(51,1,11),(52,2,11),(53,3,11),(54,4,11),(55,5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',1816,NULL,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(2,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1204,NULL,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1819,NULL,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1265,NULL,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',281,NULL,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2168,NULL,'2022-08-04 20:09:57','2022-08-04 20:09:57'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1420,NULL,'2022-08-04 20:09:58','2022-08-04 20:09:58'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1390,NULL,'2022-08-04 20:09:58','2022-08-04 20:09:58'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',1197,NULL,'2022-08-04 20:09:58','2022-08-04 20:09:58'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',664,NULL,'2022-08-04 20:09:58','2022-08-04 20:09:58'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',464,NULL,'2022-08-04 20:09:58','2022-08-04 20:09:58');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"marketplace\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\",\"mollie\"]',NULL,NULL),(2,'simple_slider_using_assets','0',NULL,NULL),(3,'permalink-botble-blog-models-post','blog',NULL,NULL),(4,'permalink-botble-blog-models-category','blog',NULL,NULL),(5,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(6,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(7,'theme','martfury',NULL,NULL),(8,'admin_logo','general/logo-light.png',NULL,NULL),(98,'language_hide_default','1',NULL,NULL),(99,'language_switcher_display','dropdown',NULL,NULL),(100,'language_display','all',NULL,NULL),(101,'language_hide_languages','[]',NULL,NULL),(103,'media_random_hash','20a13025dd3855c7a1e697e2a62ac8ff',NULL,NULL),(104,'payment_cod_status','1',NULL,NULL),(105,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(106,'payment_bank_transfer_status','1',NULL,NULL),(107,'payment_bank_transfer_description','Please send money to our bank account: ACB - 1990 8422 19.',NULL,NULL),(108,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(109,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(114,'ecommerce_store_name','Martfury',NULL,NULL),(115,'ecommerce_store_phone','1800979769',NULL,NULL),(116,'ecommerce_store_address','502 New Street',NULL,NULL),(117,'ecommerce_store_state','Brighton VIC',NULL,NULL),(118,'ecommerce_store_city','Brighton VIC',NULL,NULL),(119,'ecommerce_store_country','AU',NULL,NULL),(120,'theme-martfury-site_title','Martfury - Laravel Ecommerce system',NULL,NULL),(121,'theme-martfury-copyright','© 2022 Martfury. All Rights Reserved.',NULL,NULL),(122,'theme-martfury-favicon','general/favicon.png',NULL,NULL),(123,'theme-martfury-logo','general/logo.png',NULL,NULL),(124,'theme-martfury-welcome_message','Welcome to Martfury Online Shopping Store!',NULL,NULL),(125,'theme-martfury-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(126,'theme-martfury-hotline','1800 97 97 69',NULL,NULL),(127,'theme-martfury-email','contact@martfury.co',NULL,NULL),(128,'theme-martfury-payment_methods','[\"general\\/payment-method-1.jpg\",\"general\\/payment-method-2.jpg\",\"general\\/payment-method-3.jpg\",\"general\\/payment-method-4.jpg\",\"general\\/payment-method-5.jpg\"]',NULL,NULL),(129,'theme-martfury-newsletter_image','general/newsletter.jpg',NULL,NULL),(130,'theme-martfury-homepage_id','1',NULL,NULL),(131,'theme-martfury-blog_page_id','6',NULL,NULL),(132,'theme-martfury-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(133,'theme-martfury-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(134,'theme-martfury-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(135,'theme-martfury-number_of_products_per_page','42',NULL,NULL),(136,'theme-martfury-product_feature_1_title','Shipping worldwide',NULL,NULL),(137,'theme-martfury-product_feature_1_icon','icon-network',NULL,NULL),(138,'theme-martfury-product_feature_2_title','Free 7-day return if eligible, so easy',NULL,NULL),(139,'theme-martfury-product_feature_2_icon','icon-3d-rotate',NULL,NULL),(140,'theme-martfury-product_feature_3_title','Supplier give bills for this product.',NULL,NULL),(141,'theme-martfury-product_feature_3_icon','icon-receipt',NULL,NULL),(142,'theme-martfury-product_feature_4_title','Pay online or when receiving goods',NULL,NULL),(143,'theme-martfury-product_feature_4_icon','icon-credit-card',NULL,NULL),(144,'theme-martfury-contact_info_box_1_title','Contact Directly',NULL,NULL),(145,'theme-martfury-contact_info_box_1_subtitle','contact@martfury.com',NULL,NULL),(146,'theme-martfury-contact_info_box_1_details','(+004) 912-3548-07',NULL,NULL),(147,'theme-martfury-contact_info_box_2_title','Headquarters',NULL,NULL),(148,'theme-martfury-contact_info_box_2_subtitle','17 Queen St, Southbank, Melbourne 10560, Australia',NULL,NULL),(149,'theme-martfury-contact_info_box_2_details','',NULL,NULL),(150,'theme-martfury-contact_info_box_3_title','Work With Us',NULL,NULL),(151,'theme-martfury-contact_info_box_3_subtitle','Send your CV to our email:',NULL,NULL),(152,'theme-martfury-contact_info_box_3_details','career@martfury.com',NULL,NULL),(153,'theme-martfury-contact_info_box_4_title','Customer Service',NULL,NULL),(154,'theme-martfury-contact_info_box_4_subtitle','customercare@martfury.com',NULL,NULL),(155,'theme-martfury-contact_info_box_4_details','(800) 843-2446',NULL,NULL),(156,'theme-martfury-contact_info_box_5_title','Media Relations',NULL,NULL),(157,'theme-martfury-contact_info_box_5_subtitle','media@martfury.com',NULL,NULL),(158,'theme-martfury-contact_info_box_5_details','(801) 947-3564',NULL,NULL),(159,'theme-martfury-contact_info_box_6_title','Vendor Support',NULL,NULL),(160,'theme-martfury-contact_info_box_6_subtitle','vendorsupport@martfury.com',NULL,NULL),(161,'theme-martfury-contact_info_box_6_details','(801) 947-3100',NULL,NULL),(162,'theme-martfury-number_of_cross_sale_product','7',NULL,NULL),(163,'theme-martfury-logo_in_the_checkout_page','general/logo-dark.png',NULL,NULL),(164,'theme-martfury-logo_in_invoices','general/logo-dark.png',NULL,NULL),(165,'theme-martfury-logo_vendor_dashboard','general/logo-dark.png',NULL,NULL),(168,'theme-martfury-social-name-1','Facebook',NULL,NULL),(169,'theme-martfury-social-url-1','https://www.facebook.com/',NULL,NULL),(170,'theme-martfury-social-icon-1','fa-facebook',NULL,NULL),(171,'theme-martfury-social-color-1','#3b5999',NULL,NULL),(172,'theme-martfury-social-name-2','Twitter',NULL,NULL),(173,'theme-martfury-social-url-2','https://www.twitter.com/',NULL,NULL),(174,'theme-martfury-social-icon-2','fa-twitter',NULL,NULL),(175,'theme-martfury-social-color-2','#55ACF9',NULL,NULL),(176,'theme-martfury-social-name-3','Instagram',NULL,NULL),(177,'theme-martfury-social-url-3','https://www.instagram.com/',NULL,NULL),(178,'theme-martfury-social-icon-3','fa-instagram',NULL,NULL),(179,'theme-martfury-social-color-3','#E1306C',NULL,NULL),(180,'theme-martfury-social-name-4','Youtube',NULL,NULL),(181,'theme-martfury-social-url-4','https://www.youtube.com/',NULL,NULL),(182,'theme-martfury-social-icon-4','fa-youtube',NULL,NULL),(183,'theme-martfury-social-color-4','#FF0000',NULL,NULL),(184,'theme-martfury-vi-copyright','© 2022 Martfury. Tất cả quyền đã được bảo hộ.',NULL,NULL),(185,'theme-martfury-vi-welcome_message','Chào mừng đến với Martfury - Cửa Hàng Mua Sắm Online!',NULL,NULL),(186,'theme-martfury-vi-homepage_id','1',NULL,NULL),(187,'theme-martfury-vi-blog_page_id','6',NULL,NULL),(188,'theme-martfury-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(189,'theme-martfury-vi-cookie_consent_learn_more_url','http://martfury.test/cookie-policy',NULL,NULL),(190,'theme-martfury-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(191,'theme-martfury-vi-product_feature_1_title','Vận chuyển toàn cầu',NULL,NULL),(192,'theme-martfury-vi-product_feature_2_title','Miễn phí hoàn hàng 7 ngày',NULL,NULL),(193,'theme-martfury-vi-product_feature_3_title','Nhà cung cấp sẽ cấp hóa đơn cho sản phẩm này',NULL,NULL),(194,'theme-martfury-vi-product_feature_4_title','Thanh toán online hoặc trực tiếp',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-08-04 20:09:59','2022-08-04 20:09:59'),(2,1,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-08-04 20:09:59','2022-08-04 20:09:59'),(3,1,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-08-04 20:09:59','2022-08-04 20:09:59'),(4,2,'Slider 1','sliders/1-lg.jpg','/products',NULL,1,'2022-08-04 20:09:59','2022-08-04 20:09:59'),(5,2,'Slider 2','sliders/2-lg.jpg','/products',NULL,2,'2022-08-04 20:09:59','2022-08-04 20:09:59'),(6,2,'Slider 3','sliders/3-lg.jpg','/products',NULL,3,'2022-08-04 20:09:59','2022-08-04 20:09:59');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2022-08-04 20:09:59','2022-08-04 20:09:59'),(2,'Slider trang chủ','slider-trang-chu','Slider chính trên trang chủ','published','2022-08-04 20:09:59','2022-08-04 20:09:59');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-04 20:09:28','2022-08-04 20:09:28'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-04 20:09:28','2022-08-04 20:09:28'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-04 20:09:28','2022-08-04 20:09:28'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-04 20:09:28','2022-08-04 20:09:28'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-04 20:09:28','2022-08-04 20:09:28'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-04 20:09:28','2022-08-04 20:09:28'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2022-08-04 20:09:28','2022-08-04 20:09:28'),(8,'hot-promotions',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(9,'electronics',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(10,'consumer-electronic',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(11,'home-audio-theaters',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(12,'tv-videos',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(13,'camera-photos-videos',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(14,'cellphones-accessories',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(15,'headphones',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(16,'videos-games',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(17,'wireless-speakers',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(18,'office-electronic',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(19,'accessories-parts',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(20,'digital-cables',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(21,'audio-video-cables',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(22,'batteries',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(23,'clothing',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(24,'computers',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(25,'computer-technologies',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(26,'computer-tablets',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(27,'laptop',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(28,'monitors',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(29,'computer-components',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(30,'networking',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(31,'drive-storages',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(32,'gaming-laptop',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(33,'security-protection',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(34,'accessories',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(35,'home-kitchen',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(36,'health-beauty',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(37,'jewelry-watch',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(38,'technology-toys',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(39,'phones',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(40,'babies-moms',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(41,'sport-outdoor',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(42,'books-office',35,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(43,'cars-motorcycles',36,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:29','2022-08-04 20:09:29'),(44,'home-improvements',37,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2022-08-04 20:09:30','2022-08-04 20:09:30'),(45,'dual-camera-20mp',1,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:45','2022-08-04 20:09:45'),(46,'smart-watches',2,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:45','2022-08-04 20:09:45'),(47,'beat-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:45','2022-08-04 20:09:45'),(48,'red-black-headphone',4,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:45','2022-08-04 20:09:45'),(49,'smart-watch-external',5,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:45','2022-08-04 20:09:45'),(50,'nikon-hd-camera',6,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:45','2022-08-04 20:09:45'),(51,'audio-equipment',7,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:45','2022-08-04 20:09:45'),(52,'smart-televisions',8,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(53,'samsung-smart-phone',9,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(54,'herschel-leather-duffle-bag-in-brown-color',10,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(55,'xbox-one-wireless-controller-black-color',11,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(56,'epsion-plaster-printer',12,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(57,'sound-intone-i65-earphone-white-version',13,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(58,'bo-play-mini-bluetooth-speaker',14,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(59,'apple-macbook-air-retina-133-inch-laptop',15,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(60,'apple-macbook-air-retina-12-inch-laptop',16,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(61,'samsung-gear-vr-virtual-reality-headset',17,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(62,'aveeno-moisturizing-body-shower-450ml',18,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(63,'nyx-beauty-couton-pallete-makeup-12',19,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(64,'nyx-beauty-couton-pallete-makeup-12',20,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(65,'mvmth-classical-leather-watch-in-black',21,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(66,'baxter-care-hair-kit-for-bearded-mens',22,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(67,'ciate-palemore-lipstick-bold-red-color',23,'Botble\\Ecommerce\\Models\\Product','products','2022-08-04 20:09:46','2022-08-04 20:09:46'),(68,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-04 20:09:52','2022-08-04 20:09:52'),(69,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-04 20:09:52','2022-08-04 20:09:52'),(70,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-04 20:09:52','2022-08-04 20:09:52'),(71,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-04 20:09:52','2022-08-04 20:09:52'),(72,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-04 20:09:52','2022-08-04 20:09:52'),(73,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2022-08-04 20:09:52','2022-08-04 20:09:52'),(74,'ecommerce',1,'Botble\\Blog\\Models\\Category','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(75,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(76,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(77,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(78,'general',1,'Botble\\Blog\\Models\\Tag','tag','2022-08-04 20:09:57','2022-08-04 20:09:57'),(79,'design',2,'Botble\\Blog\\Models\\Tag','tag','2022-08-04 20:09:57','2022-08-04 20:09:57'),(80,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2022-08-04 20:09:57','2022-08-04 20:09:57'),(81,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2022-08-04 20:09:57','2022-08-04 20:09:57'),(82,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2022-08-04 20:09:57','2022-08-04 20:09:57'),(83,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(84,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(85,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(86,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(87,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:57','2022-08-04 20:10:01'),(88,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:58','2022-08-04 20:10:01'),(89,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:58','2022-08-04 20:10:01'),(90,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:58','2022-08-04 20:10:01'),(91,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:58','2022-08-04 20:10:01'),(92,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:58','2022-08-04 20:10:01'),(93,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2022-08-04 20:09:58','2022-08-04 20:10:01'),(94,'home',1,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(95,'about-us',2,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(96,'terms-of-use',3,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(97,'terms-conditions',4,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(98,'refund-policy',5,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(99,'blog',6,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(100,'faqs',7,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(101,'contact',8,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(102,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(103,'affiliate',10,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(104,'career',11,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(105,'coming-soon',12,'Botble\\Page\\Models\\Page','','2022-08-04 20:09:59','2022-08-04 20:09:59'),(106,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2022-08-04 20:10:07','2022-08-04 20:10:07'),(107,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2022-08-04 20:10:07','2022-08-04 20:10:07'),(108,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2022-08-04 20:10:07','2022-08-04 20:10:07'),(109,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2022-08-04 20:10:07','2022-08-04 20:10:07');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2022-08-04 20:09:57','2022-08-04 20:09:57'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2022-08-04 20:09:57','2022-08-04 20:09:57'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2022-08-04 20:09:57','2022-08-04 20:09:57'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2022-08-04 20:09:57','2022-08-04 20:09:57'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2022-08-04 20:09:57','2022-08-04 20:09:57');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4812 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$MLicObAhbVh.qhRylBLbmeu0uFgDT.SVMLO6.XyesK3If/TT/HnZu',NULL,'2022-08-04 20:10:01','2022-08-04 20:10:01','System','Admin','botble',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','martfury',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Quick links\",\"menu_id\":\"quick-links\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(2,'CustomMenuWidget','footer_sidebar','martfury',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Company\",\"menu_id\":\"company\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(3,'CustomMenuWidget','footer_sidebar','martfury',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Business\",\"menu_id\":\"business\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(4,'BlogSearchWidget','primary_sidebar','martfury',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"Search\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(5,'BlogCategoriesWidget','primary_sidebar','martfury',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(6,'RecentPostsWidget','primary_sidebar','martfury',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(7,'TagsWidget','primary_sidebar','martfury',4,'{\"id\":\"TagsWidget\",\"name\":\"Popular Tags\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(8,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Consumer Electric\",\"categories\":[18,2,3,4,5,6,7]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(9,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Clothing & Apparel\",\"categories\":[8,9,10,11,12]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(10,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Home, Garden & Kitchen\",\"categories\":[13,14,15,16,17]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(11,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[20,21,22,23,24]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(12,'ProductCategoriesWidget','bottom_footer_sidebar','martfury',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Computer & Technologies\",\"categories\":[25,26,27,28,29,19]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(13,'CustomMenuWidget','footer_sidebar','martfury-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft nhanh\",\"menu_id\":\"lien-ket-nhanh\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(14,'CustomMenuWidget','footer_sidebar','martfury-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"C\\u00f4ng ty\",\"menu_id\":\"cong-ty\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(15,'CustomMenuWidget','footer_sidebar','martfury-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Doanh nghi\\u1ec7p\",\"menu_id\":\"doanh-nghiep\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(16,'BlogSearchWidget','primary_sidebar','martfury-vi',1,'{\"id\":\"BlogSearchWidget\",\"name\":\"T\\u00ecm ki\\u1ebfm\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(17,'BlogCategoriesWidget','primary_sidebar','martfury-vi',2,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Danh m\\u1ee5c b\\u00e0i vi\\u1ebft\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(18,'RecentPostsWidget','primary_sidebar','martfury-vi',3,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(19,'TagsWidget','primary_sidebar','martfury-vi',4,'{\"id\":\"TagsWidget\",\"name\":\"Tags ph\\u1ed5 bi\\u1ebfn\"}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(20,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',1,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"\\u0110\\u1ed3 d\\u00f9ng \\u0111i\\u1ec7n t\\u1eed\",\"categories\":[18,2,3,4,5,6,7]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(21,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',2,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Qu\\u1ea7n \\u00e1o & may m\\u1eb7c\",\"categories\":[8,9,10,11,12]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(22,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',3,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"D\\u1ee5ng c\\u1ee5 nh\\u00e0 b\\u1ebfp\",\"categories\":[13,14,15,16,17]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(23,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',4,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"S\\u1ee9c kh\\u1ecfe & l\\u00e0m \\u0111\\u1eb9p\",\"categories\":[20,21,22,23,24]}','2022-08-04 20:10:04','2022-08-04 20:10:04'),(24,'ProductCategoriesWidget','bottom_footer_sidebar','martfury-vi',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"M\\u00e1y t\\u00ednh & c\\u00f4ng ngh\\u1ec7\",\"categories\":[25,26,27,28,29,19]}','2022-08-04 20:10:04','2022-08-04 20:10:04');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-05 10:11:30