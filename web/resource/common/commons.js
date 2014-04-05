/**
 * 公用的一些函数，jquery扩展
 * @charset utf8
 * @autor liujhc
 */
(function($){
    $.extend({
        /**
         * 包装函数，支持在函数前后加入其他代码，返回新的函数
         * @param target 要包装的函数
         * @param before 在func执行之前执行的函数
         * @param after 在func执行后执行的函数
         * @return 返回经过包装后的函数，并附带了target原来的属性
         */
        wrap:function(target,before,after){
            return $.extend(function(){
                var result;
                if($.isFunction(before)){
                    before.apply(this,arguments);
                }
                if($.isFunction(target)){
                    result =target.apply(this,arguments);
                }
                if($.isFunction(after)){
                    after.apply(this,arguments);
                }
                return result;
            },target);
        }
    });

    $.fn.extend({
        /**
         * 自动填充表单,支持类似form.userName这样的属性映射，
         * 例如：如需填充name='form.userName'的表单元素，传入下面两种结构的json对象都可以准确映射：
         * {'form.userName':'Tom'}或{form:{userName:"Tom"}}
         */
        fillForm:function(data){
            if(data && typeof data=="object"){
                this.find(":input:not(:button)").andSelf().filter(":input[name]").each(function(){
                    var $field=$(this), key = $field.attr("name"), value = data[key];
                    if (value === undefined) {
                        try { // 多层获取
                            value = eval("data." + key);
                        } catch (e) {
                        }
                    }
                    if(value!=null){
                        // checkbox 和 radio 必须传入数组
                        if (!$.isArray(value) && $field.is(":checkbox,:radio")) {
                            $field.val([value]);
                        } else {
                            $field.val(value.length == 0 ? "" : value);
                        }
                        if($field.is(":checked,select")){
                            $field.change();
                        }
                    }
                });
            }
            return this;
        },
        resetForm:function(){//jQuery.form.js插件的resetForm方法有bug，在此重写
            this.each(function(){
                if (typeof this.reset == 'function' || (typeof this.reset == 'object' && !this.reset.nodeType)) {
                    this.reset();
                }
            }).find(":input:not(:button)").each(function(){
                    $(this).val($(this).val());
                });
            return this;
        },
        /**
         * 对于所选元素进行排序
         * @parent sortby 排序方法
         * 例如,对select的选项按名称排序:
         * $("select:eq(0) option").sort(function(a,b){
		 *    var ta=$(a).text(), tb=$(b).text();
		 *    return ta>tb?1:(ta<tb?-1:0);
		 * });
         */
        sort:function(sortby){
            var $parent = this.parent();
            if(!sortby){//默认用文本排序
                sortby=function(a,b){
                    var ta=$(a).text(), tb=$(b).text();
                    return ta>tb?1:(ta<tb?-1:0);
                }
            }
            $.each(this.get().sort(sortby),function(){
                $parent.append(this);
            })
            return this;
        },
        /**
         * 获取被选内容中的表单数据
         */
        formData:function(){
            var result={}, $form=$(this);
            $form.find(":input[name]").andSelf().filter(":input:not(:button,:checkbox,:radio)[name],:checked[name]").each(function(){
                var $field=$(this), val=[], name=$field.attr("name");
                if($field.is("select")){
                    $field.find("option[value]:selected").each(function(){
                        val.push($(this).attr("value"));
                    });
                }else{
                    val.push($field.attr("value"));
                }
                result[name] = result[name] ? result[name].concat(val) : val;
            });
            return result;
        },
        /**
         * 可输入的下拉列表
         */
        inputSelect:function (options) {
            var defaultOption = {
                option: "input"
            };
            options = $.extend(defaultOption, options);
            this.each(function () {
                var $current = $(this);
                $current.css({
                    "marginLeft": "-150px",
                    "position": "relative"
                }).wrap("<span></span>").wrap("<span></span>");
                var $parent = $current.parent().css({
                    marginLeft:150,
                    overflow:"visible"
                }).parent().css({
                        position: "relative",
                        display: "inline-block",
                        width:$current.width()+3
                    });
                var $input = $("<input name='"+($current.attr("name")||"")+"_input' type='text'/>").css({
                    position:"absolute",
                    left:1,
                    top:2,
                    border:"none",
                    display:"none",
                    height:$current.height()-3,
                    width:$current.width() - 20
                });
                $input.appendTo($parent).blur(function(){
                    var val = $(this).val();
                    if(val==""){
                        $input.hide();
                        $current.children(":first").attr("selected","selected");
                    }else{
                        $current.children().each(function(){
                            if($(this).attr("value")!=options.option && $(this).text()==val){
                                $input.hide();
                                $(this).attr("selected","selected");
                                $current.select();
                                return false;
                            }
                        });
                    }
                });
                $current.height($current.height()+3).change(function(){
                    if($current.children("option:selected").attr("value")==options.option){
                        $input.show().select();
                    }else{
                        $input.hide();
                    }
                });
            });
            return this;
        },
        /**
         *
         * @param callback 第一个参数是iframe的contentWindow， 第二个参数是contentDocument
         * @returns {*}
         */
        iframeReady: function (callback) {
            this.each(function () {
                var _this = this;
                if ($(_this).is("iframe")) {
                    var doc = _this.contentWindow.document;
                    if (doc.readyState === 'complete' && doc.body && doc.body.hasChildNodes()) {
                        callback.call(_this, _this.contentWindow, _this.contentWindow.document);
                    } else {
                        $(this).bind('load', function () {
                            callback.call(_this, _this.contentWindow, _this.contentWindow.document);
                        });
                    }
                }
            });
            return this;
        },
        /**
         * 自适应iframe高度
         * @returns {*}
         */
        iframeAutoHeight: function (adaptive,addSize) {
            this.each(function () {
                var $frame = $(this);
                $frame.bind('autoHeight',function () {
                    $(this).iframeReady(function (wind, doc) {
                        var height = 0;
                        $('body', doc).children(':visible').each(function () {
                            height += $(this).height();
                        });
                        if(addSize){
                            $frame.height(addSize);
                        }else{
                            $frame.height(height);
                        }
                    });
                }).trigger('autoHeight');
                if (adaptive) {
                    $frame.iframeReady(function (win, doc) {
                        $('body', doc).bind('click keyup', function () {
                            $frame.trigger('autoHeight');
                        });
                    });
                }
            });
            return this;
        }
    });
})(jQuery);