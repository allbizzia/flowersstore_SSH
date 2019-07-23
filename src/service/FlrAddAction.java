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

public class FlrAddAction extends ActionSupport{

    Dao2 dao=new Dao2();
    Flowers f;
    // 
	public Flowers getF() {
		return f;
	}
	public void setF(Flowers f) {
		this.f = f;
	}
	
	
	public String execute() {
		String  fname=f.getFname();
		String fmean=f.getFmean();
		String  fperson=f.getFperson();
		String ftime=f.getFtime();
	     Integer fnum= f.getFnum();
		String ftemp=f.getFtemp();
		
		/*if(!(dao.ifExit("from Flowers as f where f.fname='"+fname+"'"))){*/
		
		if(dao.add(fname,fmean,fperson,ftime,fnum,ftemp)){
			return "success";
		}
		//}
		return "error";
		
	}
	
}
