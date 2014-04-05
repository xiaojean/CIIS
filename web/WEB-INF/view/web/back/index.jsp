<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="language" content="en" />
    <jsp:include page="/WEB-INF/view/common/base.jsp" />
    <title>后台管理</title>

    <style type="text/css">

        body {
            color:			#FFF;
            background:		#66C;	/* color page so it can be seen */
        }

        .ui-layout-north ,
        .ui-layout-south ,
        .ui-layout-west ,
        .ui-layout-east {
            /*	NOTE: hiding an iframe may cause JS errors if the iframe page autoruns a script, so...
                onopen: loadIframePage() == loads the *real* iframe page from "longdesc" attribute at 1st open */
            display:	none;
            overflow:	hidden;
        }
        iframe {
            padding:	0 !important; /* iframes should not have padding */
            overflow:	auto !important;
        }

            /* color panes so they can be seen */
        .ui-layout-pane {
            color:			#000;
            background:		#EEE;
        }
            /* masks are usually transparent - make them visible (must 'override' default) */
        .ui-layout-mask {
            background:	#C00 !important;
            opacity:	.20 !important;
            filter:		alpha(opacity=20) !important;
        }

        .ui-layout-south {
            padding:	0;		/* south pane is an iframe-container, so remove padding */
        }
        .ui-layout-west {
            padding:	0;		/* west pane has a scrolling content-div, so remove padding */
        }
        .ui-layout-west .ui-layout-content { /* Google IFRAME */
            border-top:		1px solid #BBB;
            border-bottom:	1px solid #BBB;
        }
        .ui-layout-west .header ,
        .ui-layout-west .footer ,
        .ui-layout-west p {
            background:		#EEE;
            font-weight:	bold;
            text-align:		center;
            padding:		5px 10px;
        }
        .ui-layout-west .footer {
            color:			#FFF;
            background:		#777;
        }
        .ui-layout-west p { /* 2nd Footer: "Toggle South" */
            background:		#F9F9F9;
            border:			4px outset #FFF;
            margin:			7px;
        }

    </style>

    <script type="text/javascript">
        /*
         *	NOTE: For best code readability, view this with a fixed-space font and tabs equal to 4-chars
         */

        function loadIframePage (pane, $Pane) {
            if (!$Pane) $Pane = $('.ui-layout-'+ pane);
            var $Iframe = $Pane.prop('tagName')=='IFRAME' ? $Pane : $Pane.find('IFRAME:first');
            if (!$Iframe.length) return; // no iframe
            var
                    src  = $Iframe.attr('src')
                    ,	page = $Iframe.attr('longdesc')
                    ;
            if (page && src != page) $Iframe.attr('src',page);
        }

        var myLayout;

        $(document).ready( function() {
            myLayout = $("body").layout({
                minSize:			10
                ,   north__closable:false
                ,   north__resizable:false
                ,	north__size:        50
                /*,	south__size:		.25*/
                ,   west__resizable:true
                ,	west__size:			185
                /*,	east__size:			'40%'*/
                ,	center__minHeight:	200
                ,	center__minWidth:	'30%'
                ,	spacing_closed:		0
                //,	initClosed:			true
                ,	maskContents:		true // IMPORTANT - enable iframe masking - all panes in this case
                ,	onopen:				loadIframePage // same callback for ALL borderPanes
                ,	east__resizeWhileDragging: true	// slow with a page full of iframes!
                ,	west__spacing_closed:		20
                ,	west__togglerLength_closed:	100
                ,	west__togglerAlign_closed:	"top"
                ,	west__togglerContent_closed:"M<BR>E<BR>N<BR>U"
                ,	west__togglerTip_closed:	"Open & Pin Menu"
                ,	west__sliderTip:			"Slide Open Menu"
                ,	west__slideTrigger_open:	"mouseover"
                ,	center__maskContents:		true
                ,   clearSpacing : ["north","west"]
                /*
                 ,	west__initClosed:	false
                 ,	south__initClosed:	false
                 ,	west__maskIframesOnResize: false
                 */
            });
            //loadIframePage('west');
        });

    </script>

</head>
<body>

<h3>Loading...</h3>

<iframe class="ui-layout-north" src="/web/back/direct/admin_top.do" longdesc="/web/back/direct/admin_top.do" frameborder="0" scrolling="no"></iframe>

<iframe class="ui-layout-center" src="/web/back/direct/right.do"  frameborder="0" scrolling="auto"></iframe>

<div class="ui-layout-west">
    <iframe class="ui-layout-content" src="/web/back/direct/left.do" width="100%" height="100" frameborder="0" scrolling="auto"></iframe>
</div>

</body>
<script type="text/javascript">
    var refreshCenterWin = function(url){
        $(".ui-layout-center").attr("src",url);
    }
</script>
</html>