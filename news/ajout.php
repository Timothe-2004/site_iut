<?php
try {
    $bdd = new PDO('mysql:host=localhost;dbname=iut', 'root', '');
} catch (Exception $e) {
    die('Erreur: ' . $e->getMessage());
}

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES['image']) && ($_FILES['image']['error']) == 0) {
    if ($_FILES['image']['size'] <= 10485760) {
        $infosfichier = pathinfo($_FILES['image']['name']);
        $extension_upload = $infosfichier['extension'];
        $extension_autorisees = array('jpg', 'jpeg', 'png');

        if (in_array($extension_upload, $extension_autorisees)) {
            $filename = "image/" . strtolower(pathinfo($_FILES['image']['name'], PATHINFO_FILENAME)) . "." . $extension_upload;
            move_uploaded_file($_FILES['image']['tmp_name'], $filename);

            $donnees = $bdd->prepare('INSERT INTO news (TitreNews, TexteNews, ImgNews, DateNews) VALUES (?, ?, ?, now())');
            $donnees->execute(array($_POST['titre'], $_POST['contenu'], $filename));

            header('Location: news.php');
            exit();
        } else {
            echo "Extension de fichier non autorisée.";
        }
    } else {
        echo "La taille du fichier est trop grande.";
    }
} else {
    echo "Veuillez remplir tous les champs et choisir une image.";
}
?>
