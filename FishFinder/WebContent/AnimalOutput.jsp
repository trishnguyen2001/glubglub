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
	width: 90%;
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

</style>
<meta charset="ISO-8859-1">
<title>Animal Output</title>
</head>
<body bgcolor="#bde7fc">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"
			style="height: 30px; width: 100px;">
	</form>


	<h1 style="font-family: verdana" align="center" style="font-size: 90px">Results
		</h1>

	<div style="text-align: center">
		<%
			System.out.println("NEW OUTPUT");
			String animal_name = request.getParameter("animal_name");
			out.print("<b>[Name]: </b>" + animal_name + "</br></br>");

			String zone = request.getParameter("zone");
			out.print("<b>[Zone]: </b> " + zone + "</br></br>");

			String habitat = request.getParameter("habitat");
			out.print("<b>[Habitat]: </b>" + habitat + "</br></br>");

			String tag = request.getParameter("tag");
			out.print("<b> [Tag]: </b>" + tag + "</br></br>");
		%>
	</div>
	<form action="AnimalInput.jsp">
		<input type="submit" value="Back" style="height: 30px; width: 100px;">
	</form>

	<br>
	<br>

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

</body>
</html>