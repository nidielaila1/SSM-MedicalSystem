<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>AddHospitalStayInfo</h1>
<form action="<c:url value="/docMethod/hospitalizationApply"/>" method="post">
    <% String pid = request.getParameter("pid"); %>
    <label for="pid">患者身份证号</label>
    <input type="text" id="pid" name="pid" value="<%= pid %>" required><br>

    <% String pname = request.getParameter("pname"); %>
    <label for="pname">患者姓名</label>
    <input type="text" id="pname" name="pname" value="<%= pname %>" required><br>

    <% String dept_name = request.getParameter("deptName"); %>
    <label for="dept_name">科室名称</label>
    <input type="text" id="dept_name" name="dept_name" value="<%= dept_name %>" required><br>

    <label for="reason">原因</label>
    <input type="text" id="reason" name="reason" required><br>
    <input type="submit" value="提交">
</form>


</body>
</html>