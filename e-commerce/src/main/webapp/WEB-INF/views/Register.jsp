<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  .jumbotron
{
	background:url("images/bgtheme.jpg /") center no-repeat;
	background-size:100% 100%;
}
	table 
	{
		border-collapse: separate;
		border-spacing: 50px 0;
		border: 1px solid black;
		border-radius:15px 15px 15px 15px;
	}
	td 
	{
		padding: 10px 0;
	}
	input:hover
	{
	background:#ffff99;
	border: 3px solid #cce6ff;
	color:blue;
	}
	select:hover
	{
	background:#cce6ff;
	border:3px solid #ffff99;
	}
  </style>
  </head>
  <body>
<div class="container-fluid">
<div class="jumbotron">
<div class="row">
<div class="col-sm-3"></div>
<div class="col-sm-6">
  <table class=" table-responsive">
  <div class="form-group">
<form:form action="register" method="post" commandName="user"> 
<center><strong><h2>Welcome New User<h2></strong></center>
<small class="text-danger"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Note:Field With * Are Mandatory)</b></small>
<tr>
<td><strong>Name<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="text" id="fname" path="fname" class="form-control" name="first" placeholder="first" onblur="verifyname()"  required="required"/></td>
<td><form:input type="text" id="lname" path="lname" class="form-control" name="last" placeholder="last"  required="required"/></td></tr>
<tr>
<tr>
<td><span id="fnamerr" style="color:red;"></span></td>
</tr>
<td><strong>Gender<sup>*</sup></strong></td>
<tr>
<td>
<form:select class="form-control" id="ugender" path="gender" name="gender" onblur="verifygender()"  required="required">
<option value="" selected="selected">--i am--</option>
<option value="Male">Male</option>
<option value="Female">Female</option>

</form:select>
</td>
<td><span id="gendererr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Email Id<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="email" class="form-control" path="email" id="e-mail" placeholder="abc@outlook.com" onblur="verifyemail()"  required="required"/></td>
<td><span id="emailerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Password<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="password" class="form-control" path="password"  id="pwd" placeholder="password" onkeyup="verifypwd()" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="required"/></td>
<td><span id="pwderr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Confirm Password<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="password" class="form-control" path="cnfrmpass"  id="cnfpwd" placeholder="confirm password" onblur="checkpwd()"  required="required"/></td>
<td><span id="pwderrs" style="color:red;"></span></td>
</tr>

<tr>
<td><strong>Date of Birth<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="date" class="form-control" id="dob" path="dob" onblur="verifydob()"  required="required"/></td>
<td><span id="doberr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Mobile<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="tel" class="form-control" id="phone" path="phno" placeholder="99xxxxxxxx" maxlength="10" onblur="verifyphn()"  required="required"/></td>
<td><span id="phnerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Address<sup>*</sup></strong></td>
<td><strong>Pin Code<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="text" class="form-control" id="address" path="address" onblur="verifyadd()"  required="required"/></td>
<td><form:input type="number" class="form-control" id="pin" path="pin" maxlength="6" onblur="verifypin()"  required="required"/></td>
</tr>
<tr>
<td><span id="adderr" style="color:red;"></span></td>
<td><span id="pinerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>State</strong></td>
</tr>
<tr>
<td><form:input type="text" class="form-control" id="state" path="state" placeholder="I Live In..." onblur="verifystate()"  required="required"/></td>
<td><span id="staterr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Country</strong></td>
</tr>
<tr>
<td>
<form:select class="form-control" id="country" path="country" onblur="verifycntry()"  required="required">
<option value="" selected="selected">--i live in--</option>
	<option value="101">Afghanistan</option>
	<option value="102">Alaska</option>
	<option value="103">Antartica</option>
	<option value="104">Austria</option>
	<option value="105">America</option>
	<option value="106">Australia</option>
	<option value="107">China</option>
	<option value="108">Dubai</option>
	<option value="109">Iceland</option>
	<option value="110">India</option>
	<option value="111">Ireland</option>
	<option value="112">Japan</option>
	<option value="113">New Zealand</option>
	<option value="114">United Kingdom</option>
</form:select>
</td>
<td><span id="cntryerr" style="color:red;"></span></td>
</tr>
<tr>
<td><input type="reset" class="btn btn-primary btn-lg" name="reset" value="Reset" style="width:180px;float:left;"></td>
<td><input type="submit" class="btn btn-primary btn-lg" name="register" value="Sign Up" style="width:180px;float:right;"></td>
</tr>
</form:form>
</div>
</table>
</div>
<div class="col-sm-3"></div>
</div>
</div>
</div>
<script src="../Javascript/verify.js" type="text/javascript"></script>
<script type="text/javascript">
var myInput = document.getElementById("psw");
//When the user starts to type something inside the password field
myInput.onkeyup = verifypwd() {
// Validate lowercase letters
var lowerCaseLetters = /[a-z]/g;
if(myInput.value.match(lowerCaseLetters)) {  
 letter.classList.remove('invalid');
 letter.classList.add("valid");
} else {
 letter.classList.remove('valid');
 letter.classList.add("invalid");
}

// Validate capital letters
var upperCaseLetters = /[A-Z]/g;
if(myInput.value.match(upperCaseLetters)) {  
 capital.classList.remove('invalid');
 capital.classList.add("valid");
} else {
 capital.classList.remove('valid');
 capital.classList.add("invalid");
}

// Validate numbers
var numbers = /[0-9]/g;
if(myInput.value.match(numbers)) {  
 number.classList.remove('invalid');
 number.classList.add("valid");
} else {
 number.classList.remove('valid');
 number.classList.add("invalid");
}

// Validate length
if(myInput.value.length >= 8) {
 length.classList.remove('invalid');
 length.classList.add("valid");
} else {
 length.classList.remove('valid');
 length.classList.add("invalid");
}
}
</script>
<script type="text/javascript">
function checkpwd()
{
    //Store the password field objects into variables ...
    var pass1 = document.getElementById('pwd');
    var pass2 = document.getElementById('cnfpwd');
    //Store the Confimation Message Object ...
    var message = document.getElementById('pwderrs');
    //Set the colors we will be using ...
    var goodColor = "#66cc66";
    var badColor = "#ff6666";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Passwords Match!"
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Passwords Do Not Match!"
    }
}  
</script>
<nav class="navbar navbar-default">
<footer class="container-fluid">
<center>  <h1>ACCESSTOOLS</h1></center>
</footer>  
</nav>
</body>
</html>
