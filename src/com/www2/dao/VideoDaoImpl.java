package com.www2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import com.www2.bean.Chapter;
import com.www2.bean.Video;
import com.www2.util.JdbcUtils;

public class VideoDaoImpl extends BaseDaoImpl2<Video> implements VideoDao {
	Connection con = null;
	PreparedStatement pst = null;
	ResultSet rs = null;
	@Override
	public List<Video> queryCourseVideo(Chapter Chapter) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM video WHERE chapter_id = ? ORDER BY video_order ASC";
		List<Video> videos = new LinkedList<>();
		try {
			con = JdbcUtils.getConnection();
			pst = con.prepareStatement(sql);
			pst.setInt(1, Chapter.getId());
			rs = pst.executeQuery();
			while(rs.next()){
				Video video = new Video();
				video.setId(rs.getInt("id"));
				video.setName(rs.getString("name"));
				video.setOrder(rs.getInt("video_order"));
				video.setSrc(rs.getString("src"));
				video.setChapter_id(Chapter.getId());
				videos.add(video);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			JdbcUtils.releaseConnection(con);
		}
		return videos;
	}

}
