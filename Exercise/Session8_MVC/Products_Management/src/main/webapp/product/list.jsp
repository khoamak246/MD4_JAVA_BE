<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: khoam
  Date: 2023-04-16
  Time: 1:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Product</title>
</head>
<body>
<h1>Product</h1>
<a href="product?action=create">Create new Product</a>
<table border="1">
    <thead>
    <tr>
        <th>Name</th>
        <th>Price</th>
        <th>Stock</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope['products']}" var="product">
        <tr>
            <td><a href="product?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getStock()}</td>
            <td><a href="product?action=edit&id=${product.getId()}">Edit</a></td>
            <td><a href="product?action=delete&id=${product.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
