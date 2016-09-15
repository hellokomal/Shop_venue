<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>confirm here</title>
</head>
<body>
<a href="<spring:url value="/Home"/>"><u>HOME</u></a> </br> </br>
   <form:form method="post"  modelAttribute="shippingAddress"  commandName="shippingAddress">
  
   <table>
   
   
   <tr>
   <td><form:label path="firstname">First name</form:label></td>
    <td>${shippingAddress.firstname}</td> 
   </tr>
   </br>
     <tr>
   <td><form:label path="lastname">Lastname</form:label></td>
    <td>${shippingAddress.lastname}</td> 
   </tr>
   </br>
   <tr>
   <%-- <td><form:label path="password">Password.</form:label></td> --%>
  <%--  <td>${register.phone_no2}</td> --%>
   </tr>
    <tr>
   <td><form:label path="address">Address</form:label></td>
    <td>${shippingAddress.address}</td> 
   </tr>
   </br>
   <tr>
   <td><form:label path="mobile">Mobile</form:label></td>
    <td>${shippingAddress.mobile}</td> 
   </tr>
   </br>
   </table>
   
  <input name="_eventId_edit" type="submit" value="Back" /> 
  <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/>
 <input name="_eventId_submit" type="submit" value="confirm Details" />
  <input type="hidden" name="_flowExecutionKey" value="${flowExecutionKey}"/> 
   </form:form>
   </fieldset>
 </div>
</body>
</html>