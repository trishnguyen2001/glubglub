<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, Queries.ShowQueries, java.util.*"%>
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
<title>Show Output</title>
</head>
<body bgcolor="#bde7fc">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"
			style="height: 30px; width: 100px;">
	</form>

	<div style="text-align: center">
		<h1 style="font-family: verdana" align="center"
			style="font-size: 90px">Results</h1>

		<%
			System.out.println("NEW OUTPUT");
			String show_name = request.getParameter("showName");
			out.print("<b>[Show]: </b>" + show_name + "</br></br>");

			String show_time = request.getParameter("showTime");
			out.print("<b>[Time]: </b>" + show_time + "</br></br>");

			String show_animal = request.getParameter("showAnimal");
			out.print("<b>[Show Animal]: </b>" + show_animal + "</br></br>");
		%>

	</div>
	<form action="ShowInput.jsp">
		<input type="submit" value="Back" style="height: 30px; width: 100px">
	</form>

	<br>
	<br>


	<%
			out.print("<table border ='1' bgcolor='ffffff' class='center'>	" + "<tr>" + "<th>#</th>"
					+ "<th>Show Name</th>" + "<th>Time</th>" + "<th>Show Animals</th>" + "</tr>");
			ShowQueries sq = new ShowQueries();
			ResultSet rs = sq.intersection(sq.showNameQuery(show_name), sq.timeQuery(show_time),
					sq.showAnimalQuery(show_animal));
			try {
				int counter = 1;
				while (rs.next()) {

					out.print("<tr>");
					out.print("<td> " + counter + " </td>"); //result counter
					out.print("<td>" + rs.getString("sName") + "</td>"); //retrieves show name
					out.print("<td>" + rs.getString("time") + "</td>"); //retrieves show time
					out.print("<td>" + rs.getString("general_name") + "</td>"); //retrieves animals that participate in the show
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