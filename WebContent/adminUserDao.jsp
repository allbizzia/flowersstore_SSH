<%@page import="pojo.User"%>
<%@page import="pojo.Flowers"%>
<%@page import="dao.Dao2"%><%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>adminUserDao</title>
<style type="text/css">
  @import  url(zt.css);
</style>
<style type="text/css">
.r1{ width:1200px; height:50px; background:url(img/nav.PNG);  }
.r11{  font-family:"良怀行书"; font-size:24px;  }
th,td{ width:120px; height:50px;}
td{border:#CCC solid 1px;}
table {
border-right: 1px solid #CCC;
border-bottom: 1px solid #CCC;
border-collapse:collapse;
}

td{
text-align:center;
border-left: 1px solid #CCC;
border-top: 1px solid #CCC;
} 

.four{ float:left; text-align:left;  }
.add,.del,.upd,.req{ width:100px;height:50px;}
.t2{
  width:200px;
}
.input2{
width:200px; height:40px;
}
</style>

<!-- script -->
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
var name2=document.getElementById("name2");
$.ajax({
	type:post,
	url:"userupd",
	data:{
		'a':name2
	},
	async:false,
	dataType:"json",
	success:function(data){
		
	},
	error:function(error){
		
	}
});
$(function(){
	   $(".req").on('click',function(){
		 
		  if($(".input2").val()){
			  window.open("userUpd.jsp");	  
		  }
		
		   
	   });
	   $(".upd").on('click',function(){
		   window.open("userUpd.jsp");
	   })
	   
	   
	 });
	  

</script>
</head>

<body>
<div class="box">
  <div class="head">
      <div class="banner"></div>
      <div class="nav"> 
      <div class="four" >
      
      <div><form action="userupd.action" method="post">
     <!--  <input  class="input2" id="name2" type="text" required placeholder="请输入用户名"/> -->
      <button class="req">查询</button>  <button class="upd">修改</button>  </form>
       </div>
       
      </div> 
       
      </div> 
       
  </div>
  
     <div class="body">
       
       <table width="300" border="0">
    
       <tr class="r1" >
        <!--  <th style="border:#CCC solid 1px;"></th> -->
         <th>id</th> 
         <th>姓名</th>  
         <th>密码</th> 
         <th class="t2">操作</th>
        </tr>
        <tr> 
         <%Dao2 dao=new Dao2();
          List<User> list=dao.findAll("from User");
          for(int i=0;i<list.size();i++){
           User u=list.get(i);
           %>
          
           <!--  <th style="border:#CCC solid 1px;"></th> -->
          <td> <%=u.getId() %>  </td>
          <td> <%=u.getName() %></td>
          <td> <%=u.getPwd() %></td>	
          <td class="t2">  <a href="userdel.action?name2=<%=u.getName()%>"><button onclick="javascript:return window.confirm('你确定要删除？\n删除之后数据不能恢复！！！请考虑一下')">删除</button></a> <!--  <a><button>修改</button></a> --> </td>
          </tr>  
        
         <%  }
          
         %>
   
       </table>
       
       <p>&nbsp;</p>
     </div>
  

</div>
</body>
</html>