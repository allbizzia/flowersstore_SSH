<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<title>addflr</title>

<script src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(function(){
	
	
	
});

</script>

<style type="text/css">

.r1{ width:1200px; height:50px; background:url(img/foot.PNG); margin-bottom:50px; margin-left:200px;  }
.r11{  font-family:"良怀行书"; font-size:26px;  }
</style>
</head>

<body>
<div class="r">

    <div class="r1"><div class="r11">添加花卉...</div></div>
    <div class="r2">
    <center><h2>添加花卉</h2>（*号的是填数字）</center>
	<s:form  action="flradd" method="post" class="f" > 
      <table width="300" border="0"  align="center">
        <tr>
          <td><s:textfield  name="f.fname" label="花名" /></td>
       </tr>
        <tr>
          <td><s:textfield  name="f.fmean"   label="花寓意" /></td>
        </tr>
        <tr>
          <td><s:textfield  name="f.fperson" label="送的人" /></td>
       </tr>
        <tr>
          <td><s:textfield  name="f.ftime"   label="花期" /></td>
        </tr>
        <tr>
          <td><s:textfield  name="f.fnum" label="花盆数*" /></td>
       </tr>
        <tr>
          <td><s:textfield  name="f.ftemp"   label="适宜温度" /></td>
        </tr>
		
        <tr>   
          <td colspan="2" >  <s:submit value="保存花卉" style="width:265px" click="repwd()"/> </td>
        </tr>
		
      </table>
	  
	</s:form>
    
    </div>
	</div>
    
</div>

</body>
</html>
