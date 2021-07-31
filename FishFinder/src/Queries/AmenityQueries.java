package Queries;

import java.sql.*; 
import java.util.HashMap;

public class AmenityQueries {
	private Connection con;
	private Connection con2;
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
			con2 = DriverManager.getConnection(oracleURL, userName, password);
			
			insertCuisine();
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}

	public PreparedStatement prepStmt(String query) {
		try {
			stmt = con.prepareStatement(query);
		} catch (SQLException e) {
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

	public String descQ(String data) {
		System.out.println("AMQ: descQ: " +  data );
		if(data == null || data.equals("")) {
			return "SELECT Amenity.amenityID from Amenity ";
		}
		else if(data.equals("M")|| (data.equals("F"))){
			data = data.toUpperCase();
			return "SELECT Restroom.amenityID FROM Restroom WHERE gender = '" + data + "' ";
		}
		else if(data.contentEquals("$$")) {
			data = data.toUpperCase();
			return "SELECT Giftshop.amenityID FROM Giftshop WHERE price_range = '" + data + "' ";
		}
		else {
			data = data.toUpperCase();
			return "SELECT amenityID FROM Restaurant WHERE rName LIKE '%" + data + "%' OR cuisine LIKE '%" + data + "%' ";
		}
	}

	public String typeQ(String data) {
		if(data == null || data.equals("")) {
			return "SELECT Amenity.amenityID from Amenity ";
		}
		data = data.toUpperCase();
		return "SELECT AmenityType.amenityID FROM AmenityType WHERE amenity_type LIKE '%" + data + "%' ";
	}

	public void insertCuisine() throws SQLException, ClassNotFoundException{
		rstrntOut = new HashMap<>();
		System.out.println("insertCuisine START");
		stmt = con2.prepareStatement("SELECT R.rName, R.cuisine FROM Restaurant R ");
		ResultSet rs = stmt.executeQuery();
		while (rs.next()) {
			String rest = rs.getString("rName");
			String cuisine = rs.getString("cuisine");
			rstrntOut.put(rest, cuisine);
		}
	}
	
	public String getCuisine(String rName) throws SQLException{
		return rstrntOut.get(rName);
	}
	
	public String intersect(String zone, String type, String desc) {
		return "(" + zone + ") INTERSECT (" + type + ") INTERSECT (" + desc + ")";
	}

	public String join(String intersectQuery) {
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