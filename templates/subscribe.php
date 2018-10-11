<?php

?>

<div class="row"><?php
    $persos = $manager->getList(/*$perso->getNom()*/);
    if (empty($persos)) {
        echo 'Aucuns personnages créé. ';
    } else {

        foreach ($persos as $unPerso) {

            // fonction de ramdminsation des couleurs
            $rand = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f');
            $color = '#' . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)];

            echo '<form id ="'. $unPerso->getId() .'" class="pill-form pill pill-pers " method="post" style="background-color: '.$color.'!important;">
                    <div class="">       
                        <i class="fas fa-child"></i>             
                        <div class="name-pers" onclick="document.getElementById(\''.$unPerso->getId().'\').submit();" >'. $unPerso->getNom().'</div>                    
                        <input  type="text" name="pill-nom" hidden value="'. $unPerso->getNom() .'" >                    
                    </div>           
               <input  type="submit" hidden  >
            </form>';
        }

    }

     if (isset($_POST['choix'])) // Si on a voulu utiliser un personnage.
     {
         $manager->addPerso($perso);
     }
    ?></div>
<div class="row">

	<form action="" method="post">
		<p>
			Nom : <input type="text" name="nom" maxlength="50"/>
			<input type="submit" value="Créer ce personnage" name="creer"/>
			<input type="submit" value="Utiliser ce personnage" name="utiliser"/>
		</p>
	</form>

</div>