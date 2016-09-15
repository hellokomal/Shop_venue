<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" />
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-6">
				<h1>Add a Product</h1>

				</br> <a href="<spring:url value="/login"/>"><u>LOGOUT</u></a> </br> </br>
				
					
<!--  

						<c:choose>
							<c:when test="${!empty product.pid}">
								<div class="col-sm-2">
									<form:label path="pid">
										<spring:message text="ID:" />
									</form:label>
								</div>
								<div class="col-sm-10">
									<form:input class="form-control" path="pid" disabled="true"
										readonly="true" />
								</div>
							</c:when>
						</c:choose>

					</div>
					<%-- <div class="form-group">
						<div class="col-sm-2">

							<form:input path="pname" hidden="true" />
							<form:label path="pname">
								<spring:message text="Product Name:" />
							</form:label>
						</div>

						<div class="col-sm-10">

							<form:input class="form-control" path="pname" required="true" />
						</div>
					</div> --%>




					<div class="form-group">
						<div class="col-sm-2">

							<%-- <form:input path="brand" hidden="true" /> --%>
							<form:label path="brand">
								<spring:message text="Brand:" />
							</form:label>
						</div>

						<div class="col-sm-10">

							<form:input class="form-control" path="brand" required="true" />
						</div>
					</div>
					
					<div class="form-group">
						<div class="col-sm-2">

							<%-- <form:input path="description" hidden="true" /> --%>
							<form:label path="description">
								<spring:message text="Product description:" />
							</form:label>
						</div>

						<div class="col-sm-10">

							<form:input class="form-control" path="description"
								required="true" />
						</div>
					</div>
					
					
					<div class="form-group">
						<div class="col-sm-2">
<%-- 
							<form:input path="category" hidden="true" /> --%>
							<form:label path="category">
								<spring:message text="Product category:" />
							</form:label>
						</div>

						<div class="col-sm-10">

							<form:input class="form-control" path="category" required="true" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-2">

							<%-- <form:input path="price" hidden="true" /> --%>
							<form:label path="price">
								<spring:message text="Price:" />
							</form:label>
						</div>

						<div class="col-sm-10">

							<form:input class="form-control" path="price" required="true" />
						</div>


					</div>

 
					<%-- <div>
						<c:if test="${!empty product.pname}">
							<input type="submit" class="btn btn-primary"
								value="<spring:message text="Edit Product"/>" />
						</c:if>
						<c:if test="${empty product.pname}">
							<input type="submit" class="btn btn-primary"
								value="<spring:message text="Add Product"/>" />
						</c:if>
					</div> --%>
				


			</div>
			
			-->
		
			
			<form:form
					action="${session.getContextPath()}/adminInsert"
					modelAttribute="product" enctype="multipart/form-data"
					commandName="product">
			
			<table>
			
						<tr>
							<td><form:label path="pid" class="form-group">
									<spring:message text="ID" />
								</form:label></td>
							<c:choose>
								<c:when test="${!empty product.pid}">
									<td><form:input path="pid" disabled="true" readonly="true" />
									</td>
								</c:when>

								
							</c:choose>
						<tr>
							<form:input path="pname" hidden="true" />
							<td><form:label path="pname">
									<spring:message text="Name" />
								</form:label></td>
							<td><form:input path="pname" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="brand">
									<spring:message text="Brand" />
								</form:label></td>
							<td><form:input path="brand" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="category">
									<spring:message text="Category" />
								</form:label></td>
							<td><form:input path="category" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="description">
									<spring:message text="Product description" />
								</form:label></td>
							<td><form:input path="description" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="price">
									<spring:message text="Price" />
								</form:label></td>
							<td><form:input path="price" required="true" /></td>
						</tr>
						
						<tr>
							<td>

								<div class="form-group">
									<form:label path="image">
										<spring:message text="Choose Image" />
									</form:label>

									<form:input path="image" type="file" class="form-control" />


								</div>

							</td>
						</tr>
												<tr>
							<td colspan="2"><c:if test="${!empty product.pname}">
									<input type="submit" class="btn btn-primary"
										value="<spring:message text="Edit Product"/>" />
								</c:if> <c:if test="${empty product.pname}">
									<input type="submit" class="btn btn-primary"
										value="<spring:message text="Add Product"/>" />
								</c:if></td>
						</tr>


					</table>
					</form:form>
				

			</div>
			<div class="col-md-4"></div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h3>Product List</h3>
				<c:if test="${!empty productlist}">
					<table class="table-hover table-striped">

						<tr style="background: #a2cad3; color: white">
							<th width="80">Product ID</th>
							<th width="120">Product Name</th>
							<th width="120">Brand</th>
							<th width="120">Product Description</th>
							<th width="130">Product Category</th>
							<th width="120">Product price</th>
							<th width="60">Edit</th>
							<th width="60">Delete</th>
						</tr>
						<c:forEach items="${productlist}" var="product">
							<tr>
								<td>${product.pid}</td>
								<td>${product.pname}</td>
								<td>${product.brand}</td>
								<td>${product.description}</td>
								<td>${product.category}</td>
								<td>${product.price}</td>
								<td><a class="btn btn-warning"
									href="<c:url value='/Admin/product/edit/${product.pid}' />">Edit
										<span class="glyphicon glyphicon-edit"></span>
								</a></td>
								<td><a class="btn btn-danger"
									href="<c:url value='/Admin/product/delete/${product.pid}'/>">Delete
										<span class="glyphicon glyphicon-remove"></span>
								</a></td>
							</tr>
						</c:forEach>
					</table>
				</c:if>

			</div>
		</div>
	</div>
</body>
</html>