<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
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
	float:left;S
	font-size: 25px;
	font-family: Comic Sans MS;
}
h1
{
font-family: Comic Sans MS;
text-align: center;
}
  </style>
</head>
<body>
<h1>Welcome you</h1>
<ul>
<li><a class="active" href = "#home">Accesstools</a></li>
<li><a href = "Category">category</a></li>
<li><a href = "Supplier">supplier</a></li>
<li><a href = "Product">Product</a></li>
</ul>
</body>
</html>