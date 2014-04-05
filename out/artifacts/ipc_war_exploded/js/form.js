/*******************************
** ����֤
ʹ��˵��:
��ʹ�ñ���ҳ����������script
<script language="JavaScript" type="text/javascript" src="../jslib/form.js">
</script>
<script language="JavaScript" type="text/JavaScript">
function checkForm(theForm) { //v2.0
  if (!checkNotNull(theForm.name,"����")) return false;
  if (!checkNumber(theForm.age,"����")) return false;
  ...
  return true;
}
</script>

ע��:checkNumber(),checkLength()�ȷ�����������Ƿ�Ϊ��

<FORM name="form1" acton="..." onSubmit="return checkForm(document.form1)">
...
<input type="submit" name="Submit" value="Submit">
</FORM>

********************************/

// �Ƿ�Ϊ�գ��ǿշ����棬����Ϊ�շ��ؼ�
function isBlank(str) {
	var blankFlag = true;
	if (str.length == 0) return true;
	for (var i = 0; i < str.length; i++) {
		if ((str.charAt(i) != "") && (str.charAt(i) != " ")) {
			blankFlag = false;
			break;
		}
	}
	return blankFlag;
}

function checkNotNull(theField, fieldName) {
	
	if(isBlank(theField.value)){
		alert(fieldName + "����Ϊ�գ�");
		theField.focus();
		return false;
	}

	return true;
}

// �Ƿ�Ϊ����
function checkNumber(theField, fieldName) {
 	var pattern = /^([0-9]|(-[0-9]))[0-9]*((\.[0-9]+)|([0-9]*))$/;

 	if(theField.value == "") return true;
 	if (!pattern.test(theField.value)) {
 		alert(fieldName + "����Ϊ�Ϸ�����");
 		theField.focus();
 		theField.select();
 		return false;
 	}

	return true;
}

// �Ƿ�Ϊָ����Χ����
function checkNumberRange(theField, fieldName, min, max) {
	if(theField.value == "") return true;
	if (!checkNumber(theField, fieldName)) return false;

	if ((min != "") && (theField.value < min)) {
		alert(fieldName + "����С��" + min + "��");
		theField.focus();
		theField.select();
		return false;
	}

	if ((max != "") && (theField.value > max)) {
		alert(fieldName + "���ɳ���" + max + "��");
		theField.focus();
		theField.select();
		return false;
	}

	return true;
}

// �Ƿ�Ϊ����
function checkInteger(theField, fieldName) {
	var pattern = /^(\d|(-\d))\d*$/;

	if(theField.value == "") return true;
	if (!pattern.test(theField.value)) {
		alert(fieldName + "����Ϊ������");
		theField.focus();
		theField.select();
		return false;
	}

	return true;
}

// �Ƿ�Ϊָ����Χ������
function checkIntegerRange(theField, fieldName, min, max) {
	if(theField.value == "") return true;
	if (!checkInteger(theField, fieldName)) return false;

	if ((min != "") && (theField.value < min)) {
		alert(fieldName + "����С��" + min + "��");
		theField.focus();
		theField.select();
		return false;
	}

	if ((max != "") && (theField.value > max)) {
		alert(fieldName + "���ɳ���" + max + "��");
		theField.focus();
		theField.select();
		return false;
	}

	return true;
}

// �Ƿ�Ϊ����
function checkPositiveNumber(theField, fieldName) {
	if(theField.value == "") return true;
	if (theField.value.charAt(0) == '-') {
		alert(fieldName + "����Ϊ������");
		theField.focus();
		return false;
	}

	return true;
}

// �����ִ���󳤶�
function checkLength(theField, fieldName, maxLength) {
	if(theField.value == "") return true;
	if (theField.value.length > maxLength) {
		alert(fieldName + "���������Ϊ" + maxLength + "�֣�");
		theField.select();
		theField.focus();
		return false;
	}

	return true;
}

// �����ִ�����,ע�����˳��
function checkLength2(theField, fieldName, maxLength, minLength) {
	if(theField.value == "") return true;
	if (theField.value.length > maxLength) {
		alert(fieldName + "���������Ϊ" + maxLength + "�֣�");
		theField.focus();
		return false;
	}

	if ((minLength != "") && (theField.value.length < minLength)) {
		alert(fieldName + "����������Ϊ" + minLength + "�֣�");
		theField.focus();
		return false;
	}

	return true;
}

// �������ַ����Ƿ��Ϊ�Ϸ��ַ�
// charBag��Ϊ�������кϷ��ַ����ַ���
function checkStrLegal(theField, fieldName, charBag) {
	if(theField.value == "") return true;
   	for (var i = 0; i < theField.value.length; i++) {
        var c = theField.value.charAt(i);
        if (charBag.indexOf(c) == -1) {
     		alert(fieldName + "���зǷ��ַ�(" + c + ")��");
     		theField.focus();
     		return false;
        }
    }

    return true;
}

// �������ַ����Ƿ��Ϊ�Ϸ��ַ�
// charBag��Ϊ�����Ƿ��ַ����ַ���
function checkStrLegal2(theField, fieldName, charBag) {
	if(theField.value == "") return true;
   	for (var i = 0; i < theField.value.length; i++) {
        var c = theField.value.charAt(i);
        if (charBag.indexOf(c) > -1) {
     		alert(fieldName + "���зǷ��ַ�(" + c +")��");
     		theField.focus();
     		return false;
        }
    }

    return true;
}

// �����ʼ���֤
function checkEmail(theField) {
	var pattern = /^.+@.+\..+$/;

	if(theField.value == "") return true;
	if (!pattern.test(theField.value)) {
		alert("������Ϸ��ĵ����ʼ���ַ");
		theField.focus();
		theField.select();
		return false;
	}

	return true;
}

// �Ƿ�Ϊֻ������file��text����ֻ�����ұ߰�ťѡ�񴫻صĽ����

function checkReadField(obj) {
	var obj=eval(obj);
	obj.blur();	
	alert("���������ͼ�����ѡ��!");
	
}
