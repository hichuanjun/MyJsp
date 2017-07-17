package org.util;

import java.sql.*;

public class GetConnection {
	static String url; 
	static String username;
	static String psd;
	 public static Connection getOracleConnection() throws ClassNotFoundException, SQLException{
		url = "jdbc:oracle:thin:@localhost:1521:orcl";
		username = "scott";
		psd = "tiger";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url,username,psd);
		return con;
		
	}
	
	 public static Connection getMysqlConnection() throws ClassNotFoundException, SQLException{
			url = "jdbc:mysql:localhost:3306/test?useUnicode=true&characterEncoding=gbk;useUnicode=true";
			username = "scott";
			psd = "tiger";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url,username,psd);
			return con;
			
		}
	 
	 
	 
	
}
