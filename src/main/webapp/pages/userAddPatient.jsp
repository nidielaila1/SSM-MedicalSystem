<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>AddPatient</h1>
<form action="<c:url value="/userMethod/addPatient"/>" method="post">
    <label for="id">身份证号：</label>
    <input type="text" id="id" name="id" required><br>

    <label for="pname">就诊人姓名：</label>
    <input type="text" id="pname" name="pname" required><br>

    <label>性别：</label>
    <input type="radio" name="gender" value="男" checked="checked"/>男
    <input type="radio" name="gender" value="女"/>女<br>

    <label for="con">用户与就诊人的关系：</label>
    <input type="text" id="con" name="con" required><br>
    <input type="submit" value="提交">
</form>



</body>
</html>
