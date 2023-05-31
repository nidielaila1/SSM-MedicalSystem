<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hospitalStayList</title>
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>

<h1>hospitalStayList</h1>
<table border="1">
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
                <a href="${pageContext.request.contextPath}/pages/docAddLeaveHosApply.jsp?hosStayId=${hospitalStay.id}">申请出院</a>
                <a href="${pageContext.request.contextPath}/pages/docAddOperationRequest.jsp?hosStayId=${hospitalStay.id}">申请手术</a>
            </td>
        </tr>
    </c:forEach>


</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/docIndex.jsp">返回</a>
</p>


</body>
</html>