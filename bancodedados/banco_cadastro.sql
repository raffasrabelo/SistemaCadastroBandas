CREATE DATABASE IF NOT EXISTS banco_cadastro;
USE banco_cadastro;


CREATE TABLE `generos` (
  `idgenero` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `bandas` (
  `idbandas` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `integrantes` int DEFAULT NULL,
  `ranking` int DEFAULT NULL,
  `fk_genero` int DEFAULT NULL,
  PRIMARY KEY (`idbandas`),
  KEY `genero_idx` (`fk_genero`),
  CONSTRAINT `genero` FOREIGN KEY (`fk_genero`) REFERENCES `generos` (`idgenero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `generos` VALUES (1,'Rock'),(2,'Metal'),(3,'Pagode'),(4,'Gospel'),(5,'Funk');