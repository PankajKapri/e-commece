<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/portfolio-item.css" rel="stylesheet">
    <!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
    

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


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
  	 background-color: grey;
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

</style>
 </head>
<body>
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    
    
      <a class="navbar-brand" href="#">ShopBrands</a>
    </div>
<c:choose>
<c:when test="${sessionScope.UserLoggedIn != null}">
 <ul class="nav navbar-nav">
                    <li><a class="active" href="Home">Home</a></li>
                   <li><a href="Apple">Apple</a></li></ul>
                   
        
                	
                	<ul class="nav navbar-nav navbar-right">
       <li><a href="Cart"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a> </li>        	
      <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      </ul>
                     </c:when>
                
    			<c:otherwise>
  <ul class="nav navbar-nav">
 <li><a  href = "Category">Category</a></li>
<li><a href = "Supplier">supplier</a></li>
<li><a href = "Product">Product</a></li></ul>
   <ul class="nav navbar-nav navbar-right">
      <li><a href="perform_logout"><span class="glyphicon glyphicon-log-out"></span> logout</a></li></ul>
    			</c:otherwise>
				</c:choose>
				
			
				<p>${sessionScope.UserLoggedIn}</p>
				<script>
				(function(){
					
					$("#cart").on("click"),function(){
						$(".shopping-cart").fadeToggle("fast");
					});
				})();
					
				</script>
				</div>
</nav>


</body>

</html>