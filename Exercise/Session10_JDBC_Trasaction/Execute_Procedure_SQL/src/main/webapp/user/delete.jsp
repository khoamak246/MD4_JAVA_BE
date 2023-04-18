<%--
  Created by IntelliJ IDEA.
  User: khoam
  Date: 2023-04-16
  Time: 11:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete user</title>
</head>
<body>
<h1>Delete user</h1>
<form method="post">
  Name: <input type="text" name="name" value="${user.getName()}" disabled>
  Age: <input type="text" name="age" value="${user.getAge()}" disabled>
  Email: <input type="text" name="email" value="${user.getEmail()}" disabled>
  Phone Number: <input type="text" name="phoneNumber" value="${user.getPhoneNumber()}" disabled>
  <input type="submit" value="Confirm delete!">
</form>
<a href="UserServlet">Back to Home</a>
</body>
</html>
