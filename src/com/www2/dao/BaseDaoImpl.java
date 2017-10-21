package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

//import org.junit.Test;



import com.www2.bean.*;
import com.www2.util.JdbcUtils;

public class BaseDaoImpl {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;


	public void add(User user) {
		String sql = "insert into userid(id,password,headp,nickname)"
				+ " values(?,?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, user.getUserid());
			pst.setString(2, user.getPassword());
			pst.setString(3, "moren.jpg");
			pst.setLong(4, user.getUserid());
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
    //修改个人资料
	public void Pcenter(User manmg,long id) {
		String sql = "update userid set nickname=?,sex=?,personsign=?,personhonor=?,cotacti=? where id=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, manmg.getNickname());
			pst.setString(2, manmg.getSex());
			pst.setString(3, manmg.getPersonsign());
			pst.setString(4, manmg.getPersonhonor());
			pst.setString(5, manmg.getCotacti());
	        pst.setLong(6, id);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
	//修改个人中心头像
	public void Pcenter1(User manmg,long id) {
		String sql = "update userid set headp=? where id=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
        	pst.setString(1, manmg.getSavedFileName());
	        pst.setLong(2, id);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
     //修改小组头像；
	public void Groupp(String fileName,long groupid){
		String sql = "update team set groupp=? where groupid=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
        	pst.setString(1,fileName);
	        pst.setLong(2, groupid);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
	
	//修改小组资料
	public void Groups(Group gp2,long groupid) {
		String sql = "update team set groupaim=?,groupaims=?,grouphonor=? where groupid=?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
        	pst.setString(1,gp2.getGroupaim());
        	pst.setString(2, gp2.getGroupaims());
        	pst.setString(3, gp2.getGrouphonor());
	        pst.setLong(4,groupid);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	}
	
	//显示个人资料；
	public List<User> getMan(long hisid){
		List<User> users=new ArrayList<>();
		String sql="select * from userid where id =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,hisid); 
			rs = pst.executeQuery();
			while (rs.next()) {
				User us = new User(
						rs.getLong("id"),
						rs.getString("nickname"),
						rs.getString("sex"),
						rs.getString("personsign"),
						rs.getString("personhonor"),
						rs.getString("cotacti"),
						rs.getString("groupid"),
						rs.getString("headp"),
						rs.getInt("point"));
				users.add(us);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return users;
	}
//显示小组信息：
	public List<Group> getGroup(long groupid){
		List<Group> gps=new ArrayList<>();
		String sql="select groupid,groupname,groupaim,groupaims,grouphonor,groupp from team where groupid = ?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,groupid); 
			rs = pst.executeQuery();

			while (rs.next()) {
				Group gp1 = new Group(
						rs.getLong("groupid"),
						rs.getString("groupname"),
						rs.getString("groupaim"),
						rs.getString("groupaims"),
						rs.getString("grouphonor"),
						rs.getString("groupp"));
				gps.add(gp1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return gps;
	}
	//显示小组成员昵称。头像；
	public List<User> getGroup2(long groupid){
	 	/*  String[] sMemberName=new String[5];
	       String[] sMemberSrc = new String[5];*/
		List<User> gps2=new ArrayList<>();
		String sql="select nickname,headp,captain from userid where groupid =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,groupid); 
			rs = pst.executeQuery();
			while (rs.next()) {
				User us=new User(
						rs.getString("nickname"),
						rs.getString("headp"),
						rs.getString("captain"));
		/*		for(int i=0;i<sMemberName.length;i++){
					sMemberName[i]=rs.getString("nickname");
				}
				us.setsMemberName(sMemberName);*/
				gps2.add(us);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return gps2;
	}
	
/*	public Useraim ufind(Useraim ua) {
		String sql = "select * from todayaim where id = ?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1, ua.getId()); 
			rs = pst.executeQuery();
			if (rs.next()) {
				Useraim au = new Useraim(rs.getLong("id"),
						rs.getString("finish"));
				return au; 
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return null;
	}
*/
	public void fupdate(HashMap<String, String>values,long id,String table) {	   
	    Set<String> sets=values.keySet();
	    Iterator<String>iter=sets.iterator();
	    while(iter.hasNext()){
	    	String aims=iter.next();
	    	String fias=values.get(aims);
		String sql = "update "
				+ table+" set finish= ? where aim=? and id=? ";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setString(1, fias);
			pst.setString(2, aims);
			pst.setObject(3,id);
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
	    }
	}
	
	//修改目标完成状态
	public void fupdate2(HashMap<String, String>values,long id,String table) {	   
	 Set<String> sets=values.keySet();
     Iterator<String>iter=sets.iterator();
     while(iter.hasNext()){
		String waims=iter.next();
		String wfias=values.get(waims);
	    String sql = "update "
	    		+ table+" set wfinish=?,ctime=? where waim=? and id=? ";
		try {
				con = JdbcUtils.getConnection();
				pst = con.prepareStatement(sql);
				pst.setString(1, wfias);
	     	    SimpleDateFormat stm=new SimpleDateFormat("yyyy-MM-dd");
				pst.setObject(2, new java.util.Date());
				pst.setString(3, waims);
				pst.setObject(4,id);
				pst.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					pst.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				JdbcUtils.releaseConnection(con);
			}
}
}
	
	public List<Useraim> getAim(long id){
		List<Useraim> useraims=new ArrayList<>();
		String sql="select aim,finish,stime from todayaim where id =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Useraim au = new Useraim(
						rs.getString("aim"),
						rs.getString("finish"),
						rs.getDate("stime"));
				useraims.add(au);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return useraims;
	}
	public List<Useraim> getwAim(long id){
		List<Useraim>  wuseraims=new ArrayList<>();
		String sql="select waim,wfinish,wtime,stime,ctime from weekaim where id =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Useraim au2 = new Useraim(
						rs.getString("waim"),
						rs.getString("wfinish"),
						rs.getDate("wtime"),
						rs.getDate("stime"),
						rs.getDate("ctime"));
				 wuseraims.add(au2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return  wuseraims;
	}
/*	public List<Useraim> getAims(long id){
		List<Useraim> useraimss=new ArrayList<>();
		String sql="select aim,finish,stime from todayaim where id =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Useraim au = new Useraim(null,
						rs.getString("aim"),
						rs.getString("finish"),
						rs.getDate("stime"));
				useraimss.add(au);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return useraimss;
	}
	public List<Useraim> getwAims(long id){
		List<Useraim> list=new ArrayList<>();
		String sql="select waim,wfinish,wtime,stime from weekaim where id =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Useraim au = new Useraim(
						rs.getString("waim"),
						rs.getString("wfinish"),
						rs.getDate("stime"),
						rs.getDate("wtime"));
				list.add(au);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return list;
	}*/
}
