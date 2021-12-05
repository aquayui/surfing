<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style  type="text/css">
input {
text-align: left;
  padding: 15px 5px;
margin-left: 10px;
margin-top: 20px;
  width: 360px;
border: none;
    color: #757575;
}
button{
			width: 200px;/*设置按钮宽度*/
			height: 40px;/*设置按钮高度*/
			color:black;/*字体颜色*/
			background-color:teal;/*按钮背景颜色*/
			border-radius: 3px;/*让按钮变得圆滑一点*/
			border-width: 0;/*消去按钮丑的边框*/
			margin: 0;
			outline: none;/*取消轮廓*/
			font-family: KaiTi;/*字体设置为楷体*/
			font-size: 20px;/*设置字体大小*/
			text-align: center;/*字体居中*/
			cursor: pointer;/*设置鼠标箭头手势*/
		}
		button:hover{/*鼠标移动时的颜色变化*/
			background-color: mediumturquoise;
		}
		
		
    
</style>
</head>

<body background="img\找工作.png">
<center>

<form action="main.jsp" method="post">
<br><br><br><br><br><br>
<font size="+8" color="white"><strong>互联网行业</strong></font>
<br>
<font size="+8" color="white"><strong>招聘信息聚会系统</strong></font>
<br><br><br><br>


<div class="text">
<input type="text" placeholder="请输入账号..."> <br>
<input type="password" name="password" placeholder="请输入密码..."><br>
 <br><br><br><br>
</div>

<a href="main.jsp"> <button>确定</button></a>


<br><br>

</form>

</body>
</html>
