package com.www2.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.www2.bean.BiJi;
import com.www2.bean.Videopl;
import com.www2.dao.ShipinpfbijiDao;
import com.www2.dao.VideoplDao;

public class VideoplServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String url = request.getRequestURI();
		String action = url.substring(url.lastIndexOf("/"),
				url.lastIndexOf("."));
	  
		//�ύ����
		if("/videotw".equals(action)){
			  long twzheId = (Long) request.getSession().getAttribute("id");
			  String tnickname=(String)request.getSession().getAttribute("nickname");
			  String theadp=(String)request.getSession().getAttribute("savedFileName");
				String svideoid=request.getParameter("videoid");
				int videoid=Integer.parseInt(svideoid);
				String twcon=request.getParameter("twcon");
				VideoplDao pldao=new VideoplDao();
				pldao.addvpl(videoid, twcon, twzheId, tnickname, theadp);
		}
		//��ʾ����
		else if("/xianshitw".equals(action)){
			String svideoid=request.getParameter("videoid");
			int videoid=Integer.parseInt(svideoid);
			VideoplDao pldao=new VideoplDao();
			List<Videopl> pinls=pldao.getpinl(videoid);
			 request.setAttribute("list",pinls);
			    //��JSON �����ݸ�ǰ̨�� JSON��һ�����ݸ�ʽ��
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", pinls);
			    response.getWriter().write(jsonObject.toString());
			    return;
		}
		//�����ظ�ҳ����ʾ����
		else if("/xstw".equals(action)){
			String stwconid=request.getParameter("parameter");
			int twconid=Integer.parseInt(stwconid);
			VideoplDao pldao=new VideoplDao();
			List<Videopl> pinls2=pldao.getpinl2(twconid);
			 request.setAttribute("list",pinls2);
			    //��JSON �����ݸ�ǰ̨�� JSON��һ�����ݸ�ʽ��
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", pinls2);
			    response.getWriter().write(jsonObject.toString());
			    return;
		}
		
		//�ύ�ظ�
		else if("/huifu".equals(action)){
			  long replyid = (Long) request.getSession().getAttribute("id");
			  String rnickname=(String)request.getSession().getAttribute("nickname");
			  String rheadp=(String)request.getSession().getAttribute("savedFileName");
				String stwconid=request.getParameter("parameter");
				String stwzheId=request.getParameter("twzheId");
		         Long twzheId=Long.parseLong(stwzheId);		
				int twconid=Integer.parseInt(stwconid);
				String replycon=request.getParameter("replycon");
				VideoplDao pldao=new VideoplDao();
				pldao.addvhf(twconid, replycon, replyid, rnickname, rheadp,twzheId);
		}
		
		//��ʾ�������µĻظ�
		else if("/xshuifu".equals(action)){
			String stwconid=request.getParameter("parameter");
			int twconid=Integer.parseInt(stwconid);
			VideoplDao pldao=new VideoplDao();
			List<Videopl> rpinls=pldao.getvhf2(twconid);
			 request.setAttribute("list",rpinls);
			    //��JSON �����ݸ�ǰ̨�� JSON��һ�����ݸ�ʽ��
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", rpinls);
			    response.getWriter().write(jsonObject.toString());
			    return;
		}
		
		//�������� ��ʾ�û����˻ظ�����Ϣ��
		else if("/hfxiaoxi".equals(action)){
			Long id=(Long) request.getSession().getAttribute("id");
			VideoplDao pldao=new VideoplDao();
			List<Videopl> xpinls=pldao.getvhf3(id);
			 request.setAttribute("list",xpinls);
			    //��JSON �����ݸ�ǰ̨�� JSON��һ�����ݸ�ʽ��
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", xpinls);
			    response.getWriter().write(jsonObject.toString());
			    return;
		}
		
		else if("/Mintw".equals(action)){
			Long id=(Long) request.getSession().getAttribute("id");
			VideoplDao pldao=new VideoplDao();
			List<Videopl> twvl=pldao.getmtw(id);
			 request.setAttribute("list",twvl);
			    //��JSON �����ݸ�ǰ̨�� JSON��һ�����ݸ�ʽ��
			    JSONObject jsonObject = new JSONObject();
			    jsonObject.put("list", twvl);
			    response.getWriter().write(jsonObject.toString());
			    return;
			
		}
	}

}
