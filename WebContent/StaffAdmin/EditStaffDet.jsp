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
<!-- BootStrap 4 -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- BootStrap 3 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">	

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  position: relative;
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 16px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}

.topnav a.active1 {
  background-color: white;
  color: white;
}

.topnav-centered a {
  float: none;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

.topnav-right {
  float: right;
}

/* Responsive navigation menu (for mobile devices) */
@media screen and (max-width: 600px) {
  .topnav a, .topnav-right {
    float: none;
    display: block;
  }
  
  .topnav-centered a {
    position: relative;
    top: 0;
    left: 0;
    transform: none;
  }
}
</style>

<style>
.login-container{
    margin-top: 5%;
    margin-bottom: 5%;
}
.login-form-1{
    padding: 5%;
    background: #3d3d3d;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-1 h3{
    text-align: center;
    color: #333;
}
.login-form-2{
    padding: 5%;
    background: #ffef14;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-2 h3{
    text-align: center;
    color: #fff;
}
.login-container form{
    padding: 10%;
}
.btnSubmit
{
    width: 50%;
    border-radius: 1rem;
    padding: 1.5%;
    border: none;
    cursor: pointer;
}
.login-form-1 .btnSubmit{
    font-weight: 600;
    color: #fff;
    background-color: #ffef14;
}
.login-form-2 .btnSubmit{
    font-weight: 600;
    color: #0062cc;
    background-color: #fff;
}
.login-form-2 .ForgetPwd{
    color: #fff;
    font-weight: 600;
    text-decoration: none;
}
.login-form-1 .ForgetPwd{
    color: #0062cc;
    font-weight: 600;
    text-decoration: none;
}

</style>
<style>
.button {
  border-radius: 4px;
  background-color: #ffef14;
  border: none;
  color: black;
  text-align: center;
  font-size: 26px;
  padding: 5px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}
.button:hover {background-color: #c4c4c4}
.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>

<STYLE>
table.table-a{
width: 50%;
border: 1px solid #f1f1f1;

}
</STYLE>
<style>
.button1 {
  border-radius: 4px;
  background-color: #3d3d3d;
  border: none;
  color:#ffef14;
  text-align: center;
  font-size: 23px;
  padding: 5px;
  width: 300px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button1 span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button1 span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}
.button1:hover {background-color: #c4c4c4}
.button1:hover span {
  padding-right: 25px;
}

.button1:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("Staff edit back.png");
 
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}

#regForm {
  background-color: #ffffff;
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}
select {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
</style>
</head>
<body class="bg-image">
<%
String u_id=request.getParameter("User_Id");
Staff_AdminDAO dao=new Staff_AdminDAOImpl();
Staff_Admin sa_obj=dao.getSADetbyId(u_id);
int emp_id=dao.getEmployeeId(sa_obj);
request.getSession().setAttribute("Editemp_id", emp_id);
%>

  
<div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a class="active1"><img src="Co.png"  height="50"></a>
  </div>
  
  <!-- Left-aligned links (default) -->
  	<a href="ShowStaffList.jsp"> << Back</a>
  	<font color="white"><a class="active">Edit Staff</a></font>
  <!-- Right-aligned links -->
  <div class="topnav-right">
  
    <%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")){ %>
	<a href="../RegistrationHome.jsp">Back >></a>
	<%}else{ %>
	<a href="AdminHome.jsp">Admin Home</a>
	
	<a href="../LoginHome.jsp">Logout >></a>
    <%
			request.getSession().setAttribute("ConsignDet", null);
		%>
		<%} %>
  </div>
  
</div>
<center>
<br>
<br>
<br>
<table class="table table-dark table-hover table-a">
<form action="../StaffEditServlet" method="post">

<tr><td class="align-middle"><center>First Name :</center></td><td><font color="#000000"><input type="text" name="F_name" value="<%=sa_obj.getF_name()  %>"></font></td></tr>
<tr><td class="align-middle"><center>Last Name :</center></td><td><font color="#000000"><input type="text" name="L_name" value="<%=sa_obj.getL_name() %>"></font></td></tr>
											
<tr><td class="align-middle"><center>Gender :</center></td><td><font color="#000000"><select name="Gender">
    						<option value="<%=sa_obj.getGender()%>" disabled><%=sa_obj.getGender()%></option>
    						<option value="Male">Male</option>
    						<option value="Female">Female</option>
    						<option value="Other">Other</option>
    	</select></font></td></tr>	
							<%if(sa_obj.getGender().equals("Male")){} %>
<tr><td class="align-middle"> <center>Email :</center></td><td><font color="#000000"><input type="Email" name="E_Mail" value="<%=sa_obj.getE_Mail()%>"></font></td></tr>
<tr><td class="align-middle"> <center>Contact Number :</center></td><td><font color="#000000"><input type="text" name="Contact_num" value="<%=sa_obj.getContact_num()%>"></font></td></tr>
<tr><td class="align-middle"> <center>User Id :</center></td><td><font color="#000000"><input type="text" name="userId" value="<%=sa_obj.getUserId()%>"></font> </td></tr>
<tr><td class="align-middle"> <center>Password :</center></td><td><font color="#000000"><input type="text" name="Password" value="<%=sa_obj.getPassword()%>"></font></td></tr>
<tr><td class="align-middle"> <center>Salary :</center></td><td><font color="#000000"><input type="text" name="Salary" value="<%=sa_obj.getSalary()%>"></font></td></tr>
<tr><td class="align-middle"> <center>Designation :</center></td><td><font color="#000000"><input type="text" name="Designation" value="<%=sa_obj.getDesignation()%>"></font></td></tr>
<tr><td class="align-middle"> <center>Permanent Address :</center></td><td><font color="#000000"><input type="text" name="Pmt_Address" value="<%=sa_obj.getPmt_Address()%>"></font></td></tr>
<tr><td class="align-middle"> <center>Correspondence Address :</center></td><td><font color="#000000"><input type="text" name="Corresp_Address" value="<%=sa_obj.getCorresp_Address()%>"></font></td></tr>																
<tr><td colspan="2"><center><button type="submit" class="button">Update Details</button></center></td></tr>


</form>
</table>
</center>

</body>
</html>