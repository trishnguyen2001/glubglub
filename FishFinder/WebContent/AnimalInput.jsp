<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, queries.AnimalQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 143%;
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
}
</style>
<meta charset="ISO-8859-1">
<title>AnimalInput</title>
</head>
<body bgcolor="#bde7fc">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home" style="height: 30px; width: 100px; fontsize: 40px;">
	</form>
	
	<h1 style="font-family: verdana; font-size: 50px; height: 65px;" align="center">Animals</h1>
	
	<div style="text-align: center">
		<img src="resources\cute_otters.jpg" width="600" height="300"> <br>
	</div>
		
	<br> <br> <br> 
	
	<div class="row">
		<div class="column1">
			<form action="AnimalOutput.jsp">
				<h1 style="font-family: verdana; font-size: 40px">Search</h1>
				<br> 
				<b style="font-family: verdana; font-size: 16px;">Zone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" name="zone"> <br> <br> 
				<b style="font-family: verdana; font-size: 16px;">Habitat:&nbsp;</b> <input type="text" name="habitat">  <br> <br>
				<b style="font-family: verdana; font-size: 16px;">Name:&nbsp;&nbsp;&nbsp;</b> <input type="text" name="animal_name">  <br> <br>
				<b style="font-family: verdana; font-size: 16px;">Tags:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" name="tag"> <br> <br>
				<input type="submit" value="Submit"
					style="height: 30px; width: 90px;">
			</form>
		</div>	
		<div class="column2">
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
		</div>

	</div>

</body>
</html>