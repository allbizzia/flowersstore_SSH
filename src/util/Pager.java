package util;

import java.io.Serializable;
import java.util.List;

public class Pager<T> implements Serializable{
	private static final long serialVersionUID = 7569566861340703188L;
	private int pageSize;//每页显示多少条记录
	private int currentPage;//当前第几页数据
	private int totalRecord;//一共多少条记录
	private List<T> dataList;//要显示的数据
	private int totalPage;//总页数
	
	
	//构造方法
	public Pager() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pager(int pageSize, int currentPage, int totalRecord, List<T> dataList, int totalPage) {
		super();
		this.pageSize = pageSize;
		this.currentPage = currentPage;
		this.totalRecord = totalRecord;
		this.dataList = dataList;
		this.totalPage = totalPage;
	}
	
	//输入的页数
	//没有数据的一个方法:显示的尺寸自己设置的，数据也是自己传进来的
	public Pager(int pageNum,int pageSize,List<T> sourceList){
		if(sourceList.size() ==0 ||sourceList == null){
			return;}
		//通过数据获取的记录总条数，每页显示多少页，获取总页数
		this.totalRecord=sourceList.size();
		this.pageSize=pageSize;
	   //获取总页数
		this.totalPage=this.totalRecord/this.pageSize;
		if(this.totalRecord%this.pageSize!=0){
			this.pageSize=this.pageSize+1;
		}
		//当前页数大的话，当前页等于总页
		if(this.totalPage < pageNum){
			this.currentPage = this.totalPage;
			}else{
			this.currentPage = pageNum;
			}
		//起始索引
		int fromIndex = this.pageSize*(this.currentPage-1);
		int toIndex;
		//由上面的pageNum确定合法与否，在进行总数的计算看是否合法
		if(this.pageSize * this.currentPage >this.totalRecord){
		toIndex = this.totalRecord;
		}else{
		toIndex = this.pageSize * this.currentPage;
		}
		//截取数据的子片段
		this.dataList = sourceList.subList(fromIndex, toIndex);
		
		}
		
		
	}
	
	
	

