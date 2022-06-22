<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<title>Dashboard</title>
<link rel="stylesheet" href="css/style.css">
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
					<!-- <button class="btn btn-danger">Credit</button>
					<button class="btn btn-primary">Debit</button>
					<button class="btn btn-success">Transfer</button> -->
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1200x200/?HD Debit Card images,HD Money images"
					class="d-block w-100 " alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<!-- <button class="btn btn-danger">Credit</button>
					<button class="btn btn-primary">Debit</button>
					<button class="btn btn-success">Transfer</button> -->
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1200x200/?HD online Bank application images,HD Bank images"
					class="d-block w-100 " alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h1>Welcome to Bank of Morningstar</h1>
					<p>Your Needs...Our Services</p>
					<!-- <button class="btn btn-danger">Credit</button>
					<button class="btn btn-primary">Debit</button>
					<button class="btn btn-success">Transfer</button> -->
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

			<!-- Example single danger button -->
			<div class="btn-group ">
				<button type="button" data-bs-toggle="dropdown"
					class="btn btn-primary dropdown-toggle  aria-haspopup="
					true" aria-expanded="false"">Profile</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="showuserdetails.view">View
						Profile</a> <a class="dropdown-item" href="#">Edit Profile</a> <a
						class="dropdown-item" href="setpassword.view">Change Password</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="logout.view">Log Out</a>
				</div>
			</div>

		</div>
		</div>
	</nav>


	</nav>

	<div class="main">

		<!-- <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark"
			style="width: 280px;">
			<a href="/"
				class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
				<svg class="bi pe-none me-2" width="40" height="30">
					<use xlink:href="#bootstrap" /></svg> <span class="fs-4">Dashboard</span>
			</a> -->
		<hr>
		<div class="row mt-5 mb-5">
			<div class="col-md-2">
				<div class="list-group bg-dark">
					<a href='<c:url value='showwelcomedetail.view'></c:url>'
						class="list-group-item list-group-item-action active">Dashboard</a>
					<a href='<c:url value='showaccountdetail.view'></c:url>'
						class="list-group-item list-group-item-action">Account Details</a>
						<a href='<c:url value='funtransfer.view'></c:url>'
						class="list-group-item list-group-item-action">Fund
						Transfer</a>
						<a href='<c:url value='helpdesk.view'></c:url>'
						class="list-group-item list-group-item-action">Help
						Desk</a>
				</div>
			</div>

			<div class="col-md-10">
				<c:if test="${page=='home'}">
					<h2>Welcome, ${k.title} ${k.firstName} ${k.lastName}</h2>
				</c:if>
				
				<c:if test="${page=='fund'}">
					<div class="container text-center">
	<a href="Credit.view">
		<button type="button" class="btn btn-danger">Credit</button>
	</a>
	<a href="Debit.view">
		<button type="button" class="btn btn-primary">Debit</button>
	</a>
	<a href="IMPS.view">
		<button type="button" class="btn btn-success">Transfer</button>
	</a>
</div>
					
				</c:if>


				<c:if test="${page=='account'}">
				<h2 class="text-center">Account Details</h2>
					<tr>
						<td><b>AccountType:</b></td>
						<td><b>${k.accountType}</b></td>
					</tr><br>
					<tr>
						<td><b>OccupationType:</b></td>
						<td><b>${k.occupationType}</b></td>
					</tr><br>
					<tr>
						<td><b>GrossAnnualIncome:</b></td>
						<td><b>${k.grossAnnualIncome}</b></td>
					</tr><br>
					<tr>
						<td><b>Current Balance:</b></td>
						<td><b>${ad.balance}</b></td>
					</tr><br>
				</c:if>
				
				<c:if test="${page=='help'}">
					<h2>HelpDesk</h2>
					

		<p>Bank of Morningstar (BOM) has been introducing various
			innovative services and banking systems for its customers. Besides
			offering the best banking products, it also ensures to address well
			the queries and concerns of its customers. BOM customer care
			executives ensure that customers get the best possible assistance as
			soon as possible.</p>

		<p>
			Customers can directly contact the following BOM customer care
			numbers to report their queries, grievances, complaints, etc. Given
			below are the toll-free numbers which can be contacted for reporting
			any issues regarding any BOM banking product:<br> 1800 220 229 <br>
			1800 103 1906 <br> (022)-40919191 <br> Landline:
			022-66684444 <br>
		</p>
		<p>
			If a customer wants to choose another alternative to contact the
			bank, he/she can also email queries, grievances or complaints on the
			following email IDs: <br> For general query or enquiry,
			customers can email the bank representatives on the given below email
			ID: BOM.CallCentre@bankofmorningstar.co.in <br> For issues
			regarding credit or debit cards, customers can mail their queries on
			the given below email ID: BOM.customerservices@oberthur.com <br>

			For hotlisting or deactivating the card, customers can mail on the
			given below email ID: PSS.Hotcard@fisglobal.com <br> For RTGS
			related issues, customers can mail on the given below email ID:
			Rtgs.BOM@bankofmorningstar.co.in <br> For NEFT related issues,
			customers can mail on the given below email ID:
			BOM.neft@bankofmorningstar.co.in <br> If customers wish to file
			their complaints or grievances through a complaint form, they can do
			so online or fill up the form available on the site. Given below is
			the link to the complaint form which can be filled. Customers are
			expected to get assistance once they send their complaint form. <br>

			http://www.bankofmorningstar.co.in/english/GrievanceForm_pg.aspx <br>

			If a customer is not happy or satisfied with the reply of the bank
			representatives after contacting the above-mentioned contact details,
			then they can also write to the higher authorities of the bank. Given
			below is the contact detail of the Bank of Morningstar head office.
		</p>
		<br>

		<h4>Head Office</h4>
		<br>
		<p>
			Bank of Morningstar <br> Star House, <br> C – 5, “G” Block,
			<br> Bandra Kurla Complex, <br> Bandra (East), <br>
			Mumbai – 400 051 <br> Ph: 022-66684444
		</p>
		<br>

		<h4>About Bank Of Morningstar</h4>
		<br>
		<p>BOM was founded on 7th September 1906 by a group of potential
			businessmen. Headquartered in Mumbai, Bank of Morningstar has been a
			government-owned bank since nationalization. After its inception, the
			bank has been showing steady growth in the banking sector of the
			country. It has grown its network consistently and today (in January
			2017) it has 5100 branches across the country with around 56 offices
			outside India including 5 subsidiaries, 5 representative offices, and
			one joint venture. Bank of Morningstar has been firmly following to a
			policy of prudence and caution which has resulted in making it one of
			the most trusted public sector banks.</p>
					
				</c:if>

			</div>


			<!-- <ul class="nav nav-pills flex-column mb-auto">
				<li class="nav-item"><a href="showuserdetails.view" class="nav-link text-white"
					aria-current="page"> <svg class="bi pe-none me-2" width="16"
							height="16">
							<use xlink:href="" /></svg> Account Details
				</a></li>
				<li><a href="#" class="nav-link text-white"> <svg
							class="bi pe-none me-2" width="16" height="16">
							<use xlink:href="#speedometer2" /></svg> Account Summary
				</a></li>
				<li><a href="#" class="nav-link text-white"> <svg
							class="bi pe-none me-2" width="16" height="16">
							<use xlink:href="#table" /></svg> Funds Transfer
				</a></li>
				<li><a href="#" class="nav-link text-white"> <svg
							class="bi pe-none me-2" width="16" height="16">
							<use xlink:href="#grid" /></svg> Account Statement
				</a></li>
				<li><a href="#" class="nav-link text-white"> <svg
							class="bi pe-none me-2" width="16" height="16">
							<use xlink:href="#people-circle" /></svg> Help Desk
				</a></li>
			</ul>
 -->

			<!-- </div> -->
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