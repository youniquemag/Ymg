-- MySQL Script generated by MySQL Workbench
-- Thu Feb 15 22:41:42 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema youniquemag
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema youniquemag
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `youniquemag` DEFAULT CHARACTER SET utf8 ;
USE `youniquemag` ;

-- -----------------------------------------------------
-- Table `youniquemag`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youniquemag`.`category` (
  `id_category` INT NOT NULL,
  `category` VARCHAR(45) NULL,
  PRIMARY KEY (`id_category`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youniquemag`.`articles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youniquemag`.`articles` (
  `id_articles` VARCHAR(15) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `author` VARCHAR(45) NOT NULL,
  `category_id` INT NOT NULL,
  `hasPics` TINYINT NULL,
  `editor` VARCHAR(45) NULL,
  `uploadDate` DATETIME NULL,
  `composeDate` DATETIME NULL,
  `comments` VARCHAR(45) NULL,
  PRIMARY KEY (`id_articles`),
  INDEX `key1_idx` (`category_id` ASC),
  CONSTRAINT `key1`
    FOREIGN KEY (`category_id`)
    REFERENCES `youniquemag`.`category` (`id_category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youniquemag`.`positions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youniquemag`.`positions` (
  `id_positions` INT NOT NULL,
  `position` VARCHAR(45) NULL,
  `accessLevel` INT NULL,
  PRIMARY KEY (`id_positions`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `youniquemag`.`employees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `youniquemag`.`employees` (
  `id_emp` VARCHAR(10) NOT NULL,
  `f_name` VARCHAR(45) NULL,
  `l_name` VARCHAR(45) NULL,
  `address_l_1` VARCHAR(45) NULL,
  `address_l2` VARCHAR(45) NULL,
  `address_l3` VARCHAR(45) NULL,
  `post_code` VARCHAR(45) NULL,
  `mobile` VARCHAR(15) NULL,
  `official_email` VARCHAR(45) NULL,
  `personal_email` VARCHAR(45) NULL,
  `position_id` INT NULL,
  `fb_id` VARCHAR(45) NULL,
  `comments` VARCHAR(45) NULL,
  `joining_date` DATETIME NULL,
  PRIMARY KEY (`id_emp`),
  INDEX `key_pos_idx` (`position_id` ASC),
  CONSTRAINT `key_pos`
    FOREIGN KEY (`position_id`)
    REFERENCES `youniquemag`.`positions` (`id_positions`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
