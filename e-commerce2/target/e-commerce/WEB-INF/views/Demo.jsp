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
<jsp:include page="CommonHeader.jsp"></jsp:include>
<body>
<table cellspacing="3" align="center" >
<tr bgcolor="red">
<td><b>ProductName </b></td>
<td><b><center>Quantity</center></b></td>
<td><b><center>SubTotal</center></b></td>
<td><b><center>ProductImage</center></b></td>
<td><b><center>Operation</center></b></td>
</tr>
<c:forEach items="${cartitems }" var="cartitem">
<tr>
<form action="<c:url value="/updateCartItem/${cartitem.citemid }" />" />
<td>${cartitem.name }</td>
<td><input type="text" value="${cartitem.quantity}" name="quantity" required/></td>
<td>Rs.${cartitem.prize * cartitem.quantity}</td>
<td><img src="<c:url value='/resources/${cartitem.id}.jpg'/>" width="100" height="100">
<td>
<input type="submit" value="UPDATE" class="btn-success btn-block"/>
<a href="<c:url value="/deleteCartItem/${cartitem.citemid }" />">DELETE </a>
</td>
</tr>

</c:forEach>
<tr>

<br>
<td><a href="<c:url value="/CheckOut" />"> <b><h4>CheckOut</h4></b></a></td>
</tr>
</table>
</body>
</html>