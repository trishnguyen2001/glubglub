<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.sql.*, Queries.TourQueries, java.util.*, java.io.IOException"%>
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
<title>Tour Input</title>
</head>
<body bgcolor="#bde7fc">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"
			style="height: 30px; width: 100px;">
	</form>
	<div style="text-align: center">
		<h1 style="font-family: verdana" align="center" style="font-size: 90px">Search Tours</h1>

		<img src="resources\tour.jpeg" width="600" height="300">
		<br> <br> <br>

		<form action="TourOutput.jsp">
			<b>Name: </b> <input type="text" name="tourName"> <b>Time:
			</b> <input type="text" name="tourTime"> <b>Zone: </b> <input
				type="text" name="tourZone"> <input type="submit"
				value="Submit" style="height: 30px; width: 90px">
		</form>

		<h1 style="font-family: verdana" align="center" style="font-size: 90px">All Tours</h1>

		<%
			String tour_name = request.getParameter("tourName");
			String tour_time = request.getParameter("tourTime");
			String tour_zone = request.getParameter("tourZone");

			out.print("<table border ='1' bgcolor='ffffff' class='center'>	" + "<tr>" + "<th>#</th>"
					+ "<th>Tour Name</th>" + "<th>Time</th>" + "<th>Zone</th>" + "</tr>");
			TourQueries tq = new TourQueries();
			ResultSet rs = tq.tourInputDisplay();

			try {
				int counter = 1;
				while (rs.next()) {

					out.print("<tr>");
					out.print("<td> " + counter + " </td>"); //result counter
					out.print("<td>" + rs.getString("Tour_Name") + "</td>"); //retrieves Tour Name
					out.print("<td>" + rs.getString("Tour_Time") + "</td>"); //retrieves Tour Time
					out.print("<td>" + rs.getString("Zone_Listing") + "</td></tr>"); // lists all the zones for each Tour

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