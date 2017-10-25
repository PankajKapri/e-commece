<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery.payment/1.2.3/jquery.payment.min.js"></script>

<title>Insert title here</title>
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
</style>
</head>
<body>
<br><br><br><br>
<div class="container">
<table class="table table-hover">

    <thead>
      <tr>


<th>Product Name</th>
<th>Quantity</th>
<th>SubTotal</th>
<th>Image</th>
</tr>
  </thead>

<c:forEach items="${cartitems}" var="cartitem">
<tbody>
<tr>
<td>${cartitem.name}</td>

<td><input type="text" value="${cartitem.quantity }" name="quantity" required/></td>
<td>${cartitem.prize * cartitem.quantity }</td>
<td><img src="<c:url value='/resources/${cartitem.id}.jpg'/>" width="100" height="100"></td>
</tr></tbody>
</c:forEach>
<tr>
<td colspan="3">Grand Total</td>
<td><b>${grandtotal }</b></td>
</tr>
</table>



<table class="table table-condensed">
<thead> 
<tr>
<th>Payment Information</th>
</tr>
</thead>
<tbody>
<tr>

<td><h4><b>Payment Mode</b></h4></td>
<td>
<input type="radio" name="pmode" value="CC" /><b>Credit Card</b>
<input type="radio" name="pmode" value="IB" /><b>Internet Banking</b>

</td>
</tr></tbody>

<td colspan="2"><center><a href="OrderConfirm"><input type="submit" value="pay" /></center></td>
</tr>
</table>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</div>
<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>            

