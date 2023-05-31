<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <script>
        // 确认删除提示框
        function confirmDelete(pname) {
            return confirm("确定要删除就诊人 " + pname + "？");
        }
    </script>
</head>
<body>
<h1>PatientList</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>性别</th>
        <th>用户与就诊人的关系</th>
        <th>操作</th>
    </tr>
    <c:forEach var="patient" items="${patients}">
        <tr>
            <td>${patient.id}</td>
            <td>${patient.pname}</td>
            <td>${patient.gender}</td>
            <td>${patient.con}</td>
            <td>
                <a href="${pageContext.request.contextPath}/userMethod/choseOnePatient?id=${patient.id}">修改就诊人</a><br>
                <a href="${pageContext.request.contextPath}/userMethod/deletePatient?id=${patient.id}"
                   onclick="return confirm('确定要删除吗？');">删除就诊人</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href=${pageContext.request.contextPath}/pages/userAddPatient.jsp>添加就诊人</a>
</body>
</html>
