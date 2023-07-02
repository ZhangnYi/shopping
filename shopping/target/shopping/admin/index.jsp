<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理</title>
    <link rel="stylesheet" href="css/bootstrap4.css"/>
    <link rel="stylesheet" href="css/dashboard.css"/>
    <style>
        .items{
            width: 100%;
            padding: 20px 10px;
        }
        .item{
            margin-bottom: 25px;
        }
        .title center{
            line-height: 40px;
        }
        .item input{
            border: 0.2px solid lightgrey;
            border-radius: 3px;
        }
        .item input[name='password']{
            border: none;
            outline: none;
        }
        .mycontainer{
            margin-left: 260px;
            padding: 30px;
        }

    </style>
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

<%--            <div class="jumbotron jumbotron-fluid">--%>
<%--                <div class="container">--%>
<%--                    <h1 class="display-4">欢迎来到购物商城系统后台</h1>--%>
<%--                    <p class="lead" style="margin-top: 20px">电子商城利用网络这个平台出售各式各样的货物，实现了坐在家里就可以轻松购物</p>--%>
<%--                </div>--%>
<%--                <hr class="my-4">--%>
<%--                <p>购物网站的优点是购物的便捷和快速，提高了购物效率</p>--%>
<%--            </div>--%>

            <div class="jumbotron">
                <h1 class="display-4">欢迎来到游戏商城系统后台</h1>
                <p class="lead">电子商城利用网络这个平台出售各式各样的游戏，实现了坐在家里就可以轻松购物</p>
                <hr class="my-4">
                <p>游戏购物网站的优点是购物的便捷和快速，提高了购物效率</p>
            </div>

        </main>
    </div>

</div>


<script>
    $("input[name='username']").blur(function () {
        $("input[name='username']").css('border-color:white');
    });
</script>
</body>
</html>