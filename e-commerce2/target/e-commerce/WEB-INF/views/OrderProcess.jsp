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
<body>
<body>
<br><br><br><br>
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
<td>${grandtotal }</td>
</tr>
</table>



<table cellspacing="3" cellpadding="10" align="center" border="5">
<tr bgcolor="black">
<td colspan="2"><center><strong><h3><b>Payment Information</b></h3></strong></center></td>
</tr>

<tr>
<td><h4><b>Payment Mode</b></h4></td>
<td>
<input type="radio" name="pmode" value="CC" /><b>Credit Card</b>
<input type="radio" name="pmode" value="IB" /><b>Internet Banking</b>
<input type="radio" name="pmode" value="CD" /><b>Cash On Delivery</b>
</td>

<tr bgcolor="black">
<td colspan="2"><center><a href="OrderConfirm"><input type="submit" value="pay" /></center></td>



</table>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</body>
</html>            

