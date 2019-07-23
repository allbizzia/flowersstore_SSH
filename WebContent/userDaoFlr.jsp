
<%@page import="javax.persistence.Id"%>
<%@page import="util.HibernateUtil"%>
<%@page import="pojo.Flowers"%>
<%@page import="dao.Dao2"%><%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>userDaoFlr</title>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.four{ float:left; text-align:left;  }
.req{width:100px;height:50px;}
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
      <div class="four" >
 
       <div><s:textfield name="search" placeholder="请输入花名" class="req" style="height:30px; width=300px;"/><button style="height:30px;">查询</button>  </div>   
      </div> 
       
  </div>
     <div class="body">
         
    <table width="1200" border="0" id="tab">
        <tr class="r1">
         <!-- <th><input type="checkbox" name="ch1" /></th> -->
         <th>花的id</th> 
         <th>花名</th>  
         <th>花语</th> 
         <th> 宜赠送的人</th>  
          <th>花期</th> 
         <th>盆数</th>  
          <th>适宜温度</th> 
           <th >购买盆数 </th>
           <th>操作</th>
        </tr>
        <%Dao2 dao=new Dao2();
  List<Flowers> list=dao.findAll("from Flowers");
  request.setAttribute("list",list);
  %>
    	<c:forEach var="f" items="${list}">
    		<tr>
    		<!-- <td><input type="checkbox" name="ch1">  </td> -->
    	   <td>${f.fid}</td>
    	   <td>${f.fname}</td>
    	   <td>${f.fmean}</td>
    	   <td>${f.fperson}</td>
    	   <td>${f.ftime}</td>
    	   <td>${f.fnum}</td>
    	   <td>${f.ftemp}</td>
    	  <!-- 在flrdel.action里面必须有获取name属性（get set方法） -->
    	  <td><s:form action="addflr" method="post">
    	  <!-- 减少盆数 -->
    	  <!--因为这个地方会报错没在写下去，num=？这个地方会报错，没有穿过界面的值去  -->
    	     <s:textfield name="f6.fnum">
    	        <%-- <a  href="flrdel.action?name=${f.fid}&num=f6.fnum"><button >购买</button></a>  --%>
    	        <a  href=""><button >购买盆数</button></a>
    	     </s:textfield>
    	  
    	    </s:form>  </td>
    	  
    	   <td>  
    	 <!-- 增加盆数 -->
    	 <a  href=""><button > 取消购买</button></a> 
    	     
    	   </td>
    	</tr>
    	</c:forEach>
    	</table>
    	</div>
    	
</div>    	
</body>
</html>