<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<style>
	
	@import url('https://fonts.googleapis.com/css?family=Numans');
	
	html,body{
	background-image: url('http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg');
	background-size: cover;
	background-repeat: no-repeat;
	height: 100%;
	font-family: 'Numans', sans-serif;
	}
	
	.container{
	height: 100%;
	align-content: center;
	}
	
	.card{
	height: 370px;
	margin-top: auto;
	margin-bottom: auto;
	width: 400px;
	background-color: rgba(0,0,0,0.5) !important;
	}
	
	.social_icon span{
	font-size: 60px;
	margin-left: 10px;
	color: #FFC312;
	}
	
	.social_icon span:hover{
	color: white;
	cursor: pointer;
	}
	
	.card-header h3{
	color: white;	
  	text-align: center;
	}
	
	.social_icon{
	position: absolute;
	right: 20px;
	top: -45px;
	}
	
	.links{
	color: white;
	}
	
	.links a{
	margin-left: 4px;
	}
	</style>
</head>
<body>

	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card-header">
					<h3>Dobrodosli na pocetnu stranu!</h3>
					<div class="d-flex justify-content-end social_icon">
						<span><i class="fab fa-facebook-square"></i></span>
						<span><i class="fab fa-google-plus-square"></i></span>
						<span><i class="fab fa-twitter-square"></i></span>
					</div>
				</div>
				<div class="card-footer">
						<div class="d-flex justify-content-center links">
							<a href="register">Registracija</a>
						</div>
					<div>
						<div class="d-flex justify-content-center">
							<a href="login">Login</a>
						</div>
					</div>

				</div>
				</div>
			</div>
	</div>
	
</body>
</html>