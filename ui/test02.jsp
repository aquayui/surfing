<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/main.css" type="text/css">
</head>
<body>

	<%
		String type=request.getParameter("clicktype");
		if(type.equals("1")){%>			
		 <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class=""> 
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub">
                   
                    <br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">后端开发：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2">
                                    <br>
                                                <a ka="search_100101" href="/c101230200-p100101/">Java</a><br>
                                                <a ka="search_100102" href="/c101230200-p100102/">C++</a><br>
                                                <a ka="search_100103" href="/c101230200-p100103/">PHP</a><br>
                                                <a ka="search_100105" href="/c101230200-p100105/">C</a><br>
                                                <a ka="search_100106" href="/c101230200-p100106/">C#</a><br>
                                                <a ka="search_100107" href="/c101230200-p100107/">.NET</a><br>
                                                <a ka="search_100108" href="/c101230200-p100108/">Hadoop</a><br>
                                                <a ka="search_100109" href="/c101230200-p100109/">Python</a><br>
                                                <a ka="search_100110" href="/c101230200-p100110/">Delphi</a><br>
                                                <a ka="search_100111" href="/c101230200-p100111/">VB</a><br>
                                                <a ka="search_100112" href="/c101230200-p100112/">Perl</a><br>
                                                <a ka="search_100113" href="/c101230200-p100113/">Ruby</a><br>
                                                <a ka="search_100114" href="/c101230200-p100114/">Node.js</a><br>
                                                <a ka="search_100116" href="/c101230200-p100116/">Golang</a><br>
                                                <a ka="search_100119" href="/c101230200-p100119/">Erlang</a><br>
                                                <a ka="search_100121" href="/c101230200-p100121/">语音/视频/图形开发</a><br>
                                                <a ka="search_100122" href="/c101230200-p100122/">数据采集</a><br>
                                                <a ka="search_100123" href="/c101230200-p100123/">全栈工程师</a><br>
                                                <a ka="search_100124" href="/c101230200-p100124/">GIS工程师</a><br>
                                                <a ka="search_100199" href="/c101230200-p100199/">后端开发</a><br>
                                                </font>
                                     
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		
		if(type.equals("2")){%>
		 <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">移动开发：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
                                                <a ka="search_100201" href="/c101230200-p100201/">HTML5</a><br>
                                                <a ka="search_100202" href="/c101230200-p100202/">Android</a><br>
                                                <a ka="search_100203" href="/c101230200-p100203/">iOS</a><br>
                                                <a ka="search_100205" href="/c101230200-p100205/">移动web前端</a><br>
                                                <a ka="search_100206" href="/c101230200-p100206/">Flash开发</a><br>
                                                <a ka="search_100208" href="/c101230200-p100208/">JavaScript</a><br>
                                                <a ka="search_100209" href="/c101230200-p100209/">U3D</a><br>
                                                <a ka="search_100210" href="/c101230200-p100210/">COCOS2DX</a><br>
                                                <a ka="search_100211" href="/c101230200-p100211/">UE4</a><br>
                                                <a ka="search_100299" href="/c101230200-p100299/">移动开发</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("3")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">测试：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
                                               <a ka="search_100301" href="/c101230200-p100301/">测试工程师</a><br>
                                                <a ka="search_100302" href="/c101230200-p100302/">自动化测试</a><br>
                                                <a ka="search_100303" href="/c101230200-p100303/">功能测试</a><br>
                                                <a ka="search_100304" href="/c101230200-p100304/">性能测试</a><br>
                                                <a ka="search_100305" href="/c101230200-p100305/">测试开发</a><br>
                                                <a ka="search_100306" href="/c101230200-p100306/">移动端测试</a><br>
                                                <a ka="search_100307" href="/c101230200-p100307/">游戏测试</a><br>
                                                <a ka="search_100308" href="/c101230200-p100308/">硬件测试</a><br>
                                                <a ka="search_100309" href="/c101230200-p100309/">软件测试</a><br>
                                                <a ka="search_100310" href="/c101230200-p100310/">渗透测试</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("4")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">运维/技术支持：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
                                               <a ka="search_100401" href="/c101230200-p100401/">运维工程师</a><br>
                                                <a ka="search_100402" href="/c101230200-p100402/">运维开发工程师</a><br>
                                                <a ka="search_100403" href="/c101230200-p100403/">网络工程师</a><br>
                                                <a ka="search_100404" href="/c101230200-p100404/">系统工程师</a><br>
                                                <a ka="search_100405" href="/c101230200-p100405/">IT技术支持</a><br>
                                                <a ka="search_100406" href="/c101230200-p100406/">系统管理员</a><br>
                                                <a ka="search_100407" href="/c101230200-p100407/">网络安全</a><br>
                                                <a ka="search_100408" href="/c101230200-p100408/">系统安全</a><br>
                                                <a ka="search_100409" href="/c101230200-p100409/">DBA</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("5")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">数据：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
                                                <a ka="search_100506" href="/c101230200-p100506/">ETL工程师</a><br>
                                                <a ka="search_100507" href="/c101230200-p100507/">数据仓库</a><br>
                                                <a ka="search_100508" href="/c101230200-p100508/">数据开发</a><br>
                                                <a ka="search_100509" href="/c101230200-p100509/">数据挖掘</a><br>
                                                <a ka="search_100511" href="/c101230200-p100511/">数据分析师</a><br>
                                                <a ka="search_100512" href="/c101230200-p100512/">数据架构师</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("6")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">项目管理：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
<a ka="search_100601" href="/c101230200-p100601/">项目经理/主管</a><br>
                                                <a ka="search_100603" href="/c101230200-p100603/">项目助理</a><br>
                                                <a ka="search_100604" href="/c101230200-p100604/">项目专员</a><br>
                                                <a ka="search_100605" href="/c101230200-p100605/">实施顾问</a><br>
                                                <a ka="search_100606" href="/c101230200-p100606/">实施工程师</a><br>
                                                <a ka="search_100607" href="/c101230200-p100607/">需求分析工程师</a><br>
                                                <a ka="search_100817" href="/c101230200-p100817/">硬件项目经理</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("7")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">硬件开发：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
 <a ka="search_100801" href="/c101230200-p100801/">硬件工程师</a><br>
                                                <a ka="search_100802" href="/c101230200-p100802/">嵌入式</a><br>
                                                <a ka="search_100803" href="/c101230200-p100803/">自动化</a><br>
                                                <a ka="search_100804" href="/c101230200-p100804/">单片机</a><br>
                                                <a ka="search_100805" href="/c101230200-p100805/">电路设计</a><br>
                                                <a ka="search_100806" href="/c101230200-p100806/">驱动开发</a><br>
                                                <a ka="search_100807" href="/c101230200-p100807/">系统集成</a><br>
                                                <a ka="search_100808" href="/c101230200-p100808/">FPGA开发</a><br>
                                                <a ka="search_100809" href="/c101230200-p100809/">DSP开发</a><br>
                                                <a ka="search_100810" href="/c101230200-p100810/">ARM开发</a><br>
                                                <a ka="search_100811" href="/c101230200-p100811/">PCB工艺</a><br>
                                                <a ka="search_100816" href="/c101230200-p100816/">射频工程师</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("8")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">前端开发：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
                                                <a ka="search_100901" href="/c101230200-p100901/">web前端</a><br>
                                                <a ka="search_100902" href="/c101230200-p100902/">JavaScript</a><br>
                                                <a ka="search_100903" href="/c101230200-p100903/">Flash开发</a><br>
                                                <a ka="search_100904" href="/c101230200-p100904/">HTML5</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("9")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">通信：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
<a ka="search_101001" href="/c101230200-p101001/">通信技术工程师</a><br>
                                                <a ka="search_101002" href="/c101230200-p101002/">通信研发工程师</a><br>
                                                <a ka="search_101003" href="/c101230200-p101003/">数据通信工程师</a><br>
                                                <a ka="search_101004" href="/c101230200-p101004/">移动通信工程师</a><br>
                                                <a ka="search_101005" href="/c101230200-p101005/">电信网络工程师</a><br>
                                                <a ka="search_101006" href="/c101230200-p101006/">电信交换工程师</a><br>
                                                <a ka="search_101007" href="/c101230200-p101007/">有线传输工程师</a><br>
                                                <a ka="search_101008" href="/c101230200-p101008/">无线/射频通信工程师</a><br>
                                                <a ka="search_101009" href="/c101230200-p101009/">通信电源工程师</a><br>
                                                <a ka="search_101010" href="/c101230200-p101010/">通信标准化工程师</a><br>
                                                <a ka="search_101011" href="/c101230200-p101011/">通信项目专员</a><br>
                                                <a ka="search_101012" href="/c101230200-p101012/">通信项目经理</a><br>
                                                <a ka="search_101013" href="/c101230200-p101013/">核心网工程师</a><br>
                                                <a ka="search_101014" href="/c101230200-p101014/">通信测试工程师</a><br>
                                                <a ka="search_101015" href="/c101230200-p101015/">通信设备工程师</a><br>
                                                <a ka="search_101016" href="/c101230200-p101016/">光通信工程师</a><br>
                                                <a ka="search_101017" href="/c101230200-p101017/">光传输工程师</a><br>
                                                <a ka="search_101018" href="/c101230200-p101018/">光网络工程师</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("10")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">电子/半导体：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
<a ka="search_101402" href="/c101230200-p101402/">电气工程师</a><br>
                                                <a ka="search_101404" href="/c101230200-p101404/">电气设计工程师</a><br>
                                                <a ka="search_101401" href="/c101230200-p101401/">电子工程师</a><br>
                                                <a ka="search_101405" href="/c101230200-p101405/">集成电路IC设计</a><br>
                                                <a ka="search_101403" href="/c101230200-p101403/">FAE</a><br>
                                                <a ka="search_101406" href="/c101230200-p101406/">IC验证工程师</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("11")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">高端技术职位：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>

                                                <a ka="search_100701" href="/c101230200-p100701/">技术经理</a><br>
                                                <a ka="search_100702" href="/c101230200-p100702/">技术总监</a><br>
                                                <a ka="search_100703" href="/c101230200-p100703/">测试经理</a><br>
                                                <a ka="search_100704" href="/c101230200-p100704/">架构师</a><br>
                                                <a ka="search_100705" href="/c101230200-p100705/">CTO</a><br>
                                                <a ka="search_100706" href="/c101230200-p100706/">运维总监</a><br>
                                                <a ka="search_100707" href="/c101230200-p100707/">技术合伙人</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("12")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">人工智能：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>

                                                <a ka="search_100104" href="/c101230200-p100104/">数据挖掘</a><br>
                                                <a ka="search_100115" href="/c101230200-p100115/">搜索算法</a><br>
                                                <a ka="search_100117" href="/c101230200-p100117/">自然语言处理</a><br>
                                                <a ka="search_100118" href="/c101230200-p100118/">推荐算法</a><br>
                                                <a ka="search_100120" href="/c101230200-p100120/">算法工程师</a><br>
                                                <a ka="search_101308" href="/c101230200-p101308/">智能驾驶系统工程师</a><br>
                                                <a ka="search_101309" href="/c101230200-p101309/">反欺诈/风控算法</a><br>
                                                <a ka="search_101301" href="/c101230200-p101301/">机器学习</a><br>
                                                <a ka="search_101302" href="/c101230200-p101302/">深度学习</a><br>
                                                <a ka="search_101305" href="/c101230200-p101305/">语音识别</a><br>
                                                <a ka="search_101306" href="/c101230200-p101306/">图像识别</a><br>
                                                <a ka="search_101307" href="/c101230200-p101307/">算法研究员</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("13")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">销售技术支持：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
                                                <a ka="search_101201" href="/c101230200-p101201/">售前技术支持</a><br>
                                                <a ka="search_101202" href="/c101230200-p101202/">售后技术支持</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("14")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">视觉/交互设计：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>

                                                <a ka="search_120101" href="/c101230200-p120101/">视觉设计师</a><br>
                                                <a ka="search_120102" href="/c101230200-p120102/">网页设计师</a><br>
                                                <a ka="search_120103" href="/c101230200-p120103/">Flash设计师</a><br>
                                                <a ka="search_120104" href="/c101230200-p120104/">APP设计师</a><br>
                                                <a ka="search_120105" href="/c101230200-p120105/">UI设计师</a><br>
                                                <a ka="search_120106" href="/c101230200-p120106/">平面设计</a><br>
                                                <a ka="search_120107" href="/c101230200-p120107/">3D设计师</a><br>
                                                <a ka="search_120108" href="/c101230200-p120108/">广告设计</a><br>
                                                <a ka="search_120109" href="/c101230200-p120109/">多媒体设计师</a><br>
                                                <a ka="search_120110" href="/c101230200-p120110/">原画师</a><br>
                                                <a ka="search_120116" href="/c101230200-p120116/">CAD设计/制图</a><br>
                                                <a ka="search_120117" href="/c101230200-p120117/">美工</a><br>
                                                <a ka="search_120118" href="/c101230200-p120118/">包装设计</a><br>
                                                <a ka="search_120119" href="/c101230200-p120119/">设计师助理</a><br>
                                                <a ka="search_120120" href="/c101230200-p120120/">动画设计</a><br>
                                                <a ka="search_120121" href="/c101230200-p120121/">插画师</a><br>
                                                <a ka="search_120122" href="/c101230200-p120122/">漫画师</a><br>
                                                <a ka="search_120123" href="/c101230200-p120123/">人像修图师</a><br>
                                                <a ka="search_120201" href="/c101230200-p120201/">交互设计师</a><br>
                                                </font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("15")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">游戏设计：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
  <a ka="search_120111" href="/c101230200-p120111/">游戏特效</a><br>
                                                <a ka="search_120112" href="/c101230200-p120112/">游戏界面设计师</a><br>
                                                <a ka="search_120113" href="/c101230200-p120113/">游戏场景</a><br>
                                                <a ka="search_120114" href="/c101230200-p120114/">游戏角色</a><br>
                                                <a ka="search_120115" href="/c101230200-p120115/">游戏动作</a><br>
                                                <a ka="search_120303" href="/c101230200-p120303/">游戏数值策划</a><br>
                                              </font>  
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("16")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">用户研究：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
<a ka="search_120301" href="/c101230200-p120301/">数据分析师</a><br>
                                                <a ka="search_120302" href="/c101230200-p120302/">用户研究员</a><br>
                                                <a ka="search_120304" href="/c101230200-p120304/">UX设计师</a><br>
                                                <a ka="search_120407" href="/c101230200-p120407/">用户研究经理</a><br>
                                                <a ka="search_120408" href="/c101230200-p120408/">用户研究总监</a><br>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("17")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">高端设计职位：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>
                                               <a ka="search_120499" href="/c101230200-p120499/">高端设计职位</a><br>
                                                <a ka="search_120401" href="/c101230200-p120401/">设计经理/主管</a><br>
                                                <a ka="search_120402" href="/c101230200-p120402/">设计总监</a><br>
                                                <a ka="search_120404" href="/c101230200-p120404/">视觉设计总监</a><br>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		if(type.equals("18")){%>
		  <div id="main" class="inner home-inner">
        <div class="home-box">
<div class="home-sider">
    <!-- 左侧职位选择 -->
    <div class="job-menu">
                        <dl class="">
                   
                    <div class="menu-line"></div>
                    <div class="menu-sub"><br> <br> <br>
                        <font size="+3" color="#00d7c6"><p class="menu-article">产品经理：</p></font>
                        <ul>
                                <li>
                                    <div class="text">
                                    <font size="+2"><br>

                                                <a ka="search_110102" href="/c101230200-p110102/">网页产品经理</a><br>
                                                <a ka="search_110103" href="/c101230200-p110103/">移动产品经理</a><br>
                                                <a ka="search_110104" href="/c101230200-p110104/">产品助理</a><br>
                                                <a ka="search_110105" href="/c101230200-p110105/">数据产品经理</a><br>
                                                <a ka="search_110106" href="/c101230200-p110106/">电商产品经理</a><br>
                                                <a ka="search_110107" href="/c101230200-p110107/">游戏策划</a><br>
                                                <a ka="search_110108" href="/c101230200-p110108/">产品专员</a><br>
                                                <a ka="search_110109" href="/c101230200-p110109/">硬件产品经理</a><br></font>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </dl>
		<%}
		
	%>
	
</body>
</html>
