package dao;

import java.util.List;

import javax.persistence.criteria.From;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.web.bind.annotation.RestController;

import com.sun.org.apache.bcel.internal.generic.Select;

import pojo.Flowers;
import pojo.User;
import util.HibernateUtil;
public class Dao2 extends HibernateUtil{

   Session session;
   Transaction transaction;
    //查询是否存在
  //查询   增 删  ,鉴于改，尤其是用户买了，改数量，于是把改写成了一个类
    //外加一个分页（返回list）+ 总共的条数（返回多少条记录）


 public Dao2(){  }
 
	   public boolean ifExit(String hql) {
    	try {
    		session=HibernateUtil.getSession();
        	transaction=session.beginTransaction();
        	List list=session.createQuery(hql).list();
        	//session.close();
        	if(list.size()>0){
        		return true;
        	}
		} catch (Exception e) {
			return false;
		}
		return false;
		
	}
    
    
	public List  findAll(String hql) {
    	session=HibernateUtil.getSession();
    	transaction=session.beginTransaction();
    	List list=session.createQuery(hql).list();
    	//session.close();
    	System.out.println(list);
		return list;
	}
    //通过名字查询某个花的信息
    public List findByName(String hql,String name){
    	try {
    		session=HibernateUtil.getSession();
        	transaction=session.beginTransaction();
        	List list=session.createQuery(hql).setString(0, name).list();
        	//session.close();
        	//System.out.println(list);
        	return list;
		} catch (Exception e) {
			// TODO: handle exception
		}
    	return null;
    }
    public boolean add(String fname,String fmean,String fperson,String ftime,Integer fnum,String ftemp){
    	
    	try {
    		session=HibernateUtil.getSession();
        	transaction=session.beginTransaction();
//        	增加之前判断是否存在
       
        		
        		Flowers flowers=new Flowers();
            	flowers.setFname(fname);flowers.setFmean(fmean);
            	flowers.setFperson(fperson); flowers.setFtime(ftime);
            	flowers.setFnum(fnum);  flowers.setFtemp(ftemp);
            	session.save(flowers);
            	transaction.commit();
            	//session.close();
            	return true;
        	
		} catch (Exception e) {
			return false;}
	
    }
 public boolean add2(User user){
    	
    	try {
    		session=HibernateUtil.getSession();
        	transaction=session.beginTransaction();
        	
        	session.save(user);
        	transaction.commit();
        	//session.close();
        	return true;
		} catch (Exception e) {
			return false;}
    }
    public boolean remove(String hql,String name) {
    	try {
    		session=HibernateUtil.getSession();
        	transaction=session.beginTransaction();
        	session.createQuery(hql).setString(0, name).executeUpdate();
        	transaction.commit();
        	//session.close();
        	
        	return true;
		} catch (Exception e) {
			return false;
		}
 
	}
    //分页
    
    public List DivideBypage(String hql,int index){
    	session=HibernateUtil.getSession();
    	
    	Query query=session.createQuery(hql);
    	
    	query.setFirstResult(index);
    	query.setMaxResults(5);
    	List list=query.list();
    	//session.close();
		return list;	
    }
    public Long GetCount(String hql){
    	 
        session = HibernateUtil.getSession();
    	transaction=session.beginTransaction();
    	Query query=session.createQuery(hql);    	
        Long count=(Long) query.uniqueResult();
        transaction.commit();
		return count;
    	
    }
    
    
   /**
    * 传进来的是表名和参数，所以对于flowers.user表同样适用
    * */
  
 public static void main(String[] args) {
		Dao2 dao=new Dao2();
		//dao.add2("lili","123");
		//dao.add2();
	    //dao.GetCount("select count(*) from Flowers");
	    //System.out.println(dao.GetCount("select count(*) from Flowers"));
		//System.out.println(dao.ifExit("from User as u where u.name='张三' and u.pwd='123' "));
		/*String fname="红玫瑰";
		System.out.println(dao.ifExit("from Flowers as f where f.fname='"+fname+"'"));
		System.out.println(dao.add("红玫瑰", "K", "K", "K", 34, "K"));*/
       /*String name="李四";
		List list=dao.findByName("from User where name=?", name);
		System.out.println(list.toString());*/
		//dao.findAll("From Admin");
		//dao.findByName("from Flowers where fname=?","红玫瑰");
        //System.out.println(dao.add("黄玫瑰", "表达歉意，祝福、嫉妒", "对手", "10", 100, "20"));
	    //System.out.println(dao.remove("delete Flowers where fname=?", "黄玫瑰"));
	}
	
}
