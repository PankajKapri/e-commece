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
</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">
  <h2>For your safety and control</h2><br>
  <p>Must have wearable</p>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/Ls2.jpg /" alt="Helmet" width="200" height="250">
        <p><a href="Helmet"><strong>Helmet</strong></a></p>
        <p>great prize..</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/safe.jpg /" alt="safe" width="400" height="400">
        <p><strong>Ryding gears</strong></p>
        <p>New BRAND</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/WhieMask.jpg /" alt="moto" width="230px" height="200px">
        <p><a href="FaceMask"><strong>Head&face cover</strong></a></p>
        <p>with great offers.</p>
      </div>
    </div>
  </div>
     <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/Gears.jpg /" alt="safe" width="400" height="400">
        <p><strong>Ryding gears</strong></p>
        <p>Mototrance Riding Gear Body Armor Jacket For Bike Driving</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/RydingGlove.jpg /" alt="safe" width="300" height="400">
        <p><a href="RydingGloves"><strong>Ryding gears</strong></a></p>
        <p>One-Stop-Shop Bike Gloves (Black, M)</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/Mobileholder.jpg /" alt="safe" width="300" height="400">
        <a href="Mobileholder"><strong>Mobile holder</strong></a>
        <p>Andride Universal Bike Holder 360 Degree Rotating Bicycle Holder</p>
      </div>
    </div> 
    </div>
<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>