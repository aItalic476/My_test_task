<?php


$stmt=$my_db->prepare("SELECT * FROM `persons`");
$stmt->execute();
$customers=$stmt->fetchall();

?>