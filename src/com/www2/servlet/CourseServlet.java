package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import com.www2.bean.Chapter;
import com.www2.bean.Course;
import com.www2.bean.CourseComment;
import com.www2.bean.User;
import com.www2.bean.Video;
import com.www2.dao.VideoDaoImpl;
import com.www2.service.ChapterService;
import com.www2.service.CourseCommentService;
import com.www2.service.CourseService;
import com.www2.service.VideoService;

public class CourseServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String url = request.getRequestURI();
		String action = url.substring(url.lastIndexOf("/"),
				url.lastIndexOf("."));
		if (action.equals("/detail")) {
			//long user_id = (long) session.getAttribute("id");
			String course_id = request.getParameter("course_id");
			//课程名字
			Course course = new CourseService().queryOneCourse(course_id);
			//视频评论
			List<CourseComment> comments = new CourseCommentService().queryCourseComments(course_id);
			//章节...
			List<Chapter> chapters = new ChapterService().queryCourseChapter(course);
			
			JSONObject jsonObject = new VideoService().queryCouseVideos(chapters);
			jsonObject.put("course_id", course.getId());
			jsonObject.put("course_watch", course.getWatch());
			jsonObject.put("course_grade", course.getGrade());
			jsonObject.put("course_class", course.getCclass());
			jsonObject.put("course_type", course.getCtype());
			jsonObject.put("course_title", course.getTitle());
			jsonObject.put("course_pic", course.getPic());
			jsonObject.put("course_redirect", course.getRedirect());
			jsonObject.put("comments", comments);
			response.getWriter().write(jsonObject.toString());
			return;
		}else{
			
		}
	}

}
