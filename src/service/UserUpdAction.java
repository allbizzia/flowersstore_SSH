package service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;
import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import dao.FUpdate;
import javafx.scene.control.Alert;
import pojo.User;
import sun.print.resources.serviceui;
import util.HibernateUtil;

public class UserUpdAction extends ActionSupport{
	
	User u;
	FUpdate dao=new FUpdate();
	public User getU() {
		return u;
	}
	public void setU(User u) {
		this.u = u;
	}
	
	public  String execute(){
		//获取界面的输入值 u.id
				Integer id=u.getId();
				User u2=(User) HibernateUtil.getSession().get(User.class, id);
				
				String name2=u.getName();
				String pwd2=u.getPwd();
				//System.out.println(name2+pwd2);
				u2.setName(name2);
				u2.setPwd(pwd2);
				
		  if(dao.fUpdate(u2)){ 
			 
			 return "success";
			  }
		    
		return "error";
	  }

	



}
