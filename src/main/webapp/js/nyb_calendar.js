var CalendarData=new Array(100);
var madd=new Array(12);
var tgString="甲乙丙丁戊己庚辛壬癸";
var dzString="子丑寅卯辰巳午未申酉戌亥";
var numString="一二三四五六七八九十";
var monString="正二三四五六七八九十冬腊";
var weekString="日一二三四五六";
var sx="鼠牛虎兔龙蛇马羊猴鸡狗猪";
var cYear,cMonth,cDay,TheDate;
CalendarData = new Array(0xA4B,0x5164B,0x6A5,0x6D4,0x415B5,0x2B6,0x957,0x2092F,0x497,0x60C96,0xD4A,0xEA5,0x50DA9,0x5AD,0x2B6,0x3126E, 0x92E,0x7192D,0xC95,0xD4A,0x61B4A,0xB55,0x56A,0x4155B, 0x25D,0x92D,0x2192B,0xA95,0x71695,0x6CA,0xB55,0x50AB5,0x4DA,0xA5B,0x30A57,0x52B,0x8152A,0xE95,0x6AA,0x615AA,0xAB5,0x4B6,0x414AE,0xA57,0x526,0x31D26,0xD95,0x70B55,0x56A,0x96D,0x5095D,0x4AD,0xA4D,0x41A4D,0xD25,0x81AA5,0xB54,0xB6A,0x612DA,0x95B,0x49B,0x41497,0xA4B,0xA164B, 0x6A5,0x6D4,0x615B4,0xAB6,0x957,0x5092F,0x497,0x64B, 0x30D4A,0xEA5,0x80D65,0x5AC,0xAB6,0x5126D,0x92E,0xC96,0x41A95,0xD4A,0xDA5,0x20B55,0x56A,0x7155B,0x25D,0x92D,0x5192B,0xA95,0xB4A,0x416AA,0xAD5,0x90AB5,0x4BA,0xA5B, 0x60A57,0x52B,0xA93,0x40E95);
madd[0]=0;
madd[1]=31;
madd[2]=59;
madd[3]=90;
madd[4]=120;
madd[5]=151;
madd[6]=181;
madd[7]=212; 
madd[8]=243;
madd[9]=273;
madd[10]=304;
madd[11]=334; 

function GetBit(m,n){ 
return (m>>n)&1; 
}
function e2c(){ 
TheDate= (arguments.length!=3) ? new Date() : new Date(arguments[0],arguments[1],arguments[2]); 
var total,m,n,k; 
var isEnd=false; 
var tmp=TheDate.getYear(); 
if(tmp<1900){
   tmp+=1900;
} 
total=(tmp-1921)*365+Math.floor((tmp-1921)/4)+madd[TheDate.getMonth()]+TheDate.getDate()-38;

if(TheDate.getYear()%4==0&&TheDate.getMonth()>1) {
   total++;
} 
for(m=0;;m++){
   k=(CalendarData[m]<0xfff)?11:12;
   for(n=k;n>=0;n--){
    if(total<=29+GetBit(CalendarData[m],n)){
     isEnd=true; break;
    }
    total=total-29-GetBit(CalendarData[m],n);
   }
   if(isEnd) break;
} 
cYear=1921 + m; 
cMonth=k-n+1; 
cDay=total; 
if(k==12){
   if(cMonth==Math.floor(CalendarData[m]/0x10000)+1){
    cMonth=1-cMonth;
   }    
   if(cMonth>Math.floor(CalendarData[m]/0x10000)+1){
    cMonth--;
   }   
}
}

function GetcDateString(){ 
var tmp="";
tmp+=tgString.charAt((cYear-4)%10);
tmp+=dzString.charAt((cYear-4)%12); 
tmp+="("; 
tmp+=sx.charAt((cYear-4)%12); 
tmp+=")年 "; 
tmp ="";
if(cMonth<1){ 
   tmp+="(闰)"; 
   tmp+=monString.charAt(-cMonth-1); 
}else{
   tmp+=monString.charAt(cMonth-1);
} 
tmp+="月";
tmp+=(cDay<11)?"初":((cDay<20)?"十":((cDay<30)?"廿":"三十")); 
if (cDay%10!=0||cDay==10){
   tmp+=numString.charAt((cDay-1)%10);
}
//document.write("** "+tmp+" **");
return tmp;
}

function GetLunarDay(solarYear,solarMonth,solarDay){
//solarYear = solarYear<1900?(1900+solarYear):solarYear;
//document.write(solarYear +"::"+solarMonth+"::"+solarDay);
if(solarYear<1921 || solarYear>2020){
return "";
}else{
   solarMonth = (parseInt(solarMonth)>0) ? (solarMonth-1) : 11;
   e2c(solarYear,solarMonth,solarDay);
   return GetcDateString();
}
}

var D=new Date(); 
var yy=D.getFullYear(); 
var mm=D.getMonth()+1; 
var dd=D.getDate(); 
var ww=D.getDay(); 
var ss=parseInt(D.getTime() / 1000); 
if (yy<100) yy="19"+yy; 
function showCal(){
document.write(GetLunarDay(yy,mm,dd)); 
} 


function RunGLNL(){ 
var today=new Date(); 
var d=new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六"); 
var DDDD=(today.getFullYear())+"年"+(today.getMonth()+1)+"月"+today.getDate()+"日"; 
DDDD = DDDD + " " + d[today.getDay()]; 
document.write(DDDD+" 农历"); 
showCal(); 
document.write(" " +SolarTerm(today)); 
} 
function DaysNumberofDate(DateGL){ 
return parseInt((Date.parse(DateGL)-Date.parse(DateGL.getYear()+"/1/1"))/86400000)+1; 
} 
function CnDateofDate(DateGL){ 
var CnData=new Array( 
0x16,0x2a,0xda,0x00,0x83,0x49,0xb6,0x05,0x0e,0x64,0xbb,0x00,0x19,0xb2,0x5b,0x00, 
0x87,0x6a,0x57,0x04,0x12,0x75,0x2b,0x00,0x1d,0xb6,0x95,0x00,0x8a,0xad,0x55,0x02, 
0x15,0x55,0xaa,0x00,0x82,0x55,0x6c,0x07,0x0d,0xc9,0x76,0x00,0x17,0x64,0xb7,0x00, 
0x86,0xe4,0xae,0x05,0x11,0xea,0x56,0x00,0x1b,0x6d,0x2a,0x00,0x88,0x5a,0xaa,0x04, 
0x14,0xad,0x55,0x00,0x81,0xaa,0xd5,0x09,0x0b,0x52,0xea,0x00,0x16,0xa9,0x6d,0x00, 
0x84,0xa9,0x5d,0x06,0x0f,0xd4,0xae,0x00,0x1a,0xea,0x4d,0x00,0x87,0xba,0x55,0x04 
); 
var CnMonth=new Array(); 
var CnMonthDays=new Array(); 
var CnBeginDay; 
var LeapMonth; 
var Bytes=new Array(); 
var I; 
var CnMonthData; 
var DaysCount; 
var CnDaysCount; 
var ResultMonth; 
var ResultDay; 
var yyyy=DateGL.getYear(); 
var mm=DateGL.getMonth()+1; 
var dd=DateGL.getDate(); 
if(yyyy<100) yyyy+=1900; 
if ((yyyy < 1997) || (yyyy > 2020)){ 
return 0; 
} 
Bytes[0] = CnData[(yyyy - 1997) * 4]; 
Bytes[1] = CnData[(yyyy - 1997) * 4 + 1]; 
Bytes[2] = CnData[(yyyy - 1997) * 4 + 2]; 
Bytes[3] = CnData[(yyyy - 1997) * 4 + 3]; 
if ((Bytes[0] & 0x80) != 0) {CnMonth[0] = 12;} 
else {CnMonth[0] = 11;} 
CnBeginDay = (Bytes[0] & 0x7f); 
CnMonthData = Bytes[1]; 
CnMonthData = CnMonthData << 8; 
CnMonthData = CnMonthData | Bytes[2]; 
LeapMonth = Bytes[3]; 
for (I=15;I>=0;I--){ 
CnMonthDays[15 - I] = 29; 
if (((1 << I) & CnMonthData) != 0 ){ 
CnMonthDays[15 - I]++;} 
if (CnMonth[15 - I] == LeapMonth ){ 
CnMonth[15 - I + 1] = - LeapMonth;} 
else{ 
if (CnMonth[15 - I] < 0 ){CnMonth[15 - I + 1] = - CnMonth[15 - I] + 1;} 
else {CnMonth[15 - I + 1] = CnMonth[15 - I] + 1;} 
if (CnMonth[15 - I + 1] > 12 ){ CnMonth[15 - I + 1] = 1;} 
} 
} 
DaysCount = DaysNumberofDate(DateGL) - 1; 
if (DaysCount <= (CnMonthDays[0] - CnBeginDay)){ 
if ((yyyy > 1901) && (CnDateofDate(new Date((yyyy - 1)+"/12/31")) < 0)){ 
ResultMonth = - CnMonth[0];} 
else {ResultMonth = CnMonth[0];} 
ResultDay = CnBeginDay + DaysCount; 
} 
else{ 
CnDaysCount = CnMonthDays[0] - CnBeginDay; 
I = 1; 
while ((CnDaysCount < DaysCount) && (CnDaysCount + CnMonthDays[I] < DaysCount)){ 
CnDaysCount+= CnMonthDays[I]; 
I++; 
} 
ResultMonth = CnMonth[I]; 
ResultDay = DaysCount - CnDaysCount; 
} 
if (ResultMonth > 0){ 
return ResultMonth * 100 + ResultDay;} 
else{return ResultMonth * 100 - ResultDay;} 
} 
function CnYearofDate(DateGL){ 
var YYYY=DateGL.getYear(); 
var MM=DateGL.getMonth()+1; 
var CnMM=parseInt(Math.abs(CnDateofDate(DateGL))/100); 
if(YYYY<100) YYYY+=1900; 
if(CnMM>MM) YYYY--; 
YYYY-=1864; 
return CnEra(YYYY)+"年"; 
} 
function CnMonthofDate(DateGL){ 
var CnMonthStr=new Array("零","正","二","三","四","五","六","七","八","九","十","十一","腊"); 
var Month; 
Month = parseInt(CnDateofDate(DateGL)/100); 
if (Month < 0){return "闰" + CnMonthStr[-Month] + "月";} 
else{return CnMonthStr[Month] + "月";} 
} 
function CnDayofDate(DateGL){ 
var CnDayStr=new Array("零", 
"初一", "初二", "初三", "初四", "初五", 
"初六", "初七", "初八", "初九", "初十", 
"十一", "十二", "十三", "十四", "十五", 
"十六", "十七", "十八", "十九", "二十", 
"廿一", "廿二", "廿三", "廿四", "廿五", 
"廿六", "廿七", "廿八", "廿九", "三十"); 
var Day; 
Day = (Math.abs(CnDateofDate(DateGL)))%100; 
return CnDayStr[Day]; 
} 
function DaysNumberofMonth(DateGL){ 
var MM1=DateGL.getYear(); 
MM1<100 ? MM1+=1900:MM1; 
var MM2=MM1; 
MM1+="/"+(DateGL.getMonth()+1); 
MM2+="/"+(DateGL.getMonth()+2); 
MM1+="/1"; 
MM2+="/1"; 
return parseInt((Date.parse(MM2)-Date.parse(MM1))/86400000); 
} 
function CnEra(YYYY){ 
var Tiangan=new Array("甲","乙","丙","丁","戊","己","庚","辛","壬","癸"); 
//var Dizhi=new Array("子(鼠)","丑(牛)","寅(虎)","卯(兔)","辰(龙)","巳(蛇)", 
//"午(马)","未(羊)","申(猴)","酉(鸡)","戌(狗)","亥(猪)"); 
var Dizhi=new Array("子","丑","寅","卯","辰","巳","午","未","申","酉","戌","亥"); 
return Tiangan[YYYY%10]+Dizhi[YYYY%12]; 
} 
function CnDateofDateStr(DateGL){ 
if(CnMonthofDate(DateGL)=="零月") return "　请调整您的计算机日期!"; 
else return "&nbsp;农历"+CnMonthofDate(DateGL) + CnDayofDate(DateGL); 
} 
function SolarTerm(DateGL){ 
var SolarTermStr=new Array( 
"小寒","大寒","立春","雨水","惊蛰","春分", 
"清明","谷雨","立夏","小满","芒种","夏至", 
"小暑","大暑","立秋","处暑","白露","秋分", 
"寒露","霜降","立冬","小雪","大雪","冬至"); 
var DifferenceInMonth=new Array( 
1272060,1275495,1281180,1289445,1299225,1310355, 
1321560,1333035,1342770,1350855,1356420,1359045, 
1358580,1355055,1348695,1340040,1329630,1318455, 
1306935,1297380,1286865,1277730,1274550,1271556); 
var DifferenceInYear=31556926; 
var BeginTime=new Date(1901/1/1); 
BeginTime.setTime(947120460000); 
for(;DateGL.getYear()<BeginTime.getYear();){ 
BeginTime.setTime(BeginTime.getTime()-DifferenceInYear*1000); 
} 
for(;DateGL.getYear()>BeginTime.getYear();){ 
BeginTime.setTime(BeginTime.getTime()+DifferenceInYear*1000); 
} 
for(var M=0;DateGL.getMonth()>BeginTime.getMonth();M++){ 
BeginTime.setTime(BeginTime.getTime()+DifferenceInMonth[M]*1000); 
} 
if(DateGL.getDate()>BeginTime.getDate()){ 
BeginTime.setTime(BeginTime.getTime()+DifferenceInMonth[M]*1000); 
M++; 
} 
if(DateGL.getDate()>BeginTime.getDate()){ 
BeginTime.setTime(BeginTime.getTime()+DifferenceInMonth[M]*1000); 
M==23?M=0:M++; 
} 
var JQ; 
if(DateGL.getDate()==BeginTime.getDate()){ 
JQ=""+SolarTermStr[M] + ""; 
} 
else if(DateGL.getDate()==BeginTime.getDate()-1){ 
JQ="明天是"+SolarTermStr[M] + ""; 
} 
else if(DateGL.getDate()==BeginTime.getDate()-2){ 
JQ="后天是"+SolarTermStr[M] + ""; 
} 
else{ 
JQ=" " 
if(DateGL.getMonth()==BeginTime.getMonth()){ 
JQ+="本月"; 
} 
else{ 
JQ+="下月"; 
} 
JQ+=BeginTime.getDate()+"日"+""+SolarTermStr[M]+""; 
} 
return JQ; 
} 
function CAL() 
{} 
RunGLNL(); 