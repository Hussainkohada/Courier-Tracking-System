<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<h1>Welcome To User Registration Portal</h1>
</head>
<body>

<form action="../UserRegisterServlet" method="post">
<br/> <h1>Fill the below Fields</h1><p></p>
<br/> First Name  :   <input type="text" name="F_name">
<br/> Last Name  :   <input type="text" name="L_name">
<br/> Gender  :  <input type="radio" name="Gender" value="Male" checked> Male
  							<input type="radio" name="Gender" value="Female"> Female<br/>
<br/> Email  :   <input type="Email" name="E_Mail">
<br/> Contact Number  :   <input type="text" name="Contact_num">
<br/> User Id  :   <input type="text" name="userId">
<br/> Password  :   <input type="password" name="Password">

<br/> <input type="submit" Value="Register" />

</form>
</body>
</html>