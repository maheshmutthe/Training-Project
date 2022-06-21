<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Internet Banking</title>
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
					<button  type="button" class="btn btn-danger">Credit</button>
					</a>
					<a href="Debit.view">
					<button  type="button" class="btn btn-primary">Debit</button>
					</a>
					<a href="addBene.view">
					<button  type="button" class="btn btn-success">Transfer</button>
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
					<button  type="button" class="btn btn-danger">Credit</button>
					</a>
					<a href="Debit.view">
					<button  type="button" class="btn btn-primary">Debit</button>
					</a>
					<a href="addBene.view">
					<button  type="button" class="btn btn-success">Transfer</button>
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
					<button  type="button" class="btn btn-danger">Credit</button>
					</a>
					<a href="Debit.view">
					<button  type="button" class="btn btn-primary">Debit</button>
					</a>
					<a href="addBene.view">
					<button  type="button" class="btn btn-success">Transfer</button>
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
		<div class="jumbotron">
			<h1 class="display-4">Morningstar Bank</h1>
			<p class="lead">Here you can apply for internet banking.</p>
		</div>
		<div class="card">
		
				<h2 style="color:red">Registration Form for Online Banking</h2>
		<form action="internetbankingRegistration.do" method="post">
			
			<div class="form-group">
                       Enter Login Password:<input type="text" name="loginPassword">      
             </div>
		             <div class="form-group">
		                   Enter Transaction Password:<input type="text" name="transactionPassword">          
		             </div>
		           
		             <div class="form-group">
		               Secret Question:
		                    <select name="secretQuestion" class="form-select form-select-lg mb-3"
						aria-label=".form-select-lg example">
						<option  selected>secret question</option>
						<option value="What is Your Favourite pet?">What is Your Favourite pet?</option>
						<option value="What is your Favourite place">What is your Favourite place?</option>
						<option value="What is your Favourite food">What is your Favourite food?</option>
					</select>          
		             </div>
		             <div class="form-group">
		                     Answer:<input type="text" name="secretAnswer"> <br>         
		             </div>
		             <div class="form-group">
		                      Transaction Email :<input type="text" name="transactionEmail"><br>        
		             </div>
		             <div class="form-group">
		                        Account No:<input type="text" name="accountNo"><br>      
		             </div>
		            
					
					<div>
						<button type="submit" class="btn btn-primary">Register</button>
					</div>
		</form>
	</div>
	</div>
</body>
</html>

