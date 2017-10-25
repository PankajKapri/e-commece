<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<title>product</title>
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
	
	

	</style>
	</head>
	<nav class="navbar navbar-default">
	 <div class="container-fluid">
	 <ul class="nav navbar-nav">

<li><a href = "#home">Accesstools</a></li>
<li><a href = "Category">Category</a></li>
<li><a href = "Supplier">supplier</a></li>
<li><a class="active" href = "Product">Product</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
 <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      </ul></div></nav>
      
      <div class="container">
      
<h1>PRODUCT</h1>
<form:form action = "SaveProduct" modelAttribute="product" method="post" enctype="multipart/form-data">
<table style="width:50%" align="center">
<tr>
<!--  <tr>
<th>product id</th>
<td><form:input type ="hidden" path="id"/></td>
</tr>-->
<tr>
<th>product name</th>
<td><form:input type ="text" path ="name"/></td>
</tr>
<tr>
<th>product prize</th>
 <td><form:input type ="text" path ="prize"/></td>
 </tr>
 <tr>
<th>quantity</th>
<td><form:input type ="text" path ="quantity"/></td>
</tr>
<tr>
<th>description</th>
 <td><form:input type ="text" path ="descrption"/></td>
 </tr><tr>
<th>Category Name</th>
 <td><form:select name="CustomerId" path="CustId">
         <option value="-1" selected>select..</option>
         <c:forEach var="category" items="${catlist}">
         <option value="${category.catid}">${category.catname}</option></c:forEach>
         </form:select>
     </td> </tr>
     <tr>
<th>Supplier Name</th>
 <td><form:select path ="SuppId">
         <option value="-1">select..</option>
         <c:forEach var="sup" items="${suplist}">
         <option value="${sup.supplierid}">${sup.suppliername}</option></c:forEach>
         </form:select></td>
</tr>
<tr>
 <th>Upload a image</th>
<td><input type="file" name="Image"></td>
</tr>
<tr>   
<td><input type ="submit" value="Submit"  ></td>
        
     </tr>
   </table>
</form:form>

<br>
<br>
<br>
<div class="container">
<table class="table table-hover">

    <thead>
      <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>PRIZE</th>
        <th>QUANTITY</th>
        <th>DESCRIPTION</th>
        <th>Image</th>
      </tr>
      </thead>
 <c:forEach var="pro" items="${prolist}">
 <c:url value="/resources/${pro.id}.jpg" var="imageurl"></c:url>
   <tbody>
<tr>
<td>${pro.id}</td>
<td>${pro.name}</td>
<td>${pro.prize}</td>
<td>${pro.quantity}</td>
<td>${pro.descrption}</td>
<td><img src="${imageurl}" height="50" width="50"></td>
<td><a href="deletepro?pid=${pro.id}">Delete</a></td>
<td><a href="Editpro?pid=${pro.id}">Edit</a></td>
</tr>
</tbody>
</c:forEach></table></div></div>

</html>
