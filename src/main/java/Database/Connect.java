package Database;

import java.sql.*;

public class Connect {
	private static final String host="locahost";
	private static final int port=3306;
	private static final String dataBase="hotel";
	private static final String user="root";
	private static final String password="$praneethK2417";
	
	private static Connection conn;
	
	public static Connection setConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//conn=DriverManager.getConnection("jdbc:mysql://"+host+":"+port+"/"+dataBase, user, password);
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel", "root", "$praneethK2417");
			System.out.println("Connected.");
		}catch(Exception e) {
			conn=null;
			System.out.println(e);
		}
		
		return conn;
	}
	
	
	public static void closeConnection() {
		try {
			conn.close();
		}catch(Exception e) {
			
		}
	}
	
	
}
