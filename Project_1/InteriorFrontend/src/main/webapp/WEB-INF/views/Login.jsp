<%@include file="Header.jsp" %>

<!-- <div class="col-md-12">
 	<div class="modal-dialog" style="margin-bottom:0">
    	<div class="modal-content">
        	<div class="panel-heading">
            	<h2 class="panel-title">Login Form</h2>
            </div>
            <div class="panel-body">
            	<form role="form" action="perform_login" method="post">
                	<fieldset>
                    	<div class="form-group">
                    		<label for="exampleInputEmail1">Username</label>
                        	<input class="form-control" placeholder="Username" name="username" type="text" autofocus="">
                        </div>
                        <div class="form-group">
                        	<label for="exampleInputPassword1">Password</label>
                        	<input class="form-control" placeholder="Password" name="password" type="password">
                        </div>
                    Change this to a button or input when using this as a form
                        <input type="submit" class="btn btn-md btn-success" value="Login">
                     </fieldset>
                 </form>
             </div>
             </div>
    </div>
</div> -->

<div class="container">
  <h2>Login Form</h2>
  <form action="perform_login" method="post">
    <div class="form-group">
      <label for="username">UserName :</label>
      <input type="text" class="form-control" placeholder="Enter UserName" name="username">
    </div>
    <div class="form-group">
      <label for="pwd">Password :</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password">
    </div>
    <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>
    <button type="submit" class="btn btn-primary">Login</button>
  </form>
</div>

</body>
</html>