<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Users Shipping Details</h1>
<div class="col-lg-12 well">
	<div class="row">
				<form:form commandName="shippingAddress" modelAttribute="shippingAddress"
					
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
		<div class="col-sm-4 form-group">
								<form:label  path="address">Address</form:label>
								<form:input type="text" path="address"  required="true" placeholder="Enter address.." class="form-control"/>
							</div>	
							<div class="col-sm-4 form-group">
								<form:label path="mobile">Mobile</form:label>
								<form:input type="text" path="mobile"  required="true" placeholder="Enter your mobile number.." class="form-control"/>
							</div>
							<input class="btn btn-info" name="_eventId_edit" type="submit"
                                                     value="Back" />
                                                     <input class="btn btn-info" name="_eventId_submit" type="submit"
                                                     value="Next" />
							</form:form>
							
	   
</body>
</html>