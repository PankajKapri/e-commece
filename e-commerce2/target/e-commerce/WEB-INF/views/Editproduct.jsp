<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<title>Insert title here</title>
</head>
<style>
h1
{
font-family: Comic Sans MS;
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
</style>
<body>
<div class="container-fluid">
<h1>Product</h1>
<form:form action = "updatepro" modelAttribute="product" method="post">
<table style="width:50%">
<tr>
  <tr>
<th>product id</th>
<td><form:input type ="text" path="id" value="${edit.id}"/></td>
</tr>
<tr>
<th>product name</th>
<td><form:input type ="text" path ="name" value="${edit.name}"/></td>
</tr>
<tr>
<th>product price</th>
 <td><form:input type ="text" path ="prize" value="${edit.prize}"/></td>
 </tr>
 <tr>
<th>product quantity</th>
 <td><form:input type ="text" path ="quantity" value="${edit.quantity}"/></td>
 </tr>
 <tr>
<th>product Descripton</th>
 <td><form:input type ="text" path ="descrption" value="${edit.descrption}"/></td>
 </tr>
 <tr>
<td><input type ="submit" value="Update"></td>
</tr>
</table>
</form:form></div></body>
</html>