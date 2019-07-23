package service;

import org.hibernate.Query;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import pojo.User;

public class UserLogAction extends ActionSupport{
	User user;
	Dao2 dao2=new Dao2();
    public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

public  String execute(){
	//页面中的数据
	  String name=user.getName();
	  String pwd=user.getPwd();
	  //System.out.println(name+pwd);
	  
	  String hql="from User as u where u.name='"+name+"' and u.pwd='"+pwd+"'";
	  if(dao2.ifExit(hql)){ 
		 
		 return "success";
		  }
	    
	return "error";
  }
	
	
}
