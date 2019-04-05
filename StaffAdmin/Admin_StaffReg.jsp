<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin/Staff Registration</title>
<h1>Welcome to Admin/Staff Registration Page</h1>
</head>
<body>

<form action="../ValidateIdandmailSA" method="post">
<br/> <h1>Fill the below Fields</h1>
<br/> First Name  :   								<input type="text" name="F_name">
<br/> Last Name  :   								<input type="text" name="L_name">
<br/> Gender  : 	 									<input type="radio" name="Gender" value="Male" checked> Male
  																<input type="radio" name="Gender" value="Female"> Female <br/>
<br/> Email  :   										<input type="Email" name="E_Mail">
<br/> Contact Number  :  				   	    <input type="text" name="Contact_num">
<br/> User Id  :   								    <input type="text" name="userId">
<br/> Password  :   								<input type="password" name="Password">
<br/> Salary  :   										<input type="text" name="Salary">
<br/> Designation  :   							<input type="text" name="Designation">
<br/> Permanent Address  :   				<input type="text" name="Pmt_Address">
<br/> Correspondence Address  :   		<input type="text" name="Corresp_Address">

<%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")) {%>
<br/> Login Type  : (A-Admin S-Staff)<input type="text" value="S" name="Login_type"  readonly>
<%request.getSession().setAttribute("TypeStaff","nil"); %>

<% request.getSession().setAttribute("TypeStaff","nil");} else { %>
<br/> Login Type  : (A-Admin S-Staff)<input type="text" name="Login_type">
<%}%>

<br/> <input type="submit" Value="Register" />
<%if(request.getSession().getAttribute("Flagsa") ==null) {%>

	<%}else{
		%> <b>Email Id/User Already exist</b> <%		}
		%>

</form>
</body>
</html>