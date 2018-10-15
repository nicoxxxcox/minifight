<div class="row">
    <div class="col-md-10 mx-auto">
        <img class="mr-1" src="./assets/info.svg" alt="information"><span class="game-info"> Cliquez sur un soldat pour le frapper ! </span>
        <div class="row">
            <div class="col">

                <div class="row my-3 pers-line">
                    <div class="col-md-2">
                        <img src="./assets/viking.svg" alt="">
                    </div>
                    <div class="col-md-10">
                        <div class="pers-name"><?= htmlspecialchars($perso->getNom()) ?></div>
                        <div class="pers-life">Vie : <?= $perso->getVie() ?> <img src="./assets/heart.svg" alt=""></div>
                    </div>
                </div>

                <div class="row mb-5">
                    <div class="col mt-3">
                        <?php
                        $persos = $manager->getList(/*$perso->getNom()*/);
                        if (empty($persos)) {
                            echo 'Personne à frapper !';
                        } else {
                            foreach ($persos as $unPerso) {
                                echo '
                <div class="btn  btn-pers mr-2 mb-3 ">
                   
                    <a href="?frapper=' . $unPerso->getId() . '">  ' . htmlspecialchars($unPerso->getNom()) . '   <span class="icn-life"> ' . $unPerso->getVie() . '</span></a><br />
                </div>';
                            }
                        }
                        ?>
                    </div>
                </div>


            </div>
        </div>
    </div>
</div>
