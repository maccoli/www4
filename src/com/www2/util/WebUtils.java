package com.www2.util;



import javax.servlet.http.HttpServletRequest;

import org.apache.commons.beanutils.BeanUtils;

public class WebUtils {

	public static <T> T  fillFormBean(Class<T> clazz,HttpServletRequest reqeust){
		T t = null ;
		//创建对象
		try {
			t = clazz.newInstance() ;
			BeanUtils.populate(t, reqeust.getParameterMap()) ;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return t ;	
	}
}

