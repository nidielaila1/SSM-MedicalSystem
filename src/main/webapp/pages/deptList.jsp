<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        a{
            text-decoration: none;
            font-size: 20px;
        }
    </style>
</head>
<body>
<h1>DeptList</h1>
<table border="1">
    <tr>
        <th>科室id</th>
        <th>科室名称</th>
        <th>科室中医生的数量</th>
        <th>科室的信息</th>
        <th>科室诊断范围</th>
        <th>操作</th>
    </tr>
    <c:forEach var="dept" items="${depts}">
        <tr>
            <td>${dept.id}</td>
            <td>${dept.dept_name}</td>
            <td>${dept.doctor_num}</td>
            <td>${dept.dept_about}</td>
            <td>${dept.dept_diagnosis_scope}</td>
            <td>
                <a href="${pageContext.request.contextPath}/doctorMethod/findDocByDeptName?dept_name=${dept.dept_name}">查看医生</a>
            </td>
        </tr>
    </c:forEach>
</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/Index.jsp">返回</a>
</p>
</body>
</html>