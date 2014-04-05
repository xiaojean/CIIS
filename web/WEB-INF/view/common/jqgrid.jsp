<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" media="screen" href="/resource/web/js/jquery/ui/theme/smoothness/jquery-ui-1.10.4.custom.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="/resource/web/js/jqgrid/ui.jqgrid.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="/resource/web/js/jqgrid/ui.multiselect.css"/>
<script src="/resource/web/js/jquery/ui/jquery-ui-1.10.4.custom.min.js"></script>
<script src="/resource/web/js/jqgrid/jquery.jqGrid.patch.js"></script>
<script src="/resource/web/js/jqgrid/grid.locale-cn.js"></script>
<script src="/resource/web/js/jqgrid/jquery.jqGrid.min.js"></script>
<script type="text/javascript">
    $(function(){
        $.extend($.jgrid.defaults, {
            datatype: 'json',
            jsonReader : {
                repeatitems:false,
                total: function(result) {
                    //Total number of pages
                    return result.total;
                },
                records: function(result) {
                    //Total number of records
                    return result.records;
                }
            },
            prmNames: {
                page: "page",
                total : "total",
                records : "records",
                rows: "size",
                sort: "sort",
                order: "sort_dir"
            },
            ajaxGridOptions:{async:false},
            viewrecords: true,
            rowList: [10, 20, 50, 100],
            altRows: true,
            loadError: function(xhr, status, error) {
                alert(error);
            },
            gridComplete:function(){
                var resizeIframHeight = window.parent["resizeIframeFun"];
                //alert(typeof resizeIframHeight);
                if(typeof resizeIframHeight == "function"){
                    var height = $(this).jqGrid('getGridParam', 'height');
                    if(typeof height == "string"){
                        // 计算高度
                        var records = $(this).jqGrid('getRowData');
                        height = records.length * 25 + 50;
                    }
                    resizeIframHeight(height);
                }
            }
        });
    });
</script>