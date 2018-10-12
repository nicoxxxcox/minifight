<div class="row"><a class="btn" href="?deconnexion=1"><span class="pill pill-deconnexion ">Déconnexion</span></a></div>
<div class="row">

    <fieldset class="fieldset-info">
        <legend>Mes informations</legend>
        <div class="pill-form pill">Moi : <?= htmlspecialchars($perso->getNom()) ?>
            <span id="icn" class="icn-life">  <?= $perso->getVie() ?></span>
        </div>
    </fieldset >
    <fieldset class="fieldset-frapper">
        <legend>Qui frapper ?</legend>
        <p>
            <?php
            $persos = $manager->getList(/*$perso->getNom()*/);
            if (empty($persos)) {
                echo 'Personne à frapper !';
            } else {
                foreach ($persos as $unPerso) {
                    echo '
                <div class="pill-form pill ">
                    <i class="fas fa-child"></i> 
                    <a href="?frapper=' . $unPerso->getId() . '">  ' . htmlspecialchars($unPerso->getNom()) . '   <span class="icn-life"> ' . $unPerso->getVie() . '</span></a><br />
                </div>';
                }
            }
            ?>
        </p>
    </fieldset>
</div>