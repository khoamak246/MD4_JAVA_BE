<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: khoam
  Date: 2023-04-16
  Time: 5:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<p>
    <a href="users">Back to home</a>
</p>
<c:if test="${users != null}">
    <c:forEach items="${users}" var="user">
        <p>Name: ${user.getName()}</p>
        <p>Email: ${user.getEmail()}</p>
        <p>Country: ${user.getCountry()}</p>
    </c:forEach>
</c:if>

</body>
</html>
