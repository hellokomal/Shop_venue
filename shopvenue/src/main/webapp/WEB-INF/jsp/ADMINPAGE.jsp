<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
	<div class="row">

			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h1>Add a Product</h1>
				<a href="<spring:url value="/j_spring_security_logout"/>">LOGOUT</a>
				
					<tr>
							<td><form:label path="id" class="form-group">
									<spring:message text="ID" />
								</form:label></td>
							<c:choose>
								<c:when test="${!empty product.id}">
									<td><form:input path="id" disabled="true" readonly="true" />
									</td>
								</c:when>
								</c:choose>
					<tr>
							<form:input path="pid" hidden="true" />
							<td><form:label path="pname">
									<spring:message text="Name" />
								</form:label></td>
							<td><form:input path="pname" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="brand">
									<spring:message text="brand" />
								</form:label></td>
							<td><form:input path="brand" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="description">
									<spring:message text="Product Description" />
								</form:label></td>
							<td><form:input path="description" required="true" /></td>
						</tr>
						<tr>
							<td><form:label path="category">
									<spring:message text="Product Category" />
								</form:label></td>
							<td><form:input path="category" required="true" /></td>
						</tr>
						<tr>
						<tr>
							<td><form:label path="price">
									<spring:message text="Product price" />
								</form:label></td>
							<td><form:input path="price" required="true" /></td>
						</tr>
						<tr>
					<table>
		<tr>
							<td colspan="2"><c:if test="${!empty product.pname}">
									<input type="submit" class="btn btn-primary"
										value="<spring:message text="Edit Product"/>" />
								</c:if> <c:if test="${empty product.pname}">
									<input type="submit" class="btn btn-primary"
										value="<spring:message text="Add Product"/>" />
								</c:if></td>
						</tr>
		<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h3>Product List</h3>
				<c:if test="${!empty productList}">
					<table class="tg">
						<tr>
							<th width="">Product ID</th>
							<th width="120">Product Name</th>
							<th width="120">Product Brand</th>
							<th width="120">Product Description</th>
							<th width="120">Product Category</th>
							<th width="120">Product Price</th>
		<th width="60">Edit</th>
							<th width="60">Delete</th>
						</tr>
<c:forEach items="${productList}" var="product">
							<tr>
								<td>${product.pid}</td>
								<td>${product.pname}</td>
								<td>${product.brand}</td>
								<td>${product.description}</td>
								<td>${product.category}</td>
								<td>${product.price}</td>
								<td><a
									href="<c:url value='/Admin/product/edit/${product.id}' />">Edit</a></td>
								<td><a
									href="<c:url value='/Admin/product/remove/${product.id}'/>">Delete</a></td>
							</tr>
						</c:forEach>
					</table>
				</c:if>

			</div>
		</div>
</head>
<body>

</body>
</html>