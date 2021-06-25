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
	input
	{
		border-top:none;
		border-left:none;
		border-right:none;
		
	}	
</style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top">
	<div class="container">
			
		<div >
				<span style="font-family: 'Shrikhand', cursive" class="navbar-brand ">FOOD WASTAGE MANAGEMENT</span>
				
		</div>		
			
	</div>
</nav>

<div class="container" style="margin-top:44px;">
	<div class="row">
		<div class="col-lg-5" style="margin-top:256px;">
					
					<h1 style="font-family: 'Kaushan Script', cursive; font-size:85px; color:white;">Food Wastage Management System!</h1>
		</div>
		<div class="col-lg-3">
		
		</div>
		<div class=" col-lg-4 animated fadeInRight faster" style="margin-top:50px;">
		
				<form action="donar_forgot_action.jsp" method="post"> 	
					<table class="table table-dark table-hover"><br><br><br>
						<tr >
							<td colspan="2"><h3 ><b><center> Forgot Password</center></b></h3></td>							
						</tr>
						<tr>
							<th colspan="2">
																<%
																	if(request.getParameter("id1")!=null)
																	{
																%>		
																		<h5 ><font color="red"><i>Please Enter Valid Username / Password</i> </font></h5>
																<%} %>
							</th>
						</tr>
						<tr>	
								<td>User Name</td>
								<td><input class="table-dark" type="text" name="un" required></td>
						</tr>
						<tr>	
								<td>E-mail / Mobile.no</td>
								<td><input class="table-dark" type="number" name="mail" required></td>
						</tr>
						
							<tr>
								<td ><a href="donar_login.jsp"><input type="button" value="Back" class="btn btn-success btn-sm"></a>
								<input type="submit" value="Serach" class="btn btn-success btn-sm"></td>
							</tr>
				</table>
			</form>
		</div>
	</div>
</div>

</body>
</html>