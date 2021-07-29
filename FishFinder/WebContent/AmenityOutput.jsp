<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.io.IOException, java.sql.*, Queries.AmenityQueries, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AmenityOutput</title>
</head>
<body bgcolor = "#b3e6e4">
	<form action="LandingPg.jsp">
		<br> <input type="submit" value="Home"  style="height:50px; width:150px">
	</form>
	<%
 
 	String zone = request.getParameter("amenity_zone");
 	String zoneR = TrialClass.zoneQ(zone);
 
 	String type = request.getParameter("amenity_type");
 	String typeR = TrialClass.typeQ(type);
 	
 	String name = request.getParameter("amenity_name");
 	String nameR = TrialClass.nameQ(name);
 	
 	String desc = request.getParameter("amenity_description");
 	String descR = TrialClass.descQ(desc);
 	
 	String intQ = TrialClass.Intersect(zoneR, typeR, nameR, descR);
 	
 	String joinQuery = TrialClass.join(intQ);
 
 	String host = "localhost";
	String dbName ="XE";
	int port = 1521;
	String oracleURL ="jdbc:oracle:thin:@"+host+":"+port+":"+dbName;
	String username = "system";
	String password = "1luvBball";
 
 	
 	if(joinQuery.isEmpty()){
		out.print("<h2>empty string</h2>  <br><br>");
	}
 	else{
 		try{
 	 		
 	 	 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	 		Connection con = DriverManager.getConnection(oracleURL, username, password);
 	 		PreparedStatement st = con.prepareStatement(joinQuery);
 	 		ResultSet rs = st.executeQuery();
 	 		
 	 		if(rs.isBeforeFirst()) {
 				int i = 1;
 				out.print("<h2>Result</h2>");
 				
 				out.print("<table border='1'><tr><th>Count</th><th>Zone</th><th>Type</th><th>Name</th><th>Description</th></tr>");
 			while (rs.next()) 
 			{
 				out.print("<tr><td>");
 				out.print(i + "</td>");
 				i++;
 				out.print("<td>"+ rs.getString("location")+ "</td>");
 				out.print("<td>"+ rs.getString("Amenity_type")+ "</td>");
 				out.print("<td>"+ rs.getString("rname")+ "</td>");
 				out.print("<td>"+ rs.getString("Description")+ "</td>");
 				out.print("</tr>");
 				 
 				
 				
 				
 			}
 		}
 	 	}
 	 	 catch (ClassNotFoundException e) {
 	 		
 	 		e.printStackTrace();
 	 	} catch (SQLException e) {
 	 		// Due to Connection object
 	 		e.printStackTrace();
 	 	}
 	}
 	
 	%>
</body>
</html>