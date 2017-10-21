package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.www2.bean.BiJi;
import com.www2.bean.Videopl;
import com.www2.util.JdbcUtils;

public class VideoplDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//��Ƶ����
	public void addvpl(int videoid,String twcon,long twzheId,String tnickname,String theadp){
		String sql = "insert into videotw(videoid,twcon,userid,nickname,headp,twtime)"
				+ " values(?,?,?,?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1, videoid);
			pst.setString(2, twcon);
			pst.setLong(3, twzheId);
			pst.setString(4,tnickname);
			pst.setString(5,theadp);
			pst.setObject(6, new java.util.Date());
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
	
	//��ʾ����
	public List<Videopl> getpinl(int videoid){
		List<Videopl> pinls=new ArrayList<>();
		String sql="select * from videotw where videoid =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1,videoid); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Videopl vl = new Videopl(
						rs.getString("twcon"),
						rs.getInt("twconid"),
						rs.getLong("userid"),
						rs.getString("nickname"),
						rs.getString("headp"),
						rs.getDate("twtime"));
				pinls.add(vl);
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
		return pinls;
	}
	
	//��ת���۵��ظ�ҳ�棬��ʾ��������
	public List<Videopl> getpinl2(int twconid){
		List<Videopl> pinls2=new ArrayList<>();
		String sql="select * from videotw where twconid =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1,twconid); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Videopl vl2 = new Videopl(
						rs.getString("twcon"),
						rs.getLong("userid"),
						rs.getString("nickname"),
						rs.getString("headp"),
						rs.getDate("twtime"));
				pinls2.add(vl2);
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
		return pinls2;
	}
	
	//�ظ�-->����
	public void addvhf(int twconid,String replycon,long replyid,String rnickname,String rheadp,long twzheId){
		String sql = "insert into videoreply(twconid,replycon,userid,nickname,headp,replytime,twid)"
				+ " values(?,?,?,?,?,?,?)";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1, twconid);
			pst.setString(2, replycon);
			pst.setLong(3, replyid);
			pst.setString(4,rnickname);
			pst.setString(5,rheadp);
			pst.setObject(6, new java.util.Date());
			pst.setLong(7,twzheId);
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
	//��ʾ�ظ�����
	public List<Videopl> getvhf2(int twconid){
		List<Videopl> rpinls=new ArrayList<>();
		String sql="select * from videoreply where twconid =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1,twconid); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Videopl vl2 = new Videopl(null,
						rs.getString("replycon"),
						rs.getInt("replyconid"),
						rs.getLong("userid"),
						rs.getString("nickname"),
						rs.getString("headp"),
						rs.getDate("replytime"));
				rpinls.add(vl2);
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
		return rpinls;
	}
	
	//��ʾ�ظ���Ϣ
	public List<Videopl> getvhf3(long id){
		List<Videopl> xpinls=new ArrayList<>();
		String sql="select * from videoreply where twid =?";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Videopl vl3 = new Videopl(
						rs.getString("replycon"),
						rs.getInt("twconid"));
				xpinls.add(vl3);
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
		return xpinls;
	}
	
	public List<Videopl> getmtw(long id){
		List<Videopl> twvl=new ArrayList<>();
		String sql="select * from videotw where userid =?";
		try {
			con = JdbcUtils.getConnection(); 
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while (rs.next()) {
				Videopl tvl = new Videopl(
						rs.getString("twcon"),
						rs.getInt("twconid"),
						rs.getDate("twtime"),
						rs.getInt("videoid"));
				twvl.add(tvl);
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
		return twvl;
	}
	
}
