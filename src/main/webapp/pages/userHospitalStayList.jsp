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
        <th>住院订单号</th>
        <th>房间信息</th>
        <th>床位号</th>
        <th>住院状态</th>
        <th>入院日期</th>
    </tr>
    <c:forEach var="hospitalStay" items="${hospitalStays}">
        <tr>
            <td>${hospitalStay.id}</td>
            <td>${hospitalStay.room}</td>
            <td>${hospitalStay.bed}</td>
            <td>${hospitalStay.state}</td>
            <td>${hospitalStay.admissionDate}</td>
        </tr>
    </c:forEach>
</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/userIndex.jsp">返回</a>
</p>


</body>
</html>