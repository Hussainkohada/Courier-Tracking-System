<%@page import="DAO.Staff_AdminDAOImpl"%>
<%@page import="DAO.Staff_AdminDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Staff_Admin"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Deleting</title>
</head>
<body>
<h3>Click on the delete Staff Details</h3>
<%
List<Staff_Admin> S_List=new ArrayList<>();
Staff_AdminDAO dao=new Staff_AdminDAOImpl();
S_List=dao.SA_ViewDet();
%>

<table border=2px;>
<th>First Name</th><th>Last Name</th>
<th>Gender</th><th>Email</th>
<th>Contact Number</th><th>User Id</th>
<th>Password</th><th>Salary</th>
<th>Designation</th><th>Permanent Address</th>
<th>Correspondance Address</th>
<%for(Staff_Admin sa_obj:S_List) {%>
<tr>
<% %>
<td><%=sa_obj.getF_name() %></td>
<td><%=sa_obj.getL_name() %></td>
<td><%=sa_obj.getGender()%></td>
<td><%=sa_obj.getE_Mail()%></td>
<td><%=sa_obj.getContact_num()%></td>
<td> <%=sa_obj.getUserId()%></td>
<td><%=sa_obj.getPassword()%></td>
<td><%=sa_obj.getSalary()%></td>
<td><%=sa_obj.getDesignation()%></td>
<td><%=sa_obj.getPmt_Address()%></td>
<td><%=sa_obj.getCorresp_Address()%></td>
<td><a href="../DeleteStaffServlet?u_id=<%=sa_obj.getUserId() %>">Delete</a>
</tr>			
<%} %>	
<br><form action="AdminHome.jsp">
<input type="submit" value="Go to Home Page">
</form>
</body>
</html>