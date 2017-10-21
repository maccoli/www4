package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.Contest;
import com.www2.bean.Recruitment;
import com.www2.bean.Simulation;
import com.www2.bean.Sustory;
import com.www2.util.JdbcUtils;

public class NoticDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//查询学员故事：
	public List<Sustory> getstory(int suid) {
          List<Sustory> sust=new ArrayList<>();
          String sql="select * from xygs where xygs_id=?";
          try{
  			  con = JdbcUtils.getConnection();
        	  pst = con.prepareStatement(sql);
  			  pst.setInt(1,suid); 
  			  rs = pst.executeQuery();
  			  while(rs.next()){
  				  Sustory sus=new Sustory(
                         rs.getString("xygs_til"),
                         rs.getDate("xygs_date"),
                         rs.getInt("xygs_liul"),
                         rs.getString("xygs_con"),
                         rs.getInt("xygs_zan"),
                         rs.getString("xygs_userhp"),
                         rs.getString("xygs_username"));
  				  sust.add(sus);
  			  }
          }catch (Exception e) {
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
  		return sust;
	}
	//查询大赛公告：
	public List<Contest> getcont(int cid) {
        List<Contest> contt=new ArrayList<>();
        String sql="select * from dsbm where dsbm_id=?";
        try{
			con = JdbcUtils.getConnection();
      	    pst = con.prepareStatement(sql);
			  pst.setInt(1,cid); 
			  rs = pst.executeQuery();
			  while(rs.next()){
				  Contest co=new Contest(
						  rs.getString("dsbm_til"),
						  rs.getString("dsbm_con"),
						  rs.getDate("dsbm_date"),
						  rs.getInt("dsbm_liul"));
				  contt.add(co);
			  }
        }catch (Exception e) {
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
		return contt;
	}
	//查询招聘任务：
		public List<Recruitment> getrecit(int rid) {
	        List<Recruitment> rect=new ArrayList<>();
	        String sql="select * from zpxx where zpxx_id=?";
	        try{
				con = JdbcUtils.getConnection();
	      	  pst = con.prepareStatement(sql);
				  pst.setInt(1,rid); 
				  rs = pst.executeQuery();
				  while(rs.next()){
					  Recruitment re=new Recruitment(
							  rs.getString("zpxx_til"),
							  rs.getString("zpxx_con"),
							  rs.getDate("zpxx_date"),
							  rs.getInt("zpxx_liul"));
					  rect.add(re);
				  }
	        }catch (Exception e) {
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
			return rect;
		}
		//查询实训任务；
		public List<Simulation> getsimun(int snid) {
	        List<Simulation> simu=new ArrayList<>();
	        String sql="select * from sxrw where sxrw_id=?";
	        try{
				con = JdbcUtils.getConnection();
	      	  pst = con.prepareStatement(sql);
				  pst.setInt(1,snid); 
				  rs = pst.executeQuery();
				  while(rs.next()){
					  Simulation si=new Simulation(
							  rs.getString("sxrw_til"),
							  rs.getString("sxrw_con"),
							  rs.getDate("sxrw_date"),
							  rs.getInt("sxrw_liul"));
					  simu.add(si);
				  }
	        }catch (Exception e) {
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
			return simu;
		}
}
