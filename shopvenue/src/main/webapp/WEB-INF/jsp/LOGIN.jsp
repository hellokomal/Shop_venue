<%@ page language="java" contentType="text/html; charset=ISO-8859-1"


    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
      <li class="active"><a href="HOME.html">Home</a></li>
      <li><a href="${session.getContextPaths()}/shopvenue/aboutus">ABOUT US</a></li>
      <li><a href="${session.getContextPath()}/shopvenue/Product">PRODUCTS</a></li> 
      <li><a href="${session.getContextPath()}/shopvenue/contactus">CONTACT US</a></li>
      <li><a href="${session.getContextPath()}/shopvenue/login">LOGOUT</a></li>
      <li><a href="${session.getContextPath()}/shopvenue/register">REGISTER</a></li>
       
    </ul>
  </div>
</nav>
<div class="container" align="center">
<fieldset>
<legend class="legend"><H1>LOGIN</H1> </legend>
  
 
 <br/>  
<form action="loginprocess.jsp" method="post" align="centre">  
Email:
</br><input type="text" name="email"/><br/>  
Password:
</br>
<input type="password" name="password"/><br/>  
<input type="submit" value="login"/> 
</fieldset>
</form>
</div>
</head>
<body>

</body>
</html>


