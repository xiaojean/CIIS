<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>后台管理系统</title>
    <!-- jQuery -->
    <jsp:include page="/WEB-INF/view/common/base.jsp"/>
    <jsp:include page="/WEB-INF/view/common/jqgrid.jsp"/>
    <script type="text/javascript">

        $(function () {
            // 获取模块信息
            var $allModuleNodes = [];
            $.ajax({
                url: "/module/allModuleList.do",
                type: "get",
                async: false,
                success: function (data) {
                    $allModuleNodes = data;
                }
            });

            var $mainNav = $("#main-nav");
            // 遍历出第一层节点
            $.each($allModuleNodes, function (idx, obj) {
                var id = obj.id;
                var parentId = obj.parent_id;
                var name = obj.name;
                if (parentId == 0) {
                    var $li = $('<li level="level_0"> <a href="#" url="'+obj.url+'" class="nav-top-item">' + name + '</a></li>');
                    if (idx == 0) {
                        $li = $('<li level="level_0"> <a href="#" url="'+obj.url+'" class="nav-top-item current">' + name + '</a></li>');
                    }
                    // 查找子节点
                    var $childUl = $("<ul></ul>");
                    var hasChild = 0;
                    $.each($allModuleNodes, function (idj, childObj) {
                        var childPId = childObj.parent_id;
                        var childLevel = childObj.level;
                        if (id == childPId) {
                            hasChild++;
                            var $childLi = $('<li level="level_' + childLevel + '"><a url="'+childObj.url+'" href="#">' + childObj.name + '</a></li>');
                            $childUl.append($childLi);
                        }
                    });
                    if (hasChild == 0) {
                        $li.addClass("no-submenu");
                    }
                    $li.append($childUl);
                    $mainNav.append($li);
                }
            })

            $mainNav.find("li[level!='level_0']").click(function () {
                var $nameEle = $(this).find("a")
                $(this).parent("ul").find("a").removeClass("current");
                $nameEle.addClass("current");
                // 获取名称
                var name = $nameEle.text();
                var url = $nameEle.attr("url");
                if(url){
                    $("#contentText").html(name);
                    $("#contentFrame").attr("src",url);
                }
            });

            $(".nav-top-item").click(function () {
                var $nameEle = $(this).find("a");
                $(".current").removeClass("current");
                $(this).addClass("current");
                // 获取它下面的text
                /*var name = $nameEle.text();
                var url = $nameEle.attr("url");
                if(url){
                    $("#contentText").html(name);
                    $("#contentFrame").attr("src",url);
                }*/
            });
            /*$("#frame_2").iframeReady(function(){
             $("#frame_2").iframeAutoHeight(true);
             });*/
        })
        /*function resizeIframeFun(height){
         $("#frame_1").iframeAutoHeight(true,height);
         }*/
    </script>
</head>
<body class="first-body">
<div id="body-wrapper">
    <!-- Wrapper for the radial gradient background -->
    <div id="sidebar">
        <div id="sidebar-wrapper">
            <!-- Sidebar with logo and menu -->
            <h1 id="sidebar-title"><a href="#">后台管理系统</a></h1>
            <!-- Logo (221px wide) -->
            <a href="http://www.865171.cn"><img id="logo" src="/resource/web/js/facebook/images/logo.png"
                                                alt="Simpla Admin logo"/></a>
            <!-- Sidebar Profile links -->
            <div id="profile-links"> 您好, <a href="#" title="Edit your profile">管理员</a>, 您有 <a href="#messages"
                                                                                              rel="modal"
                                                                                              title="3 Messages">3
                封站内信未接收！</a><br/>
                <br/>
                <a href="#" title="View the Site">首页</a> | <a href="#" title="Sign Out">退出</a></div>
            <ul id="main-nav">
            </ul>
            <!-- End #main-nav -->
            <div id="messages" style="display: none">
                <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
                <h3>3 Messages</h3>

                <p><strong>17th May 2009</strong> by Admin<br/>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet
                    congue.
                    <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                </p>
                <p><strong>2nd May 2009</strong> by Jane Doe<br/>
                    Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis,
                    tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.
                    <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                </p>
                <p><strong>25th April 2009</strong> by Admin<br/>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet
                    congue.
                    <small><a href="#" class="remove-link" title="Remove message">Remove</a></small>
                </p>
                <form action="#" method="post">
                    <h4>New Message</h4>
                    <fieldset>
                        <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
                    </fieldset>
                    <fieldset>
                        <select name="dropdown" class="small-input">
                            <option value="option1">Send to...</option>
                            <option value="option2">Everyone</option>
                            <option value="option3">Admin</option>
                            <option value="option4">Jane Doe</option>
                        </select>
                        <input class="button" type="submit" value="Send"/>
                    </fieldset>
                </form>
            </div>
            <!-- End #messages -->
        </div>
    </div>
    <!-- End #sidebar -->
    <div id="main-content">
        <!-- Main Content Section with everything -->
        <noscript>
            <!-- Show a notification if the user has disabled javascript -->
            <div class="notification error png_bg">
                <div> Javascript is disabled or is not supported by your browser. Please <a
                        href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or
                    <a href="http://www.google.com/support/bin/answer.py?answer=23852"
                       title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface
                    properly.
                    Download From <a href="http://www.exet.tk">exet.tk</a></div>
            </div>
        </noscript>
        <!-- Page Head -->
        <ul class="shortcut-buttons-set">
            <li><a class="shortcut-button" href="#"><span> <img src="/resource/web/js/facebook/images/icons/pencil_48.png"
                                                                alt="icon"/><br/>
        Write an Article </span></a></li>
            <li><a class="shortcut-button" href="#"><span> <img
                    src="/resource/web/js/facebook/images/icons/paper_content_pencil_48.png" alt="icon"/><br/>
        Create a New Page </span></a></li>
            <li><a class="shortcut-button" href="#"><span> <img
                    src="/resource/web/js/facebook/images/icons/image_add_48.png" alt="icon"/><br/>
        Upload an Image </span></a></li>
            <li><a class="shortcut-button" href="#"><span> <img src="/resource/web/js/facebook/images/icons/clock_48.png"
                                                                alt="icon"/><br/>
        Add an Event </span></a></li>
            <li><a class="shortcut-button" href="#messages" rel="modal"><span> <img
                    src="/resource/web/js/facebook/images/icons/comment_48.png" alt="icon"/><br/>
        Open Modal </span></a></li>
        </ul>
        <!-- End .shortcut-buttons-set -->
        <div class="clear"></div>
        <!-- End .clear -->
        <div class="content-box">
            <!-- Start Content Box -->
            <div class="content-box-header">
                <h3 id="contentText"></h3>

                <div class="clear"></div>
            </div>
            <!-- End .content-box-header -->
            <div class="content-box-content">
                <div class="tab-content default-tab" style="overflow: hidden;height: 600px">
                    <iframe id="contentFrame" src="" width="100%"
                            style="background-color:white;overflow: hidden;border: 0px;height: 100%"></iframe>
                </div>
                <!-- End #tab1 -->
                <%--<div class="tab-content" id="tab2">
                    <iframe id="frame_2" src="/module/intoModuleConfigPage.do" width="100%" style="overflow: hidden;border: 0px;height: 500"></iframe>
                </div>--%>
                <!-- End #tab2 -->
            </div>
            <!-- End .content-box-content -->
        </div>
        <!-- End Notifications -->
        <div id="footer">
            <small>
                <!-- Remove this notice or replace it with whatever you want -->
                &#169; Copyright 2010 Your Company | Powered by <a href="http://www.865171.cn">admin templates</a> | <a
                    href="#">Top</a></small>
        </div>
        <!-- End #footer -->
    </div>
    <!-- End #main-content -->
</div>
</body>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="/resource/web/js/facebook/css/reset.css" type="text/css" media="screen"/>
<!-- Main Stylesheet -->
<link rel="stylesheet" href="/resource/web/js/facebook/css/style.css" type="text/css" media="screen"/>
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="/resource/web/js/facebook/css/invalid.css" type="text/css" media="screen"/>
<!--                       Javascripts                       -->
<!-- jQuery Configuration -->
<script type="text/javascript" src="/resource/web/js/facebook/scripts/simpla.jquery.configuration.js"></script>
<!-- Facebox jQuery Plugin -->
<script type="text/javascript" src="/resource/web/js/facebook/scripts/facebox.js"></script>

<script type="text/javascript">
    // 第一个选中
    $(function(){
        $("#main-nav").find("li[level!='level_0']:first").trigger("click");
    })
</script>
<!-- Download From www.exet.tk-->
</html>
