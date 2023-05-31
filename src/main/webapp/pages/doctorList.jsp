<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<h1>doctorList</h1>
<table border="1">
  <tr>
    <th>医生</th>
    <th>操作</th>
  </tr>
  <c:forEach var="doctor" items="${doctors}">
    <tr>
      <td>${doctor.doc_name}</td>
    </tr>
    <tr>
      <td>
        <a href="${pageContext.request.contextPath}/workDayMethod/queryWorkDayByDocId?doc_id=${doctor.id}">工作日信息</a>
        <a href="#">具体信息</a>
      </td>
    </tr>
  </c:forEach>
</table>

<p>
  <a href="<c:url value="/deptMethod/findAllDept"/>">返回</a>
</p>
</body>
</html>