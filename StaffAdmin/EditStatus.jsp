<%@page import="DAO.PackageDAOImpl"%>
<%@page import="Model.Package"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updating....</title>

</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("Consign_id"));
Package p_obj=new Package();
p_obj=new PackageDAOImpl().getPackageById(id);
%>
<table border=2px;>
<th>Consignment ID</th><th>Accept Date</th>
<th>Package Weight</th><th>Cost</th>
<th>Sender Address</th><th>Reciever Address</th>
<th>Employee Id</th><th>User Id</th>
<th>Current Location</th><th>Package Status</th>
<th>Update Status</th>
<form action="../UpdateStatusServlet" method="post">
<tr><td><input type="text" name="Consign_id" value="<%=p_obj.getConsign_id() %>"readonly></td>
 <td><input type="date" name="Accept_date" value="<%=p_obj.getAccept_date() %>" readonly></td>
 <td><input type="text" name="Pack_Weight" value="<%=p_obj.getPack_Weight() %>" readonly></td>
<td> <input type="text" name="Cost" value="<%=p_obj.getCost() %>" readonly></td>
<td> <input type="text" name="Sender_addr" value="<%=p_obj.getSender_addr() %>" readonly></td>
 <td> <input type="text" name="Receiver_addr" value="<%=p_obj.getReceiver_addr() %>" readonly></td>
<td> <input type="text" name="Emp_id" value="<%=p_obj.getEmp_id() %>" readonly></td>
<td> <input type="text" name="User_id" value="<%=p_obj.getUser_id() %>" readonly></td>
<td> <input type="text" value="Chennai" name="curr_Loc"  readonly></td>
<td><br/> Package Status : <input list="Status"  name="pack_Status" >
								<datalist id="Status">
								<option value="Booked">
								<option value="in Transit">
								<option value="Delivered"></datalist></td>
								<td><input type="submit" value="update"></td>
</tr>							
</form>
</table>
</body>
</html>