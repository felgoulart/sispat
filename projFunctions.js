var tp1 = ""; var tp2 = "";
/*----------------------------------------------------------------------------
Formatação para qualquer mascara

Exemplos:

- CEP
OnKeyPress="formatar(this, '#####-###')"

- CPF:
OnKeyPress="formatar(this, '###.###.###-##')"

- DATA:
OnKeyPress="formatar(this, '##/##/####')"

//---Mesg Style Functions------------------------------------------------------------------*/
//-- Basic Color Mesg Styles 
function mesgStyleBlue(rc) {
	// Blue
	if (rc == '0') {bck = '#E7ECF2';img = 'btMessage_off.gif';} else
	if (rc == '777') {	bck = '#99FFFF';img = 'btMessage_off.gif';
	} else {bck = '#00FFFF';  img = 'btMessage.gif';}
	if (el('cadForm:mesg_var')) {el('cadForm:mesg_var').style.background = bck;	}
	selSrcImg('cadForm:iMessage', img);
}
function mesgStyleYellow(rc) {
	// Yellow
	if (rc == '0') {bck = '#FFFF99';img = 'btMessage_off.gif';} else
	if (rc == '777') {	bck = '#FFFF66';img = 'btMessage_off.gif';
	} else {bck = '#FFEA00';  img = 'btMessage.gif';}
	if (el('cadForm:mesg_var')) {el('cadForm:mesg_var').style.background = bck;	}
	selSrcImg('cadForm:iMessage', img);
}

// ----------------------------------------------------






function formatar(src, mask){
	//alert('field:');
	var i = src.value.length;
  var saida = mask.substring(0,i);
  var texto = mask.substring(i);
if (texto.substring(0,i) != saida)
  {
    src.value = texto.substring(0,i);
  }
}

function formataxx(obj, mask){
	alert('field:');
    var ll = obj.value.length;
    var llx = 3 - ll;
    //alert('llx-'+llx);
    var ip = obj.value;
    ip = ip.substring(1,ip.length);
    ip = ip.replace("a",""); 

    var lla = ip.length;
    if (lla == 0) { ip = '00'+ip; }
    if (lla == 1) { ip = '0'+ip; }
    if (lla == 2) { ip = ''+ip; }
    //alert('lla-'+lla);
    //alert('ip-'+ip);
    var xx = "000"
    var xxa = xx.substring(0,lla)
	//alert('xxa-'+xxa);
    //obj.value = xxa+ip;
    //obj.value = ip+xxa;
    obj.value = ip;
}

function vlfm999(obj){
	//alert('field:');
    var ip = obj.value;
    ip = ip.substring(1,ip.length);
    var lla = ip.length;
    if (lla == 0) { ip = '00'+ip; }
    if (lla == 1) { ip = '0'+ip; }
    if (lla == 2) { ip = ''+ip; }
    //alert('lla-'+lla);
    //alert('ip-'+ip);
    obj.value = ip;
}
function valn(obj){
	//alert('field:');
    var ip = obj.value;
    if (ip.indexOf('a') >= 0  ) { 
        ip = ip.replace("a",""); 
        obj.value = ip;
        return true;
    } else {
    	return false;
    }
}

function noupd(field) {
  //alert('field:'+field);
  if (retSubSel(field) != '') {
    //alert('Este campo não pode ser modificado');
    //this.blur();
    rpel(field).blur();
    return false; } else { return true; }
}


function vhcse(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    tp = tp.substring(0,2);
    result = "VHCST";
	     if (tp == "WG") { result = "WAGSE"; return result; }
    else if (tp == "EG") { result = "ENGSE"; return result; }
    else if (tp == "EP") { result = "EQPST"; return result; }
    else if (tp == "EQ") { result = "EQPST"; return result; }
    else if (tp == "PC") { result = "PSCST"; return result; }
    return result;
}

function vhcst(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    tp = tp.substring(0,2);
    result = "VHCST";
    if (strbtn == 'VhblkSidingCustomerDelivery_a') {
      result = "VHCSTDC";
      return result;
    }
    else if (strbtn == 'VhblkSidingCustomerReceive_b') {
      if (tp == "WG") { result = "WAGSTRC"; return result; }
      if (tp == "EG") { result = "ENGSTRC"; return result; }
      return result;
    }
    else if (strbtn == 'VhblkSidingCustomerDisposal_b') {
      result = "VHCSTDC";
      return result;
    }
    else if (strbtn == 'VhblkSidingCustomerReturn_b') {
      if (tp == "WG") { result = "WAGSTRC"; return result; }
      if (tp == "EG") { result = "ENGSTRC"; return result; }
      return result;
    }
    else if (strbtn == 'VhblkSidingMaintenanceDeliver_a') {
      result = "VHCSTDW";
      return result;
    }
    else if (strbtn == 'VhblkSidingMaintenanceReceive_b') {
      if (tp == "WG") { result = "WAGSTRW"; return result; }
      if (tp == "EG") { result = "ENGSTRW"; return result; }
      if (tp == "PC") { result = "PSCSTRW"; return result; }
      if (tp == "PP") { result = "PPCSTRW"; return result; }
      return result;
    }
    else if (strbtn == 'VhblkTrainAttach_a') {
      result = "VHCSTAT";
      if (tp == "WG") { result = "WAGSTAT"; return result; }
      if (tp == "EG") { result = "ENGSTAT"; return result; }
      if (tp == "EP") { result = "EQPSTAT"; return result; }
      if (tp == "EQ") { result = "EQPSTAT"; return result; }
      if (tp == "PC") { result = "PSCSTAT"; return result; }
      if (tp == "PP") { result = "PPCSTAT"; return result; }
      return result;
    }
    else if (strbtn == 'VhblkTrainDetach_b') {
      result = "VHCSTDT";
      if (tp == "WG") { result = "WAGSTDT"; return result; }
      if (tp == "EG") { result = "ENGSTDT"; return result; }
      if (tp == "EP") { result = "EQPSTDT"; return result; }
      if (tp == "EQ") { result = "EQPSTDT"; return result; }
      if (tp == "PC") { result = "PSCSTDT"; return result; }
      if (tp == "PP") { result = "PPCSTDT"; return result; }
      return result;
    }
    else if (tp == "WG") { result = "WAGST"; return result; }
    else if (tp == "EG") { result = "ENGST"; return result; }
    else if (tp == "EP") { result = "EQPST"; return result; }
    else if (tp == "EQ") { result = "EQPST"; return result; }
    else if (tp == "PC") { result = "PSCST"; return result; }
    else if (tp == "PP") { result = "PPCST"; return result; }
    return result;
}

function esips(tp) {  // Estrutira de Interferencia 
    //alert('tp:'+tp);
    tp = tp.substring(0,2);
    result = "";
    //if (tp == "PN") { result = "ESIPN"; return result; }
    //if (tp == "PI") { result = "ESIPI"; return result; }
    //if (tp == "PS") { result = "ESIPS"; return result; }
    //if (tp == "TA") { result = "ESITV"; return result; }
    //if (tp == "TS") { result = "ESITS"; return result; }
    if (tp == "1") { result = "ESITV"; return result; }
    if (tp == "2") { result = "ESITS"; return result; }
    if (tp == "3") { result = "ESIPS"; return result; }
    if (tp == "4") { result = "ESIPI"; return result; }
    if (tp == "5") { result = "ESIPN"; return result; }
    return result;
}

function topp1(tp) {  // Objeto Pj Propio - 1 
    //alert('tp:'+tp);
    tp = tp.substring(0,2);
    if (tp.length == 0) {
    	tp = retSubSel('pjaus_tp_espec_1');
    }
    result = "";
    if (tp == "EI") { result = "TOEIT"; return result; }
    if (tp == "OX") { result = "TOOEX"; return result; }
    if (tp == "OP") { result = "TPOPD"; return result; }
    //if (tp == "OT") { result = ""; return result; }
    alert('Preenchimento Desncessário para esta escolha de Sub Especificação 1');
    return result;
}

function topp99(tp) {  // Objeto Pj Propio - 1 
    //alert('tp:'+tp);
    tp = tp.substring(0,2);
    if (tp.length == 0) {
    	tp = retSubSel('pjaus_tp_espec_1');
    }
    result = "";
    if (tp == "1") { result = "ESITV"; return result; }  // Travessia Afrea
    if (tp == "2") { result = "ESITS"; return result; }  // Travessia Subterrane
    if (tp == "3") { result = "ESIPS"; return result; }  // Passagem Superior
    if (tp == "4") { result = "ESIPI"; return result; }  // Passagem Inferior
    if (tp == "5") { result = "ESIPN"; return result; }  // Passagem em NIvel
    alert('Preenchimento Desncessário para esta escolha de Sub Especificação 1');
    return result;
}

function topat1(tp) {  // Objeto Pj Associado - 1 
    tp1 = tp;
	tp2 = tp.substring(0,1);
    result = "";
    //alert('tpx:'+tpx);
    //alert('tp:'+tp);
    if (tp2 == "1") { result = "TOAGU"; return result; } 
    if (tp2 == "2") { result = "TOESG"; return result; }
    if (tp2 == "3") { result = "TOENG"; return result; }
    if (tp2 == "4") { result = "TOIFM"; return result; }
    //if (tp2 == "5") { result = ""; return result; } // result = "TOMNR"
    //if (tp2 == "6") { result = ""; return result; }  // result = "TOGRO";
    if (tp2 == "7") { result = "TOPAP"; return result; } 
    if (tp2 == "8") { result = "TOTLC"; return result; }
    alert('Preenchimento Desncessário para esta escolha de Sub Especificação 1');
    return result;
}

function mesgOpen() {  // Objeto Pj Associado Travessia - 1 
	ppp = retSubSel('pjaus_id');
    if (ppp.length == 0 ) {
        alert('teste '+ppp);
    }
	//alert('teste ');
}

function topat2(tp) {  // Objeto Pj Associado Travessia - 1 
	tp1 = tp1; // getting from upper level 
    if (tp1.length == 0) {
    	tp1 = retSubSel('pjaus_tp_objt');
    }
	tp2 = tp.substring(0,1);
    if (tp2.length == 0) {
    	tp2 = retSubSel('pjaus_tp_espec_1');
    }
	//alert('tp1:'+tp1);  
	//alert('tp2:'+tp2);
	result = "";
    if (tp1 == "1" && tp2 == "2") { 
    	result = "TOAGT"; 
        //alert('result:'+result);
    	return result;
    }
    if (tp1 == "4" && tp2 == "1") { 
    	result = "TOGAS"; 
        //alert('result:'+result);
    	return result;
    }
    if (tp1 == "7" && tp2 == "3") { 
    	result = "TOPSV"; 
        //alert('result:'+result);
    	return result;
    }
    alert('Preenchimento Desncessário para esta escolha de Sub Especificação 1');
    return result;
}

function topap1(tp) {  // Objeto Pj Associado Passagem - 1 
    //alert('tpxx:'+tp);    
    tp = tp.substring(0,1);
    if (tp.length == 0) {
    	tp = retSubSel('pjaus_tp_espec_1');
    }
    result = '';
    //if (tp == '1') {result = 'TOPSV'; return result;  }
    //if (tp == '2') { result = 'TOPSV'; return result; }
    if (tp == '3') { result = 'TOPSV'; return result; }
    //if (tp == 'NAP') { result = 'TOPSV'; return result; }
    alert('Preenchimento Desncessário para esta escolha de Sub Especificação 1');
    return result;
}

function vhcledetails_sbtp(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    result = "vhcle";
    if (tp == "WG") { result = "vhwagdetails"; return result; }
    if (tp == "EG") { result = "vhengdetails"; return result; }
    return result;
}
function ProssType(type) {  // Derive asset transaction from type
	//alert('xxxxxtype: '+type);
    //result = "pjauspaaot";
	// IMCPA     lg=pt_BR  ds=Compra e Arrendamento de Imóveis             
    // MRBXP     lg=pt_BR  ds=Baixa de Material Rodante Próprio em Acidentes 
	// MRBXA     lg=pt_BR  ds=Baixa de Material Rodante Arrendado em Acidentes 
	// ATATF     lg=pt_BR  ds=Autorização de Transformação de Ativo               
	// IVGES     lg=pt_BR  ds=Invasão de Faixa de Domínio              
	// IVGEN     lg=pt_BR  ds=Invasão Nova de Faixa de Domínio  
	// COMOD     lg=pt_BR  ds=Contrato de Comodato  

	if (type.indexOf('IMCPA') >= 0) {result = 'prossimcpa';}
	if (type.indexOf('MRBXP') >= 0) {result = 'prossmrbxp';}
	if (type.indexOf('MRBXA') >= 0) {result = 'prossmrbxa';}
	if (type.indexOf('ATATF') >= 0) {result = 'prossatatf';}
	if (type.indexOf('IVGES') >= 0) {result = 'prossivges';}
	if (type.indexOf('IVGEN') >= 0) {result = 'prossivgen';}
	if (type.indexOf('COMOD') >= 0) {result = 'prosscomod';}
	//alert("result: "+result);
    if (result.length == 0) {
    //      result = "pjaus";	
    } 	
    return result;
}

function PjausType(type) {  // Derive asset transaction from type
	//alert('xxxxxtype: '+type);
    //result = "pjauspaaot";
	if (type.indexOf('AOT') >= 0) {result = 'pjauspaaot';}
	if (type.indexOf('AOP') >= 0) {result = 'pjauspaaop';}
	//alert("result: "+result);
    if (result.length == 0) {
    //      result = "pjaus";	
    } 	
    return result;
}
function PjausTypeOt(type) {  // Derive asset transaction from type
    result = "pjauspaaot";
    return result;
}
function PjausTypeOp(type) {  // Derive asset transaction from type
    result = "pjauspaaop";
    return result;
}


function AssetType(type) {  // Derive asset transaction from type
	//alert('xxxxxtype: '+type);
    result = "assetsupersv";
	if (type.indexOf('AC') >= 0) {result = 'assetsupersv';}
    if (type.indexOf('ED') >= 0) {result = 'assetbldng';}
    if (type.indexOf('VG') >= 0) {result = 'assetvhwag';}
    if (type.indexOf('LC') >= 0) {result = 'assetvheng';}
    if (type.indexOf('VX') >= 0) {result = 'assetvhaux';}
    if (type.indexOf('LP') >= 0) {result = 'assetmailn';}
    if (type.indexOf('LR') >= 0) {result = 'assetextln';}
    if (type.indexOf('DC') >= 0) {result = 'assetsidng';}
    if (type.indexOf('DP') >= 0) {result = 'assetyrdsd';}
    if (type.indexOf('TP') >= 0) {result = 'assetyrdld';}
    if (type.indexOf('TL') >= 0) {result = 'assetlbdld';}
    if (type.indexOf('PN') >= 0) {result = 'assetlvlcr';}
    if (type.indexOf('PS') >= 0) {result = 'assetovrps';}
    if (type.indexOf('PI') >= 0) {result = 'assetundps';}
    if (type.indexOf('PT') >= 0) {result = 'assetbrdge';}
    if (type.indexOf('TU') >= 0) {result = 'assettunnl';}
    if (type.indexOf('VD') >= 0) {result = 'assetviadt';}
    if (type.indexOf('BU') >= 0) {result = 'assetculvt';}
    //alert("result: "+result);
    //if (result.length == 0) {
    //      result = "assetsupersv'";	
    //} 	
    return result;
}

function SolicType(type) {  // Derive asset transaction from type
    //alert('type:'+type);
    result = "";
	//if (type == "IN") {result = "solicsolinpsq";}
    //if (type == "EX") {result = "solicsolexpsq";}
	if (type == "IN") {result = "solinpsq";}  
    if (type == "EX") {result = "solexpsq";}
    if (type == "C") {result = "solcspsq";}
    if (type == "O") {result = "solotpsq";}

    if (result.length == 0) {
        result = "solexpsq";	
    } 	
    //alert("result: "+result);
    return result;
}

function wagld(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    result = "WAGLD";
	if (strbtn == 'WagLoadIni_a') {
	  result = 'WAGLDLI';
      return result;
	}
	else if (strbtn == 'WagLoadSup_a') {
	  result = 'WAGLDLS';
      return result;
	}
	else if (strbtn == 'WagOffloadComplete_a') {
	  result = 'WAGLDUT';
      return result;
	}
	else if (strbtn == 'WagOffloadFractioned_a') {
	  result = 'WAGLDUF';
      return result;
	}
    return result;
}

function crwst(tp) {  // Crew Status by Button
    //alert('tp:'+tp);
    result = "CRWST";
	if (strbtn == 'CrewQueryList_a') {
	  result = "CRWSTYD";
      return result;
	}
	else if (strbtn == 'CrewUpdate_a') {
	  result = "CRWSTYD";
      return result;
	}
	else if (strbtn == 'CrewInsert_a') {
	  result = "CRWSTTR";
      return result;
	}
	else if (strbtn == 'CrewInitialize_a') {
	  result = "CRWSTYD";
      return result;
	}
	else if (strbtn == 'CrewQueryList_b') {
	  result = "CRWSTTR";
      return result;
	}
	else if (strbtn == 'CrewUpdate_b') {
	  result = "CRWSTTR";
      return result;
	}
	else if (strbtn == 'CrewRemove_b') {
	  result = "CRWSTYD";
      return result;
	}

    return result;
}

function trnst(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    result = "TRNST";
	if (strbtn == 'TrainStop_a') {
	  result = "TRNSTY";
      return result;
	}
	else if (strbtn == 'TrainDeparture_a') {
	  result = "TRNSTD";
      return result;
	}
	else if (strbtn == 'TrainArrival_a') {
	  result = "TRNSTA";
      return result;
	}
	else if (strbtn == 'TrainDirect_a') {
	  result = "TRNSTN";
      return result;
	}
	else if (strbtn == 'TrainCancelling_a') {
	  result = "TRNSTC";
      return result;
	}
	else if (strbtn == 'TrainMovement_a') {
	  result = "TRNSTW";
      return result;
	}
    return result;
}

function engfn(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    result = "VHCFN";
    if (tp == "EG") { result = "ENGFN"; return result; }
    if (tp == "PP") { result = "PPCFN"; return result; }
    return result;
}

function vhctp_vhcst(cd) {  // Directry of Transactions Window Sizes
    //alert('cd:'+cd);
    result = false;
    if (cd != "CD" && cd != "WD") { result = true; return result; }
    return result;
}

function dlyeve() {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    result = false;
	if (strbtn == 'TrainStop_a' || strbtn == 'TrainMovement_a') {
	  result = true;
      return result;
	} else {
        alert(rel('cadForm:msg_actionValidOnlyForButtons')+" "+rel('cadForm:TrainStop_a')+" & "+rel('cadForm:TrainMovement_a'));
    }
    return result;
}

function trainoprhor() {  // Directry of Transactions Window Sizes
    //alert('strbtn:'+strbtn);
    result = false;
	if (strbtn != 'TrainQueryList_a') {
	  result = true;
      return result;
	} else {
        alert(rel('cadForm:msg_actionNotValidForButtons')+" "+rel('cadForm:TrainQueryList_a'));
    }
    return result;
}

function valHorometer(tabfld) {
  //alert('tabfld '+tabfld);
  tp = rel(tabfld);
  //alert(tp);

  el('cadForm:vheng_vl_var').disabled = false;
  el('cadForm:vheng_hr_var').disabled = false;
  el('cadForm:vheng_vl_exit_var').disabled = false;
  el('cadForm:vheng_hr_exit_var').disabled = false;

  if (tp == "F") {
    //el('cadForm:vheng_vl_var').disabled = true;
    //el('cadForm:vheng_hr_var').disabled = true;
    el('cadForm:vheng_vl_var').style.background="#E7ECF2";
    el('cadForm:vheng_hr_var').style.background="#E7ECF2";
    el('cadForm:vheng_vl_exit_var').style.background="#FFE4D0";
    el('cadForm:vheng_hr_exit_var').style.background="#FFE4D0";
  } else
  if (tp == "A") {
    el('cadForm:vheng_vl_var').style.background="#FFE4D0";
    el('cadForm:vheng_hr_var').style.background="#FFE4D0";
    el('cadForm:vheng_vl_exit_var').style.background="#FFFFAA";
    el('cadForm:vheng_hr_exit_var').style.background="#FFFFAA";
  } else
  if (tp == "D") {
    el('cadForm:vheng_vl_var').style.background="#FFFFAA";
    el('cadForm:vheng_hr_var').style.background="#FFFFAA";
    el('cadForm:vheng_vl_exit_var').style.background="#FFE4D0";
    el('cadForm:vheng_hr_exit_var').style.background="#FFE4D0";
  } else
  if (tp == "X") {
    el('cadForm:vheng_vl_var').style.background="#FFE4D0";
    el('cadForm:vheng_hr_var').style.background="#FFE4D0";
    //el('cadForm:vheng_vl_exit_var').disabled = true;
    //el('cadForm:vheng_hr_exit_var').disabled = true;
    el('cadForm:vheng_vl_exit_var').style.background="#E7ECF2";
    el('cadForm:vheng_hr_exit_var').style.background="#E7ECF2";
  } else {
    //el('cadForm:vheng_vl_var').disabled = true;
    //el('cadForm:vheng_hr_var').disabled = true;
    el('cadForm:vheng_vl_var').style.background="#E7ECF2";
    el('cadForm:vheng_hr_var').style.background="#E7ECF2";
    el('cadForm:vheng_vl_exit_var').style.background="#FFE4D0";
    el('cadForm:vheng_hr_exit_var').style.background="#FFE4D0";
  }
}

/*
function vhcsv(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    result = "WAGSV";
    if (tp == "WG") { result = "WAGSV"; return result; }
    if (tp == "EG") { result = "ENGSV"; return result; }
    if (tp == "EQ") { result = "EQPSV"; return result; }
    if (tp == "PC") { result = "PSCSV"; return result; }
    return result;
}

function vhctp(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    result = "vhcle";
    if (tp == "WG") { result = "vhwag"; return result; }
    if (tp == "EG") { result = "vheng"; return result; }
    return result;
}

function vhcle_sbtp(tp) {  // Directry of Transactions Window Sizes
    //alert('tp:'+tp);
    result = "vhcle";
    if (tp == "WG") { result = "vhwag"; return result; }
    if (tp == "EG") { result = "vheng"; return result; }
    return result;
}
*/

/* ###################################################### */

function ghlTimer(sch_fld, sch_lgt) {
  ini = sch_fld.indexOf("__") + 2;
  fim = ini + 1;
  dtdados = sch_fld.substring(ini,fim);
  if (dtdados == 'a') {
    path= 'cadForm:dtDados:';
  } else {
    path= 'cadForm:dtDados1:';
  }

  path_fld = ':'+sch_fld;
  path_lgt = ':'+sch_lgt;
  sch_typ = 'ALL';
  flag = true;
  i = 0;
  while (flag) {
    f_find =  path+i+path_fld;
    f_light = path+i+path_lgt;
    //alert('f_find: '+f_find);
    //alert('f_light: '+f_light);
    if (el(f_find)) {
      find_a = rel(f_find);
      //alert('find_a: '+find_a);
      /* ##################### */
      btn = 'cadForm:horometer_button_xsel';
      if (find_a == 'H') {
        //color = "salmon";
        flag = false;
        if (el(btn)) {
          btn_src = relSrcImg(el(btn).src);
          el(btn).src = '../imagens/btTimerRed.gif';
        }
      } else if (find_a == 'X') {
        //color = "yellow";
        flag = false;
        if (el(btn)) {
          btn_src = relSrcImg(el(btn).src);
          el(btn).src = '../imagens/btTimerBlue.gif';
        }
      //} else {
      //  color = "";
      }
      /* ##################### */
      //if (el(f_light)) {
      //  el(f_light).style.background = color;
      //} else {
      //  el(f_find).style.background = color;
      //}
      if (sch_typ == 'ONE') {
        flag = false;
      }
      i++;
    } else {
      flag = false;
    }
  }
}

/* ###################################################### */

function ghlTime(sch_fld, sch_lgt) {
  ini = sch_fld.indexOf("__") + 2;
  fim = ini + 1;
  dtdados = sch_fld.substring(ini,fim);
  if (dtdados == 'a') {
    path= 'cadForm:dtDados:';
  } else {
    path= 'cadForm:dtDados1:';
  }

  path_fld = ':'+sch_fld;
  path_lgt = ':'+sch_lgt;
  sch_typ = 'ALL';
  flag = true;
  i = 0;
  while (flag) {
    f_find =  path+i+path_fld;
    f_light = path+i+path_lgt;
    //alert('f_find: '+f_find);
    //alert('f_light: '+f_light);
    if (el(f_find)) {
      find_a = rel(f_find);
      //alert('find_a: '+find_a);
      /* ##################### */
      //find_a = '123:45:67';
      day = find_a.substring(0,3);
      hor = find_a.substring(4,6);
      min = find_a.substring(7,9);
      dayi = parseInt(day);
      hori = parseInt(hor);
      mini = parseInt(min);
      //alert('day: '+day);alert('hor: '+hor);alert('min: '+min);
      //alert('dayi: '+dayi);alert('hori: '+hori);alert('mini: '+mini);
      if (dayi > 2) {
        color = "FF0000";  // red
      } else
      if (dayi > 1) {
        color = "8A0000";  // dark red
      } else
      if (hori > 7) {
        color = "FF9933";  // orange
      } else
      if (mini > 20) {
        color = "FF9933";  // orange
      } else {
        color = "black";  // black
      }
/*
      if (dayi < 3) {
        color = "#FF9933";  // orange
      } else
      if (hori > 7) {
        color = "#000066";  // blue
      } else
      if (mini > 20) {
        color = "#8A0000";  // dark red
      } else
      if (dayi > 2) {
        color = "#FF0000";  // red
      } else {
        color = "black";  // black
      }
*/
      /* ##################### */
      if (el(f_light)) {
        el(f_light).style.color = color;
        //el(f_light).style.background = color;
      } else {
        el(f_find).style.color = color;
        //el(f_find).style.background = color;
      }
      if (sch_typ == 'ONE') {
        flag = false;
      }
      i++;
    } else {
      flag = false;
    }
  }
}

/* ###################################################### */

function ghlTrainSt(sch_fld, sch_lgt) {
  ini = sch_fld.indexOf("__") + 2;
  fim = ini + 1;
  dtdados = sch_fld.substring(ini,fim);
  if (dtdados == 'a') {
    path= 'cadForm:dtDados:';
  } else {
    path= 'cadForm:dtDados1:';
  }

  path_fld = ':'+sch_fld;
  path_lgt = ':'+sch_lgt;
  sch_typ = 'ALL';
  flag = true;
  i = 0;
  while (flag) {
    f_find =  path+i+path_fld;
    f_light = path+i+path_lgt;
    //alert('f_find: '+f_find);
    //alert('f_light: '+f_light);
    if (el(f_find)) {
      find_a = rel(f_find);
      //alert('find_a: '+find_a);
      /* ##################### */
      if (find_a.indexOf("FORMADO") >= 0) {
        //color = "springgreen";
        //color = "yellow";
        color = "FFFFAA"; // ii nice yellow
      } else
      if (find_a.indexOf("PATIO") >= 0) {
        //color = "lightgreen";
        color = "orange";
      } else {
        color = "90EE90"; //
      }
      /* ##################### */
      if (el(f_light)) {
        el(f_light).style.background = color;
      } else {
        el(f_find).style.background = color;
      }
      if (sch_typ == 'ONE') {
        flag = false;
      }
      i++;
    } else {
      flag = false;
    }
  }
}

/* ###################################################### */

function fndSel(fld, xx) {
  ini = fld.indexOf("__") + 2;
  fim = ini + 1;
  dtdados = fld.substring(ini,fim);
  if (dtdados == 'a') {
    path= 'cadForm:dtDados:';
	LoadFields_in = LoadFields__a_in;
	LoadFields_out = LoadFields__a_out;
  } else {
    path= 'cadForm:dtDados1:';
	LoadFields_in = LoadFields__b_in;
	LoadFields_out = LoadFields__b_out;
  }

  path_fld = ':'+fld;
  flag = true;
  i = 0;
  while (flag) {
    fnd = path+i+':'+fld;
    if (el(fnd)) {
      //alert(fnd);
      val = rel(fnd);
      //alert(val);
      el(fnd).style.background="";
      if (val == 'X' || val == 'H') {
        flag = false;
        aa=fnd.slice(0,fnd.search(fld));
        //alert(aa);
        loadFields(aa,LoadFields_in,'cadForm:',LoadFields_out);
        //el(fnd).style.background="#00FFFF";

        if (val == 'X') {
          el(fnd).style.background='cyan';
        }
        if (val == 'H') {
          el(fnd).style.background='salmon';
        }

      }
      i++;
    } else {
      flag = false;
    }
  }
}

function fndSelColor(path_in, fld) {
  //alert("path_in, fld"+" "+path_in+" "+fld);
  ini = fld.indexOf("__") + 2;
  fim = ini + 1;
  dtdados = fld.substring(ini,fim);
  if (dtdados == 'a') {
    path= 'cadForm:dtDados:';
	LoadFields_in = LoadFields__a_in;
	LoadFields_out = LoadFields__a_out;
  } else {
    path= 'cadForm:dtDados1:';
	LoadFields_in = LoadFields__b_in;
	LoadFields_out = LoadFields__b_out;
  }

  path_fld = ':'+fld;
  flag = true;
  i = 0;
  while (flag) {
    fnd = path+i+':'+fld;
    //alert(fnd);
    if (el(fnd)) {
      el(fnd).style.background="";
      i++;
    } else {
      flag = false;
    }
  }

  fnd = path_in+fld;
  if (el(fnd)) {
    el(fnd).style.background="#00FFFF";
  }

}

/* ###################################################### */



