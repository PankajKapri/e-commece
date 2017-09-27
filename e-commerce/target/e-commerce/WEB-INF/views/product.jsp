<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product</title>
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
	float:left;
	font-size: 25px;
	font-family: Comic Sans MS;
}
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
	</head>
<ul>
<li><a href = "#home">Accesstools</a></li>
<li><a href = "Category">Category</a></li>
<li><a href = "Supplier">supplier</a></li>
<li><a class="active" href = "Product">Product</a></li>
</ul>


<h1>PRODUCT</h1>
<form:form action = "Product" commandName="prod" method="post">
<table style="width:50%">

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
<th>descrption</th>
 <td><form:input type ="text" path ="descrption"/></td>
 </tr>
<th>Category Name</th>
<%--  <td><form:select name="CustomerId" path="CustId">
         <option value="-1" selected>select..</option>
         <option value="${catlist.CustId}"></option>
         </form:select>
     </td> --%>
<th>Supplier </th>
 <td><form:select path ="SuppId">
         <option value="-1">select..</option>
         <c:forEach var="sup" items="${suplist}">
         <option value="${sup.supplierid}"></option></c:forEach>
         </form:select></td>
</tr>
<tr>   
    
     <td><input type ="submit" value="Submit" ></td>
        
     </tr>
   </table>
</form:form>
</html>
