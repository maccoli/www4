package com.www2.bean;

import java.security.Timestamp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.Useraim;

public class Aimbean {
	  Connection con;
	    PreparedStatement pre;
	    ResultSet rs;
	    public Aimbean(){
	    	try{
	    		Class.forName("com.mysql.jdbc.Driver");
	    	}catch(ClassNotFoundException e){
	    		e.printStackTrace();
	    		}
	    	try{
	    		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/www","root","root");
	    		
	    	}catch(SQLException e){
	    		e.printStackTrace();
	    	}
	    	
	    }
		@SuppressWarnings("unchecked")
		public List getSearch(String sql){
	    	 List list=new ArrayList();
	    	 try{
	    		 pre=con.prepareStatement(sql);
	    		 rs=pre.executeQuery();
	    		 while(rs.next())
	    		 {
	    			 Useraim ua=new Useraim();
	    			 ua.setAim(rs.getString("aim"));
	    			 ua.setStime(rs.getTimestamp("stime"));
	    			 ua.setFinish(rs.getString("finish")); 			
	    			 list.add(ua);   
	    		 }
	    	 }catch(SQLException e){
	    		 e.printStackTrace();
	    	 }
	    	   finally
	    	 	{ 
	    	 		try{
	    	 			pre.close();
	    	 			con.close();
	    	 		}
	    	 		catch(SQLException e){
	    	 			e.printStackTrace();
	    	 		}
	    	     }
	    	     return list;
	    	     }

		
}
