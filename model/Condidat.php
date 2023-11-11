<?php

class Condidat extends CRUD {

    protected $table = 'condidat';
    protected $primaryKey = 'id';

    protected $fillable = ['id', 'nom', 'prenom', 'date_naissance', 'email', 'adresse'];


}

?>