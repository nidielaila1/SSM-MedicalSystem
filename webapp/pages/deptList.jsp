<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: rgb(73,150,159);
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
            white-space: nowrap;
        }
        th {
            text-align: center;
            background-color: rgb(121, 177, 230);
            color: #fff;
        }
        a{
            text-decoration: none;
            color: #fff;
            font-family:Arial, sans-serif;
            font-size: 17px;
        }
        span{
            display: inline-block;
            padding: 8px;
            background-color: #e99292;
            border-radius: 10px;
        }
        a:hover{
            color: red;
        }

        .back{
            padding: 13px;
            background-color: rgb(31, 130, 141);
            position: absolute;
            left: 180px;
            bottom: 50px;
        }
        .logo{
            margin-bottom: 10px;
            text-align: center;
        }
        .logo1{
            width:120px;
            height:120px;
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
    <h1>科室信息</h1>
</header>
<table>
    <thead>
    <tr>
        <th>科室id</th>
        <th>科室名称</th>
        <th>医生数量</th>
        <th>科室信息</th>
        <th>诊断范围</th>
        <th>操作</th>
    </tr>
    <thead>
    <tbody>
    <c:forEach var="dept" items="${depts}">
        <tr>
            <td>${dept.id}</td>
            <td>${dept.dept_name}</td>
            <td>${dept.doctor_num}</td>
            <td>${dept.dept_about}</td>
            <td>${dept.dept_diagnosis_scope}</td>
            <td>
                <span>
                    <a href="${pageContext.request.contextPath}/doctorMethod/findDocByDeptName?dept_name=${dept.dept_name}">查看医生</a>
                </span>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div>
    <span class="back"> <a href="${pageContext.request.contextPath}/pages/Index.jsp">返回</a> </span>
</div>
</body>
</html>