<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>用户功能界面</title>
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
<ul class="u">
    <li><a href="<c:url value="/userMethod/findAllPatient"/>">我的就诊人</a></li>
    <li><a href="<c:url value="/orderMethod/findAllOrder"/>">查询订单信息</a></li>
    <li><a href="<c:url value="/userMethod/queryHosCertification"/>">查询住院证明</a></li>
    <li><a href="<c:url value="/userMethod/queryHospitalStay"/>">查询住院信息</a></li>
    <li><a href="<c:url value="/userMethod/queryOperationInfo"/>">查询手术信息</a></li>
</ul>
<div class="bu">
    <a href="${pageContext.request.contextPath}/pages/userLogin.jsp" class="a1">登录</a>
    <a href="<c:url value="/userMethod/logout"/>" class="a2">退出</a>
</div>

<p>
    <a href="${pageContext.request.contextPath}/pages/Index.jsp">返回</a>
</p>
</body>
</html>