<%@ page language="java" contentType="text/html; charset=ISO-8859-1"


    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
          <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <!--Link to bootstrap css should first and then followed by link to our own css-->
        <link rel="stylesheet" type="text/css" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
        <!--First Look for the bootstrap css online if not present then use the below link-->              
        <link rel="stylesheet" type="text/css" href=/resources/bootstrap-3.3.6-dist/css/bootstrap.min.css  >
            <style>
            .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
        #signIn{
    margin: auto;
    width: 50%;
    border: 3px ;
    padding: 10px;
             margin-bottom: 50px;
}
</style>
    </head>
 <body>
     
     <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="HOME.html">Home</a></li>
      <li><a href="${session.getContextPath()}/shopvenue/aboutus">ABOUT US</a></li>
      <li><a href="${session.getContextPath()}/shopvenue/Product">PRODUCTS</a></li> 
      <li><a href="${session.getContextPath()}/shopvenue/contactus">CONTACT US</a></li>
      <li><a href="${session.getContextPath()}/shopvenue/login">CONTACT US</a></li>
      <li><a href="${session.getContextPath()}/shopvenue/register">REGISTER</a></li>
       
    </ul>
  </div>
</nav><fieldset>
<legend class="legend"><H1>LOGIN</H1> </legend>
  
 
 <br/>  
<form action="loginprocess.jsp" method="post">  
Email:
</br><input type="text" name="email"/><br/>  
Password:
</br>







<input type="password" name="password"/><br/>  
<input type="submit" value="login"/> 
</fieldset>
</form>
</head>
<body>

</body>
</html>


