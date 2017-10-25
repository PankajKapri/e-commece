<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<br><br><br><br>
<div id="container">
<c:forEach items="${productlist}" var="product"> 
<div class="column">
<div class="col-sm-6 col-md-3">

<a href="productdescription/${product.id }" class="thumbnail">
<img src="<c:url value="/resources/${product.id }.jpg"/>" style="height:200px; width:60%" alt="Error on loading images"/>
</a>
<div class="caption">
<h4>PRODUCT NAME:${product.name}</h4>
<p>Rs.${product.prize}</p>
</div>
</div>

</div>
</c:forEach>
</div>
<br><br><br><br><br><br><br>
<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>

