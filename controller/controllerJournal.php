<?php


RequirePage::model('CRUD');
RequirePage::model('Log');


class ControllerJournal extends Controller {

    public function index(){


        $journal = new Log();
        
        $log = [
            'adresse_IP' => $_SERVER['REMOTE_ADDR'],
            'date' => date('Y-m-d H:i:s'),
            'nom' => isset($_SESSION['username']) ? $_SESSION['username'] : null,
            'guest' => isset($_SESSION['username']) ? null : 'guest',
            'pages_visitees' => implode(', ', array_keys($_SERVER))
        ];

        $id = $journal->insert($log);
        $journalBoard = $journal->selectId($id);

        return Twig::render('boardJournal.php',['journal' => $journalBoard]);
        
    }

    public function error($e = null){
        return 'error '.$e;
    }

}

?>