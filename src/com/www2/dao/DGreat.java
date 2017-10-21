package com.www2.dao;

import java.util.List;

import org.apache.taglibs.standard.lang.jstl.GreaterThanOperator;

import com.www2.bean.Great;
import com.www2.bean.User;
import com.www2.model.Answer;

public class DGreat extends HibernateDaoSupport{
      public Great findGreat(Integer aid,Integer uid){
    	  String hql="from Great where aid=? and uid=?";
          List<Great> list=this.getHibernateTemplate().find(hql,aid,uid);
          if(list!=null&&list.size()>0){
              this.getHibernateTemplate().delete(list.get(0));
              Answer answer=this.getHibernateTemplate().get(Answer.class, aid);
              answer.setAgreat(answer.getAgreat()-1);

              this.getHibernateTemplate().update(answer);
              return null;
          }
          else{
              Great great=new Great();
              Answer answers=this.getHibernateTemplate().get(Answer.class, aid);
              System.out.print(answers);
              great.setAnswer(answers);
              User user=this.getHibernateTemplate().get(User.class, uid);
              great.setUser(user);
              this.getHibernateTemplate().save(great);
              answers.setAgreat(answers.getAgreat()+1);

              this.getHibernateTemplate().update(answers);
              return null;
          }
    	   }

	private Object getHibernateTemplate() {
		// TODO Auto-generated method stub
		return null;
	}
       
       
       }
