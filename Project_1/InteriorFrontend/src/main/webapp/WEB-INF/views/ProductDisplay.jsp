<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="Header.jsp" %>

<div class="container">
<h1 class="text-muted display-4">Deals of the Day</h1>
</br>
<c:forEach items="${productlist}" var="product">
<div class="container">
<div class="card float-left" style="width:180px">
    <center><img class="card-img-top" src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt="Image" style="width:170px;height:190px"></center>
    <div class="card-body">
      <h5 class="card-title">${product.productName}</h5>
      <p class="card-text">Price : Rs ${product.price}/-</p>
      <p class="card-text"><span class="badge badge-success">4.2&nbsp<i class="fa fa-star" aria-hidden="true"></i></span></p>
      <a href="<c:url value="/totalproductdisplay/${product.productId}"/>" class="btn btn-primary">Click for Large</a>
    </div>
  </div>
  </div>
</c:forEach>
</div>
</br>

