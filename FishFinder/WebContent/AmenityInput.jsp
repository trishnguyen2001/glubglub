<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="java.io.IOException, java.sql.*, Queries.AmenityQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AmenityInput</title>
</head>
<body bgcolor="#b3e6e4">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"
			style="height: 50px; width: 150px">
	</form>

	<h1>Search Amenities</h1>

	<form action="AmenityOutput.jsp">
		Location: <input type="text" name="amenity_zone"> <br> <br>
		Type: <input type="text" name="amenity_type"> <br> <br>
		Description: <input type="text" name="amenity_descr"> <br>
		<br> <br> <input type="submit" value="Submit"
			style="height: 30px; width: 90px"><br> <br>
	</form>

	<h1>All Amenities</h1>
	<%
		AmenityQueries amq = new AmenityQueries();
		String intQ = amq.intersect(amq.zoneQ(""), amq.typeQ(""), amq.descQ("")); //displays all amenities

		String joinQuery = amq.join(intQ);
		PreparedStatement stmt = amq.prepStmt(joinQuery);
		ResultSet rs = stmt.executeQuery();

		out.print("<table border ='1' bgcolor='ffffff'>	" + "<tr>" + "<th>#</th>" + "<th>Location</th>"
				+ "<th>Type</th>" + "<th>Description</th>" + "</tr>");
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

</body>
</html>