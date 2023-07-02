<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
    <title>商品编辑</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap4.css"/>
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/wangeditor5/5.1.23/css/style.min.css"/>
    <style>
        #editor—wrapper {
            border: 1px solid #ccc;
            z-index: 100; /* 按需定义 */
        }
        #toolbar-container { border-bottom: 1px solid #ccc; }
        #editor-container { height: 500px; }
    </style>
</head>
<body>
<jsp:include page="common/header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <jsp:include page="common/aside.jsp"></jsp:include>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <form class="form-horizontal" action="goodUpdate" method="post" enctype="multipart/form-data"
                  onsubmit="return check()">
                <input type="hidden" name="id" value="${good.id}"/>
                <input type="hidden" name="cover" value="${good.cover}"/>
                <div class="form-group">
                    <label for="input_file" class="col-sm-1 control-label">封面</label>
                    <div class="col-sm-6"><img src="${good.cover}" width="100"/>
                        <input type="file" name="file" id="input_file" style="display:inline;"> ( 推荐尺寸: 500 * 500 )
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">名称</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="name" value="${good.name}" required="required">
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">介绍</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="intro" value="${good.intro}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">规格</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="spec" value="${good.spec}">
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">价格</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="price" value="${good.price}"
                               onkeyup="this.value=this.value.replace(/[^\d]+/g,'')">
                    </div>
                </div>
                <div class="form-group">
                    <label for="input_name" class="col-sm-1 control-label">库存</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control" name="stock" value="${good.stock}"
                               onkeyup="this.value=this.value.replace(/[^\d]+/g,'')">
                    </div>
                </div>
                <div class="form-group">
                    <label for="select_topic" class="col-sm-1 control-label">类目</label>
                    <div class="col-sm-6">
                        <select class="form-control" id="select_topic" name="typeId">
                            <c:forEach var="type" items="${typeList}">
                                <c:if test="${type.id==good.type.id}">
                                    <option selected="selected" value="${type.id}">${type.name}</option>
                                </c:if>
                                <c:if test="${type.id!=good.type.id}">
                                    <option value="${type.id}">${type.name}</option>
                                </c:if>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label for="select_topic" class="col-sm-1 control-label">详情</label>

<%--                        <textarea id="editor" name="content" style="width:800px;height:600px;">${good.content}</textarea>--%>
                    <textarea id="editorTextarea" name="content" style="width:800px;height:600px;" hidden></textarea>
                    <div id="editor—wrapper">
                        <div id="toolbar-container"><!-- 工具栏 --></div>
                        <div id="editor-container"><!-- 编辑器 --></div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-1 col-sm-10">
                        <button type="submit" class="btn btn-success">提交修改</button>
                    </div>
                </div>
            </form>
        </main>
    </div>
</div>
<script src="js/jquery.js"></script>
<script charset="utf-8" src="../editor/kindeditor-all.js"></script>
<script charset="utf-8" src="../editor/lang/zh-CN.js"></script>
<script charset="utf-8" src="../editor/editor.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/wangeditor5/5.1.23/index.min.js"></script>
<script>
    const { createEditor, createToolbar } = window.wangEditor
    //编辑器配置
    const editorConfig = {
        MENU_CONF:{}
    }
    editorConfig.onChange = (editor) =>{
        const html = editor.getHtml();
        // 也可以同步到 <textarea>
        $('#editorTextarea').val(html);
        console.log('editor content', html);
    }
    editorConfig.placeholder = "请输入内容"
    editorConfig.MENU_CONF['uploadImage'] = {
        server: "${pageContext.request.contextPath}"+'/admin/myupload',
        fieldName: 'myFile'
    }

    const editor = createEditor({
        selector: '#editor-container',
        html: '${good.content}',
        config: editorConfig,
        mode: 'default', // or 'simple'
    })

    const toolbarConfig = {}

    //工具栏配置
    const toolbar = createToolbar({
        editor,
        selector: '#toolbar-container',
        config: toolbarConfig,
        mode: 'default', // or 'simple'
    })

</script>
</body>
</html>