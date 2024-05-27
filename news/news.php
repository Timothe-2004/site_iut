<?php
// Récupérer les données de la base de données
try {
  $bdd = new PDO('mysql:host=localhost;dbname=iut', 'root', '');
  $requete = $bdd->prepare('SELECT * FROM news');
  $requete->execute();
  $evenements = $requete->fetchAll(PDO::FETCH_ASSOC);
} catch (Exception $e) {
  die("Error: " . $e->getMessage());
}

// Afficher les événements et leurs images
foreach ($evenements as $article) { // Correction de la variable utilisée dans la boucle
  echo "<h2>{$article['TitreNews']}</h2>";
  echo "<p>Date : {$article['TexteNews']}</p>";
  echo "<p>Heure : {$article['DateNews']}</p>";

  echo "<img src='{$article["ImgNews"]}' alt='Image événement'>"; 
  
  echo"<br/> <br/>";
}

?>
