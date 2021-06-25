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
	<div class="container">

		<div>
			<span style="font-family: 'Shrikhand', cursive" class="navbar-brand ">FOOD
				WASTAGE MANAGEMENT</span>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#go">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>


		<div class=" collapse navbar-collapse " id="go">
			<div class="ml-auto">
				<ul class="navbar-nav">

					<a href="donar_home.jsp" class=" nav-link "><li
						class="nav-item ">HOME</li></a>
					<a href="donar_status.jsp" class=" nav-link"><li
						class="nav-item " style="color: orange;">STATUS</li></a>
					<a href="help.jsp" class=" nav-link" target="_blank"><li
						class="nav-item ">HELP</li></a>
					<a href="about.jsp" class=" nav-link"><li class="nav-item ">ABOUT</li></a>
				</ul>
			</div>
		</div>
	</div>
	<a href="donar_login.jsp">
		<button class="btn btn-info btn-sm">LOGOUT</button>
	</a> </nav>

	<%
	String uname = session.getAttribute("uname").toString();

	Class.forName("com.mysql.jdbc.Driver");

	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");

	Statement st = con.createStatement();

	ResultSet rs = st.executeQuery("select * from food_details where username='" + uname + "' ");
	%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<div class="container " style="margin-top: 44px;">
		<div class="row">
			<div class="col-lg-5 animated fadeInUp fast"
				style="margin-top: 126px;">
				
				<h1
					style="font-family: 'Kaushan Script', cursive; font-size: 85px; color: white;">Food Wastage Management System!</h1>
			</div>
			<div class="col-lg-3"></div>
			<div class=" col-lg-4 animated fadeInRight faster">
				<form action="view_status.jsp" method="post">

					<table class="table "
						style="background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)); color: white;">

						<thead class="thead-dark ">
							<tr>
								<th>Food_item</th>
								<th>Date_of_request</th>
								<th>Status</th>

								<th></th>

							</tr>
						</thead>

						<%
						while (rs.next()) {

							String e = rs.getString(5);
							/*			String f=rs.getString(6) ;
								String g=rs.getString(7) ;
								String h=rs.getString(8) ;
								String i=rs.getString(9) ;
							*/ String j = rs.getString(10);
							String k = rs.getString(11);
						%>
						<tr>

							<td><%=e%></td>
							<td><%=j%></td>
							<td><font color="orange"><b><%=k%></b></font></td>
							<td colspan="2"><input type="submit" value="VIEW"
								class="btn btn-block btn-success"></td>

						</tr>

						<%
						}
						%>
					</table>
				</form>

			</div>
		</div>
	</div>
</body>
</html>
