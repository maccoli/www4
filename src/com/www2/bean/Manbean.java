package com.www2.bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.User;

public class Manbean {
	  Connection con;
	    PreparedStatement pre;
	    ResultSet rs;
	    public Manbean(){
	    	try{
	    		Class.forName("com.mysql.jdbc.Driver");
	    	}catch(ClassNotFoundException e){
	    		e.printStackTrace();
	    		}
	    	try{
	    		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","root");
	    		
	    	}catch(SQLException e){
	    		e.printStackTrace();
	    	}
	    	
	    }
	    public int getInsert(String sql,User jBean){
	    	int count=0;
	    	try{
	    		pre=con.prepareStatement(sql);
	    		pre.setString(1,jBean.getHeadp());
	    		pre.setString(2, jBean.getNickname());
	    		pre.setString(3, jBean.getSex());
	    /*		pre.setLong(4, jBean.getIphone());*/
	    		pre.setString(4, jBean.getPersonsign());
	    		pre.setString(5, jBean.getPersonhonor());
	    		pre.setString(6, jBean.getCotacti());
	    		pre.setString(7,jBean.getGroupid());
	    		count=pre.executeUpdate();
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
	    	return count;
	    }
	    public int getDelete(String sql,int id)
	    {int count=0;
	    try{
	    	pre=con.prepareStatement(sql);
	    	pre.setInt(1,id);
	    	count=pre.executeUpdate();
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
	    return count;
	    }
	     public User getSearchById(String sql,int id){
	    	 User jBean=new User();
	    	 try{
	    		 pre=con.prepareStatement(sql);
	    		 pre.setInt(1, id);
	    		 rs=pre.executeQuery();
	    		 while(rs.next())
	    		 {
	    		/*	 jBean.setHeadp(rs.getString("headp"));*/
	    			 jBean.setNickname(rs.getString("nickname"));
	    			 jBean.setSex(rs.getString("sex"));
	    			 jBean.setPersonsign(rs.getString("personsign"));
	    			 jBean.setPersonhonor(rs.getString("personhonor"));
	    			 jBean.setCotacti(rs.getString("cotacti"));
	    			 jBean.setGroupid(rs.getString("groupid"));
	    		 }
	    	 }catch(SQLException e){
	    		 e.printStackTrace();
	    	 }
	    	 return jBean;
	     }
	     public int getUpdate(String sql,User jBean)
	     { int count=0;
	     try{
	    	 pre=con.prepareStatement(sql);
	    		pre.setString(1,jBean.getHeadp());
	    		pre.setString(2, jBean.getNickname());
	    		pre.setString(3, jBean.getSex());

	    		pre.setString(4, jBean.getPersonsign());
	    		pre.setString(5, jBean.getPersonhonor());
	    		pre.setString(6, jBean.getCotacti());
	    		pre.setString(7,jBean.getGroupid());
	    		pre.setInt(8,jBean.getId());
	    	 count=pre.executeUpdate();
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
	     return count;
	     }
	     @SuppressWarnings({ "rawtypes", "unchecked" })
		public List getSearch(String sql){
	    	 List list=new ArrayList();
	    	 try{
	    		 pre=con.prepareStatement(sql);
	    		 rs=pre.executeQuery();
	    		 while(rs.next())
	    		 {
	    			 User jBean=new User();
                     jBean.setHeadp(rs.getString("headp"));
	    			 jBean.setNickname(rs.getString("nickname"));
	    			 jBean.setSex(rs.getString("sex"));
	    			 jBean.setPersonsign(rs.getString("personsign"));
	    			 jBean.setPersonhonor(rs.getString("personhonor"));
	    			 jBean.setCotacti(rs.getString("cotacti"));
	    			 jBean.setGroupid(rs.getString("groupid"));

	    			 list.add(jBean);
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
