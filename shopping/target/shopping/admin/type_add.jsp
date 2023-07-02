<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>类目添加</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap4.css"/>
</head>
<body>

<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <form class="form-horizontal" action="typeSave" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">名称</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="input_name" name="name" required="required"
                               placeholder="类目名称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">序号</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="input_name" name="num" placeholder="整数类型">
                    </div>
                </div>
                <p class="col-sm-offset-1" style="color:#666;">序号决定前台首页类目显示顺序, 从小到大排序, 可以为负数</p>
                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-10">
                        <button type="submit" class="btn btn-success">提交保存</button>
                    </div>
                </div>
            </form>
        </main>
    </div>

</div>
</body>
</html>