<!DOCTYPE html>
<html>
<head>
    <title>PURITYWORLD</title>
    <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f5f5f5;
            }
            h1 {
                text-align: center;
                margin-top: 20px;
            }

            hr {
                border: none;
                height: 1px;
                background-color: #ccc;
                margin-top: 10px;
                margin-bottom: 10px;
            }

            h3 {
                margin-top: 20px;
                margin-bottom: 10px;
            }

            form {
                margin-top: 10px;
            }

            input[type="text"],
            input[type="number"] {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                margin-bottom: 5px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }

            input[type="submit"] {
                background-color: #006DFE;
                color: white;
                border: none;
                padding: 8px;
                border-radius: 4px;
                cursor: pointer;
                top: 10px;
            }

            input[type="submit"]:hover {
                background-color: #024252;
            }

            div {
                margin-top: 10px;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #fff;
            }

            p {
                margin: 0;
            }

            a {
                background-color: #006DFE;
                border: none;
                padding: 7px;
                border-radius: 4px;
                cursor: pointer;
                color: white;
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
                background-color: #024252;
            }

            .error {
                color: red;
                font-weight: bold;
                margin-top: 5px;
            }
        </style>
</head>
<body>
<h1>PURITYWORLD</h1>
<hr>
<#if user.email??>
    <h3>Имя пользователя: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
    <#if user.isAdmin()>
        <a href="/admin">Панель администратора</a>
    </#if>
<#else>
    <a href="/login">Войти</a></h1>
</#if>
<hr>
<h4>Услуги со всей России</h4>
<form action="/" method="get">
    Поиск по названию услуги: <input type="text" name="title">
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} руб. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Услуг нет</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Добавить новую услугу</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название объявления: <input type="text" name="title"/><br><br>
        Описание объявления: <input type="text" name="description"/><br><br>
        Цена: <input type="number" name="price"/><br><br>
        Город: <input type="text" name="city"/><br><br>
        Первая фотография: <input type="file" name="file1"/><br><br>
        Вторая фотография: <input type="file" name="file2"/><br><br>
        Третья фотография: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Добавить товар"/>
    </form>
</#if>
</body>
</html>