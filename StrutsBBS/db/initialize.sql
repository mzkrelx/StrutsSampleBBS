CREATE DATABASE `struts_bbs_xxxx`;

CREATE TABLE `struts_bbs_xxxx`.`articles` (
  `id` SERIAL NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `message` TEXT NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `struts_bbs_xxxx`.`articles`
(`name`, `message`)
VALUES
('山中',
'はじめまして、山中です。'),
('山本',
'こんにちは、山本です。');