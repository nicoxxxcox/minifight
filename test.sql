-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 26 sep. 2018 à 15:44
-- Version du serveur :  5.7.21
-- Version de PHP :  7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `test`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8 NOT NULL,
  `contenu` text CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf16 NOT NULL,
  `date_creation` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `img`, `date_creation`) VALUES
(1, '13 départements présentent leur projet de revenu de base', 'Agriculteur sinistré, aidant familial sans emploi, jeune de moins de 25 ans... Ceux qui ne peuvent ou n\'osent pas bénéficier actuellement des aides sociales pourraient toucher automatiquement le \"revenu de base\".<br />\r\n<br />\r\nC\'est en tout cas, l\'ambition des 13 départements qui souhaitent expérimenter ce dispositif.<br />\r\n<br />\r\nLes présidents des départements volontaires se sont réunis aujourd\'hui à Pessac près de  Bordeaux pour présenter les résultats d\'un rapport de l\'Institut des Politiques Publiques (IPP). Le fruit de 6 mois de travail.<br />\r\n<br />\r\nA l\'origine de cette démarche expérimentale, le Président socialiste du Département de la Gironde a expliqué l\'ambition de ce programme dans le journal régional de France 3 Aquitaine.', 'http://lvdneng.rosselcdn.net/sites/default/files/dpistyles_v2/ena_16_9_extra_big/2018/06/06/node_392045/39532878/public/2018/06/06/B9715952399Z.1_20180606195831_000%2BGAIBEKO9O.1-0.jpg?itok=5edVcuD8', '2018-06-10 00:00:00'),
(3, 'Essonne : le plombier découvre un trésor dans un grenier et veut sa part du magot', 'Huit mois après avoir découvert de nombreux bijoux et des pièces d’or sous un plancher, dans une maison de Brunoy (Essonne), Benoît Grac, 24 ans, réclame la moitié de la valeur du trésor.\r\n\r\n« Ils avaient essayé de contacter 7 ou 8 plombiers avant et c’est finalement tombé sur moi. » Benoît Grac, 24 ans, n’en revient toujours pas. Se sentant en veine, il achète un jeu à gratter dans un tabac de Brunoy (Essonne). « On ne sait jamais », lâche-t-il. Puis il raconte son histoire.', 'https://s1.lprs1.fr/images/2018/06/08/2fd8733a-698d-11e8-a91b-e269237e5271_1.jpg', '2018-06-05 00:00:00'),
(5, 'Opération «zéro PV» dans les rangs de la police nationale', 'Les syndicats veulent contester, à partir de ce jeudi, un projet «relatif à l’organisation du temps de travail» dans la police nationale.\r\n\r\nLes syndicats de la police nationale ont annoncé qu’ils s’apprêtaient à mener, « à partir de ce jeudi », une opération « zéro PV » sur « l’ensemble du territoire national ».\r\n\r\nDans un communiqué émis ce mercredi, les organisations syndicales Alliance Police Nationale CFE CGC, Unité SGP Police FO FSMI et UNSA évoquent « un projet d’arrêté relatif à l’organisation du temps de travail dans la police ».\r\n\r\nCe texte, dénoncent-elles, constitue une « régression » et « un dialogue social aux antipodes de ce qu’attendent les policiers ». Il « fragilise les temps de repos de tous les personnels […] alors qu’à la base, sa vocation était de les protéger », ajoutent-elles.', '', '2018-06-03 00:00:00'),
(6, 'Interdire le portable à l’école ? Bon courage !', 'Les députés examinent ce jeudi la loi interdisant l’usage du téléphone portable dans les écoles et collèges. Mais le texte se garde bien de préciser comment y parvenir.\r\n\r\nCesseront-ils un instant de pianoter sur leurs smartphones, au moment d’examiner ce texte-là ? C’est ce jeudi que les députés, à l’Assemblée nationale, débattent de la proposition de loi visant à interdire l’usage des téléphones portables dans les établissements scolaires.\r\n\r\nPas de smartphone à l’école : l’idée paraît simple comme un coup de fil. Elle ne l’est en fait pas du tout. Il a fallu presque une année scolaire pour que les services de l’Education nationale planchent sur cette promesse de campagne d’Emmanuel Macron et sur sa mise en œuvre massive auprès de 10 millions d’élèves dans les 51 000 écoles et surtout les 7 100 collèges du pays. En 2016, 93 % des jeunes de 12 à 17 ans possédaient un mobile.', '', '2018-06-15 00:00:00'),
(7, '13 départements présentent leur projet de revenu de base', 'griculteur sinistré, aidant familial sans emploi, jeune de moins de 25 ans... Ceux qui ne peuvent ou n\'osent pas bénéficier actuellement des aides sociales pourraient toucher automatiquement le \"revenu de base\".\r\n\r\nC\'est en tout cas, l\'ambition des 13 départements qui souhaitent expérimenter ce dispositif.\r\n\r\nLes présidents des départements volontaires se sont réunis aujourd\'hui à Pessac près de  Bordeaux pour présenter les résultats d\'un rapport de l\'Institut des Politiques Publiques (IPP). Le fruit de 6 mois de travail.\r\n\r\nA l\'origine de cette démarche expérimentale, le Président socialiste du Département de la Gironde a expliqué l\'ambition de ce programme dans le journal régional de France 3 Aquitaine.', '', '2018-06-10 00:00:00'),
(8, 'Quatre blessés dont trois graves dans l\'explosion d\'un silo à grains à Strasbourg', 'Trois personnes ont été grièvement blessées et une quatrième plus légèrement ce mercredi à Strasbourg.  Il s\'agirait d\'une explosion accidentelle selon les premiers éléments recueillis par la police. \r\n\r\nL\'explosion d\'un silo à grains mercredi vers 9h20 dans la zone portuaire de Strasbourg, sur les rives du Rhin, a fait quatre blessés dont trois grièvement sur 11 personnes présentes sur les lieux au moment de l\'incident.', '', '2018-06-08 00:00:00'),
(9, 'Essonne : le plombier découvre un trésor dans un grenier et veut sa part du magot', 'Huit mois après avoir découvert de nombreux bijoux et des pièces d’or sous un plancher, dans une maison de Brunoy (Essonne), Benoît Grac, 24 ans, réclame la moitié de la valeur du trésor.\r\n\r\n« Ils avaient essayé de contacter 7 ou 8 plombiers avant et c’est finalement tombé sur moi. » Benoît Grac, 24 ans, n’en revient toujours pas. Se sentant en veine, il achète un jeu à gratter dans un tabac de Brunoy (Essonne). « On ne sait jamais », lâche-t-il. Puis il raconte son histoire.', '', '2018-06-05 00:00:00'),
(10, 'Lyon: Cinq ans de prison ferme pour le fils de Marc-Vivien Foé qui avait séquestré un prêtre', 'Marc Foé, 22 ans, fils du défunt international de football camerounais Marc-Vivien Foé, a été condamné mercredi après-midi à cinq ans d’emprisonnement ferme par la cour d’assises de Lyon, pour vol à avec arme et séquestration.\r\n\r\nImpliqué à ses côtés dans l’agression d’un prêtre à son domicile, le 28 novembre 2015 à Genay (Rhône), Sofiane Bardot, 20 ans, a été condamné à la même peine, en tant que co-auteur de la séquestration, mais a été acquitté du chef de violences volontaires avec arme. L’avocat général avait requis mercredi matin des peines bien plus élevées et distinctes.\r\n« Je ne vous en veux pas », déclare la victime\r\n\r\nEstimant qu’il avait eu un « rôle pilote » et considérant son état de récidive légale, Vincent Le Pannerer avait réclamé douze ans de réclusion criminelle contre Sofiane Bardot, et huit ans contre Marc Foé. Le pardon accordé aux deux accusés par le père Luc Biquez explique probablement la clémence du verdict.\r\n\r\n« Je ne peux qu’espérer que vous trouverez un chemin plus cohérent et plus droit. Pour ce qui est de moi, je ne vous en veux pas. J’espère que vous puissiez en prendre une réelle conscience et pas seulement avec des mots faciles », avait déclaré le curé de Genay mardi à la barre, en se tournant vers les deux accusés.\r\nFrappé à coups de crosse de revolver\r\n\r\nLe prêtre avait été attaqué alors qu’il rentrait dans son presbytère. Les deux agresseurs, qui ont affirmé ignorer la qualité de prêtre de leur victime, cherchaient un coffre-fort. Menotté, les mains dans le dos, le religieux avait été frappé à coups de poing et avec la crosse d’un pistolet.', '', '2018-06-05 00:00:00'),
(11, 'Opération «zéro PV» dans les rangs de la police nationale', 'Les syndicats veulent contester, à partir de ce jeudi, un projet «relatif à l’organisation du temps de travail» dans la police nationale.\r\n\r\nLes syndicats de la police nationale ont annoncé qu’ils s’apprêtaient à mener, « à partir de ce jeudi », une opération « zéro PV » sur « l’ensemble du territoire national ».\r\n\r\nDans un communiqué émis ce mercredi, les organisations syndicales Alliance Police Nationale CFE CGC, Unité SGP Police FO FSMI et UNSA évoquent « un projet d’arrêté relatif à l’organisation du temps de travail dans la police ».\r\n\r\nCe texte, dénoncent-elles, constitue une « régression » et « un dialogue social aux antipodes de ce qu’attendent les policiers ». Il « fragilise les temps de repos de tous les personnels […] alors qu’à la base, sa vocation était de les protéger », ajoutent-elles.', '', '2018-06-03 00:00:00'),
(12, 'Interdire le portable à l’école ? Bon courage !', 'Les députés examinent ce jeudi la loi interdisant l’usage du téléphone portable dans les écoles et collèges. Mais le texte se garde bien de préciser comment y parvenir.\r\n\r\nCesseront-ils un instant de pianoter sur leurs smartphones, au moment d’examiner ce texte-là ? C’est ce jeudi que les députés, à l’Assemblée nationale, débattent de la proposition de loi visant à interdire l’usage des téléphones portables dans les établissements scolaires.\r\n\r\nPas de smartphone à l’école : l’idée paraît simple comme un coup de fil. Elle ne l’est en fait pas du tout. Il a fallu presque une année scolaire pour que les services de l’Education nationale planchent sur cette promesse de campagne d’Emmanuel Macron et sur sa mise en œuvre massive auprès de 10 millions d’élèves dans les 51 000 écoles et surtout les 7 100 collèges du pays. En 2016, 93 % des jeunes de 12 à 17 ans possédaient un mobile.', '', '2018-06-15 00:00:00'),
(13, '\"Mesdames et Messieurs les censeurs, bonsoir !\" : Jean Lassalle quitte l\'Assemblée nationale en hurlant', 'Jean Lassalle s\'exprime lors des questions au gouvernement, à l\'Assemblée nationale (Paris), le 25 octobre 2017. (THOMAS SAMSON / AFP)\r\navatarfranceinfoFrance Télévisions\r\n\r\nMis à jour le 07/06/2018 | 06:18\r\npublié le 06/06/2018 | 23:39\r\nPartagerTwitterPartager\r\nEnvoyer\r\nLA NEWSLETTER ACTUNous la préparons pour vous chaque matin\r\nimage il y a 1 heure\r\n\r\nManifestations, annulation de dates, communication a minima... Le difficile retour sur scène de Bertrand Cantat\r\n\r\nLe ton est monté à l\'Assemblée. Lors de débats dans l\'hémicycle, mercredi 6 juin au soir, le député des Pyrénées-Atlantiques Jean Lassalle a exprimé sa colère. Alors qu\'il est \"non-inscrit\" à l\'Assemblée et ne dispose donc pas d\'un important temps de parole, comme l\'indique Capital, le député s\'est plaint d\'être considéré comme un \"sous-député\". \"C\'est une honte\", a-t-il crié dans le palais Bourbon.\r\n\r\nLa présidente de séance, Carole Bureau-Bonnard, n\'a eu de cesse de rappeler à Jean Lassalle le règlement de l\'Assemblée : \"Vous faites parti des non-inscrits, il n\'y a plus de temps de parole.\" \"Vous n\'avez pas à vous lever et à hurler dans l\'Assemblée\", lui a-t-elle encore lancé. Très énervé, Jean Lassalle a fini par quitter l\'hémicycle en criant : \"Mesdames et Messieurs les censeurs, bonsoir !\"', 'https://www.francetvinfo.fr/image/75iubtylu-1585/1200/450/15190119.jpg', '2018-06-02 00:00:00'),
(14, 'Ils ont escaladé à mains nues la tour de la Part-Dieu', 'Un soleil de plomb qui a rendu le pari encore plus difficile. Et de fortes rafales de vent. Les conditions étaient loin d’être idéales ce mercredi pour escalader à mains nues les 140 mètres du « crayon ». Mais ils l’ont fait en moins de 45 minutes.\r\n\r\nQuatre militaires aguerris à ce type d’exercice ont franchi chacun un tronçon de 35 mètres pour arriver, vers 15 heures, en haut de la tour, sous les yeux admiratifs de nombreux badauds. Assurés quand même par des cordes, ils ont grimpé grâce à des techniques de coincement de mains et de pieds, utilisant la mince fissure qui court le long de la façade entre deux rangées de fenêtres.\r\n\r\nLe vent a rendu l’ascension encore plus exigeante pour ces Spiderman en treillis, qui n’ont pas eu besoin de planter le moindre piton dans la façade.\r\n\r\nUne belle opération de promotion pour le 7e régiment du matériel. Le dernier régiment lyonnais, basé boulevard de l’Artillerie dans le 7e, a vocation à assurer des actes de réparation et de maintenance au profit de l’armée de terre, que ce soit dans leurs ateliers lyonnais, ou en opération extérieure.\r\n\r\nAvec en plus une spécificité montagne liée à son rayonnement régional. Tous les soldats du régiment possèdent un brevet de ski et d’alpinisme militaire. Mais tous ne sont pas capables d’escalader une paroi lisse à 90 degrés, avec pour seule prise une fissure. Les hommes qui ont accompli cette prouesse sont leurs formateurs du bureau montagne.\r\n\r\nPour les connaisseurs, la tour de la Part-Dieu est classée comme du 6C, dans une échelle qui va jusqu’au 9A.', '', '2018-06-11 00:00:00'),
(15, 'Télévision: «Les séries complexes sont les plus sujettes au \"binge-watching\"»', '« Allez, encore un. » Il est 2h du matin et vous vous apprêtez à avaler un quatrième épisode de votre série préférée ? Le binge watching, ce comportement qui consiste à rester scotché devant son écran sans faire de pause, intéresse de plus en plus la communauté scientifique. Une étude européenne, dont le volet français est piloté depuis Nantes par le professeur Marie Grall-Bronnec (Institut fédératif des addictions comportementales), est menée jusqu’en septembre. Si vous êtes étudiant et âgé de plus de 18 ans, vous pouvez y répondre par ici.\r\nPourquoi le phénomène du binge watching vous intéresse-t-il ?\r\n\r\nMarie Grall-Bronnec : En addictologie, on a longtemps considéré uniquement les substances avant d’évoluer vers des attitudes qui peuvent donner lieu à des excès. Une addiction, c’est une perte de contrôle d’un comportement (consommer un produit, faire du sport, une envie de sexe…) qui est telle qu’elle entraîne des conséquences négatives (perte d’emploi, isolement social, condition physique dégradée…), et que malgré tout, la personne continue.\r\n\r\nCela s’accompagne d’une souffrance clinique vraiment réelle, qu’on n’a pas encore vraiment définie chez les amateurs de séries. Il faut donc vraiment garder de la mesure, ne pas employer le terme d’addiction à tort et à travers avant de voir si elle existe. C’est le but de l’étude que nous menons, dont les résultats seront connus dans un an.', 'http://md1.libe.com/photo/713072-the-americans-saison-3.jpg?modified_at=1422990980&width=960', '2018-06-16 00:00:00'),
(19, 'Poignée de main, accord historique et fin des \"jeux de guerre\" : revivez la journée historique de Donald Trump et Kim Jong-un', 'Après leur rencontre historique ce mardi à Singapour, Donald Trump et Kim Jong-un ont signé une déclaration commune, évoquant une \"dénucléarisation complète de la péninsule coréenne\". Le président américain s\'est ensuite exprimé sur la teneur de ces discussions, qu\'il a qualifiées d\'\"honnêtes, directes et productives\".\r\n\r\n\r\n\"Il (Kim) a réaffirmé son engagement indéfectible à une dénucléarisation complète de la péninsule coréenne\", a indiqué Donald Trump, sans reprendre l\'exigence américaine d\'un processus \"vérifiable et irréversible\". Il a ajouté que le dirigeant nord-coréen avait \"une occasion unique\" et que ce dernier lui a dit qu\'un site d\'essai balistique \"allait être détruit très prochainement\". Donald Trump a également déclaré qu\'il mettrait fin aux \"jeux de guerre\", en référence aux manœuvres militaires organisées par les Américains et les Sud-Coréens.', 'http://md1.libe.com/photo/1130397-000_15u8do.jpg?modified_at=1528829209&width=960', '2018-06-12 16:14:25'),
(20, 'Accueillir «L\'Aquarius» en Corse ? «La compétence, je la prends» ', 'a proposition a tranché avec la discrétion des autorités nationales : le président de l’exécutif corse, l’autonomiste Gilles Simeoni, a invité mardi le navire Aquarius à faire escale dans un port de l’île. Le sort de ce navire, qui a recueilli 629 migrants en mer et que l’Italie refuse de voir aborder ses côtes, était toujours incertain mercredi matin, malgré l’accueil promis par le gouvernement espagnol. Joint par Libération, Gilles Simeoni évoque un geste spontané face à l’urgence de la situation. Mais assume aussi la dimension politique de sa proposition, présentant la Corse en acteur méditerranéen «autonome».\r\nPourquoi avez-vous proposé d’ouvrir un port corse à l’Aquarius ?\r\n\r\nHier soir, nous avons constaté l’urgence de la situation du navire, avec une météo dégradée, le manque de vivres à bord et la distance à parcourir pour rejoindre l’Espagne [qui propose d’accueillir le bateau, ndlr]. Cette offre est un réflexe spontané de notre part, envers des gens qui se trouvent en détresse si près de nos ports.\r\nComment l’ONG SOS Méditerranée a-t-elle accueilli votre offre ?\r\n\r\nIl y a eu ce matin un contact entre mon cabinet et elle, dont je ne connais pas encore le résultat car je me trouve aujourd’hui à Paris. J’attends les retours. J’imagine que l’ONG est favorable à notre proposition, mais qu’elle voudra aussi disposer d’une solution parfaitement sécurisée. [Contacté par Libération, le cabinet de Gilles Simeoni n’a pas encore fait savoir l’issue de la discussion, ndlr].', 'http://md1.libe.com/photo/1106239-le-president-de-l-executif-corse-gilles-simeoni-le-30-novembre-2017-a-bastia.jpg?modified_at=1526453411&width=960', '2018-06-12 16:15:49'),
(21, 'Le parquet ouvre une enquête L’affaire Benalla sème la panique à l’Elysée ', 'L’Élysée a reconnu que le « Monsieur sécurité » d’Emmanuel Macron avait bien frappé un jeune manifestant le 1er mai, mais refuse de s’en séparer. En déplacement en Dordogne, le président fait l’autruche.', 'https://img.lemde.fr/2018/07/19/520/0/3500/1750/644/322/60/0/fe7c64f_PAR01_FRANCE-MACRON-AIDE_0719_11.JPG', '2018-07-19 15:56:57');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_article` int(11) NOT NULL,
  `auteur` varchar(255) CHARACTER SET utf8 NOT NULL,
  `commentaire` text CHARACTER SET utf8 NOT NULL,
  `date_commentaire` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `id_article`, `auteur`, `commentaire`, `date_commentaire`) VALUES
(1, 1, 'Nico', 'Oh non les pauvres ', '2018-06-02 09:21:18'),
(2, 1, 'Tutu', 'Y vas y avoir de la pluie !', '2018-06-01 10:18:26'),
(3, 2, 'Nico', 'Aîe !! ça doit faire mal', '2018-06-01 08:20:17'),
(4, 2, 'Michel', 'J\'espère que tous le monde va bien', '2018-06-02 07:21:16'),
(5, 3, 'Jean', 'J\'aurai fait pareil ! ;-) des sous-sous ', '2018-06-01 08:00:00'),
(6, 3, 'David', 'Whoa !! trop bien , la chance', '2018-06-01 07:00:00'),
(7, 4, 'David', 'Ahh , bien mérité ! c\'est pas moral je sais, mais c\'est ce que je pense.', '2018-06-02 11:14:00'),
(8, 4, 'Nico', '5 ans c\'est lonnnnng', '2018-06-01 12:50:00'),
(9, 5, 'Jean', 'Allé !! on peut donc se garer comme l\'on veux !!', '2018-06-01 05:32:00'),
(10, 5, 'Emmanuel', 'Pfff !! ça c\'est encore des saletés de fonctionnaires. flemmards !', '2018-06-02 06:00:08'),
(11, 5, 'Valerie', 'Toujours les fonctionnaires qui font mal leurs travail !', '2018-06-01 06:00:00'),
(12, 6, 'Jean', 'Ca va être difficile !', '2018-06-07 04:26:00'),
(13, 6, 'Emmanuel', 'Les élèves c\'est comme les fonctionnaires ! ça sert à rien', '2018-06-05 03:04:00'),
(14, 6, 'Nico', 'Peut être que c\'est impossible ', '2018-06-01 09:00:00'),
(15, 7, 'David', 'C\'est un beau projet ça !! continuez', '2018-06-03 10:00:00'),
(16, 7, 'Emmanuel', 'Encore l\'argent que j\'aurai pas dans ma poche', '2018-06-02 06:00:00'),
(17, 8, 'Nico', 'Outch ! ', '2018-06-09 00:00:00'),
(18, 8, 'Jean ', 'Pas sur que tous le monde s\'en sorte', '2018-06-04 00:00:00'),
(19, 9, 'Jean', 'Blaaaaa !', '2018-06-04 08:00:00'),
(20, 15, 'Jean', 'Il faut bien maintenir les gens devant un écran pour éviter qu\'ils ne pensent trop. Des fois qu\'on les retrouve dans la rue.', '2018-06-02 09:00:00'),
(21, 15, 'Jean', 'Il faut bien maintenir les gens devant un écran pour éviter qu\'ils ne pensent trop. Des fois qu\'on les retrouve dans la rue.', '2018-06-02 09:00:00'),
(22, 15, 'Vico', 'Et ces personnes pratiquent-elles le souping?', '2018-06-01 03:00:00'),
(55, 19, 'Nunu', 'Pas si sûr', '2018-08-27 14:28:32'),
(54, 19, 'Nono', 'Ici c\'est là', '2018-08-27 12:09:51'),
(26, 15, 'Nicolas', 'Super ce commentaire !', '2018-06-11 10:31:10'),
(53, 3, 'Nico', 'Hello', '2018-07-30 09:50:24'),
(52, 1, 'Nico', 'de base', '2018-07-18 10:57:08'),
(36, 13, 'Nico', 'IL est peut être pas député', '2018-06-11 11:06:46'),
(51, 25, 'Gato', 'Ceci est censé être un test', '2018-01-12 15:45:25'),
(50, 11, 'Jean', 'jeanjean', '2018-06-12 16:08:22'),
(49, 18, 'sdsd', 'dsds', '2018-06-11 17:12:25'),
(56, 19, 'oo', 'msldùmsqdq', '2018-09-04 17:18:20'),
(57, 19, 'nouveau commentaire', 'nouveau', '2018-09-04 17:18:39'),
(58, 19, 'csds', 'sdsd', '2018-09-04 17:20:21'),
(59, 19, 'zeze', 'zeze', '2018-09-05 10:20:34'),
(60, 19, 'eeee', 'eeee', '2018-09-05 10:20:56'),
(61, 21, 'nivo', 'ccccc', '2018-09-07 10:40:16'),
(62, 21, 'zzzzz', 'azaaa', '2018-09-07 10:40:26');

-- --------------------------------------------------------

--
-- Structure de la table `jeux_video`
--

DROP TABLE IF EXISTS `jeux_video`;
CREATE TABLE IF NOT EXISTS `jeux_video` (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `possesseur` varchar(255) NOT NULL,
  `console` varchar(255) NOT NULL,
  `prix` double NOT NULL DEFAULT '0',
  `nbre_joueurs_max` int(11) NOT NULL DEFAULT '0',
  `commentaires` text NOT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jeux_video`
--

INSERT INTO `jeux_video` (`ID`, `nom`, `possesseur`, `console`, `prix`, `nbre_joueurs_max`, `commentaires`) VALUES
(1, 'Super Mario Bros', 'Michel', 'NES', 4, 1, 'Un jeu d\'anthologie !'),
(2, 'Sonic', 'Patrick', 'Megadrive', 2, 1, 'Pour moi, le meilleur jeu du monde !'),
(3, 'Zelda : ocarina of time', 'Michel', 'Nintendo 64', 15, 1, 'Un jeu grand, beau et complet comme on en voit rarement de nos jours'),
(4, 'Mario Kart 64', 'Michel', 'Nintendo 64', 25, 4, 'Un excellent jeu de kart !'),
(5, 'Super Smash Bros Melee', 'Michel', 'GameCube', 55, 4, 'Un jeu de baston délirant !'),
(6, 'Dead or Alive', 'Patrick', 'Xbox', 60, 4, 'Le plus beau jeu de baston jamais créé'),
(7, 'Dead or Alive Xtreme Beach Volley Ball', 'Patrick', 'Xbox', 60, 4, 'Un jeu de beach volley de toute beauté o_O'),
(8, 'Enter the Matrix', 'Michel', 'PC', 45, 1, 'Plutôt bof comme jeu, mais ça complète bien le film'),
(9, 'Max Payne 2', 'Michel', 'PC', 50, 1, 'Très réaliste, une sorte de film noir sur fond d\'histoire d\'amour. A essayer !'),
(10, 'Yoshi\'s Island', 'Michel', 'SuperNES', 6, 1, 'Le paradis des Yoshis :o)'),
(11, 'Commandos 3', 'Michel', 'PC', 44, 12, 'Un bon jeu d\'action où on dirige un commando pendant la 2ème guerre mondiale !'),
(12, 'Final Fantasy X', 'Patrick', 'PS2', 40, 1, 'Encore un Final Fantasy mais celui la est encore plus beau !'),
(13, 'Pokemon Rubis', 'Michel', 'GBA', 44, 4, 'Pika-Pika-chu !!!'),
(14, 'Starcraft', 'Michel', 'PC', 19, 8, 'Le meilleur jeux pc de tout les temps !'),
(15, 'Grand Theft Auto 3', 'Michel', 'PS2', 30, 1, 'Comme dans les autres Gta on ecrase tout le monde :) .'),
(16, 'Homeworld 2', 'Michel', 'PC', 45, 6, 'Superbe ! o_O'),
(17, 'Aladin', 'Patrick', 'SuperNES', 10, 1, 'Comme le dessin Animé !'),
(18, 'Super Mario Bros 3', 'Michel', 'SuperNES', 10, 2, 'Le meilleur Mario selon moi.'),
(19, 'SSX 3', 'Michel', 'Xbox', 56, 2, 'Un très bon jeu de snow !'),
(20, 'Star Wars : Jedi outcast', 'Patrick', 'Xbox', 33, 1, 'Encore un jeu sur star-wars où on se prend pour Luke Skywalker !'),
(21, 'Actua Soccer 3', 'Patrick', 'PS', 30, 2, 'Un jeu de foot assez bof ...'),
(22, 'Time Crisis 3', 'Michel', 'PS2', 40, 1, 'Un troisième volet efficace mais pas vraiment surprenant'),
(23, 'X-FILES', 'Patrick', 'PS', 25, 1, 'Un jeu censé ressembler a la série mais assez raté ...'),
(24, 'Soul Calibur 2', 'Patrick', 'Xbox', 54, 1, 'Un jeu bien axé sur le combat'),
(25, 'Diablo', 'Michel', 'PS', 20, 1, 'Comme sur PC mais la c\'est sur un ecran de télé :) !'),
(26, 'Street Fighter 2', 'Patrick', 'Megadrive', 10, 2, 'Le célèbre jeu de combat !'),
(27, 'Gundam Battle Assault 2', 'Michel', 'PS', 29, 1, 'Jeu japonais dont le gameplay est un peu limité. Peu de robots malheureusement'),
(28, 'Spider-Man', 'Michel', 'Megadrive', 15, 1, 'Vivez l\'aventure de l\'homme araignée'),
(29, 'Midtown Madness 3', 'Michel', 'Xbox', 59, 6, 'Dans la suite des autres versions de Midtown Madness'),
(30, 'Tetris', 'Michel', 'Gameboy', 5, 1, 'Qui ne connait pas ? '),
(31, 'The Rocketeer', 'Michel', 'NES', 2, 1, 'Un super un film et un jeu de m*rde ...'),
(32, 'Pro Evolution Soccer 3', 'Patrick', 'PS2', 59, 2, 'Un petit jeu de foot sur PS2'),
(33, 'Ice Hockey', 'Michel', 'NES', 7, 2, 'Jamais joué mais a mon avis ca parle de hockey sur glace ... =)'),
(34, 'Sydney 2000', 'Michel', 'Dreamcast', 15, 2, 'Les JO de Sydney dans votre salon !'),
(35, 'NBA 2k', 'Patrick', 'Dreamcast', 12, 2, 'A votre avis :p ?'),
(36, 'Aliens Versus Predator : Extinction', 'Michel', 'PS2', 20, 2, 'Un shoot\'em up pour pc'),
(37, 'Crazy Taxi', 'Michel', 'Dreamcast', 11, 1, 'Conduite de taxi en folie !'),
(38, 'Le Maillon Faible', 'Mathieu', 'PS2', 10, 1, 'Le jeu de l\'émission'),
(39, 'FIFA 64', 'Michel', 'Nintendo 64', 25, 2, 'Le premier jeu de foot sur la N64 =) !'),
(40, 'Qui Veut Gagner Des Millions', 'Michel', 'PS2', 10, 1, 'Le jeu de l\'émission'),
(41, 'Monopoly', 'Sebastien', 'Nintendo 64', 21, 4, 'Bheuuu le monopoly sur N64 !'),
(42, 'Taxi 3', 'Corentin', 'PS2', 19, 4, 'Un jeu de voiture sur le film'),
(43, 'Indiana Jones Et Le Tombeau De L\'Empereur', 'Michel', 'PS2', 25, 1, 'Notre aventurier préféré est de retour !!!'),
(44, 'F-ZERO', 'Mathieu', 'GBA', 25, 4, 'Un super jeu de course futuriste !'),
(45, 'Harry Potter Et La Chambre Des Secrets', 'Mathieu', 'Xbox', 30, 1, 'Abracadabra !! Le célebre magicien est de retour !'),
(46, 'Half-Life', 'Corentin', 'PC', 15, 32, 'L\'autre meilleur jeu de tout les temps (surtout ses mods).'),
(47, 'Myst III Exile', 'Sébastien', 'Xbox', 49, 1, 'Un jeu de réflexion'),
(48, 'Wario World', 'Sebastien', 'Gamecube', 40, 4, 'Wario vs Mario ! Qui gagnera ! ?'),
(49, 'Rollercoaster Tycoon', 'Michel', 'Xbox', 29, 1, 'Jeu de gestion d\'un parc d\'attraction'),
(50, 'Splinter Cell', 'Patrick', 'Xbox', 53, 1, 'Jeu magnifique !'),
(51, 'Battlefield 1942', 'Patrick', 'PC', 10, 32, '2nde guerre mondiale');

-- --------------------------------------------------------

--
-- Structure de la table `minichat`
--

DROP TABLE IF EXISTS `minichat`;
CREATE TABLE IF NOT EXISTS `minichat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL,
  `temp` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `minichat`
--

INSERT INTO `minichat` (`id`, `name`, `message`, `temp`) VALUES
(85, 'ooo', 'pppp', 'mardi 25 septembre 2018 à 09h59 '),
(84, 'nico', 'Oui, je t\'ai obligé d\'être là :-)', 'mardi 05 juin 2018 à 07h41 '),
(83, 'Marine', 'Coucou ! mais qu\'est ce que je fais là ?', 'mardi 05 juin 2018 à 07h40 '),
(82, 'nico', 'Ceci est le premier message', 'lundi 04 juin 2018 à 15h56 ');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `content` text CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `title`, `content`) VALUES
(1, 'Mon premier titre', 'Accenderat super his incitatum propositum ad nocendum aliqua mulier vilis, quae ad palatium ut poposcerat intromissa insidias ei latenter obtendi prodiderat a militibus obscurissimis. quam Constantina exultans ut in tuto iam locata mariti salute muneratam vehiculoque inpositam per regiae ianuas emisit in publicum, ut his inlecebris alios quoque ad indicanda proliceret paria vel maiora.'),
(2, 'Mon deuxieme titre', 'Nocendum aliqua mulier vilis, quae ad palatium ut poposcerat intromissa insidias ei latenter obtendi prodiderat a militibus obscurissimis. quam Constantina exultans ut in tuto iam locata mariti salute muneratam vehiculoque inpositam per regiae ianuas emisit in publicum, ut his inlecebris alios quoque ad indicanda proliceret paria vel maiora.'),
(3, 'Super titre !', 'Ceci n\'est pas commun,Oportunum est, ut arbitror, explanare nunc causam, quae ad exitium praecipitem Aginatium inpulit iam inde a priscis maioribus nobilem, ut locuta est pertinacior fama. nec enim super hoc ulla documentorum rata est fides.\r\n\r\nQuam ob rem circumspecta cautela observatum est deinceps et cum edita montium petere coeperint grassatores, loci iniquitati milites cedunt. ubi autem in planitie potuerint reperiri, quod contingit adsidue, nec exsertare lacertos nec crispare permissi tela, quae vehunt bina vel terna, pecudum ritu inertium trucidantur.\r\n\r\nQuaestione igitur per multiplices dilatata fortunas cum ambigerentur quaedam, non nulla levius actitata constaret, post multorum clades Apollinares ambo pater et filius in exilium acti cum ad locum Crateras nomine pervenissent, villam scilicet suam quae ab Antiochia vicensimo et quarto disiungitur lapide, ut mandatum est, fractis cruribus occiduntur.'),
(4, 'Très titre', 'OPORTUNUM EST, UT ARBITROR, EXPLANARE NUNC CAUSAM, QUAE AD EXITIUM PRAECIPITEM AGINATIUM INPULIT IAM INDE A PRISCIS MAIORIBUS NOBILEM, UT LOCUTA EST PERTINACIOR FAMA. NEC ENIM SUPER HOC ULLA DOCUMENTORUM RATA EST FIDES.\r\n\r\nQUAM OB REM CIRCUMSPECTA CAUTELA OBSERVATUM EST DEINCEPS ET CUM EDITA MONTIUM PETERE COEPERINT GRASSATORES, LOCI INIQUITATI MILITES CEDUNT. UBI AUTEM IN PLANITIE POTUERINT REPERIRI, QUOD CONTINGIT ADSIDUE, NEC EXSERTARE LACERTOS NEC CRISPARE PERMISSI TELA, QUAE VEHUNT BINA VEL TERNA, PECUDUM RITU INERTIUM TRUCIDANTUR.\r\n\r\nQUAESTIONE IGITUR PER MULTIPLICES DILATATA FORTUNAS CUM AMBIGERENTUR QUAEDAM, NON NULLA LEVIUS ACTITATA CONSTARET, POST MULTORUM CLADES APOLLINARES AMBO PATER ET FILIUS IN EXILIUM ACTI CUM AD LOCUM CRATERAS NOMINE PERVENISSENT, VILLAM SCILICET SUAM QUAE AB ANTIOCHIA VICENSIMO ET QUARTO DISIUNGITUR LAPIDE, UT MANDATUM EST, FRACTIS CRURIBUS OCCIDUNTUR.'),
(5, 'Titre titre titre ', 'Utque proeliorum periti rectores primo catervas densas opponunt et fortes, deinde leves armaturas, post iaculatores ultimasque subsidiales acies, si fors adegerit, iuvaturas, ita praepositis urbanae familiae suspensae digerentibus sollicite, quos insignes faciunt virgae dexteris aptatae velut tessera data castrensi iuxta vehiculi frontem omne textrinum incedit: huic atratum coquinae iungitur ministerium, dein totum promiscue servitium cum otiosis plebeiis de vicinitate coniunctis: postrema multitudo spadonum a senibus in pueros desinens, obluridi distortaque lineamentorum conpage deformes, ut quaqua incesserit quisquam cernens mutilorum hominum agmina detestetur memoriam Samiramidis reginae illius veteris, quae teneros mares castravit omnium prima velut vim iniectans naturae, eandemque ab instituto cursu retorquens, quae inter ipsa oriundi crepundia per primigenios seminis fontes tacita quodam modo lege vias propagandae posteritatis ostendit.\r\n\r\nQuod opera consulta cogitabatur astute, ut hoc insidiarum genere Galli periret avunculus, ne eum ut praepotens acueret in fiduciam exitiosa coeptantem. verum navata est opera diligens hocque dilato Eusebius praepositus cubiculi missus est Cabillona aurum secum perferens, quo per turbulentos seditionum concitores occultius distributo et tumor consenuit militum et salus est in tuto locata praefecti. deinde cibo abunde perlato castra die praedicto sunt mota.\r\n\r\nItaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero, C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi enim ipsos induxi loquentes, ne \'inquam\' et \'inquit\' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.\r\n\r\nEt quia Mesopotamiae tractus omnes crebro inquietari sueti praetenturis et stationibus servabantur agrariis, laevorsum flexo itinere Osdroenae subsederat extimas partes, novum parumque aliquando temptatum commentum adgressus. quod si impetrasset, fulminis modo cuncta vastarat. erat autem quod cogitabat huius modi.\r\n\r\nQuo cognito Constantius ultra mortalem modum exarsit ac nequo casu idem Gallus de futuris incertus agitare quaedam conducentia saluti suae per itinera conaretur, remoti sunt omnes de industria milites agentes in civitatibus perviis.'),
(6, 'Title titre', 'Utque proeliorum periti rectores primo catervas densas opponunt et fortes, deinde leves armaturas, post iaculatores ultimasque subsidiales acies, si fors adegerit, iuvaturas, ita praepositis urbanae familiae suspensae digerentibus sollicite, quos insignes faciunt virgae dexteris aptatae velut tessera data castrensi iuxta vehiculi frontem omne textrinum incedit: huic atratum coquinae iungitur ministerium, dein totum promiscue servitium cum otiosis plebeiis de vicinitate coniunctis: postrema multitudo spadonum a senibus in pueros desinens, obluridi distortaque lineamentorum conpage deformes, ut quaqua incesserit quisquam cernens mutilorum hominum agmina detestetur memoriam Samiramidis reginae illius veteris, quae teneros mares castravit omnium prima velut vim iniectans naturae, eandemque ab instituto cursu retorquens, quae inter ipsa oriundi crepundia per primigenios seminis fontes tacita quodam modo lege vias propagandae posteritatis ostendit.\r\n\r\nQuod opera consulta cogitabatur astute, ut hoc insidiarum genere Galli periret avunculus, ne eum ut praepotens acueret in fiduciam exitiosa coeptantem. verum navata est opera diligens hocque dilato Eusebius praepositus cubiculi missus est Cabillona aurum secum perferens, quo per turbulentos seditionum concitores occultius distributo et tumor consenuit militum et salus est in tuto locata praefecti. deinde cibo abunde perlato castra die praedicto sunt mota.\r\n\r\nItaque tum Scaevola cum in eam ipsam mentionem incidisset, exposuit nobis sermonem Laeli de amicitia habitum ab illo secum et cum altero genero, C. Fannio Marci filio, paucis diebus post mortem Africani. Eius disputationis sententias memoriae mandavi, quas hoc libro exposui arbitratu meo; quasi enim ipsos induxi loquentes, ne \'inquam\' et \'inquit\' saepius interponeretur, atque ut tamquam a praesentibus coram haberi sermo videretur.\r\n\r\nEt quia Mesopotamiae tractus omnes crebro inquietari sueti praetenturis et stationibus servabantur agrariis, laevorsum flexo itinere Osdroenae subsederat extimas partes, novum parumque aliquando temptatum commentum adgressus. quod si impetrasset, fulminis modo cuncta vastarat. erat autem quod cogitabat huius modi.\r\n\r\nQuo cognito Constantius ultra mortalem modum exarsit ac nequo casu idem Gallus de futuris incertus agitare quaedam conducentia saluti suae per itinera conaretur, remoti sunt omnes de industria milites agentes in civitatibus perviis.');

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

DROP TABLE IF EXISTS `personnages`;
CREATE TABLE IF NOT EXISTS `personnages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(128) NOT NULL,
  `forcePerso` tinyint(128) NOT NULL,
  `degats` tinyint(128) NOT NULL,
  `niveau` tinyint(128) NOT NULL,
  `experience` tinyint(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `forcePerso`, `degats`, `niveau`, `experience`) VALUES
(1, 'Merlin', 40, 0, 1, 1),
(51, 'MIchto', 6, 0, 1, 0),
(52, 'Victor', 6, 6, 1, 1),
(53, 'Victor', 6, 6, 1, 1),
(54, 'Victor', 6, 6, 1, 1),
(55, 'Victor', 6, 6, 1, 1),
(56, 'Victor', 6, 6, 1, 1),
(57, 'Victor', 6, 6, 1, 1),
(58, 'Victor', 6, 6, 1, 1),
(59, 'Victor', 6, 6, 1, 1),
(60, 'Victor', 6, 6, 1, 1),
(61, 'Victor', 6, 6, 1, 1),
(62, 'Victor', 6, 6, 1, 1),
(63, 'Victor', 6, 6, 1, 1),
(64, 'Victor', 6, 6, 1, 1),
(65, 'Victor', 6, 6, 1, 1),
(66, 'Victor', 6, 6, 1, 1),
(67, 'Victor', 6, 6, 1, 1),
(68, 'MIchel', 6, 6, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `persos`
--

DROP TABLE IF EXISTS `persos`;
CREATE TABLE IF NOT EXISTS `persos` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `degats` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `persos`
--

INSERT INTO `persos` (`id`, `nom`, `degats`) VALUES
(16, 'uuu', 10),
(15, 'ppp', 5),
(14, 'dodo', 15),
(13, 'sa', 35),
(12, 'nom', 5),
(11, 'a', 0),
(17, 'aaa', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `name`, `password`, `date`) VALUES
(12, 'nico', '$2y$10$pM5xdt6UoWCQQYHaloaGCeTch12DpR3czuI0hpUjnMtmHPGGV5DMa', '2018-08-30'),
(13, 'odor', '$2y$10$SU1S56ZhmVL6t1KJkYie4uaz4V2XHDvv82WBVAmyh33Lt1S9MAzki', '2018-08-30'),
(14, 'nono', 'nono', '2018-09-03'),
(15, 'oi', '$2y$10$0v7vb7Rn8gJwy4EcZNDjNuQoQc5t6NQ8WEEb39Cv.peqM2M2uYfhK', '2018-09-03'),
(16, 'oi', '$2y$10$GasMujergMk1FwBWdasroOgX9EhzTG44QokB9WwEafl49tBZHE2ym', '2018-09-03'),
(17, 'root', '$2y$10$fJhV5oKEhDbnXWSCtExxpuPAE0u2nGgaiCRVPznVvRhPhtvhd3l5G', '2018-09-03'),
(18, 'bab', '$2y$10$7RHy4tbhrPxa9zALbFotD.BBqJXphjXuV8pOHVipujRtLgC7lzJQa', '2018-09-03'),
(19, 'dfdfd', '$2y$10$fTVzAjG3POTjoJOsPugvwuuV.V7CUBsHuNIP/CXbSOutUB8R9EFa6', '2018-09-03');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
