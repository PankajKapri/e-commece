<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/portfolio-item.css" rel="stylesheet">

<title>Landing</title>

<style>
body {
        background-image: url("images/bgtheme.jpg /");
}
input[type=text] {
   width: 270px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('images/Searchbar.png /');
    background-position: 10px 5px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 60px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
    width: 150%;
}

.container {
      padding: 80px 120px;
  }
  
 .navbar {
      margin-bottom: 0;
      z-index: 9999;
      border: 0;
      font-size: 15px !important;
      line-height: 1.42857143 !important;
      letter-spacing: 4px;
      border-radius: 0;
      font-family: Comic Sans MS, sans-serif;
      
      .jumbotron {
      background-color: #f4511e;
      color: #fff;
      padding: 100px 25px;
      font-family: Montserrat, sans-serif;
  }

body {
        background-image: url("images/bgtheme.jpg /");
} 
 
</style>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <form action="welcome" method="get">
      <a class="navbar-brand" href="welcome.jsp">AccessTools</a>
    </div>
    </form>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Shop by category<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">uploading</a></li>
            <li><a href="#">uploading</a></li>
            <li><a href="#">uploading</a></li>
          </ul>
          </li>
         <li> <form><center>
  <input type="text" name="search" placeholder="Search..">
  </center>
</form>
</li>
        </ul>
     <!--right nav  -->         
      <ul class="nav navbar-nav navbar-right">
       
       <li class="nav-item">
       <li><a href="aboutus"><span class="glyphicon glyphicon-heart"></span>ABOUT</a></li>
      <li><a href="alluser"><span class="glyphicon glyphicon-envelope"></span>h2</a></li>
        
              <li><a href="Contact"><span class="glyphicon glyphicon-envelope"></span>Contact</a>
            </li>
        <li><a href="register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span>login</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container">
   <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
   <div class="carousel-inner">
      <div class="item active">
        <img src="images/spae2.jpg /" style="width:150%;height:370px;">
      </div>

      <div class="item">
        <img src="images/imae.jpg /" style="width:150%;height:370px;">
      </div>
    
      <div class="item">
        <img src="images/spare.jpg /"  style="width:150%;height:370px;">
      </div>
      </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">
  <h2>For your safety and control</h2><br>
  <p>Must have wearable</p>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/Helmet.jpg /" alt="Helmet" width="200" height="200">
        <p><strong>Helmet</strong></p>
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
        <img src="images/safetyacc.jpg /" alt="moto" width="400" height="400">
        <p><strong>Head & face cover</strong></p>
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
        <p><strong>Ryding gears</strong></p>
        <p>One-Stop-Shop Bike Gloves (Black, M)</p>
      </div>
    </div>
       <div class="col-sm-4">
      <div class="thumbnail">
        <img src="images/Mobileholder.jpg /" alt="safe" width="300" height="400">
        <p><strong>Mobile holder</strong></p>
        <p>Andride Universal Bike Holder 360 Degree Rotating Bicycle Holder</p>
      </div>
    </div> 
    </div>
    <!-- Footer -->
    <div class="container">
<nav class="navbar navbar-default navbar-fixed-bottom">    
<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>To visit us<a href="aboutus" data-toggle="tooltip" title="Visit aboutus">www.acesstool.com</a></p> 
</footer>
</nav>
</div>
    

</body>
</html>
          
       