<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login form</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="http://localhost:8080/shopvenue/">Home</a></li>
      <li><a href="http://localhost:8080/shopvenue/aboutus">ABOUT US</a></li>
      <li><a href="http://localhost:8080/shopvenue/Product">PRODUCTS</a></li> 
      <li><a href="http://localhost:8080/shopvenue/contactus">CONTACT US</a></li>
      <li><a href="http://localhost:8080/shopvenue/login">LOGIN</a></li>
      <li><a href="http://localhost:8080/shopvenue/register">REGISTER</a></li>
		</ul>
	</div>
	</nav>
	<!-- <div class="container" align="center">
		<fieldset>
			<legend class="legend">
				<H1>LOGIN</H1>
			</legend>


			<br />

			<form action="login" method="post" align="centre">
				Email: </br>
				<input type="text" id="email" class="form-control" name="email" /><br /> Password: </br> <input
					type="password" id="password" name="password" /><br /> <input
					type="submit" value="login" />
		</fieldset>
		</form>
	</div> -->
	
	
	<div class="container">
	<div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Welcome to ShopVenue</h3>
                </div>
                <div class="panel-body" >
                    <form role="form" action="login" method="post" >
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="E-mail" name="email" id="email" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="password" id="password" type="password" value="">
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <button type="submit" class="btn btn-success btn-block">Login</button>
                            
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>



</html>


