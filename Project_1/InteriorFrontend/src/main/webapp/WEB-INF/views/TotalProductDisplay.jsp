<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
<table class="table table-bordered table-hover" align="center">
	<tr>
		<td rowspan="9"><img src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="Image" style="width:100%"></td>
	</tr>
	<tr>
		<th class="table-success">Product Id</th>
		<td>${product.productId}</td>
	</tr>
	<tr>
		<th class="table-success">Product Name</th>
		<td>${product.productName}</td>
	</tr>
	<tr>
		<th class="table-success">Product Description</th>
		<td>${product.productDesc}</td>
	</tr>
	<tr>
		<th class="table-success">Product Price</th>
		<td>Rs ${product.price}/-</td>
	</tr>
	<tr>
		<th class="table-success">Product Stock</th>
		<td>${product.stock}</td>
	</tr>
	<tr>
		<th class="table-success">Supplier Id</th>
		<td>${product.supplierId}</td>
	</tr>
	<tr>
		<th class="table-success">Category Name</th>
		<td>${categoryName}</td>
	</tr>
	<form action='<c:url value="/addtocart/${product.productId}" />'>
	<tr>
		<th class="table-success">Quantity</th>
		<td><select name="quantity">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option></td>
	</tr>
	<tr>
		<td colspan="3"><button type="submit" class="btn btn-primary btn-block">Add to Cart</button></td>
	</tr>
	</form>
</table>   
</div>

<%@include file="Footer.jsp" %>