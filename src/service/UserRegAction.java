package service;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import pojo.User;

public class UserRegAction extends ActionSupport{
    Dao2 dao2=new Dao2();
    User user;
    //先看是否存在保存***登录不了才进去注册，所以不用判断是否存在
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
		  user.setName(name); user.setPwd(pwd);
		
		  if(dao2.add2(user)){ 
			 
			 return "success";
			  }
		    
		return "error";
	  }

	
    
    
    
	
}
