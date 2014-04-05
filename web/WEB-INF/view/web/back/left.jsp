<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <title>管理页面</title>
    <jsp:include page="/WEB-INF/view/common/base.jsp"/>
    <script src="/resource/web/js/moo/prototype.lite.js" type="text/javascript"></script>
    <script src="/resource/web/js/moo/moo.fx.js" type="text/javascript"></script>
    <script src="/resource/web/js/moo/moo.fx.pack.js" type="text/javascript"></script>
    <style>
        body {
            font: 12px Arial, Helvetica, sans-serif;
            color: #000;
            background-color: #EEF2FB;
            margin: 0px;
        }

        #container {
            width: 182px;
        }

        H1 {
            font-size: 12px;
            margin: 0px;
            width: 182px;
            cursor: pointer;
            height: 30px;
            line-height: 20px;
        }

        H1 a {
            display: block;
            width: 182px;
            color: #000;
            height: 30px;
            text-decoration: none;
            moz-outline-style: none;
            background-image: url(/resource/web/image/menu_bg.gif);
            background-repeat: no-repeat;
            line-height: 30px;
            text-align: center;
            margin: 0px;
            padding: 0px;
        }

        .content {
            width: 182px;
            height: 26px;

        }

        .childModule ul {
            list-style-type: none;
            margin: 0px;
            padding: 0px;
            display: block;
        }

        .childModule li {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            list-style-type: none;
            display: block;
            text-decoration: none;
            height: 26px;
            width: 182px;
            padding-left: 0px;
        }

        .childModule {
            width: 182px;
            margin: 0px;
            padding: 0px;
            left: 0px;
            top: 0px;
            right: 0px;
            bottom: 0px;
            clip: rect(0px, 0px, 0px, 0px);
        }

        .childModule a:link {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(/resource/web/image/menu_bg1.gif);
            background-repeat: no-repeat;
            height: 26px;
            width: 182px;
            display: block;
            text-align: center;
            margin: 0px;
            padding: 0px;
            overflow: hidden;
            text-decoration: none;
        }

        .childModule a:visited {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(/resource/web/image/menu_bg1.gif);
            background-repeat: no-repeat;
            display: block;
            text-align: center;
            margin: 0px;
            padding: 0px;
            height: 26px;
            width: 182px;
            text-decoration: none;
        }

        .childModule a:active {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            background-image: url(/resource/web/image/menu_bg.gif);
            background-repeat: no-repeat;
            height: 26px;
            width: 182px;
            display: block;
            text-align: center;
            margin: 0px;
            padding: 0px;
            overflow: hidden;
            text-decoration: none;
        }

        .childModule a:hover {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            font-weight: bold;
            color: #006600;
            background-image: url(/resource/web/image/menu_bg2.gif);
            background-repeat: no-repeat;
            text-align: center;
            display: block;
            margin: 0px;
            padding: 0px;
            height: 26px;
            width: 182px;
            text-decoration: none;
        }
    </style>
    <script type="text/javascript">
        var allModuleNodes = [];
        // 获取级别为1的模块
        jQuery(function(){
            var $container = jQuery("#container");
            jQuery.ajax({
                url: "/module/allModuleList.do",
                type: "get",
                async: false,
                success: function (data) {
                    allModuleNodes = data;
                }
            });

            jQuery.ajax({
                url: "/module/moduleListByLevel.do?level=1",
                type: "get",
                async: false,
                success: function (data) {
                    jQuery.each(data, function (idx, obj) {
                        var $level1 = jQuery('<h1 class="type" ref="' + obj.id + '"><a href="javascript:void(0)">'+obj.name+'</a></h1>' +
                                '<div class="content"  ref="' + obj.id + '">' +
                                '<table width="100%" border="0" cellspacing="0" cellpadding="0">' +
                                '<tr><td><img src="/resource/web/image/menu_topline.gif" width="182" height="5" /></td></tr></table>' +
                                '<ul class="childModule" style="overflow: auto"></ul>' +
                                '</div>');

                        loadChildAccord(obj.id,$level1);
                        $level1.appendTo($container);
                    })

                }
            });

            var contents = document.getElementsByClassName('content');
            var toggles = document.getElementsByClassName('type');
            var myAccordion = new fx.Accordion(
                    toggles, contents, {opacity: true, duration: 400}
            );
            myAccordion.showThisHideOpen(contents[0]);
        });

        // 加载子节点
        var loadChildAccord = function(parentId,contentObj){
            var $ulEle = contentObj.find("ul");
            jQuery.each(allModuleNodes,function(idj,childObj){
                // 将子节点放入div
                if(parentId == childObj.parent_ID){
                    $ulEle.append("<li ref='"+childObj.id+"' url='"+childObj.url+"'>" +
                            "<a href='#' onclick='openCenterWin("+childObj.id+")'>"+childObj.name+"</a></li>")
                            .appendTo(jQuery("div[ref='"+childObj.parent_ID+"']"));
                }
            })
        }

        var openCenterWin = function(id){
            alert(id);
            var $clickObj = jQuery("li[ref="+id+"]");
            var url = $clickObj.attr("url");
            var parentWin = parent["refreshCenterWin"];
            if(typeof parentWin == 'function'){
                parentWin(url);
            }
        }
    </script>
</head>

<body>
<table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
    <tr>
        <td width="182" valign="top">
            <div id="container">
            </div>
        </td>
    </tr>
</table>
</body>
</html>
