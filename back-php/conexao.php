<?php
$host = "localhost";
$db   = "mecanica_db";
$user = "root";
$pass = "";

$con = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user, $pass);
$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
?>