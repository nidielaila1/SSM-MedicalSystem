<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>orderInfo1.jsp</title>

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
<body>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/pages/js/bootstrap.min.js"></script>

<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="logo">
            <a href="">
                <img src="${pageContext.request.contextPath}/pages/images/logo1.jpg">
            </a>
        </div>
        <div id="navbar" class="topright navbar-collapse collapse">
            <div class="signapp">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/pages/home.html"
                   role="button">首页</a>
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

                <li class="last">
              <span>
                <a href="${pageContext.request.contextPath}/pages/updatePatient.jsp" class="cur">预约信息</a>
              </span>
                </li>

            </ul>
        </div>
    </div>
</nav>


<div class="usercenter container containerban" style="margin-top: 30px;">
    <div class="userrightcon">
        <h3>预约信息</h3>

        <form class="form-horizontal" method="post" action="<c:url value="/orderMethod/insertOrder"/>">
            <input type="hidden" id="wid" name="wid" value="${wid}">
            <input type="hidden" id="uid" name="uid" value="${uid}">
            <input type="hidden" id="pid" name="pid" value="<%= request.getParameter("pid") %>">
            <input type="hidden" id="doc_id" name="doc_id" value="${doc_id}">

            <div class="form-group uegroup">
                <label for="doc_name" class="col-xs-5 control-label">医生姓名：</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control" id="doc_name" name="doc_name" value="${doc_name}">
                </div>
            </div>

            <div class="form-group uegroup">
                <label for="dept_name" class="col-xs-5 control-label">科室姓名：</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control" id="dept_name" name="dept_name" value="${dept_name}">
                </div>
            </div>

            <div class="form-group uegroup">
                <label for="visitDate" class="col-xs-5 control-label">预约日期：</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control" id="visitDate" name="visitDate" value="${visitDate}">
                </div>
            </div>

            <div class="form-group uegroup">
                <label for="visitNoon" class="col-xs-5 control-label">预约上下午：</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control" id="visitNoon" name="visitNoon" value="${visitNoon}">
                </div>
            </div>


            <div class="form-group uegroup">
                <label for="pname" class="col-xs-5 control-label">就诊人：</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control" id="pname" name="pname"
                           value="<%= request.getParameter("pname") %>" readonly>
                </div>
            </div>

            <div class="form-group uegroup">
                <label for="pname" class="col-xs-5 control-label"></label>
                <div class="col-xs-3">
                    <input type="button" value="选择就诊人"
                           onclick="saveFormDataAndRedirect()">
                </div>
            </div>

            <script>
                function saveFormDataAndRedirect() {
                    // 跳转到选择就诊人页面
                    window.location.href = '${pageContext.request.contextPath}/userMethod/findPatients';
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

            <div class="form-group uegroup">
                <label for="pname" class="col-xs-5 control-label"></label>
                <div class="col-xs-3">
                    <input type="submit" value="立即预约" <% if (request.getParameter("pid") == null) { %>disabled<% } %>>
                </div>
            </div>


            <% if (request.getParameter("pid") == null) { %>
            <div class="form-group uegroup">
                <label for="pname" class="col-xs-5 control-label"></label>
                <div class="col-xs-3">
                    <p style="color:red;text-align:center">请选择就诊人</p>
                </div>
            </div>
            <% } %>

        </form>
    </div>
</div>

<div class="Homefoot">
    <div class="container">
        版权所有：© 医疗服务系统　　地址：深圳市光明区深圳理工大学　 技术支持：纯鹿仁医疗
    </div>
</div>


</body>
</html>