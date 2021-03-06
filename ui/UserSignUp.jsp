<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户注册界面</title>
    <link rel="stylesheet" href="CSS/styleSignUp.css"/>
</head>
<body>
<div class="wrapper">
    <!--背景图片-->
    <div id="web_bg" style="background-image: url(./images/download.png);"></div>
    <!--其他代码 ... -->
<div class="container">
    <div class="panel">
        <div class="content">
            <div class="switch">
                <h1 id="signUp">注册</h1>
            </div>

            <form action="">

                <div id="userName" class="input" aria-placeholder="用户名"><input type="text"></div>
                <div id="email" class="input" aria-placeholder="邮箱"><input type="text"></div>
                <div id="password" class="input" aria-placeholder="密码"><input type="password"></div>
                <div id="repeat" class="input" aria-placeholder="确认密码"><input type="password"></div>

                <p>
                    <a id="login" href="UserLogin.jsp" class="input">已有账户？点击登录</a>
                </p>

                <button onclick="location.href='UserLogin.html'" type="button">注册</button>

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
