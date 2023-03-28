create database db_project;
use db_project;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2023 at 10:44 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_api_access`
--

DROP TABLE IF EXISTS `app_api_access`;
CREATE TABLE IF NOT EXISTS `app_api_access` (
  `access_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date_create` date NOT NULL,
  `user_modify` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date_modify` date NOT NULL,
  `access_type_id` int NOT NULL,
  `client_id` int NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_access_detail`
--

DROP TABLE IF EXISTS `app_api_access_detail`;
CREATE TABLE IF NOT EXISTS `app_api_access_detail` (
  `access_detail_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) NOT NULL,
  `date_create` date NOT NULL,
  `user_modify` varchar(20) NOT NULL,
  `date_modify` date NOT NULL,
  `access_id` int NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `ip_type` varchar(4) NOT NULL,
  `is_active` varchar(1) NOT NULL,
  PRIMARY KEY (`access_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_access_type`
--

DROP TABLE IF EXISTS `app_api_access_type`;
CREATE TABLE IF NOT EXISTS `app_api_access_type` (
  `access_type_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) NOT NULL,
  `date_create` date NOT NULL,
  `user_modify` varchar(20) NOT NULL,
  `date_modify` date NOT NULL,
  `access_name` varchar(255) NOT NULL,
  `valid_until` date NOT NULL,
  `price` int NOT NULL,
  `is_active` varchar(1) NOT NULL,
  PRIMARY KEY (`access_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_client`
--

DROP TABLE IF EXISTS `app_api_client`;
CREATE TABLE IF NOT EXISTS `app_api_client` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `client_business_type` varchar(100) DEFAULT NULL,
  `access_type_id` int DEFAULT NULL,
  `is_active` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_status`
--

DROP TABLE IF EXISTS `app_api_status`;
CREATE TABLE IF NOT EXISTS `app_api_status` (
  `api_status_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `api_status_code` varchar(3) DEFAULT NULL,
  `api_status_description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`api_status_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_feedback`
--

DROP TABLE IF EXISTS `app_feedback`;
CREATE TABLE IF NOT EXISTS `app_feedback` (
  `feedback_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `sent_name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`feedback_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_menu`
--

DROP TABLE IF EXISTS `app_menu`;
CREATE TABLE IF NOT EXISTS `app_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `menu_name` varchar(50) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `sort_no` int DEFAULT NULL,
  `parent_menu_id` int DEFAULT NULL,
  `is_crud` varchar(1) DEFAULT 'N',
  `is_new` varchar(1) DEFAULT 'Y',
  `menu_status` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_role`
--

DROP TABLE IF EXISTS `app_role`;
CREATE TABLE IF NOT EXISTS `app_role` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_status` varchar(1) DEFAULT 'A',
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_role_menu`
--

DROP TABLE IF EXISTS `app_role_menu`;
CREATE TABLE IF NOT EXISTS `app_role_menu` (
  `role_menu_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `is_select` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`role_menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_user`
--

DROP TABLE IF EXISTS `app_user`;
CREATE TABLE IF NOT EXISTS `app_user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` varchar(45) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `user_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_user_activation`
--

DROP TABLE IF EXISTS `app_user_activation`;
CREATE TABLE IF NOT EXISTS `app_user_activation` (
  `activation_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `activation_sent_date` date DEFAULT NULL,
  `activation_sent_status` varchar(3) DEFAULT NULL,
  `activation_sent_desc` varchar(4000) DEFAULT NULL,
  `activation_rec_date` date DEFAULT NULL,
  `activation_rec_status` varchar(3) DEFAULT NULL,
  `activation_rec_desc` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`activation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_user_profile`
--

DROP TABLE IF EXISTS `app_user_profile`;
CREATE TABLE IF NOT EXISTS `app_user_profile` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `photo` varchar(4000) DEFAULT NULL,
  `photo_blob` blob,
  `profile` varchar(4000) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
