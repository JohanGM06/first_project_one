/**DROP DATABASE db_first_project;**/
-- -----------------------------------------------------
-- Estructura db_first_project
-- -----------------------------------------------------
CREATE DATABASE db_first_project DEFAULT CHARACTER SET utf8 ;
USE db_first_project;

-- -----------------------------------------------------
-- Tabla ROLES
-- -----------------------------------------------------
CREATE TABLE ROLES (
  rol_code INT(11) NOT NULL AUTO_INCREMENT,
  rol_name VARCHAR(45) NOT NULL,
  PRIMARY KEY (rol_code)
) ENGINE = InnoDB;

-- -----------------------------------------------------
-- Tabla Usuarios
-- -----------------------------------------------------
CREATE TABLE USERS (
  rol_code INT(11) NOT NULL,
  user_code INT(11) NOT NULL,
  user_name VARCHAR(45) NOT NULL DEFAULT,
  user_lastname VARCHAR(45) NOT NULL,
  user_email VARCHAR(45) NOT NULL,
  user_pass VARCHAR(200) NOT NULL,
  user_status TINYINT(4) NOT NULL,
  PRIMARY KEY (user_code),
  INDEX ind_users_roles (rol_code ASC),
  CONSTRAINT fk_users_roles
    FOREIGN KEY (rol_code)
    REFERENCES ROLES (rol_code)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;