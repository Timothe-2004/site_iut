-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 mai 2024 à 17:31
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
-- Base de données : `iut`
--

-- --------------------------------------------------------

--
-- Structure de la table `alumni`
--

CREATE TABLE `alumni` (
  `IdAlu` int(11) NOT NULL,
  `ImgAlu` text NOT NULL,
  `FilAlu` varchar(70) NOT NULL,
  `PromAlu` int(11) NOT NULL,
  `SexAlu` varchar(10) NOT NULL,
  `MailAlu` varchar(60) NOT NULL,
  `NomAlu` varchar(40) NOT NULL,
  `PreAlu` varchar(60) NOT NULL,
  `DescAlu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `alumni`
--

INSERT INTO `alumni` (`IdAlu`, `ImgAlu`, `FilAlu`, `PromAlu`, `SexAlu`, `MailAlu`, `NomAlu`, `PreAlu`, `DescAlu`) VALUES
(3, 'alumni/tgoussou2004@gmail.com.jpg', 'GB', 2004, 'F', 'tgoussou2004@gmail.com', 'James', 'Timothé', 'Développeur'),
(4, 'alumni/timothejames2004@gmail.com.jpg', 'GTL', 2002, 'H', 'timothejames2004@gmail.com', 'GOUSSOU', 'Timothé', 'Commercant'),
(5, 'alumni/jamestimothe@gmail.com.jpg', 'Informatique de Gestion', 2008, 'H', 'jamestimothe@gmail.com', 'GBAGUIDI', 'Amance', 'Social Media Designer'),
(6, 'alumni/jamestimothe@gmail.com.png', 'Informatique de Gestion', 2020, 'H', 'jamestimothe@gmail.com', 'GBAGUIDI', 'Amance', 'Dévééloppeur'),
(7, 'alumni/roland@gmail.com.jpg', 'GTL', 2000, 'H', 'roland@gmail.com', 'GOUSSOU', 'Roland', 'Trader');

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE `document` (
  `IdDoc` int(11) NOT NULL,
  `TitreDoc` varchar(255) NOT NULL,
  `NomDoc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `document`
--

INSERT INTO `document` (`IdDoc`, `TitreDoc`, `NomDoc`) VALUES
(1, 'Résultas IUT', 'metiers.pdf'),
(2, 'resul', 'metiers.pdf'),
(3, 'Résultat UP', '2006-11-22.Etude-OPIIEC.developpeur_informatique_opiiec.pdf'),
(4, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `IdNews` int(11) NOT NULL,
  `TitreNews` varchar(255) NOT NULL,
  `TexteNews` text NOT NULL,
  `ImgNews` text NOT NULL,
  `DateNews` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`IdNews`, `TitreNews`, `TexteNews`, `ImgNews`, `DateNews`) VALUES
(1, 'Les fetes de fin d\'annnée', 'Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  ', 'image/capture d’écran 2022-11-29 110841.png', '2024-05-21 17:00:26'),
(2, 'noel', '<?php\r\ntry {\r\n    $bdd = new PDO(\'mysql:host=localhost;dbname=iut\', \'root\', \'\');\r\n} catch (Exception $e) {\r\n    die(\'Erreur: \' . $e->getMessage());\r\n}\r\n\r\nif ($_SERVER[\"REQUEST_METHOD\"] == \"POST\" && isset($_FILES[\'image\']) && ($_FILES[\'image\'][\'error\']) == 0) {\r\n    if ($_FILES[\'image\'][\'size\'] <= 10485760) {\r\n        $infosfichier = pathinfo($_FILES[\'image\'][\'name\']);\r\n        $extension_upload = $infosfichier[\'extension\'];\r\n        $extension_autorisees = array(\'jpg\', \'jpeg\', \'png\');\r\n\r\n        if (in_array($extension_upload, $extension_autorisees)) {\r\n            $filename = \"image/\" . strtolower(pathinfo($_FILES[\'image\'][\'name\'], PATHINFO_FILENAME)) . \".\" . $extension_upload;\r\n            move_uploaded_file($_FILES[\'image\'][\'tmp_name\'], $filename);\r\n\r\n            $donnees = $bdd->prepare(\'INSERT INTO news (TitreNews, TexteNews, ImgNews, DateNews) VALUES (?, ?, ?, now())\');\r\n            $donnees->execute(array($_POST[\'titre\'], $_POST[\'contenu\'], $filename));\r\n\r\n            header(\'Location: blog_ajouter.php\');\r\n            exit();\r\n        } else {\r\n            echo \"Extension de fichier non autorisée.\";\r\n        }\r\n    } else {\r\n        echo \"La taille du fichier est trop grande.\";\r\n    }\r\n} else {\r\n    echo \"Veuillez remplir tous les champs et choisir une image.\";\r\n}\r\n?>\r\n<?php\r\ntry {\r\n    $bdd = new PDO(\'mysql:host=localhost;dbname=iut\', \'root\', \'\');\r\n} catch (Exception $e) {\r\n    die(\'Erreur: \' . $e->getMessage());\r\n}\r\n\r\nif ($_SERVER[\"REQUEST_METHOD\"] == \"POST\" && isset($_FILES[\'image\']) && ($_FILES[\'image\'][\'error\']) == 0) {\r\n    if ($_FILES[\'image\'][\'size\'] <= 10485760) {\r\n        $infosfichier = pathinfo($_FILES[\'image\'][\'name\']);\r\n        $extension_upload = $infosfichier[\'extension\'];\r\n        $extension_autorisees = array(\'jpg\', \'jpeg\', \'png\');\r\n\r\n        if (in_array($extension_upload, $extension_autorisees)) {\r\n            $filename = \"image/\" . strtolower(pathinfo($_FILES[\'image\'][\'name\'], PATHINFO_FILENAME)) . \".\" . $extension_upload;\r\n            move_uploaded_file($_FILES[\'image\'][\'tmp_name\'], $filename);\r\n\r\n            $donnees = $bdd->prepare(\'INSERT INTO news (TitreNews, TexteNews, ImgNews, DateNews) VALUES (?, ?, ?, now())\');\r\n            $donnees->execute(array($_POST[\'titre\'], $_POST[\'contenu\'], $filename));\r\n\r\n            header(\'Location: blog_ajouter.php\');\r\n            exit();\r\n        } else {\r\n            echo \"Extension de fichier non autorisée.\";\r\n        }\r\n    } else {\r\n        echo \"La taille du fichier est trop grande.\";\r\n    }\r\n} else {\r\n    echo \"Veuillez remplir tous les champs et choisir une image.\";\r\n}\r\n?>\r\n<?php\r\ntry {\r\n    $bdd = new PDO(\'mysql:host=localhost;dbname=iut\', \'root\', \'\');\r\n} catch (Exception $e) {\r\n    die(\'Erreur: \' . $e->getMessage());\r\n}\r\n\r\nif ($_SERVER[\"REQUEST_METHOD\"] == \"POST\" && isset($_FILES[\'image\']) && ($_FILES[\'image\'][\'error\']) == 0) {\r\n    if ($_FILES[\'image\'][\'size\'] <= 10485760) {\r\n        $infosfichier = pathinfo($_FILES[\'image\'][\'name\']);\r\n        $extension_upload = $infosfichier[\'extension\'];\r\n        $extension_autorisees = array(\'jpg\', \'jpeg\', \'png\');\r\n\r\n        if (in_array($extension_upload, $extension_autorisees)) {\r\n            $filename = \"image/\" . strtolower(pathinfo($_FILES[\'image\'][\'name\'], PATHINFO_FILENAME)) . \".\" . $extension_upload;\r\n            move_uploaded_file($_FILES[\'image\'][\'tmp_name\'], $filename);\r\n\r\n            $donnees = $bdd->prepare(\'INSERT INTO news (TitreNews, TexteNews, ImgNews, DateNews) VALUES (?, ?, ?, now())\');\r\n            $donnees->execute(array($_POST[\'titre\'], $_POST[\'contenu\'], $filename));\r\n\r\n            header(\'Location: blog_ajouter.php\');\r\n            exit();\r\n        } else {\r\n            echo \"Extension de fichier non autorisée.\";\r\n        }\r\n    } else {\r\n        echo \"La taille du fichier est trop grande.\";\r\n    }\r\n} else {\r\n    echo \"Veuillez remplir tous les champs et choisir une image.\";\r\n}\r\n?>\r\n<?php\r\ntry {\r\n    $bdd = new PDO(\'mysql:host=localhost;dbname=iut\', \'root\', \'\');\r\n} catch (Exception $e) {\r\n    die(\'Erreur: \' . $e->getMessage());\r\n}\r\n\r\nif ($_SERVER[\"REQUEST_METHOD\"] == \"POST\" && isset($_FILES[\'image\']) && ($_FILES[\'image\'][\'error\']) == 0) {\r\n    if ($_FILES[\'image\'][\'size\'] <= 10485760) {\r\n        $infosfichier = pathinfo($_FILES[\'image\'][\'name\']);\r\n        $extension_upload = $infosfichier[\'extension\'];\r\n        $extension_autorisees = array(\'jpg\', \'jpeg\', \'png\');\r\n\r\n        if (in_array($extension_upload, $extension_autorisees)) {\r\n            $filename = \"image/\" . strtolower(pathinfo($_FILES[\'image\'][\'name\'], PATHINFO_FILENAME)) . \".\" . $extension_upload;\r\n            move_uploaded_file($_FILES[\'image\'][\'tmp_name\'], $filename);\r\n\r\n            $donnees = $bdd->prepare(\'INSERT INTO news (TitreNews, TexteNews, ImgNews, DateNews) VALUES (?, ?, ?, now())\');\r\n            $donnees->execute(array($_POST[\'titre\'], $_POST[\'contenu\'], $filename));\r\n\r\n            header(\'Location: blog_ajouter.php\');\r\n            exit();\r\n        } else {\r\n            echo \"Extension de fichier non autorisée.\";\r\n        }\r\n    } else {\r\n        echo \"La taille du fichier est trop grande.\";\r\n    }\r\n} else {\r\n    echo \"Veuillez remplir tous les champs et choisir une image.\";\r\n}\r\n?>\r\n', 'image/436175967_381524671522137_163845218327765976_n.jpg', '2024-05-21 17:05:15'),
(3, 'Fete de noel', 'Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  Ecrivez votre billets ici  ', 'image/capture d’écran 2022-11-27 230417.png', '2024-05-21 22:46:59'),
(4, 'pentecote', ' Ecrivez votre bill <input type=\"file\" name=\"img\" title=\"Photo alumni\" required \r\n                    >ets ici  ', 'image/win_20221013_20_33_45_pro.jpg', '2024-05-26 00:12:44'),
(5, 'pentecote', ' Ecrivez votre bill <input type=\"file\" name=\"img\" title=\"Photo alumni\" required \r\n                    >ets ici  ', 'image/win_20221013_20_33_45_pro.jpg', '2024-05-26 00:13:34'),
(6, 'pentecote', ' Ecrivez votre bill <input type=\"file\" name=\"img\" title=\"Photo alumni\" required \r\n                    >ets ici  ', 'image/win_20221013_20_33_45_pro.jpg', '2024-05-26 00:13:47');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`IdAlu`);

--
-- Index pour la table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`IdDoc`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`IdNews`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `IdAlu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `document`
--
ALTER TABLE `document`
  MODIFY `IdDoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `IdNews` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
