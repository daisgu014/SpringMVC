<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product</title>
    <style>
        table,th,td{
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;

        }
    </style>
</head>
<body>
    <h1>Product List by CategoryID</h1>
    <table>
        <tr>
            <td>Product ID</td>
            <td>Product Name</td>
            <td>price </td>
            <td>Description</td>
            <td>Actions</td>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.getProductID()}</td>
                <td>${product.getProductName()}</td>
                <td>${product.getPrice()}</td>
                <td>${product.getDescription()}</td>
                <td><a href="../changeCategory/${product.getProductID()}">Update</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>