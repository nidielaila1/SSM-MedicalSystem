<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hospitalStayList</title>
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
        td{
            text-align: left;
        }
        th {
            background-color: rgb(121, 177, 230);
            color: #fff;
            text-align: center;
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
<h1>hospitalStayList</h1>
</header>

<table>
    <tr>
        <th>ID</th>
        <th>房间信息</th>
        <th>床位号</th>
        <th>住院状态</th>
        <th>入院日期</th>
        <th>操作</th>
    </tr>
    <c:forEach var="hospitalStay" items="${hospitalStays}">
        <tr>
            <td>${hospitalStay.id}</td>
            <td>${hospitalStay.room}</td>
            <td>${hospitalStay.bed}</td>
            <td>${hospitalStay.state}</td>
            <td>${hospitalStay.admissionDate}</td>
            <td>
                <span> <a href="${pageContext.request.contextPath}/pages/docAddLeaveHosApply.jsp?hosStayId=${hospitalStay.id}">申请出院</a> </span>
                <span> <a href="${pageContext.request.contextPath}/pages/docAddOperationRequest.jsp?hosStayId=${hospitalStay.id}">申请手术</a> </span>
            </td>
        </tr>
    </c:forEach>


</table>

<div>
    <span class="back"> <a href="${pageContext.request.contextPath}/pages/docIndex.jsp">返回</a> </span>
</div>


</body>
</html>