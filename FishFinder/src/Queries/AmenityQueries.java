package Queries;

import java.sql.*; 
import java.util.HashMap;

public class AmenityQueries {
	private Connection con;
	private PreparedStatement stmt;
	
	HashMap<String, String> rstrntOut; 

	public AmenityQueries() {
		try {

			String host = "localhost";
			String dbName = "xe";
			int port = 1521;
			String oracleURL = "jdbc:oracle:thin:@" + host + ":" + port + ":" + dbName;
			String userName = "system";
			String password = "Oracle.com0709";

			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(oracleURL, userName, password);
		
			this.insertCuisine();

		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public PreparedStatement prepStmt(String query) {
		try {
			stmt = con.prepareStatement(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return stmt;
	}

	public String zoneQ(String data) {
		if(data == null || data.equals("")) {
			return "SELECT Amenity.amenityID from Amenity ";
		}

		data = data.toUpperCase();
		return "SELECT Amenity.amenityID FROM Amenity WHERE location = '"+data+"' ";

	}

	public String nameQ(String data) {
		if(data == null || data.equals("")) {
			return "SELECT Amenity.amenityID from Amenity ";
		}
		data = data.toUpperCase();
		return "SELECT Restaurant.amenityID FROM Restaurant WHERE rName LIKE '%" + data + "%' ";


	}

	public String descQ(String data) {
		if(data == null || data.equals("")) {
			return "SELECT Amenity.amenityID from Amenity ";
		}
		else if(data.equals("M")|| (data.equals("F"))){
			data = data.toUpperCase();
			return "SELECT Restroom.amenityID FROM Restroom WHERE gender = '" + data + "' ";
		}
		else if(data.contentEquals("$$")) {
			data = data.toUpperCase();
			return "SELECT Giftshop.amenityID FROM Giftshop WHERE price_range = '"+data+"' ";
		}
		else {
			data = data.toUpperCase();
			return "SELECT Restaurant.amenityID FROM Restaurant WHERE cuisine LIKE '%"+data+"%' ";
		}

	}

	public String typeQ(String data) {
		if(data == null || data.equals("")) {
			return "SELECT Amenity.amenityID from Amenity ";
		}
		data = data.toUpperCase();
		return "SELECT AmenityType.amenityID FROM AmenityType WHERE amenity_type = '" + data + "' ";
	}

	public void insertCuisine() throws SQLException, ClassNotFoundException{
		rstrntOut = new HashMap<>();
		System.out.println("insertCuisine START");
		ResultSet rs = stmt.executeQuery("SELECT R.rName, R.cuisine FROM Restaurant R ");
		while (rs.next()) {
			String rest = rs.getString("rName");
			String cuisine = rs.getString("cuisine");
			rstrntOut.put(rest, cuisine);
			System.out.println("<rest = " + rest + ", cuisine = " + cuisine + ">");
		}
		stmt.close();
	}

	
	public String getCuisine(String rName) throws SQLException{
		return rstrntOut.get(rName);
	}

	public String intersect(String zone,String type,String name ,String desc) {
		//		String intersectQ = "(";
		//
		//		if(!zone.isEmpty()) {
		//			intersectQ += zone;
		//		}
		//		if(!type.isEmpty() && !intersectQ.isEmpty()) {
		//			intersectQ += ") INTERSECT (" + type;
		//		}
		//		else if(!type.isEmpty() && intersectQ.isEmpty()) {
		//			intersectQ += type;
		//		}
		//		if(!name.isEmpty() && !intersectQ.isEmpty()) {
		//			intersectQ += ") INTERSECT (" + name;
		//		}
		//		else if(!name.isEmpty() && intersectQ.isEmpty()) {
		//			intersectQ += name;
		//		}
		//
		//		if(!desc.isEmpty() && !intersectQ.isEmpty()) {
		//			intersectQ += ") INTERSECT (" + desc;
		//		}
		//		else if(!desc.isEmpty() && intersectQ.isEmpty()) {
		//			intersectQ += desc;
		//		}
		//return intersectQ;

		return "(" + zone + ") INTERSECT (" + type + ") INTERSECT (" + name + ") INTERSECT (" + desc + ")";
	}

	public String join(String intersectQuery) {

		//		return "Select Amenity.location, AmenityType.amenity_type, Restaurant.rName, Restroom.gender AS Description "
		//				+ "FROM Amenity, AmenityType, Restaurant, Restroom "
		//				+ "WHERE Restroom.amenityID IN "
		//				+ "("+ intersectQuery + ")"
		//				+  " AND Amenity.amenityID=AmenityType.amenityID AND Amenity.amenityID=Restaurant.amenityID(+) AND amenity.amenityID=restroom.amenityID(+)"
		//				+ " UNION "
		//				+ "Select Amenity.location, AmenityType.amenity_type, Restaurant.rName, Restaurant.cuisine AS Description "
		//				+ "FROM Amenity, AmenityType, Restaurant, Restroom "
		//				+ "WHERE Restaurant.amenityID IN "
		//				+ "("+ intersectQuery + ")"
		//				+ " AND Amenity.amenityID=AmenityType.amenityID AND Amenity.amenityID=Restaurant.amenityID(+) AND Amenity.amenityID=Restroom.amenityID(+)"
		//				+  " UNION "
		//				+ "Select Amenity.location, AmenityType.amenity_type, Restaurant.rName, Giftshop.price_range AS Description "
		//				+ "FROM Amenity, AmenityType, Restaurant, Restroom,Giftshop "
		//				+ "WHERE Giftshop.amenityID IN "
		//				+ "("+ intersectQuery + ")"
		//				+ " AND Amenity.amenityID=AmenityType.amenityID AND Amenity.amenityID=Restaurant.amenityID(+) AND Amenity.amenityID=Restroom.amenityID(+) AND Amenity.amenityID=Giftshop.amenityID(+) "
		//				+ "ORDER BY 2 ";

		return "(SELECT A.location, AT.amenity_type, R.rName AS DESCRIPTION "
		+ "FROM Amenity A, AmenityType AT, Restaurant R "
		+ "WHERE A.amenityID IN (" + intersectQuery + ") "
		+ "AND A.amenityID = AT.amenityID AND A.amenityID = R.amenityID) "
		+ "UNION "
		+ "(SELECT A.location, AT.amenity_type, R.gender AS DESCRIPTION " 
		+ "FROM Amenity A, AmenityType AT, Restroom R " 
		+ "WHERE A.amenityID IN (" + intersectQuery + ") "
		+ "AND A.amenityID = AT.amenityID AND A.amenityID = R.amenityID) "
		+ "UNION "
		+ "(SELECT A.location, AT.amenity_type, G.price_range AS DESCRIPTION " 
		+ "FROM Amenity A, AmenityType AT, Giftshop G " 
		+ "WHERE A.amenityID IN (" + intersectQuery + ") " 
		+ "AND A.amenityID = AT.amenityID AND A.amenityID = G.amenityID) "
		+ "ORDER BY 2";
	}
}