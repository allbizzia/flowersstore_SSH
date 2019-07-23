package service;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import pojo.Admin;
import pojo.User;

public class UserDelAction extends ActionSupport{

	User user;
    String name2;
    Dao2 dao=new Dao2();
    public User getUser() {
		return user;
	}
    public void setUser(User user) {
		this.user = user;
	}

public String getName2() {
	return name2;
}
public void setName2(String name2) {
	this.name2 = name2;
}
    
	
	public  String execute(){
		if(dao.remove("delete User where name=?",getName2())){
			return "success";
		}
     
	 return "error";
	  }
		
	
}
