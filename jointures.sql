-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 24 sep. 2021 à 07:46
-- Version du serveur :  5.7.24
-- Version de PHP : 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jointures`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) DEFAULT '0',
  `contenu` text NOT NULL,
  `dateComment` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `userId`, `contenu`, `dateComment`) VALUES
(1, 1, 'Super site, merci !', '2018-05-08 16:29:03'),
(2, 3, 'Bon cours', '2018-05-12 11:29:06'),
(3, 1, 'Ce cours est dur...', '2018-05-19 13:17:38'),
(4, 2, 'On voudrait des frites', '2021-09-01 14:11:17'),
(5, 4, 'Truc machin bidule', '2021-09-19 14:11:39'),
(6, 7, 'Blablablabla !', '2021-09-20 14:11:50'),
(7, 8, 'We\'ll need to have a look inside you with this camera. You can crush me but you can\'t crush my spirit! Oh right. I forgot about the battle. No argument here. And so we say goodbye to our beloved pet, Nibbler, who\'s gone to a place where I, too, hope one day to go. The toilet.', '2021-09-21 14:11:59'),
(8, 1, 'I could if you hadn\'t turned on the light and shut off my stereo. Check it out, y\'all. Everyone who was invited is here. Robot 1-X, save my friends! And Zoidberg! I am Singing Wind, Chief of the Martians.', '2021-09-22 14:12:08');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `prenom`, `nom`, `mail`) VALUES
(1, 'Jean', 'Bond', 'jean.bond@gmail.com'),
(2, 'Victor', 'Durand', 'v.durand@edhec.com'),
(3, 'Julia', 'Joly', 'july@gmail.com'),
(4, 'Bob', 'Leponge', 'bob@eponge.be'),
(6, 'Bernard', 'Arnaud', 'nanard69@youpi.fr'),
(7, 'Sarah', 'Connor', 's.connor@yahoo.com'),
(8, 'René', 'Lataupe', 'r.ltp@mignon.tg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
