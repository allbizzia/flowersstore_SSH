<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>adminUserDaoError</title>
<script src="js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$(".ad2").on('click',function(){
		window.open("adminUserDao.jsp");
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

    <div class="r1"><div class="r11">管理员管理用户失败...</div></div>
    <center>
    <h2>抱歉，您操作用户的步骤失败...</h2>
    <p><button class="ad2" >继续操作</button>
   
    </center>
    </div>
	</div>
    
</div>

</body>
</html>