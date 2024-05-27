<!doctype html>
<!DOCTYPE html>
<html>
	<head>
		<title> blog</title>
		<meta charset="utf-8">

			<style type="text/css">
			body{
				width: 600px;
				margin: auto;
			}
			h2{
				background-color: green;
				color: white;
				font-family:"Times New Roman";
				height: 50px;
				padding-top: 20px;
				padding-left: 60px;
			}
			a{
				background-color: blue;
				border: 0.5px solid black;
				color: red;
				font-size: 16;
				font-family: cambria;
				border-radius: 3px;
			}
		</style>
	</head>

	<body>
				<center> <h1> VOS DERNIERS BILLETS </h1></center>
		<?php
			try {
				
				$bdd=new PDO('mysql:host=localhost;dbname=blog','root','');} 
			catch (Exception $e) {  
				die('Erreur :'.$e->getmessage());
				}

			$reponse= $bdd->query('SELECT id_billets, titre_billets, auteur_billet, date_format(date_billets, \'¨%d/%m/%Y à %Hh%imin%ss\') as date_publication_billet FROM billets ORDER BY date_publication_billet ASC LIMIT 0,5');
			while ($donnees=$reponse->fetch()) {  

			?>
			<p>
				<h2>
					<?php echo htmlspecialchars($donnees['titre_billets']);	 ?>
				</h2>
					Publié le
					<?php echo htmlspecialchars($donnees['date_publication_billet']).' par '.htmlspecialchars($donnees['auteur_billet']);	
					$article=$donnees['id_billets']; ?>
					
					<a href="blog_commentaire.php?billet=<?php echo $article;  ?>"> Voir plus </a>
			</p>
			
		<?php
			} 
			$reponse->CloseCursor();

		 ?>

	</body>
</html>