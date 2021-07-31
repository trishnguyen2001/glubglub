<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.io.IOException, java.sql.*, Queries.ShowQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Output</title>
</head>
<body bgcolor = "#b3e6e4">

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"  style="height:50px; width:150px">
	</form>

	<h1>RESULTS FOR:</h1>

	<%
		System.out.println("NEW OUTPUT");
		String show_name = request.getParameter("showName");
		out.print("NAME: " + show_name + "</br></br>");

		String show_time = request.getParameter("showTime");
		out.print("TIME: " + show_time + "</br></br>");

		String show_animal = request.getParameter("showAnimal");
		out.print("SHOW ANIMAL: " + show_animal + "</br></br>");
	%>


	<form action="ShowInput.jsp">
		<input type="submit" value="Back"  style="height:50px; width:150px">
	</form>

	<br>
	<br>


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


	<hr>

</body>
</html>