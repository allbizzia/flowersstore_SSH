
<%@page import="org.hibernate.Session"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.alibaba.fastjson.JSONArray"%>
<%@page import="javax.persistence.Id"%>
<%@page import="util.HibernateUtil"%>
<%@page import="pojo.Flowers"%>
<%@page import="dao.Dao2"%><%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<title>flowerById</title>


<script src="js/jquery-1.12.4.min.js"></script>
<style type="text/css">
  @import  url(zt.css);
</style>
<style type="text/css">

.r1{ width:1200px; height:50px; background:url(img/nav.PNG);  }
.r11{  font-family:"良怀行书"; font-size:24px;  }
th,td{ width:120px; height:50px;}
 table {
border-right: 1px solid #CCC;
border-bottom: 1px solid #CCC;
border-collapse:collapse;
}

td{
border-left: 1px solid #CCC;
border-top: 1px solid #CCC;
} 
.th{
background:url(img/nav.PNG); font-size:20px;  font-weight:bold;
}

.four{ float:left; text-align:left;  }
.upd1{width:100px;height:50px;}  .upd2{width:160px;height:50px;}
.signWrap{ display:none;
 position:absolute; top:20px; left:20px;
 width:300px; height:500px;
 background:white;
 margin-top: 5%;
 margin-left:12%;
	
 }
 tr{text-align:center;}
 
</style>
</head>

<body>


<div class="box">
  <div class="head">
      <div class="banner"></div>
      <div class="nav"> 
      <div class="four">
    <button class="upd1">修改</button>   <button class="upd2">返回到管理界面</button>
    
      </div> 
       
  </div>
 
     <div class="body">
     <table border="1" width="1200px">
    	<tr class="th">
    	   <td>花编号</td>
    	   <td>花名</td>
    	   <td>花意</td>
    	   <td>送的人</td>
    	   <td>花期</td>
    	   <td>花盆数</td>
    	   <td>花温度</td>
    	   <td>操作</td>
    	</tr>
   <%--  <%Dao2 dao=new Dao2();
  List<Flowers> list=dao.findAll("from Flowers");
  request.setAttribute("list",list);
  %> --%>
    	<c:forEach var="f" items="${listById}">
    		<tr>
    	   <td>${f.fid}</td>
    	   <td>${f.fname}</td>
    	   <td>${f.fmean}</td>
    	   <td>${f.fperson}</td>
    	   <td>${f.ftime}</td>
    	   <td>${f.fnum}</td>
    	   <td>${f.ftemp}</td>
    	   
    	   
    	  <!-- 在flrdel.action里面必须有获取name属性（get set方法） -->
    	   <td>     
    	      <a  href="flrdel.action?name=${f.fname}"><button  onclick="javascript:return window.confirm('确认删除吗？\n注意此操作不可撤销！！！')"> 删除</button></a>
    	   </td>
    	</tr>
    	</c:forEach>
    </table>
     
     </div>
         
    
<script >
$(function(){
	
	
});
</script>

</body>
</html>