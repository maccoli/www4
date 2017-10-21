package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.metamodel.relational.Value.JdbcCodes;

import com.www2.bean.Sharearticle;
import com.www2.util.JdbcUtils;

public class SharearticleDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	
	//��ȡ�Լ���������� ��Ŀ���ύʱ�䣬������������չʾ
	public List<Sharearticle> getIshare(long id){
		List<Sharearticle> ishae=new ArrayList<>();
		String sql="select articleid,articletitle,articletime,articlelikes from share where id=?";
		try{
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while(rs.next()){
				Sharearticle se=new Sharearticle(
						rs.getInt("articleId"),
						rs.getString("articleTitle"),
						rs.getDate("articleTime"),
						rs.getInt("articleLikes"));
				ishae.add(se);
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
		return ishae;
	}
	//��ʾ�������µ����飻
	public List<Sharearticle> getshare(int artid){
		List<Sharearticle> shae=new ArrayList<>();
		String sql="select * from share where articleid=?";
		try{
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1,artid); 
			rs = pst.executeQuery();
			while(rs.next()){
				Sharearticle se=new Sharearticle(
						rs.getString("id"),
						rs.getInt("articleid"),
						rs.getString("articletitle"),
						rs.getDate("articletime"),
						rs.getInt("articleviews"),
						rs.getInt("articlelikes"),
						rs.getString("headp"),
						rs.getString("nickname"),
						rs.getString("articleCon"));
				shae.add(se);
			//	System.out.println("ww"+se);
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
		return shae;
	}
	//չʾ��ע�˵����£�
	public List<Sharearticle> getHshare(long id){
		List<Sharearticle> hshae=new ArrayList<>();
		String sql="select * from share where id in (select attentid from attention where id=?)";
		try{
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setLong(1,id); 
			rs = pst.executeQuery();
			while(rs.next()){
				Sharearticle se2=new Sharearticle(
						rs.getString("id"),
						rs.getInt("articleId"),
						rs.getString("articleTitle"),
						rs.getInt("articleViews"),
						rs.getDate("articleTime"),
						rs.getInt("articleLikes"),
						rs.getInt("articleCollected"),
						rs.getString("articleCon"),
						rs.getString("nickname"),
						rs.getString("headp"));
				hshae.add(se2);
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
		return hshae;
	}
	
	//ɾ�����������
	public void qAttent(long attentid,long id){
		String sql = "delete from attention where attentid=? AND id=";
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
            pst.setLong(1,attentid);
            pst.setLong(2, id);
			pst.executeUpdate();
            con.close();
			pst.close();
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
