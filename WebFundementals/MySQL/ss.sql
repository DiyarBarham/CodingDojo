-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first name` VARCHAR(255) NULL,
  `last name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  `location` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`admins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`admins` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`, `user_id`),
  INDEX `fk_admins_users_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_admins_users`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`blogs`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`blogs` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`blogadmins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`blogadmins` (
  `id` INT ZEROFILL NOT NULL AUTO_INCREMENT,
  `admin_id` INT NOT NULL,
  `blog_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_blogadmins_admins1_idx` (`admin_id` ASC) VISIBLE,
  INDEX `fk_blogadmins_blogs1_idx` (`blog_id` ASC) VISIBLE,
  CONSTRAINT `fk_blogadmins_admins1`
    FOREIGN KEY (`admin_id`)
    REFERENCES `mydb`.`admins` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_blogadmins_blogs1`
    FOREIGN KEY (`blog_id`)
    REFERENCES `mydb`.`blogs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`posts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `content` TEXT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `admin_id` INT NOT NULL,
  `blog_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_posts_admins1_idx` (`admin_id` ASC) VISIBLE,
  INDEX `fk_posts_blogs1_idx` (`blog_id` ASC) VISIBLE,
  CONSTRAINT `fk_posts_admins1`
    FOREIGN KEY (`admin_id`)
    REFERENCES `mydb`.`admins` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_posts_blogs1`
    FOREIGN KEY (`blog_id`)
    REFERENCES `mydb`.`blogs` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `content` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `user_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_comments_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_comments_posts1_idx` (`post_id` ASC) VISIBLE,
  CONSTRAINT `fk_comments_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_comments_posts1`
    FOREIGN KEY (`post_id`)
    REFERENCES `mydb`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`files`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`files` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `file` VARCHAR(255) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `admin_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_files_admins1_idx` (`admin_id` ASC) VISIBLE,
  CONSTRAINT `fk_files_admins1`
    FOREIGN KEY (`admin_id`)
    REFERENCES `mydb`.`admins` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`fileposts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fileposts` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `file_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_fileposts_files1_idx` (`file_id` ASC) VISIBLE,
  INDEX `fk_fileposts_posts1_idx` (`post_id` ASC) VISIBLE,
  CONSTRAINT `fk_fileposts_files1`
    FOREIGN KEY (`file_id`)
    REFERENCES `mydb`.`files` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_fileposts_posts1`
    FOREIGN KEY (`post_id`)
    REFERENCES `mydb`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`post_views`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`post_views` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `viewtime` DECIMAL NULL,
  `ip_address` VARCHAR(45) NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `user_id` INT NOT NULL,
  `post_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_post_views_users1_idx` (`user_id` ASC) VISIBLE,
  INDEX `fk_post_views_posts1_idx` (`post_id` ASC) VISIBLE,
  CONSTRAINT `fk_post_views_users1`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_post_views_posts1`
    FOREIGN KEY (`post_id`)
    REFERENCES `mydb`.`posts` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
