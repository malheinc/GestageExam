-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 12 Novembre 2013 à 21:55
-- Version du serveur: 5.5.34-0ubuntu0.13.04.1
-- Version de PHP: 5.4.9-4ubuntu2.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Gestage`
--

-- --------------------------------------------------------

--
-- Structure de la table `ANNEESCOL`
--

CREATE TABLE IF NOT EXISTS `ANNEESCOL` (
  `ANNEESCOL` int(11) NOT NULL,
  PRIMARY KEY (`ANNEESCOL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ANNEESCOL`
--

INSERT INTO `ANNEESCOL` (`ANNEESCOL`) VALUES
(2008),
(2009),
(2010),
(2011),
(2012);

-- --------------------------------------------------------

--
-- Structure de la table `CLASSE`
--

CREATE TABLE IF NOT EXISTS `CLASSE` (
  `NUMCLASSE` char(32) NOT NULL,
  `IDSPECIALITE` smallint(6) DEFAULT NULL,
  `NUMFILIERE` int(11) NOT NULL,
  `NOMCLASSE` varchar(128) NOT NULL,
  PRIMARY KEY (`NUMCLASSE`),
  KEY `CLASSE_ibfk_1` (`IDSPECIALITE`),
  KEY `CLASSE_ibfk_2` (`NUMFILIERE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CLASSE`
--

INSERT INTO `CLASSE` (`NUMCLASSE`, `IDSPECIALITE`, `NUMFILIERE`, `NOMCLASSE`) VALUES
('1SIOA', NULL, 4, 'Premiere annee SIOA'),
('1SIOB', NULL, 4, 'Premiere annee SIOB'),
('2SISR', 2, 4, 'Deuxieme annee SIO'),
('2SLAM', 1, 4, 'Deuxieme annee SIO');

-- --------------------------------------------------------

--
-- Structure de la table `CONTACT_ORGANISATION`
--

CREATE TABLE IF NOT EXISTS `CONTACT_ORGANISATION` (
  `IDORGANISATION` int(11) NOT NULL,
  `IDCONTACT` int(11) NOT NULL,
  `FONCTION` varchar(128) DEFAULT 'NULL',
  PRIMARY KEY (`IDORGANISATION`,`IDCONTACT`),
  KEY `CONTACT_ORGANISATION_ibfk_1` (`IDCONTACT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `CONTACT_ORGANISATION`
--

INSERT INTO `CONTACT_ORGANISATION` (`IDORGANISATION`, `IDCONTACT`, `FONCTION`) VALUES
(1, 15, '5'),
(1, 16, '5');

-- --------------------------------------------------------

--
-- Structure de la table `FILIERE`
--

CREATE TABLE IF NOT EXISTS `FILIERE` (
  `NUMFILIERE` int(11) NOT NULL,
  `LIBELLEFILIERE` varchar(128) NOT NULL,
  PRIMARY KEY (`NUMFILIERE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `FILIERE`
--

INSERT INTO `FILIERE` (`NUMFILIERE`, `LIBELLEFILIERE`) VALUES
(1, 'Management des Unités Commerciales'),
(2, 'Comptabilité et Gestion des Organisations'),
(3, 'Informatique de Gestion'),
(4, 'Services Informatiques aux Organisations'),
(5, 'Diplôme de Comptabilité et de Gestion'),
(6, 'Formation Complémentaire d''Initiative Locale');

-- --------------------------------------------------------

--
-- Structure de la table `ORGANISATION`
--

CREATE TABLE IF NOT EXISTS `ORGANISATION` (
  `IDORGANISATION` int(11) NOT NULL,
  `NOM_ORGANISATION` varchar(255) NOT NULL,
  `VILLE_ORGANISATION` varchar(128) NOT NULL,
  `ADRESSE_ORGANISATION` varchar(128) NOT NULL,
  `CP_ORGANISATION` char(10) NOT NULL,
  `TEL_ORGANISATION` char(15) NOT NULL,
  `FAX_ORGANISATION` char(15) DEFAULT 'NULL',
  `FORMEJURIDIQUE` varchar(10) NOT NULL,
  `ACTIVITE` varchar(128) DEFAULT 'NULL',
  PRIMARY KEY (`IDORGANISATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ORGANISATION`
--

INSERT INTO `ORGANISATION` (`IDORGANISATION`, `NOM_ORGANISATION`, `VILLE_ORGANISATION`, `ADRESSE_ORGANISATION`, `CP_ORGANISATION`, `TEL_ORGANISATION`, `FAX_ORGANISATION`, `FORMEJURIDIQUE`, `ACTIVITE`) VALUES
(1, 'ECOLES DES MINES', 'NANTES', '4 rue alfred kastler', '44300', '0251858100', '1574893129', 'SA', 'dev'),
(2, 'Info Transit', 'STHERBLAIN', 'rue de la roulette', '48520', '0305040207', '0548789865', 'SArl', 'res');

-- --------------------------------------------------------

--
-- Structure de la table `PERSONNE`
--

CREATE TABLE IF NOT EXISTS `PERSONNE` (
  `IDPERSONNE` int(11) NOT NULL,
  `IDSPECIALITE` smallint(6) DEFAULT NULL,
  `IDROLE` smallint(6) NOT NULL,
  `CIVILITE` char(32) NOT NULL,
  `NOM` varchar(128) NOT NULL,
  `PRENOM` varchar(128) NOT NULL,
  `NUM_TEL` char(15) NOT NULL,
  `ADRESSE_MAIL` varchar(128) NOT NULL,
  `NUM_TEL_MOBILE` char(15) DEFAULT 'NULL',
  `ETUDES` varchar(128) DEFAULT 'NULL',
  `FORMATION` varchar(128) DEFAULT 'NULL',
  `LOGINUTILISATEUR` varchar(128) DEFAULT 'NULL',
  `MDPUTILISATEUR` varchar(128) DEFAULT 'NULL',
  PRIMARY KEY (`IDPERSONNE`),
  KEY `PERSONNE_ibfk_1` (`IDSPECIALITE`),
  KEY `PERSONNE_ibfk_2` (`IDROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `PERSONNE`
--

INSERT INTO `PERSONNE` (`IDPERSONNE`, `IDSPECIALITE`, `IDROLE`, `CIVILITE`, `NOM`, `PRENOM`, `NUM_TEL`, `ADRESSE_MAIL`, `NUM_TEL_MOBILE`, `ETUDES`, `FORMATION`, `LOGINUTILISATEUR`, `MDPUTILISATEUR`) VALUES
(1, NULL, 1, 'Monsieur', 'Admin', 'admin', '1111111111', 'admin@gmail.com', '0000000000', NULL, NULL, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(2, 2, 4, 'Monsieur', 'DEMARLY', 'Thomas', '0600000000', 'tdemarl@gmail.com', '0602020202', '1SIOA', 'NULL', 'tdemarly', 'ff289fa7cd0ed8339f20a43fa5f032d32fedd1d8'),
(3, 1, 4, 'Monsieur', 'PARKER', 'Peter', '0258987859', 'pparker@gmail.com', '0654789587', '1SIOB', '', 'pparker', '56e57b883633f32a6b478c095910840830b47656'),
(10, NULL, 3, 'Monsieur', 'XAVIER', 'Charles', '0547875986', 'cxavier@gmail.com', '0601010101', NULL, NULL, 'cxavier', 'ecdafdf75a9bd66a0f02ebd861077408fef38b68'),
(12, 2, 4, 'Monsieur', 'GRAYSON', 'Dick', '0458789856', 'dgrayson@gmail.com', '0659958478', '2SISR', '', 'dgrayson', 'b205b0dd493c0840464d43bb310c40b1492aaffa'),
(13, 1, 4, 'Monsieur', 'WAYNE', 'Bruce', '0254789856', 'bwayne@gmail.com', '0658987458', '2SLAM', '', 'bwayne', 'cb4c0373f9c9cf764499edd8f875cae6f8948338'),
(14, NULL, 2, 'Madame', 'PRYDE', 'Katherine', '287986545', 'kpryde@gmail.com', '659874532', NULL, NULL, 'kpryde', '48e3be47deeec2fd254428ebfc60c74bdcaf50b6'),
(15, NULL, 5, 'Monsieur', 'KENT', 'Clark', '245874587', 'ckent@gmail.com', '654713245', NULL, NULL, 'ckent', '7be455efa8ebbe3f53616931d30b37b95fbe2254'),
(16, NULL, 5, 'Madame', 'KANE', 'Kate', '287956898', 'kkane@gmail.com', '654789587', NULL, NULL, 'kkane', 'cd40c34e976f30c9e62efcf24e04c516bc3a3b05');

-- --------------------------------------------------------

--
-- Structure de la table `PROMOTION`
--

CREATE TABLE IF NOT EXISTS `PROMOTION` (
  `ANNEESCOL` int(11) NOT NULL,
  `IDPERSONNE` int(11) NOT NULL,
  `NUMCLASSE` char(32) NOT NULL,
  PRIMARY KEY (`ANNEESCOL`,`IDPERSONNE`,`NUMCLASSE`),
  KEY `PROMOTION_ibfk_2` (`IDPERSONNE`),
  KEY `PROMOTION_ibfk_3` (`NUMCLASSE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ROLE`
--

CREATE TABLE IF NOT EXISTS `ROLE` (
  `IDROLE` smallint(6) NOT NULL,
  `RANG` smallint(6) NOT NULL,
  `LIBELLE` varchar(30) NOT NULL,
  PRIMARY KEY (`IDROLE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ROLE`
--

INSERT INTO `ROLE` (`IDROLE`, `RANG`, `LIBELLE`) VALUES
(1, 1, 'Administrateur'),
(2, 2, 'Secrétaire'),
(3, 3, 'Professeur'),
(4, 4, 'Etudiant'),
(5, 5, 'Maître de stage');

-- --------------------------------------------------------

--
-- Structure de la table `SPECIALITE`
--

CREATE TABLE IF NOT EXISTS `SPECIALITE` (
  `IDSPECIALITE` smallint(6) NOT NULL,
  `LIBELLECOURTSPECIALITE` varchar(10) NOT NULL,
  `LIBELLELONGSPECIALITE` varchar(128) NOT NULL,
  PRIMARY KEY (`IDSPECIALITE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `SPECIALITE`
--

INSERT INTO `SPECIALITE` (`IDSPECIALITE`, `LIBELLECOURTSPECIALITE`, `LIBELLELONGSPECIALITE`) VALUES
(1, 'SLAM', 'Solutions logicielles et applications métiers'),
(2, 'SISR', 'Solutions d''infrastructures systèmes et réseaux');

-- --------------------------------------------------------

--
-- Structure de la table `STAGE`
--

CREATE TABLE IF NOT EXISTS `STAGE` (
  `NUM_STAGE` int(11) NOT NULL AUTO_INCREMENT,
  `ANNEESCOL` int(11) NOT NULL,
  `IDETUDIANT` int(11) NOT NULL,
  `IDORGANISATION` int(11) NOT NULL,
  `IDMAITRESTAGE` int(11) NOT NULL,
  `DATEDEBUT` date NOT NULL,
  `DATEFIN` date NOT NULL,
  `DATEVISITESTAGE` date DEFAULT NULL,
  `VILLE` varchar(128) NOT NULL,
  `DIVERS` varchar(128) DEFAULT 'NULL',
  `BILANTRAVAUX` varchar(255) DEFAULT 'NULL',
  `RESSOURCESOUTILS` varchar(255) DEFAULT 'NULL',
  `COMMENTAIRES` varchar(255) DEFAULT 'NULL',
  `PARTICIPATIONCCF` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`NUM_STAGE`),
  KEY `STAGE_ibfk_1` (`IDETUDIANT`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `STAGE`
--

INSERT INTO `STAGE` (`NUM_STAGE`, `ANNEESCOL`, `IDETUDIANT`, `IDORGANISATION`, `IDMAITRESTAGE`, `DATEDEBUT`, `DATEFIN`, `DATEVISITESTAGE`, `VILLE`, `DIVERS`, `BILANTRAVAUX`, `RESSOURCESOUTILS`, `COMMENTAIRES`, `PARTICIPATIONCCF`) VALUES
(6, 0, 13, 1, 12, '2013-02-04', '2013-03-05', '2014-03-04', 'Nantes', 'test', 'test', 'test', 'test', NULL),
(7, 0, 12, 1, 15, '2167-08-31', '2167-08-31', '2167-08-31', 'NANTES', 'test', 'test', 'test', 'test', NULL),
(8, 0, 3, 1, 16, '2167-08-31', '2167-08-31', '2167-08-31', 'NANTES', 'test', 'test', 'test', 'test', NULL),
(9, 0, 2, 1, 15, '2167-08-31', '2167-08-31', '2167-08-31', 'NANTES', 'test', 'test', 'test', 'test', NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `CLASSE`
--
ALTER TABLE `CLASSE`
  ADD CONSTRAINT `CLASSE_ibfk_1` FOREIGN KEY (`IDSPECIALITE`) REFERENCES `SPECIALITE` (`IDSPECIALITE`),
  ADD CONSTRAINT `CLASSE_ibfk_2` FOREIGN KEY (`NUMFILIERE`) REFERENCES `FILIERE` (`NUMFILIERE`);

--
-- Contraintes pour la table `CONTACT_ORGANISATION`
--
ALTER TABLE `CONTACT_ORGANISATION`
  ADD CONSTRAINT `CONTACT_ORGANISATION_ibfk_1` FOREIGN KEY (`IDCONTACT`) REFERENCES `PERSONNE` (`IDPERSONNE`),
  ADD CONSTRAINT `CONTACT_ORGANISATION_ibfk_2` FOREIGN KEY (`IDORGANISATION`) REFERENCES `ORGANISATION` (`IDORGANISATION`);

--
-- Contraintes pour la table `PERSONNE`
--
ALTER TABLE `PERSONNE`
  ADD CONSTRAINT `PERSONNE_ibfk_1` FOREIGN KEY (`IDSPECIALITE`) REFERENCES `SPECIALITE` (`IDSPECIALITE`),
  ADD CONSTRAINT `PERSONNE_ibfk_2` FOREIGN KEY (`IDROLE`) REFERENCES `ROLE` (`IDROLE`);

--
-- Contraintes pour la table `PROMOTION`
--
ALTER TABLE `PROMOTION`
  ADD CONSTRAINT `PROMOTION_ibfk_1` FOREIGN KEY (`ANNEESCOL`) REFERENCES `ANNEESCOL` (`ANNEESCOL`),
  ADD CONSTRAINT `PROMOTION_ibfk_2` FOREIGN KEY (`IDPERSONNE`) REFERENCES `PERSONNE` (`IDPERSONNE`),
  ADD CONSTRAINT `PROMOTION_ibfk_3` FOREIGN KEY (`NUMCLASSE`) REFERENCES `CLASSE` (`NUMCLASSE`);

--
-- Contraintes pour la table `STAGE`
--
ALTER TABLE `STAGE`
  ADD CONSTRAINT `STAGE_ibfk_1` FOREIGN KEY (`IDETUDIANT`) REFERENCES `PERSONNE` (`IDPERSONNE`),
  ADD CONSTRAINT `STAGE_ibfk_3` FOREIGN KEY (`IDMAITRESTAGE`) REFERENCES `PERSONNE` (`IDPERSONNE`),
  ADD CONSTRAINT `STAGE_ibfk_4` FOREIGN KEY (`IDORGANISATION`) REFERENCES `ORGANISATION` (`IDORGANISATION`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
