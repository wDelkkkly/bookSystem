
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<html>--%>
<%--<head>--%>
<%--  <title>首页</title>--%>
<%--  <style type="text/css">--%>
<%--    a {--%>
<%--      text-decoration: none;--%>
<%--      color: black;--%>
<%--      font-size: 18px;--%>
<%--    }--%>
<%--    h3 {--%>
<%--      width: 180px;--%>
<%--      height: 38px;--%>
<%--      margin: 100px auto;--%>
<%--      text-align: center;--%>
<%--      line-height: 38px;--%>
<%--      background: deepskyblue;--%>
<%--      border-radius: 4px;--%>
<%--    }--%>
<%--  </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h3>--%>
<%--  <a href="${pageContext.request.contextPath}/book/allBook">点击进入列表页</a>--%>
<%--</h3>--%>
<%--</body>--%>

<%--</html>--%>
<html>
<head>
  <meta charset="utf-8">
  <title>Login Page</title>
  <!-- 引入Layui的CSS样式文件 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/layui/css/layui.css">

  <!-- 引入Layui的JavaScript文件 -->
  <script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>

  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background-image: url(img/background.jpg);
      background-repeat: no-repeat;
      background-size: cover;
    }
    .my-title {
      position: absolute;
      top: 20%;
      left: 0;
      right: 0;
      text-align: center;
    }

    .login-container {
      max-width: 400px;
      width: 80%;
    }
  </style>
</head>
<body>
<h1 class="my-title" >图书信息管理系统</h1>
<div class="layui-container login-container">
  <form class="layui-form" lay-filter="login-form"action="${pageContext.request.contextPath}/login/checkLogin" method="post">
    <div class="layui-form-item">
      <label class="layui-form-label">用户名</label>
      <div class="layui-input-block">
        <input type="text" name="username" lay-verify="required" placeholder="输入用户名" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">密码</label>
      <div class="layui-input-block">
        <input type="password" name="password" lay-verify="required" placeholder="输入密码" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">角色</label>
      <div class="layui-input-block">
        <select name="role" lay-verify="required">
          <option value="">请选择角色</option>
          <option value="admin">管理员</option>
          <option value="user">用户</option>
        </select>
      </div>
    </div>
    <div class="layui-form-item">
      <div class="layui-input-block">
        <button class="layui-btn" lay-submit lay-filter="login" >登录</button>
      </div>
    </div>
  </form>
</div>

<!-- 引入Layui的JavaScript文件 -->
<%--<script src="${pageContext.request.contextPath}/static/layui/layui.js"></script>--%>
<%--<script>--%>
<%--  // 初始化Layui表单组件--%>
<%--  layui.use('form', function() {--%>
<%--    var form = layui.form;--%>
<%--    // 监听表单提交--%>
<%--    form.on('submit(login)', function(data) {--%>
<%--      // TODO: 处理登录逻辑--%>
<%--      console.log(data.field);--%>
<%--      return false; // 阻止表单提交--%>
<%--    });--%>
<%--  });--%>
<%--</script>--%>
</body>
</html>

