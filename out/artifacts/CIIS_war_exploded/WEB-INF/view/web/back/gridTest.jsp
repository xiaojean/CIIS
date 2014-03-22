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
</head>
<body>

<table id="grid"></table>
<div id="pager"></div>

<script type="text/javascript">
    $(function () {
        var editOptions = {
            onclickSubmit: function (params, postdata) {
                params.url = URL + '/' + postdata.id;
            }
        };
        var addOptions = {mtype: "POST"};
        var delOptions = {
            onclickSubmit: function (params, postdata) {
                params.url = URL + '/' + postdata;
            }
        };

        /*var URL = '/book/getBook.do';
        $("#grid").jqGrid({
            url: URL,
            editurl: URL,
            altRows:true,
            multiselect : true,
            colModel: [
                {name: 'id', label: 'ID', index: 'id', formatter: 'integer', width: 40,
                    editable: true, editoptions: {disabled: true, size: 5}},
                {name: 'title', label: 'Title', index: 'title', width: 300, editable: true,
                    editrules: {required: true}},
                {name: 'author', label: 'Author', index: 'author', width: 200,
                    editable: true, editrules: {required: true}},
                {name: 'cover', label: 'Cover', index: 'cover', hidden: true,
                    editable: true, edittype: 'select', editrules: {edithidden: true},
                    editoptions: {value: {'PAPERBACK': 'paperback', 'HARDCOVER': 'hardcover', 'DUST_JACKET': 'dust jacket'}}},
                {name: 'publishedYear', label: 'Published year', index: 'publishedYear',
                    width: 80, align: 'center', editable: true, editrules: {required: true, integer: true},
                    editoptions: {size: 5, maxlength: 4}},
                {name: 'available', label: 'Available', index: 'available', formatter: 'checkbox',
                    width: 46, align: 'center', editable: true, edittype: 'checkbox', editoptions: {value: "true:false"}},
                {name: 'comments', label: 'Comments', index: 'comments', hidden: true, editable: true, edittype: 'textarea',
                    editrules: {edithidden: true}}
            ],
            caption: "Books",
            pager: '#pager',
            height: 'auto',
            ondblClickRow: function (id) {
                jQuery(this).jqGrid('editGridRow', id, editOptions);
            }
        }).navGrid('#pager');*/


        var URL = '/userPage/getUserForPage.do';
        $("#grid").jqGrid({
            url: URL,
            editurl: URL,
            altRows:true,
            multiselect : true,
            colModel: [
                {name: 'user_id', label: 'ID', index: 'user_id', formatter: 'integer', width: 40,
                    editable: true, editoptions: {disabled: true, size: 5}},
                {name: 'loginname', label: '1', index: 'loginname', width: 300, editable: true,
                    editrules: {required: true}},
                {name: 'password', label: '2', index: 'password', width: 300, editable: true,
                    editrules: {required: true}},
                {name: 'username', label: '3', index: 'username', width: 300, editable: true,
                    editrules: {required: true}},
                {name: 'rights', label: '4', index: 'rights', width: 300, editable: true,
                    editrules: {required: true}},
                {name: 'status', label: '5', index: 'status', width: 300, editable: true,
                    editrules: {required: true}},
                {name: 'last_login', label: '6', index: 'last_login', width: 300, editable: true,
                    editrules: {required: true}}
            ],
            caption: "Books",
            pager: '#pager',
            height: 'auto',
            ondblClickRow: function (id) {
                jQuery(this).jqGrid('editGridRow', id, editOptions);
            }
        }).navGrid('#pager');

    });


</script>
</body>
</html>
