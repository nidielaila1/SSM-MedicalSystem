<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Info</title>
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
    <h1>OrderInfo</h1>
</header>
<table>
    <tr>
        <th>医生编号</th>
        <th>医生姓名</th>
        <th>医生性别</th>
        <th>医生职称</th>
        <th>所属科室名称</th>
        <th>医生履历</th>
        <th>医生详细信息</th>
    </tr>

    <tr>
        <td><c:out value="${doctor.id}"/></td>
        <td><c:out value="${doctor.doc_name}"/></td>
        <td><c:out value="${doctor.doctor_gender}"/></td>
        <td><c:out value="${doctor.doctor_title}"/></td>
        <td><c:out value="${doctor.dept_name}"/></td>
        <td><c:out value="${doctor.doctor_career}"/></td>
        <td><c:out value="${doctor.doctor_about}"/></td>
    </tr>
</table>

<div>
    <span class="back">  <a href="<c:url value="/doctorMethod/findAllDoc"/>">返回</a> </span>
</div>
</body>
</html>