package com.www2.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DButil {
	private static Connection conn;
	private static String url="jdbc:mysql://localhost:3306/www?user=root&password=root&useUnicode=true&characterEncoding=utf8";
	static{
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	public static boolean openConnection(){
		try{
			if(conn==null||conn.isClosed()){
				conn=DriverManager.getConnection(url);
				return true;
		}
	
	}catch(SQLException e){
		e.printStackTrace();
		return false;
	}
		return false;
  }
	
	public static boolean closeConnection() throws SQLException{
		if(conn!=null&&!conn.isClosed())
			conn.close();
		return false;
	}
	public static ResultSet executSql(String sql) throws SQLException{
		Statement st=conn.createStatement();
		return st.executeQuery(sql);
	}
	public static boolean executNoSql(String sql) throws SQLException{
		Statement st=conn.createStatement();
		st.executeUpdate(sql);
		return true;
	}
}
