<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: khoam
  Date: 2023-04-16
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update user</title>
</head>
<body>
<h1>Edit user</h1>
<c:if test="${message != null}">
  <p style="color: green">${message}</p>
</c:if>
<form method="post">
  Name: <input type="text" name="name" placeholder="Name..." value="${user.getName()}">
  Age: <input type="text" name="age" placeholder="Age..." value="${user.getAge()}">
  Email: <input type="text" name="email" placeholder="Email..." value="${user.getEmail()}">
  Phone Number: <input type="text" name="phoneNumber" placeholder="Phone Number..." value="${user.getPhoneNumber()}">
  <input type="submit" value="Add user">
</form>
<a href="UserServlet">Back to Home</a>
</body>
</html>
