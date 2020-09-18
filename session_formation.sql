-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 17 sep. 2020 à 16:33
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `session_formation`
--

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

CREATE TABLE `candidat` (
  `id_candidat` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `adresse` text NOT NULL,
  `metier` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `prix` double NOT NULL,
  `programme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `titre`, `description`, `prix`, `programme`) VALUES
(1, 'Java', 'Java E.E', 1400, 'aucun'),
(2, 'BD', 'Java JDBC et SGBD MYSQL', 1200, 'aucun');

-- --------------------------------------------------------

--
-- Structure de la table `participation`
--

CREATE TABLE `participation` (
  `id` int(11) NOT NULL,
  `id_candidat` int(11) NOT NULL,
  `id_formation` int(11) NOT NULL,
  `debut` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`id_candidat`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `participation`
--
ALTER TABLE `participation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_candidat` (`id_candidat`),
  ADD KEY `id_formation` (`id_formation`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `candidat`
--
ALTER TABLE `candidat`
  MODIFY `id_candidat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `participation`
--
ALTER TABLE `participation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `participation`
--
ALTER TABLE `participation`
  ADD CONSTRAINT `participation_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `candidat` (`id_candidat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participation_ibfk_2` FOREIGN KEY (`id_formation`) REFERENCES `formation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
