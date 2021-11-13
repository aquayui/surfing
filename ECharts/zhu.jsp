<%--
  Created by IntelliJ IDEA.
  User: teaGod
  Date: 2017/9/25
  Time: 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>ECharts</title>
      <meta charset="utf-8">
      <!-- 引入 ECharts 文件 -->
      <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
  </head>

  <body>
  <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
  <div id="main" style="width: 600px;height:400px;"></div>
  <script type="text/javascript">
      // 基于准备好的dom，初始化echarts实例
      var myChart = echarts.init(document.getElementById('main'));

      var arr = new Array();
      var index = 0;
      
      var salary=new Array();
      var indexSalary=0;
      var num=new Array();
      var indexNum=0;	  	  
      <c:forEach items="${dateList}" var="date">
      	  salary[indexSalary++]=${date.averageSalary};
      	  num[indexNum++]=${date.recruitNum}
	  </c:forEach>
	  
      // 指定图表的配置项和数据
      var option = {
          title: {
              text: 'ECharts 入门示例'
          },
          tooltip: {
              show: true
          },
          legend: {
              data:['平均薪资','招聘人数']
          },
          xAxis : [
              {
                  type : 'category',
                  data : [
                	  <c:forEach items="${dateList}" var="type">
                      ["${type.type}"],
                      </c:forEach>
                  ],
                  axisLabel: {
                      interval: 0,
                      formatter:function(value){  
                          var str = ""; 
                          var num = 4; //每行显示字数 
                          var valLength = value.length; //该项x轴字数  
                          var rowNum = Math.ceil(valLength / num); // 行数  
                          
                          if(rowNum > 1) {
                              for(var i = 0; i < rowNum; i++) {
                                  var temp = "";
                                  var start = i * num;
                                  var end = start + num;
                                  
                                  temp = value.substring(start, end) + "\n";
                                  str += temp; 
                              }
                              return str;
                          } else {
                              return value;
                          } 
                      }
                  }
              }
          ],
          yAxis : [
              {
                  type : 'value'
              }
          ],
          toolbox: {
              show: true,
              feature: {
                  dataZoom: {
                      yAxisIndex: 'none'
                  }, //区域缩放，区域缩放还原
                  dataView: { 
                      readOnly: true
                  }, //数据视图
                  magicType: {
                      type: ['line', 'bar']
                  },  //切换为折线图，切换为柱状图
                  restore: {},  //还原
                  saveAsImage: {}   //保存为图片
              }
          },
          series : [
              {
                  name:'平均薪资',
                  type:'bar',
                  data: salary
              },
              {
                  name:'招聘人数',
                  type:'bar',
                  data: num
              }
          ]
      };
      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
  </script>
  </body>
</html>