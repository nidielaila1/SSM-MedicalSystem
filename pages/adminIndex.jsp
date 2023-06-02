<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>adminIndex.jsp</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/pages/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/pages/css/layout.css" rel="stylesheet">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/pages/images/logo2.png">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<style>
    .button {
        background-color: rgb(0, 123, 196);
        border: 1px solid red;
        color: white;
        padding: 15px 32px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        border-radius: 30px;
        float: left;
    }

    .button:hover {
        background-color: purple;
    }

    .grid-container {
        justify-content: center;
        display: grid;
        grid-template-columns: 200px 200px;
        grid-gap: 10px;
        background-color: rgb(255, 255, 255);
        padding: 10px;
    }

    .grid-container > div {
        background-color: rgb(255, 255, 255);
        border: 1px solid rgb(255, 255, 255);
        text-align: center;
        font-size: 30px;
    }


</style>
<body>


<c:choose>
<c:when test="${not empty sessionScope.admin}">


<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="logo">
            <a href="">
                <img src="${pageContext.request.contextPath}/pages/images/logo1.jpg">
            </a>
        </div>
        <div id="navbar" class="topright navbar-collapse collapse">
            <div class="signapp">

                <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/home.html" role="button">首页</a>

                <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/userIndex.jsp" role="button">我的</a>


            </div>
            <div class="search">
                <div class="input-group">
                    <select class="form-control"
                            style="width: 26%;border-bottom-left-radius: 25px;border-top-left-radius: 25px;">
                        <option value="">科室</option>
                        <option value="">医生</option>
                    </select>
                    <input type="text" class="form-control" placeholder="请输入关键字" style="width: 74%;">
                    <span class="input-group-btn">
                <button class="btn btn-primary" type="button">搜索</button>
              </span>
                </div>
            </div>
        </div>
    </div>

    <div class="container-fluid navbg">
        <div class="nav">
            <ul class="jiaogaoliang xlk">

            </ul>
        </div>
    </div>
</nav>


<div class="usercenter container containerban" style="margin-top: 30px;">
    <div class="userrightcon">
        <h3>管理员功能</h3>
        <form class="form-horizontal" method="post">
            <div class="form-group uegroup">
                <label class="col-xs-5 control-label"></label>
                <div class="col-xs-3">
                </div>
            </div>
        </form>


        <div class="grid-container">
            <div><a href="<c:url value="/managerMethod/findAllAppliesWaitingHandle"/>" class="button"><img
                    src="${pageContext.request.contextPath}/pages/images/ic1.png">
                <p>查询医生换班</p></a></div>
            <div><a href="<c:url value="/managerMethod/findAdmissionsWaitingHandle"/>" class="button"><img
                    src="${pageContext.request.contextPath}/pages/images/ic_home_insurance.png">
                <p>查询住院申请</p></a></div>
            <div><a href="<c:url value="/managerMethod/findHosApplyWaitingHandle"/>" class="button"><img
                    src="${pageContext.request.contextPath}/pages/images/ic_home_hospitalization.png">
                <p>查询出院申请</p></a></div>
            <div><a href="<c:url value="/managerMethod/findOperationRequestWaitingHandle"/>" class="button"><img
                    src="${pageContext.request.contextPath}/pages/images/ic_home_clinic.png">
                <p>查询手术申请</p></a></div>

            <div><a href="<c:url value="/managerMethod/logout"/>" class="button"><img
                    src="${pageContext.request.contextPath}/pages/images/ic_home_insurance.png">
                <p>**选择退出**</p></a></div>
        </div>
        </c:when>
        <c:otherwise>
            <div><a href="adminLogin.jsp" class="button"><img src="${pageContext.request.contextPath}/pages/images/ic_home_insurance.png">
                <p>**选择登录**</p></a></div>
        </c:otherwise>
        </c:choose>

        <form class="form-horizontal" method="post">
            <div class="form-group uegroup">
                <label class="col-xs-5 control-label"></label>
                <div class="col-xs-3">
                </div>
            </div>
        </form>
        <form class="form-horizontal" method="post">
            <div class="form-group uegroup">
                <label class="col-xs-5 control-label"></label>
                <div class="col-xs-3">
                </div>
            </div>
        </form>
        <form class="form-horizontal" method="post">
            <div class="form-group uegroup">
                <label class="col-xs-5 control-label"></label>
                <div class="col-xs-3">
                </div>
            </div>
        </form>
        <form class="form-horizontal" method="post">
            <div class="form-group uegroup">
                <label class="col-xs-5 control-label"></label>
                <div class="col-xs-3">
                </div>
            </div>
        </form>
    </div>
</div>

<div class="Homefoot">
    <div class="container">
        版权所有：© 医疗服务系统　　地址：深圳市光明区深圳理工大学　 技术支持：纯鹿仁医疗
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>


<c:if test="${empty sessionScope.admin}">
    <script>
        alert("请先登录");
        window.location.href = "${pageContext.request.contextPath}/pages/adminLogin.jsp";
    </script>
</c:if>


</body>
</html>