-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 14, 2017 at 10:42 PM
-- Server version: 5.5.49-log
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

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
('7bsfojd9qr1top7h50aag92vah95chs3', '127.0.0.1', 1489528122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393532383132323b),
('9l2g78n5otm44o3r08sennd5j9plnusn', '127.0.0.1', 1489527355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393532373335353b),
('a2s04t9f5u7dp2b9hn0gaascpgsdkb8p', '127.0.0.1', 1489527791, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393532373739313b6d6573736167657c733a303a22223b5f5f63695f766172737c613a313a7b733a373a226d657373616765223b733a333a226f6c64223b7d),
('aq39v535nol5bhrp7u4p6mv1ntgubehd', '127.0.0.1', 1489526078, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393532363037383b),
('jajns70u1fojqfpqg7dvhnvmign77i8h', '127.0.0.1', 1489531196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393533303937323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353238333730223b6c6173745f636865636b7c693a313438393532383930333b),
('o4rajeb910e5r9qc1bvmhfhq1d2sgt0g', '127.0.0.1', 1489530608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393533303630383b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353238333730223b6c6173745f636865636b7c693a313438393532383930333b),
('o8h3u35vckmijuc8i6svphflif12hcgb', '127.0.0.1', 1489526536, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393532363533363b),
('tcdh9q815mlsvk9dqfs6n72e1muub5tt', '127.0.0.1', 1489528990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393532383939303b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353238333730223b6c6173745f636865636b7c693a313438393532383930333b),
('tpdk1qc3pa198q3rrkbi0bjsf7cfnsht', '127.0.0.1', 1489530972, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393533303937323b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231343839353238333730223b6c6173745f636865636b7c693a313438393532383930333b),
('vvk85io32hogogmrr3g8eto3lsnardv0', '127.0.0.1', 1489528666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313438393532383636363b6964656e746974797c733a31353a2261646d696e4061646d696e2e636f6d223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b757365725f69647c733a313a2231223b6f6c645f6c6173745f6c6f67696e7c733a31303a2231323638383839383233223b6c6173745f636865636b7c693a313438393532383337303b);

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
  `text` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(1, 'Articles 1', 'article-1', 'Article 1 texteLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus nunc non rhoncus accumsan. Vestibulum leo orci, tempus quis nisi non, consectetur porttitor tortor. Nam eu elit lorem. Quisque vehicula ultricies orci, quis aliquet massa scelerisque vitae. Ut ac tellus porta, vulputate sem eget, sodales velit. Aenean purus sem, dictum et dignissim vel, consectetur tincidunt arcu. Phasellus a turpis lectus. Vivamus quis porta nisi, eu vehicula mauris. Nullam a lectus et magna scelerisque condimentum vitae at libero. Etiam a ligula non erat pharetra scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam iaculis pharetra leo sit amet vestibulum. Pellentesque auctor accumsan lectus. Duis vitae odio at mi congue scelerisque in euismod nulla. Quisque maximus libero urna, nec maximus eros sollicitudin consectetur. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;'),
(2, 'Articles 2', 'article-2', 'Article 2 Texte Mauris blandit porttitor libero ut pulvinar. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam erat tellus, tristique nec neque tristique, auctor elementum lorem. Quisque hendrerit, nulla sit amet iaculis consectetur, mauris ligula scelerisque ligula, ut interdum ante lorem nec nibh. Aliquam sit amet vulputate massa. Sed facilisis, eros at malesuada hendrerit, neque sem viverra ante, vitae laoreet massa lacus gravida dui. Nunc dignissim at dolor vel posuere. Donec laoreet tincidunt hendrerit. Morbi et pretium augue.'),
(3, 'article 5', 'article-5', 'article HHGH'),
(4, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'Maecenas tincidunt tellus efficitur massa porta, nec vehicula ex fringilla. Nunc risus neque, molestie ut urna eu, laoreet tempor velit. Vivamus maximus, lacus eget dignissim dignissim, nisl nisl scelerisque lorem, id blandit dui quam non tellus. Mauris nulla ligula, consectetur nec viverra auctor, lacinia non felis. Vivamus sit amet dictum magna, non pellentesque lacus. Donec tincidunt libero aliquam leo molestie, vitae consequat mi rutrum. Morbi at lorem sapien. Aliquam sit amet est vitae erat hendrerit efficitur. Suspendisse venenatis justo vel nulla consectetur egestas. Nullam gravida aliquam tellus, nec posuere nunc lacinia at. Etiam in elit non justo imperdiet aliquet. Pellentesque consequat faucibus sagittis.\r\n\r\nMauris auctor id enim in viverra. Quisque varius lobortis nibh in condimentum. Vestibulum lacinia ipsum sem, sit amet pretium odio tincidunt vitae. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam dignissim facilisis libero eu euismod. Duis tincidunt dictum libero, quis fermentum purus tristique eget. Suspendisse dignissim urna nibh, ut finibus massa malesuada vitae. Aenean a urna augue. Donec tellus ipsum, cursus at tortor at, scelerisque sagittis elit. Maecenas tempor mauris sit amet dolor faucibus molestie.');

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
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1489528903, 1, 'Admin', 'istrator', 'ADMIN', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
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
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
