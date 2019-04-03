<%@page import="Model.Staff_Admin"%>
<%@page import="DAO.Staff_AdminDAOImpl"%>
<%@page import="DAO.Staff_AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editing Staff </title>
</head>
<body>
<%
String u_id=request.getParameter("User_Id");
Staff_AdminDAO dao=new Staff_AdminDAOImpl();
Staff_Admin sa_obj=dao.getSADetbyId(u_id);
int emp_id=dao.getEmployeeId(sa_obj);
request.getSession().setAttribute("Editemp_id", emp_id);
%>
<form action="../StaffEditServlet" method="post">
<br/> First Name  :   								<input type="text" name="F_name" value="<%=sa_obj.getF_name()  %>">
<br/> Last Name  :   								<input type="text" name="L_name" value="<%=sa_obj.getL_name() %>">
											<%if(sa_obj.getGender().equals("Male")){ %>
<br/> Gender  : 	 									<input type="radio" name="Gender" value="Male" checked>Male
																<input type="radio" name="Gender" value="Female"> Female <br/><%}else{ %>
																<input type="radio" name="Gender" value="Male" > Male
  																<input type="radio" name="Gender" value="Female" checked> Female <br/>  	
																																															<%} %>
<br/> Email  :   										<input type="Email" name="E_Mail" value="<%=sa_obj.getE_Mail()%>">
<br/> Contact Number  :  				   	    <input type="text" name="Contact_num" value="<%=sa_obj.getContact_num()%>">
<br/> User Id  :   								    <input type="text" name="userId" value="<%=sa_obj.getUserId()%>"> 
<br/> Password  :   								<input type="text" name="Password" value="<%=sa_obj.getPassword()%>">
<br/> Salary  :   										<input type="text" name="Salary" value="<%=sa_obj.getSalary()%>">
<br/> Designation  :   							<input type="text" name="Designation" value="<%=sa_obj.getDesignation()%>">
<br/> Permanent Address  :   				<input type="text" name="Pmt_Address" value="<%=sa_obj.getPmt_Address()%>">
<br/> Correspondence Address  :   		<input type="text" name="Corresp_Address" value="<%=sa_obj.getCorresp_Address()%>">
																	
<input type="submit" value="Update Details">
</form>



</table>
</body>
</html>