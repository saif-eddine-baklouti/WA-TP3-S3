<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

    class Mail{
        private $senderName;
        private $senderEmail;
        private $password;
        private $SMTPhost;

        public function __construct($senderName,$senderEmail,$password,$SMTPhost = 'smtp.gmail.com')
        {
            
            require_once('./vendor/phpmailer/phpmailer/src/PHPMailer.php');
            $this->senderName = $senderName;
            $this->senderEmail = $senderEmail;
            $this->password = $password;
            $this->SMTPhost = $SMTPhost;
        }
        
        public function sendMail($reciever,$subject = "Test subject",$body = "Test body"){
            
        require_once('./vendor/phpmailer/phpmailer/src/PHPMailer.php');

            $mail = new PHPMailer;
            // $mail->SMTPDebug = 2;                               // Enable verbose debug output
            $mail->isSMTP();                                      // Set mailer to use SMTP
            $mail->Host =  $this->SMTPhost;                            // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = $this->senderEmail;                 // SMTP username
            $mail->Password = $this->password;                           // SMTP password
            $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;                                    // TCP port to connect to

            $mail->setFrom('info@ecole.com', 'Administrateur');
            $mail->addAddress($reciever);                     // Add a recipient

            $mail->addReplyTo('info@ecole.com');
        
            $mail->isHTML(true);                                  // Set email format to HTML

            $mail->Subject = $subject;
            $mail->Body    = $body;
            $mail->AltBody = $body;
            $mail->send();
        }
    }
?>