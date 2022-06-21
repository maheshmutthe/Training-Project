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
<title>Registration Form</title>
</head>
<body>
	
		
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
					class="d-block w-100 " alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<button class="btn btn-danger">Credit</button>
					<button class="btn btn-primary">Debit</button>
					<button class="btn btn-success">Transfer</button>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1200x200/?HD Debit Card images,HD Money images"
					class="d-block w-100 " alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<button class="btn btn-danger">Credit</button>
					<button class="btn btn-primary">Debit</button>
					<button class="btn btn-success">Transfer</button>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1200x200/?HD online Bank application images,HD Bank images"
					class="d-block w-100 " alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<button class="btn btn-danger">Credit</button>
					<button class="btn btn-primary">Debit</button>
					<button class="btn btn-success">Transfer</button>
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
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-2">

		<div class="container-fluid">
			<h1 class="navbar-brand" href="#">Bank of Morningstar</h1>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>
			</div>



		</div>
		</div>
	</nav>
		
		<div class="container">
		<h2>Enter Account Holder Details</h2>
		<form action="userRegistration.do" method="post">
			<div class="form-row">
				<div class="form-group col-md-1">
					<label for="Title">Title</label> <select name="title"
						class="form-control">
						<option selected>Title</option>
						<option value="Mr">Mr</option>
						<option value="Mrs">Mrs</option>
						<option value="Ms">Ms</option>
					</select>
				</div>
				<div class="form-group col-md-5">
					<label for="firstname">First Name</label> <input type="text"
						name="firstName" class="form-control"
						placeholder="Enter First Name">
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="lastname">Last Name</label> <input type="text"
					name="lastName" class="form-control" placeholder="Enter Last Name">
			</div>
			<div class="form-group col-md-6">
				<label for="fathername">Father Name</label> <input type="text"
					name="fathersName" class="form-control"
					placeholder="Enter Father Name">
			</div>
			<div class="form-group col-md-6">
				<label for="mobilenumber">Mobile Number</label> <input type="text"
					name="mobileNumber" class="form-control"
					placeholder="Enter mobile number">
			</div>
			<div class="form-group col-md-6">
				<label for="emailId">Email Id</label> <input type="text"
					name="emailId" class="form-control" placeholder="Enter Email id">
			</div>
			<div class="form-group col-md-6">
				<label for="aadhar">Aadhar Card</label> <input type="text"
					name="aadharCard" class="form-control"
					placeholder="Enter Aadhar Number">
			</div>
			<div class="form-group col-md-6">
				<label for="dob">Date of Birth</label> <input type="date"
					name="dateOfBirth" class="form-control">
			</div>
			<div class="form-group col-md-6">
				<label for="address">Address</label> <input type="text"
					name="address" class="form-control" placeholder="Enter Address">
			</div>
			<div class="form-row">
				<div class="form-group col-md-2">
					<label for="city">City</label> <select name="city"
						class="form-control">
						<option selected>Choose</option>
						<option value="mumbai">Mumbai</option>
						<option value="pune">Pune</option>
						<option value="nagpur">Nagpur</option>
						<option value="hyderabad">Hyderabad</option>
						<option value="bangalore">Bangalore</option>
						<option value="aurangabad">Aurangabad</option>
						<option value="ahemedabad">Ahemedabad</option>
						<option value="nashik">Nashik</option>
						<option value="chandigarh">Chandigarh</option>
					</select>
				</div>
				<div class="form-group col-md-2">
					<label for="state">State</label> <select name="state"
						class="form-control">
						<option selected>Choose</option>
						<option value="mumbai">Maharashtra</option>
						<option value="gujarat">Gujarat</option>
						<option value="punjab">Punjab</option>
						<option value="karanataka">Karanataka</option>
						<option value="tamil">Tamil Nadu</option>
						<option value="Andhra">Andhra Pradesh</option>
						<option value="punjab">Punjab</option>

					</select>
				</div>
				<div class="form-group col-md-2">
					<label for="pincode">Pincode</label> <input type="text"
						name="pinCode" class="form-control" placeholder="Enter Pincode">
				</div>
			</div>
			<div class="form-group col-md-6">
				<label for="accType">Account Type</label> <select name="accountType"
					class="form-control">
					<option selected>Select account</option>
					<option value="Current">Current</option>
					<option value="Salary">Salary</option>
					<option value="Savings">Savings</option>
				</select>
			</div>

			<div class="form-group col-md-6">
				<label for="occType">Occupation Type</label> <select
					name="occupationType" class="form-control">
					<option selected>Occupation Type</option>
					<option value="Business">Business</option>
					<option value="Employee">Employee</option>
					<option value="Farmer">Farmer</option>
					<option value="Student">Student</option>
					<option value="Unemployed">Unemployed</option>
					<option value="HomeMaker">Home Maker</option>
				</select>
			</div>
			<div class="form-group col-md-6">
				<label for="annualInc">Annual income</label> <input type="text"
					name="grossAnnualIncome" class="form-control"
					placeholder="Enter Income">
			</div>

			<div class="form-group col-md-6">
				<label for="netBanking">Net Banking</label> <input type="text"
					name="netBanking" class="form-control" placeholder="Enter Y or N">
			</div>
			<button type="submit" class="btn btn-primary">Register</button>
		</form>

	</div>
</body>
</html>

