<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Shrikhand&display=swap" rel="stylesheet">
<!-- animations -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style>
	body 
	{
	background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("images/img_bg_1.jpg");
	 background-repeat: no-repeat;
 	background-size:1370px 950px;
	}
	nav
	{
		background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5));	
		border-bottom: 1px solid grey;
		padding:10px;
	}
	li
	{
		color:white;
		font-weight:bold;
		
	}
	li:hover
	{
		cursor:pointer;
		color:orange;
	}
</style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark  fixed-top">
	<div class="container">
			
		<div >
				<span style="font-family: 'Shrikhand', cursive" class="navbar-brand ">FOOD WASTAGE MANAGEMENT</span>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			    <span class="navbar-toggler-icon"></span>
		        </button>	
		</div>		
		
		<div class=" collapse navbar-collapse  " id="collapsibleNavbar">
			<div class="ml-auto">
				
			<ul class="navbar-nav">
						<a href="admin_home.jsp" class=" nav-link"> <li class="nav-item " style="color:orange;">HOME</li></a>			
				<div class="dropdown ">
						<a class=" nav-link"><li class="nav-item dropdown-toggle "  data-toggle="dropdown" data-target="#down1"><span class="caret">ADD</span></li></a>
								<div class="dropdown-menu" id="down1">
											
											<a class="dropdown-item" href="add_orphan.jsp">Add OrphanHome</a>
											
								</div>
				</div>				
				<div class="dropdown ">
						<a class=" nav-link"><li class="nav-item dropdown-toggle" data-toggle="dropdown" data-target="#down2"><span class="caret">VIEW</span></li></a>
								<div class="dropdown-menu" id="down2">
											<a class="dropdown-item" href="view_agent.jsp">View Agents</a>
											<div class="dropdown-divider"></div>							
											<a class="dropdown-item" href="view_orph.jsp">View OrphanHomes</a>
											<div class="dropdown-divider"></div>							
											<a class="dropdown-item" href="view_donar_request.jsp">View Food Request From Donar</a>
											<div class="dropdown-divider"></div>							
											<a class="dropdown-item" href="view_All_Status.jsp">View all Food Requests Status</a>
										</div>						
				</div>		
				<a href="help.jsp" class=" nav-link" target="_blank"><li class="nav-item ">HELP</li></a>
				<a href="about.html" class=" nav-link"><li class="nav-item ">ABOUT</li></a>
				</ul>
			</div>
		</div>	
	</div>
	
					<a href="admin_login.jsp"> <button class="btn btn-info btn-sm">LOGOUT</button></a>
	
</nav>

<div class="container " style="margin-top:100px;">
	<div class="row">		
			
			<div class="col-lg-5 animated fadeInUp fast" style="margin-top:200px;">
					<span class="intro-text-small" style="font-size:20px;font-family: 'Fredericka the Great', cursive;margin-left:20px; color:grey;">Save The Better Food,<br> &nbsp &nbsp Feed The Hunger</span>
					<h1 style="font-family: 'Kaushan Script', cursive; font-size:85px; color:white;">Excess Food Wastage Management System!</h1>
			</div>
	</div>
</div>


</body>
</html>