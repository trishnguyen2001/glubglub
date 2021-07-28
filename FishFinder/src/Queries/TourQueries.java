package Queries;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TourQueries {
	
	private Connection con;
	private Statement stmt;
	
	public TourQueries() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "newOracle");
			stmt = con.createStatement();

		} catch (Exception e) {
			System.out.println("ERROR: " + e.getMessage());
		}	
	}
	
	public String tourNameQuery(String tourName) {
		System.out.println("EXECUTING: tourNameQuery");
		
		if(tourName == null || tourName.equals("")) {
			System.out.println("EXECUTING: empty genNameQuery");
			return "SELECT T.tourID FROM Tour T";	
		}
		
		tourName = tourName.replaceAll(" ", "");
		
		
		return "SELECT T.tourID FROM Tour T WHERE T.tName LIKE '%" + tourName + "%'";	
	}
	
	
	public ResultSet intersection(String nq) throws SQLException {
		return stmt.executeQuery(	"SELECT T.tName, T.time, ZT.zoneID " + 
									"FROM Tour T, ZoneTours ZT " +
									"WHERE T.tourID IN (" + nq + ") " +  
									"AND T.tourID = ZT.tourID " +
									"ORDER BY T.tourID" 
								);
	}

}
