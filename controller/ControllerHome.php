<?php


RequirePage::model('CRUD');
RequirePage::model('Condidat');
RequirePage::model('Programme');



class ControllerHome extends Controller {

    public function index(){

      $condidat = new Condidat;
      $selectC = $condidat->select();
      
      $programme = new Programme;
      $selectP = $programme->select();
      
      return Twig::render('home.php', ['condidats' => $selectC, 'programmes' => $selectP]);
      
    }

    public function error($e = null){
        return 'error '.$e;
    }

}

?>