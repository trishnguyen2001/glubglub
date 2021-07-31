<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, queries.AmenityQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 100%;
	table-align: middle;
}

td {
	text-align: center;
	font-family: verdana;
	font-size: 16px;
}

input[type="text"] {
	text-family: verdana;
}

.row {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	height:100px;
	width: 100%;
	justify-content: center;
}

.column1 {
	flex-direction: column;
	padding: 10px;
}

.column2 {
	flex-direction: column;
	padding: 70px;
	flex-grow: 1;
}
</style>
<meta charset="ISO-8859-1">
<title>AmenityOutput</title>
</head>
<body bgcolor="#bde7fc">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home" style="height: 30px; width: 100px;">
	</form>

	<h1 style="font-family: verdana; font-size: 50px;" align="center">Results:</h1>
	
	<%
		String zone = request.getParameter("amenity_zone");
		String type = request.getParameter("amenity_type");
		String desc = request.getParameter("amenity_descr");
	%>
	
	<div class="row">
		<div class="column1">
			<p style="font-family: verdana; font-size: 16px;">[Location]: <% out.print(zone); %></p>
			<p style="font-family: verdana; font-size: 16px;">[Type]: <% out.print(type); %></p>
			<p style="font-family: verdana; font-size: 16px;">[Description]: <% out.print(desc); %></p>
		</div>
	</div>
	
	<div class="row">
		<div class="column2">
			<form action="AmenityInput.jsp">
				<input type="submit" value="Back" style="height: 30px; width: 100px; margin-bottom: 5px">
			</form>
			<%
				AmenityQueries amq = new AmenityQueries();

				String intQ = amq.intersect(amq.zoneQ(zone), amq.typeQ(type), amq.descQ(desc));
		
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
