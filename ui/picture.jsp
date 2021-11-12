<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图片轮播</title>

<style type="text/css">
body{ background-color:#EEF2FB}

.rollBox{width:1200px;height:250px;overflow:hidden;padding:0px;margin:0 auto;}
.rollBox .RightBotton{height:0px;width:0px;background: no-repeat 0px 0px;
overflow:hidden;float:left;margin:110px 0 0 0;cursor:pointer;}
.rollBox .Cont{width:2000px;overflow:hidden;float:left;}
.rollBox .ScrCont{width:100000px;}
.rollBox .Cont .pic{width:300px;float:left;text-align:center;}
.rollBox .Cont .pic img{padding:6px;background:#ffffff;display:block;margin:0 auto;width:280px;height:200px;}
.rollBox .Cont .pic div{line-height:20px;color:#505050;margin:15px 0px;}
.rollBox .Cont .pic div span{display:block;}
.rollBox .Cont a:link,.rollBox .Cont a:visited{color:#626466;text-decoration:none;}
.rollBox .Cont a:hover{color:#f00;text-decoration:underline;}
.rollBox #List1,.rollBox #List2{float:left;}


</style>

<script LANGUAGE="JavaScript">
　　<!--
　　function openwin() {
　　window.open ("https://www.zhipin.com/xiamen/", "newwindow", "toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") //写成一行
　　}
　　//-->
　</script>

</head>
<body>
 
 <div class="rollBox">
     <div class="Cont" id="ISL_Cont">
      <div class="ScrCont">
       <div id="List1">

        <!-- 图片列表 begin -->
         <div class="pic">
          <a href="#" onclick="openwin()"><img src="img/招聘.png"> </a>
         </div>  
             
         <div class="pic">
          <a href="#" onclick="openwin()"><img src="img/招聘.png"> </a>
      
         </div>
         
         
         <div class="pic">
          <a href="#" onclick="openwin()"><img src="img/招聘.png"> </a>

         </div>
         
          
         <div class="pic">
         <a href="#" onclick="openwin()"><img src="img/招聘.png"> </a>

         </div>
         
         
         <div class="pic">
        <a href="#" onclick="openwin()"><img src="img/招聘.png"> </a>

         </div>
         
   		<div class="pic">
         <a href="#" onclick="openwin()"><img src="img/招聘.png"> </a>

         </div>
         
            
        <!-- 图片列表 end -->
      </div>
       
       
       
       <div id="List2"></div>
      </div>
     </div>
     <div class="RightBotton" onmousedown="ISL_GoDown()" onmouseup="ISL_StopDown()" onmouseout="ISL_StopDown()"></div>
   </div>
</body>
<script language="javascript" type="text/javascript">

//图片滚动列表 jb51.net
var Speed = 1; //速度(毫秒)
var Space = 5; //每次移动(px)
var PageWidth = 600; //翻页宽度
var fill = 0; //整体移位
var MoveLock = false;
var MoveTimeObj;
var Comp = 0;
var AutoPlayObj = null;
GetObj("List2").innerHTML = GetObj("List1").innerHTML;
GetObj('ISL_Cont').scrollLeft = fill;
GetObj("ISL_Cont").onmouseover = function(){clearInterval(AutoPlayObj);}
GetObj("ISL_Cont").onmouseout = function(){AutoPlay();}
AutoPlay();

function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay(){ //自动滚动
 clearInterval(AutoPlayObj);
 AutoPlayObj = setInterval('ISL_GoDown();ISL_StopDown();',1000); //间隔时间
}

function ISL_GoDown(){ //下翻
 clearInterval(MoveTimeObj);
 if(MoveLock) return;
 clearInterval(AutoPlayObj);
 MoveLock = true;
 ISL_ScrDown();
 MoveTimeObj = setInterval('ISL_ScrDown()',Speed);
}

function ISL_StopDown(){ //下翻停止
 clearInterval(MoveTimeObj);
 if(GetObj('ISL_Cont').scrollLeft % PageWidth - fill != 0 ){
  Comp = PageWidth - GetObj('ISL_Cont').scrollLeft % PageWidth + fill;
  CompScr();
 }else{
  MoveLock = false;
 }
 AutoPlay();
}
function ISL_ScrDown(){ //下翻动作
 if(GetObj('ISL_Cont').scrollLeft >= GetObj('List1').scrollWidth){GetObj('ISL_Cont').scrollLeft = GetObj('ISL_Cont').scrollLeft - GetObj('List1').scrollWidth;}
 GetObj('ISL_Cont').scrollLeft += Space ;
}

function CompScr(){
 var num;
 if(Comp == 0){MoveLock = false;return;}
 if(Comp > 0){ //下翻
  if(Comp > Space){
   Comp -= Space;
   num = Space;
  }else{
   num = Comp;
   Comp = 0;
  }
  GetObj('ISL_Cont').scrollLeft += num;
  setTimeout('CompScr()',Speed);
 }
}

</script>
</html>
