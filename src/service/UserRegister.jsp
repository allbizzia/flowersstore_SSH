<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<title>registerUser</title>

<script src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(function(){
	
	function repwd(){
		var p1=$(".p1").val();
		var p2=$(".p2").val();
	
		if(p1!=p2){
			p2.oninvalid();
			
		}
	}	
});

</script>

<style type="text/css">

.r1{ width:1200px; height:50px; background:url(img/foot.PNG); margin-bottom:50px; margin-left:200px;  }
.r11{  font-family:"良怀行书"; font-size:26px;  }
</style>
</head>

<body>
<div class="r">

    <div class="r1"><div class="r11">用户注册...</div></div>
    <div class="r2">
    <center><h3>请先注册再登录</h3></center>
	<s:form  action="register" method="post" class="f" > 
      <table width="300" border="0"  align="center">
        <tr>
          <td><s:textfield  name="user.name" label="用户名" /></td>
       </tr>
        <tr>
          <td><s:textfield  name="user.pwd"  class="p1" label="密码" /></td>
        </tr>
     
		
        <tr>   
          <td colspan="2" >  <s:submit value="注册" style="width:265px" click="repwd()"/> </td>
        </tr>
		
      </table>
	  
	</s:form>
    
    </div>
	</div>
    
</div>

</body>
</html>
