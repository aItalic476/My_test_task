<?php
$user_id = isset($_GET['edit'])?$_GET['edit']:"";
$stmt=$my_db->prepare("SELECT `name`,`birthday` FROM `persons` WHERE `id`='$user_id'");
$stmt->execute();
$user_form=$stmt->fetch();
if(isset($_GET['edit']))
if($_POST){
    $stmt=$my_db->prepare("UPDATE `persons` SET `name`=:user, `birthday`=:birthday WHERE `id`='$user_id'");
    $stmt->execute(['user'=>$_POST['user'], 'birthday'=>$_POST['birthday']]); 
    echo("<script>alert('Изменения сохранены'); location.href='index.php'</script>");
}
?>