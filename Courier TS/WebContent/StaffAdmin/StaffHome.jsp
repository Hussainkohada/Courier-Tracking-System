<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Page</title>
<h1>Welcome to Staff Page</h1>
</head>
<body>

<%
request.getSession().setAttribute("key2", "Staff");
%>
<br/> <a href="PackageBook.jsp">Click Here to Register Package</a>
<br/> <a href="UpdateDelivery_LocStatus.jsp">Click Here to Update Delivery Status of Package</a>	
<br/> <a href="UpdateLocPack.jsp">Click Here to Update Location of Package</a>	

<form action="A_SLoginPage.jsp">
<br/> <input type="submit" value="logout">
</form>
</body>
</html>
