<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            background-image: url(/img/background.jpg);
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
<h1 class="my-title">图书信息管理系统</h1>
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
                <select name="role" 角色="required">
                    <option value="">请选择角色</option>
                    <option value="admin">管理员</option>
                    <option value="user">用户</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn" lay-submit lay-filter="login-btn">登录</button>
            </div>
        </div>
    </form>
</div>

<!--<script src="https://cdn.staticfile.org/layui/2.6.8/layui.min.js"></script>-->
<!--<script>-->
<!--    layui.use(['form'], function () {-->
<!--        var form = layui.form;-->

<!--        // 监听表单提交-->
<!--        form.on('submit(login-btn)', function (data) {-->
<!--            // 获取表单数据-->
<!--            var username = data.field.username;-->
<!--            var password = data.field.password;-->
<!--            var role = data.field.role;-->

<!--            // 在这里可以进行登录验证和角色选择的逻辑处理-->

<!--            // 阻止表单跳转-->
<!--            return false;-->
<!--        });-->
<!--    });-->
<!--</script>-->
</body>
</html>
