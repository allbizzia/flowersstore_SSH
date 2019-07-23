package service;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import pojo.Admin;

public class AdminLogAction extends ActionSupport{

	Admin admin;
    Dao2 dao2=new Dao2();
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public  String execute(){
		//页面中的数据
		  String name=admin.getAdminName();
		  String pwd=admin.getAdminPwd();
		  //说明能获取页面的数据
		  System.out.println(name+pwd);
		  //在main中是对的，这里是错的
		  String hql="from Admin as a where a.adminName='"+name+"' and a.adminPwd='"+pwd+"'";
		  if(dao2.ifExit(hql)){ 
			  System.out.println(dao2.ifExit(hql));
			  
			 return "success";
			  }
		    
		return "error";
	  }
		
	
}
