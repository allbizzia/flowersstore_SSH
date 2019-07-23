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
<title>UserUpd</title>
<style type="text/css">
  @import  url(zt.css);
</style>
<style type="text/css">
.r1{ width:1200px; height:50px; background:url(img/nav.PNG);  }
.r11{  font-family:"行书"; font-size:24px;  }


</style>

<!-- script -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(function(){
	
});



</script>
</head>

<body>
<div class="box">
  <div class="head">
      <div class="banner"></div>
      <div class="r1"> 
            <div class="r11"> <b>个人信息修改</b></div>
      </div> 
       
  </div>
  
     <div class="body">
     <s:form  action="userupd" method="post" class="f" > 
   
 <br/>
    
      <table width="300" border="0"  align="center">
       <tr>
          <td><s:textfield  name="u.id"  label="用户id" /></td>
       </tr>
      
        <tr>
          <td><s:textfield  name="u.name" label="用户名" /></td>
       </tr>
        <tr>
          <td><s:textfield  name="u.pwd"  label="密码" /></td>
        </tr>
     
		
        <tr>   
          <td colspan="2" >  <s:submit value="修改" style="width:265px" /> </td>
        </tr>
		
      </table>
	  
	</s:form>

     
     
     </div>
</div>
</body>
</html>