<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tour Input</title>
</head>
<body>
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home">
	</form>

	<h1>Search</h1>

	<form action="TourOutput.jsp">
		<b>Name (case-sensitive): </b> <input type="text" name="tourName"> <br> <br>
		<b>Time: </b> <input type="text" name="tourTime"><br> <br>
		<b>Zone: </b> <input type="text" name="tourZone"><br>
		<br> <input type="submit" value="Submit">
	</form>	
	
	<h1>All Tours</h1>
	
	
</body>
</html>