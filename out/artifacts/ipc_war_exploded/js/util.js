//判断是否全部为空格
function isSpace(str) {
    var len = str.length;

    for(var i=0; i< len; i++) {
        temp = str.substring(i,i+1);
        if (temp != " ") {
            return false;
        }
    }
    return true;
}

//检查是否全部为数字
function isNum(str) {
    var len = 0;
    len = str.length;
    var i = 0;
    for( i=0; i< len; i++) {
        temp = str.substring(i,i+1);
        if (temp >="0" && temp<="9") {
            continue;
        }
        else {
            return false;
        }
    }
    return true;
}

//检查是不是"数字.数字"的格式
function isPrice(str) {
    var len = 0;
    len = str.length;
    var i = 0;
    var count = 0;
    for( i=0; i< len; i++) {
        temp = str.substring(i,i+1);
        if (temp == "." && count<1) {
            count++;
            continue;
        }
        else if (temp >="0" && temp<="9") {
            continue;
        }
        else {
            return false;
        }
    }
    return true;
}

//检查Email是否合法
function isEmail(str) {
    var len = 0;
    len = str.length;
    if (len<5) {
        return false;
    }
    else if (str.indexOf("@") <2) {
        return false;
    }
    return true;

}


/* -- 计算两个字符(YYYY-MM-DD)的日期相隔天数 -- */
function Date_Compare(asStartDate,asEndDate){
    var miStart = Date.parse(asStartDate.replace(/\-/g, '/'));
    var miEnd = Date.parse(asEndDate.replace(/\-/g, '/'));
    return (miEnd-miStart)/(1000*24*3600);
}
 /*-- 判断一个字符串(YYYY-MM-DD)的日期是否正确 -- */
function Date_istrue(asDate){
    var lsDate = asDate + "";
    var loDate = lsDate.split("-");
    if (loDate.length!=3) return false;
    if (isNaN(loDate[0])||isNaN(loDate[1])||isNaN(loDate[2])) return false;

    if (loDate[0].substring(0,1) == "0" && loDate[0].length>=2) {
        loDate[0] = loDate[0].substring(1,2);
    }
    if (loDate[1].substring(0,1) == "0" && loDate[1].length>=2) {
        loDate[1] = loDate[1].substring(1,2);
    }
    if (loDate[2].substring(0,1) == "0" && loDate[2].length>=2) {
        loDate[2] = loDate[2].substring(1,2);
    }


    var liYear = parseInt(loDate[0]);
    var liMonth = parseInt(loDate[1]);
    var liDay = parseInt(loDate[2]);
    if ((loDate[0].length>4)||(loDate[1].length>2)||(loDate[2].length>2)) return false;

    //if (isNaN(liYear)||isNaN(liMonth)||isNaN(liDay)) return false;
    if ((liYear<1900)||(liYear>3000)) return false;
    if ((liMonth>12)||(liMonth<=0)) return false;
    if ((liDay>31) || (liDay<=0)) return false;

    if (Date_getDay(liYear,liMonth)<liDay) return false;
    return !isNaN(Date.UTC(liYear,liMonth,liDay));
}

 /*-- 返回某年某月的天数-- */
function Date_getDay(aiYear,aiMonth){
    var loDay = [0,31,28,31,30,31,30,31,31,30,31,30,31];
    if((aiYear%4==0&&aiYear%100!=0)||(aiYear%400==0)) loDay[2] = 29;
    return loDay[aiMonth];
}

/*---将页面所有的控件disable-----------*/
function DisableAll(form) {
    var i=0;
    for (i=0;i<form.elements.length;i++)   {
        if (form.elements[i].type == "submit" || form.elements[i].type == "button") {
            form.elements[i].disabled = true;
        }
    }
}

/////////判断文件名为str的文件是否能上传，不是可执行文件可上传，返回true，否则false
function isFileCanUpload(str) {
    str=str.toLowerCase();
    var lens=str.length;
    var exename=str.substring(lens-4,lens);
    if  ((exename==".exe" ) || (exename==".dll")
         || (exename==".jsp" ) || (exename==".asp" )
         || (exename==".cab" ) || (exename==".ini" )
         || (exename==".ocx" ) || (exename==".html")
         || (exename==".bat" ) || (exename==".htm"))
    {
        alert("对不起，你不能上传可执行文件！");
        return false;
    }
    return true;
}

function AddItem(f,t) {
    for (var i=0;i<f.length;i++){
        if (f.options[i].selected){
            t.options[t.length]=new Option(f.options[i].text,f.options[i].value);
        }
    }
    for (var i=f.length-1;i>-1;i--){
        if (f.options[i].selected){
            f.options[i]=null;
        }
    }
}

function AItem(f,t) {
    for(i=0;i<f.options.length;i++) {
        f.options(i).selected=true;
    }

    for(i=0;i<f.options.length;i++) {
        var oOption = document.createElement("OPTION");
        oOption.text=f.options(i).text;
        oOption.value=f.options(i).value;
        t.add(oOption);
    }
    for (var i=f.length-1;i>-1;i--) {
        if (f.options[i].selected) {
            f.options[i]=null;
        }
    }
}
//////////////全选
function SelectAll(field) {
    for (var i=0;i<field.length;i++){
        field.options[i].selected=true;
    }
}

/////////////弹出人员选者
function Win_UserSelect(obj_id,obj_name) {
    var url = "../../share/select/win_user.jsp?obj_id="  + obj_id + "&obj_name=" + obj_name;
    userWin = window.open(url ,'','left=120,top=120, scrollbars=no,resizable=no,status=no,width=280,height=380');
}
