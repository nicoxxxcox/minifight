<?php
class autoloader
{
    static public function autoload()
    {
        spl_autoload_register(array(__CLASS__,'chargerClasse'));
    }
// On enregistre notre autoload.
    static function chargerClasse($classname)
    {
        require 'classes/'.$classname . '.class.php';
    }






}
