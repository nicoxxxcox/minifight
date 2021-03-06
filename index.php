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
        $message = 'Le nom du personnage <span class="notifications-name">'. $_POST['nom'] .'</span> est déjà pris.';
        unset($perso);
    } else {
        $manager->addPerso($perso);
    }
    // Si on a voulu utiliser un personnage.
} elseif (isset($_POST['pill-nom'])) {


    $perso = $manager->getPerso($_POST['pill-nom']);


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
                    $message = ' Le personnage  <span class="notifications-name"> ' . $persoAFrapper->getNom() . '</span> a bien été frappé !';

                    $manager->update($perso);
                    $manager->update($persoAFrapper);

                    break;

                case Personnage::PERSONNAGE_TUE :
                    $message = 'Vous avez tué le soldat !';

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
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,500,700,900|Source+Sans+Pro" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/app.css">
    <title>Mini jeu de combat</title>
</head>
<body>
<header>
    <nav class="navbar">
        <div class="container">
            <a class="navbar-brand" href="#">
                <img src="./assets/logo.svg" width="60" height="60" class="d-inline-block align-middle" alt="">
                <span class="brand-name">Kill Your Friend</span>

            </a>

            <div class="pill pill-count mr-sm-2"><span class="pill-count-number"><?= $manager->count() ?></span> soldats
                créés
            </div>
        </div>
    </nav>
</header>


<div class="container">

    <div class="row justify-content-md-center">
        <div class="col col-md-8 box-game">

            <div class="row align-items-center notifications-line  ">
                <div class="col-md-8 ">
                    <img class="notifications-img" src="./assets/envelope.svg" alt="">
                    <?php
                    if (isset($message)) // On a un message à afficher ?
                    {
                        echo '<div class="notifications-msg"> : ' . $message . // Si oui, on l\'affiche.
                            '</div>';

                    } ?>

                </div>

                <div class="col-md-4 ">
                    <?php
                    // on vérifie que $perso est instancié pour afficher le bouton de déconnexion
                    if (isset($perso)) {
                        echo ' <a  href="?deconnexion=1"><div class="pill pill-deconnexion  ml-auto" >
                               Déconnexion
                                </div></a> ';
                    }
                    ?>
                </div>
            </div>
            <div class="row py-5">
                <img class="mx-auto d-block " src="./assets/swords.svg" alt="">
            </div>

            <?php
            if (isset($perso)) // Si on utilise un personnage (nouveau ou pas).
            {
                require './templates/game.php';

            } else {
                require './templates/subscribe.php';
            } ?>


        </div>
    </div>
</div>

<footer class="footer-line">
    <div class="row">
        <div class="col py-2">
            <p>Made with love
                by <span class="">Nicolas Grissi</span> <br>
                Source php exemple <a href="">here</a></p>
        </div>
    </div>
</footer>


<script src="./js/app.js" type="application/javascript"></script>
</body>
</html>
<?php
if (isset($perso)) // Si on a créé un personnage, on le stocke dans une variable session afin d'économiser une requête SQL.
{
    $_SESSION['perso'] = $perso;
}
?>