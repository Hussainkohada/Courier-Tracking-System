<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Package Booking</title>
<h1>Welcome to Package Booking Page</h1>
</head>
<body>

<form action="../PackageBookServlet" method="post">
<br/> <h1>Fill the below Fields</h1>
<br/> Accept date :   <input type="date" name="Accept_date">
<br/> Package Weight :   <input type="text" name="Pack_Weight">
<br/> Cost :   <input type="text" name="Cost">
<br/> Sender Address :   <input type="text" name="Sender_addr">
<br/> Receiver Address :   <input type="text" name="Receiver_addr">
<br/> Employee Id :   <input type="text" name="Emp_id">
<br/> User Id :   <input type="text" name="User_id">
<br/> Current Location : <input type="text" value="Chennai" name="curr_Loc"  readonly>
<br/> Package Status : <input type="text"  name="pack_Status" readonly>

<br/> <input type="submit" Value="Book" />
 </form>
</body>
</html>