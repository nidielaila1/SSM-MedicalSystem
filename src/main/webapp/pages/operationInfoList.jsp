<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OperationList</title>
    <style>
        a {
            text-decoration: none;
            font-size: 20px;
        }
    </style>
</head>
<body>

<h1>OperationInfoList</h1>
<table border="1">
    <tr>
        <th>手术订单号</th>
        <th>就诊人身份证</th>
        <th>就诊人姓名</th>
        <th>手术时间</th>
    </tr>
    <c:forEach var="operationInfo" items="${operationInfos}">
        <tr>
            <td>${operationInfo.id}</td>
            <td>${operationInfo.pid}</td>
            <td>${operationInfo.pname}</td>
            <td>${operationInfo.operationTime}</td>
        </tr>
    </c:forEach>
</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/userIndex.jsp">返回</a>
</p>


</body>
</html>