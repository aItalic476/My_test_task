<?php
$adress='localhost';
$db='test_task';
$user_name='root';
$charset ='utf8';
$pass ='';

$dsn ="mysql:host=$adress;dbname=$db;charset=$charset";

$opt = [
    PDO::ATTR_DEFAULT_FETCH_MODE=>PDO::FETCH_ASSOC
];

$my_db = new PDO($dsn,$user_name,$pass,$opt);

?>