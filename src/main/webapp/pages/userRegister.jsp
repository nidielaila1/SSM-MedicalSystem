<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <style>
        body{
            background-color: #F8F9FA;
            font-family: Arial,sans-serif;
        }
        h1 {
            color: #333;
            text-align: center;
        }

        .container {
            width: 50%;
            margin: auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        }

        label {
            display: inline-block;
            width: 150px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"], input[type="password"] {
            padding: 10px;
            border-radius: 5px;
            border: none;
            margin-bottom: 20px;
            width: 100%;
            box-sizing: border-box;
            font-size: 16px;
            background-color: #eee;
        }

        input[type="submit"] {
            background-color: #008CBA;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #006DAB;
        }

        input[type="radio"] {
            margin-right: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <form action="<c:url value="/userMethod/register"/>" method="post">
        <label for="id">身份证号：</label>
        <input type="text" id="id" name="id" required><br>

        <label for="username">用户名：</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">密码：</label>
        <input type="password" id="password" name="password" required><br>

        <label for="phone">电话号码：</label>
        <input type="text" id="phone" name="phone" required><br>

        <label>性别：</label>
        <input type="radio" name="gender" value="男" checked="checked"/>男
        <input type="radio" name="gender" value="女"/>女<br>


        <input type="submit" value="提交">
    </form>
</div>

</body>
</html>
