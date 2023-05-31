<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>管理员功能界面</title>
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
    <c:when test="${not empty sessionScope.admin}">
        <ul class="u">
            <li><a href="<c:url value="/managerMethod/findAllAppliesWaitingHandle"/>">查询医生换班</a></li>
            <li><a href="<c:url value="/managerMethod/findAdmissionsWaitingHandle"/>">查询住院申请</a></li>
            <li><a href="<c:url value="/managerMethod/findHosApplyWaitingHandle"/>">查询出院申请</a></li>
            <li><a href="<c:url value="/managerMethod/findOperationRequestWaitingHandle"/>">查询手术申请</a></li>
        </ul>
        <div class="bu">
            <a href="<c:url value="/managerMethod/logout"/>" class="a2">退出</a>
        </div>
    </c:when>
    <c:otherwise>
        <div class="bu">
            <a href="adminLogin.jsp" class="a1">登录</a>
        </div>
    </c:otherwise>
</c:choose>

<c:if test="${empty sessionScope.admin}">
    <script>
        alert("请先登录");
        window.location.href = "adminLogin.jsp";
    </script>
</c:if>
</body>
</html>