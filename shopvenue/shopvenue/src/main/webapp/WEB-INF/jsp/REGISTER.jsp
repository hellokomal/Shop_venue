<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
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
</head>
<body>
<!--  <div class="container" align="center">
<centre><h1>REGISTRATION FORM</h1></centre>
<!-- <div class="col-lg-1 col-offset-6 centered"> 

<centre>
    <form>
  First name:<br>
  <input type="text" name="firstname"><br>
  Last name:<br>
  <input type="text" name="lastname"><br>
  CustomerID:<br>
  <input type="text" name="custid"><br>
  Password:<br>
  <input type="text" name="password"><br>
  Address:<br>
  <input type="text" name="address"><br>
  Mobilenumber:<br>
  <input type="text" name="mobile"><br>
  Email:<br>
  <input type="text" name="email"><br>
  <br>
  <input type="submit" value="Submit">
</form>

</centre>
</div>  -->
<div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
				<form:form commandName="register" modelAttribute="register"
					action="http://localhost:8080/shopvenue/insertregister"
					method="POST">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="firstname">First Name</form:label>
								<form:input type="text" required="true" path="firstname" placeholder="Enter First Name Here.." class="form-control"/>
							</div>
							<div class="col-sm-6 form-group">
								<form:label path="lastname">Last Name</form:label>
								<form:input type="text" path="lastname"  required="true" placeholder="Enter Last Name Here.." class="form-control"/>
							</div>
						</div>					
						
						<div class="row">
							<div class="col-sm-4 form-group">
								<form:label  path="password">Password</form:label>
								<form:input type="password"  path="password"  required="true" placeholder="Enter youe password.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<form:label  path="address">Address</form:label>
								<form:input type="text" path="address"  required="true" placeholder="Enter address.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<form:label path="mobile">Mobile</form:label>
								<form:input type="text" path="mobile"  required="true" placeholder="Enter your mobile number.." class="form-control"/>
							</div>		
						</div>
						<div class="row">
							<div class="col-sm-6 form-group">
								<form:label path="email">Email</form:label>
								<form:input type="email" path="email" required="true" placeholder="Enter email.." class="form-control"/>
							</div>		
							
					<button type="submit" class="btn btn-lg btn-info">Submit</button>					
					</div>
				</form:form> 
				</div>
	</div>
	</div>
</div>

	  
	   
	   
</body>
</html>