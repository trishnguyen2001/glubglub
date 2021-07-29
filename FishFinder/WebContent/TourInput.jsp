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
<body>
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home">
	</form>

	<h1>Search</h1>

	<form action="TourOutput.jsp">
		<b>Name: </b> <input type="text" name="tourName"> <br> <br>
		<b>Time: </b> <input type="text" name="tourTime"><br> <br>
		<b>Zone: </b> <input type="text" name="tourZone"><br> <br>
		<input type="submit" value="Submit">
	</form>

	<h1>All Tours</h1>

	<%
		String tour_name = request.getParameter("tourName");
		String tour_time = request.getParameter("tourTime");
		String tour_zone = request.getParameter("tourZone");

		out.print("<table border ='1'>	" + "<tr>" + "<th>#</th>" + "<th>Tour Name</th>" + "<th>Time</th>"
				+ "<th>Zone</th>" + "</tr>");
		TourQueries tq = new TourQueries();
		ResultSet rs = tq.intersection(tq.tourNameQuery(""), tq.timeQuery(""), tq.zoneQuery(""));

		try {
			int counter = 1;
			//FORMATTING: 
			//String current = rs.getString("tName");
			while (rs.next()) {

				out.print("<tr>");
				out.print("<td> " + counter + " </td>"); 								//result counter
				//out.print("<td>" + current + "</td>"); 								//FORMATTING: retrieves tour name 
				out.print("<td>" + rs.getString("tName") + "</td>"); 					//retrieves tour name
				out.print("<td>" + rs.getString("time") + "</td>"); 					//retrieves tour time
				out.print("<td>" + rs.getString("zoneID") + "</td>"); 					//retrieves zones passed through

				//FORMATTING: retrieves zones passed through
				/* out.print("<td>");
				String next = rs.getString("tName");
				System.out.println("current = " + current);
				System.out.println("next = " + next);
				while(next.equals(current)){
					out.print(rs.getString("zoneID") + "<br>");
					current = next;
					next = rs.getString("tName");
				}
				out.print("</td>");  */

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