<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>hosApplyList</title>
    <style>
        a {
            text-decoration: none;
            font-size: 18px;
        }
    </style>
</head>
<body>


<h1>hosApplyList</h1>
<table border="1">
    <tr>
        <th>id</th>
        <th>请求出院时间</th>
        <th>申请时间</th>
        <th>出院状态</th>
        <th>操作</th>
    </tr>
    <c:forEach var="hosApply" items="${hosApplys}">
        <tr>
            <td>${hosApply.id}</td>
            <td>${hosApply.dischargeTime}</td>
            <td>${hosApply.applyTime}</td>
            <td>${hosApply.state}</td>
            <td>
                <a href="${pageContext.request.contextPath}/managerMethod/handleHosApply?id=${hosApply.id}&dischargeTime=${hosApply.dischargeTime}">同意</a>
            </td>
        </tr>
    </c:forEach>
</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/adminIndex.jsp">返回</a>
</p>


</body>
</html>