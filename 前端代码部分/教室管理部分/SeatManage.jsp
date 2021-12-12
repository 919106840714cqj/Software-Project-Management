<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>座位管理系统</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入bootstrap -->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css">
    <!-- 引入JQuery  bootstrap.js-->
    <script src="/js/jquery-3.2.1.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 顶栏 -->
<jsp:include page="top.jsp"></jsp:include>
<div class="container" id="content">
    <div class="row">
        <jsp:include page="menu.jsp"></jsp:include>
        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <h1 class="col-md-5">座位管理</h1>
                        <form class="bs-example bs-example-form col-md-5" role="form" style="margin: 20px 0 10px 0;"
                              action="/admin/selectCourse" id="form1" method="post">
                        </form>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>座位号</th>
                        <th>座位是否损坏</th>
                        <th>操作</th>
                    </tr>

                    </thead>
                    <tbody>
                    <c:forEach items="${courseList}" var="item">
                        <tr>
                            <td>${item.coursename}</td>
                            <td>${item.teacherid}</td>
                            <td>
                                <button class="btn btn-default btn-xs btn-info">修改
                                </button>
                                <button class="btn btn-default btn-xs btn-info"
                                        onClick="tb_delete();">删除
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="form-group" style="text-align: center">
                <button class="btn btn-default">添加</button>
                <button class="btn btn-default">保存</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>