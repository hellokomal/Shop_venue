<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
        
        var products=angular.module('products' , [])
        products.controller('ProductController', function($scope){$scope.productsjson=${products}});
        
 </script>
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

<title>Insert title here</title>

</head>
<body>
 <body ng-app="products">
 
   <div class="container">
	<div class="well well-lg"> <h2>OUR PRODUCTS</h2></div>
	<div ng-controller="ProductController">
	   
	  
	   <label>Search :<input ng-model="searchKeyword"/></label><br/>
	   <div class="table-responsive">
	    <table class="table table-hover">
	    <tr>
	    
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product brand</th>
         <th>Product description</th>
        
          <th>category</th>
          <th>price</th>
     </tr>	
<tr ng-repeat="product in productsjson|filter:searchKeyword">
	  
	   <td>{{product.pid}}</td>
	   <td>{{product.pname}}</td>
	   <td>{{product.brand}}</td>
	   <td>{{product.description}}</td>
	   <td>{{product.category}}</td>
	   <td>{{product.price}}</td>
	   
	   
<body>


</body>
</html>