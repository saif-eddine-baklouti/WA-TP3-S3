<?php
require_once("CRUD.php");

class Log extends CRUD {

    protected $table = 'Log';
    protected $primaryKey = 'id';
    
    protected $fillable = ['id', 'adresse_IP', 'date', 'nom', 'guest', 'pages_visitees'];

}

?>