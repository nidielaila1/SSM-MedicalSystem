<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>orderList</title>
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
            margin-left: 20px;
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
    <h1>orderList</h1>
</header>
<table>
    <thead>
    <tr>
        <th>订单编号</th>
        <th>身份证号</th>
        <th>就诊姓名</th>
        <th>预约医生</th>
        <th>预约科室</th>
        <th>看病日期</th>
        <th>具体时间</th>
        <th>订单时间</th>
        <th>预约状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="order" items="${orders}">
        <tr>
            <td>${order.id}</td>
            <td>${order.pid}</td>
            <td>${order.pname}</td>
            <td>${order.doc_name}</td>
            <td>${order.dept_name}</td>
            <td>${order.visitDate}</td>
            <td>${order.visitNoon}</td>
            <td>${order.dateTime}</td>
            <td>${order.state}</td>
            <td>
                <c:choose>
                    <c:when test="${order.state == '完成'}">
                        <span>
                            <a href="${pageContext.request.contextPath}/pages/docAddAdmission.jsp?pid=${order.pid}&pname=${order.pname}&deptName=${order.dept_name}">申请住院</a>
                            </span>
                    </c:when>
                    <c:otherwise>
                        <span>  <a href="${pageContext.request.contextPath}/docMethod/completeOrder?id=${order.id}">完成</a>  </span>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
    <tbody>
</table>
<div>
    <span class="back"> <a href="${pageContext.request.contextPath}/pages/docIndex.jsp">返回</a> </span>
</div>
</body>
</html>