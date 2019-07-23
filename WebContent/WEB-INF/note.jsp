<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>flrLesson</title>
<script type="application/javascript" src="js/jquery-1.11.3.min.js"></script>
<script>

  
</script>

<style type="text/css">

.r1{ width:1200px; height:50px; background:url(img/foot.PNG); margin-bottom:50px; margin-left:100px;  }
.r11{  font-family:"良怀行书"; font-size:26px;  }
.left{ width:800px; height:200px; border:#CCC solid 1px; float:left; margin-left:100px; margin-top:50px; margin-bottom:50px; background:#FCF;}
.f1{  margin-left:100px; }
.p1{ width:800; height:500px; float:left;}
.p2{ float:right;}
</style>
</head>
<body>
<div class="r">

   <div class="r1"><div class="r11">请观看养花教程还有好多关于养花的链接...</div></div>
    
     <div class="p1">
       <div class="f1"> 
        <video id="v1" width="400px" height="200px" controls autoplay>
         <source src="img/flr2.mp4" style="video/mp4"/>
         
        </video> 
        <video id="v2" width="400px" height="200px" controls autoplay>
         <source src="img/flr.mp4" style="video/mp4"/>
        
         </video>  
        </div>
        
        <div class="left">
        <ul>
          <li><a href="http://www.yuhuagu.com/">浴花谷花卉网:</a> 主页|养花|知识植物|植物生活|花卉摄影|水生植物...</li>
          <li><a href="https://www.huaergu.com/">花儿谷:</a> 花儿谷，畅享养花的乐趣！<a href="https://www.huaergu.com/yhzs/1462.html">球兰的养殖方法和注意事项</a>           <a href="https://www.huaergu.com/bhyh/1456.html">夏天铜钱草叶子发黄怎么办？</a></li>
          <li><a href="https://www.huajiang.cc/">花匠网:</a>观花植物|多肉植物|盆景图片|菊科图片|兰科图片...</li>
          <li><a href="http://www.yuhuadu.com/">育花都:</a>花瓣落了赶紧捡！加点料兑水一浇，年年开不停！
核心提示：昨天去邻居老奶奶家串门，发现她正把长寿花落下的....</li>
           <li><a href="http://www.wfsky.com/">养花之家：</a>房间摆放绿植，不要扯上风水，首先风水实在是摸不透的东西。五行，八方，对应64卦。四方有神兽，朱雀玄武青龙白虎。五行有金木水火土，八方有东南西北，东南，东北，西南西北。每个方位对应罗盘上的指针，五行相克。每个位置对应，祸，利，吉，凶，财，丁，等.... </li>
          
        </ul>
        </div>
    </div>
      
      
    <div class="p2">
       <h3> 留言板</h3>
       <div class="c2">
       <textarea cols="48" rows="18">
       <% %>
       
       </textarea>
       <div class="c2">
       <table>
    <tr>
        <td>姓名：</td>
        <td><input type="text" id="name"></td>
    </tr>
    <tr>
        <td>留言：</td>
        <td><input type="text" id="memo"></td>
    </tr>
    <tr>
        <td></td>
        <td><input type="button" onclick="saveData()" value="保存"></td>
    </tr>

</table>
       </div>
       </div>
   </div> 
   

</body>
</html>
