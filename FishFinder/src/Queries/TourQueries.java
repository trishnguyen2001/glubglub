package Queries;

import java.sql.*;

public class TourQueries {
	
	private Connection con;
	private Statement stmt;
	
	public TourQueries() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Oracle.com0709");
			stmt = con.createStatement();

		} catch (Exception e) {
			System.out.println("ERROR: " + e.getMessage());
		}	
	}
	
	public String tourNameQuery(String tourName) {
		System.out.println("EXECUTING: tourNameQuery");
		
		if(tourName == null || tourName.equals("")) {
			System.out.println("EXECUTING: empty tourNameQuery");
			return "SELECT T.tourID FROM Tour T";	
		}
		tourName = tourName.toUpperCase();
		return "SELECT T.tourID FROM Tour T WHERE T.tName LIKE '%" + tourName + "%'";	
	}
	
	public String timeQuery(String time) {
		System.out.println("EXECUTING: tourNameQuery");
		
		if(time == null || time.equals("")) {
			System.out.println("EXECUTING: empty timeQuery");
			return "SELECT T.tourID FROM Tour T";	
		}
		
		return "SELECT T.tourID FROM Tour T WHERE T.time LIKE '%" + time + "%'";	
	}
	
	public String zoneQuery(String zone) {
		System.out.println("EXECUTING: tourNameQuery");
		
		if(zone == null || zone.equals("")) {
			System.out.println("EXECUTING: empty zoneQuery");
			return "SELECT T.tourID FROM Tour T";	
		}
		
		zone = zone.toUpperCase();
		return "SELECT T.tourID FROM Tour T, ZoneTours ZT WHERE ZT.zoneID = '" + zone + "' AND T.tourID = ZT.tourID";	
	}
	
	
	public ResultSet intersection(String nq, String tq, String zq) throws SQLException {
		return stmt.executeQuery(	"SELECT T.tName, T.time, ZT.zoneID " + 
									"FROM Tour T, ZoneTours ZT " +
									"WHERE T.tourID IN ((" + nq + ") INTERSECT (" + tq + ") INTERSECT (" + zq + ")) " +  
									"AND T.tourID = ZT.tourID " +
									"ORDER BY T.tourID" 
								);
	}
	
	public ResultSet tourInputDisplay() throws SQLException {
	return stmt.executeQuery( "SELECT T.tourid AS TourID, T.tname AS Tour_Name, T.time AS Tour_Time, LISTAGG(zoneID, ', ') WITHIN GROUP (ORDER BY zoneID) AS Zone_Listing "
			+ "FROM Tour T "
			+ "LEFT OUTER JOIN ZoneTours ZT "
			+ "ON T.tourid=ZT.tourid "
			+ "GROUP BY T.tourid, T.tname, T.time"
			);

	}

}
