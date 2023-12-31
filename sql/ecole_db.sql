-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 20 nov. 2023 à 05:13
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecole_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `admition`
--

CREATE TABLE `admition` (
  `candidat_id` int(11) NOT NULL,
  `programme_id` int(11) NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `condidat`
--

CREATE TABLE `condidat` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `date_naissance` date DEFAULT NULL,
  `email` varchar(75) NOT NULL,
  `adresse` varchar(145) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `condidat`
--

INSERT INTO `condidat` (`id`, `nom`, `prenom`, `date_naissance`, `email`, `adresse`) VALUES
(58, 'Doe', 'John', '1990-05-15', 'john.doe@example.com', '123 Main St'),
(59, 'Smith', 'Jane', '1988-08-22', 'jane.smith@example.com', '456 Elm St'),
(60, 'Johnson', 'Robert', '1995-03-10', 'robert.johnson@example.com', '789 Oak St'),
(61, 'Brown', 'Emily', '1992-11-27', 'emily.brown@example.com', '101 Pine St'),
(62, 'Williams', 'Michael', '1987-06-14', 'michael.williams@example.com', '222 Birch St'),
(63, 'Lee', 'Sarah', '1991-04-03', 'sarah.lee@example.com', '333 Cedar St'),
(64, 'Garcia', 'David', '1993-09-30', 'david.garcia@example.com', '444 Maple St'),
(65, 'Martinez', 'Linda', '1989-12-18', 'linda.martinez@example.com', '555 Spruce St'),
(66, 'Rodriguez', 'William', '1994-07-05', 'william.rodriguez@example.com', '666 Redwood St'),
(67, 'Thomas', 'Olivia', '1997-01-12', 'olivia.thomas@example.com', '777 Sequoia St');

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `adresse_IP` varchar(15) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `guest` varchar(255) DEFAULT NULL,
  `pages_visitees` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `log`
--

INSERT INTO `log` (`id`, `adresse_IP`, `date`, `nom`, `guest`, `pages_visitees`) VALUES
(42, '::1', '2023-11-19 22:53:00', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(43, '::1', '2023-11-19 22:54:10', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(44, '::1', '2023-11-19 22:58:12', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(45, '::1', '2023-11-19 22:58:33', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(46, '::1', '2023-11-19 22:58:46', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(47, '::1', '2023-11-19 22:59:00', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(48, '::1', '2023-11-19 22:59:07', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(49, '::1', '2023-11-19 22:59:32', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(50, '::1', '2023-11-19 23:01:43', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(51, '::1', '2023-11-19 23:03:15', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_CACHE_CONTROL, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(52, '::1', '2023-11-19 23:03:23', 'a@a.com', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(53, '::1', '2023-11-20 01:43:32', NULL, 'guest', 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(54, '::1', '2023-11-20 01:44:22', 'a2395393', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME'),
(55, '::1', '2023-11-20 01:54:06', 'a2395393', NULL, 'REDIRECT_MIBDIRS, REDIRECT_MYSQL_HOME, REDIRECT_OPENSSL_CONF, REDIRECT_PHP_PEAR_SYSCONF_DIR, REDIRECT_PHPRC, REDIRECT_TMP, REDIRECT_STATUS, MIBDIRS, MYSQL_HOME, OPENSSL_CONF, PHP_PEAR_SYSCONF_DIR, PHPRC, TMP, HTTP_HOST, HTTP_CONNECTION, HTTP_SEC_CH_UA, HTTP_SEC_CH_UA_MOBILE, HTTP_SEC_CH_UA_PLATFORM, HTTP_UPGRADE_INSECURE_REQUESTS, HTTP_USER_AGENT, HTTP_ACCEPT, HTTP_SEC_FETCH_SITE, HTTP_SEC_FETCH_MODE, HTTP_SEC_FETCH_USER, HTTP_SEC_FETCH_DEST, HTTP_REFERER, HTTP_ACCEPT_ENCODING, HTTP_ACCEPT_LANGUAGE, HTTP_COOKIE, PATH, SystemRoot, COMSPEC, PATHEXT, WINDIR, SERVER_SIGNATURE, SERVER_SOFTWARE, SERVER_NAME, SERVER_ADDR, SERVER_PORT, REMOTE_ADDR, DOCUMENT_ROOT, REQUEST_SCHEME, CONTEXT_PREFIX, CONTEXT_DOCUMENT_ROOT, SERVER_ADMIN, SCRIPT_FILENAME, REMOTE_PORT, REDIRECT_URL, REDIRECT_QUERY_STRING, GATEWAY_INTERFACE, SERVER_PROTOCOL, REQUEST_METHOD, QUERY_STRING, REQUEST_URI, SCRIPT_NAME, PHP_SELF, REQUEST_TIME_FLOAT, REQUEST_TIME');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `matiere_de_programme`
--

CREATE TABLE `matiere_de_programme` (
  `programme_id` int(11) NOT NULL,
  `matiere_id` int(11) NOT NULL,
  `session` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `privilege` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `privilege`
--

INSERT INTO `privilege` (`id`, `privilege`) VALUES
(1, 'administrateur'),
(2, 'etudiant');

-- --------------------------------------------------------

--
-- Structure de la table `programme`
--

CREATE TABLE `programme` (
  `id` int(11) NOT NULL,
  `nom_programme` varchar(45) NOT NULL,
  `description` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `programme`
--

INSERT INTO `programme` (`id`, `nom_programme`, `description`) VALUES
(15, 'Développement Web Full Stack', 'Conception d\'applications web front-end et back-end.'),
(16, 'Science des Données', 'Analyse de données et apprentissage automatique.'),
(17, 'Sécurité Informatique', 'Protection des systèmes contre les menaces.'),
(18, 'Intelligence Artificielle', 'Conception de systèmes d\'intelligence artificielle.'),
(19, 'Développement d\'Applications Mobiles', 'Création d\'apps pour iOS et Android.'),
(20, 'Réseaux et Infrastructure Informatique', 'Conception et gestion des infrastructures réseau.'),
(21, 'Développement de Jeux Vidéo', 'Création de jeux vidéo interactifs.');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `tempPassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `privilege_id`, `tempPassword`) VALUES
(4, 'a2395393', '$2y$10$if0iHBE7H3zbGlu.FsIgGuWi.cOweYMfKuObE9dVC7x2038Bfr05K', 1, NULL),
(5, 'e2395393', '$2y$10$e7sN5VFlH5DmYJvbP91gN.d9Grv52m.2NmGE1X1ClvyhuG9M718TK', 2, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admition`
--
ALTER TABLE `admition`
  ADD PRIMARY KEY (`candidat_id`,`programme_id`),
  ADD KEY `fk_candidat_has_programme_programme1_idx` (`programme_id`),
  ADD KEY `fk_candidat_has_programme_candidat1_idx` (`candidat_id`);

--
-- Index pour la table `condidat`
--
ALTER TABLE `condidat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `matiere_de_programme`
--
ALTER TABLE `matiere_de_programme`
  ADD PRIMARY KEY (`programme_id`,`matiere_id`),
  ADD KEY `fk_programme_has_matiere_matiere1_idx` (`matiere_id`),
  ADD KEY `fk_programme_has_matiere_programme1_idx` (`programme_id`);

--
-- Index pour la table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `programme`
--
ALTER TABLE `programme`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD KEY `fk_user_privilege1_idx` (`privilege_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `condidat`
--
ALTER TABLE `condidat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `programme`
--
ALTER TABLE `programme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admition`
--
ALTER TABLE `admition`
  ADD CONSTRAINT `fk_candidat_has_programme_candidat1` FOREIGN KEY (`candidat_id`) REFERENCES `condidat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_candidat_has_programme_programme1` FOREIGN KEY (`programme_id`) REFERENCES `programme` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `matiere_de_programme`
--
ALTER TABLE `matiere_de_programme`
  ADD CONSTRAINT `fk_programme_has_matiere_matiere1` FOREIGN KEY (`matiere_id`) REFERENCES `matiere` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_programme_has_matiere_programme1` FOREIGN KEY (`programme_id`) REFERENCES `programme` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_privilege1` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
