<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>AddHospitalStayInfo</h1>
<form action="<c:url value="/managerMethod/addHospitalStayInfo"/>" method="post">
    <input type="hidden" name="adm_id" value="${adm_id}">

    <label for="room">病房号：</label>
    <input type="text" id="room" name="room" required><br>

    <label for="bed">床位号：</label>
    <input type="text" id="bed" name="bed" required><br>
    <input type="submit" value="提交">
</form>


</body>
</html>
