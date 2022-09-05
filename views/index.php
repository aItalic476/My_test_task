<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/style.css">
    
    <title>Тестовое задание</title>
</head>
<body>
<div class="container">
    <?php foreach ($customers as $elem):?>
    <div class="surname"><?=$elem['name']?><br>
    
<button class="btn" data-btn="<?='info'.$elem['id']?>" type="submit" name="birth_date">Показать дату рождения</button>
<button class="btn" type="button" name="edit" onclick="location.href='edit_form.php?edit=<?=$elem['id']?>';">Изменить данные</button>
<div class="dateinfo disabled" id="<?='info'.$elem['id']?>"><?=$elem['birthday']?></div>
   


</div>
        <?php endforeach;?>

        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="assets/script.js"></script>
</body>
</html>