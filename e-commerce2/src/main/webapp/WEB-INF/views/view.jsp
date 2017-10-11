<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<tr>
<th>firstname</th>
<th>lastname</th>
<th>gender</th>
<th>email</th>
<th>password</th>
<th>confirmpassword</th>
<th>date of birth</th>
<th>phone number</th>
<th>Address</th>
<th>pin</th>
<th>state</th>
<th>country</th>
<th>DELETE</th>
<th>Edit</th>
</tr>
<c:forEach var="user" items="${userlist}">
<tr>
<td>${user.fname}</td>
<td>${user.lname}></td>
<td>${user.gender}</td>
<td>${user.email}</td>
<td>${user.password}</td>
<td>${user.cnfrmpass}</td>
<td>${user.dob}</td>
<td>${user.phno}</td>
<td>${user.address}</td>
<td>${user.pin}</td>
<td>${user.state}</td>
<td>${user.country}</td>
</tr>
</c:forEach>

</body>
</html>