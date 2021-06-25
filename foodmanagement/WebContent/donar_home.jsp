<%@page import="java.sql.*"%>
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
	input
	{
		border-top:none;
		border-left:none;
		border-right:none;
		
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
	.scroll-left {
 		height: 50px;	
 		overflow: hidden;
 		position: relative;
 		color: white;
 		font-family: 'Kaushan Script', cursive; 
 		font-size:50px;
 		
	}
	.scroll-left p {
 		position: absolute;
 		width: 100%;
 		height: 100%;
 		margin: 0;
 		line-height: 50px;
 		text-align: center;
 		transform:translateX(100%);
 		animation: scroll-left 15s linear infinite;
	}
	@keyframes scroll-left {
 		0%   {
 			transform: translateX(100%); 		
 		}
 		100% {
 			transform: translateX(-100%); 
 		}
	}
</style>
</head>
<body>

<nav class="navbar navbar-expand-md navbar-dark fixed-top">
	<div class="container">
			
		<div >
				<span style="font-family: 'Shrikhand', cursive" class="navbar-brand ">FOOD WASTAGE MANAGEMENT</span>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#go">
			    <span class="navbar-toggler-icon"></span>
		 </button>
		</div>		
		
		
		<div class=" collapse navbar-collapse " id="go">
			<div class="ml-auto">	
			<ul class="navbar-nav">
							
				<a href="donar_home.jsp" class=" nav-link "  ><li class="nav-item " style="color:orange;">HOME</li></a>					
				<a href="donar_status.jsp" class=" nav-link"><li class="nav-item ">STATUS</li></a>
				<a href="help.jsp" class=" nav-link" target="_blank"><li class="nav-item ">HELP</li></a>
				<a href="about.html" class=" nav-link"><li class="nav-item ">ABOUT</li></a>
				</ul>
			</div>
		</div>	
	</div>
					<a href="donar_login.jsp"> <button class="btn btn-info btn-sm"> LOGOUT</button></a>
	
</nav>

<div class="container  " style="margin-top:44px;">
	
	<div class="row">
	
		
				<div class="col-lg-5 animated fadeInUp fast" style="margin-top:100px;">
					
					
					<h1 style="font-family: 'Kaushan Script', cursive; font-size:85px; color:white;">Food Wastage Management System!</h1>
					
		
			</div>

		<div class="col-lg-3">
		
		</div>
		<div class=" col-lg-4 animated fadeInRight faster" style="margin-top:50px;">
		
					
					<form action="food_details.jsp" method="post">
						<table class="table table-dark "><br>
						
						<tr><th colspan="2"><h3><b>&nbsp SEND FOOD REQUEST</b></h3></th></tr>
							<tr>
								<th colspan="2">
								<%
									String uname=session.getAttribute("uname").toString();
									String address=session.getAttribute("address").toString();
									String pno=session.getAttribute("pno").toString();
								%>
																<%
																	if(request.getParameter("id1")!=null)
																	{
																%>		
																		<h2 ><font color="red"><center><b><i>REQUEST NOT SENT !!!! TRY AGAIN</i></b></center></font></h2>
																<%	
																	}
																	else if(request.getParameter("id2")!=null)
																	{
																%>		
																		<h5 ><font color="lightgreen"><center><b><i>DETAILS SENT TO ADMIN SUCCESSFULLY</i></b></center> </font></h5>
																<%	
																	}
																	else if(request.getParameter("id3")!=null)
																	{
																%>
																		<h5 ><font color="red"><center><b><i>Duplicate Details Recorded..Please Enter New Details</i></b></center></font></h5>																	
																<%
																	}
																%>
										</th>		
							</tr>
							<tr>
									<td>Donar Name</td>
									<td><input  class="table-dark" type="text" name="dn" required><br></td>
							</tr>	
							<tr>
									<td>User Name</td>
									<td><input  class="table-dark" type="text" name="un" value="<%=uname%>" readonly="readonly"><br></td>
							</tr>	
							<tr>	
									<td>Pick up Time</td>
									<td><input  class="table-dark" type="text" name="qual" pattern="(([1]?[0-9])([AaPp][Mm]))|(([[0-9])([AaPp][Mm]))" title= "enter Am or Pm" required></td>
							</tr>
							<tr>
									<td>Food Quantity</td>
									<td><input  class="table-dark" type="text" name="quan" required><br></td>
							</tr>		
							<tr>
									<td>Food Description</td>
									<td><input  class="table-dark"  type="text" name="desc" placeholder="type of food" required><br></td>
							</tr>	
							
							<tr>	
									<td>Address</td>
									<td><textarea  class="table-dark"    required placeholder="Enter Complete Address" type="text" name="add"></textarea></td>
																		
							</tr>
							<tr>	
									<td>Area</td>
									<td><select  class="table-dark" name="area">
									<% 
											try{
											Class.forName("com.mysql.jdbc.Driver");
											Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
											
											Statement st1=con1.createStatement();
										
											ResultSet rs1=st1.executeQuery("select * from add_agent ");
											
											%>	<option>--select Area--</option><%	
											while(rs1.next())
											{
												
												String area=rs1.getString("work_area");
									%>
												<option value=<%=area %>><%=area %></option>

									<%
										}
											}
										catch(Exception e1)
										{
										e1.printStackTrace();
										}
									%>
									
									</select></td>
							</tr>
							
							
								
								<tr>	
									<td>Donor Mobile number</td>
									<td><input  class="table-dark" type="number" name="num" value="<%=pno%>" readonly="readonly"></td>
							</tr>
							<tr>	
									<td>Alternate Mobile number</td>
									<td><input  class="table-dark" type="number" value='null' name="num1"  placeholder="   (OPTIONAL)"></td>
							</tr>
								<tr>	
									<td>Orphanges</td>
									<td><select  class="table-dark" name="area">
									<% 
											try{
											Class.forName("com.mysql.jdbc.Driver");
											Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
											
											Statement st1=con1.createStatement();
										
											ResultSet rs1=st1.executeQuery("select * from add_orphan ");
											
											%>	<option>--select Orphanage--</option><%	
											while(rs1.next())
											{
												
												String area=rs1.getString("orphan_name");
												int num = rs1.getInt("no_of_orphans");
									%>
												<option value=<%=area %><%= -num %>><%=area %><%= -num %>  people </option>
												

									<%
										}
											}
										catch(Exception e1)
										{
										e1.printStackTrace();
										}
									%>
									
									</select></td>
							</tr>
								<tr>
										<td colspan="2"><input class="btn btn-success btn-block" type="submit" value="Send Request"></td>
																		
									
								</tr>
							
						</table>
					</form>
		</div>
	</div>
</div>
</div>

</body>
</html>