jQuery.formValidator.initConfig({onError:function () {
		alert("\u6821\u9a8c\u6ca1\u6709\u901a\u8fc7\uff0c\u5177\u4f53\u9519\u8bef\u8bf7\u770b\u9519\u8bef\u63d0\u793a");
	}});
function openDiv(divName) {
	$("#" + divName).css("display", "block");
}
function closeDiv(divName) {
	$("#" + divName).css("display", "none");
}
function closeTwoDiv(divName1,divName2) {
	$("#" + divName1).css("display", "none");
	$("#" + divName2).css("display", "none");
}
function showDiv(divName) {
	var div = $("#" + divName);
	if (div.css("display") == "none") {
		div.css("display", "block");
	} else {
		div.css("display", "none");
	}
}
function showDocDiv(divName, path) {
	var div = $("#" + divName);
	if (div.css("display") == "none") {
		parent.mainFrame.docIndex.location = path;
		div.css("display", "block");
	} else {
		div.css("display", "none");
	}
}
function validateAndSubmitForm() {
	if (jQuery.formValidator.PageIsValid("1") == true) {
		if(confirm("您确定要提交吗?")){
			document.forms[0].submit();
			return false;
		}else{
			return false;
		}
	}else{
		return false;
	}
}
// 验证后不直接提交 @author 李辉
function validateReturn() {
	if (jQuery.formValidator.PageIsValid("1") == true) {
		return true;
	}else{
		return false;
	}
}
function submitForm() {
	document.forms[0].submit();
	return false;
}
function saveForm(action) {
    document.forms[0].action = action;
	document.forms[0].submit();
}
function submitFormByNum(num) {
		eval('document.forms[' + num + ']').submit();
}
function submitThisForm(eles) {
	if (jQuery.formValidator.PageIsValid("1") == true) {
		var box = eval('document.forms[0].' + eles);
		if (confirm("\u4fee\u6539\u7684\u6620\u5c04\u5173\u7cfb\u5c06\u88ab\u4fdd\u5b58\uff0c\u662f\u5426\u7ee7\u7eed?") == true) {
			for (var i = 0; i < box.options.length; i++) {
				box.options[i].selected = true;
			}
			document.forms[0].submit();
		}
	}
}
function submitInfo(ele) {
	ele.submit();
}
function resetForm() {
	document.forms[0].reset();
}
function selectWord(ele, textName) {
	document.getElementById(textName).innerText = ele.value;
	//$("#textName").innerText(ele.value);
}
function openwin(pageName) 
{ 

window.open (pageName, "newwindow", "height=400, width=400,top=200,left=400 , toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
//window.open 弹出新窗口的命令； 
//pageName 弹出窗口的文件名； 
//newwindow 弹出窗口的名字（不是文件名），非必须，可用空''代替； 
//height=100 窗口高度； 
//width=400 窗口宽度； 
//top=0 窗口距离屏幕上方的象素值； 
//left=0 窗口距离屏幕左侧的象素值； 
//toolbar=no 是否显示工具栏，yes为显示； 
//menubar，scrollbars 表示菜单栏和滚动栏。 
//resizable=no 是否允许改变窗口大小，yes为允许； 
//location=no 是否显示地址栏，yes为允许； 
//status=no 是否显示状态栏内的信息（通常是文件已经打开），yes为允许； 
//写成一行 
} 

$(document).ready(function () {
	$("#delete").click(function () {
		return confirm("\u786e\u8ba4\u662f\u5426\u5220\u9664?");
	});
	
});