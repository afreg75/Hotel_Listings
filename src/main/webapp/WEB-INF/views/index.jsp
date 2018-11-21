<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"	crossorigin="anonymous">
<meta charset="ISO-8859-1">

<title>Hotel Listing</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<div class = "container">
<center>Hotel Search</center>

<p>Please use drop down to select City, for your reservation</p>

		<form action="/city_list" method:"post">
		
				<b> <select name="city">

						<option value=" "></option>
						<option value="Chicago">Chicago</option>
						<option value="Detroit">Detroit</option>
						<option value="Los Angeles">Los Angeles</option>
				</select></b>
			
			<br>
			<p></p>
			<p><button class="btn btn-primary"  role="button">GO!</button></p>
		</form>
	
		</div>
		
</body>

</html>