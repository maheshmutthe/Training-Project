<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Details</title>
</head>
<body>
<center>
<table class="pure-table pure-table-bordered">

<thead>
<tr><td colspan = "2"><h1 class="text-center">Customer Information</h1></td></tr>
</thead>
</tbody>

<tr><td>Account Number:</td><td>${k.accountNumber}</td></tr>

<tr><td>Title:</td><td>${k.title}</td></tr>

<tr><td>FirstName:</td><td>${k.firstName}</td></tr>

<tr><td>LastName:</td><td>${k.lastName}</td></tr>

<tr><td>FatherName:</td><td>${k.fathersName}</td></tr>

<tr><td>Mobileno:</td><td>${k.mobileNumber}</td></tr>

<tr><td>Email:</td><td>${k.emailId}</td></tr>

<tr><td>Adhar card:</td><td>${k.aadharCard}</td></tr>
<tr><td>dateOfBirth:</td><td>${k.dateOfBirth}</td></tr>
<tr><td>address:</td><td>${k.address}</td></tr>
<tr><td>city:</td><td>${k.city}</td></tr>
<tr><td>state:</td><td>${k.state}</td></tr>
<tr><td>pinCode:</td><td>${k.pinCode}</td></tr>
<tr><td>accountType:</td><td>${k.accountType}</td></tr>
<tr><td>occupationType:</td><td>${k.occupationType}</td></tr>
<tr><td>grossAnnualIncome:</td><td>${k.grossAnnualIncome}</td></tr>
<tr><td>netBanking:</td><td>${k.netBanking}</td></tr>
</tbody>


</table>
</center>
</body>
</html>