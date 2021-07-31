<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, Queries.TourQueries, java.util.*"%>
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
<title>Tour Output</title>
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
			String tour_name = request.getParameter("tourName");
			out.print("<b>[Tour]: </b> " + tour_name + "</br></br>");

			String tour_time = request.getParameter("tourTime");
			out.print("<b>[Time]: </b> " + tour_time + "</br></br>");

			String tour_zone = request.getParameter("tourZone");
			out.print("<b>[Zone]: </b> " + tour_zone + "</br></br>");
		%>

	</div>
	<form action="TourInput.jsp">
		<input type="submit" value="Back" style="height: 30px; width: 100px">
	</form>

	<br>
	<br>


	<%
		out.print("<table border ='1' bgcolor='ffffff' class='center'>	" + "<tr>" + "<th>#</th>"
				+ "<th>Tour Name</th>" + "<th>Time</th>" + "<th>Zone</th>" + "</tr>");
		TourQueries tq = new TourQueries();
		ResultSet rs = tq.intersection(tq.tourNameQuery(tour_name), tq.timeQuery(tour_time),
				tq.zoneQuery(tour_zone));
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

</body>
</html>