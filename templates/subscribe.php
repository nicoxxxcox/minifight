<div class="row">
    <div class="col-md-10 mx-auto">
        <img class="mr-1" src="./assets/info.svg" alt="information"><span class="game-info"> Créez votre soldat ou choisisez en un existant </span>
        <div class="row">
            <div class="col">
                <form action="" class="form-group" method="post">
                    <input type="text" class="game-form-field" name="nom" placeholder="Nom du soldat"
                           maxlength="50"/>
                    <br>
                    <input type="submit" class="game-form-submit" value="Créer ce personnage" name="creer"/>
                </form>
                <span class="game-text">ou choisisez en un déjà en service</span>

                <div class="row mb-5">
                    <div class="col mt-3">
                        <?php
                        $persos = $manager->getList(/*$perso->getNom()*/);
                        if (empty($persos)) {
                            echo 'Aucuns personnages créé. ';
                        } else {

                            foreach ($persos as $unPerso) {
                                echo '<form id ="' . $unPerso->getId() . '" class="form-pers" method="post">             
                            
                                    
                        <div class="btn  btn-pers mr-2 mb-3 " onclick="document.getElementById(\'' . $unPerso->getId() . '\').submit();" >  ' . $unPerso->getNom() . '</div>                    
                        <input  type="text" name="pill-nom" hidden value="' . $unPerso->getNom() . '" >                    
                              
               <input  type="submit" hidden  >
            </form>';
                            }
                        }
                        if (isset($_POST['choix'])) // Si on a voulu utiliser un personnage.
                        {
                            $manager->addPerso($perso);
                        }
                        ?>

                    </div>
                </div>


            </div>
        </div>
    </div>
</div>


<div class="row"></div>
