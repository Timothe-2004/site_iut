<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $firstName = htmlspecialchars($_POST['firstName']);
    $lastName = htmlspecialchars($_POST['lastName']);
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $message = htmlspecialchars($_POST['message']);

    if ($email) {
        $mail = new PHPMailer(true);

        try {
            // Configuration du serveur SMTP
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'tgoussou2004@gmail.com'; // Remplacez par votre adresse email Gmail
            $mail->Password = 'Timothe-2004'; // Remplacez par votre mot de passe
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;

            // Destinataires
            $mail->setFrom('tgoussou2004@gmail.com', "$firstName $lastName");
            $mail->addAddress('tgoussou2004@gmail.com'); // Remplacez par votre adresse email

            // Contenu de l'email
            $mail->isHTML(false);
            $mail->Subject = "Nouveau message de $firstName $lastName";
            $mail->Body = "Nom: $firstName $lastName\nEmail: $email\n\nMessage:\n$message";

            $mail->send();
            echo 'Message envoyé avec succès.';
        } catch (Exception $e) {
            echo "Échec de l'envoi du message. Mailer Error: {$mail->ErrorInfo}";
        }
    } else {
        echo 'Adresse email invalide.';
    }
} else {
    echo 'Méthode de requête invalide.';
}
?>
