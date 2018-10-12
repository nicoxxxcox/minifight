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

    /**
     * Fonction qui créé automatiquement les fonctions de setter
     * @param array $datas
     */
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
    public function frapper($perso)
    {
        if ($perso->getId() == $this->_id)
        {
            return self::CEST_MOI;
        }

        // On indique au personnage qu'il doit recevoir des dégâts.
        // Puis on retourne la valeur renvoyée par la méthode : self::PERSONNAGE_TUE ou self::PERSONNAGE_FRAPPE
        return $perso->recevoirDegats();
    }

    public function recevoirDegats()
    {
        $this->_degats += 5;

        // Si on a 100 de dégâts ou plus, on dit que le personnage a été tué.
        if ($this->_degats >= 100)
        {
            return self::PERSONNAGE_TUE;
        }

        // Sinon, on se contente de dire que le personnage a bien été frappé.
        return self::PERSONNAGE_FRAPPE;
    }



    //GETTERS
    public function getDegats()
    {
        return $this->_degats;
    }

    public function getVie()
    {
        return 100 - $this->_degats;
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

    public function nomValide()
    {
        return !empty($this->_nom);
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