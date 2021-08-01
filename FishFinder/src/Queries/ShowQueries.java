package Queries;

import java.sql.*;

public class ShowQueries{
	private Connection con;
	private Statement stmt;

	public ShowQueries() {
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

		return "SELECT L.liveshowID FROM LiveShow L WHERE L.sTime LIKE '%" + time + "%'";	
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
	
	//output display --> formats and shows records returned by intersecting of all query
	public ResultSet intersection(String nq, String tq, String zq) throws SQLException {
		return stmt.executeQuery("SELECT  LS.liveshowid, LS.sname AS Show_Name, "
				+ "REGEXP_REPLACE(CONCAT(' ', LISTAGG(E.ename, ', ') WITHIN GROUP (ORDER BY E.employeeid)), '([^,]+)(,\\1)+','\\1') AS Presenter, "
				+ "LS.stime AS Show_Time, APIS.general_name AS Animals_Included "
				+ "FROM LiveShow LS, AnimalPerformsInShow APIS, ShowPresenter SP, Employee E "
				+ "WHERE LS.liveshowid=APIS.liveshowid AND APIS.liveshowid=SP.liveshowid AND SP.employeeid=E.employeeid AND LS.liveshowid IN ((" + nq + ") INTERSECT (" + tq + ") INTERSECT (" + zq + ")) "      
				+ "GROUP BY LS.liveshowid, LS.sname, LS.stime, APIS.general_name "
				+ "ORDER BY LS.liveshowid" 
			);
	}

}
