<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, Queries.AnimalQueries, java.util.*"%>
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
<title>Animal Output</title>
</head>
<body bgcolor="#bde7fc">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home" style="height: 30px; width: 100px;">
	</form>

	<h1 style="font-family: verdana; font-size: 50px;" align="center">Results:</h1>

	<%
		String animal_name = request.getParameter("animal_name");
		String zone = request.getParameter("zone");
		String habitat = request.getParameter("habitat");
		String tag = request.getParameter("tag");
	%>

	<div class="row">
		<div class="column1">
			<p style="font-family: verdana; font-size: 16px;"><b>[Name]:</b> <% out.print(animal_name); %></p>
			<p style="font-family: verdana; font-size: 16px;"><b>[Zone]:</b> <% out.print(zone); %></p>
			<p style="font-family: verdana; font-size: 16px;"><b>[Habitat]:</b> <% out.print(habitat); %></p>
			<p style="font-family: verdana; font-size: 16px;"><b>[Tag]:</b> <% out.print(tag); %></p>
		</div>
	</div>

	<div class="row">
		<div class="column2">
			<form action="AnimalInput.jsp" style="margin-bottom: 5px;">
				<input type="submit" value="Back" style="height: 30px; width: 100px;">
			</form>
			<%
				AnimalQueries aq = new AnimalQueries();
				ResultSet rs = aq.intersection(aq.genNameQuery(animal_name), aq.zoneQuery(zone), aq.habitatQuery(habitat),
						aq.tagQuery(tag));
				out.print("<table border ='1' bgcolor='ffffff' class='center'>	" + "<tr>" + "<th>#</th>" + "<th>Zone</th>"
						+ "<th>Habitat</th>" + "<th>General Name</th>" + "<th>Scientific Name</th>" + "<th>Tags</th>"
						+ "</tr>");
				try {
					int counter = 1;
					while (rs.next()) {
						out.print("<tr>");
						out.print("<td> " + counter + " </td>"); //result counter
						out.print("<td>" + rs.getString("zoneID") + "</td>"); //retrieves zone 
						out.print("<td>" + rs.getString("habitatID") + "</td>"); //retrieves habitat
						out.print("<td>" + rs.getString("general_name") + "</td>"); //retrieves general name
						out.print("<td>" + rs.getString("scientific_name") + "</td>"); //retrieves scientific name
						out.print("<td> '" + rs.getString("tag_description") + "' - " + rs.getString("vName") + "</td>"); //retrieves tag + author
		
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