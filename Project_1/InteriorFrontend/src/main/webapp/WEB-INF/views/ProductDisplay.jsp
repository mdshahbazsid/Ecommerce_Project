<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- Deals of the Day
<c:forEach items="${productlist}" var="product">
<p align="center">
	<img src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="Image" >${product.productName}&nbsp|Price : ${product.price} Rs
	
	<a href="<c:url value="/totalproductdisplay/${product.productId}"/>">Click for Large</a></p>
</c:forEach> --%>

<div class="container">
<h2>Deals of the Day</h2>
</br>
<c:forEach items="${productlist}" var="product">
<div class="container">
<div class="card float-left" style="width:270px">
    <center><img class="card-img-top" src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="Image" style="width:95%"></center>
    <div class="card-body">
      <h4 class="card-title">${product.productName}</h4>
      <p class="card-text">Price :  Rs ${product.price}/-</p>
      <p class="card-text"><span class="badge badge-success">4.2&nbsp<i class="fa fa-star" aria-hidden="true"></i></span></p>
      <a href="<c:url value="/totalproductdisplay/${product.productId}"/>" class="btn btn-primary">Click for Large</a>
    </div>
  </div>
  </div>
</c:forEach>
</div>


</body>
</html>