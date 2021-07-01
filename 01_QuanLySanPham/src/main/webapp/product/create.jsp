<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 7/1/2021
  Time: 7:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html>
<head>
    <title>Create new product</title>
</head>
<body>
<h1>Create product</h1>
<p><a href="/product">Back productlist</a></p>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<form method="post">
    <filedset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>ID:</td>
                <td><input type="text" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Description:</td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td>Manufacturer:</td>
                <td><input type="text" name="price" id="manufacturer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create"></td>
            </tr>
        </table>
    </filedset>
</form>

</body>
</html>
