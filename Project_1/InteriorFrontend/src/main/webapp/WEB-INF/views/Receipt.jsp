<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>
<div class="container">
<table class="table table-bordered" align="center" border="1">
	<tr>
		<td colspan="6">Receipt</td>
	</tr>
	<tr>
		<td colspan="2">Order Id</td>
		<td>${orderDetail.orderId }</td>
		<td colspan="2">Order Date</td>
		<td>${orderDetail.orderDate}</td>
	</tr>

	<tr bgcolor="pink">
		<td>Serial No.</td>
		<td>Product Name</td>
		<td>Price</td>
		<td>Quantity</td>
		<td>Total Price</td>
		<td>Edit</td>
	</tr>
	<c:if test="${not empty cartitems}">
	<c:forEach items="${cartitems}" var="cartItem">
	<tr>
		<td></td>
		<td>${cartItem.productName}</td>
		<td>${cartItem.price}</td>
		<td><input type="text" name="quantity" value="${cartItem.quantity}"></td>
		<td>${cartItem.quantity*cartItem.price}</td>
	</tr>
	</c:forEach>
	</c:if>
	<tr bgcolor="orange">
		<td colspan="4">Total Purchase Amount</td>
		<td colspan="2">Rs ${totalCartAmount}/-</td>
	</tr>
	
	<tr bgcolor="cyan">
		<td colspan="6" align="6">Thanks For Shopping</td>
	</tr>
</table>
</div>
</body>
</html>