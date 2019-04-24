package Model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {
	private ConnectionClass() {}
	
	public static Connection getConnection() {

		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courierts", "root", "root");
		} catch (Exception E) {
			System.out.println("Exception : "+E);
		}
		return con;

	}
}
