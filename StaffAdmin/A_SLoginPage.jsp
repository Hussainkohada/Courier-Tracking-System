<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>A/S Login Page</title>
<h1>Welcome to Login Page</h1>
</head>
<body>
<%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")){%>
<p>Admin Credentials are Needed to login as Staff</p>
  <%} %> 
<form action="../A_SLoginServlet" method="post"  id="abc">
<br> User Id/E-Mail Id : <input type="text" name="u_id" autocomplete="off">
<br> Password : <input type="password" name="pwd">
<br> <input type="submit" value="LogIn" form="abc">

</form>
<form action="../RegistrationHome.jsp" method="post" id="xyz">
<input type="submit" value="Not a Member. Click here to Register" form="xyz">
</form>
<%


String status="";
if(request.getSession().getAttribute("login_status")!=null)
{
	status= request.getSession().getAttribute("login_status").toString();
}
	%>
	
	<font color="red"><%=status%></font>
</form>
</body>
</html>