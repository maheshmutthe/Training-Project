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
<title>Add Debit</title>
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

		<form action="DebitDetails.do" method="post">
			Account Number:<input type="text" name="accountNumber"> <br>
			Amount :<input type="text" name="balance"> <br>
				<button type="submit" class="btn btn-primary">Debit</button>
			</div>
		</form>
	</div>
</body>
</html>

