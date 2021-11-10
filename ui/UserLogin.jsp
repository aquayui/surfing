<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录界面</title>
    <link rel="stylesheet" href="CSS/styleLogin.css" type="text/css">

</head>
<body>
<div class="wrapper">
    <!--背景图片-->
    <div id="web_bg" style="background-image: url(./images/download.png);"></div>
    <!--其他代码 ... -->
</div>
    <div class="container">
        <div class="panel">
            <div class="content">
                <div class="switch">
                    <h1 id="login">登录</h1>
                </div>

                <form action="frameset.jsp" method="post">

                    <div id="userName" class="input" aria-placeholder="用户名"><input type="text"></div>
                    <div id="password" class="input" aria-placeholder="密码"><input type="password"></div>

                    <p>
                        <a id="signUp" href="UserSignUp.jsp" class="input">跳转注册</a>
                        <span>|</span>
                        <a id="forget" href="UserRetrieve.jsp" class="input">忘记密码？</a>
                    </p>
                    <a href="frameset.jsp"><button class="button">登录</button>
                </form>
            </div>
        </div>
    </div>
</body>

<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.slim.js"></script>
<script>

    $('.input input').on('focus',function () {
        $(this).parent().addClass('focus');
    })

    $('.input input').on('blur',function () {
        if($(this).val() === '')
            $(this).parent().removeClass('focus');
    })
</script>

</html>
