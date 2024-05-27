<?php
// Connexion à la base de données (à adapter avec vos paramètres)
try {
    $bdd = new PDO('mysql:host=localhost;dbname=iut', 'root', '');
} catch (Exception $e) {
    die('Erreur: ' . $e->getMessage());
}


// Vérification de la connexion

// Récupérer les documents depuis la base de données
$requete = $bdd->prepare('SELECT * FROM document');
$requete->execute();


    // Afficher chaque document avec un bouton pour visualiser ou télécharger
    while($donnee=$requete->fetch()){
        echo "<div>";
        echo "<h2>" . $donnee["TitreDoc"] . "</h2>";
        
        echo "<a href='documents/" . $donnee["NomDoc"] . "' download><button>Visualiser</button></a>";
        echo "<a href='documents/" . $donnee["NomDoc"] . "' download><button>Télécharger</button></a>";
        echo "</div>";
    }


?>
