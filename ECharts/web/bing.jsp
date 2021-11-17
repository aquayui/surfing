<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
<style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        .main{
            width: 100%;
            height: 100%;
            position: absolute;
        }
        .quarter-div{
            width: 50%;
            height: 50%;
            float: left;
        }
        .blue{
            
        }
        .green{
            
        }
        .orange{
            
        }
        .yellow{
            
        }
    </style>
<title>Insert title here</title>
</head>
<body>

<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div class="main">
        <div class="quarter-div blue" >
        <%String job_name=new String(request.getParameter("job_name").getBytes("iso-8859-1"), "utf-8"); %>
        <h1>当前查询的工作类型是：<%=job_name %></h1>
        	<form action="servletEcharts" method="post">
		<fieldset>
			<legend align="center">可选择查询其他职业</legend>
			<input type="radio" name="job_name" value="java">java<br>
			<input type="radio" name="job_name" value="python">python<br>
			<input type="radio" name="job_name" value="C++">C++<br>
			<input type="radio" name="job_name" value="软件">软件<br>
			<input type="submit" value="确定" />
		</fieldset>
	</form>
        </div>
        <div class="quarter-div green" id="main"></div>
        <div class="quarter-div orange" id="main2"></div>
        <div class="quarter-div yellow" id="main3"></div>
    </div>
    
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));
        var date=[];
        <c:forEach items="${yearDate}" var="yearDate">
        	date.push({
        		name:"${yearDate.yearName}",
        		value:${yearDate.yearNum}      		
        	});       	
  	  	</c:forEach>      
  	  	var option={
  			tooltip: {//提示框组件
				trigger: 'item', //item数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用。
				axisPointer: {
					// 坐标轴指示器，坐标轴触发有效
					type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				},
				formatter: '{a} <br/>{b} : {c} <br/>百分比 : {d}%' //{a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）
				},
        	title: {
        		text:'工作经验要求',
        		x: 'center'
        	},
        	legend: {
        			orient: 'vertical',
                	left: '80%',  //图例距离左的距离
                	y: 'center',
        	       data: date.name        	       
        	     },
            series : [
                {
                	//roseType: 'angle',
                    name: '访问来源',
                    type: 'pie',    // 设置图表类型为饼图
                    radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
                    data:date
                }
            ] 
  	  }
  	myChart.setOption(option);
    </script>
    
    
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main2'));
        var date2=[];
        <c:forEach items="${salaryDate}" var="salaryDate">
    	date2.push({
    		name:"${salaryDate.salaryName}",
    		value:${salaryDate.salary}      		
    	});       	
	  	</c:forEach>       
  	  	var option={
  			tooltip: {//提示框组件
				trigger: 'item', //item数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用。
				axisPointer: {
					// 坐标轴指示器，坐标轴触发有效
					type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				},
				formatter: '{a} <br/>{b} : {c} <br/>百分比 : {d}%' //{a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）
				},
        	title: {
        		text:'薪资分布',
        		x: 'center'
        	},
        	legend: {
        			orient: 'vertical',
                	left: '80%',  //图例距离左的距离
                	y: 'center',
        	       data: date2.name        	       
        	     },
            series : [
                {
                	//roseType: 'angle',
                    name: '访问来源',
                    type: 'pie',    // 设置图表类型为饼图
                    radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
                    data:date2
                }
            ] 
  	  }
  	myChart.setOption(option);
    </script>
    
    
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main3'));
        var date2=[];
        <c:forEach items="${eduDate}" var="eduDate">
    	date2.push({
    		name:"${eduDate.eduName}",
    		value:${eduDate.education}      		
    	});       	
	  	</c:forEach>       
  	  	var option={
  			tooltip: {//提示框组件
				trigger: 'item', //item数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用。
				axisPointer: {
					// 坐标轴指示器，坐标轴触发有效
					type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
				},
				formatter: '{a} <br/>{b} : {c} <br/>百分比 : {d}%' //{a}（系列名称），{b}（数据项名称），{c}（数值）, {d}（百分比）
				},
        	title: {
        		text:'学历要求',
        		x: 'center'
        	},
        	legend: {
        			orient: 'vertical',
                	left: '80%',  //图例距离左的距离
                	y: 'center',
        	       data: date2.name        	       
        	     },
            series : [
                {
                	//roseType: 'angle',
                    name: '访问来源',
                    type: 'pie',    // 设置图表类型为饼图
                    radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
                    data:date2
                }
            ] 
  	  }
  	myChart.setOption(option);
    </script>
</body>
</html>