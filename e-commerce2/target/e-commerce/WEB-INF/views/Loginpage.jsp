<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Landing Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
        background-image: url("resources/bgtheme.jpg /");
} 
 
</style>
<style type="text/css">
body {
background-color: #f4f4f4;
color: #5a5656;
font-family: 'Comic Sans MS', Arial, Helvetica, sans-serif;
font-size: 20px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 40px;
color:rgb(0,0,0)
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 40px auto;
width: 310px;
}
form fieldset input[type="text"], input[type="password"] {
background-color: #e5e5e5;
border: none;
border-radius: 3px;
-moz-border-radius: 3px;
-webkit-border-radius: 3px;
color: #5a5656;
font-family: 'Comic Sans MS', Arial, Helvetica, sans-serif;
font-size: 14px;
height: 50px;
outline: none;
padding: 0px 10px;
width: 280px;
-webkit-appearance:none;
}
form fieldset input[type="submit"] {
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
form fieldset a {
color: #5a5656;
font-size: 15px;
}
form fieldset a:hover { text-decoration: underline; }
.btn-round {
background-color: #5a5656;
border-radius: 50%;
-moz-border-radius: 50%;
-webkit-border-radius: 50%;
color: #f4f4f4;
display: block;
font-size: 12px;
height: 50px;
line-height: 50px;
margin: 30px 125px;
text-align: center;
text-transform: uppercase;
width: 50px;
}
</style>
</head>
<body>
<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>
<form name="user" onSubmit="validateForm()" action="perform_login"  method="post">
<fieldset>
<p><input type="text"  name="username"></p>
<p><input type="password"  name="password"  ></p>
<a href="register">New user?</a>
<p><input type="submit" value="Login"></p>
</fieldset>
</form>
 
 <div class="container">
<nav class="navbar navbar-default navbar-fixed-bottom">    
<footer class="text-center">
  
 <h2>ShopBrands</h2> 
</footer>
</nav>
</div>
</div>
</body>
</html>
