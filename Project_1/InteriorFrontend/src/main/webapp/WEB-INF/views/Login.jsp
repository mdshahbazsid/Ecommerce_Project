<%@include file="Header.jsp" %>


<div class="container">
  <h2>Login Form</h2>
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
