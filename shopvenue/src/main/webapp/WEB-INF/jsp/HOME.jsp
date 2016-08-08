<%@ page language="java" isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
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
      <li><a href="${session.getContextPath()}/shopvenue/login">LOGIN</a></li>
      <li><a href="${session.getContextPath()}/shopvenue/register">REGISTER</a></li>
       
    </ul>
  </div>
</nav>
<!-- <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
     
      margin: auto;
  }
  </style> -->



<div  height="750px" class="container-fluid">
<div class="row">

  <div id="myCarousel"   class="carousel slide col-md-12 col-xs-12 col-sm-12" data-ride="carousel">
    <!-- Indicators -->
    <center>
    <!-- Wrapper for slides -->
    <div class="carousel-inner"   style="height:750px" role="listbox">
      <div class="item active">
        <img src="resources/images/img2.jpg"   style="height:750px">
      </div>

      <div class="item">
        <img src="resources/images/img5.jpg"    style="height:750px">
      </div>
    
      <div class="item">
        <img src="resources/images/img3.jpg"   style="height:750px">
      </div>

      </center>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>
</div>
<div class="container">
<h1><i>Have the latest fashion in it,......</i></h1>
  
  <div class="row">
    <div class="col-sm-4" >
      <img src="resources/images/img2.jpg"  width="400" height="200">
    </div>
    <div class="col-sm-4" >
      <img src="resources/images/img3.jpg"  width="400" height="200">
      </div>
      <div class="col-sm-4" >
      <img src="resources/images/img2.jpg"  width="350" height="200">
  </div>
  </div>
</div>
<!-- --- -->



</body>
</html>


</body>
</html>