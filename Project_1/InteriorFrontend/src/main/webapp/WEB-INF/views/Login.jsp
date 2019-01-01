<%@include file="Header.jsp" %>


<div class="container">
  <h1 class="display-4">Login Form</h1>
  </br>
  <c:if test="${not empty error}">
		<div class="error"><h6 style="color:red;">${error}</h6></div>
  </c:if>
  <c:if test="${not empty msg}">
			<div class="msg"><h6 style="color:green;">${msg}</h6></div>
  </c:if>
  </br>
  <form action="perform_login" method="post">

    <div class="form-group">
      <label for="username">UserName :</label>
      <input type="text" class="form-control" placeholder="Enter UserName" name="username" required="required" >
    </div>
    <div class="form-group">
      <label for="pwd">Password :</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password" required="required">
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
  </form>
</div>

<%@include file="Footer.jsp" %>
