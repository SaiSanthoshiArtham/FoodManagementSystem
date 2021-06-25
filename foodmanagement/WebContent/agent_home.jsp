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
<!-- animations -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">

<style>
	body 
	{
	background-color:silver;
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("images/img_bg_1.jpg");
	background-repeat : no-repeat;
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
	a:hover
	{
		cursor:pointer;
	}
	
	
</style>

<script>
	function fu(){
		var d = document.LoginForm.deltime.value;

		if(d.length<0) 
		{
		alert("Add delivery time");
		            document.LoginForm.deltime.focus();
		            document.LoginForm.deltime.value="";
		return false;
		}
	}
	function orp()
	{
		document.getElementById("orph").style.display="block";
		document.getElementById("orph1").style.display="none";
		document.getElementById("list").style.color="orange";
		document.getElementById("list2").style.color="white";
		document.getElementById("completed").style.display="none";

	}
	function comp()
	{
		document.getElementById("orph").style.display="none";
		document.getElementById("orph1").style.display="none";
		document.getElementById("list").style.color="orange";
		document.getElementById("list2").style.color="white";
		document.getElementById("completed").style.display="block";
	}

</script>
</head>
<body>
<%
String area=session.getAttribute("area").toString();
String mob=session.getAttribute("mob").toString();
String un=session.getAttribute("uname").toString();

String aname=session.getAttribute("aname").toString();
String gender=session.getAttribute("gender").toString();

%>
<nav class="navbar navbar-expand-md navbar-dark  fixed-top">
	<div class="container" >
			
		<div >
				<span style="font-family: 'Shrikhand', cursive; font-size:30px;" class="navbar-brand "><%out.println("hello ! "+aname);%></span>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#go">
			    <span class="navbar-toggler-icon"></span>
		 </button>
		</div>		
		
		<div class=" collapse navbar-collapse " id="go">
			<div class="ml-auto">
			<ul class="navbar-nav">
				<a href="agent_home.jsp" class=" nav-link "  ><li id="list2" class="nav-item " style="color:orange;">HOME</li></a>												
				<div class="dropdown " >
						<a class=" nav-link"><li class="nav-item dropdown-toggle" id="list" data-toggle="dropdown" data-target="#down2"><span class="caret">VIEW</span></li></a>
								<div class="dropdown-menu" id="down2">
																		
									<a class="dropdown-item " onclick="comp()"><b>Completed Requests</b></a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item"  href="agent_status.jsp"><b>View All food status</b></a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item " onclick="orp()"><b>View OrphanHomes</b></a>
								</div>						
				</div>
								
				<a href="help.jsp" class=" nav-link" target="_blank"><li class="nav-item ">HELP</li></a>
				<a href="about.html" class=" nav-link"><li class="nav-item ">ABOUT</li></a>
				</ul>
			</div>			
		</div>	
	</div>
			<a href="agent_login.jsp"> <button class="btn btn-info btn-sm"> LOGOUT</button></a>
			
</nav><br><br>
<br><br><br>


<div class="container" id="orph1">
<h3 align="left" style="font-family: 'Kaushan Script', cursive; font-size:30px; color:Yellow;"><b>Food Requests</b></h3>
	<div class="row">
		
		<div class="col-lg-12">
			<%
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/food","root","");
				
		Statement st=con.createStatement();
		
		ResultSet rs=st.executeQuery("select * from food_details where area='"+area+"' and Status='SENT TO AGENT' ");

	

	if(request.getParameter("id1")!=null)
	{
%>		
		<h5><i><font color="red">Sorry! This request is accepted by another agent,<br>Try for another if you have</font></i></h5>
<%	
	}
%>

	<table class="table table-secondary table-responsive">
		<thead class="thead-dark ">
			<tr>
			
						<th>Food_Requested Date (YY-MM-DD) &nbsp &nbsp</th>
						<th>donar_name  &nbsp &nbsp</th> 
						<th>Food_Requested address &nbsp &nbsp</th>
						<th>donar_mobile &nbsp &nbsp</th>
						<th> pickuptime &nbsp &nbsp</th>
						<th>Orphange Area  &nbsp &nbsp</th>
						<th>Status_Of_Request &nbsp &nbsp</th>
						<th>Acceptance &nbsp &nbsp</th>
						<th>Rejection &nbsp &nbsp</th>
						<th>Accepted_Agent name &nbsp &nbsp</th>
						<th>Accepted_Agent mobile &nbsp &nbsp </th>
						<th>DELIVERED_STATUS &nbsp &nbsp</th>
						
			<th></th>			
			</tr>
		</thead>
			<%
			
			while(rs.next() )
			{
			
				String j=rs.getString(10) ;
				String a=rs.getString(1) ;
				String f=rs.getString(6) ;
				String h=rs.getString(8) ;
				String c=rs.getString(3) ;
				String g=rs.getString(7) ;
				String k=rs.getString(11) ;
				String l=rs.getString(12);
				String m=rs.getString(13);
				
				
				
			
			%>
					<tr>
					
					<td><%=j %></td>
					<td><%=a %></td>
					<td><%=f %></td>
					<td><%=h %></td>
					<td><%=c %></td>
					<td><%=g %></td>
					
					
					
					
					<td><font color="green"><b><%=k %></b></font></td>
					
					
					<td><a href="accept.jsp?dname=<%=a%>&area=<%=area%>&dt=<%=h%>&mob=<%=mob%>&aname=<%=aname%>"><button class="btn btn-success btn-block btn-sm">Accept</button></a></td>
					<td><a href="reject.jsp?id=<%=a %>"><button class="btn btn-danger btn-block btn-sm">reject</button></a></td>
					
					<td><%=l %></td>
					<td><%=m %></td>
					<td><a href="completed.jsp?id=<%=a%>&area=<%=g%>&dt=<%=j%>"><button class="btn btn-success btn-block btn-sm"> Delivered</button></a></td>
					
					
					</tr>
					
					

					
<%			

		}
%>
			

<!--  
<form name="LoginForm" onSubmit="return fu();" action="delivery_time.jsp?dname" method="post">

<table>
<tr>
<th style="font-family: 'Kaushan Script', cursive; font-size:30px; color:Yellow;">Delivery Time</th>
<td><input type="text" name="deltime" pattern="(([1]?[0-9])([AaPp][Mm]))|(([[0-9])([AaPp][Mm]))" title= "enter Am or Pm"><input type="submit" value="save" > </td>	
</tr>
</table>
<br><br>-->




<!-- 2nd table -->	<!-- 2nd table -->	<!-- 2nd table --> 	<!-- 2nd table -->
			

  



			
			

			
			<%
					
			Statement st1=con.createStatement();

			ResultSet rs1=st1.executeQuery("select * from food_details where area='"+area+"' and Status='ACCEPTED' and agent_name='"+aname+"' ");
%>

			
<%

			
			while(rs1.next() )
			{
			
				String j=rs1.getString(10) ;
				String a=rs1.getString(1) ;
				String f=rs1.getString(6) ;
				String h=rs1.getString(8) ;
				String c=rs1.getString(3) ;
				String g=rs1.getString(7) ;
				String k=rs1.getString(11) ;
				String l=rs1.getString(12);
				String m=rs1.getString(13);
				
			
			%>
				<tr>
					
					<td><%=j %></td>
					<td><%=a %></td>
					<td><%=f %></td>
					<td><%=h %></td>
					<td><%=c %></td>
					<td><%=g %></td>
					
					<td><font color="green"><b><%=k %></b></font></td>
					
					
					<td><a href="accept.jsp?dname=<%=a%>&area=<%=area%>&dt=<%=h%>&mob=<%=mob%>&aname=<%=aname%>"><button class="btn btn-success btn-block btn-sm">Accept</button></a></td>
					<td><a href="reject.jsp?id=<%=a %>"><button class="btn btn-danger btn-block btn-sm">reject</button></a></td>
					
					<td><%=l %></td>
					<td><%=m %></td>
					<td><a href="completed.jsp?id=<%=a%>&area=<%=g%>&dt=<%=j%>"><button class="btn btn-success btn-block btn-sm"> Delivered</button></a></td>
					
			</tr>
			<%} %>
		</table>
		
		</div>
		
	</div>
</div>









<!-- 3nd table -->	<!-- 3nd table -->	<!-- 3nd table --> 	<!-- 3nd table -->






<div class="container" id="orph" style="display:none;">
<h3 align="left" style="font-family: 'Kaushan Script', cursive; font-size:30px; color:Yellow;"><b>Orphan homes list</b></h3>

<div class="row">
	
	<div class="col-lg-12">
	<table class="table table-secondary ">
	<%
		
	Statement st2=con.createStatement();
	
	ResultSet rs2=st2.executeQuery("select * from  add_orphan ");
			
	/*		PreparedStatement ps=con.prepareStatement("select * from add_orphan");
			
			ResultSet rs2=ps.executeQuery();
	*/	
			
			%>
					<thead class="thead-dark ">
								<tr>
									<th>Orphan_home_name	&nbsp &nbsp </th>
									<th>Owner_name			&nbsp &nbsp </th>
									<th>No_of_Orphans		&nbsp &nbsp	 </th>
									<th>Owner_mobile		&nbsp &nbsp</th>
									<th>Area 				&nbsp &nbsp</th>
									<th>Address 			&nbsp &nbsp</th>
									
									<th></th>
			
								</tr>
			
			<%				
			while(rs2.next()){
				String a=rs2.getString(1) ;
				String b=rs2.getString(2) ;
				String d=rs2.getString(4) ;
				String e=rs2.getString(5) ;
				String f=rs2.getString(6) ;
				String g=rs2.getString(7) ;
			
			
			%>
			
			<tr>
				<td> <%=a %> </td>
				<td> <%=b %> </td>
				<td> <%=d %> </td>
				<td> <%=e %> </td>
				<td> <%=f %> </td>
				<td> <%=g %> </td>

			</tr>		
				
				<%
				}
				%>
					</table>
				
			</div>
	
</div>
</div>



<!-- 4rt table -->	<!-- 4rt table -->	<!-- 4rt table --> 	<!-- 4rt table -->






<div class="container" id="completed" style="display:none;">
<h3 align="left" style="font-family: 'Kaushan Script', cursive; font-size:30px; color:Yellow;"><b>COMPLETED REQUESTS</b></h3>

<div class="row">
	
	<div class="col-lg-12">
	
	<table class="table table-secondary table-responsive">
	<%			
	Statement st3=con.createStatement();
	
	ResultSet rs3=st3.executeQuery("select * from  food_details where area='"+area+"' and Status='DELIVERED' and agent_name='"+aname+"' ");
	

			
			%>
					<thead class="thead-dark ">
								<tr>
										<th>Food_Requested Date (YY-MM-DD) &nbsp &nbsp</th>
										<th>donar_name  &nbsp &nbsp</th> 
										<th>Food_Requested address &nbsp &nbsp</th>
										<th>donar_mobile &nbsp &nbsp</th>
										<th> pickuptime &nbsp &nbsp</th>
										<th>Orphange Area  &nbsp &nbsp</th>
										<th>Status_Of_Request &nbsp &nbsp</th>
										<th>Accepted_Agent name &nbsp &nbsp</th>
										<th>Accepted_Agent mobile &nbsp &nbsp </th>
										<th>Delivery_time &nbsp &nbsp</th>
										<th></th>
			
								</tr>
			
			<%				
			while(rs3.next()){
				String j=rs3.getString(10) ;
				String a=rs3.getString(1) ;
				String f=rs3.getString(6) ;
				String h=rs3.getString(8) ;
				String c=rs3.getString(3) ;
				String g=rs3.getString(7) ;			
				String k=rs3.getString(11);
				String l=rs3.getString(12);
				String m=rs3.getString(13);
				String n=rs3.getString(14);
	
			
			%>
			
			<tr>
					<td><%=j %></td>
					<td><%=a %></td>
					<td><%=f %></td>
					<td><%=h %></td>
					<td><%=c %></td>
					<td><%=g %></td>
					<td><font color="green"><b><%=k %></b></font></td>
					<td><%=l %></td>
					<td><%=m %></td>
					<td><%=n %></td>

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