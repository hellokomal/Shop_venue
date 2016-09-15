<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product-details</title>
</head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}
</style>
<body ng-app"">
<div class="col-md-6">
<img src="<c:url value='/resources/${product.pid}.jpg' />"
class="img-responsive">
</div>
<div class="col-md-6" >
<form action="${session.getContextPath()}/shopvenue/order" method="post">
<table style="width:100%">
<table class="table table-hover">
</br>
	<tr>
		<th >ID
		</th>
		<th >NAME
		</th>
		<th >BRAND
		</th>
		<th >DESCRIPION
		</th>
		<th >PRICE
		</th>
	</tr>
<tr>
		<td>${product.pid}</td>
		<td>${product.pname}</td>
		<td>${product.brand}</td>
		<td>${product.description}</td>
		<td>${product.price}</td>
		
	</tr>
	</form>
	</table>
	<input type="submit" class="btn btn-primary" value="Add to Cart"/> 
</br>
</table>

</div>

</body>
</html>