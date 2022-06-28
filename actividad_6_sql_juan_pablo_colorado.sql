-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para los_animales
DROP DATABASE IF EXISTS `los_animales`;
CREATE DATABASE IF NOT EXISTS `los_animales` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `los_animales`;

-- Volcando estructura para tabla los_animales.condition_confirmation
DROP TABLE IF EXISTS `condition_confirmation`;
CREATE TABLE IF NOT EXISTS `condition_confirmation` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cond_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.condition_confirmation: ~3 rows (aproximadamente)
DELETE FROM `condition_confirmation`;
INSERT INTO `condition_confirmation` (`id`, `cond_name`) VALUES
	(1, 'extinto'),
	(2, 'bajo riesgo'),
	(3, 'amenazado');

-- Volcando estructura para tabla los_animales.displacement_shapes
DROP TABLE IF EXISTS `displacement_shapes`;
CREATE TABLE IF NOT EXISTS `displacement_shapes` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `displ_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.displacement_shapes: ~4 rows (aproximadamente)
DELETE FROM `displacement_shapes`;
INSERT INTO `displacement_shapes` (`id`, `displ_name`) VALUES
	(1, 'rastrero'),
	(2, 'bipedo'),
	(3, 'cuadrupedo'),
	(4, 'acuatico');

-- Volcando estructura para tabla los_animales.embryo_developments
DROP TABLE IF EXISTS `embryo_developments`;
CREATE TABLE IF NOT EXISTS `embryo_developments` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `embr_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.embryo_developments: ~3 rows (aproximadamente)
DELETE FROM `embryo_developments`;
INSERT INTO `embryo_developments` (`id`, `embr_name`) VALUES
	(1, 'ovoviviparos'),
	(2, 'oviparos'),
	(3, 'viviparos');

-- Volcando estructura para tabla los_animales.habitats
DROP TABLE IF EXISTS `habitats`;
CREATE TABLE IF NOT EXISTS `habitats` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `hb_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats: ~3 rows (aproximadamente)
DELETE FROM `habitats`;
INSERT INTO `habitats` (`id`, `hb_name`) VALUES
	(1, 'mar'),
	(2, 'tierra'),
	(3, 'aire');

-- Volcando estructura para tabla los_animales.habitats_animals_species
DROP TABLE IF EXISTS `habitats_animals_species`;
CREATE TABLE IF NOT EXISTS `habitats_animals_species` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `animal_species_id` smallint(5) unsigned NOT NULL,
  `habitats_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.habitats_animals_species: ~17 rows (aproximadamente)
DELETE FROM `habitats_animals_species`;
INSERT INTO `habitats_animals_species` (`id`, `animal_species_id`, `habitats_id`) VALUES
	(1, 1, 1),
	(2, 2, 3),
	(3, 3, 2),
	(4, 4, 2),
	(5, 5, 2),
	(6, 6, 1),
	(7, 7, 2),
	(8, 8, 2),
	(9, 9, 2),
	(10, 10, 2),
	(11, 11, 2),
	(12, 12, 3),
	(13, 13, 3),
	(14, 14, 3),
	(15, 15, 2),
	(16, 16, 2),
	(17, 17, 2),
	(18, 18, 2),
	(19, 19, 2),
	(20, 20, 1);

-- Volcando estructura para tabla los_animales.power_supply_type
DROP TABLE IF EXISTS `power_supply_type`;
CREATE TABLE IF NOT EXISTS `power_supply_type` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pw_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.power_supply_type: ~3 rows (aproximadamente)
DELETE FROM `power_supply_type`;
INSERT INTO `power_supply_type` (`id`, `pw_name`) VALUES
	(1, 'carnivoro'),
	(2, 'herbivoro'),
	(3, 'omnivoro'),
	(4, 'frugivero');

-- Volcando estructura para tabla los_animales.species_of_animals
DROP TABLE IF EXISTS `species_of_animals`;
CREATE TABLE IF NOT EXISTS `species_of_animals` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `animal_name` varchar(50) NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT 0,
  `supply_type_id` smallint(5) unsigned NOT NULL,
  `condition_confirmation_id` smallint(5) unsigned NOT NULL,
  `develop_embryo_id` smallint(5) unsigned NOT NULL,
  `displacement_id` smallint(5) unsigned NOT NULL,
  `specie_type_id` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.species_of_animals: ~20 rows (aproximadamente)
DELETE FROM `species_of_animals`;
INSERT INTO `species_of_animals` (`id`, `animal_name`, `amount`, `supply_type_id`, `condition_confirmation_id`, `develop_embryo_id`, `displacement_id`, `specie_type_id`) VALUES
	(1, 'leon', 32000, 1, 3, 2, 3, 1),
	(2, 'girafa', 80000, 2, 3, 3, 3, 1),
	(3, 'brontosaurio', 0, 2, 1, 2, 3, 3),
	(4, 'pato', 230000, 3, 3, 2, 2, 4),
	(5, 'elefante', 500000, 2, 3, 3, 3, 1),
	(6, 'cocodrilo', 240000000, 1, 2, 2, 3, 3),
	(7, 'hipopotamo', 40000, 2, 3, 3, 3, 1),
	(8, 'canguro', 50000000, 2, 3, 3, 2, 1),
	(9, 'leon', 100000, 1, 2, 3, 3, 1),
	(10, 'pantera', 6500, 1, 3, 3, 3, 1),
	(11, 'flamenco', 4000000, 2, 2, 2, 2, 4),
	(12, 'cerdo', 35000000, 3, 2, 3, 3, 1),
	(13, 'estornino', 1300000000, 4, 2, 2, 2, 4),
	(14, 'golondrina', 1100000000, 4, 2, 2, 2, 4),
	(15, 'oso', 33000, 1, 3, 3, 3, 1),
	(16, 'salamandra', 8000, 3, 2, 1, 3, 2),
	(17, 'sapo', 4780, 3, 2, 2, 3, 2),
	(18, 'iguana', 40000, 2, 3, 3, 3, 3),
	(19, 'ballena', 60000, 3, 1, 3, 4, 2),
	(20, 'murcielago', 1100, 1, 3, 2, 2, 1);

-- Volcando estructura para tabla los_animales.species_types
DROP TABLE IF EXISTS `species_types`;
CREATE TABLE IF NOT EXISTS `species_types` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typ_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla los_animales.species_types: ~5 rows (aproximadamente)
DELETE FROM `species_types`;
INSERT INTO `species_types` (`id`, `typ_name`) VALUES
	(1, 'mamifero'),
	(2, 'anfibio'),
	(3, 'reptiles'),
	(4, 'aves'),
	(5, 'peces');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
