package dao;

import java.util.List;

import javax.print.attribute.standard.MediaName;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.sun.xml.internal.bind.v2.model.core.ID;

import pojo.Flowers;
import sun.print.resources.serviceui;
import util.HibernateUtil;

public class FUpdate extends HibernateUtil{
	Session session;
	Transaction transaction;
	
     public  boolean fUpdate(Object obj) {
    	 try {
    		 session=HibernateUtil.getSession();
    	     	transaction=session.beginTransaction();
    	     	session.update(obj);
    	     	transaction.commit();
    	     	//session.close();
    	     	
    	     	return true;
		} catch (Exception e) {
		return false;
		}
	}
        
     public  boolean subFlr(Integer id,Integer num) {
    	 try {
    		 session=HibernateUtil.getSession();
    	     	transaction=session.beginTransaction();
    	     	Flowers f=(Flowers) HibernateUtil.getSession().get(Flowers.class, id);
    	     	Integer num2=f.getFnum();
    	     	
    	     	f.setFnum((num2-num));
    	     	
    	     	session.update(f);
    	     	transaction.commit();
    	     	//session.close();
    	     	
    	     	return true;
		} catch (Exception e) {
		return false;
		}
	}
     
     public  boolean addFlr(Integer id,Integer num) {
    	 try {
    		 session=HibernateUtil.getSession();
    	     	transaction=session.beginTransaction();
    	     	Flowers f=(Flowers) HibernateUtil.getSession().get(Flowers.class, id);
    	     	Integer num2=f.getFnum();
    	     	
    	     	f.setFnum((num2+num));
 
    	     	session.update(f);
    	     	transaction.commit();
    	     	//session.close();
    	     	
    	     	return true;
		} catch (Exception e) {
		return false;
		}
	}
     
    //用户增加或者删除订单
    //先通过id获取相应的对象，在进行修改（多数修改盆数） 
     
     
     public static void main(String[] args) {
		FUpdate dao=new FUpdate();
		//可以先通过id获取该对象 如果不知道id
		Dao2 dao2=new Dao2();
		
		Flowers f= (Flowers) getSession().get(Flowers.class,9);
		f.setFname("黄玫瑰");
		dao.fUpdate(f);
	}
     
	
}
