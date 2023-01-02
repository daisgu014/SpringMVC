<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Product</title>
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body>
  <h2>Insert New Product</h2>
    <form:form method="POST"
        action="/products/insertProduct"  
        modelAttribute="product">
        <form:input type="text" 
            value="" 
            placeholder="Enter product's name"
            path="productName"
        /><br>    
        <form:errors path="productName" cssClass="error"/> <br>           
        <form:input type="number" 
            value="" 
            placeholder="Enter product's price"
            path="price"
        /><br/>  
        <form:errors path="price" cssClass="error" /> <br>
        <form:input type="text" 
            value="" 
            placeholder="Enter description"
            path="description"
        /><br/>     
        <form:errors path="description" cssClass="error"/> <br>       
        <form:select path="categoryID">
            <c:forEach var="category" items="${categories}">
                <form:option value="">
                    ${category.getCategoryName()}
                </form:option>
            </c:forEach>                        
        </form:select>
        <input type="submit" value="Insert"/>
    </form:form>        
    <p class = "error">${error}</p>
</body>
</html>