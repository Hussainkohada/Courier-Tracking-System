<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff Page</title>


<!-- BootStrap 4 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- BootStrap 3 -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
 -->
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
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
body,h1,h2{font-family: "Raleway", sans-serif}
p {line-height: 2}
body, html {
  height: 100%;
  margin: 0;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("white.jpg");
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>
<body class="bg-image">
<%
request.getSession().setAttribute("key2", "Staff");
%>
 <div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a class="active1"><img src="Co.png"  height="50"></a>
  </div>
  
  <!-- Left-aligned links (default) -->
  <a class="active">Staff</a>
  
  <!-- Right-aligned links -->
  <div class="topnav-right">
  <form action="">
    <a href="../LoginHome.jsp">Logout >></a>
    <%
			request.getSession().setAttribute("ConsignDet", null);
		%>
    </form>
  </div>
  
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<table width="100%">
<tr>
<td>
<center>
<img src="Co.png">
    <h2><font color="black">Tracking</font></h2>
    <h2><b><font color="black">Happiness</font></b></h2>
</center>
</td>
<td  bgcolor="black">
    <h1>&nbsp;&nbsp;&nbsp;<a href="PackageBook.jsp"><font color="white">Register a Package</font></a><br>
    &nbsp;&nbsp;&nbsp;<a href="UpdateDelivery_LocStatus.jsp"><font color="white">Update Delivery Status</font></a><br>
    &nbsp;&nbsp;&nbsp;<a href="UpdateLocPack.jsp"><font color="white">Update package Location</font></a></h1>
</td>
</tr>
</table>
<!-- 
<br/> <a href="PackageBook.jsp">Click Here to Register Package</a>
<br/> <a href="UpdateDelivery_LocStatus.jsp">Click Here to Update Delivery Status of Package</a>	
<br/> <a href="UpdateLocPack.jsp">Click Here to Update Location of Package</a>	
 -->
 

 
 
 
</body>
</html>
