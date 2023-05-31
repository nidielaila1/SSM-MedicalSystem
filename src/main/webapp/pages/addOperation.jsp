<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>AddHospitalStayInfo</h1>
<form action="<c:url value="/managerMethod/insertOperationInfo"/>" method="post">
    <input type="hidden" name="or_id" value="${or_id}">

    <label for="operationTime">手术时间</label>
    <input type="text" id="operationTime" name="operationTime" value="${operationTime}" required><br>
    <input type="submit" value="提交">
</form>


</body>
</html>
