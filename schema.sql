/**
 * Execute this file from the command line by typing:
 *   mysql -u root < schema.sql
 */

DROP DATABASE IF EXISTS siege;
CREATE DATABASE siege;

USE siege;

CREATE TABLE `account` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`username` VARCHAR(250) NOT NULL,
	`platform` VARCHAR(15),
	`hours` INT,
	`kdratio` INT,
	`wlratio` INT,

	PRIMARY KEY(`id`)
);