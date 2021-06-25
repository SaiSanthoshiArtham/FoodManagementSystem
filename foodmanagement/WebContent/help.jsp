<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME PAGE</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/icomoon.css">
	<!-- Themify Icons-->
	<link rel="stylesheet" href="css/themify-icons.css">
  	<link rel="stylesheet" href="css/animate.css">
  	  <link href="https://fonts.googleapis.com/css?family=Fredericka+the+Great&display=swap" rel="stylesheet">	   
  	<link href="https://fonts.googleapis.com/css?family=Courgette&display=swap" rel="stylesheet">
  	
  <link rel="stylesheet" type="text/css" href="css/glyphicon.css">
  	
  	  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  	
  	
  	
  	<img src="/open-iconic/svg/phone.svg">
  	
	   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Notable&display=swap" rel="stylesheet">
</head>
<body>

<style>
body
{
	background-color:silver;
	background-image:linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url("images/img_bg_1.jpg");
	background-repeat : no-repeat;
	background-size:1370px 950px;
	
}
a
{
	color:white;
	text-size:10px;
}
a:hover
{
	color:dark;
		text-decoration:none;
	
}
i{
	font-family: 'Kaushan Script', cursive;
	font-size:30px; 
	color:white;
}

h1{
  
                 font-family: 'Fredericka the Great', cursive;         
              
 }
 sr-only{
          font-family: 'Courgette', cursive;
 
      }

</style>
  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	<div class="container">
			
		<div >
				<h1 class="navbar-brand ">FOOD WASTE MANAGEMENT</h1>
				<!-- below code is for small screen device..which hide items into a navbar button when we minimize screen -->
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			    <span class="navbar-toggler-icon"></span>
			  </button>	
		</div>		
		<div >
			 
			<div class=" collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
							
				
			</ul>	
			</div>
		</div>	
	</div>
</nav>


<div class="container" style="margin-top:100px;" >
<div class="row">
	<div class="col-md-6">
					<div class="col-md-6 animate-box">
					<form action="#">
											<h3 style="font-family: 'Kaushan Script', cursive; font-size:30px; color:Yellow;">Get In Touch</h3><br>
						
						<div class="row form-group">
							<div class="col-md-12">	
							
								<label  align="center" class="sr-only" for="name">Name</label>
								<input type="text" id="name" class="form-control" placeholder="Your firstname">
							</div>
							
						</div>


						<div class="row form-group">
							<div class="col-md-12">
								<label class="sr-only" for="email">Email</label>
								
								<input type="text" id="email" class="form-control" placeholder="Your email address">
							
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
							
								<label class="sr-only" for="message">Message</label>
								<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Complaint/suggestions"></textarea>
							</div>
						</div>
						<div class=" row form-group">
							<div class="col-md-12">
								<input type="submit" value="Send Message" class="btn btn-primary">
							</div>

						</div>

					</form>		
				</div>
		</div>
		<div class="col-md-6">
						<table>
												<h3 style="font-family: 'Kaushan Script', cursive; font-size:30px; color:Yellow;">Contact Information</h3><br>
						
								  
							 <tr><td> <a href="tel://7075404805"><i class="fa fa-phone" aria-hidden="true"></i></a></td>
							 			<td><i><a href="tel://7382554009">7382554009</a></i></td></tr>
							 <tr><td> <a href=""><i class="fa fa-map-marker" aria-hidden="true"></i></a></td>
							 			<td><i><a href="">address</a></i></td></tr>
							 <tr><td> <a href="mailto:thamishettylaxmi@gmail.com"> <i class="fa fa-envelope" aria-hidden="true"></i></a></td>
							 			<td><i><a href="mailto:tmanideep235@gmail.com">thamishettylaxmi@gmail.com</a></i></td></tr>

							  
							  
						</table>
	</div>


				
			</div>
			</div>

			
</body>
</html>