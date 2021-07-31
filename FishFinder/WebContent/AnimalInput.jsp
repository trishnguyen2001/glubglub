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
<title>AnimalInput</title>
</head>
<body bgcolor="#bde7fc">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"
			style="height: 30px; width: 100px;">
	</form>

	<h1 style="font-family: verdana" align="center" style="font-size: 90px;">Search
		Animals</h1>

	<div style="text-align: center">
		<img src="resources\cute_otters.jpg" width="600" height="300"> <br>
		<br> <br>

		<form action="AnimalOutput.jsp">

			<b>Zone:</b> <input type="text" name="zone"> <b>Habitat:</b>
			<input type="text" name="habitat"> <b>Name:</b> <input
				type="text" name="animal_name"> <b>Tags: </b> <input
				type="text" name="tag"> <input type="submit" value="Submit"
				style="height: 30px; width: 90px;">
		</form>
	</div>


	<h1 style="font-family: verdana" align="center" style="font-size: 90px">All
		Animals</h1>

	<%
		AnimalQueries aq = new AnimalQueries();
		ResultSet rs = aq.intersection(aq.genNameQuery(""), aq.zoneQuery(""), aq.habitatQuery(""), aq.tagQuery(""));
		out.print("<table border ='1' bgcolor='ffffff' class='center'>" + "<tr>" + "<th>#</th>" + "<th>Zone</th>"
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