<?php
try {
$bdd=new PDO('mysql:host=localhost; dbname=iut','root','');
} catch (Exception$e)
 {
   die('Erreur '. $e->getMessage());
}
$req=$bdd->query('SELECT * FROM Alumni ORDER BY IdAlu DESC LIMIT 8');
?>
<!DOCTYPE html>
<html lang="fr">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Institut Universitaire de Technologie de Parakou</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

   

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="js/modernizer.js"></script>

    <style>
        /* Réglez la taille de la section de chaque alumni */
        .our-team {
            width: 200px;
            height: 200px;
            margin: 0 auto;
            overflow: hidden;
            position: relative;
            text-align: center;
        }

        /* Ajustez la taille de l'image */
        .our-team .team-img img {
            width: 200px;
            height: 200px;
            object-fit: cover; /* pour que l'image remplisse bien le conteneur */
        }

        /* Centrez le contenu et ajustez les marges/paddings */
        .our-team .team-content {
            position: absolute;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5); /* optionnel : ajoute un fond semi-transparent */
            color: white; /* couleur du texte */
            width: 100%;
            padding: 5px 0;
            box-sizing: border-box;
        }

        .our-team .team-content h3 {
            margin: 0;
            font-size: 16px; /* ajustez la taille de la police si nécessaire */
        }

        .our-team .team-content .post {
            font-size: 12px; /* ajustez la taille de la police si nécessaire */
            
        }
    </style>
   

</head>
<body class="host_version"> 
	
   

	
	<div class="all-title-box">
		<div class="container text-center">
			<h1>ALUMNI<span class="m_1">Célébrons nos As</span></h1>
		</div>
	</div>
	
	<div id="teachers" class="section wb">
        <div class="container">
            <div class="row">
				
<!--cooooool-->
<?php
    while($donnee=$req->fetch()) { ?>
				<div class="col-lg-3 col-md-6 col-12">
					<div class="our-team">
						<div class="team-img">
							<img src="Section_Alu_Adm/<?php echo $donnee['ImgAlu'];?>">
							<div class="social">
								<ul>
									<li><?php echo $donnee['PromAlu'];?></li><br>
									<li><?php echo $donnee['FilAlu'];?></li><br>
									<li><a href="mailto:<?php echo $donnee['MailAlu'];?>"><img src="images/email.png" alt="photo" title="<?php echo $donnee['MailAlu'];?>"
									></a></li>
									</ul>
							</div>
						</div>
						<div class="team-content">
							<?php if($donnee['SexAlu']=='F')
							{
								?>
							<h3><?php echo 'Mme '. $donnee['NomAlu']. ' '. $donnee['PreAlu'];?></h3>
							<?php
							}else {
								?>
								<h3><?php echo 'Mr '. $donnee['NomAlu']. ' '. $donnee['PreAlu'];?></h3>
							<?php	
							}
							?>
							<span class="post"><?php echo $donnee['DescAlu'];?></span>
						</div>
					</div>
				</div>
				<?php
	}
	?>

            </div><!-- end row -->
        </div><!-- end container -->
		
<button><a href="Section_Alu_Adm/add_alu.php">Ajputer des Alumni</a></button>
 

  
</body>
</html>
   