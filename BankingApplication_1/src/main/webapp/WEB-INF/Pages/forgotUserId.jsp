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
<title>Forgot User Id</title>
</head>
<body>
<div class="container">
		<div class="jumbotron">
			<h1 class="display-4">Forgot User Id</h1>
		</div>

		<form action="forgotUserId.do" method="post">

		<div class="form-group col-md-5">
			<label for="accountNumber">Account Number</label> 
			<input type="text" name="accountNumber" class="form-control"placeholder="Enter Account Number">
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