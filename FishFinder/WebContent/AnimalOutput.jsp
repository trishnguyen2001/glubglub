<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.IOException, java.sql.*, Queries.AnimalQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home">
	</form>
	
	
	<h1>RESULTS FOR:  </h1>
	
	<%
		System.out.println("NEW OUTPUT");
		String animal_name = request.getParameter("animal_name");
		out.print("NAME: " + animal_name+ "</br></br>");
		
		String zone = request.getParameter("zone");
		out.print("ZONE: " + zone + "</br></br>");
		
		String habitat = request.getParameter("habitat");
		out.print("HABITAT: " + habitat+ "</br></br>" );
		
		String tag = request.getParameter("tag");
		out.print("TAG: " + tag + "</br></br>");
	%>	

	<form action="AnimalInput.jsp">
		<input type="submit" value="Back">
	</form>

	<br>
	<br>
	
	<%
		out.print("<table border ='1'>	" + "<tr>" + "<th>#</th>" + "<th>Zone</th>" + "<th>Habitat</th>" + "<th>General Name</th>" + "<th>Scientific Name</th>" 
				//+ "<th>Tags</th>" 
				+ "<th>Visitor</th>" + "<th>Tag</th>"
				+ "</tr>");

		AnimalQueries aq = new AnimalQueries();
		ResultSet rs = aq.intersection(aq.genNameQuery(animal_name), aq.zoneQuery(zone), aq.habitatQuery(habitat), aq.tagQuery(tag));

		try {
			int counter = 1;
			while (rs.next()) {
				//String current = rs.getString("general_name");
				
				out.print("<tr>");
				out.print("<td> " + counter + " </td>"); 							//result counter
				out.print("<td>" + rs.getString("zoneID") + "</td>"); 			//retrieves zone 
				out.print("<td>" + rs.getString("habitatID") + "</td>"); 		//retrieves habitat
				out.print("<td>" + rs.getString("general_name") + "</td>"); 	//retrieves general name
				out.print("<td>" + rs.getString("scientific_name") + "</td>"); 	//retrieves scientific name
				
				out.print("<td>"+ rs.getString("vName")+ "</td>");				//retrieves tag author 
				out.print("<td>"+ rs.getString("tag_description")+ "</td>");	//retrieves tag
				
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