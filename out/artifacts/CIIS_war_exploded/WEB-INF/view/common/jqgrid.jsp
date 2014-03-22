<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" media="screen" href="/resource/web/js/jquery/ui/jquery-ui-1.10.4.custom.css"/>
<link rel="stylesheet" type="text/css" media="screen" href="/resource/web/js/jqgrid/ui.jqgrid.css"/>
<script src="/resource/web/js/jquery/ui/jquery-ui-1.10.4.custom.min.js"></script>
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
                    return Math.ceil(result.total / result.max);
                },
                records: function(result) {
                    //Total number of records
                    return result.total;
                }
            },
            prmNames: {
                page: "page.page",
                rows: "page.size",
                sort: "page.sort",
                order: "page.sort.dir"
            },
            sortname: 'title',
            sortorder: 'asc',
            height: 'auto',
            viewrecords: true,
            rowList: [10, 20, 50, 100],
            altRows: true,
            loadError: function(xhr, status, error) {
                alert(error);
            }
        });
    })
</script>