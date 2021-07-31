<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, Queries.TourQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tour Output</title>
</head>
<body bgcolor = "#b3e6e4">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home">
	</form>

	<h1>RESULTS FOR:</h1>

	<%
		System.out.println("NEW OUTPUT");
		String tour_name = request.getParameter("tourName");
		out.print("NAME: " + tour_name + "</br></br>");

		String tour_time = request.getParameter("tourTime");
		out.print("TIME: " + tour_time + "</br></br>");

		String tour_zone = request.getParameter("tourZone");
		out.print("ZONE: " + tour_zone + "</br></br>");
	%>


	<form action="TourInput.jsp">
		<input type="submit" value="Back">
	</form>

	<br>
	<br>


	<%
		out.print("<table border ='1' bgcolor='ffffff'>	" + "<tr>" + "<th>#</th>" + "<th>Tour Name</th>"  + "<th>Tour Guide</th>" 
			+ "<th>Time</th>" + "<th>Zone</th>" + "</tr>");
		TourQueries tq = new TourQueries();
		ResultSet rs = tq.intersection(tq.tourNameQuery(tour_name), tq.timeQuery(tour_time),
				tq.zoneQuery(tour_zone));
		try {
			int counter = 1;
			//FORMATTING: 
			//String current = rs.getString("tName");
			while (rs.next()) {

				out.print("<tr>");
				out.print("<td> " + counter + " </td>"); //result counter
				out.print("<td>" + rs.getString("Tour_Name") + "</td>"); //retrieves Tour Name
				out.print("<td>" + rs.getString("Tour_Guides") + "</td>"); //retrieves Tour Guide name (Employee name)
				out.print("<td>" + rs.getString("Tour_Time") + "</td>"); //retrieves Tour Time
				out.print("<td>" + rs.getString("Zones") + "</td></tr>"); // lists all the zones for each Tour

				counter++;
			}

			System.out.println("done");
		} catch (Exception e) {
			System.out.println("ERROR: " + e.getMessage());
		}
		out.print("</table>");
	%>


	<hr>

</body>
</html>