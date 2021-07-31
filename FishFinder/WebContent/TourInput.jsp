<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.sql.*, queries.TourQueries, java.util.*, java.io.IOException"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 180%;
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
	margin-left:30px;
	margin-top: auto;
	margin-bottom: auto;
	flex-direction: column;
	height: 100%;
}
</style>
<meta charset="ISO-8859-1">
<title>Tour Input</title>
</head>
<body bgcolor = "#bde7fc">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home" style="height: 30px; width: 100px; fontsize: 40px;">
	</form>

	<h1 style="font-family: verdana; font-size: 50px; height: 65px;" align="center">Tours</h1>

	<div style="text-align: center">
		<img src="resources\tour.jpeg" width="600" height="300"> <br>
	</div>
	
	<br> <br> 
	
	<div class="row">
		<div class="column1">
			<form action="TourOutput.jsp">
				<h1 style="font-family: verdana; font-size: 40px">Search</h1>
				<br> 
				<b style="font-family: verdana; font-size: 16px;">Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" name="tourName"> <br> <br> 
				<b style="font-family: verdana; font-size: 16px;">Time:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" name="tourTime">  <br> <br>
				<b style="font-family: verdana; font-size: 16px;">Zone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text" name="tourZone">  <br> <br>
				<input type="submit" value="Submit"
					style="height: 30px; width: 90px;">
			</form>
		</div>	
		<div class="column2">
			<%
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
		</div>

	</div>

</body>
</html>