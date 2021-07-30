<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AmenityInput</title>
</head>
<body bgcolor="#b3e6e4">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"  style="height:50px; width:150px">
	</form>

	<h1>Search</h1>

	<form action="AmenityOutput.jsp">
		Zone: <input type="text" name="amenity_zone"> <br> <br>
		Type: <input type="text" name="amenity_type"> <br> <br>
		Name: <input type="text" name="amenity_name"> <br> <br>
		Description: <input type="text" name="amenity_description"> <br> <br>
		<input type="submit" value="Submit" style="height: 30px; width: 90px"><br> <br>
	</form>
</body>
</html>