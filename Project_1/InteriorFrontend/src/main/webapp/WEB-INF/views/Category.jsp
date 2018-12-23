<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@include file="Header.jsp" %>


<%-- <form action="<c:url value="/addcategory"/>" method="post">
	<table>
		<tr>
			<td>Category Name : </td>
			<td><input type="text" name="cname"></td>
		</tr>
			<td>Category Description : </td>
			<td><input type="text" name="cdesc"></td>
		</tr>
		<tr>
			<td align="center"><input type="submit" value="Add Category"></td>
		</tr>
	</table>	
</form>
</br>
</br> --%>

<div class="container">
  <h2>Manage Category</h2>
  </br>
  <form action="<c:url value="/addcategory"/>" method="post">
    <div class="form-group">
      <label for="text">Category Name :</label>
      <input type="text" class="form-control" placeholder="Enter Category Name" name="cname">
    </div>
    <div class="form-group">
      <label for="text">Category Description :</label>
      <input type="text" class="form-control" placeholder="Enter Category Description" name="cdesc">
    </div>
    <button type="submit" class="btn btn-outline-primary">Add Category</button>
  </form>
</div>
</br>

<div class="container">
<table class="table">
    <thead class="thead-light">
      <tr>
        <th>Category ID</th>
        <th>Category Description</th>
        <th>Category Name</th>
        <th>Operations</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${categorylist}" var="category">
      <tr>
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td>
			<a href="<c:url  value='/editcategory/${category.categoryId}'/>" class="btn btn-warning" role="button"><i class="fa fa-pencil" aria-hidden="true"></i></a>&nbsp
			<a href="<c:url  value='/deletecategory/${category.categoryId}'/>" class="btn btn-danger" role="button"><i class="fa fa-trash-o" aria-hidden="true"></i></a>
		</td>			
	 </tr>
	</c:forEach>
    </tbody>
  </table>
</div>

<%@include file="Footer.jsp" %>