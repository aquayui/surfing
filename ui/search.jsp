<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
<script LANGUAGE="JavaScript">
<!--
function openwin() {
	top.location.href = "menu.jsp"
}
//-->
</script>
</script>
<style>
.search{
	font-size=0;
}
.button{

	width:96px;
	height:44px;
	color:white;
	background-color:#00d7c6;/*将按钮背景设置为红色，字体设置为白*/
	border:none;
	outline:0;/*取消边框和外边框将按钮边框去掉*/
	font-size:22px;
	vertical-align:top;
}
.input{
	width:500px;
	height:40px;
	outline:0;
	border:2px solid #00d7c6;
	font-size:22px;
}


</style>

</head>
<center>
<form action="menu.jsp" method="post" class="search" target="_blank">
	
	<!--placeholder是文本框中的提示文字-->
	
	<input name="search" id="search" type="text" class="input" placeholder="请输入：" />
	<input type="submit" class="button" value="搜索"/>
</form>
</center>
</body>
</html>
