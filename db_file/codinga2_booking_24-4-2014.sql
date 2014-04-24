-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2014 at 08:34 PM
-- Server version: 5.5.37-log
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codinga2_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
CREATE TABLE IF NOT EXISTS `accommodation` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_subof` int(11) DEFAULT '0',
  `acc_name` varchar(100) DEFAULT NULL,
  `acc_bookingtext` text,
  `acc_texteticket` text,
  `acc_purchaseprice` float DEFAULT '0',
  `acc_saleprice` float DEFAULT '0',
  `acc_originalstock` int(11) DEFAULT '0',
  `acc_actualstock` int(11) DEFAULT '0',
  `acc_hoteldate` date DEFAULT NULL,
  `acc_payeddate` date DEFAULT NULL,
  `acc_deadline` date DEFAULT NULL,
  `acc_admintext` text,
  `location_id` int(11) DEFAULT '0',
  `photo_id` int(11) DEFAULT NULL,
  `acc_rt_id` int(11) DEFAULT NULL,
  `acc_ftv_id` int(11) DEFAULT NULL,
  `classification_id` int(11) DEFAULT NULL,
  `acc_supplier_id` int(11) DEFAULT NULL,
  `acc_status` tinyint(1) DEFAULT '0',
  `acc_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`acc_id`),
  KEY `fk_accomodations_photo1` (`photo_id`),
  KEY `fk_accomodations_classification1` (`classification_id`),
  KEY `fk_accomodations_festival1` (`acc_ftv_id`),
  KEY `fk_accomodations_room_types1` (`acc_rt_id`),
  KEY `acc_supplier_id` (`acc_supplier_id`),
  KEY `fk_accommodation_location1` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`acc_id`, `acc_subof`, `acc_name`, `acc_bookingtext`, `acc_texteticket`, `acc_purchaseprice`, `acc_saleprice`, `acc_originalstock`, `acc_actualstock`, `acc_hoteldate`, `acc_payeddate`, `acc_deadline`, `acc_admintext`, `location_id`, `photo_id`, `acc_rt_id`, `acc_ftv_id`, `classification_id`, `acc_supplier_id`, `acc_status`, `acc_deleted`) VALUES
(13, 0, 'Neak Meas Hotel', 'test', 'test', 21, 23, 32, 34, '2014-03-14', '2014-03-14', '2014-03-14', 'test', 4, 2, NULL, 1, 3, 2, 1, 1),
(15, 0, 'Nagaworld', 'gggg', 'ggg', 21, 12, 32, 45, '2014-03-13', '2014-03-13', '2014-03-14', 'ggg', 4, 1, NULL, 1, 2, 1, 1, 0),
(16, 0, 'Sokha Hotel', 'bbbb', 'bbbb', 21, 300, 32, 22, '2014-03-14', '2014-03-15', '2014-03-15', 'bbbb', 4, 14, 3, 1, 2, 2, 1, 0),
(17, 16, 'Nagaworld', 'bbbb', 'bbbb', 21, 300, 32, 22, '2014-03-14', '2014-03-15', '2014-03-15', 'bbbb', 4, 1, 1, 1, 2, 2, 1, 0),
(18, 15, 'ddd', 'bbbb', 'bbbb', 21, 300, 32, 22, '2014-03-14', '2014-03-15', '2014-03-15', 'bbbb', 4, 1, 1, 1, 2, 2, 1, 0),
(19, 13, 'eee', 'bbbb', 'bbbb', 21, 300, 32, 22, '2014-03-14', '2014-03-15', '2014-03-15', 'bbbb', 4, 1, 1, 1, 2, 2, 1, 0),
(20, 0, 'Royal', 'Royal Hotel', 'Royal Hotel', 12, 23, 32, 45, '2014-04-21', '2014-04-21', '2014-04-21', 'Royal Hotel', 1, 14, 3, 4, 3, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acc_calendar`
--

DROP TABLE IF EXISTS `acc_calendar`;
CREATE TABLE IF NOT EXISTS `acc_calendar` (
  `accca_id` int(11) NOT NULL AUTO_INCREMENT,
  `accomodations_id` int(11) DEFAULT NULL,
  `calendar_available_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`accca_id`),
  KEY `fk_acc_calendar_accomodations1` (`accomodations_id`),
  KEY `fk_acc_calendar_calendar_available1` (`calendar_available_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `acc_calendar`
--

INSERT INTO `acc_calendar` (`accca_id`, `accomodations_id`, `calendar_available_id`) VALUES
(1, 13, 6),
(2, 15, 8),
(3, 16, 9),
(4, 17, 2),
(5, 18, 3),
(6, 19, 4),
(7, 13, 2),
(8, 20, 29);

-- --------------------------------------------------------

--
-- Table structure for table `acc_fac`
--

DROP TABLE IF EXISTS `acc_fac`;
CREATE TABLE IF NOT EXISTS `acc_fac` (
  `accfac_id` int(11) NOT NULL AUTO_INCREMENT,
  `accomodations_id` int(11) DEFAULT NULL,
  `facilities_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`accfac_id`),
  KEY `fk_acc_fac_accomodations1` (`accomodations_id`),
  KEY `fk_acc_fac_facilities1` (`facilities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `acc_fac`
--

INSERT INTO `acc_fac` (`accfac_id`, `accomodations_id`, `facilities_id`) VALUES
(1, 13, 1),
(2, 13, 2),
(5, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
CREATE TABLE IF NOT EXISTS `activities` (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_subof` int(11) DEFAULT '0',
  `act_cherge_subact` tinyint(1) DEFAULT NULL,
  `act_name` varchar(100) DEFAULT NULL,
  `act_bookingtext` text,
  `act_texteticket` text,
  `act_purchaseprice` float DEFAULT NULL,
  `act_saleprice` float DEFAULT '0',
  `act_originalstock` int(5) DEFAULT '0',
  `act_actualstock` int(5) DEFAULT '0',
  `act_choiceitem` tinyint(1) DEFAULT NULL,
  `act_organiserdate` varchar(45) DEFAULT NULL,
  `act_payeddate` varchar(45) DEFAULT NULL,
  `act_deadline` varchar(45) DEFAULT NULL,
  `act_admintext` text,
  `photo_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `act_ftv_id` int(11) DEFAULT NULL,
  `act_supplier_id` tinyint(1) DEFAULT NULL,
  `act_status` tinyint(1) DEFAULT '0',
  `act_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`act_id`),
  KEY `fk_activities_photo1` (`photo_id`),
  KEY `fk_activities_location1` (`location_id`),
  KEY `fk_activities_festival1` (`act_ftv_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`act_id`, `act_subof`, `act_cherge_subact`, `act_name`, `act_bookingtext`, `act_texteticket`, `act_purchaseprice`, `act_saleprice`, `act_originalstock`, `act_actualstock`, `act_choiceitem`, `act_organiserdate`, `act_payeddate`, `act_deadline`, `act_admintext`, `photo_id`, `location_id`, `act_ftv_id`, `act_supplier_id`, `act_status`, `act_deleted`) VALUES
(1, 0, NULL, 'Football match', 'Tourism brings in large amounts of income into a local economy in the form of payment for goods and services needed by tourists, accounting for 30% of the world''s trade of services, ', 'It also creates opportunities for employment in the service sector of the economy associated with tourism', 34, 33, 44, 67, 1, '2014-03-13', '2014-03-13', '2014-03-13', 'The service industries which benefit from tourism include transportation services, such as airlines, cruise ships, and taxicabs; hospitality services.', 18, 4, 1, 1, 1, 0),
(2, 0, NULL, 'Play Tennis', 'This is in addition to goods bought by tourists, including souvenirs, clothing and other supplies.', ' Although the touristic-drive seems to be inherent to almost all cultures and times, Korstanje explains that only by the influence of Norse Mythology, ', 111, 300, 32, 45, 1, '2014-03-13', '2014-03-13', '2014-03-13', 'the Grand-tour was accepted as a common-practice in England and Europe later.', 32, 4, 1, 2, 1, 0),
(3, 0, NULL, 'Boat Trip', 'Boating is the leisurely activity of travelling by boat, or the recreational use of a boat whether powerboats, sailboats, or man-powered vessels (such as rowing and paddle boats), focused on the travel itself, as well as sports activities, such as fishing or waterskiing. It is a popular activity, and there are millions of boaters worldwide.', 'The National Marine Manufacturers Association, the organization that establishes several of the standards that are commonly used in the marine industry in the United States, defines 32 types of boats, demonstrating the diversity of boat types and their specialization.', 12, 23, 35, 34, 0, '2014-03-12', '2014-03-12', '2014-03-13', ' In addition to those standards all boats employ the same basic principles of hydrodynamics.', 21, 4, 1, 2, 1, 0),
(4, 0, NULL, 'Meseum', 'This city was once a capital of Baekje. This museum displays and preserves the relics excavated from the site where there had been Mireuksaji Buddhist temple before in Iksan, South Korea.', 'It holds different cultural events and summer school for students. Through this, it puts a lot of effort to be a national museum. ', 12, 300, 32, 45, 1, '2014-03-12', '2014-03-12', '2014-03-13', 'Also it runs various exhibitions and seminars. I', 18, 4, 1, 2, 1, 0),
(21, 0, NULL, 'Mountain pass', 'A mountain pass is a route through a mountain range or over a ridge. If following the lowest possible route, a pass is locally the highest point on that route.', 'Since many of the world''s mountain ranges have presented formidable barriers to travel, passes have been important since before recorded history, and have played a key role in trade, war, and migration.', 23, 34, 23, 34, 1, '2014-03-14', '2014-03-14', '2014-03-15', 'Mountain passes make use of a gap, saddle or col (also sometimes a notch, the low point in a ridge. A topographic saddle is analogous to the mathematical concept of a saddle surface, ', 11, 4, 1, 2, 1, 0),
(22, 0, NULL, 'Ride a bike', 'The Great Victorian Bike Ride (GVBR), commonly known as The Great Vic, is a non-competitive fully supported nine-day annual bicycle touring event organised by Bicycle Network Victoria (BNV)', 'The GVBR takes different routes around the countryside of the state of Victoria, Australia each year.', 21, 12, 32, 67, 1, '2014-03-14', '2014-03-14', '2014-03-15', 'The total ride distance is usually in the range of 550 kilometres (340 mi), averaging about 70 kilometres (43 mi) a day excluding the rest day', 16, 4, 1, 2, 1, 0),
(24, 3, NULL, 'Karaoke', 'Originating in Finland in 2003 with 7 countries, the Karaoke World Championships are an international karaoke competition, featuring nearly 30 countries worldwide in 2007.', 'National trials are conducted in each participating country every year with the winners competing in the international finals for the titles of male & female Karaoke World Champions', 12, 12, 35, 34, 1, '2014-03-14', '2014-03-14', '2014-03-15', 'Finland was the host country for the international finals from 2003 until 2005. In 2006, the finals were held aboard the M/S Galaxy whilst cruising the Baltic Sea from Helsinki to Estonia return.', 2, 4, 1, 2, 1, 0),
(25, 4, NULL, 'Dancing', 'Dancing with the Stars is the name of several international television series based on the format of the British TV series Strictly Come Dancing, which is distributed by BBC Worldwide, the commercial arm of the BBC. ', 'Currently the format has been licensed to over 42 territories', 12, 23, 34, 22, 1, '2014-03-14', '2014-03-14', '2014-03-15', 'Australia was the first country to adapt the show which turned out to be a huge success with veteran Australian TV host Daryl Somers taking the show live to air once a week.', 2, 4, 1, 1, 1, 0),
(26, 3, NULL, 'Cleaning the city place ', 'A cleaning event is a phenomenon whereby dust is removed from solar panels, particularly ones on Mars, by the action of wind.', 'The term cleaning event is used on several NASA webpages; ', 12, 23, 23, 45, 1, '2014-03-14', '2014-03-15', '2014-03-16', 'generally the term is used in reference to the fact that Martian winds have blown dust clear off the solar panels of probes on Mars increasing their energy output', 2, 4, 1, 3, 1, 0),
(33, 29, 1, 'Plants', 'Plants, also called green plants (Viridiplantae in Latin), are living multicellular organisms of the kingdom Plantae. ', 'They form a clade that includes the flowering plants, conifers and other gymnosperms, ferns, clubmosses,', 12, 15, 10, 10, 1, '2014-03-18', '2014-03-20', '2014-03-21', 'Green plants have cell walls with cellulose and characteristically obtain most of their energy from sunlight via photosynthesis using chlorophyll contained in chloroplasts,', 2, 4, 1, 2, 1, 0),
(34, 0, NULL, 'Running arount Wat Phnom', '"Running Up That Hill" is a song by the English singer-songwriter Kate Bush. It was the first single from her 1985 album Hounds of Love, released in the UK on 5 August 1985. It was her first 12" single.', 'It was the most successful of Bush''s 1980s releases, entering the UK chart at No. 9 and eventually peaking at No. 3, her second-highest single peak.', 12, 23, 32, 45, 1, '2014-04-07', '2014-04-09', '2014-04-09', 'The single also had an impact in the United States, providing Bush with her first chart hit there since 1978, where it reached the top 30, ', 19, 2, 9, 1, 1, 0),
(35, 34, 1, 'Cycling', 'Cycling infrastructure refers to all infrastructure which may be used by cyclists. ', 'This includes the same network of roads and streets used by motorists, except those roads from which cyclists have been banned', 12, 23, 32, 45, 1, '', '2014-04-08', '2014-04-10', 'The manner in which the public roads network is designed, built and managed can have a significant effect on the utility and safety of cycling.', 3, 2, 17, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acti_calendar`
--

DROP TABLE IF EXISTS `acti_calendar`;
CREATE TABLE IF NOT EXISTS `acti_calendar` (
  `actcca_id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_available_id` int(11) DEFAULT NULL,
  `activities_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`actcca_id`),
  KEY `fk_acc_calendar_calendar_available10` (`calendar_available_id`),
  KEY `fk_acti_calendar_activities1` (`activities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `acti_calendar`
--

INSERT INTO `acti_calendar` (`actcca_id`, `calendar_available_id`, `activities_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 10, 21),
(6, 11, 22),
(7, 1, 24),
(8, 2, 25),
(9, 2, 26),
(10, 27, 34),
(11, 28, 35);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `bk_id` int(11) NOT NULL AUTO_INCREMENT,
  `bk_type` varchar(50) DEFAULT NULL,
  `bk_date` date DEFAULT NULL,
  `bk_arrival_date` date DEFAULT NULL,
  `bk_total_people` int(11) DEFAULT '0',
  `bk_pay_date` date DEFAULT NULL,
  `bk_addmoreservice` longtext,
  `bk_pay_price` float DEFAULT '0',
  `bk_pay_status` tinyint(1) DEFAULT '0',
  `bk_status` tinyint(1) DEFAULT '0',
  `bk_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`bk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bk_id`, `bk_type`, `bk_date`, `bk_arrival_date`, `bk_total_people`, `bk_pay_date`, `bk_addmoreservice`, `bk_pay_price`, `bk_pay_status`, `bk_status`, `bk_deleted`) VALUES
(1, 'package', '2014-04-03', '2014-04-06', 2, '2014-04-03', NULL, 100, 1, 1, 1),
(2, 'customize', '2014-04-05', '2014-04-08', 4, '2014-04-05', NULL, 150, 1, 1, 0),
(3, 'package', '2014-04-04', '2014-04-08', 3, '2014-04-04', NULL, 200, 1, 1, 0),
(4, 'package', '2014-04-02', '2014-04-03', 2, '2014-04-03', NULL, 3, 1, 1, 0),
(5, 'package', '2014-04-03', '2014-04-03', 10, '2014-04-03', 'a:2:{i:4;a:55:{s:5:"ep_id";s:1:"4";s:7:"ep_name";s:6:"ticket";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:6:"ticket";s:14:"ep_etickettext";s:6:"ticket";s:8:"photo_id";s:1:"2";s:11:"supplier_id";s:1:"3";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"45";s:16:"ep_originalstock";s:2:"65";s:14:"ep_actualstock";s:3:"144";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:6:"ticket";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";N;s:9:"sup_fname";N;s:9:"sup_lname";N;s:16:"sup_company_name";N;s:14:"sup_occupation";N;s:10:"sup_sector";N;s:21:"sup_service_provision";N;s:11:"sup_country";N;s:8:"sup_city";N;s:11:"sup_address";N;s:12:"sup_postcode";N;s:9:"sup_email";N;s:11:"sup_website";N;s:9:"sup_phone";N;s:14:"sup_home_phone";N;s:11:"sup_deleted";N;s:8:"ep_cl_id";s:1:"4";s:21:"calendar_available_id";s:1:"4";s:15:"extraproduct_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:5;a:55:{s:5:"ep_id";s:1:"5";s:7:"ep_name";s:6:"toktok";s:12:"ep_perperson";s:1:"0";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:6:"toktok";s:14:"ep_etickettext";s:6:"toktok";s:8:"photo_id";s:1:"2";s:11:"supplier_id";s:1:"4";s:16:"ep_purchaseprice";s:2:"12";s:12:"ep_saleprice";s:2:"32";s:16:"ep_originalstock";s:2:"33";s:14:"ep_actualstock";s:2:"23";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:6:"toktok";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"4";s:9:"sup_fname";s:4:"rany";s:9:"sup_lname";s:2:"ra";s:16:"sup_company_name";s:4:"Rany";s:14:"sup_occupation";s:6:"tester";s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:4:"test";s:11:"sup_country";s:2:"pp";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"899";s:9:"sup_email";s:14:"rany@gmail.com";s:11:"sup_website";s:8:"rany.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:8:"09876542";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";N;s:21:"calendar_available_id";N;s:15:"extraproduct_id";N;s:5:"ca_id";N;s:6:"monday";N;s:7:"tuesday";N;s:9:"wednesday";N;s:8:"thursday";N;s:6:"friday";N;s:8:"saturday";N;s:6:"sunday";N;s:10:"start_date";N;s:8:"end_date";N;s:10:"start_time";N;s:8:"end_time";N;s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}', 154, 0, 1, 0),
(6, 'package', '2014-04-04', '2014-04-05', 23, '2014-04-05', NULL, 65, 1, 1, 0),
(8, 'package', '2014-04-04', '2014-04-06', 2, '2014-04-04', 'a:2:{i:4;a:55:{s:5:"ep_id";s:1:"4";s:7:"ep_name";s:6:"ticket";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:6:"ticket";s:14:"ep_etickettext";s:6:"ticket";s:8:"photo_id";s:1:"2";s:11:"supplier_id";s:1:"3";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"45";s:16:"ep_originalstock";s:2:"65";s:14:"ep_actualstock";s:3:"144";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:6:"ticket";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";N;s:9:"sup_fname";N;s:9:"sup_lname";N;s:16:"sup_company_name";N;s:14:"sup_occupation";N;s:10:"sup_sector";N;s:21:"sup_service_provision";N;s:11:"sup_country";N;s:8:"sup_city";N;s:11:"sup_address";N;s:12:"sup_postcode";N;s:9:"sup_email";N;s:11:"sup_website";N;s:9:"sup_phone";N;s:14:"sup_home_phone";N;s:11:"sup_deleted";N;s:8:"ep_cl_id";s:1:"4";s:21:"calendar_available_id";s:1:"4";s:15:"extraproduct_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:5;a:55:{s:5:"ep_id";s:1:"5";s:7:"ep_name";s:6:"toktok";s:12:"ep_perperson";s:1:"0";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:6:"toktok";s:14:"ep_etickettext";s:6:"toktok";s:8:"photo_id";s:1:"2";s:11:"supplier_id";s:1:"4";s:16:"ep_purchaseprice";s:2:"12";s:12:"ep_saleprice";s:2:"32";s:16:"ep_originalstock";s:2:"33";s:14:"ep_actualstock";s:2:"23";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:6:"toktok";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"4";s:9:"sup_fname";s:4:"rany";s:9:"sup_lname";s:2:"ra";s:16:"sup_company_name";s:4:"Rany";s:14:"sup_occupation";s:6:"tester";s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:4:"test";s:11:"sup_country";s:2:"pp";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"899";s:9:"sup_email";s:14:"rany@gmail.com";s:11:"sup_website";s:8:"rany.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:8:"09876542";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";N;s:21:"calendar_available_id";N;s:15:"extraproduct_id";N;s:5:"ca_id";N;s:6:"monday";N;s:7:"tuesday";N;s:9:"wednesday";N;s:8:"thursday";N;s:6:"friday";N;s:8:"saturday";N;s:6:"sunday";N;s:10:"start_date";N;s:8:"end_date";N;s:10:"start_time";N;s:8:"end_time";N;s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}', 154, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `calendar_available`
--

DROP TABLE IF EXISTS `calendar_available`;
CREATE TABLE IF NOT EXISTS `calendar_available` (
  `ca_id` int(11) NOT NULL AUTO_INCREMENT,
  `monday` tinyint(1) DEFAULT '0',
  `tuesday` tinyint(1) DEFAULT '0',
  `wednesday` tinyint(1) DEFAULT '0',
  `thursday` tinyint(1) DEFAULT '0',
  `friday` tinyint(1) DEFAULT '0',
  `saturday` tinyint(1) DEFAULT '0',
  `sunday` tinyint(1) DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` varchar(45) DEFAULT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ca_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `calendar_available`
--

INSERT INTO `calendar_available` (`ca_id`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `start_date`, `end_date`, `start_time`, `end_time`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, '2014-03-17', '2014-03-21', '1:00 AM', '6:00 PM'),
(2, 1, 1, 1, 1, 1, 1, 1, '2014-03-17', '2014-03-21', '1:00 AM', '2:00 AM'),
(3, 1, 1, 1, 1, 1, 1, 1, '2014-03-17', '2014-03-21', '1:00 AM', '3:00 AM'),
(4, 1, 1, 1, 1, 1, 1, 1, '2014-03-17', '2014-03-21', '1:00 AM', '3:00 AM'),
(5, 1, 1, 1, 1, 1, 1, 1, '2014-03-17', '2014-03-21', '1:00 AM', '3:00 AM'),
(6, 1, 1, 1, 1, 1, 1, 1, '2014-03-13', '2014-03-30', '1:00 AM', '3:00 AM'),
(7, 1, 1, 1, 1, 1, 1, 1, '2014-03-13', '2014-03-14', '1:00 AM', '4:00 AM'),
(8, 1, 1, 1, 1, 1, 1, 1, '2014-03-13', '2014-03-30', '1:00 AM', '4:00 AM'),
(9, 0, 1, 0, 0, 0, 0, 0, '2014-03-13', '2014-03-30', '1:00 AM', '9:00 AM'),
(10, 1, 1, 1, 1, 1, 1, 1, '2014-03-13', '2014-03-27', '2:00 AM', '5:00 AM'),
(11, 1, 1, 1, 1, 1, 1, 1, '2014-03-10', '2014-03-16', '2:00 AM', '11:00 PM'),
(12, 1, 1, 1, 1, 1, 1, 1, '2014-03-13', '2014-03-15', '1:00 AM', '5:00 AM'),
(13, 1, 1, 1, 1, 1, 1, 1, '2014-03-13', '2014-03-14', '1:00 AM', '4:00 AM'),
(14, 1, 1, 1, 1, 1, 1, 1, '2014-03-20', '2014-03-22', '1:00 AM', '7:00 AM'),
(15, 1, 1, 0, 0, 0, 0, 0, '2014-03-14', '2014-03-14', '1:00 AM', '4:00 AM'),
(16, 1, 1, 1, 1, 1, 1, 1, '2014-03-14', '2014-03-16', '1:00 AM', '4:00 AM'),
(17, 0, 0, 0, 0, 0, 1, 1, '2014-03-14', '2014-03-16', '1:00 AM', '8:00 AM'),
(18, 1, 1, 1, 1, 1, 1, 1, '2014-03-15', '2014-03-23', '1:00 AM', '8:00 AM'),
(19, 1, 1, 1, 1, 1, 1, 1, '2014-03-20', '2014-03-28', '1:00 AM', '5:00 AM'),
(20, 1, 1, 1, 1, 1, 1, 1, '2014-03-15', '2014-03-16', '1:00 AM', '5:00 AM'),
(21, 1, 1, 1, 1, 1, 1, 1, '2014-03-14', '2014-03-14', '1:00 AM', '5:00 AM'),
(22, 1, 1, 1, 1, 1, 1, 1, '2014-03-15', '2014-03-30', '1:00 AM', '1:00 AM'),
(23, 1, 1, 1, 1, 1, 1, 1, '2014-03-15', '2014-03-30', '1:00 AM', '3:00 AM'),
(24, 1, 1, 1, 1, 1, 1, 1, '2014-03-15', '2014-03-30', '1:00 AM', '6:00 AM'),
(25, 1, 1, 1, 1, 1, 1, 1, '2014-03-15', '2014-03-30', '1:00 AM', '4:00 AM'),
(26, 1, 1, 1, 1, 1, 1, 1, '2014-03-17', '2014-03-22', '10:45 AM', '11:00 AM'),
(27, 1, 1, 1, 1, 1, 1, 1, '2014-04-08', '2014-04-10', '3:00 AM', '6:00 PM'),
(28, 1, 1, 1, 1, 1, 1, 1, '2014-04-08', '2014-04-09', '9:00 AM', '9:00 PM'),
(29, 1, 1, 1, 1, 1, 1, 1, '2014-04-21', '2014-04-23', '1:00 AM', '3:00 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classification`
--

DROP TABLE IF EXISTS `classification`;
CREATE TABLE IF NOT EXISTS `classification` (
  `clf_id` int(11) NOT NULL AUTO_INCREMENT,
  `clf_name` varchar(45) DEFAULT NULL,
  `clf_value` smallint(6) DEFAULT NULL,
  `clf_deleted` int(11) NOT NULL,
  PRIMARY KEY (`clf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `classification`
--

INSERT INTO `classification` (`clf_id`, `clf_name`, `clf_value`, `clf_deleted`) VALUES
(1, 'One Star', 1, 1),
(2, 'Hotel Two Star', 2, 0),
(3, 'Hotel Three Star', 3, 0),
(4, 'Hotel Four Star', 4, 0),
(5, 'Five Star', 5, 1),
(6, 'Six Star', 6, 1),
(7, 'Seven Star', 7, 1),
(8, 'Hotel Five Star', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `con_id` int(11) NOT NULL AUTO_INCREMENT,
  `con_title` varchar(100) DEFAULT NULL,
  `con_text` text,
  `con_template` varchar(40) DEFAULT NULL,
  `con_status` int(1) DEFAULT NULL,
  `con_delete` int(1) DEFAULT '0',
  `meta_key` varchar(100) DEFAULT NULL,
  `meta_describe` varchar(100) DEFAULT NULL,
  `con_menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`con_id`),
  KEY `fk_content_menu1` (`con_menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`con_id`, `con_title`, `con_text`, `con_template`, `con_status`, `con_delete`, `meta_key`, `meta_describe`, `con_menu_id`) VALUES
(1, 'General Condition', 'Tourism is travel for recreational, leisure, or business purposes, usually of a limited duration. Tourism is commonly associated with trans-national travel, but may also refer to travel to another location within the same country. The World Tourism Organization defines tourists as people "traveling to and staying in places outside their usual environment for not more than one consecutive year for leisure, business and other purposes".', 'sideright', 1, 0, 'condition', 'general condition', 2),
(2, 'Guideline', 'Tourism has become a popular global leisure activity. Tourism can be domestic or international, and international tourism has both incoming and outgoing implications on a country''s balance of payments. Today, tourism is major source of income for many countries, and affects the economy of both the source and host countries, in some cases it is of vital importance.', 'fullwidth', 1, 0, 'guideline', 'guideline', 2),
(3, 'Tourism', 'Tourism suffered as a result of a strong economic slowdown of the late-2000s recession, between the second half of 2008 and the end of 2009, and the outbreak of the H1N1 influenza virus.[2][3] It then slowly recovered, with international tourist arrivals surpassed the milestone 1 billion tourists globally for first time in history in 2012.', 'fullwidth', 1, 0, 'tourism', 'tourism', 2),
(4, 'International tourism receipts', 'International tourism receipts (the travel item of the balance of payments) grew to US$1.03 trillion (€740 billion) in 2011, corresponding to an increase in real terms of 3.8% from 2010.[5] In 2012, China became the largest spender in international tourism globally with US$102 billion, surpassing Germany and United States.', 'fullwidth', 1, 0, 'tourism receipts', 'tourism receipts', 2),
(5, 'Significance of tourism', 'Tourism is an important, even vital, source of income for many countries. Its importance was recognized in the Manila Declaration on World Tourism of 1980 as "an activity essential to the life of nations because of its direct effects on the social, cultural, educational, and economic sectors of national societies and on their international relations.', '', 0, 0, 'Significance of tourism', 'Significance of tourism', NULL),
(6, 'Feedback', '', 'feedback', 1, 1, 'comment', 'comment', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_photo`
--

DROP TABLE IF EXISTS `content_photo`;
CREATE TABLE IF NOT EXISTS `content_photo` (
  `cp_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `con_id` int(11) NOT NULL,
  PRIMARY KEY (`cp_id`),
  KEY `fk_content-photo_photo1` (`photo_id`),
  KEY `fk_content-photo_content1` (`con_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `content_photo`
--

INSERT INTO `content_photo` (`cp_id`, `photo_id`, `con_id`) VALUES
(3, 1, 3),
(4, 2, 4),
(12, 1, 2),
(13, 2, 2),
(25, 2, 1),
(26, 16, 6);

-- --------------------------------------------------------

--
-- Table structure for table `customize_conjection`
--

DROP TABLE IF EXISTS `customize_conjection`;
CREATE TABLE IF NOT EXISTS `customize_conjection` (
  `cuscon_id` int(11) NOT NULL AUTO_INCREMENT,
  `cuscon_start_date` date DEFAULT NULL,
  `cuscon_end_date` date DEFAULT NULL,
  `cuscon_description` text,
  `cuscon_name` varchar(150) DEFAULT NULL,
  `cuscon_actualstock` int(11) DEFAULT '0',
  `cuscon_originalstock` int(11) DEFAULT '0',
  `cuscon_purchaseprice` float DEFAULT '0',
  `cuscon_saleprice` float DEFAULT '0',
  `cuscon_accomodation` text,
  `cuscon_activities` text,
  `cuscon_transportation` text,
  `cuscon_ftv_id` int(11) DEFAULT NULL,
  `cuscon_lt_id` int(11) DEFAULT NULL,
  `cuscon_pho_id` int(11) DEFAULT NULL,
  `cuscon_status` tinyint(1) DEFAULT '1',
  `cuscon_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`cuscon_id`),
  KEY `cuscon_ftv_id` (`cuscon_ftv_id`),
  KEY `cuscon_pho_id` (`cuscon_pho_id`),
  KEY `cuscon_lt_id` (`cuscon_lt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customize_conjection`
--

INSERT INTO `customize_conjection` (`cuscon_id`, `cuscon_start_date`, `cuscon_end_date`, `cuscon_description`, `cuscon_name`, `cuscon_actualstock`, `cuscon_originalstock`, `cuscon_purchaseprice`, `cuscon_saleprice`, `cuscon_accomodation`, `cuscon_activities`, `cuscon_transportation`, `cuscon_ftv_id`, `cuscon_lt_id`, `cuscon_pho_id`, `cuscon_status`, `cuscon_deleted`) VALUES
(1, '2014-04-03', '2014-04-04', 'sfdssfds', 'Customize 1', 22, 32, 111, 23, NULL, NULL, NULL, 2, 2, 4, 0, 0),
(2, '2014-04-09', '2014-04-20', 'Customize2', 'Customize2', 22, 22, 12, 23, NULL, 'a:1:{s:15:"main-activities";a:1:{i:34;a:69:{s:6:"act_id";s:2:"34";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:24:"Running arount Wat Phnom";s:15:"act_bookingtext";s:202:""Running Up That Hill" is a song by the English singer-songwriter Kate Bush. It was the first single from her 1985 album Hounds of Love, released in the UK on 5 August 1985. It was her first 12" single.";s:15:"act_texteticket";s:148:"It was the most successful of Bush''s 1980s releases, entering the UK chart at No. 9 and eventually peaking at No. 3, her second-highest single peak.";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"23";s:17:"act_originalstock";s:2:"32";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-04-07";s:13:"act_payeddate";s:10:"2014-04-09";s:12:"act_deadline";s:10:"2014-04-09";s:13:"act_admintext";s:139:"The single also had an impact in the United States, providing Bush with her first chart hit there since 1978, where it reached the top 30, ";s:8:"photo_id";s:1:"7";s:11:"location_id";s:1:"2";s:10:"act_ftv_id";s:1:"9";s:15:"act_supplier_id";s:1:"1";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"2";s:7:"lt_name";s:8:"Thailand";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"1";s:9:"sup_fname";s:7:"sreynak";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:9:"Codingate";s:14:"sup_occupation";s:13:"web developer";s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:6:"Webapp";s:11:"sup_country";s:15:"Kampong Chhnang";s:8:"sup_city";s:15:"Kampong Chhnang";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:17:"sreynak@gmail.com";s:11:"sup_website";s:15:"www.sreynak.com";s:9:"sup_phone";s:10:"0123456789";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"9";s:8:"ftv_name";s:23:"International Labor Day";s:12:"ftv_photo_id";s:2:"55";s:9:"ftv_lt_id";s:1:"1";s:10:"ftv_detail";s:245:"International Workers'' Day is a celebration of the international labour movement that occurs on May Day, May 1, a traditional Spring holiday in much of Europe. May 1 is a national holiday in more than 80 countries, and celebrated unofficially in";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:2:"10";s:21:"calendar_available_id";s:2:"27";s:13:"activities_id";s:2:"34";s:5:"ca_id";s:2:"27";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-04-08";s:8:"end_date";s:10:"2014-04-10";s:10:"start_time";s:7:"3:00 AM";s:8:"end_time";s:7:"6:00 PM";s:8:"pho_name";s:4:"bbbb";s:10:"pho_detail";s:5:"bbbbb";s:10:"pho_source";s:53:"Free_nature_clipart_background_Desktop_Wallpaper1.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"1";s:5:"pt_id";s:1:"5";}}}', NULL, 10, 3, 22, 1, 0),
(3, '2014-04-09', '2014-04-27', 'Customize3', 'Customize3', 45, 32, 12, 23, NULL, 'a:1:{s:15:"main-activities";a:1:{i:34;a:69:{s:6:"act_id";s:2:"34";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:24:"Running arount Wat Phnom";s:15:"act_bookingtext";s:202:""Running Up That Hill" is a song by the English singer-songwriter Kate Bush. It was the first single from her 1985 album Hounds of Love, released in the UK on 5 August 1985. It was her first 12" single.";s:15:"act_texteticket";s:148:"It was the most successful of Bush''s 1980s releases, entering the UK chart at No. 9 and eventually peaking at No. 3, her second-highest single peak.";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"23";s:17:"act_originalstock";s:2:"32";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-04-07";s:13:"act_payeddate";s:10:"2014-04-09";s:12:"act_deadline";s:10:"2014-04-09";s:13:"act_admintext";s:139:"The single also had an impact in the United States, providing Bush with her first chart hit there since 1978, where it reached the top 30, ";s:8:"photo_id";s:1:"7";s:11:"location_id";s:1:"2";s:10:"act_ftv_id";s:1:"9";s:15:"act_supplier_id";s:1:"1";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"2";s:7:"lt_name";s:8:"Thailand";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"1";s:9:"sup_fname";s:7:"sreynak";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:9:"Codingate";s:14:"sup_occupation";s:13:"web developer";s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:6:"Webapp";s:11:"sup_country";s:15:"Kampong Chhnang";s:8:"sup_city";s:15:"Kampong Chhnang";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:17:"sreynak@gmail.com";s:11:"sup_website";s:15:"www.sreynak.com";s:9:"sup_phone";s:10:"0123456789";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"9";s:8:"ftv_name";s:23:"International Labor Day";s:12:"ftv_photo_id";s:2:"55";s:9:"ftv_lt_id";s:1:"1";s:10:"ftv_detail";s:245:"International Workers'' Day is a celebration of the international labour movement that occurs on May Day, May 1, a traditional Spring holiday in much of Europe. May 1 is a national holiday in more than 80 countries, and celebrated unofficially in";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:2:"10";s:21:"calendar_available_id";s:2:"27";s:13:"activities_id";s:2:"34";s:5:"ca_id";s:2:"27";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-04-08";s:8:"end_date";s:10:"2014-04-10";s:10:"start_time";s:7:"3:00 AM";s:8:"end_time";s:7:"6:00 PM";s:8:"pho_name";s:4:"bbbb";s:10:"pho_detail";s:5:"bbbbb";s:10:"pho_source";s:53:"Free_nature_clipart_background_Desktop_Wallpaper1.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"1";s:5:"pt_id";s:1:"5";}}}', NULL, 16, 4, 28, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `extraproduct`
--

DROP TABLE IF EXISTS `extraproduct`;
CREATE TABLE IF NOT EXISTS `extraproduct` (
  `ep_id` int(11) NOT NULL AUTO_INCREMENT,
  `ep_name` varchar(100) DEFAULT NULL,
  `ep_perperson` tinyint(1) DEFAULT NULL,
  `ep_perbooking` tinyint(1) DEFAULT NULL,
  `ep_bookingtext` text,
  `ep_etickettext` text,
  `photo_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `ep_purchaseprice` float DEFAULT NULL,
  `ep_saleprice` float DEFAULT NULL,
  `ep_originalstock` int(11) DEFAULT NULL,
  `ep_actualstock` int(11) DEFAULT NULL,
  `ep_providerdate` date DEFAULT NULL,
  `ep_payeddate` date DEFAULT NULL,
  `ep_deadline` date DEFAULT NULL,
  `ep_admintext` text,
  `ep_status` tinyint(1) DEFAULT '0',
  `ep_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ep_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `extraproduct`
--

INSERT INTO `extraproduct` (`ep_id`, `ep_name`, `ep_perperson`, `ep_perbooking`, `ep_bookingtext`, `ep_etickettext`, `photo_id`, `supplier_id`, `ep_purchaseprice`, `ep_saleprice`, `ep_originalstock`, `ep_actualstock`, `ep_providerdate`, `ep_payeddate`, `ep_deadline`, `ep_admintext`, `ep_status`, `ep_deleted`) VALUES
(1, 'Tickets', 1, 1, 'A ticket is a voucher that indicates that one has paid for admission to an event or establishment such as a theatre, movie theater, amusement park, zoo, museum, stadium, concert, or other attraction,', 'permission to travel on a vehicle such as an airliner, train, bus, or boat, typically because one has paid the fare. Also a ticket may be free, and serve as a proof of reservation.', 38, 1, 20, 20, 20, 20, '2014-03-06', '2013-03-06', '2014-03-06', 'The first known tickets were used in the Greek period for events that primarily took place in theatres.', 1, 0),
(2, 'Mineral Water', 1, 0, 'Mineral water is water from a mineral spring that contains various minerals, such as salts and sulfur compounds. Mineral water may be effervescent (i.e., "sparkling") due to contained gases.', 'Traditionally, mineral waters were used or consumed at their spring sources, often referred to as "taking the waters" or "taking the cure," at developed cities such as spas, baths, or wells.', 39, 4, 23, 34, 43, 45, '2014-03-06', '2014-03-06', '2014-03-06', 'The term spa was used for a place where the water was consumed and bathed in; bath where the water was used primarily for bathing, therapeutics, or recreation; and well where the water was to be consumed.', 1, 0),
(3, 'Shampoo', 1, 0, 'The goal of using shampoo is to remove the unwanted build-up without stripping out so much sebum as to make hair unmanageable.', 'Shampoo /ʃæmˈpuː/ is a hair care product that is used for the removal of oils, dirt, skin particles, dandruff, environmental pollutants and other contaminant particles that gradually build up in hair.', 1, 2, 23, 76, 21, 25, '2014-03-06', '2014-03-06', '2014-03-06', 'Using shampoo also allows the hair to be nourished and healthy.', 1, 1),
(4, 'ticket for ride Elephant', 1, 1, 'There are more than 3,000 brands of mineral water commercially available worldwide.', 'Travelling to the mineral water site for direct access to the water is now uncommon, and in many cases not possible (because of exclusive commercial ownership rights).', 42, 2, 23, 45, 65, 144, '2014-03-06', '2014-03-06', '2014-03-06', 'In modern times, it is far more common for mineral water to be bottled at the source for distributed consumption. ', 1, 0),
(5, 'toktok', 0, 1, 'Auto rickshaws are a common means of public transportation in many countries in the world.', 'Also known as a three-wheeler, Samosa, tempo, tuk-tuk, trishaw, auto, rickshaw, autorick, bajaj, rick, tricycle, mototaxi, baby taxi or lapa in popular parlance', 44, 4, 12, 32, 33, 23, '2014-03-06', '2014-03-06', '2014-03-06', 'an auto rickshaw is a usually three-wheeled cabin cycle for private use and as a vehicle for hire. It is a motorized version of the traditional pulled rickshaw or cycle rickshaw.', 1, 0),
(9, 'Coca Cola', 1, 0, 'Coca-Cola is a carbonated soft drink sold in stores, restaurants, and vending machines throughout the world.', 'The company produces concentrate, which is then sold to licensed Coca-Cola bottlers throughout the world.', 1, 1, 222, 2222, 333, 333, '2014-03-06', '2014-03-15', '2014-03-15', 'The Coca-Cola Company has, on occasion, introduced other cola drinks under the Coke brand name. ', 1, 1),
(10, 'Johnnie Walker', 0, 0, 'Johnnie Walker is a brand of Scotch Whisky owned by Diageo that originated in Kilmarnock, Ayrshire, Scotland.', 'The most widely distributed brand of blended Scotch whisky in the world, it is sold in almost every country, with annual sales of over 130 million bottles.', 2, 3, 33, 12, 23, 34, '2014-03-07', '2014-03-08', '2014-03-15', 'In 2011, the brand sold over 1 million cases in the US, Brazil and Thailand. It sold more than 500,000 cases in Mexico and Australia.', 1, 1),
(12, 'Pepsi', 1, 1, 'Pepsi (stylized in lowercase as pepsi, formerly stylized in uppercase as PEPSI) is a carbonated soft drink that is produced and manufactured by PepsiCo.', 'Pepsi was first introduced as "Brad''s Drink"[1] in New Bern, North Carolina, United States, in 1893 by Caleb Bradham, who made it at his drugstore where the drink was sold. ', 2, 3, 200, 300, 22, 34, '2014-03-07', '2014-03-07', '2014-03-07', ' It was later labeled Pepsi Cola, named after the digestive enzyme pepsin and kola nuts used in the recipe', 1, 1),
(13, '7 Up', 0, 1, '7 Up is a brand of lemon-lime flavored, non-caffeinated soft drink. ', 'The rights to the brand are held by Dr Pepper Snapple Group in the United States, and PepsiCo (or its licensees) in the rest of the world.', 1, 1, 21, 23, 22, 45, '2014-03-08', '2014-03-08', '2014-03-08', 'The U.S. version of the 7 Up logo includes a red spot between the "7" and "Up"; this red spot has been animated and used as a mascot for the brand as Cool Spot.', 1, 1),
(14, 'Sprite', 1, 1, 'Sprite is a colorless, lemon-lime flavored, caffeine-free soft drink, created by the Coca-Cola Company. ', ' It was introduced in the United States in 1961.', 2, 2, 111, 13, 32, 50, '2014-03-07', '2014-03-07', '2014-03-07', 'This was Coke''s response to the popularity of 7 Up.', 1, 1),
(18, 'Cake', 1, 1, 'Cake is a form of bread or bread-like food. In its modern forms, it is typically a sweet baked dessert. In its oldest forms, ', 'cakes were normally fried breads or cheesecakes, and normally had a disk shape.', 2, 1, 111, 300, 35, 50, '2014-03-12', '2014-03-12', '2014-03-13', 'Determining whether a given food should be classified as bread, cake, or pastry can be difficult.', 1, 1),
(19, 'Milk', 0, 1, 'Milk is a white liquid produced by the mammary glands of mammals.', 'It is the primary source of nutrition for young mammals before they are able to digest other types of food.', 2, 1, 111, 300, 32, 45, '2014-03-12', '2014-03-12', '2014-03-13', 'Worldwide, dairy farms produced about 730 million tonnes of milk in 2011', 1, 1),
(31, 'Rice + Egg', 0, 1, 'Rice is the seed of the monocot plants Oryza sativa (Asian rice) or Oryza glaberrima (African rice). As a cereal grain.', ' it is the most widely consumed staple food for a large part of the world''s human population', 45, 2, 12, 23, 22, 22, '2014-03-12', '2014-03-12', '2014-03-13', 'especially in Asia. It is the grain with the second-highest worldwide production, after corn, according to data for 2010', 1, 0),
(32, 'Drink', 1, 1, 'Drinking water or potable water is water safe enough to be consumed by humans or used with low risk of immediate or long term harm. ', 'In most developed countries, the water supplied to households, commerce and industry meets drinking water standards,', 46, 2, 12, 23, 32, 45, '2014-03-12', '2014-03-13', '2014-03-13', 'even though only a very small proportion is actually consumed or used in food preparation.', 1, 0),
(33, 'SIM Card', 1, 1, 'A subscriber identity module or subscriber identification module (SIM) is an integrated circuit that securely stores the international mobile subscriber identity (IMSI) and the related key used to identify', 'authenticate subscribers on mobile telephony devices (such as mobile phones and computers).', 52, 4, 21, 12, 32, 45, '2014-03-12', '2014-03-12', '2014-03-13', 'A SIM circuit is embedded into a removable plastic card. This plastic card is called a "SIM card" and can be transferred between different mobile devices. A SIM card follows certain smart card standards.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `extraproduct_calendar`
--

DROP TABLE IF EXISTS `extraproduct_calendar`;
CREATE TABLE IF NOT EXISTS `extraproduct_calendar` (
  `ep_cl_id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_available_id` int(11) DEFAULT NULL,
  `extraproduct_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ep_cl_id`),
  KEY `fk_extraproduct_calendar_calendar_available1` (`calendar_available_id`),
  KEY `fk_extraproduct_calendar_extraproduct1` (`extraproduct_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `extraproduct_calendar`
--

INSERT INTO `extraproduct_calendar` (`ep_cl_id`, `calendar_available_id`, `extraproduct_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 2, 3),
(6, 3, 18),
(7, 2, 33);

-- --------------------------------------------------------

--
-- Table structure for table `extra_acc`
--

DROP TABLE IF EXISTS `extra_acc`;
CREATE TABLE IF NOT EXISTS `extra_acc` (
  `exacc_id` int(11) NOT NULL AUTO_INCREMENT,
  `extraproduct_ep_id` int(11) DEFAULT NULL,
  `accomodations_ad_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`exacc_id`),
  KEY `fk_extra_acc_extraproduct1` (`extraproduct_ep_id`),
  KEY `fk_extra_acc_accomodations1` (`accomodations_ad_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `extra_acc`
--

INSERT INTO `extra_acc` (`exacc_id`, `extraproduct_ep_id`, `accomodations_ad_id`) VALUES
(1, 3, 13),
(2, 18, 15),
(3, 33, 16);

-- --------------------------------------------------------

--
-- Table structure for table `extra_acti`
--

DROP TABLE IF EXISTS `extra_acti`;
CREATE TABLE IF NOT EXISTS `extra_acti` (
  `exact_id` int(11) NOT NULL AUTO_INCREMENT,
  `extraproduct_id` int(11) DEFAULT NULL,
  `activities_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`exact_id`),
  KEY `fk_extra_acti_extraproduct1` (`extraproduct_id`),
  KEY `fk_extra_acti_activities1` (`activities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `extra_acti`
--

INSERT INTO `extra_acti` (`exact_id`, `extraproduct_id`, `activities_id`) VALUES
(1, 3, 3),
(2, 1, 1),
(3, 2, 2),
(4, 4, 4),
(5, 31, 34);

-- --------------------------------------------------------

--
-- Table structure for table `extra_transport`
--

DROP TABLE IF EXISTS `extra_transport`;
CREATE TABLE IF NOT EXISTS `extra_transport` (
  `extr_id` int(11) NOT NULL AUTO_INCREMENT,
  `extraproduct_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`extr_id`),
  KEY `fk_extra_transport_extraproduct1` (`extraproduct_id`),
  KEY `fk_extra_transport_transport1` (`transport_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `extra_transport`
--

INSERT INTO `extra_transport` (`extr_id`, `extraproduct_id`, `transport_id`) VALUES
(2, 33, 3);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
CREATE TABLE IF NOT EXISTS `facilities` (
  `facilities_id` int(11) NOT NULL AUTO_INCREMENT,
  `facilities_title` varchar(45) DEFAULT NULL,
  `facilities_value` varchar(45) DEFAULT NULL,
  `facilities_deleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`facilities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`facilities_id`, `facilities_title`, `facilities_value`, `facilities_deleted`) VALUES
(1, 'Fire safety', '3', 0),
(2, 'Health Safety', '3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fb_id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_name` varchar(100) DEFAULT NULL,
  `fb_email` varchar(100) DEFAULT NULL,
  `fb_text` tinytext,
  `fb_subject` varchar(100) DEFAULT NULL,
  `fb_date` varchar(100) DEFAULT NULL,
  `fb_status` tinyint(1) DEFAULT '0',
  `fb_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`fb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fb_id`, `fb_name`, `fb_email`, `fb_text`, `fb_subject`, `fb_date`, `fb_status`, `fb_deleted`) VALUES
(1, 'test', 'test@gmail.com', 'test', 'Test Mail', '10/03/12', 1, 0),
(2, 'my message hello.', 'lannsolak@gmail.com', 'asdfasdfa', 'How are you today', '2014-03-18', 1, 0),
(3, 'sreypao', 'sreypao.ny@gmail.com', 'I would like to testing the process of master booking\nSent to sreypao.ny@gmail.com. You have received this e-mail because you are subscribed as a registered\nuser of our product WOW Slider Free Version, since 2013-06-26. Unsubscribe', '1st Testing with booking', '2014-04-09', 1, 0),
(4, 'sreynak', 'sreynak.chet@gmail.com', 'hello i am testing again with form feedback.', 'testing feedback', '2014-04-09', 1, 0),
(5, 'sreynak', 'sreynak.chet@gmail.com', 'again testing', 'again testing', '2014-04-09', 1, 0),
(6, 'sreynak', 'sreynak.chet@gmail.com', ' hello world', 'hello', '2014-04-09', 1, 0),
(7, 'pen thida', 'thidapen111@gmail.com', 'I would like to test your feedback', 'Hi admin', '2014-04-10', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `festival`
--

DROP TABLE IF EXISTS `festival`;
CREATE TABLE IF NOT EXISTS `festival` (
  `ftv_id` int(11) NOT NULL AUTO_INCREMENT,
  `ftv_name` varchar(100) DEFAULT NULL,
  `ftv_photo_id` int(11) DEFAULT NULL,
  `ftv_lt_id` int(11) DEFAULT NULL,
  `ftv_detail` varchar(245) DEFAULT NULL,
  `ftv_deleted` tinyint(1) DEFAULT '0',
  `ftv_status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ftv_id`),
  KEY `ftv_photo_id` (`ftv_photo_id`),
  KEY `ftv_lt_id` (`ftv_lt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `festival`
--

INSERT INTO `festival` (`ftv_id`, `ftv_name`, `ftv_photo_id`, `ftv_lt_id`, `ftv_detail`, `ftv_deleted`, `ftv_status`) VALUES
(1, 'Visak Bochea Day', 42, 2, 'Visak day falls on the 15th day of the waxing moon in the 6th lunar month, which is usually May in the Gregorian calendar. A candle procession is taken out in evening on the occassion. Those who have glittering sight are never able to forget it.', 0, 1),
(2, 'Khmer New Year', 38, 1, 'Cambodian New Year (Khmer: បុណ្យចូលឆ្នាំថ្មី) or Chaul Chnam Thmey in the Khmer language, literally "Enter New Year", is the name of the Cambodian holiday that celebrates the New Year. The holiday lasts for three days beginning on New Year''s Day', 0, 1),
(3, 'King''s Birthday, Norodom Sihamoni', 46, 2, 'Norodom Sihamoni (Khmer: នរោត្តម សីហមុនី; born 14 May 1953) is the reigning King of Cambodia. He ascended the throne on 29 October 2004.[1] He is the eldest son of Norodom Sihanouk and his second wife Norodom Monineath Sihanouk. He was Cambodia''', 0, 1),
(4, 'Pchum Ben', 44, 1, 'Pchum Ben (Khmer: បុណ្យភ្ជុំបិណ្ឌ; "Ancestors'' Day") is a 15-day Cambodian religious festival, culminating in celebrations on the 15th day of the tenth month in the Khmer calendar, at the end of the Buddhist lent, Vassa.[1][2] In 2013, the natio', 0, 1),
(5, 'Royal Plowing Ceremony', 40, 2, 'In 2009, the ceremony was held on May 11 in Thailand and on May 12 in Cambodia. The date is usually in May, but varies as it is determined by Hora (astrology) (Khmer: ហោរាសាស្រ្ត, hourasastr; Thai: โหราศาสตร์, horasat). In 2013, the ceremony and', 0, 1),
(6, 'International/Cambodian Chirldren Day', 45, 2, 'I knew that there is controversy related to another case: while the First of May is celebrated widely by the international labor movement – considered by some as “communist” – but in many countries it is just a day to remember and celebrate the ', 0, 1),
(7, 'Meak Bochea Day', 39, 1, 'Māgha Pūjā, Makha Bucha, or the Full Moon of Tabottwal (Burmese: တပုိ ့တြဲလျပည့္ေန ့; Khmer: មាឃបូជា, Meak Bochea; Lao: ມະຄະບູຊາ; Thai: มาฆบูชา) is an important Buddhist festival celebrated on the full moon day of Māgha in Cambodia, Laos, and Th', 0, 1),
(8, 'Chinese New Year', 43, 1, 'Chinese New Year is an important traditional Chinese holiday celebrated at the turn of the Chinese calendar. In China, it is also known as the Spring Festival, the literal translation of the modern Chinese name. Chinese New Year celebrations tra', 0, 1),
(9, 'International Labor Day', 55, 1, 'International Workers'' Day is a celebration of the international labour movement that occurs on May Day, May 1, a traditional Spring holiday in much of Europe. May 1 is a national holiday in more than 80 countries, and celebrated unofficially in', 0, 1),
(10, 'King''s Mother Birthday, Norodom Monineath Sihanouk', 50, 2, 'Norodom Monineath (Khmer: នរោត្ដម មុនីនាថ; born Paule Monique Izzi, 18 June 1936) is the queen mother of Cambodia, a position she assumed after her son arose to the throne on 14 October 2004. She previously served as the queen consort from 1993 ', 0, 1),
(11, 'Internation New Year Day', 56, 1, 'New Year is the time at which a new calendar year begins and the calendar''s year count is incremented. In many cultures, the event is celebrated in some manner.[1] The New Year of the Gregorian calendar, today in worldwide use, falls on 1 Januar', 0, 1),
(12, 'Victory over Genocide Day', 58, 1, 'January 7 is the seventh day of the year in the Gregorian calendar. There are 358 days remaining until the end of the year', 0, 1),
(13, 'Internation Women Day', 52, 1, 'International Women''s Day (IWD), also called International Working Women''s Day, is celebrated on March 8 every year.[2] In different regions the focus of the celebrations ranges from general celebration of respect, appreciation and love towards ', 0, 1),
(14, 'Constitutional Day', 49, 2, 'On 6 October, the government of Cambodia called for a referendum to decide who would hold power between the government and the Free Cambodia Movement, which was led by Sam Sary and Son Ngoc Thanh. Norodom Sihanouk asserted that if he lost he wou', 0, 1),
(15, 'Commemoration Day of King''s Father, Norodom Sihanouk', 51, 2, 'Sihanouk had been receiving medical treatment in Beijing since January, 2012 for a number of health problems, including colon cancer, diabetes, and hypertension.[21] He died after a heart attack in Beijing, on 15 October 2012, 16 days before his', 0, 1),
(16, 'Paris Peace Agreements Day', 59, 1, 'On 6 October, the government of Cambodia called for a referendum to decide who would hold power between the government and the Free Cambodia Movement, which was led by Sam Sary and Son Ngoc Thanh. Norodom Sihanouk asserted that if he lost he wou', 0, 1),
(17, 'King''s Coronation Day, Norodom Sihanouk', 53, 1, 'The writing of the Cambodian Constitution took place between June and September 1993 and resulted in the transformation of the political situation Cambodia from civil war-marred, autocratic oligarchy to a Constitutional Monarchy. Achieved under ', 0, 1),
(18, 'Water Festival Ceremony', 47, 2, 'The Water Festival is the New Year''s celebrations that take place in Southeast Asian countries such as Burma, Cambodia, Laos, and Thailand as well as Yunnan, China. It is called the ''Water Festival'' by Westerners because people splash / pour wat', 0, 1),
(19, 'Independence Day', 57, 1, 'An Independence Day is an annual event commemorating the anniversary of a nation''s assumption of independent statehood, usually after ceasing to be a group or part of another nation or state; more rarely after the end of a military occupation. M', 0, 1),
(20, 'Internation Human Rights Day', 48, 2, 'Human rights in the United States comprise a series of rights which are legally protected by the Constitution of the United States, including the amendments,[2][3] state constitutions, conferred by treaty, and enacted legislatively through Congr', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `lt_id` int(11) NOT NULL AUTO_INCREMENT,
  `lt_name` varchar(100) DEFAULT NULL,
  `lt_status` int(11) DEFAULT NULL,
  `lt_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`lt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`lt_id`, `lt_name`, `lt_status`, `lt_deleted`) VALUES
(1, 'Cambodia', 1, 0),
(2, 'Thailand', 1, 0),
(3, 'Laos', 1, 0),
(4, 'Malaysia', 1, 0),
(5, 'China', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(100) DEFAULT NULL,
  `menu_aliase` varchar(100) DEFAULT NULL,
  `menu_status` varchar(100) DEFAULT '0',
  `menu_delete` tinyint(4) DEFAULT '0',
  `menu_menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `fk_menu_menu1` (`menu_menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_title`, `menu_aliase`, `menu_status`, `menu_delete`, `menu_menu_id`) VALUES
(2, 'Home', 'home', '1', 0, NULL),
(8, 'test', 'test', '1', 1, 2),
(9, 'Testing', 'testing', '1', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_conjection`
--

DROP TABLE IF EXISTS `package_conjection`;
CREATE TABLE IF NOT EXISTS `package_conjection` (
  `pkcon_id` int(11) NOT NULL AUTO_INCREMENT,
  `pkcon_start_date` date DEFAULT NULL,
  `pkcon_end_date` date DEFAULT NULL,
  `pkcon_description` text,
  `pkcon_name` varchar(150) DEFAULT NULL,
  `pkcon_actualstock` int(11) DEFAULT '0',
  `pkcon_originalstock` int(11) DEFAULT '0',
  `pkcon_purchaseprice` float DEFAULT '0',
  `pkcon_saleprice` float DEFAULT '0',
  `pk_accomodation` longtext,
  `pk_activities` longtext,
  `pk_transportation` longtext,
  `pkconl_ftv_id` int(11) DEFAULT NULL,
  `pkcon_lt_id` int(11) DEFAULT NULL,
  `phoid` int(11) DEFAULT NULL,
  `pkcon_status` tinyint(1) DEFAULT '1',
  `pkcon_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pkcon_id`),
  KEY `fk_package_conjection_festival1` (`pkconl_ftv_id`),
  KEY `fk_package_conjection_location1` (`pkcon_lt_id`),
  KEY `pkcon_photo_id` (`phoid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `package_conjection`
--

INSERT INTO `package_conjection` (`pkcon_id`, `pkcon_start_date`, `pkcon_end_date`, `pkcon_description`, `pkcon_name`, `pkcon_actualstock`, `pkcon_originalstock`, `pkcon_purchaseprice`, `pkcon_saleprice`, `pk_accomodation`, `pk_activities`, `pk_transportation`, `pkconl_ftv_id`, `pkcon_lt_id`, `phoid`, `pkcon_status`, `pkcon_deleted`) VALUES
(1, '2014-03-17', '2014-03-21', 'Packaging advancements in the early 20th century included Bakelite closures on bottles, transparent cellophane overwraps and panels on cartons, increased processing efficiency and improved food safety. ', 'Package 1', 10, 10, 12, 14, NULL, 'a:1:{s:15:"main-activities";a:1:{i:2;a:69:{s:6:"act_id";s:1:"2";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:11:"Play Tennis";s:15:"act_bookingtext";s:98:"This is in addition to goods bought by tourists, including souvenirs, clothing and other supplies.";s:15:"act_texteticket";s:151:" Although the touristic-drive seems to be inherent to almost all cultures and times, Korstanje explains that only by the influence of Norse Mythology, ";s:17:"act_purchaseprice";s:3:"111";s:13:"act_saleprice";s:3:"300";s:17:"act_originalstock";s:2:"32";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-13";s:13:"act_payeddate";s:10:"2014-03-13";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:77:"the Grand-tour was accepted as a common-practice in England and Europe later.";s:8:"photo_id";s:1:"1";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"Malaysia";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:9:"Toursanak";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:8:"Cambodia";s:8:"sup_city";s:10:"Phnom Penh";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:17:"www.codingate.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:16:"Visak Bochea Day";s:12:"ftv_photo_id";s:2:"42";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:245:"Visak day falls on the 15th day of the waxing moon in the 6th lunar month, which is usually May in the Gregorian calendar. A candle procession is taken out in evening on the occassion. Those who have glittering sight are never able to forget it.";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"2";s:21:"calendar_available_id";s:1:"2";s:13:"activities_id";s:1:"2";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"1";s:5:"pt_id";s:1:"5";}}}', NULL, 1, 4, 2, 1, 0),
(2, '2014-03-17', '2014-03-21', 'The first packages used the natural materials available at the time: Baskets of reeds, wineskins (Bota bags), wooden boxes, pottery vases, ceramic amphorae, wooden barrels, woven bags, etc.', 'Package 2', 10, 10, 12, 14, 'a:1:{s:18:"main-accommodation";a:1:{i:16;a:77:{s:6:"acc_id";s:2:"16";s:9:"acc_subof";s:1:"0";s:8:"acc_name";s:11:"Sokha Hotel";s:15:"acc_bookingtext";s:4:"bbbb";s:15:"acc_texteticket";s:4:"bbbb";s:17:"acc_purchaseprice";s:2:"21";s:13:"acc_saleprice";s:3:"300";s:17:"acc_originalstock";s:2:"32";s:15:"acc_actualstock";s:2:"22";s:13:"acc_hoteldate";s:10:"2014-03-14";s:13:"acc_payeddate";s:10:"2014-03-15";s:12:"acc_deadline";s:10:"2014-03-15";s:13:"acc_admintext";s:4:"bbbb";s:11:"location_id";s:1:"4";s:8:"photo_id";s:2:"14";s:9:"acc_rt_id";s:1:"3";s:10:"acc_ftv_id";s:1:"1";s:17:"classification_id";s:1:"2";s:15:"acc_supplier_id";s:1:"2";s:10:"acc_status";s:1:"1";s:11:"acc_deleted";s:1:"0";s:5:"rt_id";s:1:"3";s:7:"rt_name";s:4:"Twin";s:9:"rt_status";s:1:"1";s:10:"rt_deleted";s:1:"0";s:6:"clf_id";s:1:"2";s:8:"clf_name";s:14:"Hotel Two Star";s:9:"clf_value";s:1:"2";s:11:"clf_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"Malaysia";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:16:"Visak Bochea Day";s:12:"ftv_photo_id";s:2:"42";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:245:"Visak day falls on the 15th day of the waxing moon in the 6th lunar month, which is usually May in the Gregorian calendar. A candle procession is taken out in evening on the occassion. Those who have glittering sight are never able to forget it.";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:9:"Toursanak";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:8:"Cambodia";s:8:"sup_city";s:10:"Phnom Penh";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:17:"www.codingate.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"accca_id";s:1:"3";s:16:"accomodations_id";s:2:"16";s:21:"calendar_available_id";s:1:"9";s:5:"ca_id";s:1:"9";s:6:"monday";s:1:"0";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"0";s:8:"thursday";s:1:"0";s:6:"friday";s:1:"0";s:8:"saturday";s:1:"0";s:6:"sunday";s:1:"0";s:10:"start_date";s:10:"2014-03-13";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"9:00 AM";s:8:"pho_name";s:20:"Single Room (Golden)";s:10:"pho_detail";s:193:"Beds are placed symmetrically on both sides of room so that the two beds face each other. This layout creates a cozy atmosphere, making the room suitable for families and groups of young women.";s:10:"pho_source";s:19:"accommodation2b.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"2";}}}', 'a:1:{s:15:"main-activities";a:1:{i:4;a:69:{s:6:"act_id";s:1:"4";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:6:"Meseum";s:15:"act_bookingtext";s:187:"This city was once a capital of Baekje. This museum displays and preserves the relics excavated from the site where there had been Mireuksaji Buddhist temple before in Iksan, South Korea.";s:15:"act_texteticket";s:130:"It holds different cultural events and summer school for students. Through this, it puts a lot of effort to be a national museum. ";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:3:"300";s:17:"act_originalstock";s:2:"32";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-12";s:13:"act_payeddate";s:10:"2014-03-12";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:48:"Also it runs various exhibitions and seminars. I";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"Malaysia";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:9:"Toursanak";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:8:"Cambodia";s:8:"sup_city";s:10:"Phnom Penh";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:17:"www.codingate.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:16:"Visak Bochea Day";s:12:"ftv_photo_id";s:2:"42";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:245:"Visak day falls on the 15th day of the waxing moon in the 6th lunar month, which is usually May in the Gregorian calendar. A candle procession is taken out in evening on the occassion. Those who have glittering sight are never able to forget it.";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"4";s:21:"calendar_available_id";s:1:"4";s:13:"activities_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"1";s:5:"pt_id";s:1:"1";}}}', NULL, 1, 4, 4, 1, 0),
(3, '2014-03-17', '2014-03-21', 'Package labeling (American English) or labelling (British English) is any written, electronic, or graphic communication on the package or on a separate but associated label.', 'Package 3', 10, 10, 12, 14, NULL, 'a:2:{s:15:"main-activities";a:1:{i:2;a:69:{s:6:"act_id";s:1:"2";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:11:"Play Tennis";s:15:"act_bookingtext";s:98:"This is in addition to goods bought by tourists, including souvenirs, clothing and other supplies.";s:15:"act_texteticket";s:151:" Although the touristic-drive seems to be inherent to almost all cultures and times, Korstanje explains that only by the influence of Norse Mythology, ";s:17:"act_purchaseprice";s:3:"111";s:13:"act_saleprice";s:3:"300";s:17:"act_originalstock";s:2:"32";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-13";s:13:"act_payeddate";s:10:"2014-03-13";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:77:"the Grand-tour was accepted as a common-practice in England and Europe later.";s:8:"photo_id";s:1:"1";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"Malaysia";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:9:"Toursanak";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:8:"Cambodia";s:8:"sup_city";s:10:"Phnom Penh";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:17:"www.codingate.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:16:"Visak Bochea Day";s:12:"ftv_photo_id";s:2:"42";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:245:"Visak day falls on the 15th day of the waxing moon in the 6th lunar month, which is usually May in the Gregorian calendar. A candle procession is taken out in evening on the occassion. Those who have glittering sight are never able to forget it.";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"2";s:21:"calendar_available_id";s:1:"2";s:13:"activities_id";s:1:"2";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"1";s:5:"pt_id";s:1:"5";}}s:15:"extraproduct-pk";a:1:{i:2;a:1:{i:2;a:55:{s:5:"ep_id";s:1:"2";s:7:"ep_name";s:13:"Mineral Water";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"0";s:14:"ep_bookingtext";s:190:"Mineral water is water from a mineral spring that contains various minerals, such as salts and sulfur compounds. Mineral water may be effervescent (i.e., "sparkling") due to contained gases.";s:14:"ep_etickettext";s:190:"Traditionally, mineral waters were used or consumed at their spring sources, often referred to as "taking the waters" or "taking the cure," at developed cities such as spas, baths, or wells.";s:8:"photo_id";s:2:"39";s:11:"supplier_id";s:1:"4";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"34";s:16:"ep_originalstock";s:2:"43";s:14:"ep_actualstock";s:2:"45";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:204:"The term spa was used for a place where the water was consumed and bathed in; bath where the water was used primarily for bathing, therapeutics, or recreation; and well where the water was to be consumed.";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"4";s:9:"sup_fname";s:4:"rany";s:9:"sup_lname";s:2:"Em";s:16:"sup_company_name";s:16:"Khmer Enterprise";s:14:"sup_occupation";s:6:"tester";s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:4:"test";s:11:"sup_country";s:8:"Cambodia";s:8:"sup_city";s:5:"Takeo";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:14:"rany@gmail.com";s:11:"sup_website";s:14:"www.emrany.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:8:"09876542";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"2";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:1:"2";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:11:"Meak bochea";s:10:"pho_detail";s:18:"on meak bochea day";s:10:"pho_source";s:14:"meakbochea.JPG";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}}', NULL, 1, 4, 1, 1, 0);
INSERT INTO `package_conjection` (`pkcon_id`, `pkcon_start_date`, `pkcon_end_date`, `pkcon_description`, `pkcon_name`, `pkcon_actualstock`, `pkcon_originalstock`, `pkcon_purchaseprice`, `pkcon_saleprice`, `pk_accomodation`, `pk_activities`, `pk_transportation`, `pkconl_ftv_id`, `pkcon_lt_id`, `phoid`, `pkcon_status`, `pkcon_deleted`) VALUES
(4, '2014-04-05', '2014-04-30', 'Packaging contains, protects, preserves, transports, informs, and sells.[1] In many countries it is fully integrated into government, business, institutional, industrial, and personal use.', 'Package 4', 10, 10, 12, 14, 'a:3:{s:18:"main-accommodation";a:1:{i:13;a:77:{s:6:"acc_id";s:2:"13";s:9:"acc_subof";s:1:"0";s:8:"acc_name";s:4:"test";s:15:"acc_bookingtext";s:4:"test";s:15:"acc_texteticket";s:4:"test";s:17:"acc_purchaseprice";s:2:"21";s:13:"acc_saleprice";s:2:"23";s:17:"acc_originalstock";s:2:"32";s:15:"acc_actualstock";s:2:"34";s:13:"acc_hoteldate";s:10:"2014-03-14";s:13:"acc_payeddate";s:10:"2014-03-14";s:12:"acc_deadline";s:10:"2014-03-14";s:13:"acc_admintext";s:4:"test";s:11:"location_id";s:1:"4";s:8:"photo_id";s:1:"2";s:9:"acc_rt_id";N;s:10:"acc_ftv_id";s:1:"1";s:17:"classification_id";s:1:"3";s:15:"acc_supplier_id";s:1:"2";s:10:"acc_status";s:1:"1";s:11:"acc_deleted";s:1:"0";s:5:"rt_id";N;s:7:"rt_name";N;s:9:"rt_status";N;s:10:"rt_deleted";N;s:6:"clf_id";s:1:"3";s:8:"clf_name";s:10:"Three Star";s:9:"clf_value";s:1:"3";s:11:"clf_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"accca_id";s:1:"7";s:16:"accomodations_id";s:2:"13";s:21:"calendar_available_id";s:1:"2";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}s:17:"sub-accommodation";a:1:{i:13;a:1:{i:19;a:77:{s:6:"acc_id";s:2:"19";s:9:"acc_subof";s:2:"13";s:8:"acc_name";s:3:"eee";s:15:"acc_bookingtext";s:4:"bbbb";s:15:"acc_texteticket";s:4:"bbbb";s:17:"acc_purchaseprice";s:2:"21";s:13:"acc_saleprice";s:3:"300";s:17:"acc_originalstock";s:2:"32";s:15:"acc_actualstock";s:2:"22";s:13:"acc_hoteldate";s:10:"2014-03-14";s:13:"acc_payeddate";s:10:"2014-03-15";s:12:"acc_deadline";s:10:"2014-03-15";s:13:"acc_admintext";s:4:"bbbb";s:11:"location_id";s:1:"4";s:8:"photo_id";s:1:"1";s:9:"acc_rt_id";s:1:"1";s:10:"acc_ftv_id";s:1:"1";s:17:"classification_id";s:1:"2";s:15:"acc_supplier_id";s:1:"2";s:10:"acc_status";s:1:"1";s:11:"acc_deleted";s:1:"0";s:5:"rt_id";s:1:"1";s:7:"rt_name";s:5:"room1";s:9:"rt_status";s:1:"1";s:10:"rt_deleted";s:1:"1";s:6:"clf_id";s:1:"2";s:8:"clf_name";s:8:"Two Star";s:9:"clf_value";s:1:"2";s:11:"clf_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"accca_id";s:1:"6";s:16:"accomodations_id";s:2:"19";s:21:"calendar_available_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}s:15:"extraproduct-pk";a:1:{i:13;a:1:{i:3;a:55:{s:5:"ep_id";s:1:"3";s:7:"ep_name";s:3:"lux";s:12:"ep_perperson";s:1:"0";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:3:"lux";s:14:"ep_etickettext";s:3:"lux";s:8:"photo_id";s:1:"1";s:11:"supplier_id";s:1:"2";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"76";s:16:"ep_originalstock";s:2:"21";s:14:"ep_actualstock";s:2:"25";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:3:"lux";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"5";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:1:"3";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}}', 'a:3:{s:15:"main-activities";a:3:{i:3;a:69:{s:6:"act_id";s:1:"3";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:9:"Cambodia1";s:15:"act_bookingtext";s:4:"dddd";s:15:"act_texteticket";s:4:"dddd";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"23";s:17:"act_originalstock";s:2:"35";s:15:"act_actualstock";s:2:"34";s:14:"act_choiceitem";s:1:"0";s:17:"act_organiserdate";s:10:"2014-03-12";s:13:"act_payeddate";s:10:"2014-03-12";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:4:"dddd";s:8:"photo_id";s:1:"1";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"3";s:21:"calendar_available_id";s:1:"3";s:13:"activities_id";s:1:"3";s:5:"ca_id";s:1:"3";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:4;a:69:{s:6:"act_id";s:1:"4";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:7:"sokeara";s:15:"act_bookingtext";s:5:"fffff";s:15:"act_texteticket";s:5:"fffff";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:3:"300";s:17:"act_originalstock";s:2:"32";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-12";s:13:"act_payeddate";s:10:"2014-03-12";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:6:"ffffff";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"4";s:21:"calendar_available_id";s:1:"4";s:13:"activities_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:1;a:69:{s:6:"act_id";s:1:"1";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:4:"test";s:15:"act_bookingtext";s:4:"rrrr";s:15:"act_texteticket";s:3:"rrr";s:17:"act_purchaseprice";s:2:"34";s:13:"act_saleprice";s:2:"33";s:17:"act_originalstock";s:2:"44";s:15:"act_actualstock";s:2:"67";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-13";s:13:"act_payeddate";s:10:"2014-03-13";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:4:"rrrr";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"1";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"1";s:9:"sup_fname";s:7:"sreynak";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:7:"sreynak";s:14:"sup_occupation";N;s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:6:"Webapp";s:11:"sup_country";s:15:"Kampong Chhnang";s:8:"sup_city";s:15:"Kampong Chhnang";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:17:"sreynak@gmail.com";s:11:"sup_website";s:15:"www.sreynak.com";s:9:"sup_phone";s:10:"0123456789";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"1";s:21:"calendar_available_id";s:1:"1";s:13:"activities_id";s:1:"1";s:5:"ca_id";s:1:"1";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 PM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}s:14:"sub-activities";a:2:{i:3;a:2:{i:24;a:69:{s:6:"act_id";s:2:"24";s:9:"act_subof";s:1:"3";s:17:"act_cherge_subact";N;s:8:"act_name";s:7:"fffffff";s:15:"act_bookingtext";s:3:"fff";s:15:"act_texteticket";s:4:"ffff";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"12";s:17:"act_originalstock";s:2:"35";s:15:"act_actualstock";s:2:"34";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-14";s:13:"act_payeddate";s:10:"2014-03-14";s:12:"act_deadline";s:10:"2014-03-15";s:13:"act_admintext";s:3:"fff";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"7";s:21:"calendar_available_id";s:1:"1";s:13:"activities_id";s:2:"24";s:5:"ca_id";s:1:"1";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 PM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:26;a:69:{s:6:"act_id";s:2:"26";s:9:"act_subof";s:1:"3";s:17:"act_cherge_subact";N;s:8:"act_name";s:5:"hhhhh";s:15:"act_bookingtext";s:4:"hhhh";s:15:"act_texteticket";s:4:"hhhh";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"23";s:17:"act_originalstock";s:2:"23";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-14";s:13:"act_payeddate";s:10:"2014-03-15";s:12:"act_deadline";s:10:"2014-03-16";s:13:"act_admintext";s:4:"hhhh";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"3";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";N;s:9:"sup_fname";N;s:9:"sup_lname";N;s:16:"sup_company_name";N;s:14:"sup_occupation";N;s:10:"sup_sector";N;s:21:"sup_service_provision";N;s:11:"sup_country";N;s:8:"sup_city";N;s:11:"sup_address";N;s:12:"sup_postcode";N;s:9:"sup_email";N;s:11:"sup_website";N;s:9:"sup_phone";N;s:14:"sup_home_phone";N;s:11:"sup_deleted";N;s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"9";s:21:"calendar_available_id";s:1:"2";s:13:"activities_id";s:2:"26";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:4;a:1:{i:25;a:69:{s:6:"act_id";s:2:"25";s:9:"act_subof";s:1:"4";s:17:"act_cherge_subact";N;s:8:"act_name";s:5:"ggggg";s:15:"act_bookingtext";s:5:"ggggg";s:15:"act_texteticket";s:5:"ggggg";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"23";s:17:"act_originalstock";s:2:"34";s:15:"act_actualstock";s:2:"22";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-14";s:13:"act_payeddate";s:10:"2014-03-14";s:12:"act_deadline";s:10:"2014-03-15";s:13:"act_admintext";s:5:"ggggg";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"1";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"1";s:9:"sup_fname";s:7:"sreynak";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:7:"sreynak";s:14:"sup_occupation";N;s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:6:"Webapp";s:11:"sup_country";s:15:"Kampong Chhnang";s:8:"sup_city";s:15:"Kampong Chhnang";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:17:"sreynak@gmail.com";s:11:"sup_website";s:15:"www.sreynak.com";s:9:"sup_phone";s:10:"0123456789";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"8";s:21:"calendar_available_id";s:1:"2";s:13:"activities_id";s:2:"25";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}s:15:"extraproduct-pk";a:3:{i:3;a:1:{i:3;a:55:{s:5:"ep_id";s:1:"3";s:7:"ep_name";s:3:"lux";s:12:"ep_perperson";s:1:"0";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:3:"lux";s:14:"ep_etickettext";s:3:"lux";s:8:"photo_id";s:1:"1";s:11:"supplier_id";s:1:"2";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"76";s:16:"ep_originalstock";s:2:"21";s:14:"ep_actualstock";s:2:"25";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:3:"lux";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"5";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:1:"3";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:4;a:1:{i:4;a:55:{s:5:"ep_id";s:1:"4";s:7:"ep_name";s:6:"ticket";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:6:"ticket";s:14:"ep_etickettext";s:6:"ticket";s:8:"photo_id";s:1:"2";s:11:"supplier_id";s:1:"3";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"45";s:16:"ep_originalstock";s:2:"65";s:14:"ep_actualstock";s:3:"144";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:6:"ticket";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";N;s:9:"sup_fname";N;s:9:"sup_lname";N;s:16:"sup_company_name";N;s:14:"sup_occupation";N;s:10:"sup_sector";N;s:21:"sup_service_provision";N;s:11:"sup_country";N;s:8:"sup_city";N;s:11:"sup_address";N;s:12:"sup_postcode";N;s:9:"sup_email";N;s:11:"sup_website";N;s:9:"sup_phone";N;s:14:"sup_home_phone";N;s:11:"sup_deleted";N;s:8:"ep_cl_id";s:1:"4";s:21:"calendar_available_id";s:1:"4";s:15:"extraproduct_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:1;a:1:{i:1;a:55:{s:5:"ep_id";s:1:"1";s:7:"ep_name";s:5:"test1";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:4:"test";s:14:"ep_etickettext";s:4:"test";s:8:"photo_id";s:1:"2";s:11:"supplier_id";s:1:"3";s:16:"ep_purchaseprice";s:2:"20";s:12:"ep_saleprice";s:2:"20";s:16:"ep_originalstock";s:2:"20";s:14:"ep_actualstock";s:2:"20";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2013-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:4:"test";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";N;s:9:"sup_fname";N;s:9:"sup_lname";N;s:16:"sup_company_name";N;s:14:"sup_occupation";N;s:10:"sup_sector";N;s:21:"sup_service_provision";N;s:11:"sup_country";N;s:8:"sup_city";N;s:11:"sup_address";N;s:12:"sup_postcode";N;s:9:"sup_email";N;s:11:"sup_website";N;s:9:"sup_phone";N;s:14:"sup_home_phone";N;s:11:"sup_deleted";N;s:8:"ep_cl_id";s:1:"1";s:21:"calendar_available_id";s:1:"1";s:15:"extraproduct_id";s:1:"1";s:5:"ca_id";s:1:"1";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 PM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}}', 'a:3:{s:14:"main-transport";a:2:{i:3;a:68:{s:5:"tp_id";s:1:"3";s:8:"tp_subof";s:1:"0";s:7:"tp_name";s:4:"bbbb";s:14:"tp_textbooking";s:4:"bbbb";s:14:"tp_texteticket";s:4:"bbbb";s:16:"tp_purchaseprice";s:3:"111";s:12:"tp_saleprice";s:2:"23";s:16:"tp_originalstock";s:2:"32";s:14:"tp_actualstock";s:2:"22";s:15:"tp_providerdate";s:10:"2014-03-15";s:12:"tp_payeddate";s:10:"2014-03-16";s:11:"tp_deadline";s:10:"2014-03-23";s:12:"tp_admintext";s:3:"bbb";s:17:"tp_pickuplocation";s:1:"4";s:15:"tp_arrival_date";s:10:"2014-03-29";s:8:"photo_id";s:1:"2";s:9:"tp_ftv_id";s:1:"1";s:14:"tp_supplier_id";s:1:"2";s:9:"tp_status";s:1:"1";s:10:"tp_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"tp_cal_id";s:1:"3";s:21:"calendar_available_id";s:2:"24";s:12:"transport_id";s:1:"3";s:5:"ca_id";s:2:"24";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-15";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:4;a:68:{s:5:"tp_id";s:1:"4";s:8:"tp_subof";s:1:"0";s:7:"tp_name";s:4:"nnnn";s:14:"tp_textbooking";s:4:"nnnn";s:14:"tp_texteticket";s:4:"nnnn";s:16:"tp_purchaseprice";s:2:"12";s:12:"tp_saleprice";s:2:"12";s:16:"tp_originalstock";s:2:"35";s:14:"tp_actualstock";s:2:"67";s:15:"tp_providerdate";s:10:"2014-03-22";s:12:"tp_payeddate";s:10:"2014-03-20";s:11:"tp_deadline";s:10:"2014-03-31";s:12:"tp_admintext";s:4:"nnnn";s:17:"tp_pickuplocation";s:1:"4";s:15:"tp_arrival_date";s:10:"2014-03-17";s:8:"photo_id";s:1:"2";s:9:"tp_ftv_id";s:1:"1";s:14:"tp_supplier_id";s:1:"2";s:9:"tp_status";s:1:"1";s:10:"tp_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"tp_cal_id";s:1:"4";s:21:"calendar_available_id";s:2:"25";s:12:"transport_id";s:1:"4";s:5:"ca_id";s:2:"25";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-15";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"4:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}s:13:"sub-transport";a:2:{i:3;a:1:{i:6;a:68:{s:5:"tp_id";s:1:"6";s:8:"tp_subof";s:1:"3";s:7:"tp_name";s:4:"pppp";s:14:"tp_textbooking";s:4:"pppp";s:14:"tp_texteticket";s:4:"nnnn";s:16:"tp_purchaseprice";s:2:"12";s:12:"tp_saleprice";s:2:"12";s:16:"tp_originalstock";s:2:"35";s:14:"tp_actualstock";s:2:"67";s:15:"tp_providerdate";s:10:"2014-03-22";s:12:"tp_payeddate";s:10:"2014-03-20";s:11:"tp_deadline";s:10:"2014-03-31";s:12:"tp_admintext";s:4:"nnnn";s:17:"tp_pickuplocation";s:1:"4";s:15:"tp_arrival_date";s:10:"2014-03-17";s:8:"photo_id";s:1:"2";s:9:"tp_ftv_id";s:1:"1";s:14:"tp_supplier_id";s:1:"2";s:9:"tp_status";s:1:"1";s:10:"tp_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"tp_cal_id";s:1:"6";s:21:"calendar_available_id";s:2:"24";s:12:"transport_id";s:1:"6";s:5:"ca_id";s:2:"24";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-15";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:4;a:1:{i:5;a:68:{s:5:"tp_id";s:1:"5";s:8:"tp_subof";s:1:"4";s:7:"tp_name";s:4:"oooo";s:14:"tp_textbooking";s:4:"0000";s:14:"tp_texteticket";s:4:"nnnn";s:16:"tp_purchaseprice";s:2:"12";s:12:"tp_saleprice";s:2:"12";s:16:"tp_originalstock";s:2:"35";s:14:"tp_actualstock";s:2:"67";s:15:"tp_providerdate";s:10:"2014-03-22";s:12:"tp_payeddate";s:10:"2014-03-20";s:11:"tp_deadline";s:10:"2014-03-31";s:12:"tp_admintext";s:4:"nnnn";s:17:"tp_pickuplocation";s:1:"4";s:15:"tp_arrival_date";s:10:"2014-03-17";s:8:"photo_id";s:1:"2";s:9:"tp_ftv_id";s:1:"1";s:14:"tp_supplier_id";s:1:"2";s:9:"tp_status";s:1:"1";s:10:"tp_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"tp_cal_id";s:1:"5";s:21:"calendar_available_id";s:2:"25";s:12:"transport_id";s:1:"5";s:5:"ca_id";s:2:"25";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-15";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"4:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}s:15:"extraproduct-pk";a:2:{i:3;a:1:{i:33;a:55:{s:5:"ep_id";s:2:"33";s:7:"ep_name";s:3:"hhh";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:6:"rerrrr";s:14:"ep_etickettext";s:6:"terttt";s:8:"photo_id";s:1:"3";s:11:"supplier_id";s:1:"4";s:16:"ep_purchaseprice";s:2:"21";s:12:"ep_saleprice";s:2:"12";s:16:"ep_originalstock";s:2:"32";s:14:"ep_actualstock";s:2:"45";s:15:"ep_providerdate";s:10:"2014-03-12";s:12:"ep_payeddate";s:10:"2014-03-12";s:11:"ep_deadline";s:10:"2014-03-13";s:12:"ep_admintext";s:6:"rrrrrr";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"4";s:9:"sup_fname";s:4:"rany";s:9:"sup_lname";s:2:"ra";s:16:"sup_company_name";s:4:"Rany";s:14:"sup_occupation";s:6:"tester";s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:4:"test";s:11:"sup_country";s:2:"pp";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"899";s:9:"sup_email";s:14:"rany@gmail.com";s:11:"sup_website";s:8:"rany.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:8:"09876542";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"7";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:2:"33";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:4:"test";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:4;a:1:{i:3;a:55:{s:5:"ep_id";s:1:"3";s:7:"ep_name";s:3:"lux";s:12:"ep_perperson";s:1:"0";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:3:"lux";s:14:"ep_etickettext";s:3:"lux";s:8:"photo_id";s:1:"1";s:11:"supplier_id";s:1:"2";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"76";s:16:"ep_originalstock";s:2:"21";s:14:"ep_actualstock";s:2:"25";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:3:"lux";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"5";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:1:"3";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}}', 2, 1, 1, 1, 0);
INSERT INTO `package_conjection` (`pkcon_id`, `pkcon_start_date`, `pkcon_end_date`, `pkcon_description`, `pkcon_name`, `pkcon_actualstock`, `pkcon_originalstock`, `pkcon_purchaseprice`, `pkcon_saleprice`, `pk_accomodation`, `pk_activities`, `pk_transportation`, `pkconl_ftv_id`, `pkcon_lt_id`, `phoid`, `pkcon_status`, `pkcon_deleted`) VALUES
(5, '2014-03-31', '2014-04-03', 'Packaging can be described as a coordinated system of preparing goods for transport, warehousing, logistics, sale, and end use.', 'Package 5', 10, 10, 12, 14, 'a:3:{s:18:"main-accommodation";a:1:{i:13;a:77:{s:6:"acc_id";s:2:"13";s:9:"acc_subof";s:1:"0";s:8:"acc_name";s:4:"test";s:15:"acc_bookingtext";s:4:"test";s:15:"acc_texteticket";s:4:"test";s:17:"acc_purchaseprice";s:2:"21";s:13:"acc_saleprice";s:2:"23";s:17:"acc_originalstock";s:2:"32";s:15:"acc_actualstock";s:2:"34";s:13:"acc_hoteldate";s:10:"2014-03-14";s:13:"acc_payeddate";s:10:"2014-03-14";s:12:"acc_deadline";s:10:"2014-03-14";s:13:"acc_admintext";s:4:"test";s:11:"location_id";s:1:"4";s:8:"photo_id";s:1:"2";s:9:"acc_rt_id";N;s:10:"acc_ftv_id";s:1:"1";s:17:"classification_id";s:1:"3";s:15:"acc_supplier_id";s:1:"2";s:10:"acc_status";s:1:"1";s:11:"acc_deleted";s:1:"0";s:5:"rt_id";N;s:7:"rt_name";N;s:9:"rt_status";N;s:10:"rt_deleted";N;s:6:"clf_id";s:1:"3";s:8:"clf_name";s:10:"Three Star";s:9:"clf_value";s:1:"3";s:11:"clf_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"accca_id";s:1:"7";s:16:"accomodations_id";s:2:"13";s:21:"calendar_available_id";s:1:"2";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}s:17:"sub-accommodation";a:1:{i:13;a:1:{i:19;a:77:{s:6:"acc_id";s:2:"19";s:9:"acc_subof";s:2:"13";s:8:"acc_name";s:3:"eee";s:15:"acc_bookingtext";s:4:"bbbb";s:15:"acc_texteticket";s:4:"bbbb";s:17:"acc_purchaseprice";s:2:"21";s:13:"acc_saleprice";s:3:"300";s:17:"acc_originalstock";s:2:"32";s:15:"acc_actualstock";s:2:"22";s:13:"acc_hoteldate";s:10:"2014-03-14";s:13:"acc_payeddate";s:10:"2014-03-15";s:12:"acc_deadline";s:10:"2014-03-15";s:13:"acc_admintext";s:4:"bbbb";s:11:"location_id";s:1:"4";s:8:"photo_id";s:1:"1";s:9:"acc_rt_id";s:1:"1";s:10:"acc_ftv_id";s:1:"1";s:17:"classification_id";s:1:"2";s:15:"acc_supplier_id";s:1:"2";s:10:"acc_status";s:1:"1";s:11:"acc_deleted";s:1:"0";s:5:"rt_id";s:1:"1";s:7:"rt_name";s:5:"room1";s:9:"rt_status";s:1:"1";s:10:"rt_deleted";s:1:"1";s:6:"clf_id";s:1:"2";s:8:"clf_name";s:8:"Two Star";s:9:"clf_value";s:1:"2";s:11:"clf_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"accca_id";s:1:"6";s:16:"accomodations_id";s:2:"19";s:21:"calendar_available_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}s:15:"extraproduct-pk";a:1:{i:13;a:1:{i:3;a:55:{s:5:"ep_id";s:1:"3";s:7:"ep_name";s:3:"lux";s:12:"ep_perperson";s:1:"0";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:3:"lux";s:14:"ep_etickettext";s:3:"lux";s:8:"photo_id";s:1:"1";s:11:"supplier_id";s:1:"2";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"76";s:16:"ep_originalstock";s:2:"21";s:14:"ep_actualstock";s:2:"25";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:3:"lux";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"5";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:1:"3";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}}', 'a:3:{s:15:"main-activities";a:3:{i:3;a:69:{s:6:"act_id";s:1:"3";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:9:"Cambodia1";s:15:"act_bookingtext";s:4:"dddd";s:15:"act_texteticket";s:4:"dddd";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"23";s:17:"act_originalstock";s:2:"35";s:15:"act_actualstock";s:2:"34";s:14:"act_choiceitem";s:1:"0";s:17:"act_organiserdate";s:10:"2014-03-12";s:13:"act_payeddate";s:10:"2014-03-12";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:4:"dddd";s:8:"photo_id";s:1:"1";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"3";s:21:"calendar_available_id";s:1:"3";s:13:"activities_id";s:1:"3";s:5:"ca_id";s:1:"3";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:4;a:69:{s:6:"act_id";s:1:"4";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:7:"sokeara";s:15:"act_bookingtext";s:5:"fffff";s:15:"act_texteticket";s:5:"fffff";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:3:"300";s:17:"act_originalstock";s:2:"32";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-12";s:13:"act_payeddate";s:10:"2014-03-12";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:6:"ffffff";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"4";s:21:"calendar_available_id";s:1:"4";s:13:"activities_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:1;a:69:{s:6:"act_id";s:1:"1";s:9:"act_subof";s:1:"0";s:17:"act_cherge_subact";N;s:8:"act_name";s:4:"test";s:15:"act_bookingtext";s:4:"rrrr";s:15:"act_texteticket";s:3:"rrr";s:17:"act_purchaseprice";s:2:"34";s:13:"act_saleprice";s:2:"33";s:17:"act_originalstock";s:2:"44";s:15:"act_actualstock";s:2:"67";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-13";s:13:"act_payeddate";s:10:"2014-03-13";s:12:"act_deadline";s:10:"2014-03-13";s:13:"act_admintext";s:4:"rrrr";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"1";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"1";s:9:"sup_fname";s:7:"sreynak";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:7:"sreynak";s:14:"sup_occupation";N;s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:6:"Webapp";s:11:"sup_country";s:15:"Kampong Chhnang";s:8:"sup_city";s:15:"Kampong Chhnang";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:17:"sreynak@gmail.com";s:11:"sup_website";s:15:"www.sreynak.com";s:9:"sup_phone";s:10:"0123456789";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"1";s:21:"calendar_available_id";s:1:"1";s:13:"activities_id";s:1:"1";s:5:"ca_id";s:1:"1";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 PM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}s:14:"sub-activities";a:2:{i:3;a:2:{i:24;a:69:{s:6:"act_id";s:2:"24";s:9:"act_subof";s:1:"3";s:17:"act_cherge_subact";N;s:8:"act_name";s:7:"fffffff";s:15:"act_bookingtext";s:3:"fff";s:15:"act_texteticket";s:4:"ffff";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"12";s:17:"act_originalstock";s:2:"35";s:15:"act_actualstock";s:2:"34";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-14";s:13:"act_payeddate";s:10:"2014-03-14";s:12:"act_deadline";s:10:"2014-03-15";s:13:"act_admintext";s:3:"fff";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"2";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"7";s:21:"calendar_available_id";s:1:"1";s:13:"activities_id";s:2:"24";s:5:"ca_id";s:1:"1";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 PM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:26;a:69:{s:6:"act_id";s:2:"26";s:9:"act_subof";s:1:"3";s:17:"act_cherge_subact";N;s:8:"act_name";s:5:"hhhhh";s:15:"act_bookingtext";s:4:"hhhh";s:15:"act_texteticket";s:4:"hhhh";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"23";s:17:"act_originalstock";s:2:"23";s:15:"act_actualstock";s:2:"45";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-14";s:13:"act_payeddate";s:10:"2014-03-15";s:12:"act_deadline";s:10:"2014-03-16";s:13:"act_admintext";s:4:"hhhh";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"3";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";N;s:9:"sup_fname";N;s:9:"sup_lname";N;s:16:"sup_company_name";N;s:14:"sup_occupation";N;s:10:"sup_sector";N;s:21:"sup_service_provision";N;s:11:"sup_country";N;s:8:"sup_city";N;s:11:"sup_address";N;s:12:"sup_postcode";N;s:9:"sup_email";N;s:11:"sup_website";N;s:9:"sup_phone";N;s:14:"sup_home_phone";N;s:11:"sup_deleted";N;s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"9";s:21:"calendar_available_id";s:1:"2";s:13:"activities_id";s:2:"26";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:4;a:1:{i:25;a:69:{s:6:"act_id";s:2:"25";s:9:"act_subof";s:1:"4";s:17:"act_cherge_subact";N;s:8:"act_name";s:5:"ggggg";s:15:"act_bookingtext";s:5:"ggggg";s:15:"act_texteticket";s:5:"ggggg";s:17:"act_purchaseprice";s:2:"12";s:13:"act_saleprice";s:2:"23";s:17:"act_originalstock";s:2:"34";s:15:"act_actualstock";s:2:"22";s:14:"act_choiceitem";s:1:"1";s:17:"act_organiserdate";s:10:"2014-03-14";s:13:"act_payeddate";s:10:"2014-03-14";s:12:"act_deadline";s:10:"2014-03-15";s:13:"act_admintext";s:5:"ggggg";s:8:"photo_id";s:1:"2";s:11:"location_id";s:1:"4";s:10:"act_ftv_id";s:1:"1";s:15:"act_supplier_id";s:1:"1";s:10:"act_status";s:1:"1";s:11:"act_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"1";s:9:"sup_fname";s:7:"sreynak";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:7:"sreynak";s:14:"sup_occupation";N;s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:6:"Webapp";s:11:"sup_country";s:15:"Kampong Chhnang";s:8:"sup_city";s:15:"Kampong Chhnang";s:11:"sup_address";s:10:"Phnom Penh";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:17:"sreynak@gmail.com";s:11:"sup_website";s:15:"www.sreynak.com";s:9:"sup_phone";s:10:"0123456789";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"actcca_id";s:1:"8";s:21:"calendar_available_id";s:1:"2";s:13:"activities_id";s:2:"25";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}s:15:"extraproduct-pk";a:3:{i:3;a:1:{i:3;a:55:{s:5:"ep_id";s:1:"3";s:7:"ep_name";s:3:"lux";s:12:"ep_perperson";s:1:"0";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:3:"lux";s:14:"ep_etickettext";s:3:"lux";s:8:"photo_id";s:1:"1";s:11:"supplier_id";s:1:"2";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"76";s:16:"ep_originalstock";s:2:"21";s:14:"ep_actualstock";s:2:"25";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:3:"lux";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"5";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:1:"3";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:4;a:1:{i:4;a:55:{s:5:"ep_id";s:1:"4";s:7:"ep_name";s:6:"ticket";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:6:"ticket";s:14:"ep_etickettext";s:6:"ticket";s:8:"photo_id";s:1:"2";s:11:"supplier_id";s:1:"3";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"45";s:16:"ep_originalstock";s:2:"65";s:14:"ep_actualstock";s:3:"144";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:6:"ticket";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";N;s:9:"sup_fname";N;s:9:"sup_lname";N;s:16:"sup_company_name";N;s:14:"sup_occupation";N;s:10:"sup_sector";N;s:21:"sup_service_provision";N;s:11:"sup_country";N;s:8:"sup_city";N;s:11:"sup_address";N;s:12:"sup_postcode";N;s:9:"sup_email";N;s:11:"sup_website";N;s:9:"sup_phone";N;s:14:"sup_home_phone";N;s:11:"sup_deleted";N;s:8:"ep_cl_id";s:1:"4";s:21:"calendar_available_id";s:1:"4";s:15:"extraproduct_id";s:1:"4";s:5:"ca_id";s:1:"4";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"3:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:1;a:1:{i:1;a:55:{s:5:"ep_id";s:1:"1";s:7:"ep_name";s:5:"test1";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:4:"test";s:14:"ep_etickettext";s:4:"test";s:8:"photo_id";s:1:"2";s:11:"supplier_id";s:1:"3";s:16:"ep_purchaseprice";s:2:"20";s:12:"ep_saleprice";s:2:"20";s:16:"ep_originalstock";s:2:"20";s:14:"ep_actualstock";s:2:"20";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2013-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:4:"test";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";N;s:9:"sup_fname";N;s:9:"sup_lname";N;s:16:"sup_company_name";N;s:14:"sup_occupation";N;s:10:"sup_sector";N;s:21:"sup_service_provision";N;s:11:"sup_country";N;s:8:"sup_city";N;s:11:"sup_address";N;s:12:"sup_postcode";N;s:9:"sup_email";N;s:11:"sup_website";N;s:9:"sup_phone";N;s:14:"sup_home_phone";N;s:11:"sup_deleted";N;s:8:"ep_cl_id";s:1:"1";s:21:"calendar_available_id";s:1:"1";s:15:"extraproduct_id";s:1:"1";s:5:"ca_id";s:1:"1";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 PM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}}', 'a:3:{s:14:"main-transport";a:2:{i:3;a:68:{s:5:"tp_id";s:1:"3";s:8:"tp_subof";s:1:"0";s:7:"tp_name";s:4:"bbbb";s:14:"tp_textbooking";s:4:"bbbb";s:14:"tp_texteticket";s:4:"bbbb";s:16:"tp_purchaseprice";s:3:"111";s:12:"tp_saleprice";s:2:"23";s:16:"tp_originalstock";s:2:"32";s:14:"tp_actualstock";s:2:"22";s:15:"tp_providerdate";s:10:"2014-03-15";s:12:"tp_payeddate";s:10:"2014-03-16";s:11:"tp_deadline";s:10:"2014-03-23";s:12:"tp_admintext";s:3:"bbb";s:17:"tp_pickuplocation";s:1:"4";s:15:"tp_arrival_date";s:10:"2014-03-29";s:8:"photo_id";s:1:"2";s:9:"tp_ftv_id";s:1:"1";s:14:"tp_supplier_id";s:1:"2";s:9:"tp_status";s:1:"1";s:10:"tp_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"tp_cal_id";s:1:"3";s:21:"calendar_available_id";s:2:"24";s:12:"transport_id";s:1:"3";s:5:"ca_id";s:2:"24";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-15";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}i:4;a:68:{s:5:"tp_id";s:1:"4";s:8:"tp_subof";s:1:"0";s:7:"tp_name";s:4:"nnnn";s:14:"tp_textbooking";s:4:"nnnn";s:14:"tp_texteticket";s:4:"nnnn";s:16:"tp_purchaseprice";s:2:"12";s:12:"tp_saleprice";s:2:"12";s:16:"tp_originalstock";s:2:"35";s:14:"tp_actualstock";s:2:"67";s:15:"tp_providerdate";s:10:"2014-03-22";s:12:"tp_payeddate";s:10:"2014-03-20";s:11:"tp_deadline";s:10:"2014-03-31";s:12:"tp_admintext";s:4:"nnnn";s:17:"tp_pickuplocation";s:1:"4";s:15:"tp_arrival_date";s:10:"2014-03-17";s:8:"photo_id";s:1:"2";s:9:"tp_ftv_id";s:1:"1";s:14:"tp_supplier_id";s:1:"2";s:9:"tp_status";s:1:"1";s:10:"tp_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"tp_cal_id";s:1:"4";s:21:"calendar_available_id";s:2:"25";s:12:"transport_id";s:1:"4";s:5:"ca_id";s:2:"25";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-15";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"4:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}s:13:"sub-transport";a:2:{i:3;a:1:{i:6;a:68:{s:5:"tp_id";s:1:"6";s:8:"tp_subof";s:1:"3";s:7:"tp_name";s:4:"pppp";s:14:"tp_textbooking";s:4:"pppp";s:14:"tp_texteticket";s:4:"nnnn";s:16:"tp_purchaseprice";s:2:"12";s:12:"tp_saleprice";s:2:"12";s:16:"tp_originalstock";s:2:"35";s:14:"tp_actualstock";s:2:"67";s:15:"tp_providerdate";s:10:"2014-03-22";s:12:"tp_payeddate";s:10:"2014-03-20";s:11:"tp_deadline";s:10:"2014-03-31";s:12:"tp_admintext";s:4:"nnnn";s:17:"tp_pickuplocation";s:1:"4";s:15:"tp_arrival_date";s:10:"2014-03-17";s:8:"photo_id";s:1:"2";s:9:"tp_ftv_id";s:1:"1";s:14:"tp_supplier_id";s:1:"2";s:9:"tp_status";s:1:"1";s:10:"tp_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"tp_cal_id";s:1:"6";s:21:"calendar_available_id";s:2:"24";s:12:"transport_id";s:1:"6";s:5:"ca_id";s:2:"24";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-15";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"6:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:4;a:1:{i:5;a:68:{s:5:"tp_id";s:1:"5";s:8:"tp_subof";s:1:"4";s:7:"tp_name";s:4:"oooo";s:14:"tp_textbooking";s:4:"0000";s:14:"tp_texteticket";s:4:"nnnn";s:16:"tp_purchaseprice";s:2:"12";s:12:"tp_saleprice";s:2:"12";s:16:"tp_originalstock";s:2:"35";s:14:"tp_actualstock";s:2:"67";s:15:"tp_providerdate";s:10:"2014-03-22";s:12:"tp_payeddate";s:10:"2014-03-20";s:11:"tp_deadline";s:10:"2014-03-31";s:12:"tp_admintext";s:4:"nnnn";s:17:"tp_pickuplocation";s:1:"4";s:15:"tp_arrival_date";s:10:"2014-03-17";s:8:"photo_id";s:1:"2";s:9:"tp_ftv_id";s:1:"1";s:14:"tp_supplier_id";s:1:"2";s:9:"tp_status";s:1:"1";s:10:"tp_deleted";s:1:"0";s:5:"lt_id";s:1:"4";s:7:"lt_name";s:8:"anywhere";s:9:"lt_status";s:1:"1";s:10:"lt_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:6:"ftv_id";s:1:"1";s:8:"ftv_name";s:10:"Festival 2";s:12:"ftv_photo_id";s:1:"2";s:9:"ftv_lt_id";s:1:"2";s:10:"ftv_detail";s:152:"Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display Display ";s:11:"ftv_deleted";s:1:"0";s:10:"ftv_status";s:1:"1";s:9:"tp_cal_id";s:1:"5";s:21:"calendar_available_id";s:2:"25";s:12:"transport_id";s:1:"5";s:5:"ca_id";s:2:"25";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-15";s:8:"end_date";s:10:"2014-03-30";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"4:00 AM";s:8:"pho_name";s:5:"k.jpg";s:10:"pho_detail";s:5:"test1";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}s:15:"extraproduct-pk";a:2:{i:3;a:1:{i:33;a:55:{s:5:"ep_id";s:2:"33";s:7:"ep_name";s:3:"hhh";s:12:"ep_perperson";s:1:"1";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:6:"rerrrr";s:14:"ep_etickettext";s:6:"terttt";s:8:"photo_id";s:1:"3";s:11:"supplier_id";s:1:"4";s:16:"ep_purchaseprice";s:2:"21";s:12:"ep_saleprice";s:2:"12";s:16:"ep_originalstock";s:2:"32";s:14:"ep_actualstock";s:2:"45";s:15:"ep_providerdate";s:10:"2014-03-12";s:12:"ep_payeddate";s:10:"2014-03-12";s:11:"ep_deadline";s:10:"2014-03-13";s:12:"ep_admintext";s:6:"rrrrrr";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"4";s:9:"sup_fname";s:4:"rany";s:9:"sup_lname";s:2:"ra";s:16:"sup_company_name";s:4:"Rany";s:14:"sup_occupation";s:6:"tester";s:10:"sup_sector";s:2:"IT";s:21:"sup_service_provision";s:4:"test";s:11:"sup_country";s:2:"pp";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"899";s:9:"sup_email";s:14:"rany@gmail.com";s:11:"sup_website";s:8:"rany.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:8:"09876542";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"7";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:2:"33";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:4:"test";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}i:4;a:1:{i:3;a:55:{s:5:"ep_id";s:1:"3";s:7:"ep_name";s:3:"lux";s:12:"ep_perperson";s:1:"0";s:13:"ep_perbooking";s:1:"1";s:14:"ep_bookingtext";s:3:"lux";s:14:"ep_etickettext";s:3:"lux";s:8:"photo_id";s:1:"1";s:11:"supplier_id";s:1:"2";s:16:"ep_purchaseprice";s:2:"23";s:12:"ep_saleprice";s:2:"76";s:16:"ep_originalstock";s:2:"21";s:14:"ep_actualstock";s:2:"25";s:15:"ep_providerdate";s:10:"2014-03-06";s:12:"ep_payeddate";s:10:"2014-03-06";s:11:"ep_deadline";s:10:"2014-03-06";s:12:"ep_admintext";s:3:"lux";s:9:"ep_status";s:1:"1";s:10:"ep_deleted";s:1:"0";s:6:"sup_id";s:1:"2";s:9:"sup_fname";s:8:"sreynich";s:9:"sup_lname";s:4:"chet";s:16:"sup_company_name";s:8:"sreynich";s:14:"sup_occupation";s:4:"Tour";s:10:"sup_sector";s:4:"Tour";s:21:"sup_service_provision";s:4:"tour";s:11:"sup_country";s:2:"PP";s:8:"sup_city";s:2:"pp";s:11:"sup_address";s:2:"pp";s:12:"sup_postcode";s:3:"855";s:9:"sup_email";s:18:"sreynich@gmail.com";s:11:"sup_website";s:12:"sreynich.com";s:9:"sup_phone";s:9:"098765432";s:14:"sup_home_phone";s:9:"012345678";s:11:"sup_deleted";s:1:"0";s:8:"ep_cl_id";s:1:"5";s:21:"calendar_available_id";s:1:"2";s:15:"extraproduct_id";s:1:"3";s:5:"ca_id";s:1:"2";s:6:"monday";s:1:"1";s:7:"tuesday";s:1:"1";s:9:"wednesday";s:1:"1";s:8:"thursday";s:1:"1";s:6:"friday";s:1:"1";s:8:"saturday";s:1:"1";s:6:"sunday";s:1:"1";s:10:"start_date";s:10:"2014-03-17";s:8:"end_date";s:10:"2014-03-21";s:10:"start_time";s:7:"1:00 AM";s:8:"end_time";s:7:"2:00 AM";s:8:"pho_name";s:5:"j.jpg";s:10:"pho_detail";s:4:"test";s:10:"pho_source";s:25:"2014-02-23_18.03_.47_.jpg";s:10:"pho_status";s:1:"1";s:10:"pho_delete";s:1:"0";s:5:"pt_id";s:1:"1";}}}}', 2, 1, 1, 1, 0),
(6, '2014-03-31', '2014-04-06', 'Packaging is the technology of enclosing or protecting products for distribution, storage, sale, and use. Packaging also refers to the process of design, evaluation, and production of packages.', 'Package 6', 10, 10, 12, 14, NULL, NULL, NULL, 2, 1, 1, 1, 0),
(7, '2014-04-23', '2014-04-23', 'Package', 'package10', 45, 32, 12, 23, NULL, NULL, NULL, 14, 2, 19, 1, 0),
(8, '2014-04-23', '2014-04-23', 'Package', 'package10', 45, 32, 12, 23, NULL, NULL, NULL, 14, 2, 14, 1, 0),
(9, '2014-04-23', '2014-04-24', 'package11', 'package11', 45, 32, 12, 23, NULL, NULL, NULL, 14, 3, 23, 1, 0),
(10, '2014-04-23', '2014-04-30', 'You enjoy and take a tour with codingate. get some experience.', '2 night 3 day codingate visiting', 10, 10, 12, 15, NULL, NULL, NULL, 2, 1, 16, 1, 0),
(11, '2014-04-23', '2014-04-27', 'Package13', 'package13', 45, 32, 12, 23, NULL, NULL, NULL, 1, 2, 13, 1, 0),
(12, '2014-04-24', '2014-04-25', 'package14', 'package14', 45, 32, 12, 23, NULL, NULL, NULL, 14, 3, 24, 1, 0),
(13, '2014-04-24', '2014-04-25', 'package15', 'package15', 45, 32, 12, 23, NULL, NULL, NULL, 14, 3, 24, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
CREATE TABLE IF NOT EXISTS `passenger` (
  `pass_id` int(11) NOT NULL AUTO_INCREMENT,
  `pass_addby` int(11) DEFAULT '0',
  `pass_fname` varchar(50) DEFAULT NULL,
  `pass_lname` varchar(50) DEFAULT NULL,
  `pass_email` varchar(150) DEFAULT NULL,
  `pass_phone` varchar(30) DEFAULT NULL,
  `pass_address` tinytext,
  `pass_company` varchar(70) DEFAULT NULL,
  `pass_password` varchar(100) DEFAULT NULL,
  `pass_gender` char(1) DEFAULT NULL,
  `pass_status` int(11) DEFAULT NULL,
  `pass_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pass_id`),
  UNIQUE KEY `pass_email_UNIQUE` (`pass_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pass_id`, `pass_addby`, `pass_fname`, `pass_lname`, `pass_email`, `pass_phone`, `pass_address`, `pass_company`, `pass_password`, `pass_gender`, `pass_status`, `pass_deleted`) VALUES
(1, 0, 'sreynak', 'chet', 'sreynak.chet@gmail.com', '098765432', 'Kampong Chhnang', 'Codingate', '123456789', 'F', 1, 0),
(2, 0, 'sreypao', 'ny', 'sreypao.ny@gmail.com', '0975893268', 'Donkeo distric, Takeo province', 'Codingate', '123456789', 'F', 1, 0),
(3, 5, 'sokry', 'sat', 'sokry.sat@gmail.com', '069969052', 'kompong chhag', 'codingate', NULL, '0', 1, 0),
(4, 0, 'sreychen', 'sat', 'administrator@khmermatch.com', '08667701', 'bat tambong', 'sofitel', '123456789', '0', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `passenger_booking`
--

DROP TABLE IF EXISTS `passenger_booking`;
CREATE TABLE IF NOT EXISTS `passenger_booking` (
  `pbk_id` int(11) NOT NULL AUTO_INCREMENT,
  `pbk_pass_come_with` tinytext,
  `pbk_pass_id` int(11) DEFAULT NULL,
  `pbk_bk_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pbk_id`),
  KEY `fk_passenger_booking_passenger1` (`pbk_pass_id`),
  KEY `fk_passenger_booking_booking1` (`pbk_bk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `passenger_booking`
--

INSERT INTO `passenger_booking` (`pbk_id`, `pbk_pass_come_with`, `pbk_pass_id`, `pbk_bk_id`) VALUES
(1, 'a:1:{i:2;s:1:"2";}', 1, 5),
(2, 'a:1:{i:4;i:4;}', 1, 6),
(3, NULL, 1, NULL),
(4, 'a:1:{i:2;s:1:"2";}', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `pho_name` varchar(100) DEFAULT NULL,
  `pho_detail` tinytext,
  `pho_source` varchar(100) DEFAULT NULL,
  `pho_status` tinyint(1) DEFAULT NULL,
  `pho_delete` tinyint(1) DEFAULT NULL,
  `pt_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `fk_photo_photo_type1` (`pt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `pho_name`, `pho_detail`, `pho_source`, `pho_status`, `pho_delete`, `pt_id`) VALUES
(1, 'j.jpg', 'test', '2014-02-23_18.03_.47_.jpg', 1, 1, 5),
(2, 'k.jpg', 'test1', '2014-02-23_18.03_.47_.jpg', 1, 1, 1),
(3, 'test', 'test', '2014-02-23_18.03_.47_.jpg', 1, 1, 1),
(4, 'k.jpg', 'test1', '2014-02-23_18.03_.47_.jpg', 1, 1, 1),
(5, 'k.jpg', 'test', '2014-02-23_18.03_.47_.jpg', 1, 1, 5),
(6, 'slide1', 'aaaa', '1531568_1418430568410762_1231620565_n.jpg', 1, 1, 5),
(7, 'bbbb', 'bbbbb', 'Free_nature_clipart_background_Desktop_Wallpaper1.jpg', 1, 1, 5),
(8, 'ccccc', 'ccccc', 'free_wallpaper_11.jpg', 1, 1, 5),
(9, 'ddddd', 'ddddd', 'rose3.jpg', 1, 1, 5),
(10, 'Slider1', 'Slider1', 'images3.jpg', 1, 0, 5),
(11, 'Slider2', 'Slider2', 'images.jpg', 1, 0, 5),
(12, 'Single Room (Neak Meas)', 'In hotels the rooms are categorized and priced according to the type of bed, number of occupants, number of bed, decor, specific furnishings or features and nowadays special even the special theme available in the room.', '119___Selected.jpg', 1, 0, 2),
(13, 'Single Room (Sokha)', 'Renovated to provide a tranquil atmosphere, with a duvet-style bed that our guests can gently wrap themselves in for a great night''s sleep. The mist shower installed in the bathroom will help you ease your fatigue.', '855pe_9481_w800_h800.jpg', 1, 0, 2),
(14, 'Single Room (Golden)', 'Beds are placed symmetrically on both sides of room so that the two beds face each other. This layout creates a cozy atmosphere, making the room suitable for families and groups of young women.', 'accommodation2b.jpg', 1, 0, 2),
(15, 'Single Room (Good Luck Day)', 'A room with large windows which create an open feeling. Have a pleasant time with your family or friends in this spacious room.', 'diseño_de_dormitorios_matrimoniales.jpg', 1, 0, 2),
(16, 'Single Room (Mekong River)', 'Recommended for couples and families with bed-sharing children. The room is equipped with a dresser for the convenience of our female guests.', 'img_attend_accomodation.jpg', 1, 0, 2),
(17, 'Double Room', 'Commonly known as family room having two double beds separated from each other.', 'kruger_accommodation_bateleur_bushveld_camp_4_667x445.jpg', 1, 0, 2),
(18, 'Twin Double Room', 'A room that has two single beds with a single head board meant for two persons.', 'lingmoor_guest_house.jpg', 1, 0, 2),
(19, 'Parlour', 'A sitting or living room not used as bed room. Studio Room: A parlour setup with one or two studio beds or couches which can be converted into beds.', 'regency_hotel_accommodation_suites.jpg', 1, 0, 2),
(20, 'Bicycle', 'A bicycle, often called a bike, is a human-powered, pedal-driven, single-track vehicle, having two wheels attached to a frame, one behind the other. A bicycle rider is called a cyclist, or bicyclist.', '9009.png', 1, 0, 4),
(21, 'Bus', 'A bus (/ˈbʌs/; plural "buses" or "busses", /ˈbʌsɨz/, archaically also omnibus, multibus, or autobus) is a road vehicle designed to carry passengers. Buses can have a capacity as high as 300 passengers.', 'bus.jpg', 1, 0, 4),
(22, 'Boat', 'A boat is a watercraft of any size designed to float or plane, to work or travel on water. For small boats, this is typically inland', 'CheemaunWeb.jpg', 1, 0, 4),
(23, 'Boat', 'a boat is a vessel small enough to be carried aboard another vessel (a ship). Another less restrictive definition is a vessel that can be lifted out of the water.', 'images1.jpg', 1, 0, 4),
(24, 'Ciclo', 'transportation5', 'PP_Cyclos_in_a_row.jpg', 1, 0, 4),
(25, 'ស្ទូងសំណាប', 'activity1', 'ActivityBreaks.kayak.jpg', 1, 1, 3),
(26, 'ស្ទូងស្រូវ', '', 'ActivityBrochurePics008.jpg', 1, 1, 3),
(27, 'Football ', 'football, commonly known as football or soccer, is a sport played between two teams of eleven players with a spherical ball.', 'family_686px_reduced_nostars1.jpg', 1, 0, 3),
(28, 'Ride a bike to a Mountain', 'Rides a Bike is a children''s book written and illustrated by Margret Rey and H. A. Rey and published by Houghton Mifflin in 2014.', 'family_in_park.jpg', 1, 0, 3),
(30, 'Ride a boat', 'Boat Ride" is the fourth episode of the first season of the animated television series South Park.', 'ActivityBreaks.jpg', 1, 0, 3),
(31, 'activity5', 'activity5', 'images2.jpg', 1, 0, 3),
(32, 'Play Golf', 'Golf is a precision club and ball sport in which competing players (or golfers) use many types of clubs to hit balls into a series of holes on a course using the fewest number of strokes', 'images11.jpg', 1, 0, 3),
(33, 'activity7', 'activity7', 'large.jpg', 1, 0, 3),
(34, 'Beach valley ball', 'Beach volleyball is a team sport played by two teams of two players on a sand court divided by a net. In order to keep the ball in play, a team can only hit the ball up to three times before returning it over the net. ', 'untitled640320.JPG', 1, 0, 3),
(35, 'Climbing a Mountain', 'It is themed as an inspirational piece, to encourage people to take every step towards attaining their dreams.', 'Whistler.jpg', 1, 0, 3),
(37, 'Running', 'Running is a means of terrestrial locomotion allowing humans and other animals to move rapidly on foot. ', 'woman.jpg', 1, 0, 3),
(38, 'khmer new year', 'happy on khmer new year day', '210020small.jpg', 1, 0, 1),
(39, 'Meak bochea', 'on meak bochea day', 'meakbochea.JPG', 1, 0, 1),
(40, 'royal plowing', 'on royal plowing day', 'ap_cambodia_royal_plowing_09May12_878x576.jpg', 1, 0, 1),
(41, 'King birthday', 'king birthday', '001ec949fb5911e70bc117.jpg', 1, 1, 1),
(42, 'visak bochea day', 'on visak bochea day', 'avisak9.jpg', 1, 0, 1),
(43, 'chinese new year', 'chinese new year in cambodia', 'chinese_new_year.jpg', 1, 0, 1),
(44, 'pchum ben day', 'on pchum ben day', 'pchumben.jpg', 1, 0, 1),
(45, 'children day', 'children', 'group_s_11865.jpg', 1, 0, 1),
(46, 'King birthday', 'king birthday', '001ec949fb5911e70bc1171.jpg', 1, 0, 1),
(47, 'water festival ceremony', 'the water festival day', '_45194890_dayinpicsgalleryap6466.jpg', 1, 0, 1),
(48, 'human rights day', 'the human rights day in cambodia', 'Human_Rights_Day.jpg', 1, 0, 1),
(49, 'consititutional day', 'consititutional day', 'Flag_of_Cambodia_under_UNTAC_1992_1993.png', 1, 0, 1),
(50, 'king mother birthday', 'king mother birthday', 'queen2.jpg', 1, 0, 1),
(51, 'Commemoration Day of King''s Father, Norodom Sihanouk', 'Commemoration Day of King''s Father, Norodom Sihanouk', '132144656_171n.jpg', 1, 0, 1),
(52, 'international women day', 'international women day', 'womens_dac.jpg', 1, 0, 1),
(53, 'king coronation day', 'king coronation day', 'coronation_day.jpg', 1, 0, 1),
(54, 'independence days', 'independence days', 'CAMBODIA INDEPENDENCE DAY_1.jpg', 1, 1, 1),
(55, 'international labour day', 'international labour day', '201142914480776.jpg', 1, 0, 1),
(56, 'international new year day', 'international new year day', 'internation_new_year_day.jpg', 1, 0, 1),
(57, 'independence days', 'independence days', '130909independence_d.jpg', 1, 0, 1),
(58, 'Victory over Genocide Day', 'Victory over Genocide Day', '3624121.jpg', 1, 0, 1),
(59, 'Paris Peace Agreements Day', 'Paris Peace Agreements Day', 'flags.jpg', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `photo_type`
--

DROP TABLE IF EXISTS `photo_type`;
CREATE TABLE IF NOT EXISTS `photo_type` (
  `pt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_title` varchar(100) NOT NULL,
  `pt_delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `photo_type`
--

INSERT INTO `photo_type` (`pt_id`, `pt_title`, `pt_delete`) VALUES
(1, 'extra product', 0),
(2, 'accommodation', 0),
(3, 'activities', 0),
(4, 'transportation', 0),
(5, 'slideshow', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_title` varchar(100) DEFAULT NULL,
  `role_status` tinyint(1) DEFAULT '0',
  `role_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_title_UNIQUE` (`role_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_title`, `role_status`, `role_deleted`) VALUES
(1, 'super admin', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
CREATE TABLE IF NOT EXISTS `room_types` (
  `rt_id` int(1) NOT NULL AUTO_INCREMENT,
  `rt_name` varchar(100) DEFAULT NULL,
  `rt_status` varchar(45) DEFAULT NULL,
  `rt_deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`rt_id`, `rt_name`, `rt_status`, `rt_deleted`) VALUES
(1, 'room1', '1', 1),
(3, 'Twin', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sale_customize`
--

DROP TABLE IF EXISTS `sale_customize`;
CREATE TABLE IF NOT EXISTS `sale_customize` (
  `salecus_id` int(11) NOT NULL AUTO_INCREMENT,
  `salecus_bk_id` int(11) DEFAULT NULL,
  `salecus_cuscon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`salecus_id`),
  KEY `fk_sale_customize_booking1` (`salecus_bk_id`),
  KEY `fk_sale_customize_customize_conjections1` (`salecus_cuscon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_packages`
--

DROP TABLE IF EXISTS `sale_packages`;
CREATE TABLE IF NOT EXISTS `sale_packages` (
  `salepk_id` int(11) NOT NULL AUTO_INCREMENT,
  `salepk_pkcon_id` int(11) DEFAULT NULL,
  `salepk_bk_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`salepk_id`),
  KEY `fk_sale_packages_package_conjection1` (`salepk_pkcon_id`),
  KEY `fk_sale_packages_booking1` (`salepk_bk_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `sale_packages`
--

INSERT INTO `sale_packages` (`salepk_id`, `salepk_pkcon_id`, `salepk_bk_id`) VALUES
(1, 4, 5),
(2, 2, 6),
(3, 6, NULL),
(4, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE IF NOT EXISTS `subscriber` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_fname` varchar(100) DEFAULT NULL,
  `sub_lname` varchar(100) DEFAULT NULL,
  `sub_email` varchar(100) DEFAULT NULL,
  `sub_status` tinyint(1) DEFAULT NULL,
  `sub_deleted` tinyint(1) DEFAULT NULL,
  `roles_role_id` int(11) NOT NULL,
  PRIMARY KEY (`sub_id`),
  KEY `fk_subscriber_roles1` (`roles_role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`sub_id`, `sub_fname`, `sub_lname`, `sub_email`, `sub_status`, `sub_deleted`, `roles_role_id`) VALUES
(1, 'sreynak', 'chet', 'sreynak.chet@gmail.com', 1, 0, 1),
(2, 'sokry', 'sat', 'sokry.sat@gmail.com', 1, 0, 1),
(3, 'sreychen', 'sok', 'sreychen.sok@gmail.com', 1, 0, 1),
(4, 'thida', 'pen', 'thidapen.pnc@gmail.com', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `sup_id` int(11) NOT NULL AUTO_INCREMENT,
  `sup_fname` varchar(45) DEFAULT NULL,
  `sup_lname` varchar(45) DEFAULT NULL,
  `sup_company_name` varchar(100) DEFAULT NULL,
  `sup_occupation` varchar(100) DEFAULT NULL,
  `sup_sector` varchar(70) DEFAULT NULL,
  `sup_service_provision` varchar(100) DEFAULT NULL,
  `sup_country` varchar(45) DEFAULT NULL,
  `sup_city` varchar(45) DEFAULT NULL,
  `sup_address` tinytext,
  `sup_postcode` varchar(45) DEFAULT NULL,
  `sup_email` varchar(150) DEFAULT NULL,
  `sup_website` varchar(150) DEFAULT NULL,
  `sup_phone` varchar(30) DEFAULT NULL,
  `sup_home_phone` varchar(45) DEFAULT NULL,
  `sup_deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sup_id`, `sup_fname`, `sup_lname`, `sup_company_name`, `sup_occupation`, `sup_sector`, `sup_service_provision`, `sup_country`, `sup_city`, `sup_address`, `sup_postcode`, `sup_email`, `sup_website`, `sup_phone`, `sup_home_phone`, `sup_deleted`) VALUES
(1, 'sreynak', 'chet', 'Codingate', 'web developer', 'IT', 'Webapp', 'Kampong Chhnang', 'Kampong Chhnang', 'Phnom Penh', '855', 'sreynak@gmail.com', 'www.sreynak.com', '0123456789', '012345678', 0),
(2, 'sreynich', 'chet', 'Toursanak', 'Tour', 'Tour', 'tour', 'Cambodia', 'Phnom Penh', 'Phnom Penh', '855', 'sreynich@gmail.com', 'www.codingate.com', '098765432', '012345678', 0),
(4, 'rany', 'Em', 'Khmer Enterprise', 'tester', 'IT', 'test', 'Cambodia', 'Takeo', 'Phnom Penh', '855', 'rany@gmail.com', 'www.emrany.com', '098765432', '09876542', 0);

-- --------------------------------------------------------

--
-- Table structure for table `temp_table`
--

DROP TABLE IF EXISTS `temp_table`;
CREATE TABLE IF NOT EXISTS `temp_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tmpt_id` int(11) DEFAULT '0',
  `tmpt_name` varchar(50) DEFAULT NULL,
  `tmpt_value` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `temp_table`
--

INSERT INTO `temp_table` (`ID`, `tmpt_id`, `tmpt_name`, `tmpt_value`) VALUES
(28, 13, 'extraproduct', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tp_calendar`
--

DROP TABLE IF EXISTS `tp_calendar`;
CREATE TABLE IF NOT EXISTS `tp_calendar` (
  `tp_cal_id` int(11) NOT NULL AUTO_INCREMENT,
  `calendar_available_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tp_cal_id`),
  KEY `fk_tp_calendar_calendar_available1` (`calendar_available_id`),
  KEY `fk_tp_calendar_transport1` (`transport_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tp_calendar`
--

INSERT INTO `tp_calendar` (`tp_cal_id`, `calendar_available_id`, `transport_id`) VALUES
(1, 22, 1),
(2, 23, 2),
(3, 24, 3),
(4, 25, 4),
(5, 25, 5),
(6, 24, 6);

-- --------------------------------------------------------

--
-- Table structure for table `transportation`
--

DROP TABLE IF EXISTS `transportation`;
CREATE TABLE IF NOT EXISTS `transportation` (
  `tp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_subof` int(11) DEFAULT '0',
  `tp_name` varchar(100) DEFAULT NULL,
  `tp_textbooking` text,
  `tp_texteticket` text,
  `tp_purchaseprice` float DEFAULT NULL,
  `tp_saleprice` float DEFAULT NULL,
  `tp_originalstock` int(11) DEFAULT NULL,
  `tp_actualstock` int(11) DEFAULT NULL,
  `tp_providerdate` varchar(45) DEFAULT NULL,
  `tp_payeddate` varchar(45) DEFAULT NULL,
  `tp_deadline` varchar(45) DEFAULT NULL,
  `tp_admintext` text,
  `tp_pickuplocation` int(11) DEFAULT NULL,
  `tp_arrival_date` date DEFAULT NULL,
  `photo_id` int(11) DEFAULT NULL,
  `tp_ftv_id` int(11) DEFAULT NULL,
  `tp_supplier_id` int(11) DEFAULT NULL,
  `tp_status` tinyint(1) DEFAULT '0',
  `tp_deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`tp_id`),
  KEY `fk_transport_photo1` (`photo_id`),
  KEY `fk_transport_festival1` (`tp_ftv_id`),
  KEY `tp_supplier_id` (`tp_supplier_id`),
  KEY `tp_pickuplocation` (`tp_pickuplocation`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `transportation`
--

INSERT INTO `transportation` (`tp_id`, `tp_subof`, `tp_name`, `tp_textbooking`, `tp_texteticket`, `tp_purchaseprice`, `tp_saleprice`, `tp_originalstock`, `tp_actualstock`, `tp_providerdate`, `tp_payeddate`, `tp_deadline`, `tp_admintext`, `tp_pickuplocation`, `tp_arrival_date`, `photo_id`, `tp_ftv_id`, `tp_supplier_id`, `tp_status`, `tp_deleted`) VALUES
(1, 0, 'Tuk Tuk', 'Tuk Tuk free time at 6:00 AM to 10:00 PM', 'we have Tuk Tuk that all of customers can rent that start from 6:00 AM until 10:00 PM.', 21, 33, 35, 45, '2014-03-14', '2014-03-15', '2014-03-16', 'when Tuk Tuk is avaliable so customer can book by online or tel.', 4, '2014-03-15', 2, 1, 1, 1, 0),
(2, 0, 'Bus 25 chairs', 'ffff', 'ffff', 12, 23, 32, 67, '2014-03-15', '2014-03-16', '2014-03-16', 'fff', 4, '2014-03-15', 2, 1, 2, 1, 0),
(3, 0, 'Bus 35 Chairs', 'bbbb', 'bbbb', 111, 23, 32, 22, '2014-03-15', '2014-03-16', '2014-03-23', 'bbb', 4, '2014-03-29', 2, 1, 2, 1, 0),
(4, 0, 'Motobike', 'nnnn', 'nnnn', 12, 12, 35, 67, '2014-03-22', '2014-03-20', '2014-03-31', 'nnnn', 4, '2014-03-17', 2, 1, 2, 1, 0),
(5, 4, 'Taxi', '0000', 'nnnn', 12, 12, 35, 67, '2014-03-22', '2014-03-20', '2014-03-31', 'nnnn', 4, '2014-03-17', 2, 1, 2, 1, 0),
(6, 3, 'Bicycle', 'pppp', 'nnnn', 12, 12, 35, 67, '2014-03-22', '2014-03-20', '2014-03-31', 'nnnn', 4, '2014-03-17', 2, 1, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(100) DEFAULT NULL,
  `user_lname` varchar(100) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_mail` varchar(150) DEFAULT NULL,
  `user_telone` varchar(40) DEFAULT NULL,
  `user_teltwo` varchar(40) DEFAULT NULL,
  `user_fax` varchar(100) DEFAULT NULL,
  `user_mobile` varchar(100) DEFAULT NULL,
  `user_address` tinytext,
  `user_website` tinytext,
  `user_company` varchar(45) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `user_status` tinyint(1) DEFAULT '0',
  `user_deleted` tinyint(1) DEFAULT '0',
  `user_name` varchar(100) DEFAULT NULL,
  `user_gender` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mail_UNIQUE` (`user_mail`),
  KEY `fk_user_roles` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fname`, `user_lname`, `user_password`, `user_mail`, `user_telone`, `user_teltwo`, `user_fax`, `user_mobile`, `user_address`, `user_website`, `user_company`, `role_id`, `user_status`, `user_deleted`, `user_name`, `user_gender`) VALUES
(1, 'admin', 'admin', '123456789', 'admin.masterbooking@gmail.com', '123456789', NULL, NULL, NULL, 'Phnom Penh, Cambodia', NULL, 'Codingate', 1, 1, 0, 'sreynak', 'female'),
(2, 'saorin', 'phan', '123456789', 'phansaorin@gmail.com', '0987654321', '09876543', NULL, NULL, 'phnom penh, cambodia', NULL, 'codingate', 1, 1, 0, 'saorin.phan', 'female'),
(3, 'sokry', 'sat', '123456789', 'sokry.sat@gmail.com', '0967413957', '0967413957', NULL, NULL, 'kth', NULL, 'cg', 1, 1, 0, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accommodation`
--
ALTER TABLE `accommodation`
  ADD CONSTRAINT `fk_accommodation_location1` FOREIGN KEY (`location_id`) REFERENCES `location` (`lt_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_accommodation_supplier1` FOREIGN KEY (`acc_supplier_id`) REFERENCES `supplier` (`sup_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_accomodations_classification1` FOREIGN KEY (`classification_id`) REFERENCES `classification` (`clf_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_accomodations_festival1` FOREIGN KEY (`acc_ftv_id`) REFERENCES `festival` (`ftv_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_accomodations_photo1` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_accomodations_room_types1` FOREIGN KEY (`acc_rt_id`) REFERENCES `room_types` (`rt_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `acc_calendar`
--
ALTER TABLE `acc_calendar`
  ADD CONSTRAINT `fk_acc_calendar_accomodations1` FOREIGN KEY (`accomodations_id`) REFERENCES `accommodation` (`acc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_acc_calendar_calendar_available1` FOREIGN KEY (`calendar_available_id`) REFERENCES `calendar_available` (`ca_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `acc_fac`
--
ALTER TABLE `acc_fac`
  ADD CONSTRAINT `fk_acc_fac_accomodations1` FOREIGN KEY (`accomodations_id`) REFERENCES `accommodation` (`acc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_acc_fac_facilities1` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`facilities_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `fk_activities_festival1` FOREIGN KEY (`act_ftv_id`) REFERENCES `festival` (`ftv_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_activities_location1` FOREIGN KEY (`location_id`) REFERENCES `location` (`lt_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_activities_photo1` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `acti_calendar`
--
ALTER TABLE `acti_calendar`
  ADD CONSTRAINT `fk_acc_calendar_calendar_available10` FOREIGN KEY (`calendar_available_id`) REFERENCES `calendar_available` (`ca_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_acti_calendar_activities1` FOREIGN KEY (`activities_id`) REFERENCES `activities` (`act_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `fk_content_menu1` FOREIGN KEY (`con_menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `content_photo`
--
ALTER TABLE `content_photo`
  ADD CONSTRAINT `fk_content-photo_content1` FOREIGN KEY (`con_id`) REFERENCES `content` (`con_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_content-photo_photo1` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `customize_conjection`
--
ALTER TABLE `customize_conjection`
  ADD CONSTRAINT `fk_customize_conjection_festival1` FOREIGN KEY (`cuscon_ftv_id`) REFERENCES `festival` (`ftv_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_customize_conjection_location1` FOREIGN KEY (`cuscon_lt_id`) REFERENCES `location` (`lt_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_customize_conjection_photo1` FOREIGN KEY (`cuscon_pho_id`) REFERENCES `photo` (`photo_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `extraproduct_calendar`
--
ALTER TABLE `extraproduct_calendar`
  ADD CONSTRAINT `fk_extraproduct_calendar_calendar_available1` FOREIGN KEY (`calendar_available_id`) REFERENCES `calendar_available` (`ca_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_extraproduct_calendar_extraproduct1` FOREIGN KEY (`extraproduct_id`) REFERENCES `extraproduct` (`ep_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `extra_acc`
--
ALTER TABLE `extra_acc`
  ADD CONSTRAINT `fk_extra_acc_accomodations1` FOREIGN KEY (`accomodations_ad_id`) REFERENCES `accommodation` (`acc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_extra_acc_extraproduct1` FOREIGN KEY (`extraproduct_ep_id`) REFERENCES `extraproduct` (`ep_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `extra_acti`
--
ALTER TABLE `extra_acti`
  ADD CONSTRAINT `fk_extra_acti_activities1` FOREIGN KEY (`activities_id`) REFERENCES `activities` (`act_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_extra_acti_extraproduct1` FOREIGN KEY (`extraproduct_id`) REFERENCES `extraproduct` (`ep_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `extra_transport`
--
ALTER TABLE `extra_transport`
  ADD CONSTRAINT `fk_extra_transport_extraproduct1` FOREIGN KEY (`extraproduct_id`) REFERENCES `extraproduct` (`ep_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_extra_transport_transport1` FOREIGN KEY (`transport_id`) REFERENCES `transportation` (`tp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `festival`
--
ALTER TABLE `festival`
  ADD CONSTRAINT `ftv_location_fk` FOREIGN KEY (`ftv_lt_id`) REFERENCES `location` (`lt_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `ftv_photo_fk` FOREIGN KEY (`ftv_photo_id`) REFERENCES `photo` (`photo_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `fk_menu_menu1` FOREIGN KEY (`menu_menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `package_conjection`
--
ALTER TABLE `package_conjection`
  ADD CONSTRAINT `fk_package_conjection_festival1` FOREIGN KEY (`pkconl_ftv_id`) REFERENCES `festival` (`ftv_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_package_conjection_location1` FOREIGN KEY (`pkcon_lt_id`) REFERENCES `location` (`lt_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_package_conjection_photo1` FOREIGN KEY (`phoid`) REFERENCES `photo` (`photo_id`) ON DELETE NO ACTION ON UPDATE SET NULL;

--
-- Constraints for table `passenger_booking`
--
ALTER TABLE `passenger_booking`
  ADD CONSTRAINT `fk_passenger_booking_booking1` FOREIGN KEY (`pbk_bk_id`) REFERENCES `booking` (`bk_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_passenger_booking_passenger1` FOREIGN KEY (`pbk_pass_id`) REFERENCES `passenger` (`pass_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `pt_photo_fk` FOREIGN KEY (`pt_id`) REFERENCES `photo_type` (`pt_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `sale_customize`
--
ALTER TABLE `sale_customize`
  ADD CONSTRAINT `fk_sale_customize_booking1` FOREIGN KEY (`salecus_bk_id`) REFERENCES `booking` (`bk_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_sale_customize_customize_conjections1` FOREIGN KEY (`salecus_cuscon_id`) REFERENCES `customize_conjection` (`cuscon_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sale_packages`
--
ALTER TABLE `sale_packages`
  ADD CONSTRAINT `fk_sale_packages_booking1` FOREIGN KEY (`salepk_bk_id`) REFERENCES `booking` (`bk_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_sale_packages_package_conjection1` FOREIGN KEY (`salepk_pkcon_id`) REFERENCES `package_conjection` (`pkcon_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD CONSTRAINT `fk_subscriber_roles1` FOREIGN KEY (`roles_role_id`) REFERENCES `roles` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tp_calendar`
--
ALTER TABLE `tp_calendar`
  ADD CONSTRAINT `fk_tp_calendar_calendar_available1` FOREIGN KEY (`calendar_available_id`) REFERENCES `calendar_available` (`ca_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tp_calendar_transport1` FOREIGN KEY (`transport_id`) REFERENCES `transportation` (`tp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `transportation`
--
ALTER TABLE `transportation`
  ADD CONSTRAINT `fk_transportation_festival1` FOREIGN KEY (`tp_ftv_id`) REFERENCES `festival` (`ftv_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_transportation_location1` FOREIGN KEY (`tp_pickuplocation`) REFERENCES `location` (`lt_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_transportation_photo1` FOREIGN KEY (`photo_id`) REFERENCES `photo` (`photo_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_transportation_supplier1` FOREIGN KEY (`tp_supplier_id`) REFERENCES `supplier` (`sup_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
