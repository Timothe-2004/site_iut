<?php
// Connexion à la base de données (à adapter avec vos paramètres)

try {
    $bdd = new PDO('mysql:host=localhost;dbname=iut', 'root', '');
} catch (Exception $e) {
    die('Erreur: ' . $e->getMessage());
}


// Traitement du formulaire
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titre = $_POST["titre"];
    $fichier_nom = $_FILES["fichier"]["name"];
    $fichier_tmp = $_FILES["fichier"]["tmp_name"];
    $dossier_destination = "documents/";

    // Déplacer le fichier vers le dossier de destination
    move_uploaded_file($fichier_tmp, $dossier_destination . $fichier_nom);

    // Enregistrer les informations dans la base de données
    $donnees = $bdd->prepare('INSERT INTO document (TitreDoc, NomDoc) VALUES (?, ?)');
    $donnees->execute(array($titre, $fichier_nom));
   
}


?>
