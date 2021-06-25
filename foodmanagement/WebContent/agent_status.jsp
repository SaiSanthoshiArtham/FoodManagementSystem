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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Kaushan+Script&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Fredericka+the+Great&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Shrikhand&display=swap"
	rel="stylesheet">
<!-- animations -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style>
body {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
		url("images/img_bg_1.jpg");
	background-repeat: no-repeat;
	background-size: 1370px 950px;
}

nav {
	background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5));
	border-bottom: 1px solid grey;
	padding: 10px;
}

input {
	border-top: none;
	border-left: none;
	border-right: none;
}

li {
	color: white;
	font-weight: bold;
}

li:hover {
	cursor: pointer;
	color: orange;
}
</style>
</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark fixed-top">
	<div class="container" >
			
			
		
		<div class=" collapse navbar-collapse " id="go">
			<div class="ml-auto">
			<ul class="navbar-nav">
				<a href="agent_home.jsp" class=" nav-link "  ><li id="list2" class="nav-item " style="color:orange;">HOME</li></a>												
				<div class="dropdown " >
						<a class=" nav-link"><li class="nav-item dropdown-toggle" id="list" data-toggle="dropdown" data-target="#down2"><span class="caret">VIEW</span></li></a>
								<div class="dropdown-menu" id="down2">
																		
									<a class="dropdown-item " onclick="comp()"><b>Completed Requests</b></a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" font="blod" href="agent_status.jsp"><b>View All food status</b></a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item " onclick="orp()"><b>View OrphanHomes</b></a>
								</div>						
				</div>
								
				<a href="help.jsp" class=" nav-link" target="_blank"><li class="nav-item ">HELP</li></a>
				<a href="about.jsp" class=" nav-link"><li class="nav-item ">ABOUT</li></a>
				</ul>
			</div>			
		</div>	
	</div>
			<a href="agent_login.jsp"> <button class="btn btn-info btn-sm"> LOGOUT</button></a>
			 </nav>
<br>
	<div class="container"  style="margin-top:30px;">
	<div class="row">
						<h4 align="left" style="color:yellow;">FOOD STATUS</h4>
		
		<div class="col-lg-12 table-responsive">
		
			<table class="table table-secondary">
			
			<tr>
				
				<thead class="thead-dark ">
						<th>donar_name  &nbsp &nbsp</th> 
						<th>user_name  &nbsp &nbsp</th> 
						<th> Pickuptime &nbsp &nbsp</th>
						<th>food_quantity &nbsp &nbsp</th>
						<th>food_decription &nbsp &nbsp</th>
						<th>Food_Requested address &nbsp &nbsp</th>
						<th>Food_Requested Area  &nbsp &nbsp</th>
						<th>donar_mobile &nbsp &nbsp</th>
						<th>Alternate_mobile &nbsp &nbsp</th>
						<th>Food_Requested Date (YY-MM-DD) &nbsp &nbsp</th>
						<th>Status_Of_Request &nbsp &nbsp</th>
						<th>Accepted_Agent name &nbsp &nbsp</th>
						<th>Accepted_Agent mobile &nbsp &nbsp </th>
						
				</thead>
			</tr>
			
			<%
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
			
			PreparedStatement ps=con.prepareStatement("select * from food_details where Status='DELIVERED' ");
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()){
				String a=rs.getString(1) ;
				String b=rs.getString(2) ;
				String c=rs.getString(3) ;
				String d=rs.getString(4) ;
				String e=rs.getString(5) ;
				String f=rs.getString(6) ;
				String g=rs.getString(7) ;
				String h=rs.getString(8) ;
				String i=rs.getString(9) ;
				String j=rs.getString(10);
				String k=rs.getString(11);
				String l=rs.getString(12);
				String m=rs.getString(13);
				
			
			
			%>
				
					<tr>
					
					<td><%=a %></td>
					<td><%=b %></td>
					<td><%=c %></td>
					<td><%=d %></td>
					<td><%=e %></td>
					<td><%=f %></td>
					<td><%=g %></td>
					<td><%=h %></td>
					<td><%=i %></td>
					<td><%=j %></td>
					<td><font color="green"><b><%=k %></b></font></td>
					<td><%=l %></td>
					<td><%=m %></td>
					
					
					
					</tr>
					
			<%
			}
			%>
			</table>					
		</div>
		
	</div>
</div>

</body>
</html>
