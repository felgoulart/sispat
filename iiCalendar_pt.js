var themonths = ['Janeiro','Fevereiro','Março','Abril','Maio','Junho', 'Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'];

var todaydate = new Date();
var curday = todaydate.getDate();
var curmonth = todaydate.getMonth() + 1; //get current month (1-12)
var curyear = todaydate.getFullYear(); //get current year
var curhour = todaydate.getHours();
var curmin = todaydate.getMinutes();
var cursec = todaydate.getSeconds();
var scanfortoday = curday;

function buildCal(campo, cal, showTime){
  scanfortoday = (curyear==todaydate.getFullYear() && curmonth==todaydate.getMonth()+1)? todaydate.getDate() : 0 //DD added

  var dim=[31, 0, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  var oD = new Date(curyear, curmonth-1, 1); //DD replaced line to fix date bug when current day is 31st
  oD.od=oD.getDay()+1; //DD replaced line to fix date bug when current day is 31st

  dim[1]=(((oD.getFullYear()%100!=0)&&(oD.getFullYear()%4==0))||(oD.getFullYear()%400==0))?29:28;
  var t = '<div class="main">\n';
  t += '<table class="main" cols="8" cellpadding="0" border="0" cellspacing="0">\n';
  t += '<tr align="center">\n';
  t += '<td colspan="7" class="month">\n<table cellpadding="0" cellspacing="0" border=0 width="100%">\n<tr>\n';
  t += '<td class="month" width="20">\n<a onclick="prevYear(\'' + campo + '\', \'' + cal + '\', ' + showTime + ');" style="cursor: hand">&lt;&lt;</a>\n</td>\n';
  t += '<td class="month" width="10">\n<a onclick="prevMonth(\'' + campo + '\', \'' + cal + '\', ' + showTime + ');" style="cursor: hand">&lt;</a>\n</td>\n';
  t += '<td align="center" class="month">' + themonths[curmonth-1] + ' - ' + curyear + '</td>\n';
  t += '<td class="month" align="right" width="10">\n<a onclick="nextMonth(\'' + campo + '\', \'' + cal + '\', ' + showTime + ');" style="cursor: hand">&gt;</a>\n</td>\n';
  t += '<td class="month" align="right" width="20">\n<a onclick="nextYear(\'' + campo + '\', \'' + cal + '\', ' + showTime + ');" style="cursor: hand">&gt;&gt;</a>\n</td>\n';
  t += '<td class="month" align="right" width="20">\n<a onclick="fechaCalendario(\'' + cal + '\');" style="cursor: hand">X</a>\n</td>\n';
  t += '</tr>\n</table>\n</td>\n';
  t += '</tr>\n<tr align="center">\n';
  for(s=0; s<7; s++)
    t+='<td class="daysofweek">'+"DSTQQSS".substr(s, 1)+'</td>\n';
  t+='</tr>\n<tr align="center">\n';

  // desenhando os dias do mês
  for(i=1;i<=42;i++){
    var x = ((i - oD.od >= 0) && (i - oD.od < dim[curmonth - 1])) ? i - oD.od + 1 : '';
      t += '<td class="days"';
      if (x) {
        t += 'id="__' + x +'" style="cursor: hand;" onclick="';
        if (showTime) {
            t += 'marcaData(\'' + cal + '\', \'' + campo + '\', \'' + x + '\');"';
        } else {
            t += 'selecionaData(\'' + cal + '\', \'' + campo + '\', ' + x + ');"';
        }
      }
	  t += '>\n' + x + '</td>\n';
	if(((i)%7==0) && (i<36))
	  t += '</tr>\n<tr align="center">\n';
  }

  // time
  if (showTime) {
    t += '</tr><tr style=time><td colspan=7 heigth=2px style="background-color: #D3D3D3"> </td>';

    t += '</tr><tr class=time>';
    t += '<td align=right colspan=2 class=time_title>Hora : </td>';

    t += '<td align=left colspan=4>';
    t += '<input name=tbHor value="' + curhour + '" onchange="curhour = this.value;" onfocus="select();" type=text style="width: 19px; height: 17px; font-size: 9px;" maxlength=2 onkeyup="saltaCampo(\'tbHor\', \'tbMin\', 2 , event)"/> : ';
    t += '<input name=tbMin value="' + curmin + '" onchange="curmin = this.value;" onfocus="select();" type=text style="width: 19px; height: 17px; font-size: 9px;" maxlength=2 onkeyup="saltaCampo(\'tbMin\', \'tbSeg\', 2 , event)"/> : ';
    t += '<input name=tbSeg value="' + cursec + '" onchange="cursec = this.value;" onfocus="select();" type=text style="width: 19px; height: 17px; font-size: 9px;" maxlength=2 onkeyup="if (event.keyCode == 13) {cursec = this.value; selecionaData(\'' + cal + '\', \'' + campo + '\');}"/>';
    t += '</td>';

    t += '<td align=left style="cursor: hand; font-size: 11px;" onclick="selecionaData(\'' + cal + '\', \'' + campo + '\');"> Ok</td>';
  }

  t += '</tr>\n</table>\n</div>\n'

  return t;
}

function nextMonth(campo, cal, showTime) {
    curmonth++;
	if (curmonth == 13) {
		curyear++;
		curmonth = 1;
	}
	document.getElementById(cal).innerHTML = buildCal(campo, cal, showTime);
}

function prevMonth(campo, cal, showTime) {
    curmonth--;
	if (curmonth == 0) {
		curyear--;
		curmonth = 12;
	}
	document.getElementById(cal).innerHTML = buildCal(campo, cal, showTime);
}

function nextYear(campo, cal, showTime) {
    curyear++;
	document.getElementById(cal).innerHTML = buildCal(campo, cal, showTime);
}

function prevYear(campo, cal, showTime) {
    curyear--;
	document.getElementById(cal).innerHTML = buildCal(campo, cal, showTime);
}

function marcaData(cal, campo, dia) {
    oldday = curday;
    curday = dia;

    if (scanfortoday > 0 && document.getElementById('__' + scanfortoday)) {
        document.getElementById('__' + scanfortoday).style.backgroundColor = '#D3D3D3';
    }

    if (oldday != scanfortoday && document.getElementById('__' + oldday)) {
        document.getElementById('__' + oldday).style.backgroundColor = '#F1F8FA';
    }

    if (document.getElementById('__' + dia)) {
        if (dia == scanfortoday) {
            document.getElementById('__' + dia).style.backgroundColor = '#BCBCEC';
        } else {
            document.getElementById('__' + dia).style.backgroundColor = '#BCBCEC';
        }
    }

    if (document.getElementById('tbHor'))
        document.getElementById('tbHor').focus();
}

function padLeft(value, charToFill, length) {
    valor = '' + value;
    while (valor.length < length) {
        valor = charToFill + valor;
    }
    return valor;
}

function integerTrim(str) {
    for (var i = 0; i < str.length; i++){
        if (str.charAt(i) != '0')
            return str.substring(i, str.length);
    }
    return "0";
}

function stripCharsInBag(s, bag) {
	var i;
    var returnString = "";
    // Search through string's characters one by one.
    // If character is not in bag, append to returnString.
    for (i = 0; i < s.length; i++){
        var c = s.charAt(i);
        if (bag.indexOf(c) == -1) returnString += c;
    }
    return returnString;
}

function clearString(str) {
    return stripCharsInBag(str, " :./");
}

function fechaCalendario(cal) {
    document.getElementById(cal).innerHTML = '';
    //document.getElementById(cal).style.display = 'none';
}

function selecionaData(cal, campo, dia) {
    if (dia) {
        curday = dia;
        selecionarData(cal, campo, false);
    } else {
        selecionarData(cal, campo, true);
    }
}

function selecionarData(cal, campo, showTime) {
  	dia  = padLeft(curday, '0', 2);
  	mes  = padLeft(curmonth, '0', 2);
    ano  = padLeft(curyear, '0', 4);
  	hora = padLeft(curhour, '0', 2);
  	min  = padLeft(curmin, '0', 2);
  	seg  = padLeft(cursec, '0', 2);

    data = dia + '/' + mes + '/' + ano;
    if (showTime)
        data += ' ' + hora + ':' + min + ':' + seg;

    document.getElementById(campo).value = data;
    if (document.getElementById(campo).onchange) {
        document.getElementById(campo).onchange();
    }
    document.getElementById(cal).innerHTML = '';
    document.getElementById(cal).style.display = 'none';
}

function setStartDate(data) {
    if (data.length > 0) {
        curday = parseInt( integerTrim( data.substring(0, Math.min(2, data.length)) ) );
    } else {
        curday = todaydate.getDate();
    }

    if (data.length > 2) {
        curmonth = parseInt( integerTrim( data.substring(2, Math.min(4, data.length)) ) );
    } else {
        curmonth = todaydate.getMonth() + 1;
    }

    if (data.length > 4) {
        curyear = parseInt( integerTrim( data.substring(4, Math.min(8, data.length)) ) );
    } else {
        curyear = todaydate.getYear();
    }
}

function setStartTime(time) {
    if (time.length > 0) {
        curhour = parseInt( integerTrim( time.substring(0, Math.min(2, data.length)) ) );
    } else {
        curhour = todaydate.getHours();
    }

    if (time.length > 2) {
        curmin = parseInt( integerTrim( time.substring(2, Math.min(4, data.length)) ) );
    } else {
        //curmin = todaydate.getMinutes() + 1;
        curmin = todaydate.getMinutes();
        if (curmin == '60') {
            curhour = curhour + 1;
        }
    }

    if (time.length > 4) {
        cursec = parseInt( integerTrim( time.substring(4, Math.min(6, data.length)) ) );
    } else {
        cursec = todaydate.getSeconds();
    }
}

function mostraCalendario(campo, cal, showTime) {
    todaydate = new Date();
    data = clearString(document.getElementById(campo).value);
    setStartDate(data);
    if (showTime) {
        if (data.length > 8)
            setStartTime(data.substring(8, data.length));
        else
            setStartTime('');
    }

    var calendarstr = buildCal(campo, cal, showTime);
	document.getElementById(cal).innerHTML = calendarstr;
    document.getElementById(cal).style.display = '';

    if (showTime) {
        document.getElementById('tbHor').focus();
    }
    marcaData(cal, campo, curday);
}

function saltaCampo (campo, prox, tammax, teclapres) {
    SaltaCampo (campo, prox, tammax, teclapres);
}

function SaltaCampo (campo, prox, tammax, teclapres){
	var tecla = teclapres.keyCode;
	vr = document.getElementById(campo).value;
    //alert(tecla);
	if( tecla == 109 || tecla == 188 || tecla == 110 || tecla == 111 || tecla == 223 || tecla == 108 ) {
		document.getElementById(campo).value = vr.substr( 0, vr.length - 1 );
        //alert(campo);
    } else {
        vr = stripCharsInBag( vr, "-/,.: " );
	 	tam = vr.length;

	 	if (tecla != 0 && tecla != 9 && tecla != 16 && tecla != 144 ){
			if ( tam == tammax ){
				if (document.getElementById(prox)) {
                                    var obj = da(prox);
                                    if(obj.type != "hidden" && obj.style.visibility != "hidden" && obj.style.display != "none"  && !obj.disabled) {
                                        if (obj.focus) {
                                            obj.focus();
                                        }
                                    } else {
                                        document.getElementById(campo).blur();
                                    }
				    //document.getElementById(prox).focus();
				    //fcf(prox);
				} else {
					document.getElementById(campo).blur();
				}
			}
		}
	}
}

function formataData(campo, teclapres) {
	var tecla = teclapres.keyCode;
	vr = stripCharsInBag( document.getElementById(campo).value, "./" );
	tam = vr.length + 1;

	if ( tecla != 9 && tecla != 8 && tecla != 46 ){
		if ( tam > 2 && tam < 5 )
			document.getElementById(campo).value = vr.substr( 0, tam - 2  ) + '/' + vr.substr( tam - 2, tam );
		if ( tam >= 5 && tam <= 10 )
			document.getElementById(campo).value = vr.substr( 0, 2 ) + '/' + vr.substr( 2, 2 ) + '/' + vr.substr( 4, 4 );
	}
}

function formataDataHora(campo, teclapres) {
	var tecla = teclapres.keyCode;
	vr = clearString(document.getElementById(campo).value);
	tam = vr.length + 1;

//1234567890123456789
//01/01/2000 01:01:00

	if ( tecla != 9 && tecla != 8 && tecla != 46 ){
		if ( tam > 2 && tam <= 4 )
			document.getElementById(campo).value = vr.substr( 0, tam - 2 ) + '/' + vr.substr( tam - 2, tam );
		if ( tam > 4 && tam <= 8 )
			document.getElementById(campo).value = vr.substr( 0, 2 ) + '/' + vr.substr( 2, 2 ) + '/' + vr.substr( 4, 4 );

        //alert(vr);
        if ( tam > 8 && tam <= 10)
            document.getElementById(campo).value = vr.substr( 0, 2 ) + '/' + vr.substr( 2, 2 ) + '/' + vr.substr( 4, 4 ) + ' ' + vr.substr( 8, 2 );
        if ( tam > 10 && tam <= 12)
            document.getElementById(campo).value = vr.substr( 0, 2 ) + '/' + vr.substr( 2, 2 ) + '/' + vr.substr( 4, 4 ) + ' ' + vr.substr( 8, 2 ) + ':' + vr.substr( 10, 2 );
        if ( tam > 12 && tam <= 14)
            document.getElementById(campo).value = vr.substr( 0, 2 ) + '/' + vr.substr( 2, 2 ) + '/' + vr.substr( 4, 4 ) + ' ' + vr.substr( 8, 2 ) + ':' + vr.substr( 10, 2 ) + ':' + vr.substr( 12, 2 );
	}
}

function formataHora(campo, teclapres) {
	var tecla = teclapres.keyCode;
	vr = clearString(document.getElementById(campo).value);
	tam = vr.length + 1;

//1234567890123456789
//01/01/2000 01:01:00

	if ( tecla != 9 && tecla != 8 && tecla != 46 ){
        //alert(vr);
        if ( tam > 2 && tam <= 4)
            document.getElementById(campo).value = vr.substr( 0, 2 ) + ':' + vr.substr( 2, 2 );
	}
}
