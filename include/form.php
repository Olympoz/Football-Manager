<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="styles.css">
	<meta charset="utf-8">
	<title>Football Manager ONLINE</title>
</head>
<body>
<header><center>
	<div>FOOTBALL MANAGER ONLINE </div>
	<button class="hamburger">&#9776;</button>
	<button class="cross">&#735;</button>
	</center>
</header>

<div class="menu">
	<ul>
		<a href="index.php"><li>Accueil</li></a>
		<a href="equipes.php"><li>Equipes</li></a>
		<a href="creationequipes.php"><li>Creation Equipe</li></a>
		<a href="match.php"><li>Match</li></a>
	</ul>
</div>

<div class="contenu">
<p>

	<form action="#" method="post">
	<label for="">Modification de l'article</label>
	<br>
	<br>
	<input type ="hidden" name="article_id" value="'.$article['id'].'">
	<label for="">Titre de l'article</label>
	<br>
	<input type="text" name="nom" placeholder="Modifier le titre ...">
	<br>
	<br>
	<label for="">Contenu</label>
	<br>
	<textarea name="contenu" id="" cols="30" rows="10" placeholder="Modifier le contenu ..." ></textarea>>
	<br>
	<br>
	<label for="">Date</label>
	<br>
	<input type="date" name="nom" placeholder="Date">
	<br>
	<br>
	<input type="submit">
	</form>
	<form action="http://localhost/Blog/index.php" method="link">
	<input type="submit" value="Resultat">
	</form>

</p>	
</div>

<div class="pieddepage">
<p>

</p>	
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="main.js"></script>
</html>