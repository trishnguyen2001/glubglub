<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="java.sql.*, Queries.ShowQueries, java.util.*, java.io.IOException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Input</title>
</head>
<body bgcolor = "#b3e6e4">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"  style="height:50px; width:150px">
	</form>

	<h1>Search</h1>

	<form action="ShowOutput.jsp">
		<b>Name: </b> <input type="text" name="showName"> <br> <br>
		<b>Time: </b> <input type="text" name="showTime"><br> <br>
		<b>Show Animals: </b> <input type="text" name="showAnimal"><br> <br>
		<input type="submit" value="Submit"  style="height:30px; width:90px">
	</form>

	<h1>All Shows</h1>

	<%
		String show_name = request.getParameter("showName");
		String show_time = request.getParameter("showTime");
		String show_animal = request.getParameter("showAnimal");

		out.print("<table border ='1' bgcolor='ffffff'>	" + "<tr>" + "<th>#</th>" + "<th>Show Name</th>" + "<th>Time</th>"
				+ "<th>Show Animals</th>" + "</tr>");
		ShowQueries sq = new ShowQueries();
		ResultSet rs = sq.intersection(sq.showNameQuery(""), sq.timeQuery(""), sq.showAnimalQuery(""));

		try {
			int counter = 1;
			//FORMATTING:
			//String current = rs.getString("sName");
			while (rs.next()) {

				out.print("<tr>");
				out.print("<td> " + counter + " </td>"); 								//result counter
				//out.print("<td>" + current + "</td>"); 								//FORMATTING:retrieves show name 
				out.print("<td>" + rs.getString("sName") + "</td>");					//retrieves show name
				out.print("<td>" + rs.getString("time") + "</td>"); 					//retrieves show time
				out.print("<td>" + rs.getString("general_name") + "</td>"); 				//retrieves zones passed through
				
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