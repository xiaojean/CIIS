   function fPopUpCalendarDlg(ctrlobj,paths)
    {
        showx = event.screenX - event.offsetX - 4 - 210 ; // + deltaX;
        showy = event.screenY - event.offsetY + 18; // + deltaY;
        newWINwidth = 210 + 4 + 18;

        retval = window.showModalDialog(paths + "/js/calendar/CalendarDlg.htm", "", "dialogWidth:197px; dialogHeight:240px; dialogLeft:"+showx+"px; dialogTop:"+showy+"px; status:no; directories:yes;scrollbars:no;Resizable=no; ");
        if( retval != null ){
        	ctrlobj.focus();
            ctrlobj.value = retval;
            ctrlobj.blur();
        }else{
            //alert("canceled");
        }
    }
     /*
     ���ܣ�ѡ�����ڣ���Ҫ����ѡ������ڲ����ǵ�ǰʱ�估���ڵ�ǰʱ���
     ���ߣ��ű�
     ���أ�boolean
     */
     function fPopUpCalendarDlg2(ctrlobj,paths,checkNowDate)
    { 
        
        showx = event.screenX - event.offsetX - 4 - 210 ; // + deltaX;
        showy = event.screenY - event.offsetY + 18; // + deltaY;
        newWINwidth = 210 + 4 + 18;
		var today=new Date(); 
		var toDate = today.Format('yyyy-MM-dd') ;
        retval = window.showModalDialog(paths + "/js/calendar/CalendarDlg.htm", "", "dialogWidth:197px; dialogHeight:210px; dialogLeft:"+showx+"px; dialogTop:"+showy+"px; status:no; directories:yes;scrollbars:no;Resizable=no; ");
       
        if( retval != null ){
        	if(checkNowDate){ //�Ƿ�У�鲻���ڵ�ǰ����
	        	if(!checkTime2(toDate,retval,false)){
	        		alert('���ڲ������ڻ���ڵ�ǰ����!');
	        	}else{
	            	ctrlobj.value = retval;
	            }
            }else{
        		ctrlobj.value = retval;
            }
        }else{
            //alert("canceled");
        }
    }
        /*
     ���ܣ��Ƚ��������ڵĴ�С�������ʼ���ڴ��ڽ������ڷ���true
     ���ߣ��ű�
     ���أ�boolean
      */
function checkTime2(start,end,showMessage){
	 
	if(start != "" && end != ""){
	    start = start+":00";
	    end = end+":59";
		aa = start.split("-");
		BYear = parseInt(aa[0],10);
		BMonth = parseInt(aa[1],10);
		BDay = parseInt(aa[2],10);
		bb = end.split("-");
		EYear = parseInt(bb[0],10);
		EMonth = parseInt(bb[1],10);
		EDay = parseInt(bb[2],10);
		b=(BYear*10000)+(BMonth*100)+BDay;
		e=(EYear*10000)+(EMonth*100)+EDay;
		if(e>b){
			return true;
		}else{
			if(showMessage){
				alert('��ʼ���ڲ������ڽ�������!');
			}
			return false;
		}
	}
	return true;
}
//---------------------------------------------------   
// ���ڸ�ʽ��   
// ��ʽ YYYY/yyyy/YY/yy ��ʾ���   
// MM/M �·�   
// W/w ����   
// dd/DD/d/D ����   
// hh/HH/h/H ʱ��   
// mm/m ����   
// ss/SS/s/S ��   
//---------------------------------------------------   
Date.prototype.Format = function(formatStr)    
{    
    var str = formatStr;    
    var Week = ['��','һ','��','��','��','��','��'];   
   
    str=str.replace(/yyyy|YYYY/,this.getFullYear());    
    str=str.replace(/yy|YY/,(this.getYear() % 100)>9?(this.getYear() % 100).toString():'0' + (this.getYear() % 100));    
   
    str=str.replace(/MM/,(this.getMonth()+1)>9?(this.getMonth()+1).toString():'0' + (this.getMonth()+1));    
    str=str.replace(/M/g,(this.getMonth()+1));    
   
    str=str.replace(/w|W/g,Week[this.getDay()]);    
   
    str=str.replace(/dd|DD/,this.getDate()>9?this.getDate().toString():'0' + this.getDate());    
    str=str.replace(/d|D/g,this.getDate());    
   
    str=str.replace(/hh|HH/,this.getHours()>9?this.getHours().toString():'0' + this.getHours());    
    str=str.replace(/h|H/g,this.getHours());    
    str=str.replace(/mm/,this.getMinutes()>9?this.getMinutes().toString():'0' + this.getMinutes());    
    str=str.replace(/m/g,this.getMinutes());    
   
    str=str.replace(/ss|SS/,this.getSeconds()>9?this.getSeconds().toString():'0' + this.getSeconds());    
    str=str.replace(/s|S/g,this.getSeconds());    
   
    return str;    
}    
/*
     ���ܣ��Ƚ��������ڵĴ�С�������ʼ���ڴ��ڻ���ڽ������ڷ���true
     ���ߣ����
     ���أ�boolean
*/
function checkTime(start,end,showMessage){
	 
	if(start != "" && end != ""){
	    start = start+":00";
	    end = end+":59";
		aa = start.split("-");
		BYear = parseInt(aa[0],10);
		BMonth = parseInt(aa[1],10);
		BDay = parseInt(aa[2],10);
		bb = end.split("-");
		EYear = parseInt(bb[0],10);
		EMonth = parseInt(bb[1],10);
		EDay = parseInt(bb[2],10);
		b=(BYear*10000)+(BMonth*100)+BDay;
		e=(EYear*10000)+(EMonth*100)+EDay;
		if(e==b){
			 return true;
		}else if(e>b){
			return true;
		}else{
			if(showMessage){
				alert('��ʼ���ڲ������ڽ�������!');
			}
			return false;
		}
	}
	return true;
}
   
