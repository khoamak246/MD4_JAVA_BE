<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.showlistcustomer.show_list_customer.model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <style>
        table {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, tr, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>


<%List<Customer> customers = new ArrayList<>();
customers.add(new Customer("Mai Van Hoan", "1983-08-20", "Ha Noi", "https://cdn-icons-png.flaticon.com/512/168/168871.png"));
customers.add(new Customer("Nguyen Van Nam", "1983-08-21", "Bac Giang", "https://cdn-icons-png.flaticon.com/512/168/168871.png"));
customers.add(new Customer("Nguyen Thai Hoa", "1983-08-22", "Nam Dinh", "https://cdn-icons-png.flaticon.com/512/168/168871.png"));
customers.add(new Customer("Tran Dang Khoa", "1983-08-17", "Ha Tay", "https://cdn-icons-png.flaticon.com/512/168/168871.png"));
customers.add(new Customer("Nguyen Dinh Thi", "1983-08-19", "Ha Noi", "https://cdn-icons-png.flaticon.com/512/168/168871.png"));
%>
<h1>Danh sach khach hang</h1>
<table>
    <thead>
        <tr>
            <th>Ten</th>
            <th>Ngay Sinh</th>
            <th>Dia chi</th>
            <th>Anh</th>
        </tr>
    </thead>
    <tbody>
    <%
    for (Customer customer : customers){
    %>
    <tr>
        <td><%= customer.getName()%></td>
        <td><%= customer.getDateOfBirt()%></td>
        <td><%= customer.getAddress()%></td>
        <td><img src="<%= customer.getAvatar()%>" alt="avatar" style="width: 100px"></td>
    </tr>
    <% } %>
<%--        <c:forEach items="${customers}" var="customer">--%>
<%--            <tr>--%>
<%--                <td>${customer.getName}</td>--%>
<%--                <td>${customer.getDateOfBirt}</td>--%>
<%--                <td>${customer.getAddress}</td>--%>
<%--                <td><img src="${customer.getAvatar}" alt="avatar"></td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
    </tbody>
</table>


</body>
</html>