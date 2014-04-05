/**
 * jqGrid的扩展，依赖commons.js文件中对jquery的扩展方法$.wrap
 * @charset utf8
 * @autor liujhc
 */
(function($){
    var isGridOptions=function(o){//返回参数是否为jgGrid的配置
        return o && typeof o == 'object' && 'colModel' in o;
    }
    /**
     * jqGrid Bug补丁
     */
    $.fn.jqGrid=$.wrap($.fn.jqGrid,function(o){
        if(!isGridOptions(o)) return;
        //当reload时清除选择
        o.loadComplete=$.wrap(o.loadComplete,function(){
            this.p.selarrrow=[];
            this.p.selrow=null;
        });
    });
    /**
     * zebra 斑马线
     * 当使用树形表格treeGrid功能，斑马线功能将不被启用
     */
    $.fn.jqGrid=$.wrap($.fn.jqGrid,function(o){
        if(!isGridOptions(o) || o.zebra==false || o.treeGrid) return;
        var zebra=function($tr){
            $tr.addClass("list-odd").hover(function(){
                $(this).removeClass("list-odd");
            }, function(){
                if($(this).attr("aria-selected")!="true"){
                    $(this).addClass("list-odd");
                }
            });
        }
        var $table=this, rownum=0;
        o.afterInsertRow=$.wrap(o.afterInsertRow,function(){
            if((++rownum)%2==0){
                zebra($table.find("tr:eq("+rownum+")"));
            }
        });
        o.onSelectAll=$.wrap(o.onSelectAll,function(rowIds, checked){
            if(checked){
                $table.find("tr.jqgrow").removeClass("list-odd");
            }else{
                zebra($table.find("tr.jqgrow:odd"));
            }
        });
        o.gridComplete = $.wrap(o.gridComplete, function () {
            zebra($table.find("tr.jqgrow:odd"));
            rownum = 0;
            alert("hello");
        });
    });

    /**
     * 允许设置表格的最小高度
     * @type {*}
     */
    $.fn.jqGrid = $.wrap($.fn.jqGrid, null, function (o) {
        if (!isGridOptions(o)) return;
        $(".ui-jqgrid-bdiv", "#gbox_" + this.get(0).id).css("min-height", o.minHeight || 'auto');
    });

    /**
     * 记录最后一次pageSize的调整
     * @type {*}
     */
    (function () {
        $.fn.jqGrid = $.wrap($.fn.jqGrid, function (o) {
            if (!isGridOptions(o)) return;
            o.rowNum = store.get(PAGE_SIZE_STORE_KEY(o)) || o.rowNum;
        }, function (o) {
            if (!isGridOptions(o)) return;
            $('.ui-pg-selbox', this[0].p.pager).change(function () {
                store.set(PAGE_SIZE_STORE_KEY(o), $(this).val());
            });
        });
        function PAGE_SIZE_STORE_KEY(o) {
            return location.pathname + o.pager + ":pageSize";
        }
    })();

    /**
     * 自适应宽度
     */
    $.fn.jqGrid = $.wrap($.fn.jqGrid, function (o) {
        if (!isGridOptions(o)) return;
        var $table = this;
        var t = this.get(0);
        if (o.autowidth !== true) { // 不自动适应窗口(显示滚动条)
            $(window).resize(function () {
                $('#gview_' + t.p.id).children().andSelf().add('#gbox_' + t.p.id + ',' + t.p.pager)
                    .width($table.parents(".ui-jqgrid").parent().width() - 2);
            });
            o.resizeStop = $.wrap(o.resizeStop, function (width, index) {
                // 记录下对宽度的调整
                saveWidthSetting($table[0].p.colModel[index].name, width);
            });

            o.gridComplete = $.wrap(o.gridComplete, null, function () {
                // 当没有数据时也需要能够滚动列
                $table.find('tr.jqgfirstrow').height($table.jqGrid("getDataIDs").length > 0 ? 0 : 1);
            });

            var COL_WIDTH_SETTING_KEY = location.pathname + '#' + $table.attr('id') + '_colModel#width';

            var widthSettings = getWidthSettings();
            $.each(o.colModel, function () {
                this.width = widthSettings[this.name] || this.width;
            });

            function getWidthSettings() {
                var json = store.get(COL_WIDTH_SETTING_KEY);
                return json ? JSON.parse(json) : {};
            }

            function saveWidthSetting(colName, width) {
                var setting = getWidthSettings();
                setting[colName] = width;
                store.set(COL_WIDTH_SETTING_KEY, JSON.stringify(setting));
            }

            $table.data('COL_WIDTH_SETTING_KEY', COL_WIDTH_SETTING_KEY);
        } else { // 自适应窗口大小
            var treeResizing = false;
            o.resizeStart = $.wrap(o.resizeStart, function () {//在调整列宽的时候不进行整个表格的宽度重置
                treeResizing = true;
            });
            o.resizeStop = $.wrap(o.resizeStop, function () {
                setTimeout(function () {
                    treeResizing = false;
                }, 100);
            });
            $(window).resize(function () {//在窗口大小改变时，重置jqGrid的宽度
                if (!treeResizing) {
                    treeResizing = true;
                    setTimeout(function () {
                        $table.setGridWidth($table.parents(".ui-jqgrid").parent().width() - 2);
                        treeResizing = false;
                    }, 100);
                }
            });
        }
        o.loadComplete = $.wrap(o.loadComplete, function () {
            $(window).triggerHandler('resize');
        });
    }, function () {
        // 表格初始化之后重置大小
        $(window).triggerHandler('resize');
    });

    /**
     * 活动列(调整列的显示与隐藏以及列之间的显示顺序)
    */
    $.fn.jqGrid=$.wrap($.fn.jqGrid,null,function(o){
        if(!isGridOptions(o) || !o.pager || !o.columnChooser) return;
        $.extend($.jgrid.nav,{//禁止表格左下角的其他按钮的显示
            edit:false,
            add:false,
            del:false,
            search:false,
            refresh: false
        });
        var ts=$(this).get(0),
        tid=ts.p.id+'_';
        function remapColumns(th,colModel){
            var cmMap = {};
            $.each(colModel, function(i) {
                cmMap[this.name]=i;
            });
            var permutation = [];
            th.each(function(i) {
                var id = $(">div", this).get(0).id.replace(/^jqgh_/, "").replace(tid,"");
                if (id in cmMap) {
                    permutation.push(cmMap[id]);
                }
            });
            $(ts).jqGrid("remapColumns",permutation, true, true);
        }
        function encodeColModel(colModel){
            var result="",max=colModel.length-1;
            for(var i=0;;i++){
                result+=colModel[i].name+'/'+(colModel[i].hidden?0:1);
                if(i==max){
                    return result;
                }else{
                    result+='#';
                }
            }
        }
        function decodeColModel(str){
            if(!str) return null;
            var result=[],arr=(str||'').split('#'),max=arr.length-1;
            for(var i=0; ;i++){
                var a=arr[i].split('/');
                result.push({
                    name:a[0],
                    hidden:!parseInt(a[1])
                });
                if(i==max){
                    return result;
                }
            }
        }
        var colsId=tid+'cols',
        COL_SETTING_KEY=location.pathname+'#'+tid+'colModel',
        ulCss={
            listStyleType: 'none',
            margin: 0,
            padding: 5,
            'float': 'left',
            background: '#E5E5E5',
            width: 143
        },
        liCss={
            margin: 5,
            padding: 5,
            fontSize: 12,
            width: 120,
            cursor:'pointer'
        };
        $('<div id="'+colsId+'"/>')
        .append('<ul class="visible"/>')
        .append('<ul class="hidden"/>')
        .insertAfter(this).hide().find("ul").css(ulCss);
        this.navGrid(o.pager).navButtonAdd(o.pager,{
            id: tid + 'colsActive',
            caption:'调整列',
            title:'调整显示列',
            buttonicon:'ui-icon-wrench',
            onClickButton:function(){
                var $hidden = $("#"+colsId+'>ul.hidden'),
                $visible = $("#"+colsId+'>ul.visible');
                $.each(ts.p.colModel,function(i){//生成li，供用户拖拽排序
                    $('<li/>').text(ts.p.colNames[i]).attr('sortable',this.sortable).attr('colName',this.name)[this.hidedlg?'hide':'show']()
                    .appendTo(this.hidden?$hidden:$visible).css(liCss)
                    .addClass(this.hidden?'ui-state-disabled':'ui-state-default');
                });
                $('#'+colsId).dialog({
                    title:'调整列',
                    width:330,
                    create:function(){
                        //调整窗口底部的按钮样式
                        $(this).parent().find(".ui-dialog-buttonpane button").unbind("mouseover").removeClass();
                    },
                    close:function(){
                        $hidden.empty();
                        $visible.empty();
                    },
                    buttons:{
                        "重置为系统初始状态":function(){
                            if(confirm("重置将刷新页面，您确定现在重置吗？")){
                                store.remove(COL_SETTING_KEY);
                                store.remove($(ts).data('COL_WIDTH_SETTING_KEY'));
                                window.location.reload();
                            }
                        }
                    }
                }).find('ul').sortable({
                    connectWith: "#"+colsId+">ul",
                    items: 'li:not([sortable=false])',
                    over: function(event, ui) {
                        $(ui.item).addClass('ui-state-highlight');
                    },
                    out: function(event, ui) {
                        $(ui.item).removeClass('ui-state-highlight');
                    },
                    update:function(event, ui){
                        var colName=$(ui.item).removeClass('ui-state-highlight').attr('colName'),
                        $th=$('#'+tid+colName);
                        if($(this).is('ul.visible')){
                            $(ui.item).addClass('ui-state-default').removeClass('ui-state-disabled');
                            $(ts).showCol(colName);
                            //更新排序
                            if($(ui.item).next().length==0){
                                $th.insertAfter('#'+tid+$(ui.item).prev().attr('colName'));
                            }else{
                                $th.insertBefore('#'+tid+$(ui.item).next().attr('colName'));
                            }
                            remapColumns($th.siblings().andSelf(),ts.p.colModel);
                        }else{
                            $(ui.item).addClass('ui-state-disabled').removeClass('ui-state-default');
                            $(ts).hideCol(colName);
                        }
                        setTimeout(function(){
                            store.set(COL_SETTING_KEY,encodeColModel(ts.p.colModel));//将最新字段顺序和显示状态存入本地存储
                            $(ts).trigger("reloadGrid", [{page: 1}]);
                        }, 100);
                    }
                }).disableSelection();
            }
        });
        //如果cookie中有排序的列名，恢复用户的设置
        var colModel=decodeColModel(store.get(COL_SETTING_KEY));
        var sortedNames = function (cols) {
            return $.map(cols,function (v) {
                return v.name
            }).sort().join(',');
        }
        // 只有表格中现有列于缓存时一致才使用缓存，防止列错乱
        if ($.isArray(colModel) && colModel.length > 0 && sortedNames(colModel) == sortedNames(ts.p.colModel)) {
            var colModelMap = {};
            $.each(ts.p.colModel, function () {
                colModelMap[this.name] = this;
            });
            var $parent=$('#'+tid+colModel[0].name).parent();
            $.each(colModel, function(i){
                var col = colModelMap[this.name];
                var hidden = (this.hidden || (col && col.hidden && col.hidedlg)) && !col.filterValue;
                var $th=$('#'+tid+this.name);
                if(hidden===true){
                    $(ts).hideCol(this.name);
                }else{
                    $(ts).showCol(this.name);
                }
                setTimeout(function(){
                    $th[hidden===true?'hide':'show']();
                }, 100);
                if(i!=0){
                    $th.insertAfter('#'+tid+colModel[i-1].name);
                }
            });
            remapColumns($('>th',$parent), ts.p.colModel);
        }
    });


    /**
     * 根据字典自动翻译字段值
     */
    $.fn.jqGrid = $.wrap($.fn.jqGrid, function (o) {
        if (!isGridOptions(o)) return;
        $.each(o.colModel, function () {
            if (this.dict && !this.formatter) {
                var map = {};
                var dict = typeof this.dict == 'string' ? $.getSysDict(this.dict).items : this.dict;
                $.each(dict, function () {
                    map[this.itemValue] = this.itemName;
                });
                this.formatter = function (val) {
                    return map[val] || val || '';
                }
            }
        });
    });

    /**
     * 如果是clientArray，仅简单删除，不发起ajax请求
     */
    (function () {
        var delGridRow = $.fn.jqGrid.delGridRow;
        $.fn.jqGrid.delGridRow = function (rowId, delOptions) {
            if (delOptions.url == "clientArray") {
                $(this).delRowData(rowId);
            } else {
                delGridRow.apply(this, arguments);
            }
        }
    })();
})(jQuery);
