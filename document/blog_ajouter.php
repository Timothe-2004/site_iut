<!doctype html>
<!DOCTYPE html>
<html>
	<head>
		<title> blog</title>
		<meta charset="utf-8">
	</head>

	<body>
		 <form action="ajout.php" method="POST" enctype="multipart/form-data>
		<p> 
			
			<textarea name="titre" >Saisir le titre du billets</textarea> <br/>

			<textarea name="contenu" >Ecrivez votre billets ici  </textarea> 	<br/>

			<label for="image"> Choisissez une image montrant les moments fort de l'evenement</label>
			<input type="file" name="image" id="image">	<br/>

			<input type="submit" name="Envoyer">
		</p>
	</form>

	</body>
</html>