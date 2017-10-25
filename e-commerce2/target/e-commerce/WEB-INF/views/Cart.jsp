<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<style>
input[type="submit"] 
{
background-color: #008dde;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 275px;
-webkit-appearance:none;
}
.navbar {
      margin-bottom: 0;
      z-index: 9999;
      border: 0;
      font-size: 15px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Comic Sans MS, sans-serif;
    }  
    .container {
      padding: 80px 120px;
  }
    
    .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }
  
  
  li a:hover:not(.active)
  {
   background-color: #555;
   color:white;
  }
  li a.active
  {
  	 background-color: grey;
    color: white;
}
li
{
	float:left;
	font-size: 15px;
	font-family: Comic Sans MS;
}
h1
{
font-family: Times New Roman;
text-align: center;
}


</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    
    
      <a class="navbar-brand" href="#">ShopBrands</a>
    </div>
 <ul class="nav navbar-nav">
                    <li><a href="Home">Home</a></li>
                   <li><a href="Apple">Apple</a></li></ul>
                   
        
                	
                	<ul class="nav navbar-nav navbar-right">
       <li><a href="Cart"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a> </li>        	
      <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      </ul>
  </div></nav>
<table class="table table-hover">

    <thead>
      <tr>
        <th>ProductName</th>
        <th>Quantity</th>
        <th>SubTotal</th>
        <th>ProductImage</th>
        
      </tr>
      </thead>
<c:forEach items="${cartitems }" var="cartitem">
<tbody>
<tr>
<td>${cartitem.name }</td>
<td><input type="text" value="${cartitem.quantity}" name="quantity" required/></td>
<td>Rs.${cartitem.prize * cartitem.quantity}</td>
<td><img src="<c:url value='/resources/${cartitem.id}.jpg'/>" width="100" height="100">

<td>
<a href="<c:url value="/deleteCartItem/${cartitem.citemid}" />" class="btn btn-info btn-lg"><span class="glyphicon glyphicon-trash"></span>Delete</a>
</td>
</tr>
</tbody>
</c:forEach>
<tr>
<td><a href="<c:url value="/checkout"  />"><input type ="submit" value ="CheckOut"></a></td>

</tr>
</table>
</body>
</html>