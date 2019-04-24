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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>A/S Login Page</title>


</head>


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
	background-image: url("warn1.gif");
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
  	



<body class="bg-image">
<div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a class="active1"><img src="Co.png"  height="50"></a>
  </div>
  
  <!-- Left-aligned links (default) -->
  <a href="../RegistrationHome.jsp"> << Back</a>
  
  <!-- Right-aligned links -->
  <div class="topnav-right">
    <a class="active" >Register</a>
  </div>
  
</div>
<div class="bg-text">
<%if(request.getSession().getAttribute("TypeStaff").equals("StaffReg")){%>
  <%} %> 
  <center><h1><blink><b><font color="red" face="frozen">Caution!!</font></b></blink></h1></center>
<form action="../CheckSecKey" method="post"  id="abc">
<!--<br> User Id/E-Mail Id : <input type="text" name="u_id" autocomplete="off">
<br> Password : <input type="password" name="pwd">-->
<br>
<h4>Enter the Security Key : <font color="black"><input type="password" name="sec_code"></font></h4>
<br> <button class="button" type="submit">Log In</button>
</form>

<%
String status="";
if(request.getSession().getAttribute("login_status")!=null)
{
status= request.getSession().getAttribute("login_status").toString();
}%>
	
	<font color="red"><%=status%>
	<%request.getSession().setAttribute("login_status", null); %></font>
</form>
</body>
</html>