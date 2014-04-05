/**
 * Created with IntelliJ IDEA.
 * User: zhangdajun
 * Date: 14-3-9
 * Time: 下午5:34
 * To change this template use File | Settings | File Templates.
 */

(function(){
    $.fn.layout = $.wrap($.fn.layout,function(o){
        $.layout.defaults.panes.spacing_open = 0;
        return o;
    },function(o){
        return o;
    })

})();
