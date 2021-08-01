package Queries;

import java.sql.*;

public class TourQueries {

	private Connection con;
	private Statement stmt;

	public TourQueries() {
		try {
			String host = "localhost";
			String dbName = "xe";
			int port = 1521;
			String oracleURL = "jdbc:oracle:thin:@" + host + ":" + port + ":" + dbName;
			String username = "system";
			String password = "Oracle.com0709";

			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(oracleURL, username, password);
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
		
		return "SELECT T.tourID FROM Tour T WHERE T.tTime LIKE '%" + time + "%'";	
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
	
	//output display --> formats and shows records returned by intersecting of all query
	public ResultSet intersection(String nq, String tq, String zq) throws SQLException {
		return stmt.executeQuery("SELECT T.tourid, T.tname AS Tour_Name, "
				+ "REGEXP_REPLACE(CONCAT(' ', LISTAGG(E.ename, ', ') WITHIN GROUP (ORDER BY E.employeeid)), '([^,]+)(,\\1)+','\\1') AS Tour_Guides, "
				+ "T.ttime AS Tour_Time, "
				+ "REGEXP_REPLACE(CONCAT(' ', LISTAGG(zoneID, ', ') WITHIN GROUP (ORDER BY zoneID)), '([^,]+)(,\\1)+','\\1') AS Zones "
				+ "FROM Tour T, ZoneTours ZT, TourGuide TG, Employee E "
				+ "WHERE T.tourid=ZT.tourid AND T.tourid=TG.tourid AND TG.employeeid=E.employeeid AND T.tourID IN ((" + nq + ") INTERSECT (" + tq + ") INTERSECT (" + zq + ")) "
				+ "GROUP BY T.tourid, T.tname, T.ttime" 
			);
	}
	
	//input display --> formats and shows all records
	public ResultSet tourInputDisplay() throws SQLException {
		return stmt.executeQuery("SELECT T.tourid, T.tname AS Tour_Name, "
				+ "REGEXP_REPLACE(CONCAT(' ', LISTAGG(E.ename, ', ') WITHIN GROUP (ORDER BY E.employeeid)), '([^,]+)(,\\1)+','\\1') AS Tour_Guides, "
				+ "T.ttime AS Tour_Time, "
				+ "REGEXP_REPLACE(CONCAT(' ', LISTAGG(zoneID, ', ') WITHIN GROUP (ORDER BY zoneID)), '([^,]+)(,\\1)+','\\1') AS Zones "
				+ "FROM Tour T, ZoneTours ZT, TourGuide TG, Employee E "
				+ "WHERE T.tourid=ZT.tourid AND T.tourid=TG.tourid AND TG.employeeid=E.employeeid "
				+ "GROUP BY T.tourid, T.tname, T.ttime" 
			);

	}


}
