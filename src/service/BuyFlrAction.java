package service;

import org.hibernate.Query;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import pojo.Flowers;
import pojo.User;

public class BuyFlrAction extends ActionSupport{
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
	public Flowers getF() {
		return f;
	}
	public void setF(Flowers f) {
		this.f = f;
	}
	//
	public String execute() {
		
		if(dao.remove("delete Flowers where fname=?", getName())){
		return "success";
		}
		return "error";
	}
	
	
}
