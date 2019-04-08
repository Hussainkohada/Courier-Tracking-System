<%@page import="DAO.PackageDAOImpl"%>
<%@page import="Model.Package"%>
<%@page import="java.util.*"%>
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
<%int id=Integer.parseInt(request.getSession().getAttribute("cust_id").toString());%>
<h1> Customer Id:     <%=id %></h1>
<br/>
<form action="../ViewPackStatusServlet" method="post">
<br/>Enter Consignment id : <input type="text" name="consign_id" required>
<br/> <input type="submit" value="Check Status">
</form>



	<%Package p_obj=null; 
	String status=""; 
	int flag=0; 
	if(request.getSession().getAttribute("ConsignDet")!=null)
	{ System.out.println("Package Found");
	flag=1;
	p_obj=(Package) request.getSession().getAttribute("ConsignDet");
%>
	<form action="UserHome.jsp" >
	<table border=2px>
	
	<th>Consignment ID</th> <th>Accept Date</th>
	<th>Package Weight</th> <th>Cost</th>
	<th>Sender Address</th> <th>Receiver Address</th>
	<th>Employee Id</th>  <th>User Id</th>
	<th>Current Location</th> <th>Package Status</th>
	<th>Update Status</th>
	
	<tr>
	<td><input type="text" name="Consign_id" value="<%=p_obj.getConsign_id() %>"readonly></td>
	 <td><input type="date" name="Accept_date" value="<%=p_obj.getAccept_date() %>" readonly></td>
	 <td><input type="text" name="Pack_Weight" value="<%=p_obj.getPack_Weight() %>" readonly></td>
	<td> <input type="text" name="Cost" value="<%=p_obj.getCost() %>" readonly></td>
	<td> <input type="text" name="Sender_addr" value="<%=p_obj.getSender_addr() %>" readonly></td>
	 <td> <input type="text" name="Receiver_addr" value="<%=p_obj.getReceiver_addr() %>" readonly></td>
	<td> <input type="text" name="Emp_id" value="<%=p_obj.getEmp_id() %>" readonly></td>
	<td> <input type="text" name="User_id" value="<%=p_obj.getUser_id() %>" readonly></td>
	<td> <input type="text" name="curr_Loc" value="<%=p_obj.getCurr_loc() %>" readonly></td>
	<td><input type="text" name="Status" value="<%=p_obj.getPack_status() %>" readonly></td>								
	</tr>	

	
</table>

<input type="submit" value="Go to Home Page">
</form>
<%} else {	      
        System.out.println("Package Not Found");
		status="No Pacakge Found";%> 
		<p>Status : <%=status %></p>
		<%} %>	
	<form action="UserLoginPage.jsp">
<br/> <input type="submit" value="logout">
</form>
</body>
</html>
