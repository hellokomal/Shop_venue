<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cart details</title>
</head>
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
		<li><a href="http://localhost:8080/shopvenue/aboutus">ABOUT
				US</a></li>
		<li><a href="http://localhost:8080/shopvenue/Product">PRODUCTS</a></li>
		<li><a href="http://localhost:8080/shopvenue/contactus">CONTACT
				US</a></li>
		<li><a href="http://localhost:8080/shopvenue/login">LOGIN</a></li>
		<li><a href="http://localhost:8080/shopvenue/register">REGISTER</a></li>
	</ul>
</div>
</nav>
<body ng-app="">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
<form:form>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Brand</th>
						<th>Category</th>
						<th>Description</th>
						<th>Price</th>

					</tr>
				</thead>

				<tr>
					<td>${product.pid}</td>
					<td>${product.pname}</td>
					<td>${product.brand}</td>
					<td>${product.category}</td>
					<td>${product.description}</td>
					<td>${product.price}</td>
					<td><a class="btn btn-danger"
						href="<c:url value='/product/delete/${product.pid}'/>">Delete
							<span class="glyphicon glyphicon-remove"></span>
					</a></td>
				</tr>
				<td>Total Amount:</td>

			</table>
			<input name="_eventId_submit" type="submit" value="Next" />
			</form:form>
		</div>
	</div>
</body>

</html>