<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Info</title>
</head>
<body>
<h1>OrderInfo</h1>
<form method="post" action="<c:url value="/orderMethod/insertOrder"/>">
    <input type="hidden" id="wid" name="wid" value="${wid}">
    <input type="hidden" id="uid" name="uid" value="${uid}">
    <input type="hidden" id="pid" name="pid" value="<% request.getParameter("pid");%>">
    <input type="hidden" id="doc_id" name="doc_id" value="${doc_id}">

    <label for="doc_name">医生姓名:</label>
    <input type="text" id="doc_name" name="doc_name" value="${doc_name}"><br>

    <label for="dept_name">科室名称:</label>
    <input type="text" id="dept_name" name="dept_name" value="${dept_name}"><br>

    <label for="visitDate">预约日期:</label>
    <input type="text" id="visitDate" name="visitDate" value="${visitDate}"><br>

    <label for="visitNoon">预约上下午:</label>
    <input type="text" id="visitNoon" name="visitNoon" value="${visitNoon}"><br>

    <label for="pname">就诊人:</label>
    <input type="text" id="pname" name="pname" value="<%= request.getParameter("pname") %>" readonly>
    <input type="button" value="选择就诊人"
           onclick="saveFormDataAndRedirect()"><br>

    <script>
        function saveFormDataAndRedirect() {
            // 保存表单数据到 Session
            sessionStorage.setItem("wid", document.getElementById("wid").value);
            sessionStorage.setItem("uid", document.getElementById("uid").value);
            sessionStorage.setItem("doc_id", document.getElementById("doc_id").value);
            sessionStorage.setItem("doc_name", document.getElementById("doc_name").value);
            sessionStorage.setItem("dept_name", document.getElementById("dept_name").value);
            sessionStorage.setItem("visitDate", document.getElementById("visitDate").value);
            sessionStorage.setItem("visitNoon", document.getElementById("visitNoon").value);

            // 跳转到选择就诊人页面
            window.location.href = '${pageContext.request.contextPath}/userMethod/findPatients';
        }
    </script>
    <input type="submit" value="立即预约" <% if (request.getParameter("pid") == null) { %>disabled<% } %>>

    <% if (request.getParameter("pid") == null) { %>
    <p style="color:red">请选择就诊人</p>
    <% } %>
</form>
</body>
</html>