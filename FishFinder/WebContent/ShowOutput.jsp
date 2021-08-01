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
<title>Show Output</title>
</head>
<body bgcolor = "#bde7fc">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home" style="height: 30px; width: 100px;">
	</form>

	<h1 style="font-family: verdana; font-size: 50px;" align="center">Results:</h1>

	<%
		String show_name = request.getParameter("showName");
		String show_time = request.getParameter("showTime");
		String show_animal = request.getParameter("showAnimal");
	%>

	<div class="row">
		<div class="column1">
			<p style="font-family: verdana; font-size: 16px;"><b>[Name]:</b> <% out.print(show_name); %></p>
			<p style="font-family: verdana; font-size: 16px;"><b>[Time]:</b> <% out.print(show_time); %></p>
			<p style="font-family: verdana; font-size: 16px;"><b>[Show Animal]:</b> <% out.print(show_animal); %></p>
		</div>
	</div>

	<div class="row">
		<div class="column2">
			<form action="ShowInput.jsp" style="margin-bottom: 5px;">
				<input type="submit" value="Back" style="height: 30px; width: 100px;">
			</form>
			<%
				out.print("<table border ='1' bgcolor='ffffff'>	" + "<tr>" + "<th>#</th>" + "<th>Show Name</th>"  + "<th>Presenter</th>"
					+ "<th>Time</th>" + "<th>Animals Included</th>" + "</tr>");
				ShowQueries sq = new ShowQueries();
				ResultSet rs = sq.intersection(sq.showNameQuery(show_name), sq.timeQuery(show_time),
						sq.showAnimalQuery(show_animal));
				try {
					int counter = 1;
					//FORMATTING:
					//String current = rs.getString("sName");
					while (rs.next()) {

						out.print("<tr>");
						out.print("<td> " + counter + " </td>"); 								//result counter
														
						out.print("<td>" + rs.getString("Show_Name") + "</td>");					//retrieves show name
						out.print("<td>" + rs.getString("Presenter") + "</td>"); 					//retrieves show presenter
						out.print("<td>" + rs.getString("Show_Time") + "</td>"); 					//retrieves show time
						out.print("<td>" + rs.getString("Animals_Included") + "</td>"); 			//retrieves animals included

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
	</div>
	
</body>
</html>