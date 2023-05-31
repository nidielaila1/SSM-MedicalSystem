<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        /* 将 body 的高度设置为视口高度，以便垂直居中 */
        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* 外部容器样式 */
        .container {
            width: 400px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 5px;
            box-shadow: 0 2px 6px rgba(0,0,0,.1);
        }

        /* 表单元素样式 */
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px;
        }

        input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-shadow: inset 0 1px 3px #ddd;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #2E8B57;
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

<div class="container">
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
