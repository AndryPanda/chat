<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Chat</title>
	<link rel="stylesheet" href="/style /style.css">
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<script src="script/script.js"></script>
</head>
<body>
	<?php
	if(count($_COOKIE['user']) >= 1){echo "Ви увійшли як ".$_COOKIE['user'];}
	?>
	<a href="exit.php"> Вийти </a>

	<div class="chatbox">
		<form  action="/server/comments.php" method="post">
		<input class="area" type="text" name ="comment" placeholder="Як справи, <?= $_COOKIE['user']?>?">
		<button class="buttuon" type="submit">GO</button>

	</form>
		<?php
		$mysql = new mysqli('chat','root','','chat');

		$result = $mysql->query("SELECT * FROM `comments` ORDER BY `time` DESC ");

		$comments = $result->fetch_assoc();

 		foreach ($result as $key) {
		echo $key['name'].': '.$key['comment'].'<br>'.$key['time'].'<br>';

		}

		$mysql->close();
		?>
	</div>
</body>
