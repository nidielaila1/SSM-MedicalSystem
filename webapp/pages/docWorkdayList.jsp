<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>WorkdayList</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: rgb(73, 150, 159);
            color: #fff;
            padding: 10px;
            text-align: center;
        }

        h1 {
            margin: 0;
            font-size: 36px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: center;
            padding: 10px;
            border: 1px solid #ccc;
        }

        th {
            text-align: center;
            background-color: rgb(121, 177, 230);
            color: #fff;
        }

        a {
            text-decoration: none;
            color: #fff;
            font-family: Arial, sans-serif;
            font-size: 17px;
        }

        a:hover {
            color: red;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        .mor {
            padding: 10px;
            margin-top: 30px;
            font-size: 22px;
            background-color: rgb(177, 234, 107);
            text-align: center;
        }

        .logo {
            margin-bottom: 10px;
            text-align: center;
        }

        .logo1 {
            width: 120px;
            height: 120px;
            margin-right: 250px;
        }

        .back {
            padding: 13px;
            background-color: rgb(31, 130, 141);
            position: absolute;
            left: 100px;
        }
        .time{
            font-family: sans-serif;
            font-size: 15px;
            color: black;
        }

    </style>
</head>
<body>

<div class="logo">
    <img class="logo1" src="${pageContext.request.contextPath}/pages/images/logo2.png">
    <img src="${pageContext.request.contextPath}/pages/images/1.png">
</div>

<header>
    <h1>医生工作日信息表</h1>
</header>

<div class="mor">
    上午工作时间
</div>

<table>
    <tr>
        <th>工作日期</th>
        <th>上午</th>
    </tr>
    <c:forEach var="workday" items="${workdays}">
        <c:if test="${workday.ampm == '上午'}">
            <tr>
                <td>
                    <a class="time" href="${pageContext.request.contextPath}/pages/docAddApply.jsp?wid=${workday.id}">${workday.workTime}</a>
                </td>
                <td>${workday.ampm}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>


<div class="mor">下午工作时间</div>
<table>
    <tr>
        <th>工作日期</th>
        <th>下午</th>
    </tr>
    <c:forEach var="workday" items="${workdays}">
        <c:if test="${workday.ampm == '下午'}">
            <tr>
                <td>
                    <a class="time" href="${pageContext.request.contextPath}/pages/docAddApply.jsp?workdayId=${workday.id}">${workday.workTime}</a>
                </td>
                <td>${workday.ampm}</td>
            </tr>
        </c:if>
    </c:forEach>
</table>

<div>
    <span class="back"> <a href="${pageContext.request.contextPath}/pages/docAddApply1.jsp">添加工作日</a> </span>
</div>


</body>
</html>