<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, Queries.AnimalQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AnimalInput</title>
</head>
<body bgcolor = "#b3e6e4">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"  style="height:50px; width:150px">
	</form>

	<h1>Search Animals</h1>

	<form action="AnimalOutput.jsp">
		<b>Zone: </b> <input type="text" name="zone"> <br> <br>
		<b>Habitat: </b> <input type="text" name="habitat"><br> <br>
		<b>Name: </b> <input type="text" name="animal_name"><br>
		<br> <b>Tags: </b> <input type="text" name="tag"><br>
		<br> <input type="submit" value="Submit"  style="height:30px; width:90px">
	</form>

	<h1>All Animals</h1>
	<%
		AnimalQueries aq = new AnimalQueries();
		ResultSet rs = aq.intersection(aq.genNameQuery(""), aq.zoneQuery(""), aq.habitatQuery(""), aq.tagQuery(""));
		out.print("<table border ='1' bgcolor='ffffff'>	" + "<tr>" + "<th>#</th>" + "<th>Zone</th>" + "<th>Habitat</th>"
				+ "<th>General Name</th>" + "<th>Scientific Name</th>"
				+ "<th>Tags</th>"				
				+ "</tr>");
		try {
			int counter = 1;
			while (rs.next()) {
				out.print("<tr>");
				out.print("<td> " + counter + " </td>"); 															//result counter
				out.print("<td>" + rs.getString("zoneID") + "</td>"); 												//retrieves zone 
				out.print("<td>" + rs.getString("habitatID") + "</td>"); 											//retrieves habitat
				out.print("<td>" + rs.getString("general_name") + "</td>"); 										//retrieves general name
				out.print("<td>" + rs.getString("scientific_name") + "</td>"); 										//retrieves scientific name
				out.print("<td> '" + rs.getString("tag_description") + "' - " + rs.getString("vName") + "</td>"); 	//retrieves tag + author
				
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