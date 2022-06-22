<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="pages/css.css" rel="stylesheet"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="checkadminLogin.do" method="post">

	
	
	<h1 align="center">Admin Login</h1>
		<hr width="66%">
		<table align="center" cellpadding="5" border="10" cellsapcing="0">
		<tr> 
			<td>Username:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="text" required placeholder="Enter Username" name="adminId">
			</td>
			
		<tr>
			<td>Password:* &nbsp;&nbsp;
			<input class="adminPassTextBox" type="password" required placeholder="Enter Password" name="password">
			</td>
		</tr>
	
		<tr>
		<td align="center">
		<input class="btn"  type="submit" value="Log In!!" >
		</td>
		</tr>
		
		
	</table>
</form>
</body>
</html>
