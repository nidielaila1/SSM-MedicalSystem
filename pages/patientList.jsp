<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script>
        // 确认删除提示框
        function confirmDelete(pname) {
            return confirm("确定要删除就诊人 " + pname + "？");
        }
    </script>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: rgb(73, 150, 159);
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        h1 {
            margin: 0;
            font-size: 36px;
        }

        table {
            border-collapse: collapse;
            margin: 20px auto;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        th {
            text-align: center;
            background-color: rgb(121, 177, 230);
            color: #fff;
        }

        a {
            text-decoration: none;
            color: #fff;
            font-family: Arial, sans-serif;
            font-size: 17px;
        }

        span {
            display: inline-block;
            padding: 8px;
            margin-left: 20px;
            background-color: #e99292;
            border-radius: 10px;
        }

        a:hover {
            color: red;
        }

        .back {
            padding: 13px;
            background-color: rgb(31, 130, 141);
            position: absolute;
            left: 180px;
            bottom: 50px;
        }

        .logo {
            margin-bottom: 20px;
            text-align: center;
        }

        .logo1 {
            width: 120px;
            height: 120px;
            margin-right: 250px;
        }

    </style>
</head>
<body>

<div class="logo">
    <img class="logo1" src="${pageContext.request.contextPath}/pages/images/logo2.png">
    <img src="${pageContext.request.contextPath}/pages/images/1.png">
</div>


<header>
    <h1>PatientList</h1>
</header>

<table>
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>性别</th>
        <th>用户与就诊人的关系</th>
        <th>操作</th>
    </tr>
    <c:forEach var="patient" items="${patients}">
        <tr>
            <td>${patient.id}</td>
            <td>${patient.pname}</td>
            <td>${patient.gender}</td>
            <td>${patient.con}</td>
            <td>
                <span> <a
                        href="${pageContext.request.contextPath}/userMethod/choseOnePatient?id=${patient.id}">修改就诊人</a><br>  </span>
                <span> <a href="${pageContext.request.contextPath}/userMethod/deletePatient?id=${patient.id}"
                          onclick="return confirm('确定要删除吗？');">删除就诊人</a>   </span>
            </td>
        </tr>
    </c:forEach>
</table>
<span class="back"> <a href=${pageContext.request.contextPath}/pages/userAddPatient.jsp>添加就诊人</a> </span>
</body>
</html>
