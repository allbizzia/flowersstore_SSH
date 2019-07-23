package service;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.springframework.http.HttpRequest;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import pojo.Flowers;
import pojo.User;

public class FlrReqAction extends ActionSupport{
	Dao2 dao=new Dao2();
    Flowers f;
    //
    String name;
    public String getName() {
		return name;
	}
    public void setName(String name) {
		this.name = name;
	}
	//
    public Flowers getF() {
		return f;
	}
    public void setF(Flowers f) {
		this.f = f;
	}
    
	public String execute() {
		try {
			List<Flowers> listById=	dao.findByName("from Flowers where fname=?", getName());
			HttpServletRequest request=ServletActionContext.getRequest();
			request.setAttribute("listById", listById);
			
				return "success";
		} catch (Exception e) {
			
		}
	return "error";
	}
	
	
}
