<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LandingPg</title>
</head>
<body bgcolor="#b3e6e4">
	<h1 style="font-family: verdana" align="center">Welcome!</h1>
	<!-- <img src="resources\demented_nemo.jpg" width = "800" height = "500">  -->
	<div style="text-align: center;">
		<img src="resources\pretty_nemo.jpg" width="800" height="500"> <br>
		<br> <br>

		<form action="AnimalInput.jsp">
			<input type="submit" value="Browse Animals"
				style="height: 50px; width: 150px" style="font-family:verdana">
		</form>
		<br>
		<form action="TourInput.jsp">
			<input type="submit" value="Browse Tours"
				style="height: 50px; width: 150px" style="font-family:verdana"
				align="center">
		</form>
		<br>
		<form action="ShowInput.jsp">
			<input type="submit" value="Browse Shows"
				style="height: 50px; width: 150px" style="font-family:verdana"
				align="center">
		</form>
		<br>
		<form action="AmenityInput.jsp">
			<input type="submit" value="Browse Amenities"
				style="height: 50px; width: 150px" style="font-family:verdana"
				align="center">
		</form>
		<br>
	</div>

</body>
</html>