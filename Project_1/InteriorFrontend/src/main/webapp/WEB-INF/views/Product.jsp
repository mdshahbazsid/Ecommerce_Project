<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%-- <form:form action="addproduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<table>
	<tr>
		<td>Product Name</td>
		<td><form:input path="productName"/></td>
	</tr>
	<tr>
		<td>Product Description</td>
		<td><form:input path="productDesc"/></td>
	</tr>
	<tr>
	<tr>
		<td>Price</td>
		<td><form:input path="price"/></td>
	</tr>
	<tr>
		<td>Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	<tr>
		<td>Category</td>
		<td><form:select path="categoryId">
				<form:option value="0" label="--Select Category--"/>
				<form:options items="${categoryList}"/>
			</form:select></td>	
	</tr>
		<tr>
		<td>Supplier</td>
		<td><form:select path="supplierId">
				<form:option value="0" label="--Select Supplier--"/>
				<form:options items="${supplierList}"/>
			</form:select></td>	
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pImage"/></td>
	</tr>
	<tr>
		<td align="center"><input type="submit" value="Add Product"></td>
	</tr>
</table>
</form:form> --%>

<div class="container">
<h2>Manage Product</h2>
</br>
<form:form action="addproduct" modelAttribute="product" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label>Product Name :</label>
    <form:input path="productName" class="form-control"/>
  </div>
  <div class="form-group">
    <label>Product Description :</label>
    <form:input path="productDesc" class="form-control"/>
  </div>
  <div class="form-group">
    <label>Price :</label>
    <form:input path="price" class="form-control"/>
  </div>
  <div class="form-group">
    <label>Stock :</label>
    <form:input path="stock" class="form-control"/>
  </div>
  <div class="form-group">
      <label>Select Category(select one) :</label>
      <form:select path="categoryId" class="form-control">
				<form:option value="0" label="--Select Category--"/>
				<form:options items="${categoryList}"/>
	  </form:select>
  </div>
  <div class="form-group">
      <label>Select Supplier(select one) :</label>
      <form:select path="supplierId" class="form-control">
				<form:option value="0" label="--Select Supplier--"/>
				<form:options items="${supplierList}"/>
	  </form:select>
  </div>
  <div class="form-group">
  	  <label>Select Product Image :</label>
      <form:input type="file" path="pImage" name="file" class="form-control-file border"/>
  </div>
  <button type="submit" class="btn btn-outline-primary">Add Product</button>
</form:form>
</div>
</br>


<div class="container">
<table class="table">
    <thead class="thead-light">
      <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Product Description</th>
        <th>Price</th>
        <th>Stock</th>
        <th>Category Id</th>
        <th>Supplier Id</th>
        <th>Operations</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${productlist}" var="product">
      <tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>Rs ${product.price}/-</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.supplierId}</td>
		<td>
			<a href='<c:url value="/editproduct/${product.productId}"/>' class="btn btn-warning" role="button">Edit</a>&nbsp
			<a href='<c:url value="/deleteproduct/${product.productId}"/>' class="btn btn-danger" role="button">Delete</a>
		</td>			
	 </tr>
	</c:forEach>
    </tbody>
  </table>
</div>

<%-- <table align="center" border="2">
	<tr bgcolor="pink">
		<td>Product Id</td>
		<td>Product Name</td>
		<td>Product Description</td>
		<td>Price</td>
		<td>Stock</td>
		<td>Category ID</td>
		<td>Supplier ID</td>
		<td>Operations</td>
	</tr>
	<c:forEach items="${productlist}" var="product">
	<tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.productDesc}</td>
		<td>${product.price}</td>
		<td>${product.stock}</td>
		<td>${product.categoryId}</td>
		<td>${product.supplierId}</td>
		<td>
			<a href='<c:url value="/editproduct/${product.productId}"/>'>Edit</a>&nbsp|
			<a href='<c:url value="/deleteproduct/${product.productId}"/>'>Delete</a>
		</td>
	</tr>
	</c:forEach>
</table> --%>

</body>
</html>