package Queries;

import java.sql.*;
import java.util.ArrayList;

public class AnimalQueries{
	private Connection con;
	private Statement stmt;
		
		public AnimalQueries() {
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Oracle.com0709");
				stmt = con.createStatement();

			} catch (Exception e) {
				System.out.println("ERROR: " + e.getMessage());
			}	
		}
		
		public String genNameQuery(String genName){
			System.out.println("EXECUTING: genNameQuery");
			
			if(genName == null || genName.equals("")) {
				System.out.println("EXECUTING: empty genNameQuery");
				return "SELECT A.general_name FROM Animal A";	
			}
			return "SELECT A.general_name FROM Animal A WHERE A.general_name LIKE '%" + genName + "%'";	
		}	
		
		public String zoneQuery(String zone){
			System.out.println("EXECUTING: zoneQuery");
			
			if(zone == null || zone.equals("")) {
				System.out.println("EXECUTING: empty zoneQuery");
				return "SELECT A.general_name FROM Animal A";	
			}
			zone = zone.toUpperCase();
			zone = zone.replaceAll("//s+", "");
			return "SELECT A.general_name FROM Animal A, AnimalInsideZone AIZ " +  
					"WHERE AIZ.zoneID LIKE '%" + zone + "%' AND A.general_name = AIZ.general_name";	
		}
		
		
		public String habitatQuery(String habitat){
			System.out.println("EXECUTING: habitatQuery");
			
			if(habitat == null || habitat.equals("")) {
				System.out.println("EXECUTING: empty habitatQuery");
				return "SELECT A.general_name FROM Animal A";	
			}
			habitat = habitat.toUpperCase();
			habitat = habitat.replaceAll(" ", "");
			return "SELECT A.general_name FROM Animal A, AnimalInsideZone AIZ " +  
					"WHERE AIZ.habitatID='" + habitat + "' AND A.general_name = AIZ.general_name";	
		}
		
		public String tagQuery(String tag){
			System.out.println("EXECUTING: tagQuery");
			
			if(tag == null || tag.equals("")) {
				System.out.println("EXECUTING: empty tagQuery");
				return "SELECT A.general_name FROM Animal A";	
			}
			tag = tag.toLowerCase();
			return "SELECT A.general_name FROM Animal A, VisitorTags VT " +  
					"WHERE VT.tag_description LIKE '%" + tag + "%' AND VT.general_name = A.general_name";	
		}
		
		
//		public ArrayList<String> tags(String genName) throws SQLException{
//			ResultSet rs = stmt.executeQuery(
//					"SELECT V.vName, VT.tag_description " + 
//					"FROM Animal A, Visitor V, VisitorTags VT " + 
//					"WHERE A.general_name = VT.general_name AND V.visitorID = VT.visitorID AND A.general_name LIKE '%"+ genName +"%'"
//					);
//			ArrayList<String> tags = new ArrayList<>();
//			int counter = 0;
//			while(rs.next()) {
//				System.out.println("rs " + counter);
//				tags.add("'" + rs.getString(1) + "'   - " + rs.getString(2));
//				counter++; 
//			}
//			System.out.println("AnimalQueries: tags: " + tags.toString());
//			return tags;
//		}
		
//		public ResultSet intersection(String nq, String zq, String hq, String tq) throws SQLException {
//			return stmt.executeQuery(	"SELECT A.general_name, A.scientific_name, AIZ.habitatID, AIZ.zoneID " + 
//										"FROM Animal A, AnimalInsideZone AIZ " +
//										"WHERE A.general_name IN ((" + nq + ") INTERSECT (" + zq + ") INTERSECT (" + hq + ") INTERSECT (" + tq + ")) " +  
//										"AND A.general_name = AIZ.general_name " +
//										"ORDER BY 1" 
//									);
//		}
	//	
//		public ArrayList<String> intersectList(ResultSet rs) throws SQLException{
//			ArrayList<String> tags = new ArrayList<>();
//			int counter = 0;
//			while(rs.next()) {
//				System.out.println("rs " + counter);
//				tags.add("'" + rs.getString(1) + "'   - " + rs.getString(2));
//				counter++; 
//			}
//			System.out.println("AnimalQueries: list: " + tags.toString());
//			return tags;
//		}
		
		
		public ResultSet intersection(String nq, String zq, String hq, String tq) throws SQLException {
			return stmt.executeQuery(	"SELECT A.general_name, A.scientific_name, AIZ.habitatID, AIZ.zoneID, V.vName, VT.tag_description " + 
										"FROM Animal A, AnimalInsideZone AIZ, Visitor V, VisitorTags VT " +
										"WHERE A.general_name IN ((" + nq + ") INTERSECT (" + zq + ") INTERSECT (" + hq + ") INTERSECT (" + tq + ")) " +  
										"AND A.general_name = AIZ.general_name AND V.visitorID = VT.visitorID AND VT.general_name = A.general_name " +
										"ORDER BY 1" 
									);
		}
		
		
	}
