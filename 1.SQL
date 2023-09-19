/*
Created: 25.08.2023
Modified: 25.08.2023
Model: MySQL 8.0
Database: MySQL 8.0
*/

-- Create tables section -------------------------------------------------

-- Table ZAKAZY

CREATE TABLE `ZAKAZY`
(
  `Nzakaza` Int NOT NULL AUTO_INCREMENT,
  `Nzakazchika` Int,
  `Nprod` Int,
  `DataZakaza` Date,
  `Tsena` Double,
  PRIMARY KEY (`Nzakaza`)
)
;

CREATE INDEX `IX_Relationship1` ON `ZAKAZY` (`Nzakazchika`)
;

CREATE INDEX `IX_Relationship2` ON `ZAKAZY` (`Nprod`)
;

-- Table ZAKAZCHIKI

CREATE TABLE `ZAKAZCHIKI`
(
  `Nzakazchika` Int NOT NULL AUTO_INCREMENT,
  `Fio` Varchar(100),
  `Adres` Text,
  PRIMARY KEY (`Nzakazchika`)
)
;

-- Table PRODAVTSY

CREATE TABLE `PRODAVTSY`
(
  `Nprod` Int NOT NULL AUTO_INCREMENT,
  `Fio` Varchar(100),
  `Adres` Text,
  `Reiting` Int,
  PRIMARY KEY (`Nprod`)
)
;

-- Create foreign keys (relationships) section -------------------------------------------------

ALTER TABLE `ZAKAZY` ADD CONSTRAINT `Relationship1` FOREIGN KEY (`Nzakazchika`) REFERENCES `ZAKAZCHIKI` (`Nzakazchika`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

ALTER TABLE `ZAKAZY` ADD CONSTRAINT `Relationship2` FOREIGN KEY (`Nprod`) REFERENCES `PRODAVTSY` (`Nprod`) ON DELETE RESTRICT ON UPDATE RESTRICT
;

