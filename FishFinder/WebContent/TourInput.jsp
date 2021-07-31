<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.sql.*, Queries.TourQueries, java.util.*, java.io.IOException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tour Input</title>
</head>
<body bgcolor = "#b3e6e4">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"  style="height:50px; width:150px">
	</form>

	<h1>Search</h1>

	<form action="TourOutput.jsp">
		<b>Name: </b> <input type="text" name="tourName"> <br> <br>
		<b>Time: </b> <input type="text" name="tourTime"><br> <br>
		<b>Zone: </b> <input type="text" name="tourZone"><br> <br>
		<input type="submit" value="Submit"  style="height:30px; width:90px">
	</form>

	<h1>All Tours</h1>

	<%
		String tour_name = request.getParameter("tourName");
		String tour_time = request.getParameter("tourTime");
		String tour_zone = request.getParameter("tourZone");

		out.print("<table border ='1' bgcolor='ffffff'>	" + "<tr>" + "<th>#</th>" + "<th>Tour Name</th>"  + "<th>Tour Guide</th>" 
		+ "<th>Time</th>" + "<th>Zone</th>" + "</tr>");
		TourQueries tq = new TourQueries();
		ResultSet rs = tq.tourInputDisplay();

		try {
			int counter = 1;
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


</body>
</html>