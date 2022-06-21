<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>LogIn</title>
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

		<div class="container-fluid">
			<h1 class="navbar-brand" href="#">Bank of Morningstar</h1>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
			</div>
		</div>
	</nav>


	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://source.unsplash.com/1200x200/?HD Bank images,HD Credit Card images"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<a href="Credit.view">
						<button type="button" class="btn btn-danger">Credit</button>
					</a> <a href="Debit.view">
						<button type="button" class="btn btn-primary">Debit</button>
					</a> <a href="addBene.view">
						<button type="button" class="btn btn-success">Transfer</button>
					</a>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1200x200/?HD Debit Card images,HD Money images"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<a href="Credit.view">
						<button type="button" class="btn btn-danger">Credit</button>
					</a> <a href="Debit.view">
						<button type="button" class="btn btn-primary">Debit</button>
					</a> <a href="addBene.view">
						<button type="button" class="btn btn-success">Transfer</button>
					</a>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1200x200/?HD online Bank application images,HD Bank images"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<a href="Credit.view">
						<button type="button" class="btn btn-danger">Credit</button>
					</a> <a href="Debit.view">
						<button type="button" class="btn btn-primary">Debit</button>
					</a> <a href="addBene.view">
						<button type="button" class="btn btn-success">Transfer</button>
					</a>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container">
		<div class="row justify-content-center align-items-center"
			style="height: 100vh">
			<div class="col-6">
				<div class="card">
					<div class="card-body">
						<form action="login" method="post">
							<h3>Login Page</h3>
							<div class="form-group">
								Enter Email:<input type="text" class="form-control" name="email">
							</div>
							<div class="form-group">
								Enter Password <input type="password" class="form-control"
									name="password">
							</div>
							<div class="col-md-6 offset-md-4 mt-3">
								<button type="submit" id="sendlogin" class="btn btn-primary text-center">login</button>
							</div>
						</form>
						</br>
						<div class="col-md-5 offset-md-3 text-center">
							<a href="addUser.view">First Time User? Register</a>
						</div>
						</br>
						<div class="col-md-5 offset-md-3 text-center">
							<a href="">Forget User ID?</a>
						</div>
						</br>
						<div class="col-md-5 offset-md-3 text-center">
							<a href="setpassword.view">Forget Password?</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div>
		<footer class="py-1 my-2 bg-dark navbar-dark">

			<p class="text-center text-muted">&copy; Bank of Morningstar Pvt
				Ltd 2022. All Rights Reserved</p>
		</footer>
	</div>

</body>
</html>