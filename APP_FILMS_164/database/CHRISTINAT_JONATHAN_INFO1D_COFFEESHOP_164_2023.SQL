-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------
-- Destruction de la BD si elle existe.
  -- Pour être certain d'avoir la dernière version des données
  DROP DATABASE IF EXISTS CHRISTINAT_JONATHAN_INFO1D_COFFEESHOP_164_2023;
  -- Création d'une nouvelle base de données
  CREATE DATABASE IF NOT EXISTS CHRISTINAT_JONATHAN_INFO1D_COFFEESHOP_164_2023;
  -- Utilisation de cette base de données
  USE CHRISTINAT_JONATHAN_INFO1D_COFFEESHOP_164_2023;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage de la structure de table christinat_jonathan_info1d_coffeeshop_164_2023. t_adresse
CREATE TABLE IF NOT EXISTS `t_adresse` (
  `id_adresse` int NOT NULL AUTO_INCREMENT,
  `Nom_de_rue_adresse` varchar(100) DEFAULT NULL,
  `numero_de_rue_adresse` int DEFAULT NULL,
  `ville_adresse` varchar(50) DEFAULT NULL,
  `canton_adresse` varchar(50) DEFAULT NULL,
  `npa_adresse` int DEFAULT NULL,
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table christinat_jonathan_info1d_coffeeshop_164_2023.t_adresse : ~5 rows (environ)
INSERT INTO `t_adresse` (`id_adresse`, `Nom_de_rue_adresse`, `numero_de_rue_adresse`, `ville_adresse`, `canton_adresse`, `npa_adresse`) VALUES
	(1, 'rue cojonnex', 9, 'Lausanne', 'Vaud', 2500),
	(2, 'route des artichaud', 9, 'Lausanne', 'Vaud', 1000),
	(3, 'rue des balances', 58, 'Liopu', 'Fribourg', 6012),
	(4, 'Route des manches perudes', 5, 'Marty', 'Valais', 5623),
	(5, 'Route des pains ', 14, 'Porlit', 'Geneve', 1256);

-- Listage de la structure de table christinat_jonathan_info1d_coffeeshop_164_2023. t_email
CREATE TABLE IF NOT EXISTS `t_email` (
  `id_email` int NOT NULL AUTO_INCREMENT,
  `adresse_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table christinat_jonathan_info1d_coffeeshop_164_2023.t_email : ~5 rows (environ)
INSERT INTO `t_email` (`id_email`, `adresse_email`) VALUES
	(1, 'jc@gmail.com'),
	(2, 'groscon@gmail.com'),
	(3, 'jG@hotmail.com'),
	(4, 'ann@outlook.com'),
	(5, 'carcarline@yahoo.com');

-- Listage de la structure de table christinat_jonathan_info1d_coffeeshop_164_2023. t_pays
CREATE TABLE IF NOT EXISTS `t_pays` (
  `ID_pays` int NOT NULL AUTO_INCREMENT,
  `nom_pays` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_pays`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table christinat_jonathan_info1d_coffeeshop_164_2023.t_pays : ~0 rows (environ)
INSERT INTO `t_pays` (`ID_pays`, `nom_pays`) VALUES
	(1, 'France'),
	(2, 'Suisse'),
	(3, 'Portugal'),
	(4, 'Mexique'),
	(5, 'Bresil');

-- Listage de la structure de table christinat_jonathan_info1d_coffeeshop_164_2023. t_pays_localise_dans_adresse
CREATE TABLE IF NOT EXISTS `t_pays_localise_dans_adresse` (
  `ID_pays_localise_dans_adresse` int NOT NULL AUTO_INCREMENT,
  `FK_pays` int DEFAULT NULL,
  `FK_adresse` int DEFAULT NULL,
  PRIMARY KEY (`ID_pays_localise_dans_adresse`),
  KEY `FK_t_pays_localise_dans_adresse_adresse` (`FK_adresse`),
  KEY `FK_t_pays_localise_dans_adresse_t_pays` (`FK_pays`),
  CONSTRAINT `FK_t_pays_localise_dans_adresse_adresse` FOREIGN KEY (`FK_adresse`) REFERENCES `t_adresse` (`id_adresse`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t_pays_localise_dans_adresse_t_pays` FOREIGN KEY (`FK_pays`) REFERENCES `t_pays` (`ID_pays`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table christinat_jonathan_info1d_coffeeshop_164_2023.t_pays_localise_dans_adresse : ~0 rows (environ)

-- Listage de la structure de table christinat_jonathan_info1d_coffeeshop_164_2023. t_personne
CREATE TABLE IF NOT EXISTS `t_personne` (
  `id_personne` int NOT NULL AUTO_INCREMENT,
  `nom_personne` varchar(50) DEFAULT NULL,
  `prenom_personne` varchar(50) DEFAULT NULL,
  `date_de_naissance_personne` date DEFAULT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table christinat_jonathan_info1d_coffeeshop_164_2023.t_personne : ~0 rows (environ)
INSERT INTO `t_personne` (`id_personne`, `nom_personne`, `prenom_personne`, `date_de_naissance_personne`) VALUES
	(1, 'Christinat', 'Jonathan', '1996-09-27'),
	(2, 'Raphael ', 'Mendes', '1998-01-12'),
	(3, 'Gabio', 'Jonathan', '1987-05-10'),
	(4, 'Caroline', 'Abdela', '1965-10-25'),
	(5, 'Annie', 'Annie', '1950-01-01');

-- Listage de la structure de table christinat_jonathan_info1d_coffeeshop_164_2023. t_personne_avoir_email
CREATE TABLE IF NOT EXISTS `t_personne_avoir_email` (
  `ID_personne_avoir_mail` int NOT NULL AUTO_INCREMENT,
  `FK_personne` int DEFAULT NULL,
  `FK_email` int DEFAULT NULL,
  PRIMARY KEY (`ID_personne_avoir_mail`),
  KEY `FK_personne_avoir_mail_mail` (`FK_email`) USING BTREE,
  KEY `FK_personne_avoir_email_personne` (`FK_personne`),
  CONSTRAINT `FK_personne_avoir_email_mail` FOREIGN KEY (`FK_email`) REFERENCES `t_email` (`id_email`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_personne_avoir_email_personne` FOREIGN KEY (`FK_personne`) REFERENCES `t_personne` (`id_personne`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table christinat_jonathan_info1d_coffeeshop_164_2023.t_personne_avoir_email : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
