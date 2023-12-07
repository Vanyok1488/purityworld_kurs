
<!DOCTYPE html>
<html>
<head>
    <title>PURITYWORLD</title>
    <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f1f1f1;
            }
            h1 {
                text-align: center;
                color: #333;
            }
            hr {
                border: none;
                height: 1px;
                background-color: #ccc;
            }
            h4 {
                text-align: center;
                color: #333;
            }
            form {
                max-width: 400px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            input[type="email"],
            input[type="password"] {
                display: block;
                width: 100%;
                margin-bottom: 10px;
                padding: 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
                box-sizing: border-box;
            }
            input[type="submit"] {
                background-color: #006DFE;
                color: #fff;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
            }
            input[type="submit"]:hover {
                background-color: #024252;
            }
            a {
                display: block;
                text-align: center;
                margin-top: 10px;
            }
        </style>
</head>
<body>
<h1>PURITYWORLD</h1><hr>
<h4>Авторизация</h4>
<form action="/login" method="post">
    Эл. почта: <input type="email" name="username"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<a href="/registration">Зарегистрироваться</a>
</body>
</html>