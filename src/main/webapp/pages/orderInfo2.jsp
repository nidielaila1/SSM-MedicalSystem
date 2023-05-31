<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Info</title>
</head>
<body>
<h1>OrderInfo</h1>
<table border="1">
    <tr>
        <th>订单编号</th>
        <th>就诊人身份证号</th>
        <th>就诊人姓名</th>
        <th>医生姓名</th>
        <th>科室名称</th>
        <th>看病日期</th>
        <th>上午下午</th>
        <th>订单时间</th>
        <th>订单状态</th>
    </tr>

    <tr>
        <td><c:out value="${orders.id}"/></td>
        <td><c:out value="${orders.pid}"/></td>
        <td><c:out value="${orders.pname}"/></td>
        <td><c:out value="${orders.doc_name}"/></td>
        <td><c:out value="${orders.dept_name}"/></td>
        <td><c:out value="${orders.visitDate}"/></td>
        <td><c:out value="${orders.visitNoon}"/></td>
        <td><c:out value="${orders.dateTime}"/></td>
        <td><c:out value="${orders.state}"/></td>
    </tr>
</table>

<p>
    <a href="<c:url value="/orderMethod/findAllOrder"/>">返回</a>
</p>
</body>
</html>