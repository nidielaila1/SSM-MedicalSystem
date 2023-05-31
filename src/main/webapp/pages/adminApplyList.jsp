<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>申请列表</title>
    <style>
        a {
            text-decoration: none;
            font-size: 20px;
        }
    </style>
</head>
<body>


<table border="1">
    <tr>
        <th>id</th>
        <th>医生姓名</th>
        <th>原因</th>
        <th>申请</th>
        <th>状态</th>
        <th>操作</th>
    </tr>
    <c:forEach var="apply" items="${applies}">
        <tr>
            <td>${apply.id}</td>
            <td>${apply.doc_name}</td>
            <td>${apply.reason}</td>
            <td>${apply.request}</td>
            <td>${apply.state}</td>
            <td>
                <a href="${pageContext.request.contextPath}/managerMethod/handleApply?id=${apply.id}&wid=${apply.wid}&request=${apply.request}&time=${apply.applyTime}&state=同意">同意</a>
                <a href="${pageContext.request.contextPath}/managerMethod/handleApply?id=${apply.id}&wid=${apply.wid}&request=${apply.request}&time=${apply.applyTime}&state=拒绝">拒绝</a>
            </td>
        </tr>
    </c:forEach>
</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/adminIndex.jsp">返回</a>
</p>


</body>
</html>