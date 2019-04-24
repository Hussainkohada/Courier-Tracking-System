<%@page import="Model.Staff_Admin"%>
<%@page import="DAO.Staff_AdminDAO"%>
<%@page import="DAO.Staff_AdminDAOImpl"%>
<%@page import="Model.Package"%>
<%@page import="java.util.*"%>
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
	
<title>Package Booking</title>


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
<STYLE>
table.table-a{
width: 50%;
border: 1px solid #f1f1f1;
}
</STYLE>
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
  <a class="active">Package Book</a>
  <a href="UpdateDelivery_LocStatus.jsp"><font color="white">Status Update</font></a>
  <a href="UpdateLocPack.jsp"><font color="white">Location Update</font> </a>
    <% if(request.getSession().getAttribute("key2").equals("Admin")) {%>
	<a href="ShowStaffList.jsp">Edit Staff</a>
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

<br>
<br>

<h1>Welcome to Package Booking Page</h1>

<%
Staff_AdminDAO dao=new Staff_AdminDAOImpl();
Staff_Admin obj=new Staff_Admin();
obj=(Staff_Admin)request.getSession().getAttribute("staffdet");
int id=dao.getEmployeeId(obj);
%>
 <%if(request.getSession().getAttribute("tempobj")==null){%> 
 
 <form id="regForm" action="../PackageBookServlet" method="post">
  <h1>Package Details</h1>
  <!-- One "tab" for each step in the form: -->
  <div class="tab">
    Sender Address:
    <p><input placeholder="Sender..." oninput="this.className = ''" name="Sender_addr"></p>
    Receiver Address:
    <p><input placeholder="Receiver..." oninput="this.className = ''" name="Receiver_addr"></p>
  </div>
  <div class="tab">
    Employee Id:
    <p><input oninput="this.className = ''" name="Emp_id" value="<%=id %>" readonly></p>
    Customer Id:
    <p><input type="number" placeholder="Customer..." oninput="this.className = ''" name="User_id" maxlength = "8"></p>
  </div>
  <div class="tab">
  	Accept Date:
    <p><input type="date" oninput="this.className = ''" name="Accept_date"></p>
  	Package Weight:
    <p><input type="number" placeholder="Weight..." oninput="this.className = ''" name="Pack_Weight"></p>
  	Cost:  
    <p><input type="number" placeholder="Cost..." oninput="this.className = ''" name="Cost"></p>
  </div>
  <div class="tab">
  	Current Location:
    <p><input placeholder="Current Location..." oninput="this.className = ''" name="curr_Loc"></p>
    Package Status:
    <select name="pack_Status">
    	
    	<option value="Booked">Booked</option>
    	<option value="In Transit">In Transit</option>
    	<option value="Delivered">Delivered</option>
    	
    	</select>
    	<br>
  </div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>
  
</form>
 
 <%}else if(request.getSession().getAttribute("tempobj")!=null){
 Package tempobj=(Package)request.getSession().getAttribute("tempobj"); 
 request.getSession().setAttribute("tempobj", null);
 %> 
 
 <form id="regForm" action="../PackageBookServlet" method="post">
  <h1>Package Details</h1>
  <!-- One "tab" for each step in the form: -->
  <div class="tab">
    Sender Address:
    <p><input placeholder="Sender..." oninput="this.className = ''" name="Sender_addr" value="<%=tempobj.getSender_addr()%>"></p>
    Receiver Address:
    <p><input placeholder="Receiver..." oninput="this.className = ''" name="Receiver_addr" value="<%=tempobj.getReceiver_addr()%>"></p>
  </div>
  <div class="tab">
    Employee Id:
    <p><input  oninput="this.className = ''" name="Emp_id" value="<%=id %>" readonly></p>
    Customer Id:
    <p><input type="number" placeholder="Customer..." oninput="this.className = ''" name="User_id" maxlength = "8"></p>
  </div>
  <div class="tab">
  	Accept Date:
    <p><input type="date" oninput="this.className = ''" name="Accept_date" value="<%=tempobj.getAccept_date()%>"></p>
  	Package Weight:
    <p><input type="number" placeholder="Weight..." oninput="this.className = ''" name="Pack_Weight" value="<%=tempobj.getPack_Weight()%>"></p>
  	Cost:  
    <p><input type="number" placeholder="Cost..." oninput="this.className = ''" name="Cost" value="<%=tempobj.getCost()%>"></p>
  </div>
  <div class="tab">
  	Current Location:
    <p><input placeholder="Current Location..." oninput="this.className = ''" name="curr_Loc" value="<%=tempobj.getCurr_loc()%>"></p>
    Package Status:
    <p><input placeholder="Status..." oninput="this.className = ''" name="pack_Status" value="<%=tempobj.getPack_status()%>"></p>
  </div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  </div>
</form>
 
 <%}else  %>
 <% if(request.getSession().getAttribute("CustId")==null){%>
 <%}else if(request.getSession().getAttribute("CustId").equals("Incorrect")){ %>
 <center><font color="Red"><h2>Invalid Customer Id Please Enter Again</h2></font></center>
 
 <% request.getSession().setAttribute("CustId",null);}%>
   
 <script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>
<%if(request.getSession().getAttribute("BokkedSuccess")==null){ %><%}else{ %>
<center><h3><img src="par.gif" width="80px" height="80px"><font face="verdana" color="green">Package Booked Successfully</font></h3></center>

<%request.getSession().setAttribute("BokkedSuccess",null);} %>
 
</body>
</html>