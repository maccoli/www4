package com.www2.util;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
public class DBUtils {
public static String path ;
	
	static{
		path = DBUtils.class.getClassLoader().getResource("user.xml").getPath() ;
		try {
			path=URLDecoder.decode(path,"utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}//�ؼ��� ��  
	}
	
	//����dom��
	public static  Document getDocument(){
		try {
			//����dom4j������
			SAXReader reader = new SAXReader() ;
			//��ȡ�ĵ�
			Document document = reader.read(path) ;
			return document ;
		} catch (DocumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null ;
	}
	
	//���ڴ��е�dom��д�ص�Ӳ��
	public static void write2xml(Document document){
		System.out.println(path);
		try {
			XMLWriter writer = new XMLWriter(new FileOutputStream(path),OutputFormat.createPrettyPrint()) ;
			writer.write(document) ;
			writer.close() ;
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
