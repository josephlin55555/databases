-- CREATE DATABASE chat;

USE chat;


DROP TABLE IF EXISTS `Room`;

CREATE TABLE `Room` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT,
  `Name` VARCHAR NULL DEFAULT,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Message'
--
-- ---

DROP TABLE IF EXISTS `Message`;

CREATE TABLE `Message` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT,
  `Content` VARCHAR NULL DEFAULT,
  `User ID` INTEGER NULL DEFAULT,
  `Room ID` VARCHAR NULL DEFAULT,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'User'
--
-- ---

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT,
  `Name` VARCHAR NULL DEFAULT,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `Message` ADD FOREIGN KEY (User ID) REFERENCES `User` (`id`);
ALTER TABLE `Message` ADD FOREIGN KEY (Room ID) REFERENCES `Room` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Room` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Message` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `User` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- -- ---
-- -- Test Data
-- -- ---

-- INSERT INTO `Room` (`id`,`Name`) VALUES
-- ('','');
-- INSERT INTO `Message` (`id`,`Content`,`User ID`,`Room ID`) VALUES
-- ('','','','');
-- INSERT INTO `User` (`id`,`Name`) VALUES
-- ('','');


-- DROP TABLE messages;

-- CREATE TABLE messages (
--   id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   value VARCHAR(100),
--   chatroom VARCHAR(100)
-- );

-- /* Create other tables and define schemas for them here! */
-- insert into messages
--   (value, chatroom)
--   values (1980, '4chan');



/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

