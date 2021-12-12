<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>教室管理系统</title>

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
                            <h1 class="col-md-5">教室管理</h1>
                            <form class="bs-example bs-example-form col-md-5" role="form" style="margin: 20px 0 10px 0;"
                                  action="/admin/selectCourse" id="form1" method="post">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="请输入教室编号" name="findByName">
                                    <span class="input-group-addon btn" onclick="document.getElementById('form1').submit"
                                          id="sub">搜索</span>
                                </div>
                            </form>
                        </div>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>教室编号</th>
                            <th>教室座位数</th>
                            <th>座位管理</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${courseList}" var="item">
                            <tr>
                                <td>${item.coursename}</td>
                                <td>${item.teacherid}</td>
                                <td>
                                    <a href="/SeatManage">
                                        <button class="btn btn-default btn-xs btn-info">进入</button>
                                    </a>
                                </td>
                                <td>
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
                    <button class="btn btn-default">修改</button>
                    <button class="btn btn-default">保存</button>
                </div>
            </div>
    </div>
</div>
</body>
</html>
