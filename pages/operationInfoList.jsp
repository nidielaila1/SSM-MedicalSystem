<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OperationList</title>
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
            margin-bottom: 25px;
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
    <h1>OperationInfoList</h1>
</header>


<table>
    <tr>
        <th>手术订单号</th>
        <th>就诊人身份证</th>
        <th>就诊人姓名</th>
        <th>手术时间</th>
    </tr>
    <c:forEach var="operationInfo" items="${operationInfos}">
        <tr>
            <td>${operationInfo.id}</td>
            <td>${operationInfo.pid}</td>
            <td>${operationInfo.pname}</td>
            <td>${operationInfo.operationTime}</td>
        </tr>
    </c:forEach>
</table>

<div>
    <span class="back">  <a href="${pageContext.request.contextPath}/pages/userIndex.jsp">返回</a>  </span>
</div>


</body>
</html>