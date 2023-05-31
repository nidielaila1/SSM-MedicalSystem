<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>WorkdayList.jsp</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>
<h2>医生工作日信息表</h2>
<h3>上午工作时间</h3>
<table>
    <tr>
        <th>工作日期</th>
        <th>上午</th>
    </tr>
    <c:forEach var="workday" items="${workdays}">
        <c:if test="${workday.ampm == '上午'}">
            <tr>
                <td>
                    <a href="${pageContext.request.contextPath}/pages/docAddApply.jsp?wid=${workday.id}">${workday.workTime}</a>
                </td>
                <td>${workday.ampm}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>


<h3>下午工作时间</h3>
<table>
    <tr>
        <th>工作日期</th>
        <th>下午</th>
    </tr>
    <c:forEach var="workday" items="${workdays}">
        <c:if test="${workday.ampm == '下午'}">
            <tr>
                <td><a href="${pageContext.request.contextPath}/pages/docAddApply.jsp?workdayId=${workday.id}">${workday.workTime}</a></td>
                <td>${workday.ampm}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>


</body>
</html>