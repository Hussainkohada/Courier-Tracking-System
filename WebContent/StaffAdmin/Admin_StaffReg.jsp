<%@page import="Model.Staff_Admin"%>
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
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
/*button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}*/

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 30%;
  border-radius: 40%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
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

<style>
.switch {
  position: relative;
  display: inline-block;
  width: 30px;
  height: 17px;
}

.switch input { 
  opacity: 0;
  width: 0;
  height: 0;
}

.slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  -webkit-transition: .4s;
  transition: .4s;
}

.slider:before {
  position: absolute;
  content: "";
  height: 13px;
  width: 13px;
  left: 2px;
  bottom: 2px;
  background-color: white;
  -webkit-transition: .4s;
  transition: .4s;
}

input:checked + .slider {
  background-color: #4CAF50;
}

input:focus + .slider {
  box-shadow: 0 0 1px #4CAF50;
}

input:checked + .slider:before {
  -webkit-transform: translateX(13px);
  -ms-transform: translateX(13px);
  transform: translateX(13px);
}

/* Rounded sliders */
.slider.round {
  border-radius: 17px;
}

.slider.round:before {
  border-radius: 50%;
}
</style>


<style>
blink {
    -webkit-animation: 1s linear infinite condemned_blink_effect; // for android
    animation: 1s linear infinite condemned_blink_effect;
}
@-webkit-keyframes condemned_blink_effect { // for android
    0% {
        visibility: hidden;
    }
    50% {
        visibility: hidden;
    }
    100% {
        visibility: visible;
    }
}
@keyframes condemned_blink_effect {
    0% {
        visibility: hidden;
    }
    50% {
        visibility: hidden;
    }
    100% {
        visibility: visible;
    }
}

</style>
<script>
function myFunction() {
  var x = document.getElementById("Password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<title>Admin/Staff Registration</title>

</head>

<body class="bg-image">

  
<div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a class="active1"><img src="Co.png"  height="50"></a>
  </div>
  
  <!-- Left-aligned links (default) -->
  	<a class="active">Staff Register</a>
  	<%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")){ %>
  	<%}else{ %>
      <font color="white">
      <a href="PackageBook.jsp">Package Book</a>
      <a href="UpdateDelivery_LocStatus.jsp">Status Update</a>
      <a href="UpdateLocPack.jsp">Location Update</a>               
       </font>
    <font color="white"><a href="ShowStaffList.jsp">Edit Staff</a></font>
    <font color="white"><a href="ShowUserList.jsp">Edit User</a></font>
  <%} %>
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



<%if(request.getSession().getAttribute("InvalidSAdet")==null){%>
<form id="regForm" action="../ValidateIdandmailSA" method="post">
  <h1><font color="#ff7338"><b>Staff Register</b></font></h1>
  <font color="black">
  <!-- One "tab" for each step in the form: -->
  <div class="tab">

    <font color="#000000">First Name:</font> 
    <p><input placeholder="First Name..." oninput="this.className = ''" name="F_name"></p>
    <font color="#000000">Last Name:</font>
    <p><input placeholder="Last Name..." oninput="this.className = ''" name="L_name"></p>
  </div>
  <div class="tab">
    Gender:
    <select name="Gender">
    	
    	<option value="Male">Male</option>
    	<option value="Female">Female</option>
    	<option value="Other">Other</option>
    	
    	</select>
    	<br>
    <font color="#000000">Email:</font>
    <p><input type="Email" placeholder="Email" oninput="this.className = ''" name="E_Mail" value=""></p>
    <font color="#000000">Contact Number:</font> 
    <p><input type="number" placeholder="Contact Number..." oninput="this.className = ''" name="Contact_num"></p>
  </div>
  <div class="tab">
  	<font color="#000000">User Id:</font>
    <p><input oninput="this.className = ''" name="userId" placeholder="User Id..."></p>
  	<font color="#000000">Password:</font>
    <p><input type="password" placeholder="Password..." oninput="this.className = ''" name="Password" id="Password"></p>
    <center><p><font color="#000000">Show Password</font></p><label class="switch">
    <input type="checkbox" onclick="myFunction()">
  <span class="slider round"></span>
</label>
</center>
    </div>
    <div class="tab">
  	<font color="#000000">Salary:</font>
    <p><input type="number" oninput="this.className = ''" name="Salary" placeholder="Salary..."></p>
  	<font color="#000000">Designation:</font>
    <p><input placeholder="Designation..." oninput="this.className = ''" name="Designation"></p>
    <font color="#000000">Admin or Staff:</font>
    
    
    
    <%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")) {%>
    <select name="Login_type">
    <option value="S">Staff</option>
    <option value="A" disabled>Admin</option>
    </select>

	<% } else { %>
	<select name="Login_type">
    <option value="S">Staff</option>
    <option value="A">Admin</option>
    </select>
    <%}%>
    
     
    </div>
    <div class="tab">
  	<font color="#000000">Permanent Address:</font>
    <p><input oninput="this.className = ''" name="Pmt_Address" placeholder="Permanent Address..."></p>
  	<font color="#000000"> Correspondence Address:</font>
    <p><input placeholder="Correspondence Address..." oninput="this.className = ''" name="Corresp_Address"></p>
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
    <span class="step"></span>
  </div>
  </font>
</form>
<%}else{ Staff_Admin sa_obj=(Staff_Admin)request.getSession().getAttribute("InvalidSAdet");%>
<form id="regForm" action="../ValidateIdandmailSA" method="post">
  <h1><font color="#ff7338"><b>Staff Register</b></font></h1>
  <font color="black">
  <!-- One "tab" for each step in the form: -->
  <div class="tab">

    <font color="#000000">First Name:</font> 
    <p><input placeholder="First Name..." oninput="this.className = ''" name="F_name" value="<%=sa_obj.getF_name()%>"></p>
    <font color="#000000">Last Name:</font>
    <p><input placeholder="Last Name..." oninput="this.className = ''" name="L_name"  value="<%=sa_obj.getL_name()%>"></p>
  </div>
  <div class="tab">
    Gender:
    <select name="Gender">
    	
    	<option value="Male">Male</option>
    	<option value="Female">Female</option>
    	<option value="Other">Other</option>
    	
    	</select>
    	<br>
    <font color="#000000">Email:</font>
    <p><input type="Email" placeholder="Email" oninput="this.className = ''" name="E_Mail" value="<%=sa_obj.getE_Mail()%>"></p>
    <font color="#000000">Contact Number:</font> 
    <p><input type="number" placeholder="Contact Number..." oninput="this.className = ''" name="Contact_num" value="<%=sa_obj.getContact_num()%>"></p>
  </div>
  <div class="tab">
  	<font color="#000000">User Id:</font>
    <p><input oninput="this.className = ''" name="userId" placeholder="User Id..." value="<%=sa_obj.getUserId()%>"></p>
  	<font color="#000000">Password:</font>
    <p><input type="password" placeholder="Password..." oninput="this.className = ''" name="Password" id="Password"></p>
    <center><p><font color="#000000">Show Password</font></p><label class="switch">
    <input type="checkbox" onclick="myFunction()">
  <span class="slider round"></span>
</label>
</center>
    </div>
    <div class="tab">
  	<font color="#000000">Salary:</font>
    <p><input type="number" oninput="this.className = ''" name="Salary" placeholder="Salary..." value="<%=sa_obj.getSalary()%>"></p>
  	<font color="#000000">Designation:</font>
    <p><input placeholder="Designation..." oninput="this.className = ''" name="Designation" value="<%=sa_obj.getDesignation()%>"></p>
    <font color="#000000">Admin or Staff:</font>
    
    
    
    <%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")) {%>
    <select name="Login_type">
    <option value="S">Staff</option>
    <option value="A" disabled>Admin</option>
    </select>

	<% } else { %>
	<select name="Login_type">
    <option value="S">Staff</option>
    <option value="A">Admin</option>
    </select>
    <%}%>
    
     
    </div>
    <div class="tab">
  	<font color="#000000">Permanent Address:</font>
    <p><input oninput="this.className = ''" name="Pmt_Address" placeholder="Permanent Address..." value="<%=sa_obj.getPmt_Address()%>"></p>
  	<font color="#000000"> Correspondence Address:</font>
    <p><input placeholder="Correspondence Address..." oninput="this.className = ''" name="Corresp_Address" value="<%=sa_obj.getCorresp_Address()%>"></p>
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
    <span class="step"></span>
  </div>
  </font>
</form>


<% request.getSession().setAttribute("InvalidSAdet", null);} %>



<%if(request.getSession().getAttribute("Flagsa") ==null) {%>

	<%}else{
		%> <center><h1><font color="#ef2323"><blink><b>Email Id/User Already exist</b></blink></font></h1></center> <%		
		request.getSession().setAttribute("Flagsa",null);}
		%>

</form>








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
</body>
</html>