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
      width: 55%;
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
      font-size: 19px;
    }

    span{
      display: inline-block;
      padding: 10px;
      background-color: #e99292;
      border-radius: 10px;
    }

    a:hover{
      color: red;
    }
    .bu{
      margin-left: 180px;
    }
    .back{
      padding: 12px;
      background-color: rgb(31, 130, 141);
      position: absolute;
      left: 170px;
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
  <h1>doctorList</h1>
</header>

<table>
  <tr>
    <th>医生</th>
    <th>操作</th>
  </tr>
  <c:forEach var="doctor" items="${doctors}">
    <tr>
      <td>${doctor.doc_name}</td>
      <td>
        <span class="bu"> <a href="${pageContext.request.contextPath}/workDayMethod/queryWorkDayByDocId?doc_id=${doctor.id}">工作日信息</a> </span>
        <span class="bu" > <a href="${pageContext.request.contextPath}/doctorMethod/findDocById?id=${doctor.id}">具体信息</a> </span>
      </td>
    </tr>
  </c:forEach>
</table>

<div>
  <span class="back"> <a href="<c:url value="/deptMethod/findAllDept"/>"> 返回 </a> </span>
</div>
</body>
</html>