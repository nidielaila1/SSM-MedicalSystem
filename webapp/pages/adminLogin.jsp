<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
    <style>
        body {
            background-image: url('${pageContext.request.contextPath}/pages/images/3.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            background-image: linear-gradient(rgba(255, 255, 255, 0.8), rgba(255, 255, 255, 0.8)), url('https://i.imgur.com/8TojYvM.jpg');
            background-size: cover;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            margin: 60px auto;
            max-width: 400px;
            padding: 20px;

        }

        h1 {
            font-size: 40px;
            margin-bottom: 20px;
            text-align: center;
            font-family: 'Indie Flower', cursive;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 18px;
            margin-bottom: 10px;
        }

        input[type="text"], input[type="password"] {
            background-color: #f2f2f2;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            margin-bottom: 20px;
            padding: 10px;
        }

        input[type="submit"] {
            background-color: rgb(73, 150, 159);
            border: none;
            border-radius: 5px;
            color: #fff;
            cursor: pointer;
            font-size: 18px;
            padding: 10px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: rgb(121, 177, 230);
        }

        img {
            margin: 0;
            padding: 5px;
        }


        .logo {
            margin-top: 50px;
            text-align: center;
        }

        .error {
            color: red;
            font-weight: bold;
            margin-bottom: 10px;
        }

        a {
            color: #4CAF50;
            text-decoration: none;
            font-weight: bold;
            margin-top: 10px;
        }

        a:hover {
            color: #2E8B57;
        }
    </style>

</head>
<body>
<div class="logo">
    <img width="160px" height="160px" src="${pageContext.request.contextPath}/pages/images/logo2.png">
</div>
<div class="container">
    <h1>纯鹿仁医疗系统</h1>
    <script>
        <c:if test="${not empty error}">
        const errorMessage = "${error}";
        const errorDiv = document.createElement('div');
        errorDiv.className = 'error';
        errorDiv.innerHTML = errorMessage;
        document.body.appendChild(errorDiv);
        </c:if>
    </script>

    <form action="<c:url value="/managerMethod/adminLogin"/>" method="post">
        <label for="account">用户名：</label>
        <input type="text" id="account" name="account" required>

        <label for="password">密码：</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="登录">
    </form>
</div>


</body>
</html>
