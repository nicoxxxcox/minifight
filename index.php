<?php
// on charge l'auto loader pour charger automatiquement toutes nos classes sans require à chaques fois
// **** autoloader : BEGIN
require './classes/autoloader.class.php';
autoloader::autoload();
// **** autoloader : END

// On appelle session_start() APRÈS avoir enregistré l'autoload.
// SI on clique sur deconnexion on suppr la variable de session + on redirige vers la page sans parametres GET
session_start();
if (isset($_GET['deconnexion'])) {
    session_destroy();
    header('Location: .');
    exit();
}

// **** PDO : BEGIN
$db = new PDO('mysql:host=localhost;dbname=test', 'root', '');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_SILENT); // On émet une alerte à chaque fois qu'une requête a échoué.
// **** PDO : END

// on instancie l'objet de la classe PersonnagesManager
$manager = new PersonnagesManager($db);

// Si la session perso existe, on restaure l'objet.
if (isset($_SESSION['perso'])) {
    $perso = $_SESSION['perso'];
}

// Si on a voulu créer un personnage.
if (isset($_POST['creer']) && isset($_POST['nom'])) {   // On crée un nouveau personnage.
    $perso = new Personnage(['nom' => $_POST['nom']]);

    if (!$perso->nomValide()) {
        $message = 'Le nom choisi est invalide.';
        unset($perso);
    } elseif ($manager->existPerso($perso->getNom())) {
        $message = 'Le nom du personnage est déjà pris.';
        unset($perso);
    } else {
        $manager->addPerso($perso);
    }
} elseif (isset($_POST['utiliser']) && isset($_POST['nom'])) // Si on a voulu utiliser un personnage.
{
    if ($manager->existPerso($_POST['nom'])) // Si celui-ci existe.
    {
        $perso = $manager->getPerso($_POST['nom']);
    } else {
        $message = 'Ce personnage n\'existe pas !'; // S'il n'existe pas, on affichera ce message.
    }
} elseif (isset($_GET['frapper'])) // Si on a cliqué sur un personnage pour le frapper.
{
    if (!isset($perso)) {
        $message = 'Merci de créer un personnage ou de vous identifier.';
    } else {
        if (!$manager->existPerso((int)$_GET['frapper'])) {
            $message = 'Le personnage que vous voulez frapper n\'existe pas !';
        } else {
            $persoAFrapper = $manager->getPerso((int)$_GET['frapper']);

            $retour = $perso->frapper($persoAFrapper); // On stocke dans $retour les éventuelles erreurs ou messages
            //	        // que renvoie la méthode frapper.


            switch ($retour) {
                case Personnage::CEST_MOI :
                    $message = 'Mais... pourquoi voulez-vous vous frapper ???';
                    break;

                case Personnage::PERSONNAGE_FRAPPE :
                    $message = 'Le personnage a bien été frappé !';

                    $manager->update($perso);
                    $manager->update($persoAFrapper);

                    break;

                case Personnage::PERSONNAGE_TUE :
                    $message = 'Vous avez tué ce personnage !';

                    $manager->update($perso);
                    $manager->delPerso($persoAFrapper);

                    break;
            }
        }
    }
}
?><!doctype html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://fonts.googleapis.com/css?family=Londrina+Solid|Source+Sans+Pro:400,400i,600,600i,700,700i" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
	<link rel="stylesheet" href="./css/app.css">
	<title>Mini jeu de combat</title>
</head>
<body>
<div class="wrapper">
	<div class="container">
		<h2 class="title-main">Non</h2>
		<div class="row">
			<div class="pill pill-number"><i class="fas fa-child"></i>  Personnages créés : <span
						class="pill-info"><?= $manager->count()
					?></span></div>
			<div class="pill"><i class="fas fa-info-circle"></i>  <?php
                if (isset($message)) // On a un message à afficher ?
                {
                    echo $message; // Si oui, on l'affiche.
                } ?>
			</div>
		</div><?php
				if (isset($perso)) // Si on utilise un personnage (nouveau ou pas).
                {
                    require './templates/game.php';

                } else {
                    require './templates/subscribe.php';
                } ?>


	</div>
</div>
</body>
</html>
<?php
if (isset($perso)) // Si on a créé un personnage, on le stocke dans une variable session afin d'économiser une requête SQL.
{
    $_SESSION['perso'] = $perso;
}
?>