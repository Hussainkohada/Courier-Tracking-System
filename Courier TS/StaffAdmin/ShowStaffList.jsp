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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<title>Staff List</title>

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
.button {
	border-radius: 4px;
	background-color: #43e9f2;
	border: none;
	color: black;
	text-align: center;
	font-size: 15px;
	padding: 5px;
	width: 250px;
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

.button:hover {
	background-color: #e15fef;
	width: 300px;
	font-size: 15px;
}

.button:hover span {
	padding-right: 25px;
}

.button:hover span:after {
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
	/*background-color: black;*/
	height: 100%;
	/* Center and scale the image nicely */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.bg-text {
	 /*background-color: rgb(0,0,0);  Fallback color*/ 
	background-color: rgba(0,0,0, 0.4);  /*Black w/opacity/see-through*/ 
	color: White;
	font-weight: bold;
	border: 3px solid #f1f1f1;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	z-index: 2;
	width: 80%;
	padding: 20px;
	text-align: center;
}
</style>
<style>
 input.a{
	width: 80%;
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
<style>
	  div.absolute {
  position: absolute;
  width: 100%;
  bottom: 1px;
  	}</style>

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
<STYLE>
table.table-a{
width: 50%;
border: 1px solid #f1f1f1;
}
</STYLE>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
</style>

</head>
<body class="bg-image">

<div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a class="active1"><img src="Co.png"  height="50"></a>
  </div>
  
  <!-- Left-aligned links (default) -->
  <% if(request.getSession().getAttribute("key2").equals("Admin")) {%>
	<a href="Admin_StaffReg.jsp">Staff Register</a>
 	<% }else{} %>
  <a href="PackageBook.jsp">Package Book</a>
  <a href="UpdateDelivery_LocStatus.jsp"><font color="white">Status Update</font></a>
  <a href="UpdateLocPack.jsp"><font color="white">Location Update</font> </a>
  <% if(request.getSession().getAttribute("key2").equals("Admin")) {%>
	<a class="active">Edit Staff</a>
 	<% }else{} %>
  
  <!-- Right-aligned links -->
  <div class="topnav-right">
    <% if(request.getSession().getAttribute("key2").equals("Admin")) {%>
	<a href="AdminHome.jsp">Admin Home</a>
 	<% }else{ %>
	<a href="StaffHome.jsp">Staff Home</a>
  <% } %>
    <a href="../LoginHome.jsp">Logout >></a>
    <%
			request.getSession().setAttribute("ConsignDet", null);
		%>
   
  </div>
  
</div>


<%
List<Staff_Admin> S_List=new ArrayList<>();
Staff_AdminDAO dao=new Staff_AdminDAOImpl();
S_List=dao.SA_ViewDet();
%>
<br>
<br>
<center>
<table class="table table-striped table-hover table-a">
<tr>
<th>First Name</th><th>Last Name</th>
<th>Gender</th><th>Email</th>
<th>Contact Number</th><th>User Id</th>
<th>Password</th><th>Salary</th>
<th>Designation</th><th>Permanent Address</th>
<th>Correspondance Address</th>
<th>Edit</th>
<th>Delete</th>
<%for(Staff_Admin sa_obj:S_List) {%>
</tr>
<tr>
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
<td><a href="EditStaffDet.jsp?User_Id=<%=sa_obj.getUserId()%>">Edit</a>
<td><a href="../DeleteStaffServlet?u_id=<%=sa_obj.getUserId() %>">Delete</a>

</tr>			
<%} %>				

</table>
</center>
</body>
</html>