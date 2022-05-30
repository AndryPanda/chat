<?php
$name = $_COOKIE['user'];
$comment = $_POST['comment'];

echo $name.'<br>';
echo $comment.'<br>';

$mysql = new mysqli('chat','root','','chat');


$mysql->query("INSERT INTO `comments`(`name`, `comment`) VALUES('$name', '$comment')");

$mysql->close();
header('Location: /chat.php');

?>