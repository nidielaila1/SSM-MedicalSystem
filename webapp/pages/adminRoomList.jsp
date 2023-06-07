<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        // 确认删除提示框
        function confirmDelete(room, bed) {
            return confirm("确定要禁用" + room + "房间中的" + bed + "床位吗" + "？");
        }
    </script>

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
            margin: 20px auto;
        }

        th, td {
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

        span {
            display: inline-block;
            padding: 8px;
            margin-left: 20px;
            background-color: #e99292;
            border-radius: 10px;
        }

        a:hover {
            color: red;
        }

        .back {
            padding: 13px;
            background-color: rgb(31, 130, 141);
            position: absolute;
            left: 180px;
            bottom: 50px;
        }

        .back1 {
            padding: 13px;
            background-color: rgb(31, 130, 141);
            position: absolute;
            left: 100px;
            bottom: 50px;
        }

        .logo {
            margin-bottom: 20px;
            text-align: center;
        }

        .logo1 {
            width: 120px;
            height: 120px;
            margin-right: 250px;
        }

    </style>
</head>
<body>

<div class="logo">
    <img class="logo1" src="${pageContext.request.contextPath}/pages/images/logo2.png">
    <img src="${pageContext.request.contextPath}/pages/images/1.png">
</div>


<header>
    <h1>RoomList</h1>
</header>

<table>
    <tr>
        <th>病房</th>
        <th>床号</th>
        <th>病房详细信息</th>
        <th>床号状态</th>
        <th>操作</th>
    </tr>
    <c:forEach var="room" items="${rooms}">
        <tr>
            <td>${room.room}</td>
            <td>${room.bed}</td>
            <td>${room.about}</td>
            <td>${room.state}</td>
            <td>
                <c:if test="${room.state != '禁用'}">
                <span> <a
                        href="${pageContext.request.contextPath}/managerMethod/choseOneRoom?room=${room.room}">修改病房信息</a><br>  </span>
                <span> <a href="${pageContext.request.contextPath}/managerMethod/banRoomBed?room=${room.room}"
                          onclick="return confirmDelete('${room.room}', '${room.bed}');"> 禁用床位</a>  </span>
                </c:if>
            </td>
        </tr>
    </c:forEach>
</table>
<span class="back"> <a href=${pageContext.request.contextPath}/pages/adminAddRoom.jsp>添加病房信息</a> </span>
<span class="back1"> <a href=${pageContext.request.contextPath}/pages/adminIndex.jsp>返回</a> </span>
</body>
</html>
