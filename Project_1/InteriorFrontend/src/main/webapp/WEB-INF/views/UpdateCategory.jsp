<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

<form action="<c:url value="/updatecategory"/>" method="post">
	<table>
		<tr>
			<td>Category ID</td>
			<td><input type="text" name="cid" value="${categoryData.categoryId}" readonly></td>
		<tr>
			<td>Category Name : </td>
			<td><input type="text" name="cname" value="${categoryData.categoryName}"></td>
		</tr>
			<td>Category Description : </td>
			<td><input type="text" name="cdesc" value="${categoryData.categoryDesc}"></td>
		</tr>
		<tr>
			<td align="center"><input type="submit" value="update"></td>
		</tr>
	</table>	
</form>

</body>
</html>