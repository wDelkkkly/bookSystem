<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>主页面</title>
    <link rel="stylesheet" href="./static/layui/css/layui.css"/>
    <script src="./static/layui/layui.js"></script>
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <!--自定义logo的位置-->
        <div class="layui-logo layui-hide-xs layui-bg-black">
            <img src="./static/img/logo.jpg" height="60px" width="200px" alt="">
        </div>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-sm-inline-block">
                <!--用户登录后显示用户名（头像为默认LayUI的头像照片）-->
                <a href="javascript:;" th:text="${user.username}">
                    <img src="https://unpkg.com/outeres@0.0.10/img/layui/icon-v2.png" class="layui-nav-img">
                    tester
                </a>
                <dl class="layui-nav-child">
                    <!--用户的个人信息、设置以及退出功能，暂时不需要，就先不管-->
                    <dd><a href="javascript:;">Your Profile</a></dd>
                    <dd><a href="javascript:;">Settings</a></dd>
                    <dd><a href="javascript:;">Sign out</a></dd>
                </dl>
            </li>
            <!--此为右侧菜单栏，可以配合下面的menuRight填写自定义内容-->
            <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
                <a href="javascript:;">
                    <i class="layui-icon layui-icon-more-vertical"></i>
                </a>
            </li>
        </ul>
    </div>
    <!--导航栏，我们主要编辑的地方-->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域 -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <!--每一个li代表一个导航栏-->
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">用户管理</a>
                    <!--用户管理下的子导航栏-->
                    <dl class="layui-nav-child">
                        <!--两个属性比较重要，首先第一个属性，-->
                        <!--th:href，th代表使用thymeleaf模板，此处即代表访问/user/edit接口（暂未编写）-->
                        <!--target代表跳转页面（或获取数据）展示的位置-->
                        <dd><a th:href="@{/user/edit}" target="targetFrame">添加用户</a></dd>
                        <dd><a th:href="@{/user/list}" target="targetFrame">用户列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">图书管理</a>
                    <dl class="layui-nav-child">
                        <!--后期可以在完善我们的增删改查功能-->
                        <!--                        <dd><a href="javascript:;" target="targetFrame">添加城市</a></dd>-->
                        <!--                        <dd><a href="javascript:;">城市列表</a></dd>-->
                        <dd><a th:href="@{/user/edit}" target="targetFrame">添加用户</a></dd>
                        <dd><a th:href="@{/book/allbook}" target="targetFrame">图书列表</a></dd>
                        <dd><a th:href="@{/weather/weather}" target="targetFrame">天气预报</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:;">系统管理</a></li>
            </ul>
        </div>
    </div>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <!-- 也是我们上面target所指向的位置-->
        <div style="padding: 15px;">
            <div class="layui-card layui-panel">
                <div class="layui-card-body">
                    <iframe name="targetFrame" width="100%" height="1000px"></iframe>
                </div>
            </div>
            <br><br>
        </div>
    </div>
    <!--页面底部区域，一般是用来写商标，著作权，专利，出品公司，合作链接等内容-->
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        许昌学院，echarts天气分析系统
    </div>
</div>
<script src="/cdn.staticfile.org/layui/2.8.0/layui.js"></script>
<script>
    //JS
    layui.use(['element', 'layer', 'util'], function () {
        // element模块提供了一些操作元素，可以控制页面上的元素，如果布局比较固定，基本用不到
        var element = layui.element;
        // layer是弹出框组件，本页面主要是弹出右侧数据展示
        var layer = layui.layer;
        // util是工具类组件，本页面主要是设置弹出事件
        var util = layui.util;
        // $是发送ajax所需要的jquery组件
        var $ = layui.$;
        //头部事件
        util.event('lay-header-event', {
            menuRight: function () {  // 右侧菜单事件
                layer.open({
                    type: 1
                    , title: '更多'
                    , content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
                    , area: ['260px', '100%']
                    , offset: 'rt' //右上角
                    , anim: 'slideLeft'
                    , shadeClose: true
                    , scrollbar: false
                });
            }
        });
    });
</script>
</body>
</html>