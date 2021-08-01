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
	width: 100%;
	table-align: middle;
}

td {
	text-align: center;
	font-family: verdana;
	font-size: 16px;
}

input[type="text"] {
	text-family: verdana;
}

.row {
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	height:100px;
	width: 100%;
	justify-content: center;
}

.column1 {
	flex-direction: column;
	padding: 10px;
}

.column2 {
	flex-direction: column;
	padding: 70px;
	flex-grow: 1;
}
</style>
<meta charset="ISO-8859-1">
<title>Tour Output</title>
</head>
<body bgcolor = "#bde7fc">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home" style="height: 30px; width: 100px;">
	</form>

	<h1 style="font-family: verdana; font-size: 50px;" align="center">Results:</h1>

	<%
		String tour_name = request.getParameter("tourName");
		String tour_time = request.getParameter("tourTime");
		String tour_zone = request.getParameter("tourZone");
	%>

	<div class="row">
		<div class="column1">
			<p style="font-family: verdana; font-size: 16px;"><b>[Name]:</b> <% out.print(tour_name); %></p>
			<p style="font-family: verdana; font-size: 16px;"><b>[Time]:</b> <% out.print(tour_time); %></p>
			<p style="font-family: verdana; font-size: 16px;"><b>[Zone]:</b> <% out.print(tour_zone); %></p>
		</div>
	</div>
	
	<div class="row">
		<div class="column2">
			<form action="TourInput.jsp" style="margin-bottom: 5px;">
				<input type="submit" value="Back" style="height: 30px; width: 100px;">
			</form>
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
		</div>
	</div>

</body>
</html>