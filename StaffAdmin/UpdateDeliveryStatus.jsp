<%@page import="DAO.PackageDAOImpl"%>
<%@page import="Model.Package"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delivery Status</title>
<h1>Update Status</h1>
</head>
<body>
<h4>Select update option to update status</h4>
<%
List<Package> pack_list =new ArrayList<Package>();
pack_list=new PackageDAOImpl().getAllPackages();
%>
<table border=1px;>
<th>Consignment ID</th><th>Accept Date</th>
<th>Package Weight</th><th>Cost</th>
<th>Sender Address</th><th>Reciever Address</th>
<th>Employee Id</th><th>User Id</th>
<th>Current Location</th><th>Package Status</th>
<th>Update Status</th>
<%for(Package p_obj:pack_list){ %>
<tr><td><%=p_obj.getConsign_id() %></td>
		<td><%=p_obj.getAccept_date() %></td>
		<td><%=p_obj.getPack_Weight() %></td>
		<td><%=p_obj.getCost() %></td>
		<td><%=p_obj.getSender_addr() %></td>
		<td><%=p_obj.getReceiver_addr() %></td>
		<td><%=p_obj.getEmp_id() %></td>
		<td><%=p_obj.getUser_id() %></td>
		<td><%=p_obj.getCurr_loc() %></td>
		<td><%=p_obj.getPack_status() %></td>
		<td><a href="EditStatus.jsp?Consign_id=<%=p_obj.getConsign_id()%>">Edit</a>
</tr>	
<%} %>
</table>
</body>
</html>