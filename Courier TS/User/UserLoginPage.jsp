-<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<h1>Welcome to Login Page</h1>
</head>
<body>
 
<form action="../ULoginServlet" method="post" id="login">
<br> User Id/E-Mail ID : <input type="text" name="u_id" autocomplete="off">
<br> Password : <input type="password" name="pwd">
<br> <input type="submit" value="LogIn" form="login">
</form>
<form action="../Login_Register.jsp" id="sbreg" method="post">
<input type="submit" value="Not a Member. Click here to Register" form="sbreg">
</form>
<%
String status="";
if(request.getSession().getAttribute("login_status")!=null)
{
	status= request.getSession().getAttribute("login_status").toString();
} %>
<font color="red"><%=status%></font>	
	
	
</body>
