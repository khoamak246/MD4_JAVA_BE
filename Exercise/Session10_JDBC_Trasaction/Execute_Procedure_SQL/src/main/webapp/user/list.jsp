<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: khoam
  Date: 2023-04-16
  Time: 10:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List User</title>
</head>
<body>
<h1>List User</h1>
<a href="UserServlet?action=create">Create User</a>
<table border="1">
    <thead>
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Email</th>
        <th>Phone Number</th>
    </tr>
    </thead>
    <tbody>
    <c:if test="${listUser != null}">
        <c:forEach items="${listUser}" var="user">
            <tr>
                <td>${user.getName()}</td>
                <td>${user.getAge()}</td>
                <td>${user.getEmail()}</td>
                <td>${user.getPhoneNumber()}</td>
                <td><a href="UserServlet?action=edit&id=${user.getId()}">Edit</a></td>
                <td><a href="UserServlet?action=delete&id=${user.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </c:if>
    </tbody>
</table>

</body>
</html>
