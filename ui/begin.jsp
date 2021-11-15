<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
body{
    display: flex;
    justify-content: center;
    align-items: center;
}
.btn{
    width: 250px;
    height: 75px;
    background:linear-gradient(315deg, #30cfd0 50%, #0066ff );
    border: none;
    border-radius: 10px;
    font-family: 'Lato', sans-serif;
    font-weight: 500;
    font-size: 30px;
    color: white;
    box-shadow: inset 2px 2px 2px 0px rgba(255, 255, 255, .5),
    7px 7px 20px 0px rgba(0, 0, 0, .1),
    4px 4px 5px 0px rgba(0, 0, 0, .1);
    outline: none;
    position: relative;
    z-index: 0;
}
.btn::before{
    position:absolute;
    content: '';
    left: 0;
    bottom:0;
    width: 100%;
    height: 0;
    transition: all 0.3s ease;
    border-radius: 10px;
    background:linear-gradient(315deg, red 0%, blue 74%);
    z-index: -1;
}

.btn:hover::before{
	top: 0;
    height: 100%;
     background:linear-gradient(315deg, red 0%, blue 74%);
}
.btn:active{
    top: 2px;
}
 </style>


<script LANGUAGE="JavaScript">
　　<!--
　　function openwin1() {
　　window.location.href ='test02.jsp?clicktype=1' //写成一行
　　}
　　//-->
<!--
　　function openwin2() {
　　window.location.href ='test02.jsp?clicktype=2' //写成一行
　　}
　　//-->
<!--
　　function openwin3() {
　　window.location.href ='test02.jsp?clicktype=3' //写成一行
　　}
　　//-->
<!--
　　function openwin4() {
　　window.location.href ='test02.jsp?clicktype=4' //写成一行
　　}
　　//-->
<!--
　　function openwin5() {
　　window.location.href ='test02.jsp?clicktype=5' //写成一行
　　}
　　//-->
<!--
　　function openwin6() {
　　window.location.href ='test02.jsp?clicktype=6' //写成一行
　　}
　　//-->
<!--
　　function openwin7() {
　　window.location.href ='test02.jsp?clicktype=7' //写成一行
　　}
　　//-->
<!--
　　function openwin8() {
　　window.location.href ='test02.jsp?clicktype=8' //写成一行
　　}
　　//-->
<!--
　　function openwin9() {
　　window.location.href ='test02.jsp?clicktype=9' //写成一行
　　}
　　//-->
<!--
　　function openwin10() {
　　window.location.href ='test02.jsp?clicktype=10' //写成一行
　　}
　　//-->
<!--
　　function openwin11() {
　　window.location.href ='test02.jsp?clicktype=11' //写成一行
　　}
　　//-->
<!--
　　function openwin12() {
　　window.location.href ='test02.jsp?clicktype=12' //写成一行
　　}
　　//-->
<!--
　　function openwin13() {
　　window.location.href ='test02.jsp?clicktype=13' //写成一行
　　}
　　//-->
<!--
　　function openwin14() {
　　window.location.href ='test02.jsp?clicktype=14'//写成一行
　　}
　　//-->
<!--
　　function openwin15() {
　　window.location.href ='test02.jsp?clicktype=15' //写成一行
　　}
　　//-->
<!--
　　function openwin16() {
　　window.location.href ='test02.jsp?clicktype=16' //写成一行
　　}
　　//-->
<!--
　　function openwin17() {
　　window.location.href ='test02.jsp?clicktype=17' //写成一行
　　}
　　//-->
<!--
　　function openwin18() {
　　window.location.href ='test02.jsp?clicktype=18' //写成一行
　　}
　　//-->
　</script>
</head>
<body >

<center>

<button class="btn" onclick="openwin1()">后端开发</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin2()" class="btn">移动开发</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin3()" class="btn">测试</button>


<br>
<br>
<br>

<button type="submit" onclick="openwin4()" class="btn">运维/技术支持</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin5()" class="btn">数据</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin6()" class="btn">项目管理</button>
<br>
<br>
<br>

<button type="submit" onclick="openwin7()" class="btn">硬件开发</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin8()" class="btn">前端开发</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin9()" class="btn">通信</button>
<br>
<br>
<br>

<button type="submit" onclick="openwin10()" class="btn">电子/半导体</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin11()" class="btn">高端技术职位</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin12()" class="btn">人工智能</button>
<br>
<br>
<br>

<button type="submit" onclick="openwin13()" class="btn">销售技术支持</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin14()" class="btn">视觉/交互设计</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin15()" class="btn">游戏设计</button>
<br>
<br>
<br>

<button type="submit" onclick="openwin16()" class="btn">用户研究</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin17()" class="btn">高端设计职位</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="openwin18()" class="btn">产品经理</button>


</center>

</body>

</html>
