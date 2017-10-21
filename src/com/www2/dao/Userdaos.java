package com.www2.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.www2.bean.User;
import com.www2.util.JdbcUtils;

public class Userdaos {
    String psw = null;  
    Connection con =null;  
    PreparedStatement pstmt =null;  
    ResultSet rs = null;  
	 public String findUsername(String id){  

	        try {  
	            con = JdbcUtils.getConnection();
	            
	            String sql = "select * from userid where id=?";  
	            pstmt = con.prepareStatement(sql);  
	            pstmt.setString(1, id);  
	            rs = pstmt.executeQuery();
	   /*         if(rs.getString("id")=="1"){
	            	psw="1";
	            }*/
	            if(rs==null){  
	                return null;  
	            }  
	            if(rs.next()){  
	                psw=rs.getString("password");  
	            }else{  
	                psw=null;  
	            }  
	        }catch (SQLException e) {  
	            e.printStackTrace();  
	        }finally {  
	            try {  
	                if(pstmt!=null)pstmt.close();  
	                if(con!=null)con.close();  
	                }   
	            catch (SQLException e) {          
	             }  
	        }  
	        return psw;  
	    }  
	 public void uppw(User u,long id){
		 String sql = "update userid set password=? where id=? ";
			try {
				con = JdbcUtils.getConnection();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, u.getPassword());
				pstmt.setLong(2, u.getUserid());
				pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				JdbcUtils.releaseConnection(con);
			}
	 }
}
