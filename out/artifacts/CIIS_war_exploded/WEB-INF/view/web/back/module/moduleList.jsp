<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
    <title>Books</title>
    <jsp:include page="/WEB-INF/view/common/base.jsp"/>
    <jsp:include page="/WEB-INF/view/common/jqgrid.jsp"/>
    <!-- Reset Stylesheet -->
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
        html { overflow-x: hidden; overflow-y: hidden; border:0;}
    </style>
    <script type="text/javascript">
        $(function(){

        })
    </script>
</head>
<body>
<div id="main-content">
    <div class="content-box">
        <div class="content-box-content">
            <table>
                <tbody>
                <tr>
                    <td>
                        <input id="addModule" class="button edit" type="button" style="display: none" value="增加"/>
                        <input id="editModule" class="button edit" type="button" style="display: none" value="修改"/>
                        <input id="deleteModule" class="button edit" type="button" style="display: none" value="删除"/>
                        <input id="quoteModule" class="button quote" type="button" style="display: none" value="引用"/>
                    </td>
                </tr>
                </tbody>
            </table>
            <table id="grid"></table>
            <div id="pager"></div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var params = window.dialogArguments;
    $(function () {
        var URL = '/module/findAllModuleListForPage.do';
        var init = function(){
            if(params){
                $(".quote").show();
            }else{
                $(".edit").show();
            }
        }();

        $("#quoteModule").click(function(){
           // 引用按钮
            var idArr = jQuery("#grid").jqGrid('getGridParam', 'selarrrow');
            switch(idArr.length){
                case 0 :
                    alert("请选择一条父模块信息！");
                    return;
                case 1 :
                    var data = jQuery("#grid").jqGrid('getRowData', idArr[0]);
                    window.returnValue = data;
                    window.self.close();
                    return;
                default :
                    alert("一次只能选择一条父节点信息！");
            }
        });

        $("#addModule").click(function(){
            window.location.href = "/module/intoModuleConfigPage.do";
        });

        $("#editModule").click(function(){
            var idArr = jQuery("#grid").jqGrid('getGridParam', 'selarrrow');
            switch(idArr.length){
                case 0 :
                    alert("请选择一条父模块信息！");
                    return;
                case 1 :
                    var data = jQuery("#grid").jqGrid('getRowData', idArr[0]);
                    $("input[name='id']").val(data.id);
                    window.location.href = "/module/intoModuleConfigPage.do?id="+data.id;
                    return;
                default :
                    alert("一次只能选择一条父节点信息！");
            }

        });

        $("#deleteModule").click(function(){
            var idArr = jQuery("#grid").jqGrid('getGridParam', 'selarrrow');
            switch(idArr.length){
                case 0 :
                    alert("请选择模块信息进行删除！");
                    return;
                default :
                    if(!confirm("确定要删除所选模块吗？")){
                        return;
                    }
                    var idStr = "";
                    $.each(idArr,function(idx,id){
                        var data = jQuery("#grid").jqGrid('getRowData', id);
                        idStr += "," + data.id;
                    });
                    idStr = idStr.substr(1);
                    $.ajax({
                        url:"/module/deleteModule.do",
                        type:"get",
                        data:"idStr="+idStr,
                        success:function(){
                            $("#grid").trigger("reloadGrid");
                        }
                    })
                    //$("#editDispath").attr("action","?idStr="+idStr).submit();
            }

        });

        var editOptions = {
            onclickSubmit: function (params, postdata) {
                params.url = URL + '/' + postdata.id;
            }
        };


        $("#grid").jqGrid({
            url: URL,
            editurl: URL,
            altRows:true,
            multiselect : true,
            colNames:['ID','名称','链接','创建时间','启用','级别'],
            colModel: [
                {name: 'id',index: 'id'},
                {name: 'name',index: 'name'},
                {name: 'url',index: 'url'},
                {name: 'create_time',datefmt : "yyyy-MM-dd", index: 'create_time'},
                {name: 'enable', index: 'enable',formatter:function(val){
                    if(val == 1){
                        return "是";
                    }else{
                        return "否";
                    }
                }},
                {name: 'level',index: 'level',hidden:true}
            ],
            pager: '#pager',
            height: 'auto',
            autowidth:true,
            ondblClickRow: function (id) {
                jQuery(this).jqGrid('editGridRow', id, editOptions);
            },
            afterInsertRow : function(rowid,rowdata,rowelem){
            },
            beforeRequest: function () {
                var postData = {};
                if(params){
                    postData["level"] = 0;
                }
                $.extend($("#grid").getGridParam("postData"), postData);
            }
        }).navGrid('#pager');
    });


</script>
</body>
</html>
