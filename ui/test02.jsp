<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="CSS/style.css" type="text/css">
</head>
<body>

	<%
		String type=request.getParameter("clicktype");
		if(type.equals("1")){%>			
                        <font size="+3" color="#00d7c6" style="left:355px;position:absolute;">后端开发：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:355px;position:absolute;">Java<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">C++<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">PHP<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">C<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">C#<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">.NET<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">Hadoop<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">Python<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">Delphi<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">VB<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">Perl<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">Ruby<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">Node.jsa<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">Golanga<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">Erlang<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">后端开发<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">数据采集<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">GIS工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">语音/视频/图形开发<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">全栈工程师<span></span></button>
                                                </center>
                                                </font>
                                               
		<%}
		
		if(type.equals("2")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">移动开发：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">HTML5<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">Android<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">iOS<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">移动web前端<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">Flash开发<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">JavaScript<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">U3D<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">COCOS2DX<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">UE4<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">移动开发<span></span></button>

                                                </center>
                                                </font>
                        
		<%}
		if(type.equals("3")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">测试：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">测试工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">自动化测试<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">功能测试<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">性能测试<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">测试开发<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">移动端测试<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">游戏测试<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">硬件测试<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">软件测试<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">渗透测试<span></span></button>

                                                </center>
                                                </font>
		<%}
		if(type.equals("4")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">运维/技术支持：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">运维工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">运维开发工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">网络工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">系统工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">IT技术支持<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">系统管理员<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">网络安全<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">系统安全<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">软件测试<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">DBA<span></span></button>

                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("5")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">数据：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">ETL工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">数据仓库<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">数据开发<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">数据挖掘<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">数据分析师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">数据架构师<span></span></button><br><br><br>


                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("6")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">项目管理：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">项目助理<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">项目专员<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">实施顾问<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">实施工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">需求分析工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">硬件项目经理<span></span></button><br><br><br>

                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("7")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">硬件开发：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">嵌入式<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">自动化<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">单片机<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">电路设计<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">驱动开发<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">系统集成<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">FPGA开发<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">DSP开发<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">ARM开发<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">PCB工艺<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">射频工程师<span></span></button>
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("8")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">前端开发：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">web前端<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">JavaScript<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">Flash开发<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">HTML5<span></span></button>
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("9")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">通信：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">通信研发工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">数据通信工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">移动通信工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">电信网络工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">电信交换工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">有线传输工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">无线/射频通信工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">通信电源工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">通信标准化工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">通信项目专员<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">通信项目经理<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">核心网工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:355px;position:absolute;">通信测试工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">通信设备工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">光通信工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">光传输工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">光网络工程师<span></span></button>
                                                
                                                </center>
                                                </font>
		
		<%}
		if(type.equals("10")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">电子/半导体：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">电气设计工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">电子工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">集成电路IC设计<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">FAE<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">IC验证工程师<span></span></button>
                                              
                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("11")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">高端技术职位：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">技术经理<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">技术总监<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">测试经理<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">架构师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">CTO<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">运维总监<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">技术合伙人<span></span></button>          
                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("12")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">人工智能：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">数据挖掘<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">搜索算法<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">自然语言处理<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">推荐算法<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">算法工程师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">智能驾驶系统工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">反欺诈/风控算法<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">机器学习<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">深度学习<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">语音识别<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">图像识别<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">算法研究员<span></span></button>
                                                
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("13")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">销售技术支持：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">售前技术支持<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">售后技术支持<span></span></button>
                                                
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("14")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">视觉/交互设计：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">视觉设计师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">网页设计师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">Flash设计师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">APP设计师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">UI设计师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">平面设计<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">3D设计师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">广告设计<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">多媒体设计师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">原画师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">CAD设计/制图<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">美工<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:355px;position:absolute;">包装设计<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">设计师助理<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">动画设计<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">插画师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">漫画师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:1390px;position:absolute;">人像修图师<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">交互设计师<span></span></button>
                                                
                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("15")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">游戏设计：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">游戏界面设计师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">游戏场景<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">游戏角色<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">游戏动作<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:870px;position:absolute;">游戏数值策划<span></span></button>
                                                
                                                </center>
                                                </font>
		  
                
                
                		<%}
		
		if(type.equals("16")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">用户研究：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">用户研究员<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">UX设计师<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">用户研究经理<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">用户研究总监<span></span></button>
                                                
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("17")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">高端设计职位：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">高端设计职位<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">设计经理/主管<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">设计总监<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">视觉设计总监<span></span></button>
                                                
                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("18")){%>
		<font size="+3" color="#00d7c6" style="left:355px;position:absolute;">产品经理：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">网页产品经理<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">移动产品经理<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">产品助理<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">数据产品经理<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">电商产品经理<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">游戏策划<span></span></button><br><br><br>
                                                <button class="button" onclick="window.open ('data.jsp')"style="left:355px;position:absolute;">产品专员<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:870px;position:absolute;">设计经理/主管<span></span></button>
                                                <button class="button" onclick="window.open ('data.jsp')" style="left:1390px;position:absolute;">硬件产品经理<span></span></button><br><br><br>
                                                
                                                
                                                </center>
                                                </font>
		
		<%}
		
	%>
	
</body>
</html>
