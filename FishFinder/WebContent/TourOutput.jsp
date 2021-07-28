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
<body>

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home">
	</form>
	
	<h1>RESULTS FOR:  </h1>
	
	<%
		System.out.println("NEW OUTPUT");
		String tour_name = request.getParameter("tourName");
		out.print("NAME: " + tour_name+ "</br></br>");
		
		
	%>
	
	
	<form action="TourInput.jsp">
		<input type="submit" value="Back">
	</form>

	<br>
	<br>
	
	
	<%
		out.print("<table border ='1'>	" + "<tr>" + "<th>#</th>" + "<th>Tour Name</th>" + "<th>Time</th>" + "<th>Zone</th>" + "</tr>");

		TourQueries tq = new TourQueries();
		ResultSet rs = tq.intersection(tq.tourNameQuery(tour_name));
		

		try {
			int counter = 1;
			while (rs.next()) {
				//String current = rs.getString("general_name");
				
				out.print("<tr>");
				out.print("<td> " + counter + " </td>"); 							//result counter
				out.print("<td>" + rs.getString("tName") + "</td>"); 			//retrieves zone 
				out.print("<td>" + rs.getString("time") + "</td>"); 		//retrieves habitat
				out.print("<td>" + rs.getString("zoneID") + "</td></tr>"); 	//retrieves general name
				
				
				
				/* out.print("<td>");
				ArrayList<String> tags = aq.tags(current);
				for(String t: tags){
					out.print(t);
					out.println("<br>");
				}
				out.print("</td>"); 
				out.print("</tr>"); */
				
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