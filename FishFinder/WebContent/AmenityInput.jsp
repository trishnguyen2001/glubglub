<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.io.IOException, java.sql.*, Queries.AmenityQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 170%;
	table-align: middle;
}

td {
	text-align: center;
	font-family: verdana;
	font-size: 16px;
}

table.center {
	margin-left: auto;
	margin-right: auto;
}

input[type="text"] {
	text-family: verdana;
}

.row {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	height:100%;
	width: 100%;
	justify-content: flex-start;
}

.column1 {
	margin-left: 10px;
	flex-direction: column;
}

.column2 {
	margin-left: 30px;
	flex-direction: column;
	justify-content: center;
}
</style>
<meta charset="ISO-8859-1">
<title>AmenityInput</title>
</head>
<body bgcolor="#bde7fc">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"
			style="height: 30px; width: 100px;">
	</form>

	<h1 style="font-family: verdana; font-size: 50px;" align="center">Amenities</h1>

	<div style="text-align: center">
		<img src="resources\restaurant.jpg" width="600" height="300"> <br>
	</div>
		
	<br> <br> <br> 
	
	<div class="row">
		<div class="column1">
			<form action="AmenityOutput.jsp">
				<h1 style="font-family: verdana; font-size: 40px">Search</h1>
				<br> 
				<b style="font-family: verdana; font-size: 16px;">Location:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" name="amenity_zone"> <br> <br> 
				<b style="font-family: verdana; font-size: 16px;">Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" name="amenity_type">  <br> <br>
				<b style="font-family: verdana; font-size: 16px;">Description:&nbsp;</b> <input type="text" name="amenity_descr">  <br> <br>
				<input type="submit" value="Submit"
					style="height: 30px; width: 90px;">
			</form>
		</div>	
		<div class="column2">
			<%
				AmenityQueries amq = new AmenityQueries();
				String intQ = amq.intersect(amq.zoneQ(""), amq.typeQ(""), amq.descQ("")); //displays all amenities
	
				String joinQuery = amq.join(intQ);
				PreparedStatement stmt = amq.prepStmt(joinQuery);
				ResultSet rs = stmt.executeQuery();
	
				out.print("<table border ='1' bgcolor='ffffff' class='center'>	" + "<tr>" + "<th>#</th>"
						+ "<th>Location</th>" + "<th>Type</th>" + "<th>Description</th>" + "</tr>");
				try {
					int counter = 1;
					while (rs.next()) {
						out.print("<tr>");
						out.print("<td> " + counter + " </td>"); //result counter
						out.print("<td>" + rs.getString("location") + "</td>"); //retrieves zone 
	
						String currentType = rs.getString("amenity_type");
						out.print("<td>" + currentType + "</td>"); //retrieves amenity type
	
						if (currentType.equalsIgnoreCase("RESTAURANT")) {
							String currentRstrnt = rs.getString("Description");
							String cuisine = amq.getCuisine(currentRstrnt);
							out.print("<td>" + currentRstrnt + " (" + cuisine + ") </td>"); //retrieves name and cuisine of restaurant
						} else {
							out.print("<td>" + rs.getString("Description") + "</td>"); //retrieves description
						}
						out.print("</tr>");
						counter++;
					}
	
					System.out.println("done");
				} catch (Exception e) {
					System.out.println("ERROR: " + e.getMessage());
				}
	
				out.print("</table>");
			%>	
		</div>
	</div>

</body>
</html>