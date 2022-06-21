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
<title>Insert title here</title>
</head>
<body>
	<div class="container">
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

		<form action="userRegistration.do" method="post">
			<select name="title" class="form-select form-select-lg mb-3"
				aria-label=".form-select-lg example">
				<option selected>Title</option>
				<option value="Mr">Mr</option>
				<option value="Mrs">Mrs</option>
				<option value="Ms">Ms</option>
			</select> First Name:<input type="text" name="firstName"> <br>
			Last Name:<input type="text" name="lastName"> <br>
			Fathers Name:<input type="text" name="fathersName"> <br>
			Mobile Number :<input type="text" name="mobileNumber"><br>
			Email Id :<input type="text" name="emailId"> <br> 
			Aadhar Card Number :<input type="text" name="aadharCard"> <br>
			Date Of Birth :<input type="text" name="dateOfBirth"> <br>
			Address :<input type="text" name="address"> <br> 
			City :<input type="text" name="city"> <br> 
			State :<input type="text" name="state"> <br> 
			Pin Code :<input type="text" name="pinCode"> <br> 
			<select name="accountType" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				<option selected>Select account</option>
				<option value="Current">Current</option>
				<option value="Salary">Salary</option>
				<option value="Savings">Savings</option>
			</select> <br> 
			<select name="occupationType" class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
				<option selected>Occupation Type</option>
				<option value="Business">Business</option>
				<option value="Employee">Employee</option>
				<option value="Farmer">Farmer</option>
				<option value="Student">Student</option>
				<option value="Unemployed">Unemployed</option>
				<option value="HomeMaker">Home Maker</option>
			</select><br> 
			Gross Annual Income :<input type="text" name="grossAnnualIncome"><br> 
			Net Banking :<input type="text" name="netBanking"><br>
			<div>
				<button type="submit" class="btn btn-primary">Register</button>
			</div>
		</form>
	</div>
</body>
</html>

