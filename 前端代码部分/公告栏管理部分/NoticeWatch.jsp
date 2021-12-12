<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>

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
<!-- 中间主体 -->
<div class="container" id="content">
    <div class="row">
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="col-md-10">
                <div class="panel panel-default">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th>公告信息</th>
                            <th>发布人</th>
                            <th>发布时间</th>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>这是一条公告</td>
                                <td>芜湖芜湖</td>
                                <td>2021/11/30</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
    </div>
</div>
</body>
</html>