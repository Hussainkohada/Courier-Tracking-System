<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home Page</title>
<h1>Welcome Home</h1>
</head>
<body>
<%
request.getSession().setAttribute("key2", "Admin");
%>
<%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")){%>
<a href="Admin_StaffReg.jsp">Click Here to Register as a Staff</a>
<%}else {%>
<%request.getSession().setAttribute("TypeStaff","nil");%>
<a href="Admin_StaffReg.jsp">Click Here to Register for a Staff/Admin</a>
<br/><a href="PackageBook.jsp">Click Here to Register Package</a>
<br/><a href="UpdateDelivery_LocStatus.jsp">Click Here to Update Location &  Status of Package</a>
<br/><a href="ShowStaffList.jsp">Click here to View and Edit Details of Staff Members</a>
<br/><a href="DeleteStaffDetails.jsp">Click here to Delete Staff Record</a>
<br/> <a href="UpdateLocPack.jsp">Click Here to Update Location of Package</a>
<%} %>
<form action="A_SLoginPage.jsp">
<br/> <input type="submit" value="logout">
</form>
</body>
</html>