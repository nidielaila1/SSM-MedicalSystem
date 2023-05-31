<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Info</title>
</head>
<body>
<h1>OrderInfo</h1>
<form method="post" action="<c:url value="/orderMethod/insertOrder"/>">
    <input type="hidden" id="wid" name="wid">
    <input type="hidden" id="uid" name="uid">
    <input type="hidden" id="pid" name="pid" value="<%= request.getParameter("pid")%>">
    <input type="hidden" id="doc_id" name="doc_id">

    <label for="doc_name">医生姓名:</label>
    <input type="text" id="doc_name" name="doc_name"><br>

    <label for="dept_name">科室名称:</label>
    <input type="text" id="dept_name" name="dept_name"><br>

    <label for="visitDate">预约日期:</label>
    <input type="text" id="visitDate" name="visitDate"><br>

    <label for="visitNoon">预约上下午:</label>
    <input type="text" id="visitNoon" name="visitNoon"><br>

    <label for="pname">就诊人:</label>
    <input type="text" id="pname" name="pname" value="<%= request.getParameter("pname") %>" readonly>
    <input type="button" value="选择就诊人"
           onclick="saveFormDataAndRedirect()"><br>

    <script>
        function saveFormDataAndRedirect() {
            // 跳转到选择就诊人页面
            window.location.href = '${pageContext.request.contextPath}/userMethod/findPatients?redirect=./orderInfo1.jsp';
        }

        window.onload = function () {
            const wid = sessionStorage.getItem("wid");
            const uid = sessionStorage.getItem("uid");
            const doc_id = sessionStorage.getItem("doc_id");

            const doc_name = sessionStorage.getItem("doc_name");
            const dept_name = sessionStorage.getItem("dept_name");
            const visitDate = sessionStorage.getItem("visitDate");
            const visitNoon = sessionStorage.getItem("visitNoon");


            if (doc_name && dept_name && visitDate && visitNoon) {
                document.getElementById("wid").value = wid;
                document.getElementById("uid").value = uid;
                document.getElementById("doc_id").value = doc_id;
                document.getElementById("doc_name").value = doc_name;
                document.getElementById("dept_name").value = dept_name;
                document.getElementById("visitDate").value = visitDate;
                document.getElementById("visitNoon").value = visitNoon;
            }
        };
    </script>
    <input type="submit" value="立即预约" <% if (request.getParameter("pid") == null) { %>disabled<% } %>>

    <% if (request.getParameter("pid") == null) { %>
    <p style="color:red">请选择就诊人</p>
    <% } %>
</form>
</body>
</html>