/*
 * UPDATED: 2009.03.04
 *
 * formSuit
 * by hutchin (sean@whitespace-creative.com) 
 *
 * To Use: place in the head 
 *  <link href="inc/style/formSuit.css" rel="stylesheet" type="text/css" />
 *  <script type="text/javascript" src="inc/js/jquery.formSuit.js"></script>
 *
 * And apply the formSuit class the form you want to style
 *
 * To Do: Add textareas, Add File upload
 *
 ******************************************** */
(function($){
	$.fn.formSuit = function(options){
		var self = this;
	
		/* each form */
		this.each(function(){
			/***************************
			  Buttons
			 ***************************/
			var setButton = function(){
				$(this).replaceWith('<button id="'+ this.id +'" name="'+ this.name +'" type="'+ this.type +'" class="'+ this.className +'">'+ $(this).attr('value') +'</button>');
			};
			$('input:submit, input:reset', this).each(setButton);
			$('button', this).each(function(){
				var $button = $(this);
				if($.browser.msie && $.browser.version == '6.0'){
					$button.hover(
						function(){
							$button.addClass('hover');
						},
						function(){
							$button.removeClass('hover');
						}
					);
				}
			});
			
			/***************************
			  Text Fields 
			 ***************************/
			var setText = function(){
				var $input = $(this);
				$input.addClass("text");
				$input.focus(function(){
					$input.addClass("focus");
				}).blur(function(){
					$input.removeClass("focus");
				});
				if($.browser.msie && $.browser.version == '6.0'){
					$input.hover(
						function(){
							$input.addClass('hover');
						},
						function(){
							$input.removeClass('hover');
						}
					);
				}
			};
			$('input:text:visible, input:password:visible, input:file:visible', this).each(setText);
			
			/***************************
			  Textarea 
			 ***************************/
			$('textarea:visible', this).each(function(){
				var $textarea = $(this);
				$textarea.focus(function(){
					$textarea.addClass("focus");
				}).blur(function(){
					$textarea.removeClass("focus");
				});
				if($.browser.msie && $.browser.version == '6.0'){
					$textarea.hover(
						function(){
							$textarea.addClass('hover');
						},
						function(){
							$textarea.removeClass('hover');
						}
					);
				}
			});
			
			/***************************
			  Check Boxes 
			 ***************************/
			$('input:checkbox:visible', this).each(function(){
				$(this).addClass('hidden').wrap('<span></span>');
				var $wrapper = $(this).parent();
				$wrapper.prepend('<span class="checkbox"></span>');
				/* Click Handler */
				$(this).siblings('span.checkbox').click(function(){
					var $a = $(this);
					var input = $a.siblings('input')[0];
					if (input.checked === true){
						input.checked = false;
						$a.removeClass('checked');
					}
					else {
						input.checked = true;
						$a.addClass('checked');
					}
					return false;
				});
				if($.browser.msie && $.browser.version == '6.0'){
					$(this).siblings('span.checkbox').hover(
						function(){
							$(this).addClass('hover');
						},
						function(){
							$(this).removeClass('hover');
						}
					);
				}
				/* set the default state */
				if (this.checked){$('span.checkbox', $wrapper).addClass('checked');}
			});
			
			/***************************
			  Radios 
			 ***************************/
			$('input:radio:visible', this).each(function(){
				$input = $(this);
				$input.addClass('hidden').wrap('<span class="radioWrapper"></span>');
				var $wrapper = $input.parent();
				$wrapper.prepend('<span class="radio" rel="'+ this.name +'"></span>');
				/* Click Handler */
				$('span.radio', $wrapper).click(function(){
					var $a = $(this);
					$a.siblings('input')[0].checked = true;
					$a.addClass('checked');
					/* uncheck all others of same name */
					$('span[rel="'+ $a.attr('rel') +'"]').not($a).each(function(){
						$(this).removeClass('checked').siblings('input')[0].checked = false;
					});
					return false;
				});
				if($.browser.msie && $.browser.version == '6.0'){
					$(this).siblings('span.radio').hover(
						function(){
							$(this).addClass('hover');
						},
						function(){
							$(this).removeClass('hover');
						}
					);
				}
				/* set the default state */
				if (this.checked){$('span.radio', $wrapper).addClass('checked');}
			});
	
			
			/***************************
			  Selects 
			 ***************************/
			$('select', this).each(function(index){
				var $select = $(this);
				width = $select.width();
				if(!$select.attr('multiple')){// && $.browser.msie){
					/* First thing we do is Wrap it */
					$(this).wrap('<div class="selectWrapper"></div>');
					var $wrapper = $(this).parent().css({zIndex: 100-index});
					/* Now add the html for the select */
					$wrapper.css('width',width + 10);
					$wrapper.prepend('<div><span></span><a href="#" class="selectOpen"></a></div><ul></ul>');
					if($.browser.msie && $.browser.version == '6.0'){
						$wrapper.find('span').hover(
							function(){
								$wrapper.find('span').addClass('hover');
							},
							function(){
								$wrapper.find('span').removeClass('hover');
							}
						);
					}
					var $ul = $('ul', $wrapper);
					$wrapper.find('span').css('width',width + 3);
					$ul.css('width',width + 1);
					/* Now we add the options */
					$('option', this).each(function(i){
						$ul.append('<li><a href="#" index="'+ i +'">'+ this.text +'</a></li>');
					});
					$ul.find('a').css('width',width + 1);
					/* Hide the ul and add click handler to the a */
					$ul.hide().find('a').click(function(){
						$('a.selected', $wrapper).removeClass('selected');
						$(this).addClass('selected');	
						/* Fire the onchange event */
						changed = false;
						if ($select[0].selectedIndex != $(this).attr('index') && $select[0].onchange) changed = true;
						$select[0].selectedIndex = $(this).attr('index');
						if(changed) $select[0].onchange();
						$('span:eq(0)', $wrapper).html($(this).html());
						$ul.hide();
						return false;
					});
					$(this).addClass('hidden');
					/* Set the defalut */
					$('a:eq('+ this.selectedIndex +')', $ul).click();
				}
			});/* End select each */
			
			/* Apply the click handler to the Open */
			$('a.selectOpen', this).click(function(){
				$(this).blur();
				var $ul = $(this).parent().siblings('ul');
				if ($ul.css('display')=='none'){hideSelect();} /* Check if box is already open to still allow toggle, but close all other selects */
				$ul.toggle();
				return false;
			});
			
			/* Apply the click handler to the Open */
			$('.selectWrapper span', this).click(function(){
				var $ul = $(this).parent().siblings('ul');
				if ($ul.css('display')=='none'){hideSelect();} /* Check if box is already open to still allow toggle, but close all other selects */
				$ul.toggle();
				return false;
			});
		
		}); /* End Form each */
		
		/* Hide all open selects */
		var hideSelect = function(){
			$('.selectWrapper ul:visible').hide();
		};
		
		/* Check for an external click */
		var checkExternalClick = function(event) {
			if ($(event.target).parents('.selectWrapper').length === 0) { hideSelect(); }
		};

		/* Apply document listener */
		$(document).mousedown(checkExternalClick);
		
			
		/* Add a new handler for the reset action */
		var sReset = function(f){
			var sel;
			$('.selectWrapper select', f).each(function(){sel = (this.selectedIndex<0) ? 0 : this.selectedIndex; $('ul', $(this).parent()).each(function(){$('a:eq('+ sel +')', this).click();});});
			$('span.checkbox, span.radio', f).removeClass('checked');
			$('input:checkbox, input:radio', f).each(function(){if(this.checked){$('a', $(this).parent()).addClass('checked');}});
		};
		this.bind('reset',function(){var action = function(){sReset(this);}; window.setTimeout(action, 10);});
		
	};/* End the Plugin */

	/* Automatically apply to any forms with class formSuit */
	$(function(){$('.formSuit').formSuit();});

})(jQuery);