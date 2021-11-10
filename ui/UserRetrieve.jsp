<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户找回</title>
    <link rel="stylesheet" href="CSS/styleRetrieve.css" type="text/css">
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
                <h1 id="signUp">忘记密码</h1>
            </div>

            <form action="">

                <div id="email" class="input" aria-placeholder="邮箱"><input type="text"></div>
                <p><button id="getEmailCode">点击获取验证码</button></p>
                <div id="emailCode" class="input" aria-placeholder="邮箱验证码"><input type="text"></div>
                <div id="password" class="input" aria-placeholder="新密码"><input type="password"></div>
                <div id="repeat" class="input" aria-placeholder="确认密码"><input type="password"></div>

                <p>
                    <a id="login" href="UserLogin.jsp" class="input">点击跳转登录</a>
                </p>

                <button onclick="location.href='UserLogin.html'" id="reset" type="button">提交更改</button>

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
