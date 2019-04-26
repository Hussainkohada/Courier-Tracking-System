<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<meta charset="utf-8"> 
<!-- BootStrap 4 -->
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>-->
<!-- BootStrap 3 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Ajax Script -->
<!-- <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
            $(document).on("click", "#ulogin", function() { // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
                $.post("ULoginServlet1", function(responseText) {   // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response text...
                    $("#Validity").text(responseText);           // Locate HTML DOM element with ID "somediv" and set its text content with the response text.
                });
            });
            
</script> -->
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
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border-radius: 1px solid #ccc;
  box-sizing: border-box;
  resize: horizontal;

}

/* Set a style for all buttons */
button {
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
}

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
  padding-top: 20px;
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
@media screen and (max-width: 1000px) {
  span.psw {
     display:block;
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
    background: #f48129;
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
    background-color: #0062cc;
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
  background-color: #ffffff;
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
  background-color: #ffffff;
  border: none;
  color: black;
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
  background-image: url("images/back blur.png");
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
</head>

<body class="bg-image" >
  
<div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a class="active1" href="Login_Register.jsp"><img src="images/Co.png"  height="50"></a>
  </div>
  
  <!-- Left-aligned links (default) -->
  <a class="active">Login</a>
  
  <!-- Right-aligned links -->
  <div class="topnav-right">
    <a href="RegistrationHome.jsp">Register >></a>
  </div>
  
</div>

<div class="container login-container">
            <div class="row">
                <div class="col-md-6 login-form-1">
                <font color="#f48129">
                    <center><h2>Login as User</h2>
                    <br>
                    <h4>You have your way. I have my way. As for the right way, the correct way, and the only way, Lets check whether you EXIST!!. </h4>
                    
<br><br> 
<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;" class="button">User Login</button>


<div id="id01" class="modal">
  
  <form class="modal-content animate" action="ULoginServlet" method="post" id="login">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/avatar.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>User ID / Email ID</b></label>
      <input type="text" placeholder="Enter User ID / Email ID" name="u_id" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" required>
        
      <button type="submit" id="ulogin">Login</button>
      <br>

    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>



			</center>
			</font>
                </div>
                <div class="col-md-6 login-form-2">
                    <center><h2>Login as Staff/Admin</h2>
                    <br>
                    <h4>Already got your salary??<br>
                    Never mind!!<br>
                    Just Login</h4>
                   <br><br> 
<button onclick="document.getElementById('id02').style.display='block'" style="width:auto;" class="button1">Staff/Admin Login</button>


<div id="id02" class="modal">
  
  <form class="modal-content animate" action="A_SLoginServlet" method="post"  id="abc">
    <div class="imgcontainer">

      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/avatar.png" alt="Avatar" class="avatar" >
    </div>
<font color="#f48129">
    <div class="container">
      <label for="uname"><b>User ID / Email ID</b></label>
      <input type="text" placeholder="Enter User ID / Email ID" name="u_id" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pwd" required>
        
      <button type="submit">Login</button>
       
      </div>
      </font>
  </form>
  <%


String status="";
if(request.getSession().getAttribute("login_status")==null)
{%> <%}else{
	status= request.getSession().getAttribute("login_status").toString();
	 %>
	<font color="red"><%=status%></font>
<%} %>
</div>

<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
     

</center>
                </div>
            </div>
        </div>


 <%	if(request.getSession().getAttribute("loginaccess")==null){%>
			<%}else { 
			String info=request.getSession().getAttribute("loginaccess").toString();%>
			<center><b><h3><div style="color: white"><%=info%></div></h3></b></center>       
		<%request.getSession().setAttribute("loginaccess", null);}%>
















 <!-- 
 <div class="container">
 <br>
 <br>
 <br>
<h1>Login</h1><br>
<h5>Lets find who you really are??</h5>
<form action="Login_Register.jsp" method="post" > 
<br/><a href="User/UserLoginPage.jsp">Click Here to Login as User</a>
<%request.getSession().setAttribute("TypeStaff", "Login");%>
<br/><a href="StaffAdmin/A_SLoginPage.jsp">Click Here to Login as Admin/Staff</a>
<br><input type="submit"  value="Go Back to Registeration Page" >
</form>
</div>
 -->
 
</body>
</html>