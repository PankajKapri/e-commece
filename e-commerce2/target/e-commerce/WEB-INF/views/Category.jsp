<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>customer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>
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
  	 background-color: brown;
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


<!--TABLE PART -->
	table,th,td
	{
		border:1px solid black;
		border-collapse: collapse;
	}
	th,td
	{   font-family:Comic Sans MS;
		padding:5px;
	}
input[type="submit"] {
background-color: #008dde;
border: none;
border-radius: 5px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #f4f4f4;
cursor: pointer;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
height: 50px;
text-transform: uppercase;
width: 200px;
-webkit-appearance:none;
border-padding:10px 50px;
}
	
form fieldset a {
color: #5a5656;
font-size: 15px;
}
	
</style>
	</head>
	<nav class="navbar navbar-default">
	 <div class="container-fluid">
	 <ul class="nav navbar-nav">
	 
<li><a href = "#home">ShopBrands</a></li>
<li><a class="active" href = "Category">Category</a></li>
<li><a href = "Supplier">supplier</a></li>
<li><a href = "Product">Product</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
 <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      </ul>
      </nav>
 <div class="container">    
      
      <h1>Category</h1>

<form:form action ="saveCategory" commandName="category" method="post"> 
<table style="width:50%" align="center">
<!--<tr>
  <th>id</th>
<td><form:input type="hidden" path="catid"/></td></tr> -->
<tr>
<th>name</th>
<td><form:input type="text" path="catname" /></td></tr>
<tr>
<th>Description</th>
<td><form:input type="text" path="catdesc" /></td></tr>
<tr>
<td><input type="submit" value="submit">
</tr></table>
</form:form>
<br>
<br>
<br>

<table class="table table-hover">

    <thead>
      <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>DESCRIPTION</th>
      </tr>
      </thead>
 <c:forEach var="cat" items="${catlist}">
   <tbody>
<tr>
<td>${cat.catid}</td>
<td>${cat.catname}</td>
<td>${cat.catdesc}</td>
<td><a href="deletecat?cid=${cat.catid}">Delete</a></td>
<td><a href="Editcat?cid=${cat.catid}">Edit</a></td>

</tr>
</tbody>
</c:forEach></table></div></div>


</html>
