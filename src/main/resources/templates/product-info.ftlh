<!DOCTYPE html>
<html>
<head>
    <title>PURITYWORLD</title>
    <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #F0F0F0;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 100vh;
                margin: 0;
            }
            h1 {
                text-align: center;
                color: #333333;
                text-shadow: 1px 1px #CCCCCC;
            }

            h4 {
                margin-top: 40px;
                margin-bottom: 20px;
                font-size: 1.2em;
                color: #333333;
            }

            .image-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
            }

            img {
                margin: 10px;
                max-width: 20%;
                height: auto;
            }
            a{
                font-size: 20px;
                color: #666666;
            }
            b {
                font-size: 25px;
                font-weight: bold;
                color: #666666;
            }
        </style>
</head>
<body>
<h1>PURITYWORLD</h1><hr>
<h4>Подробная информация об услуге</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Название услуги: </b>${product.title}<br>
<b>Описание услуги: </b>${product.description}<br>
<b>Цена: </b>${product.price}<br>
<b>Город: </b>${product.city}<br>
<b>Автор: </b><a href="/user/${product.user.id}">${product.user.name}</a><br>
</body>
</html>