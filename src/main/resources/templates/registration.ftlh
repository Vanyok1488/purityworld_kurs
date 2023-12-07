<!DOCTYPE html>
<html>
<head>
    <title>PURITYWORLD</title>
    <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f0f0f0;
                margin: 0;
                padding: 0;
            }
            h1 {
                text-align: center;
                font-size: 48px;
                color: #333;
                margin-top: 50px;
            }
            hr {
                border: none;
                border-top: 2px solid #333;
                margin-bottom: 50px;
            }
            h4 {
                text-align: center;
                font-size: 24px;
                color: #333;
                margin-left: 20px;
            }
            form {
                max-width: 500px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.2);
            }
            label {
                display: block;
                margin-bottom: 10px;
            }
            input[type="text"],
            input[type="email"],
            input[type="password"] {
                width: 96%;
                padding: 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
                margin-bottom: 20px;
                font-size: 16px;
            }
            input[type="submit"] {
                background-color: #006DFE;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
            }
            input[type="submit"]:hover {
                background-color: #024252;
            }
            h2 {
                color: red;
                margin-top: 20px;
            }

        </style>
</head>
<body>
<h1>PURITYWORLD</h1><hr>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя пользователя: <input type="text" name="name"><br><br>
    Эл. почта: <input type="email" name="email"><br><br>
    Номер телефона: <input type="text" name="phoneNumber"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Зарегистрироваться"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>