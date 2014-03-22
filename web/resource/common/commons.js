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
})(jQuery);