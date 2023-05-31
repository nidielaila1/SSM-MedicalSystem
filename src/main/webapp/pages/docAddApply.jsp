<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>AddApply</h1>
<form action="<c:url value="/docMethod/sendApply"/>" method="post">
    <% String wid = request.getParameter("wid"); %>
    <input type="hidden" id="workday_id" name="wid" value="<%= wid %>" required><br>

    <label for="reason">原因</label>
    <input type="text" id="reason" name="reason" required><br>

    <label for="request">请求</label>
    <input type="text" id="request" name="request" required><br>

    <label for="applyTime">申请换班日期</label>
    <input type="date" id="applyTime" name="applyTime" required><br>
    <input type="submit" value="提交">
</form>


</body>
</html>