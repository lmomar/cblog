-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2017 at 05:45 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL,
  `titre` varchar(80) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `titre`, `created_at`) VALUES
(1, 'category 1', '2017-03-15 14:11:33');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('l7ounm9g844i9cpre6qu6jhutepdp825', '127.0.0.1', 1489491718, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393439313731383b),
('8c4dsjvqi47hr2bbqufmijukakgmh4p1', '127.0.0.1', 1489492439, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393439323433393b),
('n6pr8jfav7r11qr0us0ll5mgc2t4u8g2', '127.0.0.1', 1489493243, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393439333234333b),
('g9rvu784m37h32thrf5kfcaq0r125bog', '127.0.0.1', 1489494229, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393439343232393b),
('uqou1cnkcsg2898tmen1o9kj826dlntv', '127.0.0.1', 1489494762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393439343736323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231323638383839383233223b6c6173745f636865636b7c693a313438393439343434323b),
('jhe1qtr95l8m64phqo3sm7vie0a71id3', '127.0.0.1', 1489494762, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393439343736323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231323638383839383233223b6c6173745f636865636b7c693a313438393439343434323b),
('78ms5ueks8vsglih1lnjhsq7e86h5a5c', '127.0.0.1', 1489504017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393530343031373b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('8ggs9cjn19bukeu317j29hm9q4nbnbs4', '127.0.0.1', 1489504453, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393530343435333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('9bttj6m45snpbgv0rs7vfpg3gdv6ea4t', '127.0.0.1', 1489504811, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393530343831313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('krcc105n7udom1icftlml453b0c06l23', '127.0.0.1', 1489505118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393530353131383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('hijes3eqh6lpke9fbc4l4f8mr9ae5ji1', '127.0.0.1', 1489510278, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531303237383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('rd9l1h8d8s527mfa5eheg07l4bdi1i2d', '127.0.0.1', 1489511162, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531313136323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('7fsn6es61ss45071h077gceqd3gfe7sq', '127.0.0.1', 1489511472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531313437323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('t7lhm9fc4olm2lttb4h6bsnfe82snain', '127.0.0.1', 1489512080, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531323038303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('03ceo7452tpk54cdicjm7tc3nnmonqmm', '127.0.0.1', 1489512505, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531323530353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('n7nhlav4un3tdrmi2drctn9nrkd1t65u', '127.0.0.1', 1489512814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531323831343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b),
('41rhf6llccsnk60469m95ue1m8kgk2g3', '127.0.0.1', 1489513175, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531333137353b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('2gde08mblh290cu5e2g5l3dshpf89h6o', '127.0.0.1', 1489513480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531333438303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('5gsstgp2i0bkbjgfcslr65fkk7l70bof', '127.0.0.1', 1489513480, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393531333438303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839343934343432223b6c6173745f636865636b7c693a313438393530323139323b6d6573736167657c733a31383a22436f6d70746520656e72656769737472c3a9223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('4on645frhr4b4g4a3c5t73sk5vb3m8fu', '127.0.0.1', 1489565613, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393536353631333b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('akqs8e9j7bh3gel8da84bcshgmojda5k', '127.0.0.1', 1489567117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393536373131373b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('3e461v7rdk9ul9nt5or790u15nvk06ru', '127.0.0.1', 1489568653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393536383635333b6d6573736167657c733a31383a22436f6d70746520656e72656769737472c3a9223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226e6577223b7d),
('hhtr4ebsb32u4ff75t3d7cnqb33vru0i', '127.0.0.1', 1489569953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393536393935333b),
('e3b221pgdu6n694t02irgq5immhs0h9p', '127.0.0.1', 1489576754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393537363735343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353032313932223b6c6173745f636865636b7c693a313438393536393935333b6d6573736167657c733a32383a2241727469636c6520616a6f7574c3a920617665632073756363c3a973223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('pt535m2gjkaj8eqpgf1qg6sjtlppv0e6', '127.0.0.1', 1489576754, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393537363735343b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353032313932223b6c6173745f636865636b7c693a313438393536393935333b),
('rde5kcsfvl0afu01fe1nn7qfpdh0esqa', '127.0.0.1', 1489587065, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393538373036353b),
('r14ovp2m9abn9eeoahoil16e2jsrkroa', '127.0.0.1', 1489588020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393538383032303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b6d6573736167657c733a33303a2243617465676f72696520616a6f7574c3a920617665632073756363c3a973223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('f3pj4eahgsoaacuemhp43odfoah4snjv', '127.0.0.1', 1489588361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393538383336313b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b6d6573736167657c733a32383a2241727469636c6520616a6f7574c3a920617665632073756363c3a973223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('tfqu3k3en7j1tt5atu5mcl651bhj4omb', '127.0.0.1', 1489589230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393538393233303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b),
('5i2ijd92omuucm86o6cc9s2e46kj53r8', '127.0.0.1', 1489589788, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393538393738383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b),
('ort0s9kk50uh0804i4gfr366fo92fjjr', '127.0.0.1', 1489590116, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393539303131363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b),
('qr6452fsu59v32vaftu836l6o7hequ5f', '127.0.0.1', 1489590483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393539303438333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b),
('1ssvcc90mbpqjtvc8i8cat15v9mq75cg', '127.0.0.1', 1489590853, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393539303835333b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b),
('fiecaf97517lfmu4dtg3q1f36id8a1ve', '127.0.0.1', 1489591192, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393539313139323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b),
('f7otbuthuiltuuo2pqcn8kicglo06ofe', '127.0.0.1', 1489594200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393539343230303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b),
('7mvlmkksrcgj8qvjqmqn57087dnn00oo', '127.0.0.1', 1489594200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393539343230303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353639393533223b6c6173745f636865636b7c693a313438393538373036363b);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`, `created_at`, `category_id`) VALUES
(1, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet elementum ligula, vitae fermentum augue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque quis elementum justo, id eleifend lorem. Nulla facilisi. Ut viverra cursus felis quis feugiat. Nulla a efficitur enim. Nulla congue imperdiet euismod. Nullam dolor magna, consequat a odio ullamcorper, bibendum aliquet mauris.\r\n\r\nFusce laoreet mi sed blandit consectetur. Donec at lacus nec magna tristique dignissim. Duis convallis malesuada sem, vel congue ligula. Maecenas sed feugiat turpis. Sed auctor tempus enim ac fringilla. Donec dictum maximus porttitor. In eu lorem congue metus bibendum pellentesque ut at metus. Morbi odio tellus, egestas vitae justo non, ullamcorper semper ante.', '2017-03-15 14:35:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `adresse` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `adresse`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1489587066, 1, 'Admin', 'istrator', 'ADMIN', '0', ''),
(4, '127.0.0.1', 'roma 12', '$2y$08$ZgLbaQh2R2zW1gRv.uEMLuB94nXZGOJRgnzF4hrumX2RrysFrsgE6', NULL, 'testt', NULL, NULL, NULL, NULL, 1489512902, NULL, 1, NULL, NULL, NULL, NULL, ''),
(5, '127.0.0.1', 'Rabat', '$2y$08$h5B0lJqQfCGwrB5Q28skPuhV/TRIHpF89MuiS6xyYt767X42em3JS', NULL, 'test22', NULL, NULL, NULL, NULL, 1489513480, NULL, 1, NULL, NULL, NULL, NULL, ''),
(6, '127.0.0.1', NULL, '$2y$08$fs5tISSbkKj3v.VH4xWgn.v.8OIuTtbX1SwZdcSADlR.Xel8AZU2a', NULL, 'testtt', NULL, NULL, NULL, NULL, 1489567139, NULL, 1, NULL, NULL, NULL, NULL, ''),
(7, '127.0.0.1', 'test', '$2y$08$7wq.oiQkrepEDseqbKsixuHXZX2AXASYoRn5fO9M9PNCedwYSZDUq', NULL, 'test1@test.fr', NULL, NULL, NULL, 'Pf1Ta3bBEcVNjS3lgYn6rO', 1489568673, 1489568763, 1, NULL, NULL, NULL, NULL, 'rabat 0002');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(5, 4, 2),
(6, 5, 2),
(7, 7, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`),
  ADD KEY `user_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
