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
		if(confirm("��ȷ��Ҫ�ύ��?")){
			document.forms[0].submit();
			return false;
		}else{
			return false;
		}
	}else{
		return false;
	}
}
// ��֤��ֱ���ύ @author ���
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
//window.open �����´��ڵ���� 
//pageName �������ڵ��ļ����� 
//newwindow �������ڵ����֣������ļ��������Ǳ��룬���ÿ�''���棻 
//height=100 ���ڸ߶ȣ� 
//width=400 ���ڿ�ȣ� 
//top=0 ���ھ�����Ļ�Ϸ�������ֵ�� 
//left=0 ���ھ�����Ļ��������ֵ�� 
//toolbar=no �Ƿ���ʾ��������yesΪ��ʾ�� 
//menubar��scrollbars ��ʾ�˵����͹������� 
//resizable=no �Ƿ�����ı䴰�ڴ�С��yesΪ���� 
//location=no �Ƿ���ʾ��ַ����yesΪ���� 
//status=no �Ƿ���ʾ״̬���ڵ���Ϣ��ͨ�����ļ��Ѿ��򿪣���yesΪ���� 
//д��һ�� 
} 

$(document).ready(function () {
	$("#delete").click(function () {
		return confirm("\u786e\u8ba4\u662f\u5426\u5220\u9664?");
	});
	
});