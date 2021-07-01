<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 7/1/2021
  Time: 7:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page language="java en" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<html>
<head>
    <title>List product</title>
</head>
<body>
<h1>List product nè nè nè nè</h1>
<table border="5px">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Desciption</th>
        <th>Manufacturer</th>
    </tr>
  <c:forEach var="p" items="${product}">
      <tr>
          <td>${p.id}</td>
          <td>${p.name}</td>
          <td>${p.price}</td>
          <td>${p.description}</td>
          <td>${p.manufacturer}</td>
          <td><a href="/product?action=edit&id=${customer.getId()}">Edit</a></td>
          <td><a href="/product?action=delete&id=${customer.getId()}">Delete</a></td>
      </tr>
  </c:forEach>
    <h6><a href="/product?action=create">Create new product</a></h6>
</table>
</body>
</html>
