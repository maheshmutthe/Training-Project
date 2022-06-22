<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
</head>
<body>
<div class="container">
		<div class="jumbotron">
			<h1 class="display-4">Forgot Password</h1>
		</div>

		<form action="forgotPassword.do" method="post">

		<div class="form-group col-md-5">
			<label for="internetBankingId">Internet Banking ID</label> 
			<input type="text" name="internetBankingId" class="form-control"placeholder="Enter Internet Banking Id">
		</div>

		<div class="form-group col-md-5">
			<label for="secretQuestion">Secret Question</label> 
			<input type="text" name="secretQuestion" class="form-control"placeholder="Enter Secret Question">
		</div>
		
		<div class="form-group col-md-5">
			<label for="secretAnswer">Secret Answer</label> 
			<input type="text" name="secretAnswer" class="form-control"placeholder="Enter Secret Answer">
		</div>

		<div class="form-group col-md-5">
			 
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>

		</form>
		
		</div>

</body>
</html>