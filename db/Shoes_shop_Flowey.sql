-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema shoes_shop_flowey
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema shoes_shop_flowey
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shoes_shop_flowey` DEFAULT CHARACTER SET utf8mb3 ;
USE `shoes_shop_flowey` ;

-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`category` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`manufacterer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`manufacterer` (
  `manufacturer_id` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`manufacturer_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`order_status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`order_status` (
  `order_status_id` INT NOT NULL AUTO_INCREMENT,
  `status` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`order_status_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`pvs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`pvs` (
  `pvz_id` INT NOT NULL AUTO_INCREMENT,
  `post_index` INT NOT NULL,
  `town` VARCHAR(20) NOT NULL,
  `street` VARCHAR(50) NOT NULL,
  `house` INT NOT NULL,
  PRIMARY KEY (`pvz_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 37
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`role` (
  `role_id` INT NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`role_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`user` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `role_id` INT NOT NULL,
  `second_name` VARCHAR(30) NOT NULL,
  `first_name` VARCHAR(30) NOT NULL,
  `last_name` VARCHAR(30) NOT NULL,
  `login` VARCHAR(30) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`user_id`),
  INDEX `fk_user_role_idx` (`role_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_role`
    FOREIGN KEY (`role_id`)
    REFERENCES `shoes_shop_flowey`.`role` (`role_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `order_date` VARCHAR(25) NOT NULL,
  `delivery_date` VARCHAR(25) NOT NULL,
  `pvz_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `receive_code` INT NOT NULL,
  `order_status_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_orders_pvz_idx` (`pvz_id` ASC) VISIBLE,
  INDEX `fk_orders_user_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_orders_order_status_idx` (`order_status_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_order_status`
    FOREIGN KEY (`order_status_id`)
    REFERENCES `shoes_shop_flowey`.`order_status` (`order_status_id`),
  CONSTRAINT `fk_orders_pvz`
    FOREIGN KEY (`pvz_id`)
    REFERENCES `shoes_shop_flowey`.`pvs` (`pvz_id`),
  CONSTRAINT `fk_orders_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `shoes_shop_flowey`.`user` (`user_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`products_name`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`products_name` (
  `product_name_id` INT NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`product_name_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`supplier`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`supplier` (
  `suppleir_id` INT NOT NULL AUTO_INCREMENT,
  `supplier` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`suppleir_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`tovar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`tovar` (
  `tovar_id` INT NOT NULL AUTO_INCREMENT,
  `articul` VARCHAR(30) NOT NULL,
  `product_name_id` INT NOT NULL,
  `unit of measurement` VARCHAR(4) NOT NULL,
  `price` INT NOT NULL,
  `supplier_id` INT NOT NULL,
  `manufacturer_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `Current discount` INT NOT NULL,
  `Quantity in stock` INT NOT NULL,
  `description` TEXT NULL DEFAULT NULL,
  `photo` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`tovar_id`),
  INDEX `fk_tovar_supplier_idx` (`supplier_id` ASC) VISIBLE,
  INDEX `fk_tovar_manufacturer_idx` (`manufacturer_id` ASC) VISIBLE,
  INDEX `fk_tovar_product_name_idx` (`product_name_id` ASC) VISIBLE,
  INDEX `fk_tovar_category_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `fk_tovar_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `shoes_shop_flowey`.`category` (`category_id`),
  CONSTRAINT `fk_tovar_manufacturer`
    FOREIGN KEY (`manufacturer_id`)
    REFERENCES `shoes_shop_flowey`.`manufacterer` (`manufacturer_id`),
  CONSTRAINT `fk_tovar_product_name`
    FOREIGN KEY (`product_name_id`)
    REFERENCES `shoes_shop_flowey`.`products_name` (`product_name_id`),
  CONSTRAINT `fk_tovar_supplier`
    FOREIGN KEY (`supplier_id`)
    REFERENCES `shoes_shop_flowey`.`supplier` (`suppleir_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shoes_shop_flowey`.`proorders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shoes_shop_flowey`.`proorders` (
  `proorder_id` INT NOT NULL AUTO_INCREMENT,
  `tovar_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`proorder_id`),
  INDEX `fk_proorder_orders_idx` (`order_id` ASC) VISIBLE,
  INDEX `fk_proorder_tovar_idx` (`tovar_id` ASC) VISIBLE,
  CONSTRAINT `fk_proorder_orders`
    FOREIGN KEY (`order_id`)
    REFERENCES `shoes_shop_flowey`.`orders` (`order_id`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_proorder_tovar`
    FOREIGN KEY (`tovar_id`)
    REFERENCES `shoes_shop_flowey`.`tovar` (`tovar_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
