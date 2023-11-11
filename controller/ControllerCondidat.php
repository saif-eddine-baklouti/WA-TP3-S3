<?php

RequirePage::model('CRUD');
RequirePage::model('Condidat');
RequirePage::model('Programme');




class ControllerCondidat extends controller {

    public function index(){

    }

    public function create(){

        return Twig::render('condidat-create.php');
        
    }

    public function store(){

        $condidat = new Condidat;
        $insert = $condidat->insert($_POST);
        

        return Twig::render('condidat-store.php');

    }

    public function edit($id){
        $condidat = new Condidat;
        $selectId = $condidat->selectId($id);

        return Twig::render('condidat-edit.php', ['condidat'=>$selectId]);
    }
    public function update(){

        $condidat = new Condidat;
        $update = $condidat->update($_POST);

        
        return Twig::render('condidat-update.php');
    }
    
    public function destroy($id){

        $condidat = new Condidat;
        $update = $condidat->delete($id);

        header('Location: ' . $_SERVER['HTTP_REFERER']);

    }
}

?>