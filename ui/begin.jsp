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
    height: 50px;
    background:linear-gradient(315deg, #30cfd0 50%, #0066ff );
    border: none;
    border-radius: 10px;
    font-family: 'Lato', sans-serif;
    font-weight: 500;
    font-size: 25px;
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
}
.btn:active{
    top: 2px;
}
 </style>
</style>

</head>
<body >
<form id="form" method="post" action="menu.jsp"> 
<center>

<button type="submit" onclick="window.open('menu.jsp')" class="btn">技术</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="window.open('menu.jsp')" class="btn">产品</button>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<button type="submit" onclick="window.open('menu.jsp')" class="btn">设计</button>
<br>
<br>
<br>

</center>
</form> 
</body>
</html>
