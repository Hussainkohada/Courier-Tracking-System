<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- BootStrap 4 
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>-->
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

<title>Admin Home Page</title>



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
  font-size: 17px;
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
  background-image: url("01.png");
 
  
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
  background-color: #30303040;
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
  padding: 7px 15px;
  font-size: 15px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

a.k{
text-color: "white";
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
<style>

/* The flip card container - set the width and height to whatever you want. We have added the border property to demonstrate that the flip itself goes out of the box on hover (remove perspective if you don't want the 3D effect */
.flip-card {
  background-color: transparent;
  width: 200px;
  height: 200px;
  border-radius: 50%;
  text-size: 15px;
  /*border: 1px solid #f1f1f1;*/
  perspective: 1000px; /* Remove this if you don't want the 3D effect */
}

/* This container is needed to position the front and back side */
.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
  border-radius: 50%;
}

/* Do an horizontal flip when you move the mouse over the flip box container */
.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

/* Position the front and back side */
.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

/* Style the front side (fallback if image is missing) */
.flip-card-front {
  background-color: #bbb;
  color: black;
  border-radius: 50%;
}

/* Style the back side */
.flip-card-back {
  background-color: #ffffff00;
  color: white;
  transform: rotateY(180deg);
  border-radius: 50%;
}

</style>

</head>
<body class="bg-image" text="#ffffff">
 
<div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a class="active1"><img src="Co.png"  height="50"></a>
  </div>
  
  <!-- Left-aligned links (default) -->
  <a class="active"> Admin </a>
  
  <!-- Right-aligned links -->
  <div class="topnav-right">
     <a href="../LoginHome.jsp">Logout >></a>
    <%
			request.getSession().setAttribute("ConsignDet", null);
		%>
  </div>
  
</div>

<br>
<br>

<h1><font color="#ffffff">Welcome <%=request.getSession().getAttribute("Adminname") %></font></h1>
<%
request.getSession().setAttribute("key2", "Admin");
%>
<%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")){%>
<a href="Admin_StaffReg.jsp">Click Here to Register as a Staff</a>
<%}else {%>
<%request.getSession().setAttribute("TypeStaff","nil");%>
<br>
<br>
<br>
<br>
<br>

<table width=100%>
<tr>
<td>
<center>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="registericon.png" alt="Avatar" style="width:200px;height:200px;border-radius: 50%;">
    </div>
    <div class="flip-card-back">
<br><br><br>
      <h1>Register</h1> 
      <a href="Admin_StaffReg.jsp"><h4>A Staff/Admin</h4></a>
      <a href="PackageBook.jsp"><h4>Package</h4></a>
    </div>
  </div>
</div><br>
<h3><font color="#ffffff">Register</font></h3>
</center>
</td>
<td>
<center>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="updateicon.png" alt="Avatar" style="width:200px;height:200px;border-radius: 50%;">
    </div>
    <div class="flip-card-back">
<br><br><br>
      <h1>Update</h1> 
      <a href="UpdateDelivery_LocStatus.jsp"><h4>Status of Package</h4></a> 
      <a href="UpdateLocPack.jsp"><h4>Location of Package</h4></a>
    </div>
  </div>
</div><br>
<h3><font color="#ffffff">Update</font></h3>
</center>
</td>
<td>
<center>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="viewicon.png" alt="Avatar" style="width:200px;height:200px;border-radius: 50%;">
    </div>
    <div class="flip-card-back">
<br><br><br>
      <h1>Edit</h1> 
      <a href="ShowStaffList.jsp"><h4>Staff Members</h4></a> 
      
    </div>
  </div>
</div><br>
<h3><font color="#ffffff">Edit</font></h3>
</center>
</td>

</tr>




</table>
<%} %>

</body>
</html>