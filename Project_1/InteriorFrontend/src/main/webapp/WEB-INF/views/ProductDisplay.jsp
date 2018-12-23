<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="Header.jsp" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
<h3 class="text-muted">Deals of the Day</h3>
</br>
<c:forEach items="${productlist}" var="product">
<div class="container">
<div class="card float-left" style="width:270px">
    <center><img class="card-img-top" src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="Image" style="width:240px;height:270px"></center>
    <div class="card-body">
      <h5 class="card-title">${product.productName}</h5>
      <p class="card-text">Price :  Rs ${product.price}/-</p>
      <p class="card-text"><span class="badge badge-success">4.2&nbsp<i class="fa fa-star" aria-hidden="true"></i></span></p>
      <a href="<c:url value="/totalproductdisplay/${product.productId}"/>" class="btn btn-primary">Click for Large</a>
    </div>
  </div>
  </div>
</c:forEach>
</div>
</br>

<%@include file="Footer.jsp" %>
