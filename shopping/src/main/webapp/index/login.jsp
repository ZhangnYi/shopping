<%@ page language="java" contentType="text/html; charset=GBK" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
    <meta charset="GBK">
    <link rel="stylesheet" type="text/css" href="css/public.css">
    <link rel="stylesheet" type="text/css" href="css/common.css">
    <link rel="stylesheet" type="text/css" href="css/logon.css">
    <link rel="stylesheet" type="text/css" href="css/font.css">
</head>
<body>

<jsp:include page="header.jsp"/>

<div id="main" class="logincoent">

    <div class="rebackgroundimg">
        <div class="registruer">
            <div class="regrnamepwd">
                <p class="iteljk">登录<span><a href="register">未注册请先注册</a></span></p>
                <form action="login" method="post">
                    <ul class="ul_form">
                        <li class="user">
                            <i class="iconfont icon-yonghu"></i>
                            <input type="text" class="username" name="username" placeholder="请输入用户名">
                        </li>
                        <li class="pwdmia">
                            <i class="iconfont icon-mima"></i>
                            <input type="password" class="pwd" name="password" placeholder="请输入密码">
                        </li>
                    </ul>
                    <input type="submit" value="立即登录" class="sub">
                    <div style="color: red;font-size: 16px;text-align: center;margin-top: 20px;">${msg}</div>
                </form>
            </div>
        </div>
    </div>

</div>

<%--<jsp:include page="footer.jsp"/>--%>

</body>
<script src="js/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">

</script>
</html>