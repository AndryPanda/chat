<?php
$name = trim($_POST['name']);
$login = trim($_POST['login']);
$pass = trim($_POST['password']);

if(mb_strlen($name) < 5 || mb_strlen($name) > 50){
	echo "Недопустима довжина імені";
	exit();
}
else if(mb_strlen($login) < 5 || mb_strlen($login) > 50){
	echo "Недопустима довжина логіна";
	exit();
}

else if(mb_strlen($pass) < 5 || mb_strlen($pass) > 20){
	echo "Недопустима довжина пароля";
	exit();
}

$pass = md5($pass);

$mysql = new mysqli('chat','root','','chat');
$mysql->query("INSERT INTO `users`(`name`, `login`, `pass`) VALUES('$name', '$login', '$pass')");
$mysql->close();
header('Location: /');

?>