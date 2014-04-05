(function($){
	$.fn.tableGrid = function(options){
	    var options = {
	        oddColor   : '#FFFFFF',
	        evenColor  : '#F5FAFA',
	        overColor  : '#FFFFBF',
	        selColor   : '#FFCC99',
	        useClick   : false
	    };
	
		/* each table */
		this.each(function(){
	        $(this).find('tr:odd > td').css('backgroundColor', options.oddColor);
	        $(this).find('tr:even > td').css('backgroundColor', options.evenColor);
	        $(this).find('tr').each(function(){
	            this.origColor = $(this).find('td').css('backgroundColor');
	            this.clicked = false;
	            if (options.useClick) {
	                $(this).click(function(){
	                    if (this.clicked) {
	                        $(this).find('td').css('backgroundColor', this.origColor);
	                        this.clicked = false;
	                    } else {
	                        $(this).find('td').css('backgroundColor', options.selColor);
	                        this.clicked = true;
	                    }
	                    $(this).find('td > input[@type=checkbox]').attr('checked', this.clicked);
	                });
	            }
	            $(this).mouseover(function(){
	                $(this).find('td').css('backgroundColor', options.overColor);
	            });
	            $(this).mouseout(function(){
	                if (this.clicked) {
	                    $(this).find('td').css('backgroundColor', options.selColor);
	                } else {
	                    $(this).find('td').css('backgroundColor', this.origColor);
	                }
	            });
        	});
    	});
    };
    /* Automatically apply to any table with class tableGrid */
	$(function(){$('table.tableGrid tbody').tableGrid();});
})(jQuery);