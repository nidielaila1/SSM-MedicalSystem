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
                <a href="${pageContext.request.contextPath}/orderMethod/queryOrderById?id=${order.id}">查看详细信息</a>
                <a href="${pageContext.request.contextPath}/orderMethod/cancelOrder?id=${order.id}">取消</a>
            </td>
        </tr>
    </c:forEach>
</table>

<p>
    <a href="${pageContext.request.contextPath}/pages/userIndex.jsp">返回</a>
</p>


</body>
</html>