<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, Queries.AmenityQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AmenityOutput</title>
</head>
<body bgcolor="#b3e6e4">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"
			style="height: 50px; width: 150px">
	</form>

	<br>

	<h1>RESULTS FOR:</h1>

	<%
		String zone = request.getParameter("amenity_zone");
		String type = request.getParameter("amenity_type");
		String desc = request.getParameter("amenity_descr");

		System.out.println("NEW OUTPUT");
		out.print("ZONE: " + zone + "</br></br>");
		out.print("TYPE: " + type + "</br></br>");
		/* out.print("NAME: " + name + "</br></br>"); */
		out.print("DESCRIPTION: " + desc + "</br></br>");
	%>

	<br>

	<form action="AmenityInput.jsp">
		<input type="submit" value="Back" style="height: 50px; width: 150px">
	</form>

	<br>
	<%
		AmenityQueries amq = new AmenityQueries();

		/* String intQ = amq.intersect(amq.zoneQ(zone), amq.typeQ(type), amq.nameQ(name), amq.descQ(desc)); */
		String intQ = amq.intersect(amq.zoneQ(zone), amq.typeQ(type), amq.descQ(desc)); 

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
