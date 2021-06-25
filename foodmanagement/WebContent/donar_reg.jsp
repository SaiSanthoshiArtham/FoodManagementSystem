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

<script language="JavaScript">
function fu()
{


var d = document.LoginForm.pwd.value;

		if(d.length>10) 
		{
		alert("Password should have minimum 5 and Maximum 10 Characters/numbers");
		            document.LoginForm.pwd.focus();
		            document.LoginForm.pwd.value="";
		return false;
		}
		if(d.length<5) 
		{
		alert("Password should have minimum 5 and Maximum 10 Characters/numbers");
		            document.LoginForm.pwd.focus();
		            document.LoginForm.pwd.value="";
		return false;
		}
}


</script>

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
								<a href="home.html" class=" nav-link"> <li class="nav-item">HOME</li></a>
				<div class="dropdown ">
						<a class=" nav-link"><li class="nav-item dropdown-toggle "  data-toggle="dropdown" data-target="#down1"><span class="caret">LOGIN</span></li></a>
								<div class="dropdown-menu" id="down1">
									<a class="dropdown-item " href="admin_login.jsp">ADMIN</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="donar_login.jsp">DONAR</a>
									<div class="dropdown-divider"></div>							
									<a class="dropdown-item" href="agent_login.jsp">AGENT</a>
									
								</div>
				</div>				
				<div class="dropdown ">
						<a class=" nav-link"><li class="nav-item dropdown-toggle" style="color:orange;" data-toggle="dropdown" data-target="#down2"><span class="caret">REGISTER</span></li></a>
								<div class="dropdown-menu" id="down2">		
											<a class="dropdown-item" href="donar_reg.jsp">DONAR</a>
											<div class="dropdown-divider"></div>							
											<a class="dropdown-item" href="agent_reg.jsp">AGENT</a>
										</div>						
				</div>		
				<a href="help.jsp" class=" nav-link" target="_blank"><li class="nav-item ">HELP</li></a>
				<a href="about.html" class=" nav-link"><li class="nav-item ">ABOUT</li></a>
				</ul>
			</div>
		</div>	
	</div>
</nav>
<div class="container  " style="margin-top:44px;">
	<div class="row">
		<div class="col-lg-5 animated fadeInUp fast" style="margin-top:256px;">
					
					<h1 style="font-family: 'Kaushan Script', cursive; font-size:85px; color:white;">Food Wastage Management System!</h1>
		</div>
		<div class="col-lg-3">
		
		</div>
		<div class=" col-lg-4 animated fadeInRight faster" style="margin-top:50px;">
				<form name="LoginForm" onSubmit="return fu();" action="donar_reg_action.jsp" method="post">
					<table class="table table-dark "><br><br>
						<tr><th colspan="2"><h3><b><center>DONAR REGISTRATION</center></b></h3></th></tr>
						<tr>	
								<th colspan="2">
																<%
																	if(request.getParameter("id1")!=null)
																	{
																%>		
																		<h5 ><center><font color="red"><i><b>User Name Already exist..!!</b></i></font></center></h5>
																<%	
																	}
																%>
																	
							</th>
						</tr>		
						<tr >
								<td>First Name</td>
								<td><input class="table-dark" type="text" name="fn" required><br></td>
						</tr>		
							<tr>	
								<td>User Name</td>
								<td><input class="table-dark" type="text" name="un" required></td>
						</tr>
						<tr>
								<td>Password</td>
								<td><input class="table-dark" type="password" name="pwd" required><br></td>
						</tr>		
						<tr>	
								<td>gender</td>
								<td><input type="radio" name="gen" value="male" >male
								<input type="radio" name="gen" value="female" >female
								<input type="radio" name="gen" value="others" >others</td>
						</tr>
						<tr>	
								<td>Mobile number</td>
								<td><input class="table-dark" type="number"  name="num" required></td>
						</tr>
						<tr>	
								<td>Address</td>
								<td><textarea class="table-dark" type="text" name="add" required placeholder=" Address Should Include Area"></textarea></td>
						</tr>
						
						
					 		<tr>
								<td colspan="2"><input type="submit" value="SignUp" class="btn btn-block btn-success">
								<a href="donar_login.jsp" class="nav-link"  style="color:white; text-decoration:underline;"><i>already have an account ?</i></a></td>
							</tr>
				</table>
			</form>
		</div>
	</div>
</div>

</body>
</html>