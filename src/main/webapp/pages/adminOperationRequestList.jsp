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
        <th>操作</th>
    </tr>
    <c:forEach var="operationRequest" items="${operationRequests}">
        <tr>
            <td>${operationRequest.id}</td>
            <td>${operationRequest.operationTime}</td>
            <td>${operationRequest.applyTime}</td>
            <td>${operationRequest.state}</td>
            <td>
                <a href="${pageContext.request.contextPath}/managerMethod/handleOperationRequest?id=${operationRequest.id}&operationTime=${operationRequest.operationTime}">同意</a>
            </td>
        </tr>
    </c:forEach>
</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/adminIndex.jsp">返回</a>
</p>


</body>
</html>