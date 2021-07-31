<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.sql.*, Queries.ShowQueries, java.util.*, java.io.IOException"%>
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
<title>Show Input</title>
</head>
<body bgcolor="#bde7fc">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"
			style="height: 30px; width: 100px;">
	</form>


	<div style="text-align: center">
		<h1 style="font-family: verdana" align="center" style="font-size: 90px">Search Shows</h1>
		
		<img src="resources\dolphin_show.jpg" width="600" height="300">
		<br> <br> <br>

		<form action="ShowOutput.jsp">
			<b>Name: </b> <input type="text" name="showName"> <b>Time:
			</b> <input type="text" name="showTime"> <b>Show Animals: </b> <input
				type="text" name="showAnimal"> <input type="submit"
				value="Submit" style="height: 30px; width: 90px">
		</form>

		<h1 style="font-family: verdana" align="center" style="font-size: 90px">All Shows</h1>

		<%
			String show_name = request.getParameter("showName");
			String show_time = request.getParameter("showTime");
			String show_animal = request.getParameter("showAnimal");

			out.print("<table border ='1' bgcolor='ffffff' class='center'>	" + "<tr>" + "<th>#</th>"
					+ "<th>Show Name</th>" + "<th>Time</th>" + "<th>Show Animals</th>" + "</tr>");
			ShowQueries sq = new ShowQueries();
			ResultSet rs = sq.intersection(sq.showNameQuery(""), sq.timeQuery(""), sq.showAnimalQuery(""));

			try {
				int counter = 1;
				//FORMATTING:
				//String current = rs.getString("sName");
				while (rs.next()) {

					out.print("<tr>");
					out.print("<td> " + counter + " </td>"); //result counter
					out.print("<td>" + rs.getString("sName") + "</td>"); //retrieves show name
					out.print("<td>" + rs.getString("time") + "</td>"); //retrieves show time
					out.print("<td>" + rs.getString("general_name") + "</td>"); //retrieves zones passed through

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

</body>
</html>