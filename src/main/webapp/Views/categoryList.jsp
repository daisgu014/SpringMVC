<!DOCTYPE html> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
    <style>
        table,th,td{
            border: 1px solid black;
            border-collapse: collapse;
            padding: 5px;

        }
    </style>
</head>
<body>
    <h1>Category List</h1>
   <!--Display categories here, inside a Table-->
   <table>
   <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Description</th>
    <th>Action</th>
   </tr>
   <c:forEach var="category" items="${categories}">
    <tr>
        <td>${category.getCategoryID()}</td>
        <td>${category.getCategoryName()}</td>
        <td>${category.getDescription()}</td>
        <td style="color: blue;"><a href="/products/getProductsByCategoryID/${category.getCategoryID()}">Show Product</a></td>
    </tr>
    </c:forEach>
    <a href="products/insertProduct">insertProduct</a>
   </table>
</body>
</html>