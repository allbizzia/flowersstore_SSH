<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>flowerStore</title>

<script src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".ad").on('click',function(){
		
		window.open("adminLog.jsp");
	});
$(".note").on('click',function(){
		
		window.open("note.jsp");
	});
});

</script>

<style type="text/css">
  @import  url(zt.css);
</style>
<style type="text/css">
.right table {
border-right: 1px solid #CCC;

border-bottom: 1px solid #CCC;

border-collapse:collapse;
}
 .right table td{
border-left: 1px solid #CCC;

border-top: 1px solid #CCC;
} 
</style>


</head>

<body>
<div class="box">
  <div class="head">
      <div class="banner"></div>
      <div class="nav">
         <div style="float:left; "><button class="ad" style="height:48px;" >管理员登录</button> <button class="note" style="height:48px">花卉养殖</button> </div> 
          <font style=" font-size:26px;font-family:&#39;良怀行书&#39;">疏影横斜水清浅 暗香浮动月黄昏</font>
      </div> 
  </div>
<div class="body">
  <div class="left">
            <div class="top" align="center"><br> <img src="img/a3.gif"><br>用户登录 <br>  ——欢迎进入飘香网上花店系统</div>
            <div class="center">
               <s:form method="post" action="userLog">
               <table align="center">
                   <tbody><tr height="30px"> 
                    <td><s:textfield name="user.name" label="用户名"/></td></tr>
                   <tr height="15px"> 
                   <td><s:textfield  name="user.pwd" label="密码"/></td></tr>
                   <tr height="15px">
                
                   <td><s:submit value="登录" /></td> </tr>
               </tbody></table>
               </s:form>
            
            </div>
        </div>
        <div class="right">
          <table width="180" border="0">
            <tbody><tr>
              <td ><img src="img/01.jpg" width="180" height="184"></td>
              <td ><img src="img/02.jpg" width="180" height="184"></td>
              <td ><img src="img/03.jpg" width="180" height="184"></td>
              <td ><img src="img/04.jpg" width="180" height="184"></td>
            </tr>
            <tr align="center">
              <td class="br">蓝色妖姬</td>
              <td class="br">红玫瑰</td>
              <td class="br">栀子花</td>
              <td class="br">康乃馨</td>
            </tr>
            <tr>
              <td><img src="img/05.jpg" width="180" height="193"></td>
              <td ><img src="img/06.jpg" width="180" height="190"></td>
              <td ><img src="img/07.jpg" width="180" height="190"></td>
              <td ><img src="img/08.jpg" width="180" height="190"></td>
            </tr>
            <tr align="center">
              <td class="br">木槿花</td>
              <td class="br">芍药花</td>
              <td class="br">百合花</td>
              <td class="br">蝴蝶兰</td>
            </tr>
          </tbody></table>
   </div>
</div>
  <div>
     <div class="foot">
        <div align="center" class="foot2">飘香网上花店©</div>
     </div>

</div>


</div>
</body>
</html>