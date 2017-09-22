<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<form:form action="edit" method="post" commandName="user1"> 
<center><strong><h2>Welcome New User<h2></strong></center>
<small class="text-danger"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Note:Field With * Are Mandatory)</b></small>
<tr>
<td><strong>Name<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="text" id="fname" path="fname" value="${userdata.fname}" class="form-control" name="first" placeholder="first" onblur="verifyname()"  required="required"/></td>
<td><form:input type="text" id="lname" path="lname" value="${userdata.lname}" class="form-control" name="last" placeholder="last"  required="required"/></td></tr>
<tr>
<tr>
<td><span id="fnamerr" style="color:red;"></span></td>
</tr>
<td><strong>Gender<sup>*</sup></strong></td>
<tr>
<td>
<form:select class="form-control" id="ugender" value="${userdata.gender}" path="gender" name="gender" onblur="verifygender()"  required="required">
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
<td><form:input type="email" class="form-control" value="${userdata.email}" path="email" id="e-mail" placeholder="abc@outlook.com" onblur="verifyemail()"  required="required"/></td>
<td><span id="emailerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Password<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="password" class="form-control" value="${userdata.password}" path="password"  id="pwd" placeholder="password" onkeyup="verifypwd()" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="required"/></td>
<td><span id="pwderr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Confirm Password<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="password" class="form-control" value="${userdata.cnfrmpass}" path="cnfrmpass"  id="cnfpwd" placeholder="confirm password" onblur="checkpwd()"  required="required"/></td>
<td><span id="pwderrs" style="color:red;"></span></td>
</tr>

<tr>
<td><strong>Date of Birth<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="date" class="form-control" value="${userdata.dob}" id="dob" path="dob" onblur="verifydob()"  required="required"/></td>
<td><span id="doberr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Mobile<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="tel" class="form-control" value="${userdata.phno}" id="phone" path="phno" placeholder="99xxxxxxxx" maxlength="10" onblur="verifyphn()"  required="required"/></td>
<td><span id="phnerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Address<sup>*</sup></strong></td>
<td><strong>Pin Code<sup>*</sup></strong></td>
</tr>
<tr>
<td><form:input type="text" class="form-control" value="${userdata.address}" id="address" path="address" onblur="verifyadd()"  required="required"/></td>
<td><form:input type="number" class="form-control" value="${userdata.pin}" id="pin" path="pin" maxlength="6" onblur="verifypin()"  required="required"/></td>
</tr>
<tr>
<td><span id="adderr" style="color:red;"></span></td>
<td><span id="pinerr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>State</strong></td>
</tr>
<tr>
<td><form:input type="text" class="form-control" value="${userdata.state}" id="state" path="state" placeholder="I Live In..." onblur="verifystate()"  required="required"/></td>
<td><span id="staterr" style="color:red;"></span></td>
</tr>
<tr>
<td><strong>Country</strong></td>
</tr>
<tr>
<td>
<form:select class="form-control" id="country" value="${userdata.country}" path="country" onblur="verifycntry()"  required="required">
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
