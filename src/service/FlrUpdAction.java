package service;

import org.hibernate.Query;

import com.opensymphony.xwork2.ActionSupport;

import dao.Dao2;
import dao.FUpdate;
import pojo.Flowers;
import pojo.User;
import util.HibernateUtil;

public class FlrUpdAction extends ActionSupport{
	FUpdate dao=new FUpdate();
    Flowers f;
    
	public Flowers getF() {
		return f;
	}
	public void setF(Flowers f) {
		this.f = f;
	}
	public String execute() {
		
		Integer fid2=f.getFid();
		
		String  fname2=f.getFname();
		String fmean2=f.getFmean();
		String  fperson2=f.getFperson();
		String ftime2=f.getFtime();
	     Integer fnum2= f.getFnum();
		String ftemp2=f.getFtemp();
		
		//获取那个对象
		Flowers f2=(Flowers) HibernateUtil.getSession().get(Flowers.class, fid2);
		f2.setFname(fname2);
		f2.setFmean(fmean2);
		f2.setFperson(fperson2);
		f2.setFtime(ftime2);
        f2.setFnum(fnum2);	
        f2.setFtemp(ftemp2);
        
        if(dao.fUpdate(f2))
        {
		return "success";}
        else
        {
        	return "error";
        }
	}
	
	
}
