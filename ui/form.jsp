<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

  .blue {

  background-color:#3C3C3C;

  color:#ADADAD;

  }
  #box1{
  left:500px;
  position: absolute;
  }
button {
    display: block;
    border: none;
    outline: none;
    margin: 2rem 61px 0;
    width: 80px;
    height: 75px;
    border-radius: 50%;
    background: linear-gradient(#E1FFFF, #AFEEEE, #B0E0E6);
    box-shadow: 0 0 8px #E1FFFF;
    cursor: pointer;
}

button:hover {
    border: none;
    outline: none;
    margin: 2rem -7px 0;
    width: 20%;
    height: 3.5rem;
    border-radius: 3rem;
    background: linear-gradient(#E1FFFF, #AFEEEE, #B0E0E6);
    box-shadow: 0 0 8px #E1FFFF;
    cursor: pointer;
    color: rgba(0,0,0,0.6);
    transition: .4s;
}


</style>
</head>

<body>
<br><br><br><br><br><br>
<div id="box1">
<font size="+2" color="black">职业偏好：</font>
&nbsp;
<select name="1" id="1" style="width:120pt;height:36pt;font-size:22px"> 
        <option value="11" class="blue" selected disabled hidden >选择岗位名称：</option> 
        <option value="12" class="blue">网络工程师</option> 
        <option value="13" class="blue">软件工程师 </option> 
        <option value="14" class="blue">律师</option> 
        <option value="15" class="blue">打工仔</option> 
    </select>
    
    &nbsp;&nbsp;&nbsp;&nbsp;
<font size="+2" color="black">薪资要求：</font>
&nbsp;
<select name="2" id="2" style="width:120pt;height:36pt;font-size:22px"> 
        <option value="21" class="blue" selected disabled hidden >选择薪资要求：</option> 
        <option value="22" class="blue">3000</option> 
        <option value="23" class="blue">6000 </option> 
        <option value="24" class="blue">10000</option> 
        <option value="25" class="blue">15000</option> 
    </select>
    
    &nbsp;&nbsp;&nbsp;&nbsp;
<font size="+2" color="black">学历：</font>
&nbsp;
<select name="3" id="3" style="width:120pt;height:36pt;font-size:22px"> 
        <option value="31" class="blue" selected disabled hidden >选择您的学历：</option> 
        <option value="32" class="blue">专科</option> 
        <option value="33" class="blue">本科 </option> 
        <option value="34" class="blue">研究生</option> 
        <option value="35" class="blue">博士</option> 
    </select>
    <br><br><br><br>
<font size="+2" color="black">企业类型：</font>
&nbsp;
<select name="2" id="2" style="width:120pt;height:36pt;font-size:22px"> 
        <option value="21" class="blue" selected disabled hidden >选择企业类型：</option> 
        <option value="22" class="blue">合资</option> 
        <option value="23" class="blue">独资 </option> 
        <option value="24" class="blue">国有</option> 
        <option value="25" class="blue">私营</option> 
    </select>
    
    &nbsp;&nbsp;&nbsp;&nbsp;
<font size="+2" color="black">职位需要：</font>
&nbsp;
<select name="3" id="3" style="width:120pt;height:36pt;font-size:22px"> 
        <option value="31" class="blue" selected disabled hidden >选择职位：</option> 
        <option value="32" class="blue">经理</option> 
        <option value="33" class="blue">部长 </option> 
        <option value="34" class="blue">员工</option> 
        <option value="35" class="blue">副经理</option> 
    </select>
    
    <br><br><br><br>
    <font size="+2" color="black">公司名称：</font>
    &nbsp;
    <input type="text" placeholder="心仪的公司去向..." style="height:36px;width:240px;font-size:22px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
    <font size="+2" color="black">地点选择：</font>
    &nbsp;
    <input type="text" placeholder="希望工作的地点..." style="height:36px;width:240px;font-size:22px" />
    
    
    <br><br><br>
    <font size="+2" color="black">职位描述：</font>
    <br>
    <textarea  placeholder="对您希望的职位进行详细的描述..." style="width:370px;height:100px;overflow-y:hidden;font-size:22px"></textarea>
    <br><br><br>
     <center>
    <a href="UserLogin.jsp" target="_blank"><button>退出登录</button></a></center>
    
    </div>
    
    
   
</body>

</html>
