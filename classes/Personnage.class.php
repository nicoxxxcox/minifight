<?php

class Personnage
{

    private $_id;
    private $_nom;
    private $_degats;


    const CEST_MOI = 1;
    const PERSONNAGE_TUE = 2;
    const PERSONNAGE_FRAPPE = 3;

    /**
     * Personnage constructor. Hydrate les propriétés avec un tableau
     * @param array $datas
     */
    public function __construct(array $datas)
    {
        $this->hydrate($datas);
    }

    public function hydrate(array $datas)
    {
        foreach ($datas as $key => $value) {   // on recupère le nom du setter correspondant à l'attribut
            $method = 'set' . ucfirst($key);
            // si le setter correspondant existe
            if (method_exists($this, $method)) {
                // on appelle le setter
                $this->$method($value);
            }
        }
    }

    /**
     * @param Personnage $perso . object personnage
     * @return int|void
     */
    public function frapper(Personnage $perso)
    {
        // vérifier que l'on ne se frappe pas soit-même
        if ($this->getId() == $this->_id) { //SI c'est le cas, on stoppe tout en revoyant un message
            return self::CEST_MOI;
        }
        // on indique au personnage frappé qu'il reçoit des dégats
        return $perso->recevoirDegats();
    }

    public function recevoirDegats()
    {
        //on augmente les degats de 5.
        $this->_degats += 5;
        if ($this->_degats >= 100) {// SI on à 100 de dégats on renvoit une valeur signifiant que le personnage à été tué
            return self::PERSONNAGE_TUE;
            //SINON , renverra une valeur signifiant que le personnage à bien été frappé
        } else {
            return self::PERSONNAGE_FRAPPE;
        }
    }

    //GETTERS
    public function getDegats()
    {
        return $this->_degats;
    }

    public function getNom()
    {
        return $this->_nom;
    }

    public function getId()
    {
        return $this->_id;
    }

    //SETTERS

    /**
     * @param $degats
     */
    public function setDegats($degats)
    {
        $degats = (int)$degats;
        if ($degats >= 0 && $degats <= 100) {
            $this->_degats = $degats;
        }
    }

    /**
     * @param $nom
     */
    public function setNom($nom)
    {
        if (is_string($nom)) {
            $this->_nom = $nom;
        }
    }

    /**
     * @param $id
     */
    public function setId($id)
    {
        $id = (int)$id;
        if ($id > 0) {
            $this->_id = $id;
        }
    }
}