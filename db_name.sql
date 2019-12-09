# Host: localhost  (Version 5.5.5-10.1.37-MariaDB)
# Date: 2019-01-23 14:52:53
# Generator: MySQL-Front 6.1  (Build 1.26)


#
# Structure for table "category"
#

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "category"
#

INSERT INTO `category` VALUES (15,0,'roman','asd','asd','true'),(17,0,'bilgisayar','asdasd','asdasd','true'),(21,15,'Korku','heycan stres','korku romanı','true'),(22,15,'romantik','aşk','tutku','true'),(23,17,'yazılım','yazılım kitapları','önemli','true'),(24,0,'gezi kitapları','asd','asdasd','true'),(25,24,'güzel gezi kitapları','güzel','güzel','true'),(26,24,'Türkiye gezi kitapları','güzel kitaplar','iyi kitaplar','true'),(27,0,'üniversite hazırlık','zor soru kitapları','kaliteli sorular','true'),(28,0,'Kişisel Gelişim Kitapları','kişisel gelişim','kişisel','true'),(29,28,'Güzel gelişim kitapları','güzel','güzel','true'),(30,27,'matemaitik kitapları','mat','mat','true'),(31,17,'excel','excel','excel ögrenin','true');

#
# Structure for table "image"
#

DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "image"
#

INSERT INTO `image` VALUES (1,1,'d8f0d7d4aca2f2927196c1d2c88f0f3d.png'),(3,1,'d042d911e40b79e84d03b6bbb2d9ea6c.png'),(4,1,'e17b3819919addc1cec5db353793e809.png'),(5,1,'fca0df9330c58fa76ead7edd8f8eec66.png'),(6,1,'16673e142e5728ca7eb136082ad8f1d4.png'),(7,1,'a4a7c2cb392b81b4f1de9234e92d2176.png'),(9,2,'a83a25d7f06c7f32f4566c68513bd761.jpeg'),(18,8,'3bd4cf8bf2fc285383641c0cd2093a30.jpeg'),(19,10,'b1c214a9059b39603b340052575d9690.jpeg'),(20,13,'8ed87049c79f422775ba2cb388cd669f.jpeg'),(21,13,'532ca0606a6b67308c22793ce6264580.jpeg'),(22,4,'d8a1be834a94d2e6760636afae03a0e4.jpeg'),(32,17,'f87179cc79e3863eea426564281b825c.jpeg'),(33,17,'d6af7ece6f503f5e864478683573b0bf.jpeg'),(34,2,'64875df669ccfbb895adf863f45a6cca.jpeg'),(35,2,'fb0238aed5159fea9200e8a5d7d0b554.png'),(36,2,'fdf595c009e0a2eed69c1f19148292b2.jpeg');

#
# Structure for table "messages"
#

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "messages"
#

INSERT INTO `messages` VALUES (1,'cagris','cagri@cagri','denemes','mesajjjss','görüşüldü','okundu'),(2,'hasan','hasan@hasan','deneme2','nabers',NULL,'okundu'),(3,'cagri','cagri@cagri','deneme','merhaba site güzelmiş',NULL,'okundu'),(4,'mehmet','mehmet@mehmet','site hk.','gerçekten güzel bir site begendim','görüşüldü','okundu'),(5,'irem','irem@irem','önemli','önemli mesaj','görüşüldü','okundu'),(6,'guntekin','guntekin@guntekin','guzel site','baya güzel',NULL,'okundu'),(7,'recep','recep@recep','asdasd','naberrrr',NULL,'okundu');

#
# Structure for table "migration_versions"
#

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# Data for table "migration_versions"
#

INSERT INTO `migration_versions` VALUES ('20181228214011'),('20181229203946'),('20181230132018');

#
# Structure for table "order_detail"
#

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "order_detail"
#

INSERT INTO `order_detail` VALUES (1,6,3,2,NULL,NULL,NULL,'laravel kitabı',NULL),(2,6,3,7,22,NULL,NULL,'java kitabı',NULL),(3,6,3,7,22,3,66,'java kitabı',NULL),(4,6,3,7,22,3,66,'java kitabı',NULL),(5,7,3,2,NULL,NULL,NULL,'laravel kitabı',NULL),(6,7,3,7,22,NULL,NULL,'java kitabı',NULL),(7,7,3,7,22,3,66,'java kitabı',NULL),(8,7,3,7,22,3,66,'java kitabı',NULL),(9,8,3,7,22,2,44,'java kitabı',NULL),(10,9,3,7,22,2,44,'java kitabı',NULL),(11,10,3,3,20,1,20,'yazılım kıtabı',NULL),(12,11,3,3,20,1,20,'yazılım kıtabı',NULL),(13,11,3,7,22,1,22,'java kitabı',NULL),(14,11,3,4,22,1,22,'c#',NULL),(15,11,3,4,22,1,22,'c#',NULL),(16,12,1,1,NULL,5,NULL,'symfony kitabı',NULL),(17,12,1,2,NULL,3,NULL,'laravel kitabı',NULL),(18,12,1,1,NULL,NULL,NULL,'symfony kitabı',NULL),(19,12,1,7,22,NULL,NULL,'java kitabı',NULL),(20,12,1,7,22,3,66,'java kitabı',NULL),(21,12,1,7,22,3,66,'java kitabı',NULL),(22,12,1,7,22,1,22,'java kitabı',NULL),(23,12,1,7,22,1,22,'java kitabı',NULL),(24,12,1,1,NULL,1,NULL,'symfony kitabı',NULL),(25,13,3,7,22,1,22,'java kitabı',NULL),(26,14,1,7,22,1,22,'java kitabı',NULL),(27,14,1,7,22,1,22,'java kitabı',NULL),(28,15,1,7,22,1,22,'java kitabı',NULL),(29,16,3,7,22,1,22,'java kitabı',NULL),(30,16,3,7,22,1,22,'java kitabı',NULL),(31,16,3,7,22,1,22,'java kitabı',NULL),(32,17,1,7,22,1,22,'java kitabı',NULL),(33,18,3,4,22,1,22,'c#',NULL),(34,19,1,1,NULL,1,NULL,'symfony kitabı',NULL),(35,20,1,5,11,1,11,'korku kitabı',NULL),(36,21,3,4,22,1,22,'c#',NULL),(37,22,3,7,22,2,44,'java kitabı',NULL),(38,23,2,2,NULL,3,NULL,'laravel kitabı',NULL),(39,23,2,3,20,4,80,'yazılım kıtabı',NULL),(40,24,3,8,20,1,20,'Genel bilgisayar Kitabı',NULL),(41,25,3,4,22,1,22,'c#',NULL),(42,25,3,8,20,1,20,'Genel bilgisayar Kitabı',NULL),(43,26,3,8,20,1,20,'Genel bilgisayar Kitabı',NULL),(44,27,4,7,22,1,22,'java kitabı',NULL),(45,28,5,9,22,3,66,'Kendinizi Geliştirin',NULL),(46,29,5,5,11,1,11,'korku kitabı',NULL),(47,30,5,4,22,2,44,'c#',NULL),(48,30,5,5,11,2,22,'korku kitabı',NULL),(49,31,7,4,22,2,44,'c#',NULL),(50,32,7,7,22,3,66,'java kitabı',NULL),(51,33,7,6,22,1,22,'Genel Roman',NULL),(52,34,7,7,22,1,22,'java kitabı',NULL),(53,35,11,1,20,1,20,'symfony kitabı',NULL),(54,36,12,11,22,1,22,'romantik kitap',NULL),(55,37,12,12,20,1,20,'Irmagın akışına ölürüm',NULL),(56,38,7,1,20,1,20,'symfony kitabı',NULL),(57,38,7,1,20,1,20,'symfony kitabı',NULL),(58,38,7,1,20,1,20,'symfony kitabı',NULL),(59,38,7,10,20,1,20,'matematik soru bankası',NULL),(60,39,15,8,20,1,20,'Genel bilgisayar Kitabı',NULL),(61,40,15,4,22,1,22,'c#',NULL),(62,41,11,12,20,1,20,'Irmagın akışına ölürüm',NULL),(63,42,3,12,20,3,60,'Irmagın akışına ölürüm',NULL),(64,43,7,5,11,1,11,'korku kitabı',NULL),(65,43,7,10,20,1,20,'matematik soru bankası',NULL),(66,44,16,9,22,1,22,'Kendinizi Geliştirin',NULL),(67,45,17,4,22,1,22,'c#',NULL),(68,46,19,14,40,2,80,'excel ögreniyorum',NULL),(69,47,19,10,20,1,20,'matematik soru bankası',NULL),(70,48,20,4,22,1,22,'c#',NULL),(71,48,20,9,22,1,22,'Kendinizi Geliştirin',NULL),(72,49,7,5,11,1,11,'korku kitabı',NULL),(73,50,7,1,20,3,60,'symfony kitabı',NULL),(74,51,7,1,20,1,20,'symfony kitabı',NULL),(75,52,25,15,28,3,84,'Kendini geliştir',NULL),(76,52,25,9,22,3,66,'Kendinizi Geliştirin',NULL),(77,54,25,4,22,1,22,'c#','ordered'),(78,55,25,11,22,1,22,'romantik kitap','ordered'),(79,56,25,5,11,1,11,'korku kitabı','ordered'),(80,57,25,8,20,1,20,'Genel bilgisayar Kitabı','ordered'),(81,58,25,2,20,1,20,'laravel kitabı','ordered'),(82,59,25,4,22,2,44,'c#','ordered'),(83,60,25,17,40,1,40,'kapsayıcı roman','ordered'),(84,61,27,5,11,1,11,'korku kitabı','ordered'),(85,61,27,15,28,1,28,'Kendini geliştir','ordered'),(86,62,27,14,40,2,80,'excel ögreniyorum','ordered'),(87,63,11,4,22,1,22,'c#','ordered'),(88,64,11,8,20,2,40,'Genel bilgisayar Kitabı','ordered'),(89,64,11,6,22,1,22,'Genel Roman','ordered'),(90,64,11,9,22,1,22,'Kendinizi Geliştirin','ordered');

#
# Structure for table "orders"
#

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "orders"
#

INSERT INTO `orders` VALUES (1,3,66,'ALİ','sa','s',NULL,NULL,'accepted',NULL),(2,3,66,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(3,3,66,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(4,3,66,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(5,3,66,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(6,3,66,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(7,3,66,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(8,3,22,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(9,3,44,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(10,3,20,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,NULL,NULL),(11,3,86,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'new',NULL),(12,1,176,NULL,NULL,NULL,NULL,NULL,'new',NULL),(13,3,22,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'new',NULL),(14,1,44,NULL,NULL,NULL,NULL,NULL,'new',NULL),(15,1,22,NULL,NULL,NULL,NULL,NULL,'new',NULL),(16,3,66,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'new',NULL),(17,1,22,NULL,NULL,NULL,NULL,NULL,'new',NULL),(18,3,22,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'kargoda','  '),(19,1,0,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'refused','  '),(20,1,11,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'new','  2 hafta sonra onayla'),(21,3,22,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'Accepted','  '),(22,3,44,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'Accepted','  '),(23,2,80,'mustafa','güzeltepe','istanbul',NULL,NULL,'Accepted','  '),(24,3,20,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'tamamlanmış','   onaylandı '),(25,3,42,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'Accepted','  '),(26,3,20,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'Accepted','  haftaya gelir'),(27,4,22,'mehmet','güzeltepe','ankara',NULL,NULL,'Accepted','  '),(28,5,66,'mahmut','çırçır mah ısıl sok','ankara',NULL,NULL,'Inshipping','  '),(29,5,11,'mahmut','güzeltepe','ankara',NULL,NULL,'Accepted','  '),(30,5,66,'mahmut','çırçır mah ısıl sok','ankara',NULL,NULL,'Accepted','  '),(31,7,44,'Bumınkagan','yayla sokak','malatya',NULL,NULL,'Accepted','  '),(32,7,66,'Bumınkagan','yayla sokak','malatya',NULL,NULL,'Accepted','  '),(33,7,22,'Bumınkagan','yayla sokak','malatya',NULL,NULL,'Accepted','  '),(34,7,22,'Bumınkagan','yayla sokak','malatya',NULL,NULL,'Accepted','  '),(35,11,20,'recep','dönmez mahallesi','Bayburt',NULL,NULL,'Accepted','  '),(36,12,22,'aysegül','dönmez mahallesi','Ağrı',NULL,NULL,'Accepted','  '),(37,12,20,'aysegül','dönmez mahallesi','Ağrı',NULL,NULL,'Accepted','  '),(38,7,80,'Bumınkagan','yayla sokak','malatya',NULL,NULL,'Accepted','  '),(39,15,20,'faruk','durmus mahallesi','Amasya',NULL,NULL,'Accepted','  '),(40,15,22,'faruk','durmus mahallesi','Amasya',NULL,NULL,'Accepted','  '),(41,11,20,'recep','dönmez mahallesi','Bayburt',NULL,NULL,'Canceled','  '),(42,3,60,'ALİ','çırçır mah ısıl sok','ankara',NULL,NULL,'Accepted','  Güzel seçim kardeşim'),(43,7,31,'Bumınkagan','yayla sokak','malatya',NULL,NULL,'Accepted','  '),(44,16,22,'rahmet','ümraniye','İstanbul',NULL,NULL,'Accepted','  '),(45,17,22,'hamdi','ümraniye','İstanbul',NULL,NULL,'kargoda','  '),(46,19,80,'melih','yalı sokak','Adıyaman',NULL,NULL,'Accepted','  '),(47,19,20,'melih','yalı sokak','Adıyaman',NULL,NULL,'Accepted','  '),(48,20,44,'fatih','cengiztopel caddesi','Bartın',NULL,NULL,'kargoda','  '),(49,7,11,'Bumınkagannn','yayla sokak','Ağrı',NULL,NULL,'Accepted','  '),(50,7,60,'Bumınkagannn','yayla sokak','Ağrı',NULL,NULL,'Accepted','  '),(51,7,20,'Bumınkagannn','yayla sokak','Ağrı',NULL,NULL,'kargoda','  '),(52,25,150,'irem','cengiztopel','Ardahan',NULL,NULL,'Accepted','  '),(53,25,22,'irem','cengiztopel','Ardahan',NULL,NULL,'new','  '),(54,25,22,'irem','cengiztopel','Ardahan',NULL,NULL,'new',NULL),(55,25,22,'irem','cengiztopel','Ardahan',NULL,NULL,'new',NULL),(56,25,11,'irem','cengiztopel','Ardahan','{{app.user.phon',NULL,'refused','  '),(57,25,20,'irem','cengiztopel','Ardahan','1111',NULL,'Accepted','  '),(58,25,20,'irem','cengiztopell','Ardahan','1111',NULL,'Accepted','  '),(59,25,44,'irem','cengiztopell','Ardahan','1111',NULL,'kargoda','  '),(60,25,40,'irem','cengiztopell','Ardahan','1111',NULL,'Accepted','  '),(61,27,39,'güntekin','cengiztopel caddesi','Batman','121212',NULL,'Accepted','  '),(62,27,80,'güntekin','cengiztopel caddesi','Batman','121212',NULL,'Accepted','  '),(63,11,22,'recep','dönmez mahallesi','Bayburt','121212',NULL,'Accepted','  '),(64,11,84,'recep','dönmez mahallesi','Bayburt','121212',NULL,'Accepted','  ');

#
# Structure for table "product"
#

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writer_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "product"
#

INSERT INTO `product` VALUES (1,'symfony kitabı','rrrrrrr',NULL,NULL,NULL,NULL,15,15,20,NULL,NULL,'62a7f43aa05b85114427ccc01ac2cbb6.jpeg',NULL,0,NULL,'true'),(2,'laravel kitabı','asd','dsa',NULL,NULL,NULL,15,11,20,NULL,NULL,'60a5ea9d757dd065091cc47bde40b274.jpeg',NULL,23,NULL,'true'),(3,'yazılım kıtabı','asdsd','wqd',NULL,NULL,NULL,44,15,20,NULL,NULL,'f4748e5a666b99033a96fe9c1f2604d0.png',NULL,18,NULL,'true'),(4,'c#','yazılım','falan filan',NULL,NULL,NULL,15,12,22,NULL,NULL,'2dc4bec2c05c62bc95b8428324b7f587.jpeg',NULL,23,NULL,'true'),(5,'korku kitabı','asdasd','asdasd',NULL,NULL,NULL,11,11,11,NULL,NULL,'463ec166df358b09358af7d993c7aa3b.png',NULL,21,NULL,'true'),(6,'Genel Roman','asd','asd',NULL,NULL,NULL,NULL,22,22,NULL,NULL,'f82bb5ee53fee0418a38f28935b0757b.png',NULL,15,NULL,'true'),(7,'java kitabı','asd','asd',NULL,NULL,NULL,5,11,22,NULL,NULL,'ef52d5280694ce9bd8eda0b9331b0309.png',NULL,23,NULL,'true'),(8,'Genel bilgisayar Kitabı','bilgisayar','güzel kitap',NULL,NULL,NULL,5,11,20,NULL,NULL,'bb29a935997c2ec63924c0131a4d03ac.jpeg',NULL,17,NULL,'true'),(9,'Kendinizi Geliştirin','gelişim','güzel kitap',NULL,NULL,NULL,11,11,22,NULL,NULL,'096492ff3a9ca4bd26f39b9ba55e57cc.png',NULL,29,NULL,'true'),(10,'matematik soru bankası','soru bankası','kaliteli sorular',NULL,NULL,NULL,11,11,20,NULL,'güzel tavsiye edilir','a9e52e2465a60d8e1b9cdf89b4945fbb.jpeg',NULL,30,NULL,'true'),(11,'romantik kitap','romantik','kitap',NULL,NULL,NULL,11,11,22,NULL,NULL,'212f4566ef218bf2991b58a8ee77e068.jpeg',NULL,22,NULL,'true'),(12,'Irmagın akışına ölürüm','Irmagın akışına ölürüm','Türkiye',NULL,NULL,NULL,15,15,20,NULL,NULL,'aa85c1c8f2a79a0384f66358415fb8f7.jpeg',NULL,25,NULL,'true'),(13,'Esen matematik','zor sorular','zor sorular',NULL,NULL,NULL,11,15,20,NULL,NULL,'fe7f91c5a16fcbcd7ea3c6e241b6af29.jpeg',NULL,30,NULL,'true'),(14,'excel ögreniyorum','excel','excel ögrenme kitabı',NULL,NULL,NULL,15,15,40,NULL,'sağlam kitap','c479cd75e7848f2d37fd6c37a5833087.jpeg',NULL,31,NULL,'true'),(15,'Kendini geliştir','geliş','hızlı geliş',NULL,NULL,NULL,15,11,28,NULL,NULL,'332980a84515f8046d778f3e4c30d42b.jpeg',NULL,29,NULL,'true'),(16,'Türkiyeyi tanıyalım','Türkiye kitap','Türkiye gezi kitabı',NULL,NULL,NULL,44,22,50,NULL,'Gerçekten okunması gereken bir kitap','36e4bc8fcece6858f2fa47b565be81ab.png',NULL,26,NULL,'true'),(17,'kapsayıcı roman','güzel roman','güzel roman',NULL,NULL,NULL,5,12,40,NULL,'good','4b0ffd3392e7b08708404ec4b9debe3e.jpeg',NULL,15,NULL,'true');

#
# Structure for table "setting"
#

DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpserver` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpemail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtppassword` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtpport` int(11) DEFAULT NULL,
  `aboutus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci,
  `referances` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "setting"
#

INSERT INTO `setting` VALUES (1,'Online Kitapçınız','asdasdasd','asd','ÇAGRI LTD ŞTİ','DÖNENCE MAHALLESİ','123422221111','05354447878','deneme@gmail.com',NULL,'smtp.gmail.com','1234',587,'Köklü bir kuruluşuz ve kendimizle gurur duyuyoruz.','7/24 HER ZAMAN AÇIĞIZ BİZE İSTEDİĞİNİZ ZAMAN ULAŞABİLİRSİNİZ',NULL,NULL);

#
# Structure for table "shopcart"
#

DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "shopcart"
#

INSERT INTO `shopcart` VALUES (5,NULL,NULL,1),(6,NULL,7,1),(26,3,1,3),(27,3,4,1),(28,23,4,3);

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'hasan@hasan','ROLE_ADMIN','$2y$12$/hZXSBYkos05aMASyDEMA.G.N4G2RckaTt1keO6/Uy6Te0J8OuVNS',NULL,NULL,NULL,NULL,NULL),(2,'murat@murat','ROLE_USER','$2y$12$/hZXSBYkos05aMASyDEMA.G.N4G2RckaTt1keO6/Uy6Te0J8OuVNS',NULL,NULL,NULL,NULL,NULL),(3,'ali@ali','ROLE_USER','$2y$12$/hZXSBYkos05aMASyDEMA.G.N4G2RckaTt1keO6/Uy6Te0J8OuVNS','ALİ','as','çırçır mah ısıl sok','ankara','123123'),(4,'mehmet@mehmet','ROLE_USER','$2y$10$WYf6M0c/EC6fpsxpAM2aW.zS9yAbEPSX3n5qLsjiZewKtXXqO/A7u','mehmet','true',NULL,NULL,NULL),(5,'mahmut@mahmut','ROLE_USER','$2y$10$xnk59b7LQG/zZPtdssPY8.tfBh0vUA1Lcrek2PFly/WvFaAxpgO6.','mahmut','true',NULL,NULL,NULL),(6,'xx@xx','ROLE_USER','$2y$10$TlO0hDNw6uyNUxMWau7in.WQ9XeWbWk1NKd4A2gaIjLfQwYiLMale','xx','true',NULL,NULL,NULL),(7,'bk@bk','ROLE_USER','$2y$10$AqRNkwo//uO1FumyBEWYB.Hyiy6lFqbVtIvedDcvAT42RRq0aivqG','Bumınkagannn','true','yayla sokak','Ağrı','22222'),(8,'senay@senay','ROLE_USER','$2y$10$0E8R.Z6hnDPMUOlAwmWpjOsXgAGhMq.8SnK.xkdHjebSs5uffBq/m','senay','true',NULL,'İzmir','22222'),(11,'recep@recep','ROLE_USER','$2y$10$BvOZgXWJJ7TToHN0RqRp2.0iia.pLuiSfZVKT.PRF4gcjelh3ai2e','recep',NULL,'dönmez mahallesi','Bayburt','121212'),(12,'ayse@ayse','ROLE_USER','$2y$10$xOwponppe.CT3jesmgRQtewXBukEREsGD0hCzlLAGPumLh204suAG','aysegül',NULL,'dönmez mahallesi','Ağrı','121212'),(13,'kutay@kutay','ROLE_USER','$2y$10$/FDqhOzZOc0FcyrhjAGxlepMG3vcJ.AVy.U2m72k5NDpJxN5XeISi','kutay','true','guzelyayla sokak','muş','121212'),(14,'tuncer@tuncer','ROLE_USER','$2y$10$3AGZYRk80MViqCicUbugNundIT/FqBzzFdH.4pt2TPg9xjeSvMn0q','tuncer',NULL,'durmaz mahallesi','Bilecik','121212'),(15,'faruk@faruk','ROLE_USER','$2y$10$px7fDMmKYbJbS36vay6UFu6De1vi6rhCop.fcAhZJPCds0K5rs3I6','faruk','true',NULL,NULL,NULL),(17,'hamdi@hamdi','ROLE_USER','$2y$10$OLcPn5.Nrv8c1BNYPWIAg.3MmFpsV3x9eyms3o3SpyHeb2uqNxFAe','hamdi',NULL,'ümraniye','İstanbul','22222'),(18,'Ebubekir@Ebubekir','ROLE_USER','$2y$10$0VMsp8wLpPWRJYAk9vdpvuHx5lAlQb9MJpw1nxl63irkkxxklJdgG','Ebubekir',NULL,'yalı sokak','Balıkesir','1111'),(19,'melih@melih','ROLE_USER','$2y$10$ZGkB.44D0z9ifKjbi0XWBucRc932ttsu.dwqDmWyGKLEpobNpOXmC','melihhh',NULL,'yalı sokak',NULL,NULL),(20,'fatih@fatih','ROLE_USER','$2y$10$E696qwTXvCXAsi6ap7pbzOZBDPiGrVAJgvVrL4edPA7HvmAoa1zvG','fati',NULL,'güzelyurt',NULL,NULL),(21,'rıdvan@rıdvan','ROLE_USER','$2y$10$kCoDuUL6qNzPmeFgzwL5k.fADMd1xxHhX.4EkdVpw46h/M3ZLVk1W','rıdvan',NULL,'sakalar caddesi','Bartın','44444'),(22,'rasim@rasim','ROLE_USER','$2y$10$gO1QhnRQtpixFdl5nroC0eutPNpWcNBhthbQ69RwAS5bn8LGcDctS','rasim',NULL,'yunusemre mahallesi','Batman','44444'),(23,'buse@buse','ROLE_USER','$2y$10$mStmUNb9feMYygCFZTxaSOARkpNS9lSgtfVW7HSpwL5QUW4C0Je4O','buse',NULL,'atatürk caddesi','Kayseri','05552221144'),(24,'lale@laale','ROLE_USER','$2y$10$2.6Ht39zVnH1LnBi3qbfoefJZKdJUbFyIIOON/8tiOy0KaeidMUcK','lale','true','dönmez mahallesi','maraş','222'),(25,'irem@irem','ROLE_USER','$2y$10$o2XOJq5kKsZXfvCETi4rJuytEwc7FqVDTWfs/RD64NyCeNuz1aJp.','irem','true','durmus mahallesi','Artvin','121212'),(26,'zeynep@zeynep','ROLE_USER','$2y$10$t9tmiDkMncgqdVOz2W1RyOsx/.fYiMTvhZDmlEecoYhyNSgIMnZp2','zeynep',NULL,'güzel sokak','Adıyaman','33333'),(27,'guntekin@guntekin','ROLE_USER','$2y$10$Ego.JQ8GQSqFCa2PWMkrcuX/WBnmQrhrc43TCcWOVHX7AhAwYHlCG','güntekin','true','cengiztopel caddesi','Batman','121212');

#
# Structure for table "users"
#

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# Data for table "users"
#

INSERT INTO `users` VALUES (1,'ahmet','ahmet@ahmet','123','üye','true','2018-12-18 19:35:42','0000-00-00 00:00:00'),(2,'hasan','hasan@hasan','12221','üye','true','2018-12-19 22:06:36','0000-00-00 00:00:00'),(4,'kamil','kamil@kamil','123','kargocu','true','2018-12-20 00:05:03','0000-00-00 00:00:00');
