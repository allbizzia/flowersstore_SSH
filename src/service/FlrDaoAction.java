package service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import pojo.Flowers;

public class FlrDaoAction extends ActionSupport{

    Dao2 dao2=new Dao2();
    Flowers f;
    //
    
    
	public Flowers getF() {
		return f;
	}
	public void setF(Flowers f) {
		this.f = f;
	}
	public String execute() {
		
		return "success";
	}
	
}
