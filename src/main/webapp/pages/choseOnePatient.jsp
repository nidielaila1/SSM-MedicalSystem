<%@ page import="com.Medical.domain.Patients" %>
<%@ page import="java.util.List" %>
<%@ page import="com.Medical.domain.Users" %>
<%@ page import="com.Medical.service.userService.Impl.UserServiceImpl" %>
<%@ page import="com.Medical.controller.userController.UserController" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>选择就诊人</title>
</head>
<%
    // 获取请求参数 redirect 的值
    String redirect = request.getParameter("redirect");
    List<Patients> patients = (List<Patients>) request.getAttribute("patients");
%>

<body>
<h1>选择就诊人</h1>

<ul>
    <% for (Patients patient : patients) { %>
    <li>
        <%= patient.getPname() %>
        <a href="${pageContext.request.contextPath}/pages/orderInfo1.jsp?pid=<%= patient.getId() %>&pname=<%= patient.getPname() %>">选择</a>
    </li>
    <% } %>
</ul>
</body>
</html>
