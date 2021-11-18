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
                        <font size="+3" color="#00d7c6" style="left:265px;position:absolute;">后端开发：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('java')" style="left:265px;position:absolute;">Java<span></span></button>
                                                <button class="button" onclick="getVbtn('C')"  style="left:780px;position:absolute;">C++<span></span></button>
                                                <button class="button" onclick="getVbtn('PHP')"  style="left:1300px;position:absolute;">PHP<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('C')" style="left:265px;position:absolute;">C<span></span></button>
                                                <button class="button" onclick="getVbtn('C')" style="left:780px;position:absolute;">C#<span></span></button>
                                                <button class="button" onclick="getVbtn('.NET')" style="left:1300px;position:absolute;">.NET<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('Hadoop')" style="left:265px;position:absolute;">Hadoop<span></span></button>
                                                <button class="button" onclick="getVbtn('Python')" style="left:780px;position:absolute;">Python<span></span></button>
                                                <button class="button" onclick="getVbtn('Delphi')" style="left:1300px;position:absolute;">Delphi<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('VB')" style="left:265px;position:absolute;">VB<span></span></button>
                                                <button class="button" onclick="getVbtn('Perl')" style="left:780px;position:absolute;">Perl<span></span></button>
                                                <button class="button" onclick="getVbtn('Ruby')" style="left:1300px;position:absolute;">Ruby<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('Node.jsa')" style="left:265px;position:absolute;">Node.jsa<span></span></button>
                                                <button class="button" onclick="getVbtn('Golanga')" style="left:780px;position:absolute;">Golanga<span></span></button>
                                                <button class="button" onclick="getVbtn('Erlang')" style="left:1300px;position:absolute;">Erlang<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('后端开发')" style="left:265px;position:absolute;">后端开发<span></span></button>
                                                <button class="button" onclick="getVbtn('数据采集')" style="left:780px;position:absolute;">数据采集<span></span></button>
                                                <button class="button" onclick="getVbtn('GIS工程师')" style="left:1300px;position:absolute;">GIS工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('全栈工程师')" style="left:265px;position:absolute;">全栈工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('语音开发')" style="left:780px;position:absolute;">语音开发<span></span></button>
                                                <button class="button" onclick="getVbtn('视频开发')" style="left:1300px;position:absolute;">视频开发<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('图形开发')" style="left:265px;position:absolute;">图形开发<span></span></button>
                                                </center>
                                                </font>
            <form>
            
            </form> 
		<%}
		
		if(type.equals("2")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">移动开发：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('HTML5')" style="left:265px;position:absolute;">HTML5<span></span></button>
                                                <button class="button" onclick="getVbtn('Android')"  style="left:780px;position:absolute;">Android<span></span></button>
                                                <button class="button" onclick="getVbtn('iOS')"  style="left:1300px;position:absolute;">iOS<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('移动web前端')" style="left:265px;position:absolute;">移动web前端<span></span></button>
                                                <button class="button" onclick="getVbtn('Flash开发')" style="left:780px;position:absolute;">Flash开发<span></span></button>
                                                <button class="button" onclick="getVbtn('JavaScript')" style="left:1300px;position:absolute;">JavaScript<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('U3D')" style="left:265px;position:absolute;">U3D<span></span></button>
                                                <button class="button" onclick="getVbtn('COCOS2DX')" style="left:780px;position:absolute;">COCOS2DX<span></span></button>
                                                <button class="button" onclick="getVbtn('UE4')" style="left:1300px;position:absolute;">UE4<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('移动开发')" style="left:265px;position:absolute;">移动开发<span></span></button>

                                                </center>
                                                </font>
                        
		<%}
		if(type.equals("3")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">测试：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('测试工程师')" style="left:265px;position:absolute;">测试工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('自动化测试')"  style="left:780px;position:absolute;">自动化测试<span></span></button>
                                                <button class="button" onclick="getVbtn('功能测试')"  style="left:1300px;position:absolute;">功能测试<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('性能测试')" style="left:265px;position:absolute;">性能测试<span></span></button>
                                                <button class="button" onclick="getVbtn('测试开发')" style="left:780px;position:absolute;">测试开发<span></span></button>
                                                <button class="button" onclick="getVbtn('移动端测试')" style="left:1300px;position:absolute;">移动端测试<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('游戏测试')" style="left:265px;position:absolute;">游戏测试<span></span></button>
                                                <button class="button" onclick="getVbtn('硬件测试')" style="left:780px;position:absolute;">硬件测试<span></span></button>
                                                <button class="button" onclick="getVbtn('软件测试')" style="left:1300px;position:absolute;">软件测试<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('渗透测试')" style="left:265px;position:absolute;">渗透测试<span></span></button>

                                                </center>
                                                </font>
		<%}
		if(type.equals("4")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">运维/技术支持：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('运维工程师')" style="left:265px;position:absolute;">运维工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('运维开发工程师')"  style="left:780px;position:absolute;">运维开发工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('网络工程师')"  style="left:1300px;position:absolute;">网络工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('系统工程师')" style="left:265px;position:absolute;">系统工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('IT技术支持')" style="left:780px;position:absolute;">IT技术支持<span></span></button>
                                                <button class="button" onclick="getVbtn('系统管理员')" style="left:1300px;position:absolute;">系统管理员<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('网络安全')" style="left:265px;position:absolute;">网络安全<span></span></button>
                                                <button class="button" onclick="getVbtn('系统安全')" style="left:780px;position:absolute;">系统安全<span></span></button>
                                                <button class="button" onclick="getVbtn('软件测试')" style="left:1300px;position:absolute;">软件测试<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('DBA')" style="left:265px;position:absolute;">DBA<span></span></button>

                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("5")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">数据：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('ETL工程师')" style="left:265px;position:absolute;">ETL工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('数据仓库')"  style="left:780px;position:absolute;">数据仓库<span></span></button>
                                                <button class="button" onclick="getVbtn('数据开发')"  style="left:1300px;position:absolute;">数据开发<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('数据挖掘')" style="left:265px;position:absolute;">数据挖掘<span></span></button>
                                                <button class="button" onclick="getVbtn('数据分析师')" style="left:780px;position:absolute;">数据分析师<span></span></button>
                                                <button class="button" onclick="getVbtn('数据架构师')" style="left:1300px;position:absolute;">数据架构师<span></span></button><br><br><br>


                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("6")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">项目管理：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('项目助理')" style="left:265px;position:absolute;">项目助理<span></span></button>
                                                <button class="button" onclick="getVbtn('项目专员')"  style="left:780px;position:absolute;">项目专员<span></span></button>
                                                <button class="button" onclick="getVbtn('实施顾问')"  style="left:1300px;position:absolute;">实施顾问<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('实施工程师')" style="left:265px;position:absolute;">实施工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('需求分析工程师')" style="left:780px;position:absolute;">需求分析工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('硬件项目经理')" style="left:1300px;position:absolute;">硬件项目经理<span></span></button><br><br><br>

                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("7")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">硬件开发：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('嵌入式')" style="left:265px;position:absolute;">嵌入式<span></span></button>
                                                <button class="button" onclick="getVbtn('自动化')"  style="left:780px;position:absolute;">自动化<span></span></button>
                                                <button class="button" onclick="getVbtn('单片机')"  style="left:1300px;position:absolute;">单片机<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('电路设计')" style="left:265px;position:absolute;">电路设计<span></span></button>
                                                <button class="button" onclick="getVbtn('驱动开发')" style="left:780px;position:absolute;">驱动开发<span></span></button>
                                                <button class="button" onclick="getVbtn('系统集成')" style="left:1300px;position:absolute;">系统集成<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('FPGA开发')" style="left:265px;position:absolute;">FPGA开发<span></span></button>
                                                <button class="button" onclick="getVbtn('DSP开发')" style="left:780px;position:absolute;">DSP开发<span></span></button>
                                                <button class="button" onclick="getVbtn('ARM开发')" style="left:1300px;position:absolute;">ARM开发<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('PCB工艺')" style="left:265px;position:absolute;">PCB工艺<span></span></button>
                                                <button class="button" onclick="getVbtn('射频工程师')" style="left:780px;position:absolute;">射频工程师<span></span></button>
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("8")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">前端开发：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('web前端')" style="left:265px;position:absolute;">web前端<span></span></button>
                                                <button class="button" onclick="getVbtn('JavaScript')"  style="left:780px;position:absolute;">JavaScript<span></span></button>
                                                <button class="button" onclick="getVbtn('Flash开发')"  style="left:1300px;position:absolute;">Flash开发<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('HTML5')" style="left:265px;position:absolute;">HTML5<span></span></button>
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("9")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">通信：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('通信研发工程师')" style="left:265px;position:absolute;">通信研发工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('数据通信工程师')"  style="left:780px;position:absolute;">数据通信工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('移动通信工程师')"  style="left:1300px;position:absolute;">移动通信工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('电信网络工程师')" style="left:265px;position:absolute;">电信网络工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('电信交换工程师')" style="left:780px;position:absolute;">电信交换工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('有线传输工程师')" style="left:1300px;position:absolute;">有线传输工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('无线通信工程师')" style="left:265px;position:absolute;">无线/射频通信工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('通信电源工程师')" style="left:780px;position:absolute;">通信电源工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('通信标准化工程师')" style="left:1300px;position:absolute;">通信标准化工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('通信项目专员')" style="left:265px;position:absolute;">通信项目专员<span></span></button>
                                                <button class="button" onclick="getVbtn('通信项目经理')" style="left:780px;position:absolute;">通信项目经理<span></span></button>
                                                <button class="button" onclick="getVbtn('核心网工程师')" style="left:1300px;position:absolute;">核心网工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('通信测试工程师')"  style="left:265px;position:absolute;">通信测试工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('通信设备工程师')"  style="left:780px;position:absolute;">通信设备工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('光通信工程师')" style="left:1300px;position:absolute;">光通信工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('光传输工程师')" style="left:265px;position:absolute;">光传输工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('光网络工程师')" style="left:780px;position:absolute;">光网络工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('射频通信工程师')" style="left:1300px;position:absolute;">射频通信工程师<span></span></button><br><br><br>
                                                </center>
                                                </font>
		
		<%}
		if(type.equals("10")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">电子/半导体：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('电气设计工程师')" style="left:265px;position:absolute;">电气设计工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('电子工程师')"  style="left:780px;position:absolute;">电子工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('集成电路IC设计')"  style="left:1300px;position:absolute;">集成电路IC设计<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('FAE')" style="left:265px;position:absolute;">FAE<span></span></button>
                                                <button class="button" onclick="getVbtn('IC验证工程师')" style="left:780px;position:absolute;">IC验证工程师<span></span></button>
                                              
                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("11")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">高端技术职位：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('技术经理')" style="left:265px;position:absolute;">技术经理<span></span></button>
                                                <button class="button" onclick="getVbtn('技术总监')"  style="left:780px;position:absolute;">技术总监<span></span></button>
                                                <button class="button" onclick="getVbtn('测试经理')"  style="left:1300px;position:absolute;">测试经理<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('架构师')" style="left:265px;position:absolute;">架构师<span></span></button>
                                                <button class="button" onclick="getVbtn('CTO')" style="left:780px;position:absolute;">CTO<span></span></button>
                                                <button class="button" onclick="getVbtn('运维总监')" style="left:1300px;position:absolute;">运维总监<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('技术合伙人')" style="left:265px;position:absolute;">技术合伙人<span></span></button>          
                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("12")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">人工智能：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('数据挖掘')" style="left:265px;position:absolute;">数据挖掘<span></span></button>
                                                <button class="button" onclick="getVbtn('搜索算法')"  style="left:780px;position:absolute;">搜索算法<span></span></button>
                                                <button class="button" onclick="getVbtn('自然语言处理')"  style="left:1300px;position:absolute;">自然语言处理<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('推荐算法')" style="left:265px;position:absolute;">推荐算法<span></span></button>
                                                <button class="button" onclick="getVbtn('算法工程师')" style="left:780px;position:absolute;">算法工程师<span></span></button>
                                                <button class="button" onclick="getVbtn('智能驾驶系统工程师')" style="left:1300px;position:absolute;">智能驾驶系统工程师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('反欺诈算法')" style="left:265px;position:absolute;">反欺诈/风控算法<span></span></button>
                                                <button class="button" onclick="getVbtn('机器学习')" style="left:780px;position:absolute;">机器学习<span></span></button>
                                                <button class="button" onclick="getVbtn('深度学习')" style="left:1300px;position:absolute;">深度学习<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('语音识别')" style="left:265px;position:absolute;">语音识别<span></span></button>
                                                <button class="button" onclick="getVbtn('图像识别')" style="left:780px;position:absolute;">图像识别<span></span></button>
                                                <button class="button" onclick="getVbtn('算法研究员')" style="left:1300px;position:absolute;">算法研究员<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('反风控算法')" style="left:265px;position:absolute;">反风控算法<span></span></button>
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("13")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">销售技术支持：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('售前技术支持')" style="left:265px;position:absolute;">售前技术支持<span></span></button>
                                                <button class="button" onclick="getVbtn('售后技术支持')"  style="left:780px;position:absolute;">售后技术支持<span></span></button>
                                                
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("14")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">视觉/交互设计：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('视觉设计')" style="left:265px;position:absolute;">视觉设计师<span></span></button>
                                                <button class="button" onclick="getVbtn('网页设计')"  style="left:780px;position:absolute;">网页设计师<span></span></button>
                                                <button class="button" onclick="getVbtn('Flash设计')"  style="left:1300px;position:absolute;">Flash设计师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('APP设计')" style="left:265px;position:absolute;">APP设计师<span></span></button>
                                                <button class="button" onclick="getVbtn('UI设计')" style="left:780px;position:absolute;">UI设计师<span></span></button>
                                                <button class="button" onclick="getVbtn('平面设计')" style="left:1300px;position:absolute;">平面设计<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('3D设计师')" style="left:265px;position:absolute;">3D设计师<span></span></button>
                                                <button class="button" onclick="getVbtn('广告设计')" style="left:780px;position:absolute;">广告设计<span></span></button>
                                                <button class="button" onclick="getVbtn('多媒体设计师')" style="left:1300px;position:absolute;">多媒体设计师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('原画师')" style="left:265px;position:absolute;">原画师<span></span></button>
                                                <button class="button" onclick="getVbtn('CAD')" style="left:780px;position:absolute;">CAD设计/制图<span></span></button>
                                                <button class="button" onclick="getVbtn('美工')" style="left:1300px;position:absolute;">美工<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('包装设计')"  style="left:265px;position:absolute;">包装设计<span></span></button>
                                                <button class="button" onclick="getVbtn('设计师助理')"  style="left:780px;position:absolute;">设计师助理<span></span></button>
                                                <button class="button" onclick="getVbtn('动画设计')" style="left:1300px;position:absolute;">动画设计<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('插画师')" style="left:265px;position:absolute;">插画师<span></span></button>
                                                <button class="button" onclick="getVbtn('漫画师')" style="left:780px;position:absolute;">漫画师<span></span></button>
                                                <button class="button" onclick="getVbtn('人像修图师')" style="left:1300px;position:absolute;">人像修图师<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('交互设计师')" style="left:265px;position:absolute;">交互设计师<span></span></button>
                                                
                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("15")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">游戏设计：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('游戏界面设计')" style="left:265px;position:absolute;">游戏界面设计师<span></span></button>
                                                <button class="button" onclick="getVbtn('游戏场景')"  style="left:780px;position:absolute;">游戏场景<span></span></button>
                                                <button class="button" onclick="getVbtn('游戏角色')"  style="left:1300px;position:absolute;">游戏角色<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('游戏动作')" style="left:265px;position:absolute;">游戏动作<span></span></button>
                                                <button class="button" onclick="getVbtn('游戏数值策划')" style="left:780px;position:absolute;">游戏数值策划<span></span></button>
                                                
                                                </center>
                                                </font>
		  
                
                
                		<%}
		
		if(type.equals("16")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">用户研究：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('用户研究')" style="left:265px;position:absolute;">用户研究员<span></span></button>
                                                <button class="button" onclick="getVbtn('UX设计')"  style="left:780px;position:absolute;">UX设计师<span></span></button>
                                                <button class="button" onclick="getVbtn('用户研究经理')"  style="left:1300px;position:absolute;">用户研究经理<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('用户研究总监')" style="left:265px;position:absolute;">用户研究总监<span></span></button>
                                                
                                                </center>
                                                </font>
		  
		<%}
		if(type.equals("17")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">高端设计职位：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('高端设计')" style="left:265px;position:absolute;">高端设计职位<span></span></button>
                                                <button class="button" onclick="getVbtn('设计经理')"  style="left:780px;position:absolute;">设计经理<span></span></button>
                                                <button class="button" onclick="getVbtn('设计主管')"  style="left:1300px;position:absolute;">设计主管<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('设计总监')"  style="left:265px;position:absolute;">设计总监<span></span></button>
                                                <button class="button" onclick="getVbtn('视觉设计总监')" style="left:780px;position:absolute;">视觉设计总监<span></span></button>
                                                
                                                </center>
                                                </font>
		 
		<%}
		if(type.equals("18")){%>
		<font size="+3" color="#00d7c6" style="left:265px;position:absolute;">产品经理：</font>
                                    <font size="+2">
                                    <br><br><center>
                                                <button class="button" onclick="getVbtn('网页产品经理')" style="left:265px;position:absolute;">网页产品经理<span></span></button>
                                                <button class="button" onclick="getVbtn('移动产品经理')"  style="left:780px;position:absolute;">移动产品经理<span></span></button>
                                                <button class="button" onclick="getVbtn('产品助理')"  style="left:1300px;position:absolute;">产品助理<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('数据产品经理')" style="left:265px;position:absolute;">数据产品经理<span></span></button>
                                                <button class="button" onclick="getVbtn('电商产品经理')"  style="left:780px;position:absolute;">电商产品经理<span></span></button>
                                                <button class="button" onclick="getVbtn('游戏策划')"  style="left:1300px;position:absolute;">游戏策划<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('产品专员')" style="left:265px;position:absolute;">产品专员<span></span></button>
                                                <button class="button" onclick="getVbtn('设计经理')"  style="left:780px;position:absolute;">设计经理<span></span></button>
                                                <button class="button" onclick="getVbtn('设计主管')"  style="left:1300px;position:absolute;">设计主管<span></span></button><br><br><br>
                                                <button class="button" onclick="getVbtn('硬件产品经理')"  style="left:265px;position:absolute;">硬件产品经理<span></span></button>
                                                
                                                
                                                </center>
                                                </font>
		
		<%}
		
	%>
	<script>
	function getVbtn(name){
		//var res=document.getElementById("btn").getAttribute("value");
		var res=name;
		var url="servletEcharts?job_name="+res;
		window.open(url);
	}
</script>
	
</body>
</html>
