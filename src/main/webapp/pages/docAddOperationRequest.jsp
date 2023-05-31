<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>AddOperationRequest</h1>
<form action="<c:url value="/docMethod/addOperationRequest"/>" method="post">
    <% String hosStayId = request.getParameter("hosStayId"); %>
    <input type="hidden" name="hosStay_id" value="<%= hosStayId %>" required><br>

    <label for="operationTime">出院时间</label>
    <input type="date" id="operationTime" name="operationTime" required><br>
    <input type="submit" value="提交">
</form>


</body>
</html>