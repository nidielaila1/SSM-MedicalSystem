<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>医生功能界面</title>
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
    <c:when test="${not empty sessionScope.doctor}">
        <ul class="u">
            <li><a href="<c:url value="/docMethod/findOrdersByDocId"/>">我的挂号单</a></li>
            <li><a href="<c:url value="/docMethod/findOwnWorkDay"/>">我的工作日</a></li>
            <li><a href="<c:url value="/docMethod/queryHosStayInfo"/>">查询住院信息</a></li>
            <li><a href="<c:url value="/docMethod/queryAdmissionsByDocId"/>">我的住院证明</a></li>
            <li><a href="<c:url value="/docMethod/queryHosApplyByDocId"/>">我的出院申请</a></li>
            <li><a href="<c:url value="/docMethod/queryOperationRequests"/>">我的手术申请</a></li>
        </ul>
        <div class="bu">
            <a href="<c:url value="/docMethod/logout"/>" class="a2">退出</a>
        </div>
    </c:when>
    <c:otherwise>
        <div class="bu">
            <a href="${pageContext.request.contextPath}/pages/docLogin.jsp" class="a1">登录</a>
        </div>
    </c:otherwise>
</c:choose>

<c:if test="${empty sessionScope.doctor}">
    <script>
        alert("请先登录");
        window.location.href = "docLogin.jsp";
    </script>
</c:if>
</body>
</html>