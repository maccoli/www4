package com.www2.dao;


import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;

import com.www2.bean.User;
import com.www2.dao.IUserDao;
import com.www2.util.DBUtils;

public class UserDaoImpl extends IUserDao{
	public User addUser(User user) {
		//��ȡdom��
		Document document = DBUtils.getDocument() ;
		//��ø��ڵ�
		Element root = document.getRootElement() ;
		//����û�
		root.addElement("user").addAttribute("username", user.getUsername())
			.addAttribute("password", user.getPassword())
			.addAttribute("email", user.getEmail())
			.addAttribute("birthday", new SimpleDateFormat("yyyy-MM-dd").format(user.getBirthday())) ;
		System.out.println("aa");
		//д��Ӳ��
		DBUtils.write2xml(document) ;
		System.out.println("aaz");
		return user;
	}

	public User findUserByUserNameAndPassword(String username, String password) {
		//����dom��
		Document document = DBUtils.getDocument() ;
		//����user�ڵ�
		Node node = document.selectSingleNode("//user[@username='" + username + "' and @password='" + password+ "']") ;
		if(node != null){
			//��װ����
			User user = new User() ;
			Element el = (Element)node ;
			user.setUsername(el.valueOf("@username")) ;
			user.setPassword(el.valueOf("@password")) ;
			user.setEmail(el.valueOf("@email")) ;
			try {
				user.setBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(el.valueOf("@birthday"))) ;
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return user ;
		}
		return null;
	}

	public User findUserByUserName(String username) {
		//����dom��
		Document document = DBUtils.getDocument() ;
		//����user�ڵ�
		Node node = document.selectSingleNode("//user[@username='" + username + "']") ;
		if(node != null){
			return new User() ;
		}
		return null;
	}
}
