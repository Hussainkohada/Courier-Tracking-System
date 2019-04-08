<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updating Package</title>
<h4>Please Fill the above fields to track your package</h4>
</head>
<body>
<form action="../UpdatePackLocServlet" method="post">
<br/> Consignment ID <input type="text" name="consign_id" >
<br/> Booking Date <input type="date" name="consign_date" >
<br/> Current Location <input type="text" name="consign_loc" >
<br><input type="Submit" value="update">
</form>
<%if(request.getSession().getAttribute("statchange")==null){ %>
<%} else if(request.getSession().getAttribute("statchange").equals("Invalid")){%>
Consignment Id / Date is invalid Please Try Again
<%request.getSession().setAttribute("statchange","Valid");} %>
</body>
</html>