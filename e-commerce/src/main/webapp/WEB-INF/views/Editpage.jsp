<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="updateuser" method="post" commandName="user1"> 
<label value="username">userName</label>
<form:input type="text" path="username" value="${userdata.username}"/>
<br><label value="Email"></label>
<form:input type="text" path="email" value="${userdata.email}"/>
<br><label value="Password"></label>
<form:input type="text" path="password" value="${userdata.password}"/>
<br><label value="Phone Number"></label>
<form:input type="text" path="phno" value="${userdata.phno}"/>
<br><label value="Address"></label>
<form:input type="text" path="address" value="${userdata.address}" />
<input type="submit" value="Submit Form" />
</form:form>
</body>
</html>