<?php

RequirePage::model('CRUD');
RequirePage::model('User');
RequirePage::library('Validation');
RequirePage::library('Mail');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


class ControllerLogin extends controller {

    public function index(){
        Twig::render('auth/index.php');
    }

    public function auth(){
        $validation = new Validation;
        extract($_POST);
        $validation->name('utilisateur')->value($username)->max(50)->required();
        $validation->name('mot de passe')->value($password)->max(20)->min(5);

        if(!$validation->isSuccess()){
            $errors =  $validation->displayErrors();
            return Twig::render('auth/index.php', ['errors' =>$errors,  'user' => $_POST]);
            exit();
        }

        $user= new User;
        $checkUser = $user->checkUser($_POST['username'], $_POST['password']);

        Twig::render('auth/index.php', ['errors'=> $checkUser, 'user' => $_POST]);

    }

    public function logout(){
        session_destroy();
        RequirePage::url('/login');
    }

    public function forgot(){
        Twig::render('auth/forgot.php');
    }

    public function tempPass(){
        $validation = new Validation;
        extract($_POST);
        $validation->name('utilisateur')->value($username)->max(50)->required();
    
        if(!$validation->isSuccess()){
            $errors =  $validation->displayErrors();
            return Twig::render('auth/forgot.php', ['errors' =>$errors,  'user' => $_POST]);
            exit();
        }

        $user = new user;
        $checkUser = $user->checkUser($_POST['username']);

        $phpmailer = new Mail("nomEcole","saif.eddine.baklouti@gmail.com","qdgg wkxb hwzi mchp") ;

        $phpmailer->sendMail($emailPass, "nouveau mot de passe", $checkUser);

        return Twig::render('auth/email.php', [  'user' => $_POST]);
        die();

    }

    public function newPassword(){

        $user = new User;
        $check = $user->checkTempPassword($_GET['user'], $_GET['temp']);
        if($check == 1){
            Twig::render('auth/new-password.php', ['id' => $_GET['user']]);
        }else{
            return Twig::render('auth/forgot.php', ['errors'=> 'Verifier vos donnees']); 
        }
    }

    public function newPasswordUpdate(){

        $validation = new Validation;
        extract($_POST);
        $validation->name('mot de passe')->value($password)->max(20)->min(6);
        
        if(!$validation->isSuccess()){
            $errors =  $validation->displayErrors();
        return Twig::render('auth/new-password.php', ['errors' =>$errors, 'id' => $_POST['id']]);
            exit();

        }

            $user = new User;
            $_POST['tempPassword'] = null;
            $options = [
                'cost' => 10
            ];
            $salt = "H3@_l?a";
            $passwordSalt = $_POST['password'].$salt;
            $_POST['password'] =  password_hash($passwordSalt, PASSWORD_BCRYPT, $options);
            
            $user->update($_POST);
            RequirePage::url('/login');
    }
}


?>