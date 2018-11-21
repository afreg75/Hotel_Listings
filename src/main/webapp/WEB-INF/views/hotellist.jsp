<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>City List</title>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<div class = "container">
<center>Your Hotels</center>
	<table  class="table table-sm">
		<tr>

			<th>Name</th>
			<th>City</th>
			<th>Price per Night</th>
	
			</tr>	
		<c:forEach var="myhotel" items="${ hotellist }">
			<tr>
				<td> ${ myhotel.name }</td>
				<td> ${ myhotel.city }</td>
				<td> $${ myhotel.pricePerNight }</td>
			</tr>
		</c:forEach>
	</table>
	
	<p><b><a href="/">Search Again</a></b></p>
	
	</div>
		
</body>
</html>