<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>operationRequestList</title>
    <style>
        a {
            text-decoration: none;
            font-size: 18px;
        }
    </style>
</head>
<body>


<h1>operationRequestList</h1>
<table border="1">
    <tr>
        <th>id</th>
        <th>手术时间</th>
        <th>申请时间</th>
        <th>状态</th>
    </tr>
    <c:forEach var="operationRequest" items="${operationRequests}">
        <tr>
            <td>${operationRequest.id}</td>
            <td>${operationRequest.operationTime}</td>
            <td>${operationRequest.applyTime}</td>
            <td>${operationRequest.state}</td>
        </tr>
    </c:forEach>
</table>


<p>
    <a href="${pageContext.request.contextPath}/pages/docIndex.jsp">返回</a>
</p>


</body>
</html>