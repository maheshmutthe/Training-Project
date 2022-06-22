<%@ page isELIgnored="false"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Home</title>
<link rel="stylesheet" href="css/style.css">
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
					<!-- <a href="Credit.view">
					<button  type="button" class="btn btn-danger">Credit</button>
					</a>
					<a href="Debit.view">
					<button  type="button" class="btn btn-primary">Debit</button>
					</a>
					<a href="addBene.view">
					<button  type="button" class="btn btn-success">Transfer</button>
					</a> -->
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1200x200/?HD Debit Card images,HD Money images"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<!-- <a href="Credit.view">
					<button  type="button" class="btn btn-danger">Credit</button>
					</a>
					<a href="Debit.view">
					<button  type="button" class="btn btn-primary">Debit</button>
					</a>
					<a href="addBene.view">
					<button  type="button" class="btn btn-success">Transfer</button>
					</a> -->
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1200x200/?HD online Bank application images,HD Bank images"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<!-- <a href="Credit.view">
					<button  type="button" class="btn btn-danger">Credit</button>
					</a>
					<a href="Debit.view">
					<button  type="button" class="btn btn-primary">Debit</button>
					</a>
					<a href="addBene.view">
					<button  type="button" class="btn btn-success">Transfer</button>
					</a> -->
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
	<div class="main">



		<marquee width="100%" direction="left">
			<a href="" class="btn btn-secondary" role="button">Open Bank
				Account in just few minutes </a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; <a href="addUser.view" class="btn btn-success" role="button">Get
				Credit & Debit Cards instantly </a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; <a href="" class="btn btn-danger" role="button"> Get
				Housing Loans at very low interest</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; <a href="" class="btn btn-info" role="button">Open zero
				deposit bank Account in just few minutes</a>&nbsp; &nbsp; &nbsp; &nbsp;
			&nbsp; &nbsp; <a href="" class="btn btn-dark" role="button">Just
				download Bank of Morningstar App and get many services in just on
				few clicks </a>&nbsp; &nbsp; &nbsp;

		</marquee>

		<c:if test="${msg=='added' }">
			<div id=addmsg class="bg-success text-white container">
				<h2 class="text-center">Account is created Successfully.</h2>
			</div>
		</c:if>

		<%-- <c:if test="${user!=null }">
			<div id=addmsg class="bg-success text-white container">
				<h2 class="text-center">${user}</h2>
			</div>
		</c:if> --%>

		<script type="text/javascript">
			setTimeout("doSomething()", 10000);
			function doSomething() {
				document.getElementById('addmsg').innerHTML = '';
			}
		</script>
		<div class="text-center pt-1 mb-3 pb-1">
			<a href="getLoginPage">
				<button
					class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
					type="button">Log In</button>
			</a>

		</div>
		<div class="text-center pt-1 mb-3 pb-1">
			<a href="ShowPageForInternetBanking">
				<button
					class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
					type="button">New User ? Register Now</button>
			</a>
		</div>
		<div class="text-center pt-1 mb-3 pb-1">
			<a href="addUser.view">
				<button
					class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"
					type="button">Create New Bank Account Online</button>
			</a>


			<!-- <a href="addUser.view">Account create</a> -->

		</div>

		<div>
			<footer class="py-1 my-2 bg-dark navbar-dark">

				<p class="text-center text-muted">&copy; Bank of Morningstar Pvt
					Ltd 2022. All Rights Reserved</p>
			</footer>
		</div>


		<!-- Optional JavaScript; choose one of the two! -->

		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>

		<!-- Option 2: Separate Popper and Bootstrap JS -->
		<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
</body>

</html>