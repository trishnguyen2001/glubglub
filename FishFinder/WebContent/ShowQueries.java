package Queries;

import java.sql.*;

public class ShowQueries{
	private Connection con;
	private Statement stmt;

	public ShowQueries() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "Oracle.com0709");
			stmt = con.createStatement();

		} catch (Exception e) {
			System.out.println("ERROR: " + e.getMessage());
		}	
	}

	public String showNameQuery(String showName) {
		System.out.println("EXECUTING: showNameQuery");

		if(showName == null || showName.equals("")) {
			System.out.println("EXECUTING: empty showNameQuery");
			return "SELECT L.liveshowID FROM LiveShow L";	
		}
		showName = showName.toUpperCase();
		return "SELECT L.liveshowID FROM LiveShow L WHERE L.sName LIKE '%" + showName + "%'";	
	}

	public String timeQuery(String time) {
		System.out.println("EXECUTING: tourNameQuery");

		if(time == null || time.equals("")) {
			System.out.println("EXECUTING: empty timeQuery");
			return "SELECT L.liveshowID FROM LiveShow L";	
		}

		return "SELECT L.liveshowID FROM LiveShow L WHERE L.time LIKE '%" + time + "%'";	
	}

	public String showAnimalQuery(String animal) {
		System.out.println("EXECUTING: tourNameQuery");

		if(animal == null || animal.equals("")) {
			System.out.println("EXECUTING: empty showAnimalQuery");
			return "SELECT L.liveshowID FROM LiveShow L";	
		}
		animal = animal.toUpperCase();
		return "SELECT L.liveshowID FROM LiveShow L, AnimalPerformsInShow APIS WHERE APIS.general_name LIKE '%" + animal + "%' AND L.liveshowID = APIS.liveshowID";	
	}


	public ResultSet intersection(String nq, String tq, String aq) throws SQLException {
		return stmt.executeQuery(	"SELECT L.sName, L.time, APIS.general_name " + 
				"FROM LiveShow L, AnimalPerformsInShow APIS " +
				"WHERE L.liveshowID IN ((" + nq + ") INTERSECT (" + tq + ") INTERSECT (" + aq + ")) " +  
				"AND L.liveshowID = APIS.liveshowID " +
				"ORDER BY L.liveshowID" 
				);
	}

}
