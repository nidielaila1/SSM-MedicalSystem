<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admissionList</title>
    <style>
        a {
            text-decoration: none;
            font-size: 18px;
        }
    </style>
</head>
<body>

<table border="1">
    <tr>
        <th>患者姓名</th>
        <th>科室名称</th>
        <th>申请原因</th>
        <th>当前申请状态</th>
    </tr>
    <c:forEach var="admission" items="${admissions}">
        <tr>
            <td>${admission.pname}</td>
            <td>${admission.dept_name}</td>
            <td>${admission.reason}</td>
            <td>${admission.state}</td>
        </tr>
    </c:forEach>
</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/docIndex.jsp">返回</a>
</p>


</body>
</html>