/**
 * Execute this file from the command line by typing:
 *   mysql -u root < schema.sql
 */

DROP DATABASE IF EXISTS siege;
CREATE DATABASE siege;

USE siege;

CREATE TABLE `Account`
(
  `accountId` int PRIMARY KEY AUTO_INCREMENT,
  `username` varchar
(55) UNIQUE,
  `platform` varchar
(4) NOT NULL,
  `kdRatio` int NOT NULL,
  `Ratio` int NOT NULL,
  `playtime` int NOT NULL,
);
