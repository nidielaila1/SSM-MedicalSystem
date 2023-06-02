<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admissionList</title>
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
    <h1>admissionList</h1>
</header>

<table>
    <thead>
    <tr>
        <th>患者姓名</th>
        <th>科室名称</th>
        <th>申请原因</th>
        <th>当前申请状态</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="admission" items="${admissions}">
        <tr>
            <td>${admission.pname}</td>
            <td>${admission.dept_name}</td>
            <td>${admission.reason}</td>
            <td>${admission.state}</td>
            <td>
                <span>   <a href="${pageContext.request.contextPath}/managerMethod/handleAdmission?id=${admission.id}&state=同意">同意</a>  </span>
                <span>  <a href="${pageContext.request.contextPath}/managerMethod/handleAdmission?id=${admission.id}&state=拒绝">拒绝</a>  </span>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<div>
    <span class="back"> <a href="${pageContext.request.contextPath}/pages/adminIndex.jsp">返回</a> </span>
</div>


</body>
</html>