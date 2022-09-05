<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Редактировать</title>
</head>
<body>
   <div class="container">
    <form action="" method="post">
    <h3>Изменить личные данные</h3>
    <input type="text" name="user" value="<?=$user_form['name']?>"><br>
    <input type="date" name="birthday" value="<?=$user_form['birthday']?>"><br><br>
    <input type="submit" name="save" value="Сохранить">

    </form>
   </div> 
</body>
</html>