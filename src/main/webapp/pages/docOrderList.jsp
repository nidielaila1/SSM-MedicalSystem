<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>orderList</title>
    <style>
        a {
            text-decoration: none;
            font-size: 18px;
        }
    </style>
</head>
<body>

<h1>orderList</h1>
<table border="1">
    <tr>
        <th>订单编号</th>
        <th>身份证号</th>
        <th>就诊姓名</th>
        <th>预约医生</th>
        <th>预约科室</th>
        <th>看病日期</th>
        <th>具体时间</th>
        <th>订单时间</th>
        <th>预约状态</th>
        <th>操作</th>
    </tr>
    <c:forEach var="order" items="${orders}">
        <tr>
            <td>${order.id}</td>
            <td>${order.pid}</td>
            <td>${order.pname}</td>
            <td>${order.doc_name}</td>
            <td>${order.dept_name}</td>
            <td>${order.visitDate}</td>
            <td>${order.visitNoon}</td>
            <td>${order.dateTime}</td>
            <td>${order.state}</td>
            <td>
                <c:choose>
                    <c:when test="${order.state == '完成'}">
                        <a href="${pageContext.request.contextPath}/pages/docAddAdmission.jsp?pid=${order.pid}&pname=${order.pname}&deptName=${order.dept_name}">申请住院</a>
                    </c:when>
                    <c:otherwise>
                        <a href="${pageContext.request.contextPath}/docMethod/completeOrder?id=${order.id}">完成</a>
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>
</table>
<p>
    <a href="${pageContext.request.contextPath}/pages/docIndex.jsp">返回</a>
</p>
</body>
</html>