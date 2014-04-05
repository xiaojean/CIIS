<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>后台管理系统</title>
    <!-- jQuery -->
    <jsp:include page="/WEB-INF/view/common/base.jsp"/>
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
    <!-- Download From www.exet.tk-->
    <style type="text/css">
        body {
            margin-left: 1px;
            margin-top: 1px;
            margin-right: 1px;
            margin-bottom: 1px;
            border-right: 0px;
            overflow: hidden;
            background-color: white;
        }

        html {
            overflow-x: hidden;
            overflow-y: hidden;
            border: 0;
        }
    </style>
</head>
<body style="background-color: white;">
<div>
    <div class="content-box">
        <div class="content-box-content">
            <div class="tab-content default-tab">
                <form id="editForm" action="/module/addModule.do" method="post">
                    <fieldset>
                        <p>
                            <input class="text-input small-input" value="${module.id}" type="hidden" name="id"/>
                            <label>名称</label>
                            <input class="text-input small-input" type="text" value="${module.name}" id="small-input" name="name"/>
                            <span class="input-notification success png_bg">Successful message</span>
                        </p>

                        <p>
                            <label>链接</label>
                            <input class="text-input medium-input datepicker" value="${module.url}" type="text" id="medium-input"
                                   name="url"/>
                            <span class="input-notification error png_bg">Error message</span></p>

                        <p>
                            <label>父节点</label>
                            <input class="text-input small-input" type="text" disabled="disabled" id="large-input" name="parent_name"/>
                            <input type="hidden" name="parent_id" value="${module.parent_id}"/>
                            <input type="hidden" name="level" value="${module.level}"/>
                            <input id="selectParent" class="button" type="button" value="选择"/>
                        </p>

                        <p>
                            <label>启用</label>
                            <select name="enable">
                                <option value="">--请选择--</option>
                                <option value="1">是</option>
                                <option value="0">否</option>
                            </select>
                        </p>
                        <p>
                            <input name="submit-btn" class="button" type="button" value="提交"/>
                            <input name="return-btn" class="button" type="button" value="返回"/>
                        </p>
                    </fieldset>
                    <div class="clear"></div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var enable = "${module.enable}";
    $(function () {
        var init = function(){
            $("select[name='enable']").find("option").each(function(){
                if(enable == $(this).val()){
                    $(this).attr("selected","selected");
                }
            })

            // 反显父节点名称
            var id = $("input[name='parent_id']").val();
            if(id){
                $.ajax({
                    url:"/module/find/findModuleById.do?id="+id,
                    type:"get",
                    success:function(val){
                        $("input[name='parent_name']").val(val.name);
                    }
                });
            }
        }();

        $("input[name=return-btn]").click(function () {
            window.history.go(-1);
        });

        $("input[name=submit-btn]").click(function(){
            var level = $("input[name='level']").val();
            if(!level){
                $("input[name='level']").val(1);
                $("input[name='parent_id']").val(0);
            }
            $("#editForm").submit();
        });

        $("#selectParent").click(function(){
            var params = new Object();
            params.type = "quote";
            // 选择父节点
            var bakVal = window.showModalDialog("/module/intoModuleListPage.do",params,"dialogWidth=750px;dialogHeight=300px")
            if(bakVal){
                $("input[name='parent_id']").val(bakVal.id);
                $("input[name='parent_name']").val(bakVal.name);
                $("input[name='level']").val(bakVal.level);
            }
        });
    })
</script>

</body>
</html>
