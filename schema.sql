/**
 * Execute this file from the command line by typing:
 *   mysql -u root < schema.sql
 */

DROP DATABASE IF EXISTS siege;
CREATE DATABASE siege;

USE siege;

CREATE TABLE `Account` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar(55),
  `platform` varcharacter(15)
);

CREATE TABLE `Team` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `squadLeader` int,
  `playerOne` varchar(255),
  `playerTwo` varchar(255),
  `playerThree` varchar(255),
  `playerFour` varchar(255)
);

CREATE TABLE `Favorites` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `account` int,
  `favoritesList` varchar(255)
);

CREATE TABLE `History` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `account` int,
  `historyList` varchar(255)
);

CREATE TABLE `Stats` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `account` int,
  `kdratio` int,
  `wlratio` int,
  `playtime` int
);

ALTER TABLE `Account` ADD FOREIGN KEY (`id`) REFERENCES `History` (`account`);

ALTER TABLE `Account` ADD FOREIGN KEY (`id`) REFERENCES `Team` (`squadLeader`);

ALTER TABLE `Account` ADD FOREIGN KEY (`id`) REFERENCES `Stats` (`account`);

ALTER TABLE `Account` ADD FOREIGN KEY (`id`) REFERENCES `Favorites` (`account`);
