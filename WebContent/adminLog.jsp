<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>adminLog</title>
<style type="text/css">
  @import  url(zt.css);
</style>
<style type="text/css">

.r1{ width:1200px; height:50px; background:url(img/nav.PNG);  }
.r11{  font-family:"良怀行书"; font-size:24px;  }
</style>
</head>

<body>
<div class="box">
  <div class="head">
      <div class="banner"></div>
      <div class="nav">  
          <font style=" font-size:26px;font-family:'良怀行书'" >疏影横斜水清浅 暗香浮动月黄昏</font>
      </div> 
  </div>
     <div class="body">
        <div class="center2">
            <div class="r1"><div class="r11">管理员登录...</div></div>
    <div class="r2">
	<s:form method="post" action="adminLog"> 
      <table width="300" border="0"  align="center">
        <tr>
     
          <td><s:textfield label="用户名" name="admin.adminName"/></td>
        </tr>
		
        <tr>
         
          <td><s:textfield label="密    码" name="admin.adminPwd"/></td>
        </tr>
		
        <tr>   
          <td colspan="2" >  <s:submit value="登录" style="width:240px"/> </td>
        </tr>
		
      </table>
	  
	</s:form>
    
    </div>
            
        </div>
        
     </div>
  

</div>
</body>
</html>
