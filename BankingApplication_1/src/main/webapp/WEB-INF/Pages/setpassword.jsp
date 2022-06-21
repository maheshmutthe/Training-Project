

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body >
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

<center>
<h1>Set New Password </h1>
</center>
<br>
<br>

<div class="container mb-4">
<form action="setpassword.do" method="post">
  <div class="form-group mb-3">
    <label for="exampleInputEmail1">Login Password</label>
    <input type="password" class="form-control" id="exampleInputEmail1" name="loginPassword" aria-describedby="emailHelp" placeholder="Login password" required>
  </div>
  <div class="form-group mb-3">
    <label for="exampleInputPassword1">Confirm Login Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm Login Password" required>
  </div>
  <div class="form-group mb-3">
    <label for="exampleInputPassword1">Transaction Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="transactionPassword" placeholder="Transaction Password" required>
  </div>
  <div class="form-group mb-3">
    <label for="exampleInputPassword1">Confirm Transaction Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Confirm TransactionPassword" required>
  </div>
  
  <div class="text-center">
  <a href="">
  <button type="submit" class="btn btn-primary">Submit</button>
  </div>
  </a>
</form>
</div>

<div>
			<footer class="py-1 my-2 bg-dark navbar-dark">

				<p class="text-center text-muted">&copy; Bank of Morningstar Pvt
					Ltd 2022. All Rights Reserved</p>
			</footer>
		</div>

</body>
</html>
				
				




