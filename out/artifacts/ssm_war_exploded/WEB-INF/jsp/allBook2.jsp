<%--
  Created by IntelliJ IDEA.
  User: EDY
  Date: 2022/9/30
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <title></title>
    <!-- 引入 Bootstrap -->
<%--    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>书籍列表 —— 显示所有书籍</small>
                    </h1>
                </div>
            </div>
<%--            <div>--%>
<%--                <div>--%>
<%--                    &lt;%&ndash;tbAddBook&ndash;%&gt;--%>
<%--                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>--%>
<%--                </div>--%>
<%--            </div>--%>

        </div>

    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>书籍姓名</th>
                    <th>数量</th>
                    <th>详情</th>
                    <th>操作</th>
                </tr>
                </thead>

                <taody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCounts}</td>
                            <td>${book.detail}</td>

                            <td>
                                <c:if test="${showButton}">
                                    <a class="btn btn-danger" href="${pageContext.request.contextPath}/book/toUpdateBook/${book.bookID}">修改</a>
                                </c:if>
                                <c:if test="${showButton}">
                                    <a class="btn btn-success" href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">删除</a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>

                </taody>
            </table>
        </div>
    </div>

</div>

</body>
</html>

