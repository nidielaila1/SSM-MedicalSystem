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
            margin-bottom: 20px;
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
    <img  class="logo1"   src="${pageContext.request.contextPath}/pages/images/logo2.png">
    <img src="${pageContext.request.contextPath}/pages/images/1.png">
</div>

<header>
    <h1>OrderInfo</h1>
</header>
<table>
    <tr>
        <th>订单编号</th>
        <th>就诊人身份证号</th>
        <th>就诊人姓名</th>
        <th>医生姓名</th>
        <th>科室名称</th>
        <th>看病日期</th>
        <th>上午下午</th>
        <th>订单时间</th>
        <th>订单状态</th>
    </tr>

    <tr>
        <td><c:out value="${orders.id}"/></td>
        <td><c:out value="${orders.pid}"/></td>
        <td><c:out value="${orders.pname}"/></td>
        <td><c:out value="${orders.doc_name}"/></td>
        <td><c:out value="${orders.dept_name}"/></td>
        <td><c:out value="${orders.visitDate}"/></td>
        <td><c:out value="${orders.visitNoon}"/></td>
        <td><c:out value="${orders.dateTime}"/></td>
        <td><c:out value="${orders.state}"/></td>
    </tr>
</table>

<div>
    <span class="back">  <a href="<c:url value="/orderMethod/findAllOrder"/>">返回</a> </span>
</div>
</body>
</html>