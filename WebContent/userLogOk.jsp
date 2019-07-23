<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="s"  uri="/struts-tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>userLogOK</title>
<script src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".Log1").on('click',function(){
		window.open("userDaoFlr.jsp");
	});
	$(".Log2").on('click',function(){
		window.open("userUpd.jsp");
	});
	
});

</script>

<style type="text/css">

.r1{ width:1200px; height:50px; background:url(img/foot.PNG); margin-bottom:50px; margin-left:200px;  }
.r11{  font-family:"良怀行书"; font-size:26px;  }
</style>
</head>

<body>
<div class="r">

    <div class="r1"><div class="r11">用户登录成功</div></div>
    <center>
    <h2>恭喜您，您登录成功...</h2>
    <button class="Log1">  请进行订单管理  </button></p>
    <button class="Log2">  请进行个人信息修改  </button></p>
    </center>
    </div>
	</div>
    
</div>

</body>
</html>
