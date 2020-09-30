
<%--
  Created by IntelliJ IDEA.
  User: DANG ANH VAN
  Date: 10/1/2020
  Time: 12:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
    <div class="container">
        <h2>Sản phẩm</h2>
        <table border="1px" cellpadding="10px">
            <tr>
                <th>ID</th>
                <th>Category</th>
                <th>Name</th>
                <th>Description</th>
                <th colspan="2">edit</th>
            </tr>
            <c:forEach var="product" items="${productList}">
                <tr>
                    <td><c:out value="${product.productId}"/></td>
                    <td><c:out value="${product.categoryId}"/></td>
                    <td><c:out value="${product.productName}"/></td>
                    <td><c:out value="${product.productDescription}"/></td>
                    <td><a href="/product?action=edit&id=${product.productId}">chỉnh sửa</a></td>
                    <td><a href="/product?action=remove&id=${product.productId}"> Xóa</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>

</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
</html>
