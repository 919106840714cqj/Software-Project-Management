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
                <div class="panel-heading">
                    <div class="row">
                        <h1 style="text-align: center;">添加故障信息</h1>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" action="/student/addFaultMsg" id="editfrom" method="post">

                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">教室</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputPassword3" name="class"
                                       placeholder="请输入教室"
                                <c:if test='${msg!=null}'>
                                       value="${msg.class}"
                                </c:if>>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">座位号</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputPassword3" name="seat"
                                    placeholder="请输入座位号"
                                <c:if test='${msg!=null}'>
                                    value="${msg.seat}"
                                </c:if>>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">故障原因</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputPassword3" name="faultCause"
                                       placeholder="请输入故障原因"
                                <c:if test='${msg!=null}'>
                                       value="${msg.faultCause}"
                                </c:if>>
                            </div>
                        </div>
                        <div class="form-group" style="text-align: center">
                            <button class="btn btn-default" type="submit">提交</button>
                            <button class="btn btn-default" type="reset">重置</button>
                        </div>
                    </form>
                </div>

            </div>

        </div>
    </div>
</div>
<div class="container" id="footer">
    <div class="row">
        <div class="col-md-12"></div>
    </div>
</div>
</body>
<script type="text/javascript">
    $("#nav li:nth-child(2)").addClass("active")
</script>
</html>