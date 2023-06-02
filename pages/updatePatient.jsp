<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>updatePatient.jsp</title>

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

<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="logo">
            <a href="">
                <img src="${pageContext.request.contextPath}/pages/images/logo1.jpg">
            </a>
        </div>
        <div id="navbar" class="topright navbar-collapse collapse">
            <div class="signapp">
                <a class="btn btn-primary" href="home.html" role="button">首页</a>
                <a class="btn btn-primary" href="userIndex.jsp" role="button">我的</a>
            </div>
            <div class="search">
                <div class="input-group">
                    <select class="form-control" style="width: 26%;border-bottom-left-radius: 25px;border-top-left-radius: 25px;">
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

                <li>
              <span>
                <a href="#" >添加患者信息</a>
              </span>
                </li>

                <li class="last">
              <span>
                <a href="updatePatient.jsp" class="cur">更新患者信息</a>
              </span>
                </li>

            </ul>
        </div>
    </div>
</nav>


<div class="usercenter container containerban" style="margin-top: 30px;">
    <div class="userrightcon">
        <h3>更新患者信息</h3>

        <form class="form-horizontal"  action="<c:url value="/userMethod/updatePatient"/>" method="post">
            <input type="hidden" name="id" value="${patients.id}"/>

            <div class="form-group uegroup">
                <label  for="pname" class="col-xs-5 control-label">姓名：</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"  id="pname" name="pname" value="${patients.pname}"/>
                </div>
            </div>


            <div class="form-group uegroup">
                <label  class="col-xs-5 control-label">性别：</label>
                <div class="col-xs-3">
                    <label class="radio-inline" for="male">
                        <input type="radio" id="male" name="gender" value="男" ${patients.gender == '男' ? 'checked' : ''} /> 男
                    </label>
                    <label class="radio-inline" for="male">
                        <input type="radio" id="female" name="gender" value="女" ${patients.gender == '女' ? 'checked' : ''} /> 女
                    </label>
                </div>
            </div>

            <div class="form-group uegroup">
                <label  for="con" class="col-xs-5 control-label">用户与就诊人的关系：</label>
                <div class="col-xs-3">
                    <input type="text" class="form-control"  id="con" name="con" value="${patients.con}"/>
                </div>
            </div>

            <div class="form-group" style="margin-bottom: 50px;margin-top: 30px;">
                <div class="col-xs-offset-5 col-xs-2 ">
                    <button type="submit" class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;更&nbsp;&nbsp;新&nbsp;&nbsp;&nbsp;&nbsp;</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="Homefoot">
    <div class="container">
        版权所有：© 医疗服务系统　　地址：深圳市光明区深圳理工大学　  技术支持：纯鹿仁医疗
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/pages/js/bootstrap.min.js"></script>


</body>
</html>