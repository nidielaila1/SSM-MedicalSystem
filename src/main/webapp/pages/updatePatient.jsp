<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<h1>UpdatePatient</h1>
<form action="<c:url value="/userMethod/updatePatient"/>" method="post">
    <input type="hidden" name="id" value="${patients.id}"/>

    <label for="pname">姓名：</label>

    <input type="text" id="pname" name="pname" value="${patients.pname}"/><br>

    <label>性别：</label>
    <label for="male">男</label>
    <input type="radio" id="male" name="gender" value="男" ${patients.gender == '男' ? 'checked' : ''} />
    <label for="male">女</label>
    <input type="radio" id="female" name="gender" value="女" ${patients.gender == '女' ? 'checked' : ''} /><br>

    <label for="con">用户与就诊人的关系</label>
    <input type="text" id="con" name="con" value="${patients.con}"/><br>

    <input type="submit" value="更新"/>
</form>
</body>
</html>