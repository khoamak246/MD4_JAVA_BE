<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: khoam
  Date: 2023-04-16
  Time: 10:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create user</title>
</head>
<body>
<h1>Create User</h1>
<c:if test="${message != null}">
  <p style="color: green">${message}</p>
</c:if>
<form method="post">
  Name: <input type="text" name="name" placeholder="Name...">
  Age: <input type="text" name="age" placeholder="Age...">
  Email: <input type="text" name="email" placeholder="Email...">
  Phone Number: <input type="text" name="phoneNumber" placeholder="Phone Number...">
  <input type="submit" value="Add user">
</form>
<a href="UserServlet">Back to Home</a>
</body>
</html>
