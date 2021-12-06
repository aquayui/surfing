<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jc</title>
    <link rel="stylesheet" href="CSS/glass.css" type="text/css">
</head>

<body>
    <div class="container">
        <div class="card">
            <div class="content">
                <h2>01</h2>
                <h3>职位</h3>
                <p>
                	<%
						String[][] array=(String[][])request.getAttribute("result");
					%>
                    <%=array[0][0] %><br>
                    地点：<%=array[0][1] %><br>
                    发布时间：<%=array[0][2] %><br>
                    公司：<%=array[0][3] %><br>
                    <%=array[0][4] %><br>
                    薪资：<%=array[0][5] %><br>
                    学历要求：<%=array[0][6] %><br>
                    工作经验要求：<%=array[0][7] %><br>
                    人数：<%=array[0][8] %><br>
                    <%=array[0][9] %><br>
                </p>
                <br>
                <a href="<%=array[0][9] %>" target="_blank">点击查看详情</a>
            </div>
        </div>
        
        <div class="card">
            <div class="content">
                <h2>02</h2>
                <h3>职位</h3>
                <p>
                    <%=array[1][0] %><br>
                    地点：<%=array[1][1] %><br>
                    发布时间：<%=array[1][2] %><br>
                    公司：<%=array[1][3] %><br>
                    <%=array[1][4] %><br>
                    薪资：<%=array[1][5] %><br>
                    学历要求：<%=array[1][6] %><br>
                    工作经验要求：<%=array[1][7] %><br>
                    人数：<%=array[1][8] %><br>
                    <%=array[1][9] %><br>
                    </p>
                <br>
                <a href="<%=array[1][9] %>">点击查看详情</a>
            </div>
        </div>
        
        <div class="card">
            <div class="content">
                <h2>03</h2>
                <h3>职位</h3>
                <p>
                    <%=array[2][0] %><br>
                    地点：<%=array[2][1] %><br>
                    发布时间：<%=array[2][2] %><br>
                    公司：<%=array[2][3] %><br>
                    <%=array[2][4] %><br>
                    薪资：<%=array[2][5] %><br>
                    学历要求：<%=array[2][6] %><br>
                    工作经验要求：<%=array[2][7] %><br>
                    人数：<%=array[2][8] %><br>
                    <%=array[2][9] %><br>
                    </p>
                <br>
                <a href="<%=array[2][9] %>">点击查看详情</a>
            </div>
        </div>
        <br>
        <div class="card">
            <div class="content">
                <h2>04</h2>
                <h3>职位</h3>
                <p>
                    <%=array[3][0] %><br>
                    地点：<%=array[3][1] %><br>
                    发布时间：<%=array[3][2] %><br>
                    公司：<%=array[3][3] %><br>
                    <%=array[3][4] %><br>
                    薪资：<%=array[3][5] %><br>
                    学历要求：<%=array[3][6] %><br>
                    工作经验要求：<%=array[3][7] %><br>
                    人数：<%=array[3][8] %><br>
                    <%=array[3][9] %><br></p>
                <br>
                <a href="<%=array[3][9] %>">点击查看详情</a>
            </div>
        </div>
        <div class="card">
            <div class="content">
                <h2>05</h2>
                <h3>职位</h3>
                <p>
                    <%=array[4][0] %><br>
                    地点：<%=array[4][1] %><br>
                    发布时间：<%=array[4][2] %><br>
                    公司：<%=array[4][3] %><br>
                    <%=array[4][4] %><br>
                    薪资：<%=array[4][5] %><br>
                    学历要求：<%=array[4][6] %><br>
                    工作经验要求：<%=array[4][7] %><br>
                    人数：<%=array[4][8] %><br>
                    <%=array[4][9] %><br>
                    </p>
                <br>
                <a href="<%=array[4][9] %>">点击查看详情</a>
            </div>
        </div>
        <div class="card">
            <div class="content">
                <h2>06</h2>
                <h3>职位</h3>
                <p>
                    <%=array[5][0] %><br>
                    地点：<%=array[5][1] %><br>
                    发布时间：<%=array[5][2] %><br>
                    公司：<%=array[5][3] %><br>
                    <%=array[5][4] %><br>
                    薪资：<%=array[5][5] %><br>
                    学历要求：<%=array[5][6] %><br>
                    工作经验要求：<%=array[5][7] %><br>
                    人数：<%=array[5][8] %><br>
                    <%=array[5][9] %><br>
                    </p>
                <br>
                <a href="<%=array[5][9] %>">点击查看详情</a>
            </div>
        </div>
        <br>
    </div>
</body>

</html>
