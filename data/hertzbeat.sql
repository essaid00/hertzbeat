-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 06:40 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hertzbeat`
--

-- --------------------------------------------------------

--
-- Table structure for table `flyway_schema_history`
--

CREATE TABLE `flyway_schema_history` (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `script` varchar(1000) NOT NULL,
  `checksum` int(11) DEFAULT NULL,
  `installed_by` varchar(100) NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_alert`
--

CREATE TABLE `hzb_alert` (
  `id` bigint(20) NOT NULL,
  `alert_define_id` bigint(20) DEFAULT NULL,
  `content` varchar(4096) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `first_alarm_time` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `last_alarm_time` bigint(20) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `tags` varchar(2048) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `times` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_alert`
--

INSERT INTO `hzb_alert` (`id`, `alert_define_id`, `content`, `creator`, `first_alarm_time`, `gmt_create`, `gmt_update`, `last_alarm_time`, `modifier`, `priority`, `status`, `tags`, `target`, `times`) VALUES
(1, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720614990470, '2024-07-10 20:36:30', '2024-07-10 20:36:30', 1720614990470, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(2, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720615112468, '2024-07-10 20:38:32', '2024-07-10 20:38:32', 1720615112468, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(3, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720615234468, '2024-07-10 20:40:34', '2024-07-10 20:40:34', 1720615234468, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(4, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720615356468, '2024-07-10 20:42:36', '2024-07-10 20:42:36', 1720615356468, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(5, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720615478466, '2024-07-10 20:44:38', '2024-07-10 20:44:38', 1720615478466, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(6, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720615600465, '2024-07-10 20:46:40', '2024-07-10 20:46:40', 1720615600465, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(7, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720615722467, '2024-07-10 20:48:42', '2024-07-10 20:48:42', 1720615722467, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(8, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720615844468, '2024-07-10 20:50:44', '2024-07-10 20:50:44', 1720615844468, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(9, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720616755584, '2024-07-10 21:05:55', '2024-07-10 21:05:55', 1720616755584, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(10, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720616877299, '2024-07-10 21:07:57', '2024-07-10 21:07:57', 1720616877299, NULL, 0, 3, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(11, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720629436531, '2024-07-11 00:37:16', '2024-07-11 00:37:16', 1720629436531, NULL, 0, 0, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1),
(12, NULL, 'windows monitoring availability alert, code is UN_CONNECTABLE', NULL, 1720629558514, '2024-07-11 00:39:18', '2024-07-11 00:39:18', 1720629558514, NULL, 0, 0, '{\"app\":\"windows\",\"monitorId\":\"401973231758848\",\"metrics\":\"availability\",\"code\":\"UN_CONNECTABLE\",\"thresholdId\":\"86\",\"monitorName\":\"WINDOWS_110.0.53.14\",\"monitorHost\":\"110.0.53.14\"}', 'availability', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_alert_converge`
--

CREATE TABLE `hzb_alert_converge` (
  `id` bigint(20) NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT 0,
  `eval_interval` int(11) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `match_all` tinyint(1) DEFAULT 0,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priorities` varchar(255) DEFAULT NULL,
  `tags` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_alert_define`
--

CREATE TABLE `hzb_alert_define` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT 0,
  `expr` varchar(2048) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `preset` tinyint(1) DEFAULT 0,
  `priority` tinyint(4) DEFAULT NULL,
  `recover_notice` tinyint(1) DEFAULT 0,
  `tags` varchar(2048) DEFAULT NULL,
  `template` varchar(2048) DEFAULT NULL,
  `times` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_alert_define`
--

INSERT INTO `hzb_alert_define` (`id`, `app`, `creator`, `enable`, `expr`, `field`, `gmt_create`, `gmt_update`, `metric`, `modifier`, `preset`, `priority`, `recover_notice`, `tags`, `template`, `times`) VALUES
(1, 'dynamic_tp', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(2, 'kubernetes', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(3, 'coreos', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(4, 'tidb', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(5, 'tomcat', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(6, 'opensuse', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(7, 'dm', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(8, 'influxdb', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(9, 'nebulagraph', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(10, 'rockylinux', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(11, 'redis', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(12, 'euleros', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(13, 'hertzbeat', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(14, 'hugegraph', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(15, 'elasticsearch', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(16, 'kafka_promql', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(17, 'websocket', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(18, 'mysql', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(19, 'redis_cluster', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(20, 'api', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(21, 'jvm', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(22, 'hdfs_namenode', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(23, 'h3c_switch', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(24, 'oracle', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(25, 'nginx', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(26, 'zookeeper', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(27, 'nebula_graph_cluster', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(28, 'ubuntu', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(29, 'hertzbeat_token', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(30, 'airflow', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(31, 'redis_sentinel', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(32, 'dns', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(33, 'redhat', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(34, 'spring_gateway', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(35, 'a_example', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(36, 'push', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(37, 'flink', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(38, 'openai', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(39, 'fullsite', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(40, 'hdfs_datanode', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(41, 'hbase_master', NULL, 1, NULL, NULL, '2024-07-10 17:48:11', '2024-07-10 17:48:11', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(42, 'port', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(43, 'clickhouse', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(44, 'pop3', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(45, 'kafka', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(46, 'cisco_switch', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(47, 'hbase_regionserver', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(48, 'centos', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(49, 'tplink_switch', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(50, 'pulsar', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(51, 'ssl_cert', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(52, 'hive', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(53, 'memcached', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(54, 'doris_fe', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(55, 'freebsd', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(56, 'ping', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(57, 'almalinux', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(58, 'httpsd', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(59, 'docker', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(60, 'nacos', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(61, 'api_code', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(62, 'influxdb_promql', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(63, 'postgresql', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(64, 'sqlserver', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(65, 'spark', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(66, 'debian', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(67, 'linux', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(68, 'udp_port', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(69, 'hadoop', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(70, 'jetty', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(71, 'prometheus', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(72, 'mongodb', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(73, 'doris_be', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(74, 'hpe_switch', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(75, 'emqx', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(76, 'activemq', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(77, 'opengauss', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(78, 'process', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(79, 'website', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(80, 'ftp', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(81, 'smtp', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(82, 'storm', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(83, 'rocketmq', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(84, 'springboot3', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(85, 'ntp', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(86, 'windows', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(87, 'rabbitmq', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(88, 'springboot2', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(89, 'mariadb', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(90, 'huawei_switch', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(91, 'iotdb', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(92, 'redfish', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(93, 'shenyu', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2),
(94, 'yarn', NULL, 1, NULL, NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', 'availability', NULL, 1, 0, 0, NULL, '${app} monitoring availability alert, code is ${code}', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_alert_define_monitor_bind`
--

CREATE TABLE `hzb_alert_define_monitor_bind` (
  `id` bigint(20) NOT NULL,
  `alert_define_id` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `monitor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_alert_silence`
--

CREATE TABLE `hzb_alert_silence` (
  `id` bigint(20) NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT 0,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `match_all` tinyint(1) DEFAULT 0,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `priorities` varchar(255) DEFAULT NULL,
  `tags` varchar(2048) DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_collector`
--

CREATE TABLE `hzb_collector` (
  `id` bigint(20) NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_collector`
--

INSERT INTO `hzb_collector` (`id`, `creator`, `gmt_create`, `gmt_update`, `ip`, `mode`, `modifier`, `name`, `status`) VALUES
(1, NULL, '2024-07-10 17:48:12', '2024-07-11 00:35:02', '127.0.0.1', NULL, NULL, 'main-default-collector', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_collector_monitor_bind`
--

CREATE TABLE `hzb_collector_monitor_bind` (
  `id` bigint(20) NOT NULL,
  `collector` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `monitor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_collector_monitor_bind`
--

INSERT INTO `hzb_collector_monitor_bind` (`id`, `collector`, `creator`, `gmt_create`, `gmt_update`, `modifier`, `monitor_id`) VALUES
(2, 'main-default-collector', 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', '2024-07-10 20:33:35', '2024-07-10 20:33:35', 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', 401971766918656);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_config`
--

CREATE TABLE `hzb_config` (
  `type` varchar(255) NOT NULL,
  `content` varchar(8192) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_config`
--

INSERT INTO `hzb_config` (`type`, `content`, `creator`, `gmt_create`, `gmt_update`, `modifier`) VALUES
('secret', '{\"jwtSecret\":\"KXy6CVUdk+3SEfIYSALErhd 2neKMeF0ts05jphcbsTX6 DTEythEQqqNsIHlUBwOaeJRCU7Bm2ZbjsefiHfw 4gax6cLKsRaT4JipEIVkt1r8C3Cv63Uh9J0box26aO4R+Xb30tyNDV0qFGx62\"}', NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', NULL),
('system', '{\"timeZoneId\":\"Africa/Casablanca\",\"locale\":\"en_US\",\"theme\":null}', NULL, '2024-07-10 17:48:12', '2024-07-10 17:48:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_history`
--

CREATE TABLE `hzb_history` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) DEFAULT NULL,
  `dou` double DEFAULT NULL,
  `instance` varchar(5000) DEFAULT NULL,
  `int32` int(11) DEFAULT NULL,
  `metric` varchar(255) DEFAULT NULL,
  `metric_type` tinyint(4) DEFAULT NULL,
  `metrics` varchar(255) DEFAULT NULL,
  `monitor_id` bigint(20) DEFAULT NULL,
  `str` varchar(2048) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_monitor`
--

CREATE TABLE `hzb_monitor` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `intervals` int(11) DEFAULT NULL,
  `job_id` bigint(20) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_monitor`
--

INSERT INTO `hzb_monitor` (`id`, `app`, `creator`, `description`, `gmt_create`, `gmt_update`, `host`, `intervals`, `job_id`, `modifier`, `name`, `status`) VALUES
(401971766918656, 'windows', 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', NULL, '2024-07-10 20:27:18', '2024-07-11 00:35:02', '110.0.53.17', 60, 402032650350080, 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', 'WINDOWS_110.0.53.17', 1),
(401973231758848, 'windows', 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', NULL, '2024-07-10 20:33:16', '2024-07-11 00:35:02', '110.0.53.14', 60, 402032650432000, 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', 'WINDOWS_110.0.53.14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_notice_receiver`
--

CREATE TABLE `hzb_notice_receiver` (
  `id` bigint(20) NOT NULL,
  `access_token` varchar(300) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `app_secret` varchar(255) DEFAULT NULL,
  `corp_id` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `discord_bot_token` varchar(300) DEFAULT NULL,
  `discord_channel_id` varchar(300) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `gotify_token` varchar(300) DEFAULT NULL,
  `hook_url` varchar(300) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `server_chan_token` varchar(300) DEFAULT NULL,
  `slack_web_hook_url` varchar(300) DEFAULT NULL,
  `smn_ak` varchar(22) DEFAULT NULL,
  `smn_project_id` varchar(32) DEFAULT NULL,
  `smn_region` varchar(32) DEFAULT NULL,
  `smn_sk` varchar(42) DEFAULT NULL,
  `smn_topic_urn` varchar(300) DEFAULT NULL,
  `tg_bot_token` varchar(255) DEFAULT NULL,
  `tg_user_id` varchar(255) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `wechat_id` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_notice_rule`
--

CREATE TABLE `hzb_notice_rule` (
  `id` bigint(20) NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) DEFAULT 0,
  `filter_all` tinyint(1) DEFAULT 0,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `period_end` datetime DEFAULT NULL,
  `period_start` datetime DEFAULT NULL,
  `priorities` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `tags` varchar(2048) DEFAULT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_notice_template`
--

CREATE TABLE `hzb_notice_template` (
  `id` bigint(20) NOT NULL,
  `content` longtext DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `preset` tinyint(1) DEFAULT 0,
  `type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_param`
--

CREATE TABLE `hzb_param` (
  `id` bigint(20) NOT NULL,
  `field` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `monitor_id` bigint(20) DEFAULT NULL,
  `param_value` varchar(8126) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_param`
--

INSERT INTO `hzb_param` (`id`, `field`, `gmt_create`, `gmt_update`, `monitor_id`, `param_value`, `type`) VALUES
(1, 'snmpVersion', '2024-07-10 20:27:18', '2024-07-10 20:33:35', 401971766918656, '1', 1),
(2, 'community', '2024-07-10 20:27:18', '2024-07-10 20:27:18', 401971766918656, 'fh2', 1),
(3, 'port', '2024-07-10 20:27:18', '2024-07-10 20:27:18', 401971766918656, '161', 0),
(4, 'host', '2024-07-10 20:27:18', '2024-07-10 20:27:18', 401971766918656, '110.0.53.17', 1),
(5, 'timeout', '2024-07-10 20:27:18', '2024-07-10 20:27:18', 401971766918656, '6000', 0),
(6, 'snmpVersion', '2024-07-10 20:33:16', '2024-07-10 20:33:16', 401973231758848, '1', 1),
(7, 'port', '2024-07-10 20:33:16', '2024-07-10 20:33:16', 401973231758848, '161', 0),
(8, 'host', '2024-07-10 20:33:16', '2024-07-10 20:33:16', 401973231758848, '110.0.53.14', 1),
(9, 'timeout', '2024-07-10 20:33:16', '2024-07-10 20:33:16', 401973231758848, '6000', 0),
(10, 'community', '2024-07-10 20:33:16', '2024-07-10 20:33:16', 401973231758848, 'fh2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_param_define`
--

CREATE TABLE `hzb_param_define` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `depend` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `key_alias` varchar(255) DEFAULT NULL,
  `param_limit` smallint(6) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(2048) DEFAULT NULL,
  `param_options` varchar(2048) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `param_range` varchar(255) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `type` varchar(255) DEFAULT NULL,
  `value_alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_push_metrics`
--

CREATE TABLE `hzb_push_metrics` (
  `id` bigint(20) NOT NULL,
  `metrics` varchar(255) DEFAULT NULL,
  `monitor_id` bigint(20) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_status_page_component`
--

CREATE TABLE `hzb_status_page_component` (
  `id` bigint(20) NOT NULL,
  `config_state` tinyint(4) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `method` tinyint(4) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_status_page_history`
--

CREATE TABLE `hzb_status_page_history` (
  `id` bigint(20) NOT NULL,
  `abnormal` int(11) DEFAULT NULL,
  `component_id` bigint(20) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `normal` int(11) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `unknowing` int(11) DEFAULT NULL,
  `uptime` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_status_page_incident`
--

CREATE TABLE `hzb_status_page_incident` (
  `id` bigint(20) NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `end_time` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  `start_time` bigint(20) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_status_page_incident_component_bind`
--

CREATE TABLE `hzb_status_page_incident_component_bind` (
  `id` bigint(20) NOT NULL,
  `component_id` bigint(20) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `incident_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_status_page_incident_content`
--

CREATE TABLE `hzb_status_page_incident_content` (
  `id` bigint(20) NOT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `incident_id` bigint(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_status_page_org`
--

CREATE TABLE `hzb_status_page_org` (
  `id` bigint(20) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `feedback` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `home` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `state` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hzb_tag`
--

CREATE TABLE `hzb_tag` (
  `id` bigint(20) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `modifier` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tag_value` varchar(2048) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_tag`
--

INSERT INTO `hzb_tag` (`id`, `color`, `creator`, `description`, `gmt_create`, `gmt_update`, `modifier`, `name`, `tag_value`, `type`) VALUES
(1, NULL, 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', NULL, '2024-07-10 20:27:18', '2024-07-10 20:27:18', 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', 'monitorId', '401971766918656', 0),
(2, NULL, 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', NULL, '2024-07-10 20:27:18', '2024-07-10 20:27:18', 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', 'monitorName', 'WINDOWS_110.0.53.17', 0),
(3, NULL, 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', NULL, '2024-07-10 20:33:16', '2024-07-10 20:33:16', 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', 'monitorId', '401973231758848', 0),
(4, NULL, 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', NULL, '2024-07-10 20:33:16', '2024-07-10 20:33:16', 'SysUserDetails(userId=1, username=admin, password=null, enabled=null, authorities=null, perms=null, deptId=1, dataScope=null)', 'monitorName', 'WINDOWS_110.0.53.14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_tag_monitor_bind`
--

CREATE TABLE `hzb_tag_monitor_bind` (
  `id` bigint(20) NOT NULL,
  `gmt_create` datetime DEFAULT NULL,
  `gmt_update` datetime DEFAULT NULL,
  `monitor_id` bigint(20) DEFAULT NULL,
  `tag_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_tag_monitor_bind`
--

INSERT INTO `hzb_tag_monitor_bind` (`id`, `gmt_create`, `gmt_update`, `monitor_id`, `tag_id`) VALUES
(1, NULL, NULL, 401971766918656, 1),
(2, NULL, NULL, 401971766918656, 2),
(3, NULL, NULL, 401973231758848, 3),
(4, NULL, NULL, 401973231758848, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hzb_user`
--

CREATE TABLE `hzb_user` (
  `id` bigint(20) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_by` bigint(20) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `perms` longblob DEFAULT NULL,
  `roles` longblob DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hzb_user`
--

INSERT INTO `hzb_user` (`id`, `avatar`, `create_by`, `dept_id`, `email`, `gender`, `mobile`, `nickname`, `password`, `perms`, `roles`, `status`, `update_by`, `username`) VALUES
(1, 'https://example.com/avatar1.jpg', 1, 1, 'user1@example.com', 1, '1234567890', 'John Doe', '$2a$10$FPBlPvJwiblGpeaFPxcWgucwJOb8ZvRQQPrwDw2wAiXuJBLCK.pbS', NULL, NULL, 1, 1, 'admin'),
(2, 'https://example.com/avatar2.jpg', 0, 2, 'user2@example.com', 0, '9876543210', 'Jane Smith', '$2a$10$1b6d7MqyGfYZUpw9S6FgUeLLZ6i1gG9z1XNiYjVCZ0Wu9mSGfnV2G', 0x757365723a72656164, 0x524f4c455f55534552, 0, 0, 'janesmith'),
(3, 'https://example.com/avatar3.jpg', 0, 1, 'user3@example.com', 0, '5551112222', 'Michael Johnson', '$2a$10$34PnZbP5z1t3AdY0QWnsyOcChDgGMn1mILqgV2oN3qjJESu0XUSCC', 0x757365723a7772697465, 0x524f4c455f55534552, 0, 0, 'michaelj'),
(4, 'https://example.com/avatar4.jpg', 0, 3, 'user4@example.com', 0, '3335558888', 'Robert Brown', '$2a$10$9Uz4J.UUHBS1GonG0sU0FOG/9tDQ1sGx4QWJ3t3olPmBx7DkFSJzu', 0x757365723a72656164, 0x524f4c455f55534552, 0, 0, 'robertb'),
(5, 'https://example.com/avatar5.jpg', 0, 2, 'user5@example.com', 0, '1112223333', 'Emily Wilson', '$2a$10$TyAmEyj8bIu8rY1PZ.c9feTLTj5/y0AD0Tmyj.Mbb0tywHrXv3awG', 0x757365723a7772697465, 0x524f4c455f55534552, 0, 0, 'emilyw'),
(6, 'https://example.com/avatar6.jpg', 0, 1, 'user6@example.com', 0, '7778889999', 'Daniel Lee', '$2a$10$8TFW./v6NRPNUWUMYIQjquzAAtul1AF5ZyHhDN.1hEJd/9U.8tP1y', 0x757365723a726561642c757365723a7772697465, 0x524f4c455f41444d494e, 0, 0, 'daniell'),
(7, 'https://example.com/avatar7.jpg', 0, 3, 'user7@example.com', 0, '4447770000', 'Olivia Davis', '$2a$10$JQUfnNPy5L4IS3F9YmSHD.KFUm9r2JibEmOJ/yY2mB1zllZbW2ErS', 0x757365723a72656164, 0x524f4c455f55534552, 0, 0, 'oliviad'),
(8, 'https://example.com/avatar8.jpg', 0, 2, 'user8@example.com', 0, '6669991111', 'William Clark', '$2a$10$L9Ybd1KoJWpS8uF1D1p7G.BqjF51u5GejS3bNciD9bMKRnC1DqEre', 0x757365723a7772697465, 0x524f4c455f55534552, 0, 0, 'williamc'),
(9, 'https://example.com/avatar9.jpg', 0, 1, 'user9@example.com', 0, '2223334444', 'Sophia Martin', '$2a$10$XsS0XCT7y2xeyW1tCSZKJ.F6izj0k4j2f6Om/tU5VBoST3Oot3tdO', 0x757365723a726561642c757365723a7772697465, 0x524f4c455f55534552, 0, 0, 'sophiam'),
(10, 'https://example.com/avatar10.jpg', 0, 3, 'user10@example.com', 0, '8881114444', 'Alexander White', '$2a$10$1kM6E.7cVYBvzq/A4Kb1EeVSsNz6Pt1LWvHyeWvwD5VVeyHo4LEkW', 0x757365723a72656164, 0x524f4c455f55534552, 0, 0, 'alexanderw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flyway_schema_history`
--
ALTER TABLE `flyway_schema_history`
  ADD PRIMARY KEY (`installed_rank`),
  ADD KEY `flyway_schema_history_s_idx` (`success`);

--
-- Indexes for table `hzb_alert`
--
ALTER TABLE `hzb_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_alert_converge`
--
ALTER TABLE `hzb_alert_converge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_alert_define`
--
ALTER TABLE `hzb_alert_define`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_alert_define_monitor_bind`
--
ALTER TABLE `hzb_alert_define_monitor_bind`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_alert_silence`
--
ALTER TABLE `hzb_alert_silence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_collector`
--
ALTER TABLE `hzb_collector`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNQ_hzb_collector_0` (`name`);

--
-- Indexes for table `hzb_collector_monitor_bind`
--
ALTER TABLE `hzb_collector_monitor_bind`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_collector_monitor` (`collector`);

--
-- Indexes for table `hzb_config`
--
ALTER TABLE `hzb_config`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `hzb_history`
--
ALTER TABLE `hzb_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_monitor`
--
ALTER TABLE `hzb_monitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `monitor_query_index` (`app`);

--
-- Indexes for table `hzb_notice_receiver`
--
ALTER TABLE `hzb_notice_receiver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_notice_rule`
--
ALTER TABLE `hzb_notice_rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_notice_template`
--
ALTER TABLE `hzb_notice_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_param`
--
ALTER TABLE `hzb_param`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_param_define`
--
ALTER TABLE `hzb_param_define`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_push_metrics`
--
ALTER TABLE `hzb_push_metrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_status_page_component`
--
ALTER TABLE `hzb_status_page_component`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_status_page_history`
--
ALTER TABLE `hzb_status_page_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_status_page_incident`
--
ALTER TABLE `hzb_status_page_incident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_status_page_incident_component_bind`
--
ALTER TABLE `hzb_status_page_incident_component_bind`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_incident_component` (`incident_id`),
  ADD KEY `hzbstatus_page_incident_component_bindcomponent_id` (`component_id`);

--
-- Indexes for table `hzb_status_page_incident_content`
--
ALTER TABLE `hzb_status_page_incident_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_hzb_status_page_incident_content_incident_id` (`incident_id`);

--
-- Indexes for table `hzb_status_page_org`
--
ALTER TABLE `hzb_status_page_org`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_tag`
--
ALTER TABLE `hzb_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hzb_tag_monitor_bind`
--
ALTER TABLE `hzb_tag_monitor_bind`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_tag_monitor` (`tag_id`),
  ADD KEY `FK_hzb_tag_monitor_bind_monitor_id` (`monitor_id`);

--
-- Indexes for table `hzb_user`
--
ALTER TABLE `hzb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hzb_alert`
--
ALTER TABLE `hzb_alert`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hzb_alert_converge`
--
ALTER TABLE `hzb_alert_converge`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_alert_define`
--
ALTER TABLE `hzb_alert_define`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `hzb_alert_define_monitor_bind`
--
ALTER TABLE `hzb_alert_define_monitor_bind`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_alert_silence`
--
ALTER TABLE `hzb_alert_silence`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_collector`
--
ALTER TABLE `hzb_collector`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hzb_collector_monitor_bind`
--
ALTER TABLE `hzb_collector_monitor_bind`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hzb_history`
--
ALTER TABLE `hzb_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_notice_receiver`
--
ALTER TABLE `hzb_notice_receiver`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_notice_rule`
--
ALTER TABLE `hzb_notice_rule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_notice_template`
--
ALTER TABLE `hzb_notice_template`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_param`
--
ALTER TABLE `hzb_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hzb_param_define`
--
ALTER TABLE `hzb_param_define`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_push_metrics`
--
ALTER TABLE `hzb_push_metrics`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_status_page_component`
--
ALTER TABLE `hzb_status_page_component`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_status_page_history`
--
ALTER TABLE `hzb_status_page_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_status_page_incident`
--
ALTER TABLE `hzb_status_page_incident`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_status_page_incident_component_bind`
--
ALTER TABLE `hzb_status_page_incident_component_bind`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_status_page_incident_content`
--
ALTER TABLE `hzb_status_page_incident_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_status_page_org`
--
ALTER TABLE `hzb_status_page_org`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hzb_tag`
--
ALTER TABLE `hzb_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hzb_tag_monitor_bind`
--
ALTER TABLE `hzb_tag_monitor_bind`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hzb_user`
--
ALTER TABLE `hzb_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hzb_status_page_incident_component_bind`
--
ALTER TABLE `hzb_status_page_incident_component_bind`
  ADD CONSTRAINT `hzb_status_page_incident_component_bindincident_id` FOREIGN KEY (`incident_id`) REFERENCES `hzb_status_page_incident` (`id`),
  ADD CONSTRAINT `hzbstatus_page_incident_component_bindcomponent_id` FOREIGN KEY (`component_id`) REFERENCES `hzb_status_page_component` (`id`);

--
-- Constraints for table `hzb_status_page_incident_content`
--
ALTER TABLE `hzb_status_page_incident_content`
  ADD CONSTRAINT `FK_hzb_status_page_incident_content_incident_id` FOREIGN KEY (`incident_id`) REFERENCES `hzb_status_page_incident` (`id`);

--
-- Constraints for table `hzb_tag_monitor_bind`
--
ALTER TABLE `hzb_tag_monitor_bind`
  ADD CONSTRAINT `FK_hzb_tag_monitor_bind_monitor_id` FOREIGN KEY (`monitor_id`) REFERENCES `hzb_monitor` (`id`),
  ADD CONSTRAINT `FK_hzb_tag_monitor_bind_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `hzb_tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
