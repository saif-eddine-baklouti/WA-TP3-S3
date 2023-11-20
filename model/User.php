<?php
    
class User extends CRUD {

    protected $table = 'user';
    protected $primaryKey = 'id';

    protected $fillable = ['username', 'password', 'privilege_id', 'tempPassword'];

    public function checkUser($username, $password = null){

        $sql = "SELECT * FROM $this->table WHERE username = ?";
        $stmt = $this->prepare($sql);
        $stmt->execute(array($username));
        $count = $stmt->rowCount();

        if($count === 1){
            $salt = "@Z__9U__8n1_A6Z#@__H";
            $saltPassword = $password.$salt;
            $info_user = $stmt->fetch();

            if($password != null){
                // check password
                if(password_verify($saltPassword, $info_user['password'])){
                    //session
                    session_regenerate_id();
                    $_SESSION['user_id'] = $info_user['id'];
                    $_SESSION['username'] = $info_user['username'];
                    $_SESSION['privilege'] = $info_user['privilege_id'];
                    $_SESSION['fingerPrint'] = md5($_SERVER['HTTP_USER_AGENT'].$_SERVER['REMOTE_ADDR']);

                    if ($_SESSION['privilege'] == 1) {
                        RequirePage::url('/user');
                        exit();
                    }
                    RequirePage::url('/home');
                    exit();

                }else{
                    $errors = "<ul><li>Verifier le mot de passe</li></ul>";
                    return $errors;
                }
            }else{

                $tempPassword = uniqid();

                $user['id'] = $info_user['id'];
                $user['tempPassword']=$tempPassword; 
                $this->update($user);

                $sql = "UPDATE $this->table SET tempPassword = ? WHERE id = ?";
                $stmt = $this->prepare($sql);
                $stmt->execute(array($tempPassword,  $info_user['id']));

                $lien = "<p>Cliquez sur le lien suivant <a href='http://localhost/sommatif/WA/WA-TP3-S3/login/newPassword&user=".$info_user['id']."&temp=$tempPassword'>Click ici</a> , comme cela devrait être possible de créer un nouveau mot de passe.</p>";
                
                return $lien;
            }
        }else{
            $errors = "<ul><li>Verifier le username</li></ul>";
            return $errors; 
        }
    }

    public function checkTempPassword($id, $tempPassword){
        $sql = "SELECT * FROM $this->table WHERE id = ? AND tempPassword = ?";
        $stmt = $this->prepare($sql);
        $stmt->execute(array( $id, $tempPassword));
        $count = $stmt->rowCount();
        return $count;
    }
}

?>