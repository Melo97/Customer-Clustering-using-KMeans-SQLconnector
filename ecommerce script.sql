-- MySQL Workbench Synchronization
-- Generated: 2022-10-13 12:34
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Samsung

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `ecommerce_db`.`orders` 
DROP FOREIGN KEY `orders_ibfk_1`;

ALTER TABLE `ecommerce_db`.`payments` 
DROP FOREIGN KEY `payments_ibfk_1`,
DROP FOREIGN KEY `payments_ibfk_2`;

ALTER TABLE `ecommerce_db`.`order_items` 
CHANGE COLUMN `seller_id` `seller_id` VARCHAR(45) NOT NULL ,
ADD PRIMARY KEY (`order_id`, `seller_id`, `product_id`),
ADD INDEX `seller_id_idx` (`seller_id` ASC) VISIBLE,
ADD INDEX `product_id_idx` (`product_id` ASC) VISIBLE;
;

ALTER TABLE `ecommerce_db`.`orders` 
CHANGE COLUMN `customer_id` `customer_id` VARCHAR(45) NOT NULL ,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`order_id`, `customer_id`);
;

ALTER TABLE `ecommerce_db`.`payments` 
CHANGE COLUMN `order_id` `order_id` VARCHAR(45) NOT NULL ,
ADD PRIMARY KEY (`order_id`),
DROP INDEX `order_id` ;
;

ALTER TABLE `ecommerce_db`.`products` 
CHANGE COLUMN `product_id` `product_id` VARCHAR(45) NOT NULL ,
ADD PRIMARY KEY (`product_id`);
;

ALTER TABLE `ecommerce_db`.`order_items` 
ADD CONSTRAINT `seller_id`
  FOREIGN KEY (`seller_id`)
  REFERENCES `ecommerce_db`.`sellers` (`seller_id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION,
ADD CONSTRAINT `product_id`
  FOREIGN KEY (`product_id`)
  REFERENCES `ecommerce_db`.`products` (`product_id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;

ALTER TABLE `ecommerce_db`.`orders` 
ADD CONSTRAINT `orders_ibfk_1`
  FOREIGN KEY (`customer_id`)
  REFERENCES `ecommerce_db`.`customers` (`customer_id`)
  ON DELETE CASCADE;

ALTER TABLE `ecommerce_db`.`payments` 
ADD CONSTRAINT `payments_ibfk_1`
  FOREIGN KEY (`order_id`)
  REFERENCES `ecommerce_db`.`orders` (`order_id`)
  ON DELETE CASCADE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
