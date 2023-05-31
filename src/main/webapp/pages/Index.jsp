<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>主页</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        ul {
            display: inline;
            list-style-type: none;
        }

        li {
            display: inline-block;
        }


        a {
            text-decoration: none;
        }

        button {
            width: 100px;
            height: 50px;
        }


        .u {
            position: relative;
            top: 200px;
            left: 500px;
        }

        .bu {
            text-align: center;
        }

        .a1 {
            font-size: 22px;
        }

        .a2 {
            font-size: 22px;
        }
    </style>
</head>
<body>
<c:choose>
    <c:when test="${not empty sessionScope.user}">
        <ul class="u">
            <li><a href="<c:url value="/deptMethod/findAllDept"/>">预约挂号</a></li>
            <li><a href="<c:url value="/deptMethod/findAllDept"/>">科室导航</a></li>
            <li><a href="${pageContext.request.contextPath}/pages/userIndex.jsp">个人界面</a></li>
        </ul>
    </c:when>
    <c:otherwise>
        <div class="bu">
            <a href="userLogin.jsp" class="a2">登录</a>
        </div>
    </c:otherwise>
</c:choose>


<c:if test="${empty sessionScope.user}">
    <script>
        alert("请先登录");
        window.location.href = "userLogin.jsp";
    </script>
</c:if>
</body>
</html>
