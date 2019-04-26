<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet'>
<!-- BootStrap 4 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- BootStrap 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login / Register</title>
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
  background-image: url("images/back 2.jpg");
  
  /* Add the blur effect */
  filter: blur(5px);
  -webkit-filter: blur(5px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
 /* background-color: rgb(0,0,0);  Fallback color */
 /* background-color: rgba(0,0,0, 0.4);  Black w/opacity/see-through */
  color: 	#5B2817;
  font-weight: bold;
  /* border: 3px solid #f1f1f1; */
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
.button {
  border-radius: 4px;
  background-color: #4cc6ff;
  border: none;
  color: #FFFFFF;
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
.button:hover {background-color: #1a4db2}
.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
<style>
body {
 font-family: 'Merienda';font-size: 22px;
}
</style>
</head>



<body>


<div class="bg-image"></div>
<div class="bg-text">
<center><img src="images/Co.png"></center>
<h1 class="display-1">Couriers</h1>
<br>
<br>
<h4>Love to DELIVER which belongs to YOU</h4>
<br>
<br>
<br>
<table width="100%">
<tr><td><form action="LoginHome.jsp"><button class="button" type="submit"><span>Login </span></button></form></td><td><form action="RegistrationHome.jsp"><button class="button" type="submit"><span>Register </span></button></form></td></tr>
</table>
</div>

</body>
</html>