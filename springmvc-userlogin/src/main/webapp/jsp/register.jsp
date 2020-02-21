<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">	
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	<title>Registracija</title>
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
	}
	
	.social_icon{
	position: absolute;
	right: 20px;
	top: -45px;
	}
	
	.input-group-prepend span{
	width: 50px;
	background-color: #FFC312;
	color: black;
	border:0 !important;
	}
	
	input:focus{
	outline: 0 0 0 0  !important;
	box-shadow: 0 0 0 0 !important;
	
	}
	
	.remember{
	color: white;
	}
	
	.remember input
	{
	width: 20px;
	height: 20px;
	margin-left: 15px;
	margin-right: 5px;
	}
	
	.login_btn{
	color: black;
	background-color: #FFC312;
	width: 100px;
	}
	
	.login_btn:hover{
	color: black;
	background-color: white;
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
					<h3>Forma za registraciju</h3>
					<div class="d-flex justify-content-end social_icon">
						<span><i class="fab fa-facebook-square"></i></span>
						<span><i class="fab fa-google-plus-square"></i></span>
						<span><i class="fab fa-twitter-square"></i></span>
					</div>
				</div>
				<div class="card-body">
				<form:form id="regForm" modelAttribute="user" action="registerProcess" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<form:input path="username" name="username" id="username" class="form-control" placeholder="username"/>
					</div>
					<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
									
						    <form:password path="password" name="password" id="password" class="form-control" placeholder="password"/> 
					</div>
					<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
						<form:input path="ime" name="ime" id="ime" class="form-control" placeholder="ime"/>
					</div>
					<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
						    <form:input path="prezime" name="prezime" id="prezime" class="form-control" placeholder="prezime"/>
					</div>
					<div class="form-group">
						<form:button id="register" name="register">Registruj se</form:button>
					</div>
				</form:form>
				<div>
					<div class="d-flex justify-content-center">
						<a href="home.jsp">Povratak na pocetnu stranu</a>
					</div>
				</div>
				</div>
		</div>
	</div>
	</div>
</body>
</html>