<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, target-densitydpi=device-dpi, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试页面</title>
<style>
body{
    scrollbar-base-color:111111;
    scrollbar-arrow-color:111111;
    scrollbar-shadow-color:111111;
    width:100%;
    height:3600px;
    margin:0px; 
    padding:0px
}
</style>
</head>
    <!--解决frameset滚动条的方法 -->
    <body margin="0">
	    <iframe src="frameset.jsp" style="height:100%;width:100%;border-width: 0px; ">
       </iframe>
	</body>
</html>
