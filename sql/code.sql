-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2017 at 01:58 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `titre`, `created_at`) VALUES
(1, 'category 1', '2017-03-15 14:11:33'),
(2, 'category 2', '2017-03-16 13:55:35');

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
('q27uce6r53oneapg61drqgqa6oe700r8', '127.0.0.1', 1489667729, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393636373732393b),
('n9s04ulor8bn0ncakh5td4dojeipcf4f', '127.0.0.1', 1489668047, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393636383034373b),
('3h9k1ieqaa1s7f0vpo634r62vdqgdeci', '127.0.0.1', 1489668385, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393636383338353b6964656e746974797c733a31333a226f6d6172407961686f6f2e6672223b656d61696c7c733a31333a226f6d6172407961686f6f2e6672223b757365725f69647c733a313a2238223b6f6c645f6c6173745f6c6f67696e7c4e3b6c6173745f636865636b7c693a313438393636383134383b),
('eb4igr7p13haibvulsnjibjn0n6p3k0j', '127.0.0.1', 1489672113, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393637323131333b6964656e746974797c733a31333a226f6d6172407961686f6f2e6672223b656d61696c7c733a31333a226f6d6172407961686f6f2e6672223b757365725f69647c733a313a2238223b6f6c645f6c6173745f6c6f67696e7c4e3b6c6173745f636865636b7c693a313438393636383134383b),
('91l15l7d6jfrn0vf3k4lob1b5q7r2126', '127.0.0.1', 1489672450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393637323435303b6964656e746974797c733a31333a226f6d6172407961686f6f2e6672223b656d61696c7c733a31333a226f6d6172407961686f6f2e6672223b757365725f69647c733a313a2238223b6f6c645f6c6173745f6c6f67696e7c4e3b6c6173745f636865636b7c693a313438393636383134383b),
('9eb44gqsa1nire006f5bnbf0cfj98ar0', '127.0.0.1', 1489672612, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393637323539383b);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`, `created_at`, `category_id`) VALUES
(1, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sit amet elementum ligula, vitae fermentum augue. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque quis elementum justo, id eleifend lorem. Nulla facilisi. Ut viverra cursus felis quis feugiat. Nulla a efficitur enim. Nulla congue imperdiet euismod. Nullam dolor magna, consequat a odio ullamcorper, bibendum aliquet mauris.\r\n\r\nFusce laoreet mi sed blandit consectetur. Donec at lacus nec magna tristique dignissim. Duis convallis malesuada sem, vel congue ligula. Maecenas sed feugiat turpis. Sed auctor tempus enim ac fringilla. Donec dictum maximus porttitor. In eu lorem congue metus bibendum pellentesque ut at metus. Morbi odio tellus, egestas vitae justo non, ullamcorper semper ante.', '2017-03-15 14:35:34', 1),
(2, 'Aliquam eu rutrum libero.', 'aliquam-eu-rutrum-libero', 'Aliquam eu rutrum libero. Nullam convallis at felis eget laoreet. Curabitur porttitor neque ac commodo maximus. Sed dictum dui eros. Etiam libero odio, sodales a sapien in, facilisis vestibulum felis. Sed turpis mi, imperdiet sit amet velit eu, venenatis euismod justo. Donec et tristique nibh. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent vehicula faucibus dolor, id malesuada urna euismod sed. Duis ac ligula gravida metus volutpat mollis quis a augue. Sed mattis bibendum lectus vel lobortis.', '2017-03-16 12:43:47', 1),
(3, 'news 3', 'news-3', 'news 3 texte', '2017-03-16 13:55:56', 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `adresse`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1489587066, 1, 'Admin', 'istrator', 'ADMIN', '0', ''),
(4, '127.0.0.1', 'roma 12', '$2y$08$ZgLbaQh2R2zW1gRv.uEMLuB94nXZGOJRgnzF4hrumX2RrysFrsgE6', NULL, 'testt', NULL, NULL, NULL, NULL, 1489512902, NULL, 1, NULL, NULL, NULL, NULL, ''),
(5, '127.0.0.1', 'Rabat', '$2y$08$h5B0lJqQfCGwrB5Q28skPuhV/TRIHpF89MuiS6xyYt767X42em3JS', NULL, 'test22', NULL, NULL, NULL, NULL, 1489513480, NULL, 1, NULL, NULL, NULL, NULL, ''),
(6, '127.0.0.1', NULL, '$2y$08$fs5tISSbkKj3v.VH4xWgn.v.8OIuTtbX1SwZdcSADlR.Xel8AZU2a', NULL, 'testtt', NULL, NULL, NULL, NULL, 1489567139, NULL, 1, NULL, NULL, NULL, NULL, ''),
(7, '127.0.0.1', 'test', '$2y$08$7wq.oiQkrepEDseqbKsixuHXZX2AXASYoRn5fO9M9PNCedwYSZDUq', NULL, 'test1@test.fr', NULL, NULL, NULL, 'Pf1Ta3bBEcVNjS3lgYn6rO', 1489568673, 1489568763, 1, NULL, NULL, NULL, NULL, 'rabat 0002'),
(8, '127.0.0.1', 'test', '$2y$08$hij5b0l53AwMKjqdw9DlTenHGbvVi3BYWJePzRLoumgvaLPr9WM6W', NULL, 'omar@yahoo.fr', NULL, NULL, NULL, NULL, 1489668131, 1489668148, 1, NULL, NULL, NULL, NULL, 'Rabat 16');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(5, 4, 2),
(6, 5, 2),
(7, 7, 2),
(8, 8, 2);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
