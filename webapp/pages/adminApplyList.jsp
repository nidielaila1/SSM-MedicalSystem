<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>申请列表</title>
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
    <h1>申请列表</h1>
</header>

<table>
    <tr>
        <th>id</th>
        <th>医生姓名</th>
        <th>原因</th>
        <th>申请</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach var="apply" items="${applies}">
        <tr>
            <td>${apply.id}</td>
            <td>${apply.doc_name}</td>
            <td>${apply.reason}</td>
            <td>${apply.request}</td>
            <td>${apply.state}</td>
            <td>
                <span>  <a href="${pageContext.request.contextPath}/managerMethod/handleApply?id=${apply.id}&docId=${apply.doc_id}&wid=${apply.wid}&request=${apply.request}&time=${apply.applyTime}&state=同意">同意</a> </span>
                <span>  <a href="${pageContext.request.contextPath}/managerMethod/handleApply?id=${apply.id}&docId=${apply.doc_id}&wid=${apply.wid}&request=${apply.request}&time=${apply.applyTime}&state=拒绝">拒绝</a> </span>
            </td>
        </tr>
    </c:forEach>
</table>

<p>
    <span class="back">  <a href="${pageContext.request.contextPath}/pages/adminIndex.jsp">返回</a> </span>
</p>


</body>
</html>