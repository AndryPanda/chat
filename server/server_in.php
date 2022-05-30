<?php
$login = trim($_POST['login']);
$pass = trim($_POST['password']);

$pass = md5($pass);

$mysql = new mysqli('chat','root','','chat');

$result = $mysql->query("SELECT * FROM `users` WHERE `login` = '$login' AND `pass` = '$pass'");
$user = $result->fetch_assoc();
if(count($user) == 0){
	echo "Користувач не знайдений";
	exit();
}
setcookie('user', $user['name'], time() + 600, "/");

$mysql->close();
header('Location: /chat.php');
?>