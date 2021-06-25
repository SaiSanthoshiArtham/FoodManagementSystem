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
<link href="https://fonts.googleapis.com/css?family=Shrikhand&display=swap" rel="stylesheet">

<style>
	body 
	{
	font-family:Times New Roman;
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("images/img_bg_1.jpg");
	background-repeat : no-repeat;
	background-size:1370px 950px;
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

<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
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
						<a href="admin_home.jsp" class=" nav-link"> <li class="nav-item " >HOME</li></a>
						<div class="dropdown ">
								<a class="nav-link"><li class="nav-item dropdown-toggle  " data-toggle="dropdown" data-target="#down1"><span class="caret">ADD</span></li></a>
										<div class="dropdown-menu" id="down1">
										<a class="dropdown-item " href="add_agent.jsp">Add Agent</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="add_orphan.jsp">Add OrphanHome</a>
											
										</div>
						</div>				
						<div class="dropdown ">
								<a class=" nav-link"><li class="nav-item dropdown-toggle" style="color:orange;" data-toggle="dropdown" data-target="#down2"><span class="caret">VIEW</span></li></a>
										<div class="dropdown-menu" id="down2">
											<a class="dropdown-item active" href="view_agent.jsp">View Agents</a>
											<div class="dropdown-divider"></div>							
											<a class="dropdown-item" href="view_orph.jsp">View OrphanHomes</a>
											<div class="dropdown-divider"></div>							
											<a class="dropdown-item" href="view_donar_request.jsp">View Food Request From Donar</a>
											<div class="dropdown-divider"></div>							
											<a class="dropdown-item" href="view_All_Status.jsp">View all Food Rquests Status</a>
										</div>					
						</div>		
						<a class=" nav-link" href="help.jsp" target="_blank"><li class="nav-item">HELP</li></a>
						<a href="about.html"  class="nav-link"><li class="nav-item">ABOUT</li></a>
					</ul>	
			</div>
		</div>	
	
	</div>
		<a href="admin_login.jsp"> <button class="btn btn-info btn-sm">LOGOUT</button></a>
	
</nav>
<br>

<div class="container"  style="margin-top:30px;">
	<div class="row">
		
		<div class="col-lg-12 table-responsive">
				<h4 align="left" style="color:yellow;">AGENT DETAILS</h4>
		
			<table class="table table-secondary">
				<thead class="thead-dark ">
				<tr>
					<th>Agent_name	&nbsp &nbsp </th>
					<th>Username	&nbsp &nbsp </th>
					<th>Password	&nbsp &nbsp	 </th>
					<th>Gender		&nbsp &nbsp </th>
					<th>mobile		&nbsp &nbsp</th>
					<th>Area 		&nbsp &nbsp</th>
					<th>Address 	&nbsp &nbsp</th>
					<th> 	</th>

				</tr></thead>
				<%
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
				
				PreparedStatement ps=con.prepareStatement("select * from add_agent");
				
				ResultSet rs=ps.executeQuery();
				
				while(rs.next()){
					String a=rs.getString(1) ;
					String b=rs.getString(2) ;
					String c=rs.getString(3) ;
					String d=rs.getString(4) ;
					String e=rs.getString(5) ;
					String f=rs.getString(6) ;
					String g=rs.getString(7) ;
				
				
				%>
				
				<tr>
					<td> <%=a %> </td>
					<td> <%=b %> </td>
					<td> <%=c %> </td>
					<td> <%=d %> </td>
					<td> <%=e %> </td>
					<td> <%=f %> </td>
					<td> <%=g %> </td>

					<td> <a href="delete_agent.jsp?id=<%=b%>">delete</a> </td>
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