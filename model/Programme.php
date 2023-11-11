<?php

class Programme extends CRUD {

    protected $table = 'programme';
    protected $primaryKey = 'id';

    protected $fillable = ['nom_programme','description'];
}

?>