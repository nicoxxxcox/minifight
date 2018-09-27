<div class="row"><a class="btn" href="?deconnexion=1"><span class="pill ">Déconnexion</span></a></div>
<fieldset>
	<legend>Mes informations</legend>
	<p>
		Nom : <?= htmlspecialchars($perso->getNom()) ?><br/>
		Dégâts : <?= $perso->getDegats() ?>
	</p>
</fieldset>
<fieldset>
	<legend>Qui frapper ?</legend>
	<p>
        <?php
        $persos = $manager->getList(/*$perso->getNom()*/);
        if (empty($persos)) {
            echo 'Personne à frapper !';
        } else {
            foreach ($persos as $unPerso) {
                echo '<a href="?frapper=' . $unPerso->getId() . '">' . htmlspecialchars($unPerso->getNom()) . '</a> (dégâts : ' . $unPerso->getDegats() . ')<br />';
            }
        }
        ?>
	</p>
</fieldset>