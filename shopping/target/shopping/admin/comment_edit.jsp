<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>评论编辑</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap4.css"/>
    <style>
        textarea{
            padding: 6px 8px;
            border-radius: 5px;
            width: 300px;
            height: 50px;

        }
        textarea:focus {
            outline:0;
            border:1px solid #999;
        }
    </style>
</head>
<body>

<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <form class="form-horizontal" action="${pageContext.request.contextPath}/admin/commentUpdate" method="post">
                <input hidden type="number" name="gid" value="${evaluate.gid}">
                <input hidden type="number" name="oid" value="${evaluate.oid}">
                <div class="form-group">
                    <label  class="col-sm-1 control-label">商品名称</label>
                    <div class="col-sm-6">
                        <span>${evaluate.goodName}</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label">用户名</label>
                    <div class="col-sm-6">
                        <span>${evaluate.user.username}</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-1 control-label">评论内容</label>
                    <div class="col-sm-6">
                        <textarea name="content"  required  placeholder="谈谈您对该商品的看法吧" >${evaluate.content}</textarea>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-10">
                        <input type="submit" class="btn btn-success" value="提交修改"></input>
                    </div>
                </div>

            </form>

        </main>
    </div>

</div>
<script>
    <%--//自动填充评论时间--%>
    <%--var d = new Date(${evaluate.systime.getTime()});--%>
    <%--var day = ("0" + d.getDate()).slice(-2);--%>
    <%--var month = ("0" + (d.getMonth() + 1)).slice(-2);--%>
    <%--var realTime= d.getFullYear() + "-" + (month) + "-" + (day);--%>
    <%--$('#time').val(realTime);--%>
</script>
</body>
</html>