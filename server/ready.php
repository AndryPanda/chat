<?php
$mysql = new mysqli('chat','root','','chat');

$result = $mysql->query("SELECT * FROM `comments` ORDER BY `time` ");

$user = $result->fetch_assoc();

foreach ($result as $key) {
	echo $key['name'].': '.$key['comment'].' - '.$key['time'].'<br>';
	// code...
}
setcookie('comment', $user['comment'], time() + 600, "/");

$mysql->close();

?>