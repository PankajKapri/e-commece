<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<style>
<!--navbar part-->
  body
{
background-color: orange;
}
	ul
	{
		list-style-type:none;
		margin:0;
		padding:0;
		overflow:hidden;
		background-color: #333;
		
  }
  li a
  {
  	display:block;
  	color:white;
  	text-align: center;
  	 padding: 25px 20px;
    text-decoration: none;

  }
  li a:hover:not(.active)
  {
   background-color: #555;
   color:white;
  }
  li a.active
  {
  	 background-color: #4CAF50;
    color: white;
}
li
{
	float:left;
	font-size: 25px;
	font-family: Comic Sans MS;
}
h1
{
font-family: Comic Sans MS;
text-align: center;
}
 
 
  <!-- Table part -->


table,th,td
	{
		border:1px solid black;
		border-collapse: collapse;
	}
	th,td
	{   font-family:Comic Sans MS;
		padding:5px;
	}
	</style>
	</head>
	<ul>
<li><a href = "#home">Accesstools</a></li>
<li><a href = "Category">Category</a></li>
<li><a class="active"  href = "Supplier">supplier</a></li>
<li><a href = "Product">Product</a></li>
</ul>
<h1>Supplier</h1>
<form:form action="SaveSupplier" commandName="supp">

<!--<tr>
  <th>id</th>
<td><form:input type="hidden" path="supplierid"/></td></tr> -->
<tr>
<th>name</th>
<td><form:input type="text" path="suppliername" /></td></tr>
<tr>
<th>prize</th>
<td><form:input type="text" path="supplieraddress" /></td></tr>
<tr>
<td><input type="submit" value="submit">
</tr>
</form:form>

</html>
