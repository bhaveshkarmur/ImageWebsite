/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.11.6-MariaDB : Database - imageproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`imageproject` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;

USE `imageproject`;

/*Table structure for table `animal` */

DROP TABLE IF EXISTS `animal`;

CREATE TABLE `animal` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `animal` */

insert  into `animal`(`id`,`keyword`,`path`) values 
(1,'nature,birds,hamming bird','/Animal/hummingbird-1854225_1280.jpg'),
(2,'Nature,animal,tiger','/Animal/kasturi-roy-x33dnDTe2QQ-unsplash.jpg'),
(3,'Nature,birds,baby','/Animal/pexels-pixabay-162140.jpg'),
(4,'Nature,animal,deer,','/Animal/pexels-pixabay-34231.jpg'),
(5,'nature,animal,squirrel','/Animal/pexels-pixabay-47547.jpg'),
(6,'nature,birds','/Animal/bird-7576994_1280.jpg'),
(7,'nature,animals,turttles','/Animal/pexels-jolo-diaz-3661927.jpg'),
(8,'animals,nature','/Animal/pexels-ivan-cujic-2265247.jpg'),
(9,'birds,nature','/Animal/pexels-zohaib-khan-1045518.jpg'),
(10,'animal,nature,horse','/Animal/pexels-helena-lopes-1996337.jpg'),
(11,'nature,animals,raino','/Animal/pexels-nilina-584181.jpg'),
(12,'nature,birds','/Animal/pexels-pixabay-67225.jpg'),
(13,'nature,swans,birds','/Animal/pexels-anthony-132479.jpg'),
(14,'nature,dog,animal,jerman sepher','/Animal/pexels-summer-stock-333083.jpg'),
(15,'nature,animal,chita','/Animal/pexels-piet-bakker-88234.jpg'),
(16,'nature,raino,animal','/Animal/pexels-frans-van-heerden-631292.jpg'),
(17,'nature,','/Animal/pexels-pixabay-52967.jpg'),
(18,'nature,animal,tiger','/Animal/pexels-waldemar-2541239.jpg'),
(19,'nature,horse,animal','/Animal/pexels-helena-lopes-1996338.jpg'),
(20,'nature,animal,wolf,fox','/Animal/pexels-steve-397857.jpg'),
(21,'nature,birds,flamingo','/Animal/pexels-summer-li-584498.jpg'),
(22,'nature,white hoorse,animal','/Animal/pexels-helena-lopes-1996338.jpg'),
(23,'nature,animal,zebra','/Animal/pexels-pixabay-247376.jpg'),
(24,'nature,lion ,animal','/Animal/pexels-alexas-fotos-2220336.jpg'),
(25,'nature,birds,Rock dove,kabutar,pigeon','/Animal/pexels-ashithosh-u-1406506.jpg'),
(26,'nature,animal,cat','/Animal/pexels-pixabay-248280.jpg'),
(27,'nature,animal,dog','/Animal/pexels-dominika-roseclay-2023384.jpg'),
(28,'nature,crocodile ','/Animal/pexels-pixabay-60644.jpg'),
(29,'nature,birds,peocoke','/Animal/pexels-naushil-_-skyhawk-asia-638738.jpg'),
(30,'nature,kite,birds','/Animal/pexels-pixabay-53581.jpg'),
(31,'Nature,birds,sparrows','/Animal/pexels-daniyal-ghanavati-70069.jpg'),
(32,'Nature,butterfly','/Animal/pexels-debadutta-1046287.jpg'),
(33,'Nature,wolf,animal','/Animal/pexels-pixabay-68669.jpg'),
(34,'Nature,bear,animal','/Animal/pexels-robert-anthony-carbone-598966.jpg'),
(35,'Nature,penguin,birds','/Animal/pexels-pixabay-86405.jpg'),
(36,'Nature,animal.elephants','/Animal/pexels-pixabay-70080.jpg'),
(37,'Nature,monkey,animal','/Animal/pexels-andre-mouton-1207875.jpg'),
(38,'Nature,birds','/Animal/pexels-pixabay-45853.jpg'),
(39,'Nature,animal,leopards ','/Animal/pexels-pixabay-39857.jpg'),
(40,'Nature,dogs,animals','/Animal/pexels-chevanon-photography-1108099.jpg'),
(41,'Nature,dogs,animals','/Animal/pexels-dominika-roseclay-2023384.jpg'),
(42,'Nature,animals,yak','/Animal/pexels-pixabay-139399.jpg'),
(43,'Nature,animals','/Animal/pexels-josiah-farrow-3396657.jpg'),
(44,'Nature,fish,dolphine','/Animal/pexels-pixabay-64219.jpg'),
(45,'Nature,snake','/Animal/pexels-pixabay-45246.jpg'),
(46,'Nature,animal','/Animal/pexels-pixabay-50577.jpg'),
(47,'Nature,animal,tiger','/Animal/Animal.jpg'),
(48,'Nature,animal,birds','/Animal/pexels-pixabay-67225.jpg'),
(49,'Nature,animal,horse','/Animal/pexels-helena-lopes-1996338.jpg'),
(50,'Nature,birds','/Animal/pexels-pixabay-85674.jpg');

/*Table structure for table `animal_seq` */

DROP TABLE IF EXISTS `animal_seq`;

CREATE TABLE `animal_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `animal_seq` */

insert  into `animal_seq`(`next_val`) values 
(1);

/*Table structure for table `business` */

DROP TABLE IF EXISTS `business`;

CREATE TABLE `business` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `business` */

/*Table structure for table `business_seq` */

DROP TABLE IF EXISTS `business_seq`;

CREATE TABLE `business_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `business_seq` */

insert  into `business_seq`(`next_val`) values 
(1);

/*Table structure for table `education` */

DROP TABLE IF EXISTS `education`;

CREATE TABLE `education` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `education` */

insert  into `education`(`id`,`keyword`,`path`) values 
(1,'Education,learning','/Education/istockphoto-1264891547-1024x1024.jpg'),
(2,'Education,learning','/Education/alexander-grey-O2u6gA2esAI-unsplash.jpg'),
(3,'Education,learning','/Education/md-duran-1VqHRwxcCCw-unsplash.jpg'),
(4,'Education,learning','/Education/laptop-3087585_1280.jpg'),
(5,'Education,learning','/Education/istockphoto-1453308201-1024x1024.jpg'),
(6,'Education,learning','/Education/vasily-koloda-8CqDvPuo_kI-unsplash.jpg'),
(7,'Education,learning','/Education/element5-digital-OyCl7Y4y0Bk-unsplash.jpg'),
(8,'Education,learning','/Education/kenny-eliason-zFSo6bnZJTw-unsplash.jpg'),
(9,'Education,learning','/Education/aaron-burden-6jYoil2GhVk-unsplash.jpg'),
(10,'Education,learning','/Education/kimberly-farmer-lUaaKCUANVI-unsplash.jpg'),
(11,'Education,learning','/Education/letters-425004_1280.jpg'),
(12,'Education,learning','/Education/pens-1867899_1280.jpg'),
(13,'Education,learning','/Education/science-1182713_1280.jpg'),
(14,'Education,learning','/Education/istockphoto-1376136521-1024x1024.jpg'),
(15,'Education,learning','/Education/istockphoto-1392742688-1024x1024.jpg'),
(16,'Education,learning','/Education/istockphoto-852859026-1024x1024.jpg'),
(17,'Education,learning','/Education/ivan-aleksic-PDRFeeDniCk-unsplash.jpg'),
(18,'Education,learning','/Education/susan-q-yin-2JIvboGLeho-unsplash.jpg'),
(19,'Education,learning','/Education/child-865116_1280.jpg'),
(20,'Education,learning','/Education/susan-q-yin-2JIvboGLeho-unsplash.jpg');

/*Table structure for table `education_seq` */

DROP TABLE IF EXISTS `education_seq`;

CREATE TABLE `education_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `education_seq` */

insert  into `education_seq`(`next_val`) values 
(1);

/*Table structure for table `food` */

DROP TABLE IF EXISTS `food`;

CREATE TABLE `food` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `food` */

/*Table structure for table `food_seq` */

DROP TABLE IF EXISTS `food_seq`;

CREATE TABLE `food_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `food_seq` */

insert  into `food_seq`(`next_val`) values 
(1);

/*Table structure for table `life_style` */

DROP TABLE IF EXISTS `life_style`;

CREATE TABLE `life_style` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `life_style` */

insert  into `life_style`(`id`,`keyword`,`path`) values 
(1,'Helthy,lifestyle,horse,woman,girl,ridding','/LifeStyle/woman-3432069_1280.jpg'),
(2,'Helthy,lifestyle,travelling,mwn,mountains,river,nature','/LifeStyle/philipp-kammerer-6Mxb_mZ_Q8E-unsplash.jpg'),
(3,'Helthy,lifestyle,girl,running,walking,','/LifeStyle/pexels-nathan-cowley-1199590.jpg'),
(4,'Helthy,lifestyle,men,','/LifeStyle/pexels-bubi-bubi-2709563.jpg'),
(5,'Helthy,lifestyle,bullete,riding','/LifeStyle/lino-9PnaLbcierE-unsplash.jpg'),
(6,'Helthy,lifestyle,skating,girls,cute,road','/LifeStyle/pexels-vidal-balielo-jr-1250643.jpg'),
(7,'Helthy,lifestyle,photography,camera,girl,','/LifeStyle/pexels-david-bartus-610293.jpg'),
(8,'Helthy,lifestyle,music,listing,girl','/LifeStyle/pexels-andrea-piacquadio-783243.jpg'),
(9,'Helthy,lifestyle,swimming,girl','/LifeStyle/pexels-adrienn-1456268.jpg'),
(10,'Helthy,lifestyle,yoga,walking,running','/LifeStyle/gabin-vallet-J154nEkpzlQ-unsplash.jpg'),
(11,'Helthy,lifestyle,morning,bedroom,girl','/LifeStyle/istockphoto-674909778-1024x1024.jpg'),
(12,'Helthy,lifestyle,yoga','/LifeStyle/istockphoto-1292399474-1024x1024.jpg'),
(13,'Helthy,lifestyle,crazy ,girl','/LifeStyle/christopher-campbell-kFCdfLbu6zA-unsplash.jpg'),
(14,'Helthy,lifestyle,photographer,camera,girl','/LifeStyle/pexels-david-bartus-610294.jpg'),
(15,'Helthy,lifestyle,yoga','/LifeStyle/krakenimages-4l8UH4G2_Dg-unsplash.jpg'),
(16,'Helthy,lifestyle,travelling,morning,sunset','/LifeStyle/pexels-roman-odintsov-4553618.jpg'),
(17,'Helthy,lifestyle,running,men','/LifeStyle/pexels-pixabay-235922.jpg'),
(18,'Helthy,lifestyle,traveling,climbing,mountain,girl','/LifeStyle/denys-nevozhai-z0nVqfrOqWA-unsplash.jpg');

/*Table structure for table `life_style_seq` */

DROP TABLE IF EXISTS `life_style_seq`;

CREATE TABLE `life_style_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `life_style_seq` */

insert  into `life_style_seq`(`next_val`) values 
(1);

/*Table structure for table `nature_image` */

DROP TABLE IF EXISTS `nature_image`;

CREATE TABLE `nature_image` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `path` varchar(555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `nature_image` */

insert  into `nature_image`(`id`,`keyword`,`path`) values 
(1,'Nature,jungle,tree','Nature/nature.jpg'),
(2,'Nature,birds,swans','Nature/magda-vrabetz-8EXkwW9VQ78-unsplash.jpg'),
(3,'Nature,mountains,snow','/Nature/sergio-rota-YTqfQv-mTJ4-unsplash.jpg'),
(4,'Nature,boat,river','/Nature/abhishek-prasad-ii0oWs5abCo-unsplash.jpg'),
(5,'Nature,flowers,butterfly,','/Nature/will-klinzman-oaCD9WYdNlU-unsplash.jpg'),
(6,'Nature,farm,lavernder','/Nature/annie-spratt-NrflUuJJK0I-unsplash.jpg'),
(7,'Nature,mountains,snow','/Nature/pexels-invisiblepower-1076885.jpg'),
(8,'Nature,jungle,deer','/Nature/pexels-david-selbert-8100784 (1).jpg'),
(9,'Nature,mountains,river','/Nature/pexels-eberhard-grossgasteiger-534164.jpg'),
(10,'Nature,squirrel','/Nature/pexels-david-selbert-8797307.jpg'),
(11,'Nature,sea,beach','/Nature/pexels-pok-rie-673865.jpg'),
(12,'Nature,mountains,river,sea,village','/Nature/joss-woodhead-3wFRlwS91yk-unsplash.jpg'),
(13,'Nature,birds','/Nature/navi-wCftovTiHnU-unsplash.jpg'),
(14,'Nature,deer','/Nature/bankim-desai-MXGzcZukXbE-unsplash.jpg'),
(15,'Nature,birds,peacoke','/Nature/jorge-salvador-cXJG1h5I8ik-unsplash.jpg'),
(16,'Nature,flowers,rose,pink','/Nature/tamanna-rumee-m8RGewIUa2U-unsplash.jpg'),
(17,'Nature,Parrots,tree','/Nature/danika-perkinson-QxHJ9lkXYNk-unsplash.jpg'),
(18,'Nature,girls','/Nature/cristina-gottardi-Ee0894MAyok-unsplash.jpg'),
(19,'Nature,tiger,animal','/Nature/kasturi-roy-x33dnDTe2QQ-unsplash.jpg'),
(20,'Nature,birds','/Nature/pexels-pixabay-33101.jpg');

/*Table structure for table `nature_image_seq` */

DROP TABLE IF EXISTS `nature_image_seq`;

CREATE TABLE `nature_image_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `nature_image_seq` */

insert  into `nature_image_seq`(`next_val`) values 
(1);

/*Table structure for table `people_and_emotions` */

DROP TABLE IF EXISTS `people_and_emotions`;

CREATE TABLE `people_and_emotions` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `people_and_emotions` */

insert  into `people_and_emotions`(`id`,`keyword`,`path`) values 
(1,'People,immotions,sad,man','People/ben-white-bEbqpPeHEM4-unsplash.jpg'),
(2,'People,immotions,happy,free,','/People/fuu-j-r2nJPbEYuSQ-unsplash.jpg'),
(3,'People,immotions,girls,happy','/People/michael-dam-mEZ3PoFGs_k-unsplash.jpg'),
(4,'People,immotions,group,friends','/People/naassom-azevedo-Q_Sei-TqSlc-unsplash.jpg'),
(5,'People,immotions,baby,girl,holly,colors,cute','/People/senjuti-kundu-JfolIjRnveY-unsplash.jpg'),
(6,'People,immotions,mountains,trip,couple,snow,trip','/People/boxed-water-is-better-1NCcWi24FRs-unsplash.jpg'),
(7,'People,immotions,beautiful,cute,girl','/People/brooke-cagle-emlKHDEydhg-unsplash.jpg'),
(8,'People,immotions,dogs,animals','/People/guilherme-stecanella-upMgUbHSMVU-unsplash.jpg'),
(9,'People,immotions,friends,happy','/People/brooke-cagle-Sy-bpHGSKEs-unsplash.jpg'),
(10,'People,immotions,sad','/People/arash-payam-ww9DO6PsTBE-unsplash.jpg'),
(11,'People,immotions,sad','/People/austin-pacheco-FtL07GM9Q7Y-unsplash.jpg'),
(12,'People,immotions,group,friends','/People/helena-lopes-e3OUQGT9bWU-unsplash.jpg'),
(13,'People,immotions,happy,excited,crazy,girl,cute','/People/brooke-cagle-oTweoxMKdkA-unsplash.jpg'),
(14,'People,immotions,sunset,friends,trip,group','/People/timon-studler-BIk2ANMmNz4-unsplash.jpg'),
(15,'People,immotions,women,girl,cute','/People/analog-portrait-beautiful-woman-posing-artistically-indoors.jpg'),
(16,'People,immotions,sad,couple','/People/istockphoto-1385170818-1024x1024.jpg'),
(17,'People,immotions,gogs,girl,cute,happy','/People/akemy-mory-Rnp-RUW466Y-unsplash.jpg'),
(18,'People,immotions,couple,happy','People/ben-white-1tyzfcJri2g-unsplash.jpg');

/*Table structure for table `people_and_emotions_seq` */

DROP TABLE IF EXISTS `people_and_emotions_seq`;

CREATE TABLE `people_and_emotions_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `people_and_emotions_seq` */

insert  into `people_and_emotions_seq`(`next_val`) values 
(1);

/*Table structure for table `sport` */

DROP TABLE IF EXISTS `sport`;

CREATE TABLE `sport` (
  `id` bigint(20) NOT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `sport` */

/*Table structure for table `sport_seq` */

DROP TABLE IF EXISTS `sport_seq`;

CREATE TABLE `sport_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `sport_seq` */

insert  into `sport_seq`(`next_val`) values 
(1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`email`,`password`,`uname`) values 
(102,'bhaveshkarmur987@gmail.com','QmhhdmVzaA==','bhavesh'),
(103,'bhaveshkarmur987@gmail.com','YmhhdmVzaA==','bhavesh'),
(152,'bhaveshkarmur987@gmail.com','YmhhdmVzaA==','Bhavesh');

/*Table structure for table `user_collection` */

DROP TABLE IF EXISTS `user_collection`;

CREATE TABLE `user_collection` (
  `id` bigint(20) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `collection_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `user_collection` */

insert  into `user_collection`(`id`,`path`,`user_id`,`user_name`,`collection_name`) values 
(102,'/Nature/magda-vrabetz-8EXkwW9VQ78-unsplash.jpg',103,'bhavesh','Birds'),
(103,'/Nature/magda-vrabetz-8EXkwW9VQ78-unsplash.jpg',103,'bhavesh','Nature'),
(152,'/Nature/magda-vrabetz-8EXkwW9VQ78-unsplash.jpg',103,'bhavesh','bhavesh'),
(202,'//Nature/pexels-david-selbert-8100784%20(1).jpg',103,'bhavesh','bhavesh'),
(252,'//People/brooke-cagle-emlKHDEydhg-unsplash.jpg',152,'Bhavesh','Girl'),
(253,'//People/brooke-cagle-emlKHDEydhg-unsplash.jpg',152,'Bhavesh','Cute'),
(254,'//Animal/pexels-waldemar-2541239.jpg',152,'Bhavesh','Cute'),
(255,'//Animal/pexels-waldemar-2541239.jpg',152,'Bhavesh','Animal');

/*Table structure for table `user_collection_seq` */

DROP TABLE IF EXISTS `user_collection_seq`;

CREATE TABLE `user_collection_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `user_collection_seq` */

insert  into `user_collection_seq`(`next_val`) values 
(351);

/*Table structure for table `user_seq` */

DROP TABLE IF EXISTS `user_seq`;

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `user_seq` */

insert  into `user_seq`(`next_val`) values 
(251);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
