<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, Queries.AnimalQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home">
	</form>

	<h1>Search</h1>

	<form action="AnimalOutput.jsp">
		<b>Zone: </b> <input type="text" name="zone"> <br> <br>
		<b>Habitat: </b> <input type="text" name="habitat"><br> <br>
		<b>Name: </b> <input type="text" name="animal_name"><br>
		<br> <b>Tags: </b> <input type="text" name="tag"><br>
		<br> <input type="submit" value="Submit">
	</form>

	<h1>All Animals</h1>
	<%
		AnimalQueries aq = new AnimalQueries();
		ResultSet rs = aq.intersection(aq.genNameQuery(""), aq.zoneQuery(""), aq.habitatQuery(""), aq.tagQuery(""));

		out.print("<table border ='1'>	" + "<tr>" + "<th>#</th>" + "<th>Zone</th>" + "<th>Habitat</th>"
				+ "<th>General Name</th>" + "<th>Scientific Name</th>"
				//+ "<th>Tags</th>" 
				+ "<th>Visitor</th>" + "<th>Tag</th>" + "</tr>");
		try {
			//String currentAnimal = "";

			int counter = 1;
			while (rs.next()) {
				//currentAnimal = rs.getString("general_name");

				out.print("<tr>");
				out.print("<td> " + counter + " </td>"); //result counter
				out.print("<td>" + rs.getString("zoneID") + "</td>"); //retrieves zone 
				out.print("<td>" + rs.getString("habitatID") + "</td>"); //retrieves habitat
				out.print("<td>" + rs.getString("general_name") + "</td>"); //retrieves general name
				out.print("<td>" + rs.getString("scientific_name") + "</td>"); //retrieves scientific name

				out.print("<td>" + rs.getString("vName") + "</td>"); //retrieves tag author 
				out.print("<td>" + rs.getString("tag_description") + "</td>"); //retrieves tag

				/* out.print("<td>");
				ArrayList<String> tags = aq.tags(rs.getString("general_name"));
				for(String t: tags){
					System.out.println("tags retrieved");
					out.print(t);
					out.println("<br>");
				}
				out.print("</td>"); 
				out.print("</tr>");  */

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
