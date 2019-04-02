<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User  Home</title>
<h1> Welcome Home</h1>
</head>
<body>

<%
int Cust_id=0;

if(request.getSession().getAttribute("cust_id")!=null)
{
	Cust_id= Integer.parseInt(request.getSession().getAttribute("cust_id").toString());
}
System.out.println(Cust_id);
%>
To View Packages Booked By You
<br/><a href="PackageViewforUser.jsp?Cust_id=<%=Cust_id%>">Booked Packages</a>

</body>
</html>