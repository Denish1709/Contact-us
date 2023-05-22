-- Adminer 4.8.0 MySQL 5.5.5-10.5.17-MariaDB-1:10.5.17+maria~ubu2004 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `contactus`;
CREATE TABLE `contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `contactus` (`id`, `name`, `email`, `message`, `added_on`) VALUES
(1,	'Denish',	'denishsubramaniam8@gmail.com',	'GRGRGERFGEWFW',	'2023-05-22 07:27:18'),
(2,	'Denish',	'denishsubramaniam8@gmail.com',	'wertyukjhgfdfgth',	'2023-05-22 07:27:41');

-- 2023-05-22 07:35:46
