#create and use the Warehouseonline database

CREATE DATABASE IF NOT EXISTS `Warehouseonline`;
USE `Warehouseonline`;

#create and populate the Warehouse table, which has descriptions of all the types of Warehouse
DROP TABLE IF EXISTS `Warehouse`;

CREATE TABLE `Warehouse` (
  `warehouseNumber` INT NOT NULL ,
  `warehouseName` VARCHAR(20) DEFAULT NULL,
  `streetNumber`  VARCHAR(15) DEFAULT NULL,
  `streetName` VARCHAR(50) DEFAULT NULL,
  `city` ENUM('Sydney','Brisbane','Melbourne') DEFAULT NULL,
  `suburb` VARCHAR(60) DEFAULT NULL,
  `state` ENUM ('QLD', 'VIC', 'NSW') DEFAULT NULL,
  `postcode` char(4) DEFAULT NULL,
  `warehouseHeadName` VARCHAR(60) DEFAULT NULL,
  `numberEmployees` INT NOT NULL DEFAULT '1',
   PRIMARY KEY (`warehouseNumber`) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#create and populate the Publisher table, which has descriptions of all the types of Publisher
DROP TABLE IF EXISTS `Publisher`;

CREATE TABLE `Publisher` (
  `publisherCode` int(6) NOT NULL,
  `publisherName` varchar(40) NOT NULL,
  `publisherCity` varchar(20) DEFAULT NULL,
  `publisherState` varchar(20) DEFAULT NULL,
  `publisherEmail` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`publisherCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#create and populate the Author table, which has descriptions of all the types of Author

DROP TABLE IF EXISTS `Author`;
CREATE TABLE `Author` (
  `authorNumber` int(6) NOT NULL,
  `authorName` varchar(40) DEFAULT NULL,
  `authorEmail` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`authorNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




#create and populate the Item table which stores the record of all of the Item
DROP TABLE IF EXISTS `Item`;
CREATE TABLE `Item` (
  `itemCode` varchar(20) NOT NULL,
  `itemTitle` varchar(40) NOT NULL,
  `publisherCode`int(6) NOT NULL,
  `itemType` ENUM('paperback', 'eBook', 'other') DEFAULT NULL,
  `stockPrice` INT DEFAULT NULL,
  `ISBN`  INT(13) NOT NULL ,
  PRIMARY KEY (`itemCode`),
  FOREIGN KEY (`publisherCode`) REFERENCES `Publisher` (`publisherCode`) ON DELETE NO ACTION ON UPDATE NO ACTION 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#create and populate the ItemWriters table which stores the record of all of the ItemWriters

DROP TABLE IF EXISTS `ItemWriters`;

CREATE TABLE `ItemWriters` (
  `itemCode` varchar(20) NOT NULL,
  `authorNumber` int(6) NOT NULL,
  `writerSequenceNumber` INT DEFAULT NULL,
  PRIMARY KEY (`itemCode`,`authorNumber`),
  CONSTRAINT `itemCode` FOREIGN KEY (`itemCode`) REFERENCES `Item` (`itemCode`) ON DELETE NO ACTION ON UPDATE NO ACTION ,
  CONSTRAINT `authorNumber` FOREIGN KEY (`authorNumber`) REFERENCES `Author` (`authorNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#create and populate the Inventory table which stores the record of all of the Inventory

DROP TABLE IF EXISTS `Inventory`;

CREATE TABLE `Inventory` (
  `itemCode` varchar(20) NOT NULL,
  `warehouseNumber` INT NOT NULL ,
  `unitsOnHand` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`itemCode`,`warehouseNumber`),
  CONSTRAINT `itemCode` FOREIGN KEY (`itemCode`) REFERENCES `Item` (`itemCode`) ON DELETE NO ACTION ON UPDATE NO ACTION ,
  CONSTRAINT `warehouseNumber` FOREIGN KEY (`warehouseNumber`) REFERENCES `Warehouse` (`warehouseNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

