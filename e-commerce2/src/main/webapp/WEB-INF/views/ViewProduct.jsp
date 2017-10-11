<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <style>
 .product-quantity{
 
 height: 90px;
 width: 120px;
 
 }
 
 </style> 


</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<br>
<br>
<div class="col-md-9 col-sm-7">
            <div class="product-page">
              <div class="row">
                <div class="col-md-6 col-sm-6">
                  <div class="product-main-image">
                    <img src="images/Ls2.jpg/" alt="Cool green dress with red bell" class="img-responsive" data-BigImgsrc="assets/pages/img/products/model7.jpg">
                  </div>
                  <div class="product-other-images">
                    <a href="images/Ls2(1).jpg/" class="fancybox-button" rel="photos-lib"><img alt="images:1" src="assets/pages/img/products/model3.jpg"></a>
                    <a href="images/Ls2(2).jpg/" class="fancybox-button" rel="photos-lib"><img alt="2" src="assets/pages/img/products/model4.jpg"></a>
                    <a href="images/Ls2(3).jpg/" class="fancybox-button" rel="photos-lib"><img alt="3" src="assets/pages/img/products/model5.jpg"></a>
                  </div>
                </div>
       
  <div class="col-md-6 col-sm-6">
 
                  <h1>S.L Ls2 Full Face Designer Helmet Ff-352 Rookie White Black Mat-Large - 58 Cms</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">
                      <strong>Price:   4,500.00</strong>
                      
                    </div>
                    <div class="availability">
                      Availability: <strong>In Stock</strong>
                    </div>
                  </div>
                  <br>
                 
                  <div class="description">
                  <strong>Description:</strong>
                    <p>Weight -1350gms</p>
                    <p>Number of shells-1</p>
                    <p>Smooth opening and closing Visor</p>
                  </div>
                  <div class="product-page-options">
                    <div class="pull-left">
                      <label class="control-label">Size:</label>
                      <select class="form-control input-sm">
                        <option>L</option>
                        <option>M</option>
                        <option>XL</option>
                      </select>
                    </div>
                    <div class="pull-left">
                      <label class="control-label">Color:</label>
                      <select class="form-control input-sm">
                        <option>Red</option>
                        <option>Blue</option>
                        <option>Black</option>
                      </select>
                    </div>
                  </div>
                   <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="product-quantity" type="text" value="1" readonly class="form-control input-sm" width="">
                    </div>
                    
                     
                  <a href="Cart"></a><button class="btn btn-primary"  type="submit">Add to cart</button>
                  </div></div>
</div>
      
    </div>
  </div>
</body>
</html>