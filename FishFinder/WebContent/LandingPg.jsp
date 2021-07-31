<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LandingPg</title>
</head>
<style>
.row {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	height:100px;
	width: 100%;
	justify-content: space-evenly;
}

.column {
	padding: 5px;
}

.center {
	display: block;
  	margin-left: auto;
  	margin-right: auto;
}
</style>
<body bgcolor="#bde7fc">
	<h1 style="font-family: verdana; font-size: 50px" align="center"" >Welcome!</h1>
	
	<img src="resources\pretty_nemo.jpg" width = "800" height = "500" class="center"> 
		<!-- <img src="resources\pretty_nemo.jpg" width = "800" height = "500"> -->
	
	<div class="row">
		<div class="column">
			<form action="AnimalInput.jsp">
			<br> <input type="submit" value="Browse Animals"
					style="height: 40px; width: 150px" style="font-family:verdana">
			</form>
		</div>
		<div class="column">
			<form action="TourInput.jsp">
			<br> <input type="submit" value="Browse Tours"
					style="height: 40px; width: 150px" style="font-family:verdana">
			</form>
		</div>
		<div class="column">
			<form action="ShowInput.jsp">
			<br> <input type="submit" value="Browse Shows"
					style="height: 40px; width: 150px" style="font-family:verdana">
			</form>
		</div>
		<div class="column">
			<form action="AmenityInput.jsp">
			<br> <input type="submit" value="Browse Amenities"
					style="height: 40px; width: 150px" style="font-family:verdana">
			</form>
		</div>	
	</div>
	
	

</body>
</html>