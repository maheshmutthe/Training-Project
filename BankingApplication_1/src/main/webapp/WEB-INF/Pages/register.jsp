<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" href="css/style.css">
<title>Register for online Banking</title>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">

        <div class="container-fluid">
            <h1 class="navbar-brand" href="#">Bank of Morningstar </h1>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    
               
            </div>
        </div>
    </nav>

<form action="register.do" method="post">

	
	
	<h1 align="center">Register for Internet Banking</h1>
		<hr  class="text-center">
		<table align="center" cellpadding="6" border="10" cellsapcing="0">
		<tr> 
			<td>Account No:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="text" required placeholder="Enter Account no" name="accountmaster">
			</td>
			
		<tr>
			<td>Login Password:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="password" required placeholder="Enter Login Password" name="password">
			</td>
		</tr>
		
		<tr>
			<td>Transcation Password:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="password" required placeholder="Enter Transcation Password" name="password">
			</td>
		</tr>
		
		<tr>
			<td>Secret Question:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="password" required placeholder="Enter Password" name="password">
			</td>
		</tr>
		
		
		<tr>
			<td>Secret Answer:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="password" required placeholder="Enter Password" name="password">
			</td>
		</tr>
		
		<tr>
			<td>Transcation Email:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="password" required placeholder="Enter Email" name="email">
			</td>
		</tr>
	
		<tr>
		<td align="center">
		
   <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Register!</button>

		</td>
		</tr>
		<%-- <h4 align="center"><font color="red">${error}</font></h4> --%>
		
	</table>
	
	<div>
        <footer class="py-1 my-5 bg-dark navbar-dark">
           
            <p class="text-center text-muted">&copy; Bank of Morningstar Pvt Ltd 2022. All Rights Reserved</p>
        </footer>
    </div>
</body>
</html>