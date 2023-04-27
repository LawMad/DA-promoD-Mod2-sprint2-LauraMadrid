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
-- Table `mydb`.`Tabla_países`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tabla_países` (
  `idestado` INT NOT NULL,
  `nombre_pais` VARCHAR(45) NULL,
  `nombre_provincia` VARCHAR(45) NULL,
  `latitud` DECIMAL NULL,
  `longitud` DECIMAL NULL,
  PRIMARY KEY (`idestado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tabla_universidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tabla_universidades` (
  `iduniversidades` INT NOT NULL,
  `nombre_universidad` VARCHAR(100) NULL,
  `pagina_web` VARCHAR(100) NULL,
  `paises_idestado` VARCHAR(45) NULL,
  `Tabla_países_idestado` INT NOT NULL,
  PRIMARY KEY (`iduniversidades`),
  INDEX `fk_Tabla_universidades_Tabla_países_idx` (`Tabla_países_idestado` ASC) VISIBLE,
  CONSTRAINT `fk_Tabla_universidades_Tabla_países`
    FOREIGN KEY (`Tabla_países_idestado`)
    REFERENCES `mydb`.`Tabla_países` (`idestado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
