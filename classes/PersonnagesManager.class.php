<?php

class PersonnagesManager
{
    private $_db; // instance de PDO

    /**
     * PersonnagesManager constructor.
     * Initialise l'objet de PDO dans la classe à sont instanciation
     * @param $db
     */
    public function __construct($db)
    {
        $this->setDb($db);
    }

    public function setDb(PDO $db)
    {
        $this->_db = $db;
    }

    // fonction d'enregistrement d'un perso dans db
    public function addPerso(Personnage $perso)
    {
        // Préparation de la requête d'insertion.
        $q = $this->_db->prepare('INSERT INTO persos (nom) VALUES(:nom)');
        // Assignation des valeurs pour le nom du personnage.
        $q->bindValue(':nom', $perso->getNom());
        // Exécution de la requête.
        $q->execute();
        // Hydratation du personnage passé en paramètre avec assignation de son identifiant et des dégâts initiaux (= 0).
        $perso->hydrate(['id' => $this->_db->lastInsertId(), 'degats' => 0]);
    }

    public function delPerso(Personnage $perso)
    {
        // Execute une requete de type delete
        $this->_db->exec('DELETE FROM persos WHERE id =' . $perso->getId());
    }

    public function existPerso($info)
    {
        // Si le paramètre est un entier, c'est qu'on a fourni un identifiant.
        if (is_int($info))
        {
            // On exécute alors une requête COUNT() avec une clause WHERE, et on retourne un boolean.
            return (bool)$this->_db->query('SELECT COUNT(*) FROM persos WHERE id = ' . $info)->fetchColumn();
        }
            // Sinon on vérifie que que le nom existe ou pas
            // Exécution d'une requête COUNT() avec une clause WHERE, et retourne un boolean.
            $q = $this->_db->prepare('SELECT COUNT(*) FROM persos WHERE nom = :nom');
            $q->execute([':nom' => $info]);
            //si il retourne true c'est que le nom existe
            return (bool)$q->fetchColumn();
        /*
                nom
        +-----------------+
        |     |: nom|     | <---+  fetchColumn(); WHERE nom = :nom
        +-----------------+
        |     |     |     |
        |     |  x  |     | <---+
        +-----+-----+-----+
        */

    }


    // compte le nombre de personnages créés
    public function count()
    {
        // execute une requete COUNT() et retourne le nombre de resultats retournés
        return $this->_db->query('SELECT COUNT(*) FROM persos')->fetchColumn();
    }

    // fonction de recupérations les infos du perso
    public function getPerso($info)
    {
        // Si le paramètre est un entier, on veut récupérer le personnage avec son identifiant.
        // Exécute une requête de type SELECT avec une clause WHERE, et retourne un objet Personnage.

        if (is_int($info))
        {
            $q = $this->_db->query('SELECT id, nom, degats FROM persos WHERE id = '.$info);
            $datas = $q->fetch(PDO::FETCH_ASSOC);

            return new Personnage($datas);
        }
        else
        {
            $q = $this->_db->prepare('SELECT id, nom, degats FROM persos WHERE nom = :nom');
            $q->execute([':nom' => $info]);

            return new Personnage($q->fetch(PDO::FETCH_ASSOC));
        }
        // Sinon, on veut récupérer le personnage avec son nom.
        // Exécute une requête de type SELECT avec une clause WHERE, et retourne un objet Personnage.

    }

   /* public function getList($nom)
    {
        $persos = [];

        $q = $this->_db->prepare('SELECT id, nom, degats FROM persos WHERE nom = :nom ORDER BY nom');
        $q->execute([':nom' => $nom]);

        while ($datas = $q->fetch(PDO::FETCH_ASSOC))
        {
            $persos[] = new Personnage($datas);
        }

        return $persos;
    } */

    public function getList()
    {
        $persos = [];

        $q = $this->_db->query('SELECT id, nom, degats FROM persos');


        while ($datas = $q->fetch(PDO::FETCH_ASSOC))
        {
            $persos[] = new Personnage($datas);
        }

        return $persos;
    }

    public function update(Personnage $perso)
    {
        $q = $this->_db->prepare('UPDATE persos SET degats = :degats WHERE id = :id');

        $q->bindValue(':degats', $perso->getDegats(), PDO::PARAM_INT);
        $q->bindValue(':id', $perso->getId(), PDO::PARAM_INT);

        $q->execute();
    }

}