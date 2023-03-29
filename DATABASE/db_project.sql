create database db_project;
use db_project;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 29, 2023 at 07:05 AM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

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
  `user_create` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `access_type_id` int DEFAULT NULL,
  `client_id` int DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`access_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_access_detail`
--

DROP TABLE IF EXISTS `app_api_access_detail`;
CREATE TABLE IF NOT EXISTS `app_api_access_detail` (
  `access_detail_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `access_id` int DEFAULT NULL,
  `ip_address` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ip_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`access_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_api_access_type`
--

DROP TABLE IF EXISTS `app_api_access_type`;
CREATE TABLE IF NOT EXISTS `app_api_access_type` (
  `access_type_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `access_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  `price` int DEFAULT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `his_audit_trail`
--

DROP TABLE IF EXISTS `his_audit_trail`;
CREATE TABLE IF NOT EXISTS `his_audit_trail` (
  `audit_trail_number` int NOT NULL AUTO_INCREMENT,
  `user_update` varchar(20) DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `table_name` varchar(30) DEFAULT NULL,
  `old_value` longtext,
  `new_value` longtext,
  PRIMARY KEY (`audit_trail_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_budget`
--

DROP TABLE IF EXISTS `his_budget`;
CREATE TABLE IF NOT EXISTS `his_budget` (
  `his_budget_id` int NOT NULL AUTO_INCREMENT,
  `budget_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(100) DEFAULT NULL,
  `budget_description` varchar(4000) DEFAULT NULL,
  `budget_center_id` int DEFAULT NULL,
  `budget_account_id` int DEFAULT NULL,
  `budget_year` varchar(4) DEFAULT NULL,
  `budget_month` varchar(2) DEFAULT NULL,
  `budget_amount` int DEFAULT NULL,
  `budget_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`his_budget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_bugfix`
--

DROP TABLE IF EXISTS `his_bugfix`;
CREATE TABLE IF NOT EXISTS `his_bugfix` (
  `his_bugfix_id` int NOT NULL AUTO_INCREMENT,
  `bugfix_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `bugfix_no` varchar(30) DEFAULT NULL,
  `bugfix_name` varchar(255) DEFAULT NULL,
  `bugfix_description` varchar(4000) DEFAULT NULL,
  `bugfix_progress` int DEFAULT NULL,
  `bugfix_status` varchar(10) DEFAULT NULL,
  `plan_date_start` date DEFAULT NULL,
  `plan_date_end` date DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` date DEFAULT NULL,
  `actual_date_end` date DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  `is_pir` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_bugfix_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_bugfix_detail`
--

DROP TABLE IF EXISTS `his_bugfix_detail`;
CREATE TABLE IF NOT EXISTS `his_bugfix_detail` (
  `his_bugfix_detail_id` int NOT NULL AUTO_INCREMENT,
  `bugfix_detail_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `bugfix_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` date DEFAULT NULL,
  `plan_date_end` date DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` date DEFAULT NULL,
  `actual_date_end` date DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `cr_id` int DEFAULT NULL,
  PRIMARY KEY (`his_bugfix_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_cr`
--

DROP TABLE IF EXISTS `his_cr`;
CREATE TABLE IF NOT EXISTS `his_cr` (
  `his_cr_id` int NOT NULL AUTO_INCREMENT,
  `cr_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `cr_no` varchar(30) DEFAULT NULL,
  `cr_name` varchar(255) DEFAULT NULL,
  `cr_description` varchar(4000) DEFAULT NULL,
  `cr_progress` int DEFAULT NULL,
  `cr_status` varchar(10) DEFAULT NULL,
  `plan_date_start` date DEFAULT NULL,
  `plan_date_end` date DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` date DEFAULT NULL,
  `actual_date_end` date DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  `is_pir` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_cr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_cr_detail`
--

DROP TABLE IF EXISTS `his_cr_detail`;
CREATE TABLE IF NOT EXISTS `his_cr_detail` (
  `his_cr_detail_id` int NOT NULL AUTO_INCREMENT,
  `cr_detail_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `cr_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` date DEFAULT NULL,
  `plan_date_end` date DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` date DEFAULT NULL,
  `actual_date_end` date DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`his_cr_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_project`
--

DROP TABLE IF EXISTS `his_project`;
CREATE TABLE IF NOT EXISTS `his_project` (
  `his_project_id` int NOT NULL AUTO_INCREMENT,
  `project_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_no` varchar(30) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` varchar(4000) DEFAULT NULL,
  `project_progress` int DEFAULT NULL,
  `project_status` varchar(10) DEFAULT NULL,
  `plan_date_start` date DEFAULT NULL,
  `plan_date_end` date DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` date DEFAULT NULL,
  `actual_date_end` date DEFAULT NULL,
  `actual_date_hours` int DEFAULT NULL,
  `priority_code` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`his_project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_project_budget`
--

DROP TABLE IF EXISTS `his_project_budget`;
CREATE TABLE IF NOT EXISTS `his_project_budget` (
  `his_project_budget_id` int NOT NULL AUTO_INCREMENT,
  `project_budget_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`his_project_budget_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_project_budget_detail`
--

DROP TABLE IF EXISTS `his_project_budget_detail`;
CREATE TABLE IF NOT EXISTS `his_project_budget_detail` (
  `his_project_budget_detail_id` int NOT NULL AUTO_INCREMENT,
  `project_budget_detail_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_budget_id` int DEFAULT NULL,
  `budget_id` int DEFAULT NULL,
  `plan_amount` int DEFAULT NULL,
  `actual_amount` int DEFAULT NULL,
  PRIMARY KEY (`his_project_budget_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_project_detail`
--

DROP TABLE IF EXISTS `his_project_detail`;
CREATE TABLE IF NOT EXISTS `his_project_detail` (
  `his_project_detail_id` int NOT NULL AUTO_INCREMENT,
  `project_detail_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `application_id` int DEFAULT NULL,
  `vendor_id` int DEFAULT NULL,
  `pic_id` int DEFAULT NULL,
  `task_id` int DEFAULT NULL,
  `task_detail` varchar(4000) DEFAULT NULL,
  `task_progress` int DEFAULT NULL,
  `plan_date_start` date DEFAULT NULL,
  `plan_date_end` date DEFAULT NULL,
  `plan_total_hours` int DEFAULT NULL,
  `actual_date_start` date DEFAULT NULL,
  `actual_date_end` date DEFAULT NULL,
  `actual_total_hours` int DEFAULT NULL,
  PRIMARY KEY (`his_project_detail_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_role`
--

DROP TABLE IF EXISTS `his_role`;
CREATE TABLE IF NOT EXISTS `his_role` (
  `his_role_id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `role_name` varchar(50) DEFAULT NULL,
  `role_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_role_menu`
--

DROP TABLE IF EXISTS `his_role_menu`;
CREATE TABLE IF NOT EXISTS `his_role_menu` (
  `his_role_menu_id` int NOT NULL AUTO_INCREMENT,
  `role_menu_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `menu_id` int DEFAULT NULL,
  `is_select` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_role_menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `his_user`
--

DROP TABLE IF EXISTS `his_user`;
CREATE TABLE IF NOT EXISTS `his_user` (
  `his_user_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_delete` varchar(20) DEFAULT NULL,
  `date_delete` date DEFAULT NULL,
  `reason_delete` varchar(4000) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`his_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_approval`
--

DROP TABLE IF EXISTS `log_approval`;
CREATE TABLE IF NOT EXISTS `log_approval` (
  `log_approval_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `log_approval_status` varchar(10) DEFAULT NULL,
  `log_approval_description` varchar(4000) DEFAULT NULL,
  `log_approval_user` varchar(20) DEFAULT NULL,
  `log_approval_date` date DEFAULT NULL,
  `entry_code` varchar(3) DEFAULT NULL,
  `budget_id` int DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  `budget_project_id` int DEFAULT NULL,
  `cr_id` int DEFAULT NULL,
  `bugfix_id` int DEFAULT NULL,
  PRIMARY KEY (`log_approval_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_approval_file`
--

DROP TABLE IF EXISTS `log_approval_file`;
CREATE TABLE IF NOT EXISTS `log_approval_file` (
  `log_approval_file_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `log_approval_id` int DEFAULT NULL,
  `file_ext` varchar(3) DEFAULT NULL,
  `storage_code` varchar(4) DEFAULT NULL,
  `physical_file` varchar(4000) DEFAULT NULL,
  `blob_file` blob,
  `cloud_file` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`log_approval_file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_deployment`
--

DROP TABLE IF EXISTS `log_deployment`;
CREATE TABLE IF NOT EXISTS `log_deployment` (
  `log_deploy_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `deploy_no` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `dp_version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`log_deploy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_hit`
--

DROP TABLE IF EXISTS `log_hit`;
CREATE TABLE IF NOT EXISTS `log_hit` (
  `hit_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) NOT NULL DEFAULT 'GUEST',
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(15) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `date_hit` datetime DEFAULT NULL,
  PRIMARY KEY (`hit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_user_login`
--

DROP TABLE IF EXISTS `log_user_login`;
CREATE TABLE IF NOT EXISTS `log_user_login` (
  `log_user_id` int NOT NULL AUTO_INCREMENT,
  `user_create` varchar(20) DEFAULT NULL,
  `date_create` date DEFAULT NULL,
  `user_modify` varchar(20) DEFAULT NULL,
  `date_modify` date DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `is_login` varchar(1) DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `is_logout` varchar(1) DEFAULT NULL,
  `last_logout` date DEFAULT NULL,
  `date_kicker` date DEFAULT NULL,
  `user_id_kicker` int DEFAULT NULL,
  `ip_address_kicker` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`log_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
