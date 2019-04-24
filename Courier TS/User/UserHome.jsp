<%@page import="DAO.PackageDAOImpl"%>
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
<title>User Home</title>

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
	background-image: url("gif.gif");
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
  	
  	
  	
  	
  	
</head>
<body class="bg-image">


	<div class="bg-text">
		<%
			int id = Integer.parseInt(request.getSession().getAttribute("cust_id").toString());
		%>
		<%
			String User_Name = request.getSession().getAttribute("cust_name").toString();
		%>

		<h1>
			<font face="Frozen">Welcome our valuable, <%=User_Name%></font>
		</h1>
		<br>
		<h4><font color="#9f9fa0">
			Your Customer Id is found to be :</font>
			<font color="white"><mark><%=id%></mark></font></h4>
		<br />
		
	

		<form action="../ViewPackStatusServlet" method="post">

			<br><i>Enter Consignment id : </i><input type="text" name="consign_id" required>
			<br>
			<br>
			<button type="submit" class="button">Check Status</button>

  </form>
 



  

	

	    			<%
		Package p_obj = null;
		String status = "";
		String status1 = null;
		int flag = 0;
		if (request.getSession().getAttribute("ConsignDet") != null) {
			System.out.println("Package Found");
			flag = 1;
			p_obj = (Package) request.getSession().getAttribute("ConsignDet");
			if (p_obj != null) {
				status1 = "1";
			}
	%>
	<%
		if ((id == p_obj.getUser_id()) && (p_obj != null)) {
	%>
	
<br><center>
	<!-- <form action="UserHome.jsp"> -->
		<table class="table table-dark table-hover table-a"> 
			<tr><th><center>Consignment ID</center></th><td><%=p_obj.getConsign_id()%></td></tr>
			<tr><th><center>Accept Date</center></th><td><%=p_obj.getAccept_date()%></td></tr>
			<tr><th><center>Cost</center></th><td><%=p_obj.getCost()%></td></tr>
			<tr><th><center>Sender Address</center></th><td><%=p_obj.getSender_addr()%></td></tr>
			<tr><th><center>Receiver Address</center></th><td><%=p_obj.getReceiver_addr()%></td></tr>
			<tr><th><center>Current Location</center></th><td><%=p_obj.getCurr_loc()%></td></tr>
			<tr><th><center>Package Status</center></th><td><%=p_obj.getPack_status()%></td></tr>
		</table>



		<!-- <button type="submit" class="button"><font color="black">Go to Home Page</font></button>
	</form> -->
	</center>

	<%
		} else if (status1.equals("1")) {
				System.out.println("No permission for user");
				status1 = " is not your package";
	%>
	<br><p>
		Status : <h4><%=p_obj.getConsign_id()%></h4><%=status1%></p>
	<%
		}
	%>
	<%
		} else if (p_obj != null) {
			System.out.println("Package Not Found");
			status = "No Pacakge Found";
	%>
	<br><p>
		Status :
		<%=status%></p>
	<%
		}
	%>
	<!--
	<form action="UserLoginPage.jsp">
		<br /> <input type="submit" value="logout">
		<%
			request.getSession().setAttribute("ConsignDet", null);
		%>
	</form>-->
	
	  </div>
	  <div class="absolute">
	  
	  <marquee scrollamount="10" direction="left"><img src="truck.gif"></marquee>
	
	  </div>
	  <div class="topnav">

  <!-- Centered link -->
  <div class="topnav-centered">
    <a class="active1"><img src="Co.png"  height="50"></a>
  </div>
  
  <!-- Left-aligned links (default) -->
  <a class="active">Login</a>
  
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
</body>
</html>
