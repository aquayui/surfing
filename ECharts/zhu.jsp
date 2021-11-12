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
      <c:forEach items="${goodsList}" var="goods">
          arr[index++] = ${goods.sales};
      </c:forEach>
	  	  
      <c:forEach items="${dateList}" var="date">
      	  salary[indexSalary++]=${date.averageSalary};
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
              data:['平均薪资']
          },
          xAxis : [
              {
                  type : 'category',
                  data : [
                	  <c:forEach items="${dateList}" var="type">
                      ["${type.type}"],
                      </c:forEach>
                      /*<c:forEach items="${goodsList}" var="g">
                      ["${g.name}"],
                      </c:forEach>*/
                  ]
              }
          ],
          yAxis : [
              {
                  type : 'value'
              }
          ],
          series : [
              {
                  name:'平均薪资',
                  type:'bar',
                  data: salary
              }
          ]
      };
      // 使用刚指定的配置项和数据显示图表。
      myChart.setOption(option);
  </script>
  </body>
</html>