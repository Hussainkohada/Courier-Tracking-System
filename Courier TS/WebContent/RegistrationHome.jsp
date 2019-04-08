<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Home</title>
<h1> Welcome to registration Page</h1>
</head>
<body>
<% request.getSession().setAttribute("TypeStaff", "StaffReg");%>
<form action="LoginHome.jsp" method="post">
<br><a href="User/UserReg.jsp">Click Here to Register as a User</a>
<br><a href="StaffAdmin/A_SLoginPage.jsp">Click Here to Register as Admin/Staff</a>
<br> <input type="submit" value="Already a Member Click Here to Login" >
</form>
</body>
</html>