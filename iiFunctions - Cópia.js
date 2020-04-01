var keypress = 0; var upflag = 0; var supflag = 0; var valorx = 0; var trnx ='aaa'; var myVar;
var stc = 'x'; var winId = null; var winIdx = null; var ytop = 20; var xleft = 100; var xleftpw = 0;
var abax = 0; var abatp; /*= 'u';*/ var ini=0; var rrr = null;
var abaxs = 'x'; 
// Array - Function gridLoadFld()
var arFind_prm = new Array();
var arFind_sec = new Array();
var arFind_typ = new Array();
var arFind_lod = new Array();
var arFind_sta = new Array();

// hoverDatatableRow
var originalClass = new Array();

//   var str = '012345678901234567890123456789';
//   var str = '-abcdefghijklmnopqrstuwvxyz-12';
//   var stx = '-abcdefghijklmnopqrstuwvxyz-12';

//var str = '         1         2         3         4         5';
//var str = '12345678901234567890123456789012345678901234567890';
var str = '-abcdefghijklmnopqrstuwvxyzabcdefghijklmnopqrst-12';
var str = '-abcdefghijklmnopqrstuwvxyzabcdefghijklmnopqrst-12';
var stx = '-abcdefghijklmnopqrstuwvxyzabcdefghijklmnopqrst-12';

var xxtabsvf = '00000000000000000000000000000000000000000000000000';
//var ps = 28; pe = ps+1; // Non Tabs Start Position
var ps = 48; pe = ps+1; // Non Tabs Start Position

var sq = 0; var sqmax = 0; var mvsel = 0;
screenHeigthcm=26; screenHeightResol = screen.height, verticalPixRate = screenHeightResol / screenHeigthcm;
screenWidthcm=32; screenWidthResol = screen.width, horizontalPixRate = screenWidthResol / screenWidthcm;
//screenHeigthcm=22.7; screenHeightResol = 864, verticalPixRate = screenHeightResol / screenHeigthcm;
//screenWidthcm=30; screenWidthResol = 1052, horizontalPixRate = screenWidthResol / screenWidthcm;
var height=0; var width=0; var h2=0; var w2=0; var max=0;
var msgheight; var msgwidth;
var codfheight; var codfwidth;
var doExcluir = false;
var loadMv = false;
var i_flds = 0;

var answer = false;
function StringSub(value) {
    tam = value.length;
    bb = "            ";
    tamx = 12 - tam;
    bbx = bb.substring(0,tamx);
    value = bbx+value;
    return value;
}

function chkNav() {
    //alert(navigator.appName); 
	if (navigator.appName.indexOf('Microsoft') >= 0) {return false;}
	if (navigator.appName.indexOf('Net') >= 0) {return false;}
    return true;
}

function getInternetExplorerVersion() {
    var rv = -1;
    if (navigator.appName == 'Microsoft Internet Explorer') {
        var ua = navigator.userAgent;
        var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
        if (re.exec(ua) != null)
            rv = parseFloat( RegExp.$1 );
    }
    return rv;
}

function checkVersion() {
    var msg = "Você não está usando Internet Explorer.";
    var ver = getInternetExplorerVersion();
 
    if ( ver > -1 ) {
        if ( ver >= 8.0 )
            msg = "Você está usando uma cópia recente do Internet Explorer."
        else
            msg = "Você precisa atualizar sua cópia do Internet Explorer.";
    }
    alert( msg );
}


function confirmx() {
	alert('confirme');
}

// IInsights Update Flag Management Functions >>>
function uf() {  // Update Intention detection flag
    if(loadMv == false) {
    upflag=1; sub = '0';
//    stx = str;
//    AlternarUfmv(abax);
//    if (abatp == 'u') {stc = str.charAt(0);stx = stx.replace(stc,sub);} // Set updateflag of univalued tab
//    stc = str.charAt(abax); stx = stx.replace(stc,sub);
    keypress=0; // reset keypress flag
    //  set to 9 validation flag at 'cadForm:tabsvf' to syncronize with AlternarABas() and avoid
    //  resetting updateflag to 0, when updateflag=1 and qq is read from 'cadForm:tabsvf'
//    if(el('cadForm:tabsvf')) {
//        xxtabsvf = parent.document.getElementById('cadForm:tabsvf').value;
//        alert("xxtabsvf vf: "+xxtabsvf);
//        ss = '3'+xxtabsvf.substr(1); xxtabsvf = ss;
//        ss = '1'+xxtabsvf.substr(1); xxtabsvf = ss;
//        alert("xxtabsvf uf: "+xxtabsvf);
//        parent.document.getElementById('cadForm:tabsvf').value = xxtabsvf;
//    }
    // alert('uf-xxtabsvf..'+xxtabsvf);
    }
}

function ufrem() { // Called to Signal Intent of Record Deletion
    sub = '0';
    stc = str.charAt(ps);stx = stx.replace(stc,sub);
    //  alert('ufrem-stx..'+stx);
}
function ufmvini() {  // Initialize Update flags
    upflag=0; stx = str;
    //  alert('ufmvini-stx..'+stx);

}
function salvaufmv() { // Save Update flags Status
    document.getElementById('iiSaveUfmv').src = 'iiSaveUfmv.jsp?ufmv=null';
    //alert('stx..');
}
function ufmsg() { // Pending Update Alert Message
    alert('ATUALIZAÇÃO PENDENTE !');
}
function ufmsg1() { // Wrong MultiVaued Update Comamnd Alert
    // called by doALterar Link at cadObjt.jsp
   alert('Esta Aba contém uma Lista de multiplos Itens: escolha: "Adicionar"/"Atualizar" ou "Cancelar"!');
}
function ufmsg2() { // Prevents Enrry of Invalid Codification
   // called by doALterar Link at cadObjt.jsp
   alert('Aguarde a Validação da Codificação para Salvar o Registro!');
   keypress = 0;
}

// =========================================================================================

function bv(ch, fd, nb, vl) { // Busca Valid - Multivalued With Divs (chlds)
    uf();
    if (ch != '') {
       el('cadForm:tab'+ch+':'+fd).value = vl;   // AVALIAR SE REQUERIDO PELO CODF_TYPE_SELECTOR
       vf = valueVf('tab'+ch+':'+ch+'_vf0');
    } else {
       el('cadForm:'+fd).value = vl;             // AVALIAR SE REQUERIDO PELO CODF_TYPE_SELECTOR
       ch = "x"; vf = "x";
    }
    el('fiiBv').src = 'iiBv.jsp?cb='+parent.cadbeanx+'&fd='+fd+'&ch='+ch+'&nb='+nb+'&vf='+vf+'&vl='+vl+'';
}

function bdfk(ch, fd, nb, tb, cp, cd, vl) { // Search & Validate Foreing Key

    uf();
    vl = vl.toUpperCase();
    if (ch != '') {
        el('cadForm:tab'+ch+':'+fd).value = vl;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdfk').src = 'iiSdfk.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&tabela='+tb+'&campo='+cp+'&codigo='+cd+'&value='+vl+'&vf='+vf;
    } else {
        el('cadForm:'+fd).value = vl;
        el('fiiSdfk').src = 'iiSdfk.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&tabela='+tb+'&campo='+cp+'&codigo='+cd+'&value='+vl;
    }
}

function bdfkds(ch, fd, nb, tb, cp, cd, vl) { // Search & Validate Foreing Key

    uf();
    vl = vl.toUpperCase();
    if (ch != '') {
        el('cadForm:tab'+ch+':'+fd).value = vl;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdfkds').src = 'iiSdfkds.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&tabela='+tb+'&campo='+cp+'&codigo='+cd+'&value='+vl+'&vf='+vf;
    } else {
        el('cadForm:'+fd).value = vl;
        el('fiiSdfkds').src = 'iiSdfkds.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&tabela='+tb+'&campo='+cp+'&codigo='+cd+'&value='+vl;
    }
}

function bdfkmk(ch, fd, nb, tb, cp, cd, vl, cd1, vl1) { // Search & Validate Foreing Key
    // Multiple Key Search Function
    uf();
    vl1 = vl1.toUpperCase();
    if (ch != '') {
        //el('cadForm:tab'+ch+':'+fd).value = vl1;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdfk').src = 'iiSdfk.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&tabela='+tb+'&campo='+cp+'&codigo='+cd+'&value='+vl+'&codigo='+cd1+'&value='+vl1+'&vf='+vf;
    } else {
        //el('cadForm:'+fd).value = vl1;
        el('fiiSdfk').src = 'iiSdfk.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&tabela='+tb+'&campo='+cp+'&codigo='+cd+'&value='+vl;
    }
}

function bdak(ch, fd, nb, tb, cp1, cp2, cd, vl) { // Search & Validate Alternate Foreing Key
    uf();
    vl = vl.toUpperCase();
    if (ch != '') {
        //el('cadForm:tab'+ch+':'+fd).value = vl;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdak').src = 'iiSdak.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&tabela='+tb+'&campo='+cp1+'&campo='+cp2+'&codigo='+cd+'&value='+vl+'&vf='+vf;
    } else {
        //el('cadForm:'+fd).value = vl;
        el('fiiSdak').src = 'iiSdak.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&tabela='+tb+'&campo='+cp1+'&campo='+cp2+'&codigo='+cd+'&value='+vl;
    }
}

function bdakht(ch, fd, fd2, nb, tb, cp1, cp2, cd, vl) { // Search & Validate Alternate Foreing Key Hidden
    uf();
    vl = vl.toUpperCase();
    if (ch == 't') {
        //el('cadForm:tab'+ch+':'+fd).value = vl;
        el('fiiSdakht').src = 'iiSdakht.jsp?ch='+ch+'&field='+fd+'&field2='+fd2+'&number='+nb+'&tabela='+tb+'&campo='+cp1+'&campo='+cp2+'&codigo='+cd+'&value='+vl;
    } else if (ch != '') {
        //el('cadForm:tab'+ch+':'+fd).value = vl;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdakht').src = 'iiSdakht.jsp?ch='+ch+'&field='+fd+'&field2='+fd2+'&number='+nb+'&tabela='+tb+'&campo='+cp1+'&campo='+cp2+'&codigo='+cd+'&value='+vl+'&vf='+vf;
    } else {
        //el('cadForm:'+fd).value = vl;
        el('fiiSdakht').src = 'iiSdakht.jsp?ch='+ch+'&field='+fd+'&field2='+fd2+'&number='+nb+'&tabela='+tb+'&campo='+cp1+'&campo='+cp2+'&codigo='+cd+'&value='+vl;
    }
}

function bdakhv(ch, fd, fd2, nb, tb, cp1, cp2, cd, vl) { // Search & Validate Alternate Foreing Key Hidden
    uf();
    vl = vl.toUpperCase();
    if (ch != '') {
        //el('cadForm:tab'+ch+':'+fd).value = vl;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdakhv').src = 'iiSdakhv.jsp?ch='+ch+'&field='+fd+'&field2='+fd2+'&number='+nb+'&tabela='+tb+'&campo='+cp1+'&campo='+cp2+'&codigo='+cd+'&value='+vl+'&vf='+vf;
    } else {
        //el('cadForm:'+fd).value = vl;
        el('fiiSdakhv').src = 'iiSdakhv.jsp?ch='+ch+'&field='+fd+'&field2='+fd2+'&number='+nb+'&tabela='+tb+'&campo='+cp1+'&campo='+cp2+'&codigo='+cd+'&value='+vl;
    }
}

function bdcd(ch, fd, nb, cd, vl) { // Busca Valid Codf
    uf();
    if (cd =='GNLNG') {} else 
    if (cd =='GSN') {vl = vl.toLowerCase();} else {vl = vl.toUpperCase();}
    if (ch != '') {
        el('cadForm:tab'+ch+':'+fd).value = vl;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdcd').src = 'iiSdcd.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&value='+cd+'&value='+vl+'&vf='+vf;
    } else {
        el('cadForm:'+fd).value = vl;
        el('fiiSdcd').src = 'iiSdcd.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&value='+cd+'&value='+vl;
    }
}

function bdcdsp(ch, fd, sp, spcd, nb, cd, vl) { // Busca Valid Codf
    uf();
    if (cd =='GSN') {vl = vl.toLowerCase();} else {vl = vl.toUpperCase();}
    if (ch != '') {
        el('cadForm:tab'+ch+':'+fd).value = vl;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdcd').src = 'iiSdcdsp.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&value='+cd+'&value='+vl+'&sp='+sp+'&vf='+vf;
    } else {
        el('cadForm:'+fd).value = vl;
        el('fiiSdcd').src = 'iiSdcdsp.jsp?ch='+ch+'&field='+fd+'&supid='+sp+'&spcd='+spcd+'&number='+nb+'&value='+cd+'&value='+vl;
    }
}

function Transfk(ph, ch, st, fdpk, dao, pk, ds, vl) { // Search & Validate Alternate Foreing Key Hidden
    uf();
    vl = vl.toUpperCase();
    if (ch != '') {
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiTransfk').src = 'iiTransfk.jsp?ph='+ph+'&ch='+ch+'&st='+st+'&fdpk='+fdpk+'&dao='+dao+'&pk='+pk+'&ds='+ds+'&vl='+vl+'&vf='+vf;
    } else {
        el('fiiTransfk').src = 'iiTransfk.jsp?ph='+ph+'&ch='+ch+'&st='+st+'&fdpk='+fdpk+'&dao='+dao+'&pk='+pk+'&ds='+ds+'&vl='+vl;
    }
}
function Transfkm(ph, ch, st, fdpk, dao, pk1, pk2, ds, vl1, vl2) { // Search & Validate Alternate Foreing Key Hidden
    uf();
    //vl = vl.toUpperCase();
    //alert('vl1:'+vl1+' vl2:'+vl2);
    el('fiiTransfkm').src = 'iiTransfkm.jsp?ph='+ph+'&ch='+ch+'&st='+st+'&fdpk='+fdpk+'&dao='+dao+'&pk='+pk1+'&pk='+pk2+'&ds='+ds+'&vl='+vl1+'&vl='+vl2;
}

function Transfkopt(ph, ch, st, fdpk, dao, pk, ds, vl) { // Search & Validate Alternate Foreing Key Hidden
    uf();
    vl = vl.toUpperCase();
    el('fiiTransfkopt').src = 'iiTransfkopt.jsp?ph='+ph+'&ch='+ch+'&st='+st+'&fdpk='+fdpk+'&dao='+dao+'&pk='+pk+'&ds='+ds+'&vl='+vl;
}

function Transak(ph, ch, st, fdpk, fdak, dao, pk, ds, ak, vl) { // Search & Validate Alternate Foreing Key Hidden
    uf();
    vl = vl.toUpperCase();
    if (ch != '') {
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiTransak').src = 'iiTransak.jsp?ph='+ph+'&ch='+ch+'&st='+st+'&fdpk='+fdpk+'&fdak='+fdak+'&dao='+dao+'&pk='+pk+'&ds='+ds+'&ak='+ak+'&vl='+vl+'&vf='+vf;
    } else {
        el('fiiTransak').src = 'iiTransak.jsp?ph='+ph+'&ch='+ch+'&st='+st+'&fdpk='+fdpk+'&fdak='+fdak+'&dao='+dao+'&pk='+pk+'&ds='+ds+'&ak='+ak+'&vl='+vl;
    }
}

/*
FUNCAO DEPRECATED - 25/04/2008
function bdcv(ch, fd, nb, cd, vl) { // Busca Valid Codf
    uf();
    vl = vl.toUpperCase();
    if (ch != '') {
        el('cadForm:tab'+ch+':'+fd).value = vl;
        vf = valueVf('tab'+ch+':'+ch+'_vf0');
        el('fiiSdcd').src = 'iiSdcd.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&value='+cd+'&value='+vl+'&vf='+vf;
    } else {
        el('cadForm:'+fd).value = vl;
        el('fiiSdcd').src = 'iiSdcd.jsp?ch='+ch+'&field='+fd+'&number='+nb+'&value='+cd+'&value='+vl;
    }
}
*/
// =========================================================================================

// IInsights WebWindows Management Functions >>>
function msgw_val(oper) { //  Opens System Messages Window
    xoper = 'cadForm:'+oper;
    if (xoper != null) {
        //document.getElementById(xoper).onclick();
        document.getElementById(xoper).click();
    }
}

// IInsights WebWindows Management Functions >>>
function msgw(oper) { //  Opens System Messages Window
    //alert('oper'+oper);
	if (keypress > 0) {keypress=0;document.getElementById('iiSaveIni').src = 'iiSaveIni.jsp';}
    document.getElementById('hiddenform:target').value = "cadForm:upflag"; // Save name of Target Field
    height = 6.0; width = 12.8;
    h2=height * verticalPixRate;
    w2=width * horizontalPixRate;
    features="height="+h2+",width="+w2+",status=no,resizable=no,toolbar=no,menubar=no,scrollbars="+scroll+", location=no, offscreenBuffering=true, alwaysLowered=yes, left="+xleft+", top="+ytop;

    winId=window.open('','mesg',features);
    tt = winId.length;
    xoper = 'cadForm:'+oper
    //alert('tt'+tt);
    //alert('xoper'+xoper);
    if (tt == 0) {document.getElementById(xoper).onclick();}
    // window.moveTo(590,0);
}
function msg_rel(oper) { //  Opens System Messages Window
    if (keypress > 0) {keypress=0;document.getElementById('iiSaveIni').src = 'iiSaveIni.jsp';}
    document.getElementById('hiddenform:target').value = "cadForm:upflag"; // Save name of Target Field
    height = 16.0; width = 24.0;
    h2=height * verticalPixRate;
    w2=width * horizontalPixRate;
    features="height="+h2+",width="+w2+",status=no,resizable=yes,toolbar=no,menubar=no,scrollbars="+scroll+", location=no, offscreenBuffering=true, alwaysLowered=yes, left="+xleft+", top="+ytop;

    winId=window.open('','mesg',features);
    tt = winId.length;
    xoper = 'cadForm:'+oper
    if (tt == 0) {document.getElementById(xoper).onclick();}
    // window.moveTo(590,0);
}
function msgwr() {  // Resets Message Target
    document.forms[0].target='';
}
function msgwe() { // Alert - Delete Confirmation
    if (confirm('Confirme exclusão')) {msgmv(); document.getElementById('cadForm:aExcluirLinha').onclick(); answer = true; return answer; }
    else {answer = false; return answer;}
}
function msgwel(oper) { //  Opens Window for System Messages for Input
    if (confirm('Confirme exclusão')) { msgw(oper); doExcluir = true; }
}
function msgwex() { // Alert - Delete Confirmation
    if (confirm(rel('cadForm:sys_confirm_excluir'))) {
        msgwr();
        msgw_val('aExcluir');
    }
}
function msgConfDttm() { // Alert - Delete Confirmation
    var datetime = rel('cadForm:datevent_var_dt') + ' ' + rel('cadForm:datevent_var_hr');
    var tit_conf1 = rel('cadForm:sys_uact_conf1');
    var tit_conf2 = rel('cadForm:sys_uact_conf2');
    var tit_conf3 = rel('cadForm:sys_uact_conf3');
    var tit_conf4 = rel('cadForm:sys_uact_conf4');
    var tit_conf5 = rel('cadForm:sys_uact_conf5');
    var tit_conf6 = rel('cadForm:sys_uact_conf6');

    var login = rel('cadForm:xuserx_id_login');

    if (confirm(tit_conf1+'\n\n'+tit_conf2+' '+login.toUpperCase()+'  -  '+tit_conf3+' '+datetime+'\n\n'+"                                       "+tit_conf4+'\n\n'+tit_conf5+'\n\n'+tit_conf6)) {
        return true;
    } else {
        if_el('cadForm:datevent_var', '');
        //if_el('cadForm:datevent_var_dt', '');
        if_el('cadForm:datevent_var_hr', '');
        return false;
    }
}
function msgConfMnhr() { // Alert - Delete Confirmation
    var datetime = rel('cadForm:dh_evento_var_dt') + ' ' + rel('cadForm:dh_evento_var_hr');
    var tit_conf1 = rel('cadForm:sys_uact_conf1');
    var tit_conf2 = rel('cadForm:sys_uact_conf2');
    var tit_conf3 = rel('cadForm:sys_uact_conf3');
    var tit_conf4 = rel('cadForm:sys_uact_conf4');
    var tit_conf7 = rel('cadForm:sys_uact_conf7');
    var tit_conf8 = rel('cadForm:sys_uact_conf8');
    var login = rel('cadForm:xuserx_id_login');

    if (confirm(tit_conf1+'\n\n'+tit_conf2+' '+login.toUpperCase()+'  -  '+tit_conf3+' '+datetime+'\n\n'+"                                       "+tit_conf4+'\n\n'+tit_conf7+'\n\n'+tit_conf8)) {
        return true;
    } else {
        if_el('cadForm:dh_evento_var', '');
        if_el('cadForm:dh_evento_var_hr', '');
        return false;
    }
}

function msgConfMnhrSt() { // Alert - Delete Confirmation
    var stxx = rel('cadForm:crwop_st_cfcrwst_a_var');
    if (stxx.indexOf("BJ") >= 0) {
        return false;
    } else {
        return true;
    }
}
function msgConfMnhrSt_conf() { // Alert - Delete Confirmation
    var datetime = rel('cadForm:dh_evento_var_dt') + ' ' + rel('cadForm:dh_evento_var_hr');
    var tit_conf1 = rel('cadForm:sys_uact_conf1');
    var tit_conf2 = rel('cadForm:sys_uact_conf2');
    var tit_conf3 = rel('cadForm:sys_uact_conf3');
    var tit_conf4 = rel('cadForm:sys_uact_conf4');
    var tit_conf7 = rel('cadForm:sys_uact_conf7');
    var tit_conf8 = rel('cadForm:sys_uact_conf8');

    var login = rel('cadForm:xuserx_id_login');

    if (confirm(tit_conf1+'\n\n'+tit_conf2+' '+login.toUpperCase()+'  -  '+tit_conf3+' '+datetime+'\n\n'+"                                       "+tit_conf4+'\n\n'+tit_conf7+'\n\n'+tit_conf8)) {
        return true;
    } else {
        if_el('cadForm:dh_evento_var', '');
        if_el('cadForm:dh_evento_var_hr', '');
        return false;
    }
}

function msgConfMnhrSt1_conf() { // Alert - Delete Confirmation

    var rcx = rel('cadForm:xmesg_rc');
    //alert("rcx"+rcx);
    if ( rcx.indexOf("35") < 0 ) {
        return;
    }
    var stxx = rel('cadForm:crwop_st_cfcrwst_a_var');
    //alert("st11"+stxx);

	var datetime  = rel('cadForm:dh_evento_var_dt') + ' ' + rel('cadForm:dh_evento_var_hr');
    var tit_conf1 = rel('cadForm:sys_uact_conf1');
    var tit_conf2 = rel('cadForm:sys_uact_conf2');
    var tit_conf3 = rel('cadForm:sys_uact_conf3');
    var tit_conf4 = rel('cadForm:sys_uact_conf4');
    var tit_conf7 = rel('cadForm:sys_uact_conf7');
    var tit_conf8 = rel('cadForm:sys_uact_conf8');
    var tit_conf9 = rel('cadForm:sys_uact_conf9');
    var tit_conf10 = rel('cadForm:sys_uact_conf10');
    var tit_conf11 = rel('cadForm:sys_uact_conf11');
    var tit_conf12 = rel('cadForm:sys_uact_conf12');
    var tit_conf13 = rel('cadForm:sys_uact_conf13');
    var tit_conf14 = rel('cadForm:sys_uact_conf14');

    var login = rel('cadForm:xuserx_id_login');

     if ( rcx.indexOf("35") >= 0 ) {
      	var std = " "+rcx.substring(3,6)+" ";
        var ext = " "+rcx.substring(6,9)+" ";
        var tit_confx = "";  
        if (rcx.indexOf("350") >= 0) {
            tit_confx = tit_conf11;   
        }
        if (rcx.indexOf("351") >= 0) {
       	    tit_confx = tit_conf12;   
        }
        //alert("std"+std);
        //alert("ext"+ext);

        alert(tit_conf1+'\n\n'+tit_conf2+' '+login.toUpperCase()+'  -  '+tit_conf3+' '+datetime+'\n\n'+"                                       "+tit_conf4+'\n\n'+tit_conf7+'\n\n'+tit_conf9+ext+tit_conf10+std+tit_confx+'\n\n'+tit_conf13+'\n\n'+tit_conf14);
        if_el('cadForm:xmesg_rc', '');
        if_el('cadForm:dh_evento_var', '');
        if_el('cadForm:dh_evento_var_hr', '');
        obj = el('cadForm:crwop_ob_a_var');
        obj.style.background="#FFE4D0";
        //alert(tit_conf1+'\n\n'+tit_conf2+' '+login.toUpperCase()+'  -  '+tit_conf3+' '+datetime+'\n\n'+"                                       "+tit_conf4+'\n\n'+tit_conf7+'\n\n'+tit_conf8);
    } 
}

function msgmv() { //  Opens Window for System Messages
//    ufmvini();
    if (keypress > 0) {keypress=0;document.getElementById('iiSaveIni').src = 'iiSaveIni.jsp';}
    features='height=200,width=400,status=no,resizable=no,toolbar=no,menubar=no,scrollbars=yes, location=no, offscreenBuffering=true, alwaysLowered=yes, left='+xleft+', top='+ytop;
    winId=window.open('','mesg',features);
}
function msgwinrestore() { //  Re-Displays the Message Window
    if (winId == null){alert('Não há Mensagens');self.focus();}
    else {if (winId.closed) {alert('Não há Mensagens');self.focus();} else {winId.focus();}}
}
function msgwinclose() { // Closes Current Window and if exists an associated Message Window
   if (winId !== null){winId.close();}
   if (winIdx !== null){winIdx.close();}
   window.close();
}

function dtl(lne) {
  lne_id = lne.id;
  //alert(lne_id);
  fim = lne_id.lastIndexOf(":")+1;
  path_lne = lne_id.substring(0,fim);
  //alert(path_lne);
  return path_lne;
}

function dtlv(lne, fld) {
  path_lne = dtl(lne);
  //alert(fld);
  vl = rpel(path_lne+fld);
  //alert(vl);
  return vl;
}

function vhcletran(lnex, fldx) {
  path_lnex = dtl(lnex);
  //alert(fldx);
  vlx = rpel(path_lnex+fldx);
  vlx = vlx.substring(0,vlx.indexOf("/"));
  //alert(vlx);
  if (vlx == "EG") { tranx = "vhengdetails";}
  else
  if (vlx == "WG") { tranx = "vhwagdetails";}
  else {
  tranx = "vhwagdetails";
  }
  //alert(tranx);
  return tranx;
}

function pw(cd, tr, target, scroll, value) { // Busca Valid - Multivalued With Divs (chlds)
	//alert('cd: '+value);
    if (cd.indexOf("noapply") >= 0) {
        alert(rel('cadForm:msg_itDoesntApply')); 
        return;
   	}
    //if (value == null) {return;}
    //alert('value1-'+value);

    //if (cd.indexOf('helpmaint') >= 0 || cd.indexOf('helpsearch') >= 0 || cd.indexOf('helppus') >=0 ||
	//cd.indexOf('helpgn') >=0  || cd.indexOf('helpcm') >=0 || cd.indexOf('helpdt') >=0 
    //) { } else if (cd.indexOf('help') >= 0) {

    if (cd.indexOf('helpcad') >= 0) {
    	pwhelp(cd, tr, target, scroll, value); return;  
    }	
    if (tt == 1){
        alert("Não se aplica");
    	return;
    }
    
    wtran=cd; tran = tr;
    if (value != '' && value != null) {
        parent.document.getElementById('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+value;document.getElementById('hiddenform').target=tran;
    } else {
        parent.document.getElementById('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran;parent.document.getElementById('hiddenform').target=tran;
    }
    if (wtran.substring(0,1) == ('C')) {
        fk='xsel_codf';
    } else {
        posp = wtran.indexOf('chdpsq');
        if (posp < 0 ) {
           posp = wtran.indexOf('psq');
        }
        posc = wtran.indexOf('cad');
        if (posp > 0) {
            fk = wtran.substring(0,posp);
            fk = 'xsel_'+fk;
        } else if (posc > 0) {
            fk = wtran.substring(0,posc);
            fk = 'xnew_'+fk;
        }
        if (target.indexOf('xrec') >= 0) {
            fk = wtran.substring(0,posc);
            fk = 'xrec_'+fk;
        }
    }
   //alert('tran: '+tran+' fk: '+fk+' target: '+target+' wtran: '+wtran);
	//showpopup(tran,'xsel_'+fk,target,wtran);
    showpopup(tran,fk,target,wtran, scroll);
}

function pwhelp(cd, tr, target, scroll, value) { // Busca Valid - Multivalued With Divs (chlds)
    //alert('value-'+value);
    // pw('helpcad', tran, this.id, 'yes','Asset')
    wtran=cd; tran = tr;
    //alert('wtran: '+wtran+'tran:'+tran);

    var helpType = rel('cadForm:xhelp_rc'); var helpTypex = '';
    //alert('helpType: '+helpType+' value: '+value);

    var posx = 0;
    if (tr.indexOf('psq')>= 0) {
    	if (value.indexOf('@') >= 0) { posx = 1;}
    	else if (value.indexOf('Com') >= 0 && value.indexOf('Sfm') >= 0) { posx = 2;}
    	else if (value.indexOf('Sfm') >= 0) { posx = 3;};
    }
    if (tr.indexOf('cad')>= 0) {
    	if (value.indexOf('@') >= 0) { posx = 4;}
    	else if (value.indexOf('Com') >= 0 && value.indexOf('Rfm') >= 0) { posx = 5;}
    	else if (value.indexOf('Rfm') >= 0) { posx = 6;};
    }
    //alert('tr: '+tr+' value: '+value+' posx: '+posx);
    helpTypex = helpType.substring(posx,posx+1);
    //alert("helpType: "+helpType+"helpTypex: "+helpTypex);

    if (helpTypex == '1') {
    	wtran = 'helpcad';
  		fk = 'xrec_help';
    } else
    if (helpTypex == '2') {
    	wtran = 'helprvwpsq';
  		fk = 'xsel_helprvw';
    }
    //alert("wtran: "+wtran);
    parent.document.getElementById('fiiSaveTypeHelp').src = 'iiSaveTypeHelp.jsp?tipo='+wtran+'&valor='+value;document.getElementById('hiddenform').target=tran;
    
    //alert("tran: "+tran);
    //alert("fk: "+fk);
    //alert("target: "+target);
 
    showpopup(tran,fk,target,wtran, scroll);
}

/*
FUNCAO DEPRECATED - 25/04/2008
function pwcv(cd, tr, target, scroll, div, fld) { // Busca Valid - Multivalued With Divs (chlds)
    alert ('target...'+target);
    alert ('tran...'+tran);

    //wtran=cd; tran = tr;
    //bbb = 'tab'+div+':'+fld+'0';
    //alert ('bbb...'+bbb);

    wtran='C'+retSubSel('tab'+div+':'+fld+'0');

    //wtran='C'+retSubSel('tab"+ii.divn_ic[divx]+":"+ii.chpp_id[chobx][ii.kk]+"0');
    //aaa = retSubSel('tab"+"eapr"+":"+"eapr_tp_cfbap"+"0');
    //aaa = retSubSel('tabeapr:eapr_tp_cfbap0');
    //alert ('wtran...'+wtran);

    //wtran='C'+aaa;

    //wtran='C'+retSubSel('tab"+"eapr"+":"+"eapr_tp_cfbap"+"0');
    parent.document.getElementById('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran;parent.document.getElementById('hiddenform').target=tran;
    fk='xsel_codf';
    //showpopup(tran,'xsel_'+fk,target,wtran);
    showpopup(tran,fk,target,wtran, scroll);
}
*/

function pwfk(cd, tr, target, scroll) { // Busca Valid - Multivalued With Divs (chlds)
    wtran=cd;
    tran = tr;
    if (target.indexOf('_desc') > 0) {
    	xicmp=target.slice(0,target.search('_desc'));
    } else {
    	xicmp=target;
    }	
    xi=rel(xicmp);
    //alert ("xicmp..:"+xicmp);
    //alert ("xi..:"+xi);

    document.getElementById('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&valor='+xi+'&assist=false';;
    document.getElementById('hiddenform').target=tran;
    pos = wtran.indexOf('cad');
    fk = wtran.substring(0,pos);
    //alert ("fk..:"+fk);
    //alert ("fn target..:"+target);
    showpopup(tran,'xrec_'+fk, target,wtran, scroll);
}

function showpopup(pwin, submit, target, wtran, scroll) {  //  Web Window
    // Information Insights Copyright (October 2005)
    // submit.. Component of the hiddenform to be submitted
    // target.. Name of the Target Component receipient of the value / description)
    //  This function calls the popup window.
    //  alert ("pwin..:"+pwin);
    //  alert ("fn submit..:"+submit);
    //  alert ("fn target..:"+target);
    if(winIdx != null && !winIdx.closed) winIdx.close();
     // alert ("fnffff target..:"+target);

    w2=0; h2=0; max=0;
    winsize(wtran);
    // alert("w2..:"+w2 );
    // alert("h2..:"+h2 );
    coordspop = ",screenX=10000', screenY=10000";
    coordspop1 = ",screenX=100, screenY=100";
    // if (iwindow = 0) {coords = coordspop;} else {coords = coordspop1;}
    // alert('x..:'+x);
    // if (iwindow >= 1) {xwindow = 'popupwindow1';}
    if (pwin != null) {xwindow = pwin;}
    // alert('xwindow..:'+xwindow)//;
    // b = window.parent.name;
    // alert('b..:'+b);
    if (scroll != null) {
        if (scroll.toLowerCase == 'yes') { scroll == 'yes'; }
        else { scroll == 'no'; }
    } else { scroll == 'no'; }
    xleftppw = (screenWidthResol - w2) / 2;
    //alert('max:'+max);
    if (max == 1 ) {
        xleftppw = 0;
        ytop=0;
        w2=screen.availWidth-10;
        h2=screen.availHeight-58;
    }
    features="height="+h2+",width="+w2+",status=yes,resizable=yes,toolbar=no,menubar=no,scrollbars="+scroll+", location=no, offscreenBuffering=true, left="+xleftppw+", top="+ytop;
    //features="height="+h2+",width="+w2+",status=yes,resizable=yes,toolbar=yes,menubar=no,scrollbars="+scroll+", location=yes, offscreenBuffering=true, left="+xleftppw+", top="+ytop;
    winIdx=window.open('',xwindow,features); // open an empty window
    //a = winIdx.parent.name;
    //alert('a..:'+a);
    //hform=parent.document.forms['hiddenform']; // reference to the hidden form
    //alert('hform..:'+hform);
    // hform=document.forms[form]; // reference to the hidden form
    parent.document.getElementById('hiddenform:target').value = target; // Save name of Target Field
    //alert('target..:'+target);

    // x = '#{cadCodfBean.doSelecionar}'
    // document.getElementById(form+':'+target).action = x;
    // Submit the hidden form. The output will be sent to the just opened window.
    parent.document.getElementById('hiddenform:'+submit).onclick();
}
// =========================================================================================
function testaza(txt) {  //  Web Window
	alert(txt);
}
function testaa() {  //  Web Window
	alert('zzzzzzzz');
}

function testzz(pwin, submit, target, wtran, scroll) {  //  Web Window
	pwinx = pwin; submitx = submit; targetx = target; wtranx = wtran; scrollx = scroll;
	alert("Confirme");
	txt = pwin;
	//alert("pwin:"+pwin); 
	//myVar=setTimeout('testaza(txt)',5000);
	myVar=setTimeout('showpopupx(pwinx, submitx, targetx, wtranx, scrollx)',5000);
	//var popx = new showpopupx(pwinx, submitx, targetx, wtranx, scrollx);
	//myVar=setTimeout(popx,10000);

	//myVar=setTimeout( testaaa(txt){alert(txt}},5000);
	//myVar=setTimeout(function(){alert("Hellozzz")},5000);
	//showpopupx(pwin, submit, target, wtran, scroll);
}

function showpopupx(pwin, submit, target, wtran, scroll) {  //  Web Window
    // Information Insights Copyright (October 2005)
    // submit.. Component of the hiddenform to be submitted
    // target.. Name of the Target Component receipient of the value / description)
    //  This function calls the popup window.
    //  alert ("pwin..:"+pwin);
    //  alert ("fn submit..:"+submit);
    //  alert ("fn target..:"+target);
	//trnx = el('cadForm:transx').value;
    alert('hello8');
	//alert(rel('cadForm:xmesg_rc')); 
	//alert(rel('cadForm:xmesg_rx')); 
    //alert('trnx: '+trnx);
    //alert('upflag: '+upflag);

    //alert(rel('cadForm:transx')); 
	//submit = "";
	//trnx = rel('cadForm:transx'); 
    //alert('trnx: '+trnx);
	//submit = "xrec_"+trnx;
	//myVar=setTimeout(test,10000);
    //clearTimeout(myVar);

    //trnx = parent.document.getElementById('cadForm:transx').value;
	//alert("trnx:"+trnx);
	if(winIdx != null && !winIdx.closed) winIdx.close();
    // alert ("fnffff target..:"+target);

    w2=0; h2=0; max=0;
    winsize(wtran);
    // alert("w2..:"+w2 );
    // alert("h2..:"+h2 );
    coordspop = ",screenX=10000', screenY=10000";
    coordspop1 = ",screenX=100, screenY=100";
    // if (iwindow = 0) {coords = coordspop;} else {coords = coordspop1;}
    // alert('x..:'+x);
    // if (iwindow >= 1) {xwindow = 'popupwindow1';}
    if (pwin != null) {xwindow = pwin;}
    // alert('xwindow..:'+xwindow)//;
    // b = window.parent.name;
    // alert('b..:'+b);
    if (scroll != null) {
        if (scroll.toLowerCase == 'yes') { scroll == 'yes'; }
        else { scroll == 'no'; }
    } else { scroll == 'no'; }
    xleftppw = (screenWidthResol - w2) / 2;
    //alert('max:'+max);
    if (max == 1 ) {
        xleftppw = 0;
        ytop=0;
        w2=screen.availWidth-10;
        h2=screen.availHeight-58;
    }
    features="height="+h2+",width="+w2+",status=yes,resizable=yes,toolbar=no,menubar=no,scrollbars="+scroll+", location=no, offscreenBuffering=true, left="+xleftppw+", top="+ytop;
    //features="height="+h2+",width="+w2+",status=yes,resizable=yes,toolbar=yes,menubar=no,scrollbars="+scroll+", location=yes, offscreenBuffering=true, left="+xleftppw+", top="+ytop;
    winIdx=window.open('',xwindow,features); // open an empty window
    //a = winIdx.parent.name;
    //alert('a..:'+a);
    //hform=parent.document.forms['hiddenform']; // reference to the hidden form
    //alert('hform..:'+hform);
    // hform=document.forms[form]; // reference to the hidden form
    parent.document.getElementById('hiddenform:target').value = target; // Save name of Target Field
    //alert('target..:'+target);

    // x = '#{cadCodfBean.doSelecionar}'
    // document.getElementById(form+':'+target).action = x;
    // Submit the hidden form. The output will be sent to the just opened window.
    parent.document.getElementById('hiddenform:'+submit).onclick();
}


function showpopup1() {  //  Web Window
//    if (winId !== null){
//      winId.close();
//    xwindow="alert";
//    features="height="+h2+",width="+w2+",status=yes,resizable=yes,toolbar=no,menubar=no,scrollbars="+scroll+", location=no, offscreenBuffering=true, left="+xleft+", top="+ytop;
//    winIdx.open('message.htm',xwindow,features); // open an empty window
//    winId.close();
//      winId.location='message.htm';
//      winId.focus();
//    }

    // Information Insights Copyright (October 2005)
    // submit.. Component of the hiddenform to be submitted
    // target.. Name of the Target Component receipient of the value / description)
    //  This function calls the popup window.
    //  alert ("pwin..:"+pwin);
    //  alert ("fn submit..:"+submit);
    //  alert ("fn target..:"+target);
    w2=440; h2=265;
    // winsize(wtran);
    // alert("w2..:"+w2 );
    // alert("h2..:"+h2 );
    //coordspop = ",screenX=10000', screenY=10000";
    //coordspop1 = ",screenX=100, screenY=100";
    // if (iwindow = 0) {coords = coordspop;} else {coords = coordspop1;}
    // alert('x..:'+x);
    // if (iwindow >= 1) {xwindow = 'popupwindow1';}
    //if (pwin != null) {xwindow = pwin;}
    // alert('xwindow..:'+xwindow)//;
    // b = window.parent.name;
    // alert('b..:'+b);
//    if (scroll != null) {
//        if (scroll.toLowerCase == 'yes') { scroll == 'yes'; }
//        else { scroll == 'no'; }
//    } else { scroll == 'no'; }
    xwindow="alert";
    features="height="+h2+",width="+w2+",status=no,resizable=yes,toolbar=no,menubar=no,scrollbars=no, location=no, offscreenBuffering=true, left="+xleft+", top="+ytop;
    winIdx=window.open('projMessage.htm',xwindow,features); // open an empty window
    winIdx.focus();
    //a = winIdx.parent.name;
    //  alert('a..:'+a);
    //hform=document.forms['hiddenform']; // reference to the hidden form
    // hform=document.forms[form]; // reference to the hidden form
    //document.getElementById('hiddenform:target').value = target; // Save name of Target Field
    // x = '#{cadCodfBean.doSelecionar}'
    // document.getElementById(form+':'+target).action = x;
    // Submit the hidden form. The output will be sent to the just opened window.
    //document.getElementById('hiddenform:'+submit).onclick();
}

function showpopup30() {  //  Web Window
    w2=440; h2=209;
    xwindow="alert";
    features="height="+h2+",width="+w2+",status=no,resizable=yes,toolbar=no,menubar=no,scrollbars=no, location=no, offscreenBuffering=true, left="+xleft+", top="+ytop;
    winIdx=window.open('projMessage30.htm',xwindow,features); // open an empty window
    winIdx.focus();
}

// IInsights Control Flag Management Functions >>>
function af(tran,menu) { //  Assistant Mode Saver
   //alert ("menu="+menu);
   document.getElementById('fiiSaveAssist').src = 'iiSaveAssist.jsp?tran='+tran+'&menu='+menu;
}
function wd() { //  New Status Saver
   document.getElementById('fiiSaveNew').src = 'iiSaveNew.jsp';
}
// =========================================================================================

function fNovorwpp(wtran, tran, id, scroll, assist) {
	  fExecrwpp(wtran, tran, id, scroll, assist, 'xrec_obnv');
}
function fExecrwpp(wtran, tran, id, scroll, ninc, submit) {
  fExecsrwpp(wtran, tran, id, scroll, ninc, 'false', submit);
}
function fExecsrwpp(wtran, tran, id, scroll, ninc, assist, submit) {
  if (ninc == true) {
	  el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&ninc='+ninc+'&assist='+assist;
  } else {
	  el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&assist='+assist;
  }		
}
function fNovo(wtran, tran, id, scroll, assist) {
  fExec(wtran, tran, id, scroll, assist, 'xrec_obnv');
}

function fExecx(wtran, tran, id, scroll, ninc, assist) {
	msgwr();
    el('fiiSaveTypex').src = 'iiSaveTypex.jsp?tbak=zmenuassetcad&tipo='+wtran+'&assist='+assist;
}

function fExecs(wtran, tran, id, scroll, ninc, assist, submit) {
  el('hiddenform').target=tran;
  if (ninc == true) {
    el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&ninc='+ninc+'&assist='+assist;
  } else {
    el('fiiSaveType').src = 'iiSaveType.jsp?tipo='+wtran+'&assist='+assist;
  }
  showpopup(tran,submit,id,wtran,scroll);
}

function fExec(wtran, tran, id, scroll, ninc, submit) {
  fExecs(wtran, tran, id, scroll, ninc, 'false', submit);
}

//function fdavo(row, arFldsOrig, arFldsTOrig, path, arFldsDest, arFldsTDest) {
function fdavo(row, arFldsOrig, arFldsTOrig) {
  var arValues = new Array();
  for(iFldsOrig = 0; iFldsOrig < arFldsOrig.length; iFldsOrig++) {
    if (arFldsOrig[iFldsOrig] != '') {
      arValues[iFldsOrig] = dav(row+arFldsOrig[iFldsOrig], arFldsTOrig[iFldsOrig]);
//      alert(arValues[iFldsOrig]);
    }
  }
  window.close();
  window.opener.parent.loadFldsDest(arValues);

//  for(iFldsDest = 0; iFldsDest < arFldsDest.length; iFldsDest++) {
//    parent.el()arVFields[iFields]  arValues
//    alert('hello');
//    type = parent.document.getElementById('cadForm:tabrecal:'+arFields[pFields]).value;
//  alert(window.opener.parent.document.getElementById("cadForm:tabrecal:recal_tp_orgen_iox0").type);
//    alert(arFields[pFields]+' .... '+window.opener.parent.document.getElementById('cadForm:tabrecal:'+arFields[iFldsDest]).type);
//    window.opener.parent.document.getElementById(path+arFldsDest[pFields]);
//    window.focus();
//    davn(path+arFldsDest[iFldsDest], arFldsTDest[iFldsDest], arValues[iFldsDest]);
//  }
}

function fCalls(arValor) {
  recal_cd_area_iox0 = arValor[0];
  recal_cd_area_iox0_desc0 = arValor[1];
  recal_tp_orgen0 = arValor[2];
  recal_id_orgen0 = arValor[3];
  recal_id_orgen0_desc0 = arValor[4];
  recal_nu_orgen_tel0 = arValor[5];
  recal_id_persn0 = arValor[6];
  recal_id_persn0_desc0 = arValor[7];
  recal_tp_pecnt0 = arValor[8];
  recal_tp_pecnt0_desc0 = arValor[9];
  recal_nu_pecnt0 = arValor[10];
  recal_tp_orgen0_desc0 = arValor[11];

  window.close();
  window.opener.parent.document.getElementById("fbCalls").src = "bCalls.jsp?path=cadForm:tabrecal:&valor="+recal_cd_area_iox0+"&valor="+recal_cd_area_iox0_desc0+"&valor="+recal_tp_orgen0+"&valor="+recal_id_orgen0+"&valor="+recal_id_orgen0_desc0+"&valor="+recal_nu_orgen_tel0+"&valor="+recal_id_persn0+"&valor="+recal_id_persn0_desc0+"&valor="+recal_tp_pecnt0+"&valor="+recal_tp_pecnt0_desc0+"&valor="+recal_nu_pecnt0+"&valor="+recal_tp_orgen0_desc0;
}

// IInsights WebWindows Background Window Functions >>>
function updateNovo(value, desc) { // Gets name of Window opener for update of components
    window.close();
    window.opener.update(value, desc);
}

// IInsights WebWindows Background Window Functions >>>
function update(value, desc) { // Gets name of Window opener for update of components
    // Called by the CommandLink Line of a Selection Table (pesq....jsp)
    // Calls updatePlace(place, desc)
    // place .. value selected to be placed on the calling form
    // desc .. description associated to selected value
    // alert("value1..:"+value);
    // alert("desc1..:"+desc);
	window.opener.updatePlace(value, desc);
}
function updatePlace(value, desc) {  // Called by update(place,desc) to update component
    // value / description values of a seleted component.
    // When a user clicks on an item from a list, The selected value is copied
    // to a "place" text field in the main form.
    // value.. value selected to be placed on the calling form
    // desc.. description associated to selected value
    // alert("value..:"+value);
    // alert("desc..:"+desc);
	form=document.forms[1]; // Get the Hidden Form
	targetx = form["hiddenform:target"]; // Get the component that stores the target name
    //  alert("targetx..:"+targetx);
    target_xx = targetx.value // Get the target name of the component stored in hiddenform:target
    //  alert("target_xx..:"+target_xx);
    inisel=target_xx.search('_xsel');
    inifcb=target_xx.search('_xfcb');
    inifil=target_xx.search('_xfil');
    //  alert('inisel..:'+inisel);
    //  alert('inifcb..:'+inifcb);
    //  alert('inifil..:'+inifil);

    if (inisel > 0) {
        target_xi = target_xx.slice(0,inisel);
    }
    if (inifcb > 0) {
        target_xi = target_xx.replace("xfcb","xfil");// Infer the name of the target description field;
        desc=null;
    }
    if (inifil > 0) {
        target_xi = target_xx;
        desc=null;
    }
    //  alert("target_xi..:"+target_xi);

    selField = parent.document.getElementById(target_xi).id;
    //alert('selField..:'+selField);
    //alert('target_xi..:'+target_xi);

    if (selField.search('naturalidade') >= 0) {
        //alert('value1..:'+value);
        parent.document.getElementById(target_xi).value = desc;
        parent.document.getElementById(target_xi.replace('_ds','_cd')).value = value;
        desc = null;
    } else
    if (selField.search('lloc') >= 0) {
        //alert('value1..:'+value);
        parent.document.getElementById(target_xi).value = value;
        desc = null;
    } else {
        parent.document.getElementById(target_xi).value = value; // Get Selected Field
        parent.document.getElementById(target_xi).focus(); // Get Selected Field
    }

	winIdx.close();
	winIdx.close();
    //if (selField.search('cep') >= 0 || selField.search('llog') >= 0) {
    if (selField.search('llog') >= 0) {
        //alert('value2..:'+value);
        //alert('target_xi2..:'+target_xi);
        parent.document.getElementById(target_xi).onchange();
    }

    // Se o campo nao for _sq E tiver onchange faça:

    //if (selField.search('_sq') < 0  &&  parent.document.getElementById(target_xi).onchange) {
    //if ((selField.search('_sq') < 0 && selField.search('lloc') < 0) &&  parent.document.getElementById(target_xi).onchange) {
    //alert('target_xi3..:'+target_xi);
    //objxx = da(target_xi);
    if (parent.document.getElementById(target_xi).onchange) {
        parent.document.getElementById(target_xi).onchange();
    }
    //}

    if (desc != null) {
        target_desc = target_xx.replace("xsel","desc");// Infer the name of the target description field;
        parent.document.getElementById(target_desc).innerHTML = desc; // Get Description;
    }

    desc = null; uf();
	winIdx.close();
}
function updateupflag() { // UpdateFlag Updater
     // Calls updatemsg() for update of Update Flag at Msg Window Opener
     form=document.forms[0];
     cc=form.elements[0].id;
     dd=document.getElementById(cc);
     objt_pk = el('pesqForm:objt_pk').value;
//     alert("dd.value: "+dd.value);
     updatemsg(dd.value, objt_pk);
}
function updatemsg(value, objt_pk) { // MsgWindow Opener Name Getter
     // Gets name of Msg Window opener for update of components
	window.opener.updatePlacemsg(value, objt_pk);
}
function updatePlacemsg(value, objt_pk) { // MsgWindow Opener Content Updater
    // Updates Contents of Msg Window Opener
    form=document.forms[1]; // Get the Hidden Form
    targetx = form["hiddenform:target"]; // Get the component that stores the target name
    target_xx = targetx.value // Get the target name of the component stored in hiddenform:target
//    alert("parent.tabsvf: "+parent.document.getElementById("cadForm:tabsvf").value);
    parent.document.getElementById("cadForm:tabsvf").value = value; // Get Selected Field
    // caso tenha a funcao loadObjt_pk, executa para carregar o campo (Primary Key) na tela
    if (parent.loadObjt_pk) {
        parent.loadObjt_pk(objt_pk);
    }
//    alert("depois parent.tabsvf: "+parent.document.getElementById("cadForm:tabsvf").value);
    //parent.document.getElementById("cadForm:iMessage").src = 'imagens/btMessage.gif';
    sq = value.slice(ps,pe);
    xxtabsvf = value;
//    alert("xxtabsvf funcoes: "+xxtabsvf);
    flgClose = 0;
    if(abatp == 'u') {
        flgClose = 0;
        for (i=1;i<arAbas.length;i++) {
            abatipo = arAbas[i].atp;
            if (abatipo == 'u') {
                gg = value.slice(i,i+1);
                if(flgClose < gg) {
                    flgClose = gg;
                }
            }
        }
        if(flgClose == 0) {
            window.setTimeout('updateMsgClose()', 3000);
        }
    } else if (abatp == 'm' && value.slice(abax,abax+1) == 0) {
        window.setTimeout('updateMsgClose()', 3000);
    } else if (!abatp && value.slice(abax,abax+1) == 0) {
        window.setTimeout('updateMsgClose()', 3000);
    }
    loadPage(abax);
}

function loadPage() {}

function updateMsgClose() { // Msg Window Closer
    // Close Message Window
    winId.close();
    if (doExcluir == true) { window.close(); }
    //parent.document.getElementById("cadForm:iMessage").src = 'imagens/btMessage_off.gif';
}

// =========================================================================================

// IInsights Window Size Management Functions >>>
function winmsgsize(msgqtx) {  // Message Window Sizing
    // alert('msgqtx..:'+msgqtx);
    msglinesize = 0.5; msgheight0 = (4.0 + 2.3) * verticalPixRate
    msgheight= msgheight0 + (msglinesize * verticalPixRate * msgqtx);
    msgwidth= 18.0 * horizontalPixRate;
    // alert('msgheight..:'+msgheight);
}
function wincodfsize(codfqt) { // Codifocation Window Sizing
    // alert('codfqt..:'+codfqt);
    //msglinesize = 0.53; msgheight0 = (4.2 + 2.5) * verticalPixRate; codfqt++;
    msglinesize = 0.70; msgheight0 = (4.2 + 2.5) * verticalPixRate; codfqt++;
    pagecodfqt = codfqt;
    //divheight = 16.62 * codfqt;
    divheight = 20 * codfqt;
    if (codfqt > 20) {
        pagecodfqt = 20;
        //divheight = 17.2 * 20;
        divheight = 20 * 20;  
    }
    codfheight= msgheight0 + (msglinesize * verticalPixRate * pagecodfqt);
    // alert('codfheight..:'+codfheight);
    //codfwidth = 17.0 * horizontalPixRate;
    //codfwidth = 22.0 * horizontalPixRate;
    codfwidth = 24.0 * horizontalPixRate;
    // alert('codfwidth..:'+codfwidth);
    //alert(divheight);
    var coll = document.getElementsByTagName("div");
    for (var i = 0; i < coll.length; i++) {
        var el= coll[i];
        //alert(el.id);
        if (el.id != null) {
            if (el.id.length > 0) {
                if (el.id == "div_dtDados") {
                    //alert("Found");
                    el.style.height = divheight+"px";
                }
            }
        }
    }
}
function winhelpsize(codfqt) { // Codifocation Window Sizing
    // alert('codfqt..:'+codfqt);
    msglinesize = 0.53; msgheight0 = (4.2 + 2.5) * verticalPixRate; codfqt++;
    pagecodfqt = codfqt;
    divheight = 16.62 * codfqt;
    if (codfqt > 20) {
        pagecodfqt = 20;
        divheight = 17.2 * 20;
    }
    codfheight= msgheight0 + (msglinesize * verticalPixRate * pagecodfqt);
    codfheight = codfheight + 70;
    // alert('codfheight..:'+codfheight);
    codfwidth = 25.0 * horizontalPixRate;
    // alert('codfwidth..:'+codfwidth);
    //alert(divheight);
    var coll = document.getElementsByTagName("div");
    for (var i = 0; i < coll.length; i++) {
        var el= coll[i];
        //alert(el.id);
        if (el.id != null) {
            if (el.id.length > 0) {
                if (el.id == "div_dtDados") {
                    //alert("Found");
                    el.style.height = divheight+"px";
                }
            }
        }
    }
}

function winsize(wtran) {  // General Window Sizing
    //  alert('wtran..:'+wtran);
    //  alert('ff..:'+ff);
    ff = wtran.slice(0,1);
    //height = 6.0; width = 12.8;
    height = 6.0; width = 24;
    if (ff == 'C') { } else {winsizedir(wtran); }
    h2=height * verticalPixRate;
    w2=width * horizontalPixRate;
    // alert('w2..:'+w2);
}

// IInsights DOM Management Functions >>>
function el(id) {
  return document.getElementById(id);
}
function pel(id) {
  return parent.document.getElementById(id);
}
function sel(id, newvalue) {
  if_el(id, newvalue);
  if_pel(id, newvalue);
}
function gel(id) {
  rel(id);
  rpel(id);
}
function if_el(id, newvalue) {
  //alert('id '+id);
  if (el(id)) {
    //alert('vl '+newvalue);
    davs(id, el(id).type, newvalue);
  }
}
function if_bel(id, newvalue) {
  //alert('id '+id);
  //alert('vl '+newvalue);
  if (el(id)) {
    davs(id, el(id).type, newvalue);
    return true;
  }
  return false;
}
function if_pel(id, newvalue) {
  //alert('id '+id);
  //alert('vl '+newvalue);
  if (pel(id)) {
     if (newvalue == 'null') {
       davs(id, pel(id).type, '');
     } else {
       davs(id, pel(id).type, newvalue);
     }
  }
}
function rel(id) {
  if (el(id)) {
    return dav(id, el(id).type);
  }
}
function rpel(id) {
  if (pel(id)) {
    return dav(id, pel(id).type);
  }
}
function reln(id) {
  val = rel(id);
  if (val != '' && val != undefined) { //   if (val != '') {
    return val;
  } else {
    return 'null';
  }
}
function rpeln(id) {
  val = rpel(id);
  if (val != '' && val != undefined) {
    return val;
  } else {
    return 'null';
  }
}
function dtype(obj, tipo) {
  if (tipo == undefined || tipo == '' || tipo.length == 0) {
    tag = obj.tagName.toLowerCase();
    if (tag == "span" || tag == "a" || tag == "label") {
      return "span";
    }
  }
  return tipo;
}
function cr(tipo) {
  return document.createElement(tipo);
}
function da(id) {
  return document.all[id];
}
function dav(objid, tipo) {
  return davo(da(objid), tipo);
}
function davo(obj, tipo) {
  tipo = dtype(obj, tipo);
  if (tipo == "checkbox") {
    return obj.checked ? "true" : "false";
  } else if (tipo == "span") {
    return obj.innerHTML;
  } else if (tipo == "flag") {
    return ValueSrcField(obj.src);
//    return obj.src;
  } else { // hidden, text, date
    return obj.value;
  }
}
// PsOneToManyBoxRender - called function by _reset()
function davr(objid, tipo, newvalue) {
  if(newvalue == '' && da(objid+'_ini')) {
    newvalue = da(objid+'_ini').value;
  }
  davs(objid, tipo, newvalue);
}

function davs(objid, tipo, newvalue) {
  var obj = da(objid);
  tipo = dtype(obj, tipo);
  //alert(objid);alert(tipo);alert(newvalue);
  if (tipo == "checkbox") {
    obj.checked = (newvalue == "true" || newvalue == 'S');
  } else if (tipo == 'span') {
    obj.innerHTML = newvalue;
  } else if (tipo == 'flag') {
    if (newvalue == '') {
      fim = objid.lastIndexOf(":")+1;
      path_ini = objid.substring(0,fim);
      path_fim = objid.substring(fim,objid.lenght);
      path_fim_str = path_fim.substring(0,path_fim.indexOf("_"));
      path_full = path_ini+path_fim_str+'_vf0v0';
      v_flds = el(path_full).value;
      src_fld = v_flds.charAt(i_flds);
//    alert(path_ini);alert(path_fim);alert(path_fim_str);alert(path_full);alert(src_fld);alert(i_flds);
      i_flds++;
      obj.src = SrcField(src_fld);
    } else {
      obj.src = SrcField(newvalue);
    }
  } else { // hidden, text, date, datetime, image
    obj.value = newvalue;
    if (obj.onchange) {
//      obj.onchange();
    }
    // campo descrição
/*    if (newvalue == '') {
      if (el(obj.id + '_desc')) {
        el(obj.id + '_desc').innerHTML = '';
      } else if (el(obj.id + '_desc0')) {
        el(obj.id + '_desc0').innerHTML = '';
      }
    }*/
  }
  if (tipo == 'image') {
	  if (newvalue) {
		  da(objid).src = '../servlet/ShowImageServlet.jpg?codigo=' + newvalue;
	  } else {
		  da(objid).src = '../imagens/imagem_em_branco.gif';
	  }
  }
}
function davn(objid, tipo, newvalue) {
    var obj = da(objid);
    if (tipo == "checkbox") {
        obj.checked = (newvalue == "true" || newvalue == 'S');
    } else if (tipo == 'span') {
        obj.innerHTML = newvalue;
    } else if (tipo == 'flag') {
        obj.src = SrcField(newvalue);
    } else { // hidden, text, date, datetime, image
        obj.value = newvalue;
    //    if (obj.onchange) {
    //      obj.onchange();
    //    }
        // campo descrição
    /*    if (newvalue == '') {
          if (el(obj.id + '_desc')) {
            el(obj.id + '_desc').innerHTML = '';
          } else if (el(obj.id + '_desc0')) {
            el(obj.id + '_desc0').innerHTML = '';
          }
        }*/
    }
    if (tipo == 'image') {
	    if (newvalue) {
		    da(objid).src = '../servlet/ShowImageServlet.jpg?codigo=' + newvalue;
	    } else {
		    da(objid).src = '../imagens/imagem_em_branco.gif';
	    }
    }
}

// relSrcImg
function relSrcImg(value) {
  //value = http://localhost:8080/defaultroot/imagens/image.gif
  ini = value.lastIndexOf("/") + 1;
  fim = value.length;
  value = value.substring(ini,fim);
  return value;
}

function selSrcImg(id, image) {
  //alert('id '+id);
  //alert('vl '+image);
  if (el(id)) {
    el(id).src = '../imagens/'+image;
  }
}

function view () {  // General DOM Elements Viewer
    // alert("helloaaa");
    var form = document.forms[0];
    //  for (var i = 0; i < form.elements.length; i++) {
    for (var i = 0; i < 30; i++) {
    // if (form.elements[i].type == "test") {
          alert('element..:'+i+'-'+form.elements[i].type+'-'+form.elements[i].value+'-'+form.elements[i].id);
    // }
    }
}
// =========================================================================================

// IInsights Field Validation Functions >>>
function validaDatas2() { //recebe como argumentos os objetos dos campos de data
  for (var i = 0; i < validaDatas2.arguments.length; i++) {
    if (!isDate(validaDatas2.arguments[i].value)) {
      validaDatas2.arguments[i].focus();
      return false;
    }
  }
  return true;
}
function validaTimes2() { //recebe como argumentos os objetos dos campos de data
  for (var i = 0; i < validaTimes2.arguments.length; i++) {
    if (!isTime(validaTimes2.arguments[i].value)) {
      //alert('aa');
      validaTimes2.arguments[i].focus();
      return false;
    }
  }
  return true;
}
function validaHours2() { //recebe como argumentos os objetos dos campos de data
	for (var i = 0; i < validaHours2.arguments.length; i++) {
		if (!isHours(validaHours2.arguments[i].value)) {
	      //alert('aa'+validaHours2.arguments[i].value);
	      validaHours2.arguments[i].focus();
          //document.getElementById("cadForm:tropr_cd_trdly01_var").focus();
  	      return false;
	    }
	}	
	return true;
}

function validaDatas() { //recebe como argumentos os ids dos objetos dos campos de data
  for (var i = 0; i < validaDatas.arguments.length; i++) {
    if (!isDate(da(validaDatas.arguments[i]).value)) {
      da(validaDatas.arguments[i]).focus();
      return false;
    }
  }
  return true;
}
function isInteger(s){
	var i;
    for (i = 0; i < s.length; i++){
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9"))) return false;
    }
    // All characters are numbers.
    return true;
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
function daysInFebruary (year){
	// February has 29 days in any year evenly divisible by four,
    // EXCEPT for centurial years which are not also divisible by 400.
    return (((year % 4 == 0) && ( (!(year % 100 == 0)) || (year % 400 == 0))) ? 29 : 28 );
}
function DaysArray(n) {
	for (var i = 1; i <= n; i++) {
		this[i] = 31
		if (i==4 || i==6 || i==9 || i==11) {this[i] = 30}
		if (i==2) {this[i] = 29}
   }
   return this
}

function isDate(dtStr){
    if (dtStr == "") {
      return true;
    }
	var dtCh= "/";
	var daysInMonth = DaysArray(12)
	var pos1 = dtStr.indexOf(dtCh)
	var pos2 = dtStr.indexOf(dtCh,pos1+1)
	var strDay = dtStr.substring(0,pos1)
	var strMonth = dtStr.substring(pos1+1,pos2)
	var strYear = dtStr.substring(pos2+1,pos2+5)
	strYr = strYear

	if (strDay.charAt(0)=="0" && strDay.length>1) strDay=strDay.substring(1)
	if (strMonth.charAt(0)=="0" && strMonth.length>1) strMonth=strMonth.substring(1)
	//for (var i = 1; i <= 3; i++) {
	//	if (strYr.charAt(0)=="0" && strYr.length>1) strYr=strYr.substring(1)
	//}
	month=parseInt(strMonth)
	day=parseInt(strDay)
	year=parseInt(strYr)
/*
	if (pos1==-1 || pos2==-1){
		alert("O formato da data deve ser : dd/mm/aaaa")
		return false
	}*/
	if (!valNumber(strDay) || strDay.length < 1 || day < 1 || day > 31 || (month==2 && day > daysInFebruary(year)) || day > daysInMonth[month]){
		alert("Digite um dia válido")
		return false
	}
	if (!valNumber(strMonth) || strMonth.length < 1 || month < 1 || month > 12){
		alert("Digite um mês válido")
		return false
	}
	if (!valNumber(strYear) || strYear.length < 4 || year < 1){
		alert("Digite um ano válido (4 dígitos)")
		return false
	}
/*	if (dtStr.indexOf(dtCh,pos2+1) != -1 || isInteger(stripCharsInBag(dtStr, dtCh)) == false){
		alert("Digite uma data válida")
		return false
	}*/
	if (dtStr.length > 10) {
		var sepCh = " "
		var timeCh = ":"
		var posSep = dtStr.indexOf(sepCh)
		var timeStr = dtStr.substring(posSep+1, dtStr.length)
		var posTime1 = timeStr.indexOf(timeCh)
		var posTime2 = timeStr.indexOf(timeCh, posTime1+1)
		var strHour = timeStr.substring(0,posTime1)
		var strMin = timeStr.substring(posTime1+1, posTime2)
		var strSec = timeStr.substring(posTime2+1)

		hour=parseInt(strHour)
		min=parseInt(strMin)
		sec=parseInt(strSec)

		if (!valNumber(strHour) || strHour.length < 1 || hour < 0 || hour > 23){
			alert("Digite um hora válida")
			return false
		}
		if (!valNumber(strMin) || strMin.length < 1 || min < 0 || min > 59){
			alert("Digite um minuto válido")
			return false
		}
		if (!valNumber(strSec) || strSec.length < 1 || sec < 0 || sec > 59){
			alert("Digite um segundo válido")
			return false
		}
	}
    return true
}

function isTime(dtStr){
    if (dtStr == "") {
      return true;
    }

	//if (dtStr.length > 10) {
		var sepCh = " "
		var timeCh = ":"
		var posSep = dtStr.indexOf(sepCh)
		var timeStr = dtStr.substring(posSep+1, dtStr.length)
		var posTime1 = timeStr.indexOf(timeCh)
		//var posTime2 = timeStr.indexOf(timeCh, posTime1+1)
		var strHour = timeStr.substring(0,posTime1)
		//var strMin = timeStr.substring(posTime1+1, posTime2)
        var strMin = timeStr.substring(posTime1+1)
		//var strSec = timeStr.substring(posTime2+1)
        var strSec = '0'

		hour=parseInt(strHour)
		min=parseInt(strMin)
		sec=parseInt(strSec)

		if (!valNumber(strHour) || strHour.length < 1 || hour < 0 || hour > 23){
			alert("Digite um hora válida")
			return false
		}
		if (!valNumber(strMin) || strMin.length < 1 || min < 0 || min > 59){
			alert("Digite um minuto válido")
			return false
		}
		if (!valNumber(strSec) || strSec.length < 1 || sec < 0 || sec > 59){
			alert("Digite um segundo válido")
			return false
		}
	//}
    return true
}

function isHours(dtStr){
    if (dtStr == "") {
      return true;
    }

	//if (dtStr.length > 10) {
		var sepCh = " "
		var timeCh = ":"
		var posSep = dtStr.indexOf(sepCh)
		var timeStr = dtStr.substring(posSep+1, dtStr.length)
		var posTime1 = timeStr.indexOf(timeCh)
		//var posTime2 = timeStr.indexOf(timeCh, posTime1+1)
		var strHour = timeStr.substring(0,posTime1)
		//var strMin = timeStr.substring(posTime1+1, posTime2)
        var strMin = timeStr.substring(posTime1+1)
		//var strSec = timeStr.substring(posTime2+1)
        var strSec = '0'

		hour=parseInt(strHour)
		min=parseInt(strMin)
		sec=parseInt(strSec)

		if (!valNumber(strHour) || strHour.length < 1 || hour < 0 || hour > 99){
			alert("Digite um hora válida")
			return false
		}
		if (!valNumber(strMin) || strMin.length < 1 || min < 0 || min > 59){
			alert("Digite um minuto válido")
			return false
		}
		if (!valNumber(strSec) || strSec.length < 1 || sec < 0 || sec > 59){
			alert("Digite um segundo válido")
			return false
		}
	//}
    return true
}

function juntaDataHora (dh, dt, hr) {
	vl_dt = document.getElementById(dt).value;
    vl_hr = document.getElementById(hr).value;
    if (vl_hr == null || vl_hr == '') {
        vl_dh = vl_dt + ' 00:00:00';
        if_el(dh, vl_dh);
    } else {
        vl_dh = vl_dt + ' ' + vl_hr + ':00';
        if_el(dh, vl_dh);
    }
}
function separaDataHora (dh, dt, hr) {
	vl_dh = document.getElementById(dh).value;
	vl_dt = vl_dh.subtring(0,10);

    if (vl_hr == null || vl_hr == '') {
        vl_dh = vl_dt + ' 00:00:00';
        if_el(dh, vl_dh);
    } else {
        vl_dh = vl_dt + ' ' + vl_hr + ':00';
        if_el(dh, vl_dh);
    }
}
// =========================================================================================

// IInsights Image Management Functions >>>
function uploadImage(campo) {
    el('frameImagem').style.display = '';
    el('frameImagem').campo = campo;
}
function selecionaImagem() {
    parent.el('frameImagem').style.display = 'none';
    newvalue = el('imgForm:idImagem').value;
	  if (newvalue) {
          parent.el(parent.el('frameImagem').campo).value = newvalue;
		  parent.el(parent.el('frameImagem').campo + '_img0').src = '../servlet/ShowImageServlet.jpg?codigo=' + newvalue;
	  } else {
          parent.el(parent.el('frameImagem').campo).value = null;
		  parent.el(parent.el('frameImagem').campo + '_img0').src = '../imagens/imagem_em_branco.gif';
	  }
}
function fullImage() {
    window.open('../servlet/ShowImageServlet.jpg?codigo=' + el('imgForm:idImagem').value);
}

// =========================================================================================

function createOptions(origem, destino, campoDescricao) {
	opt = da(destino);
	opt.options.length = 0;
	for (i = 1; i < da(origem).length; i++) {
		if (origem == campoDescricao) {
			opt.options[opt.options.length] = new Option(da(campoDescricao)[i].value, da(origem)[i].value);
		} else {
			opt.options[opt.options.length] = new Option(da(origem)[i].value + ' - ' + da(campoDescricao)[i].value, da(origem)[i].value);
		}
	}
}

function createOptionsDesc(origem, destino, campoDescricao, campoId) {
    origem = da(origem); // Id Origem
    campoDescricao = da(campoDescricao); // Desc Origem
    campoId = da(campoId); // Id Destino
    destino = da(destino); // Desc Destino

    valor = campoId.options.value;
    for (ix = 1; ix < origem.length; ix++) {
        if (valor == origem[ix].value) {
            destino.value = campoDescricao[ix].value;
        }
    }
}

//-----------------------------------------------------------------------------

/*
  function AlternarStatus(flag) {
      if (flag == null) {
          document.all['flag1'].src = 'imagens/flag_vm1.gif';
      } else if (flag == 1) {
          document.all['flag1'].src = 'imagens/flag_am1.gif';
      } else if (flag == 2) {
          document.all['flag1'].src = 'imagens/flag_vd1.gif';
      }
  }
*/

//-----------------------------------------------------------------------------

// Função que utiliza Regular Expression para testar valor numerico
function valNumber(value) {
//  var IsFound = /^-?\d+(\,\d+)?$/.test(value);
//  alert("value:"+value);
//  alert(IsFound);
  if(/^-?\d+(\,\d+)?$/.test(value)) {
    return true;
  } else {
    return false;
  }
}

// Integer
function valNum(value) {
  if(/^-?\d+(\,\d+)?$/.test(value)) {
    if (isInteger(value)) {
      return value;
    }
  }
  return '';
}

function valNum0(value) {
  if(/^-?\d+(\,\d+)?$/.test(value)) {
    if (isInteger(value)) {
      return value;
    }
  }
  return '0';
}

function valNumb(obj) {
  if(/^-?\d+(\,\d+)?$/.test(obj.value)) {
    if (isInteger(obj.value)) {
      return obj.value;
    }
  }
  if_el(obj.id, '');
  return '';
}

function valNuml(obj, length) {
  if(/^-?\d+(\,\d+)?$/.test(obj.value)) {
    if (isInteger(obj.value)) {
      if (obj.value > length) {
        return '';
      } else {
        return obj.value;
      }
    }
  }
  if_el(obj.id, '');
  return '';
}

// Decimal
function valDec(value) {
  //alert('value: '+value) 
  if(/^-?\d+(\,\d+)?$/.test(value)) {
    return value;
  } else
  if(/^-?\d+(\.\d+)?$/.test(value)) {
    return value;;
  } else {
    return '';;
  }
}

function valDec0(value) {
  if(/^-?\d+(\,\d+)?$/.test(value)) {
    return value;
  } else {
    return '0';
  }
}

function valDecb(obj) {
  if(/^-?\d+(\,\d+)?$/.test(obj.value)) {
    return obj.value;
  } else {
    if_el(obj.id, '');
    return '';
  }
}
function valDeclxx(obj, length) {
  vlx = obj.value;
  //alert('obj.value: '+vlx); 
  //alert('length: '+length); 
  if(/^-?\d+(\,\d+)?$/.test(obj.value)) {
    if (obj.value > length) {
      return '';
    } else {
      return obj.value;
    }
  } else {
    if_el(obj.id, '');
    return '';
  }
}
function valDecl(value, length) {
  //alert('.valuex: '+value); 
  ix = value.indexOf(",");
  if (ix > 0 ) {
	  //alert('xxxx: '+value); 
	  valuex = value.substring(0,ix);
  } else {
	  valuex = value;
  }	  
  //alert('.value: '+value); 
  //alert('length: '+length); 
  if(/^-?\d+(\,\d+)?$/.test(value)) {
    if (valuex >= length) {
      return '';
    } else {
      return value;
    }
  } else {
    return '';
  }
}

//-----------------------------------------------------------------------------

/*
Javascript trim, ltrim, rtrim - http://www.webtoolkit.info/

They will trim these characters:

- " "    (ASCII 32 (0x20)), an ordinary space.
- "\t"   (ASCII 9  (0x09)), a tab.
- "\n"   (ASCII 10 (0x0A)), a new line (line feed).
- "\r"   (ASCII 13 (0x0D)), a carriage return.
- "\0"   (ASCII 0  (0x00)), the NUL-byte.
- "\x0B" (ASCII 11 (0x0B)), a vertical tab.
*/

function trim(str, chars) {
    return ltrim(rtrim(str, chars), chars);
}

function ltrim(str, chars) {
    chars = chars || "\\s";
    return str.replace(new RegExp("^[" + chars + "]+", "g"), "");
}

function rtrim(str, chars) {
    chars = chars || "\\s";
    return str.replace(new RegExp("[" + chars + "]+$", "g"), "");
}

/* retorna o valor do campo de seleçao */
function retSubSel(field) {
  //  alert('field:'+field);
  return el('cadForm:'+field).value;
}

function valFttSel(field) {
  alert('field:'+field);
  //alert('field ret :'+retSubSel(field));
  bb = el('cadForm:dtDados_ft:'+field).value;
  alert('field bb'+bb);
  alert('xxxxxxxx');

  if (rel('cadForm:dtDados_ft:'+field) == '') {
    alert('fieldaa:'+field);
    color = el('cadForm:dtDados_ft:'+field).style.backgroundColor;
    if (color.indexOf("e7ecf2") >=0) {
	  return true;
	}
    alert(rel('cadForm:label_fill') + ' ' + rel('cadForm:lbl_'+field));
    fcf('cadForm:'+field);
    return false;
  } else {
    return true;
  }
}

/* valida o preenchimento do campo de seleçao */
function valW(field) {
  //alert('field:'+field);
  if (rel('cadForm:'+field) == 'W') {

    color = el('cadForm:'+field).style.backgroundColor;
    //if (color.indexOf("e7ecf2") >=0) {
	//  return true;
	//}
    alert(rel('cadForm:label_fill') + ' ' + rel('cadForm:lbl_'+field));
    fcf('cadForm:'+field);
    return false;
  } else {
    return true;
  }
}

/* valida o preenchimento do campo de seleçao */
function valSubSel(field) {
  //alert('field:'+field);
  if (rel('cadForm:'+field) == '') {
    color = el('cadForm:'+field).style.backgroundColor;
    //if (color.indexOf("e7ecf2") >=0) {
	//  return true;
	//}
    alert(rel('cadForm:label_fill') + ' ' + rel('cadForm:lbl_'+field));
    fcf('cadForm:'+field);
    return false;
  } else {
    return true;
  }
}

/* valida o preenchimento do campo de seleçao */
function valSubSel(field) {
  //alert('field:'+field);
  if (rel('cadForm:'+field) == '') {
    color = el('cadForm:'+field).style.backgroundColor;
    //if (color.indexOf("e7ecf2") >=0) {
	//  return true;
	//}
    alert(rel('cadForm:label_fill') + ' ' + rel('cadForm:lbl_'+field));
    fcf('cadForm:'+field);
    return false;
  } else {
    return true;
  }
}

function Vhwaglist() {
   if(valFttSel('vhcle_nb_xfil')){alert('aa');loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'vhwaglistpsq'+'&ufmv='+stx;}
}


/* valida o preenchimento do campo de seleçao */
function valSubSel2(field1, field2) {
  //  alert('field1:'+field1); alert('field2:'+field2);
  if (rel('cadForm:'+field1) == '' && rel('cadForm:'+field2) == '') {
    alert(rel('cadForm:label_fill') + ' ' + rel('cadForm:lbl_'+field1) + ' ' + rel('cadForm:label_or') + ' ' + rel('cadForm:lbl_'+field2));
    fcf('cadForm:'+field1);
    return false;
  } else {
    return true;
  }
}

/* valida o preenchimento do campo de seleçao */
function valSubSel3(field1, field2) {
  //  alert('field1:'+field1); alert('field2:'+field2);
  if (rel('cadForm:'+field1) != '' && rel('cadForm:'+field2) == '') {
    alert(rel('cadForm:label_fill') + ' ' + rel('cadForm:lbl_'+field2));
    fcf('cadForm:'+field2);
    return false;
  } else {
    return true;
  }
}

/* valida o preenchimento do campo de seleçao */
function valSubSelVal(field,value) {
  //alert('field:'+field);
  value = value.replace('&',''); oper = '';
  if (value.indexOf('#') >= 0 ) {
    oper = '#';
    value = value.replace('#','');
  }
  //alert('field:'+rel('cadForm:'+field));
  //alert('value:'+value);
  //alert('oper:'+oper);

  if (oper.indexOf('#') >= 0 ) {

    if (oper.indexOf('#') >= 0 && rel('cadForm:'+field) == value) {
        alert(rel('cadForm:lbl_'+field) +" "+ rel('cadForm:msg_cannotBe')+ ": "+ value  );
        fcf('cadForm:'+field);
        return false;
    } else {
        return true;
    }

  } else {

    //if (oper.length == 0 && rel('cadForm:'+field) != value) {
    varx = rel('cadForm:'+field);
    if (varx == "" ) { varx = " ";}
    //alert('varx'+varx);
    //alert('value'+value);
    if (oper.length == 0 && value.indexOf(varx) < 0) {
        alert(rel('cadForm:msg_valueOf')+ " " + rel('cadForm:lbl_'+field) +" "+ rel('cadForm:msg_mustBe')+ ": "+ value );
        fcf('cadForm:'+field);
        return false;
    } else {
        return true;
    }

  }

  return true;
}

// set Button on the basis of current Value
function setButton(thisValue,compareValue,hl) {
    alert('setButton');
    hh = thisValue; hh = hh.toUpperCase();if(hh == compareValue){hlFields(hl);}
}

/* valida o preenchimento do campo de seleçao */
function vrel(field) {
  //  alert('field:'+field);
  if (rel('cadForm:'+field) == '') {
    //alert('Llenar el campo: '+ rel('cadForm:lbl_'+field));
    alert(rel('cadForm:msg_fillTheField')); 
    return false;
  } else {
    return true;
  }
}

/* alerta que o Registo da Lista esteja Limpo para Inclusão */
function msgListRecordClear(field) {
  //alert('field:'+field);
  if (retSubSel(field) != '') {
    //alert('Limpe a seleção atual caso deseje pesquisar ou incluir um Novo Registro');
    alert(rel('cadForm:msg_cleanCurrentSelection')); 
    return false; } else { return true; }
}

/* valida se o Registo da Lista esta Limpo para Inclusão */
function isListRecordClear(field) {
  //alert('field:'+field);
  if (retSubSel(field) != '') {
    //alert('Limpe a seleção atual para obter um Novo Registro');
    alert(rel('cadForm:msg_cleanSelectionToGetNewRecord')); 
    return false; } else { return true; }
}

/* valida se o Registo da Lista esta Preenchido para Edição */
function isListRecordFilled(field) {
  //alert('field:'+field);
  if (retSubSel(field) == '') {
    //alert('Selecione um Registro da Lista para executar essa função');
    alert(rel('cadForm:msg_selectFromListToExceuteFuncion')); 
    return false; } else { return true; }
}

/* valida o nao preenchimento do campo abaixo */
function valFillBelow(field) {
  alert('field:'+field);
  if (retSubSel(field) != '') {
	  //alert('Limpe o Registro para importaçao de um Novo Trem');
	  alert(rel('cadForm:msg_cleanRecordToImport')); 
    return false;
  } else {
    return true;
  }
}

/* limpa o campo de seleçao do valor */
function cleSubSel(field) {
    //alert('field: '+field);
	el('cadForm:'+field).value = '';
//  el('cadForm:'+field).onchange();
  if (el('cadForm:'+field+'_desc')) {
      //el('cadForm:'+field+'_desc').innerHTML = '';
	  el('cadForm:'+field+'_desc').value = '';
//  } else if (el('cadForm:'+field+'_desc0')) {
  } else {
    //el('cadForm:'+field+'_desc0').innerHTML = '';
  }
}

/* limpa o campo CODF de seleçao do valor */
function cleCodfSel(field) {
  el('cadForm:'+field).value = '';
//  el('cadForm:'+field).onchange();
  if (el('cadForm:'+field+'_desc')) {
    el('cadForm:'+field+'_desc0').innerHTML = '';
  } else if (el('cadForm:'+field+'_desc0')) {
    el('cadForm:'+field+'_desc0').innerHTML = '';
  }
}

/* limpa o campo de seleçao do valor */
function cleSubSel_uv(field) {
  //alert('field'+field);
  if(el('cadForm:'+field)) {
    el('cadForm:'+field).value = '';
  }
  //if(el('cadForm:'+field+'_desc')) {
  if(el('cadForm:'+field+'_desc')) {
    el('cadForm:'+field+'_desc').value = '';
  }
  //if(el('cadForm:'+field+'_desc')) {
  //  el('cadForm:'+field+'_desc').innerHTML = '';
  //}
}

/* limpa o campo de seleçao do valor */
function cleSubSel_mv(field) {
  if(el('cadForm:'+field)) {
    el('cadForm:'+field).value = '';
  }
  if(el('cadForm:'+field+'_desc0')) {
    el('cadForm:'+field+'_desc0').innerHTML = '';
  }
}

function valueVf(vf_field) {
   //vf_val = el('cadForm:'+vf_field).value;
   //alert('vf_field: '+vf_field);
   vf_val = el('cadForm:'+vf_field).value;
   alert('vf_val: '+vf_val);
   if (vf_val == '') {
        return 'a'+el('cadForm:'+vf_field+'v0').value;
    } else {
        return vf_val;
    }
/*
    if (el('cadForm:'+vf_field).value == '') {
        return el('cadForm:'+vf_field+'v').value; // armazena valor inicial do vf
    } else {
        return el('cadForm:'+vf_field).value;
    }
*/
}

function cleCep(field) {
    if(el('cadForm:'+field).value != '') {
        el('cadForm:'+field).value  = '';
        //alert('Atenção: Endereço será registrado sem CEP');
    }
}


function cleCep2(field, field1) {
    //alert('field1;'+field1);
    log = el('cadForm:'+field1).value;
    //alert('log;'+log);
    cep = el('cadForm:'+field).value;
    //cepend = cep.substring(5,8);
    //if(el('cadForm:'+field).value != '') {
    //alert('cepend;'+cepend);
    if(log != '') {
        //alert('field:'+field);
        el('cadForm:'+field).value  = '';
        //alert('Atenção: Endereço será registrado sem CEP');
    }
}

function cleCep3(field, field1) {
    //alert('field1;'+field1);
    log = el('cadForm:'+field1).value;
    //alert('log;'+log);
    cep = el('cadForm:'+field).value;
    //cepend = cep.substring(5,8);
    //if(el('cadForm:'+field).value != '') {
    //alert('cepend;'+cepend);
    if(log != '') {
        //alert('field:'+field);
        el('cadForm:'+field).value  = '';
        //alert('Atenção: Endereço será registrado sem CEP');
    }
}

function loading(flg) {
  if (flg == 'true') {
    el('loading').style.display = '';
  } else {
    el('loading').style.display = 'none';
  }
}

function loadFields(path_in, loadFields_in, path_out, loadFields_out) {
    for (i = 0; i < loadFields_in.length; i++) {
        //if_el(path_out+loadFields_out[i], rpel(path_in+loadFields_in[i]));
        aaa = rpel(path_in+loadFields_in[i]);
        if (aaa.indexOf(".") >= 0 && aaa.indexOf(",") >= 0  ) {
            aaa = aaa.replace('.','');
            //alert('aaa'+aaa);
        }
        //aaa = aaa.replace(',','');
        if_el(path_out+loadFields_out[i], aaa);
    }
    selDtTableOneRow(path_in);
}

function loadKeyField(path_in, loadFields_in, path_out, loadFields_out, gh) {
  //alert('loadKeyField');
  //alert(loadFields_in);alert(loadFields_out);
  //alert(path_in);alert(path_out);
  //for (i = 0; i < loadFields_in.length; i++) {
    //alert(path_out+loadFields_out[i]);
    //alert(path_in+loadFields_in[i]);
    //alert(rpel(path_in+loadFields_in[i]));

    endcl = gh.indexOf("+");
    if (endcl < 0 ) {endcl = gh.length;}
    gh = gh.substring(0,endcl);
    gh = gh + "-";
    //alert('ghkey'+gh);
    last = gh.lastIndexOf("-");
    ll = gh.substring(last,gh.length);
    lln = parseInt(ll);
    //alert('lln-'+lln);
    for (i = 0; i <= 10; i++) {
        //alert('i-'+i);
        ix =  "-" + i + "-";
    	//alert('ix-'+ix);
    	//elid= el(path_in+loadFields_in[i]);
    	//alert('elinid-'+elid.id);
    	if ( gh.indexOf(ix) >= 0 ) {
             start = gh.indexOf(ix)+1;
             end = gh.indexOf("-",start); // +1;
             starts = start + "";
             ends = end + "";
             //alert('starts-'+starts);
             //alert('ends-'+ends);
             keyx = gh.substring(start,end); key = parseInt(keyx);
             //alert('keyx-'+keyx);
             if_el(path_out+loadFields_out[key], rpel(path_in+loadFields_in[key]));

             //elinid= el(path_in+loadFields_in[i]);
             //alert('elinid-'+elinid.id);
             //elinvl = rpel(path_in+loadFields_in[i]);
             //alert('elinvl-'+elinvl);

             //elouid= el(path_in+loadFields_in[i]);
             //alert('elouid-'+elouid.id);
             //elouvl = rpel(path_in+loadFields_in[i]);
             //alert('elouvl-'+elouvl);

        }
    }
    //if_el(path_out+loadFields_out[k1], rpel(path_in+loadFields_in[k1]));
    //if (k2.length > 0) {
    //    if_el(path_out+loadFields_out[k2], rpel(path_in+loadFields_in[k2]));
    //}
  //}
}

function loadFieldsIfColor(path_in, loadFields_in, path_out, loadFields_out, gh) {
    //alert('loadFieldsIfColor');
    stacl = gh.indexOf("+");
    cl = gh.substring(stacl,gh.length);
    cln = parseInt(cl);

    endcl = gh.indexOf("+");
    if (endcl < 0 ) {endcl = gh.length;}
    gh = gh.substring(0,endcl);

    end = gh.indexOf("-", 1);
    ghx = gh.substring(1,end);
    ghn = parseInt(ghx);
    //alert('ghn'+ghn);

    aaa = path_in+loadFields_in[ghn];
    //alert('aaa'+aaa);
    obj = el(aaa);
    color = obj.style.backgroundColor;
    //alert('zzz color'+color);

    if (color.indexOf("transparent") >=0 ) {
    //if (color.indexOf("xxx") >=0 ) {
    //alert('color'+color);
    //alert('cln'+cln);
    //clFields(ghn);
        clFields(cln);
    } else {
        //alert('loadfields'+cln);
        for (i = 0; i < loadFields_in.length; i++) {
            if_el(path_out+loadFields_out[i], rpel(path_in+loadFields_in[i]));
        }
    }
}

function ifColor(aa,strobj) {
    //alert('strobj'+strobj);
    obj = el(aa+strobj);
    //alert('obj'+obj.id);
    //color = obj.style.border;
    color = obj.style.backgroundColor;
    //alert('color'+color);
    if (color.indexOf("transparent") >=0 ) {
      //alert(rel('cadForm:msg_unlock'));
  //    alert('noloadfields');
      //fcf('cadForm:'+field);
      return false;
    } else {
      return true;
    }
}

/*##############################################*/

function rejeitaTecla(){
    //by Micox - elmicox.blogspot.com - www.ievolutionweb.com
    var oEvent=arguments[0];

    //filtrando o evento
    var oEvent = oEvent ? oEvent : window.event;
    var tecla = (oEvent.keyCode) ? oEvent.keyCode : oEvent.which;
    var keyChar = String.fromCharCode(oEvent.keyCode);
    //alert('tecla EV: '+tecla);
    //alert('keyChar: '+keyChar);

    if(oEvent.type=="keydown" && navigator.appName.indexOf('Internet Explorer')<0 ){
        //se for keydown e não for o IE, vazarei pois o keypress já foi executado
        return false;
    }

    for (var i=1; i < arguments.length; i++) {
        cod_tecla=arguments[i];
        //alert('cod_tecla: '+cod_tecla);
        if (keyChar != 't') {
            if (tecla == cod_tecla){
                alert(rel('cadForm:label_key_enter'));
                if (typeof(oEvent.preventDefault)=='function') {
                    oEvent.preventDefault();
                } else {
                    oEvent.returnValue = false;
                    oEvent.keyCode = 0;
                }
            }
        }
    }
    return false;
}

function rejeitaTeclas(){
    var tecla = 0;
    var args_eval = "e, ";
    for(var i=0; tecla=arguments[i]; i++)
        {args_eval += tecla + ", ";/*alert('tecla RK: '+tecla);*/}
    args_eval += "0";
    //alert('args_eval: '+args_eval);
    eval("document.onkeypress=function(e){rejeitaTecla("+args_eval+");}\n"+
        "document.onkeydown=function(e){rejeitaTecla("+args_eval+");}");
}

function rk() {
    rejeitaTeclas(13, 116);
}

/* ###################################################### */

function cle_dtDados() {
  if(el('cadForm:dtDados')){
    if_el('cadForm:dtDados_rc_var', 'cleared');
    el('div_dtDados').removeChild(el('cadForm:dtDados'));
  }
}

function cle_dtDados1() {
    if(el('cadForm:dtDados1')){
        if_el('cadForm:dtDados1_rc_var', 'cleared');
        el('div_dtDados1').removeChild(el('cadForm:dtDados1'));
    }
}

function cle_dtDados2() {
    if(el('cadForm:dtDados2')){
        if_el('cadForm:dtDados2_rc_var', 'cleared');
        el('div_dtDados2').removeChild(el('cadForm:dtDados2'));
    }
}

function val_dtDados(fld) {
  path= 'cadForm:dtDados:';
  path_ot = ':'+fld;

  i = 0;
  f_find = path+i+path_ot;
  if (el(f_find)) {
    return true;
  } else {
    if (rel('cadForm:dtDados_rc_var') == '888') {
      return true;
    } else {
      alert(rel('cadForm:sys_load_table_a'));
      return false;
    }
  }
}

function val_dtDados1(fld) {
  path= 'cadForm:dtDados1:';
  path_ot = ':'+fld;

  i = 0;
  f_find = path+i+path_ot;
  if (el(f_find)) {
    return true;
  } else {
    if (rel('cadForm:dtDados1_rc_var') == '888') {
      return true;
    } else {
      alert(rel('cadForm:sys_load_table_b'));
      return false;
    }
  }
}

function val_dtDados2(fld) {
   path= 'cadForm:dtDados2:';
   path_ot = ':'+fld;

   i = 0;
   f_find = path+i+path_ot;
   if (el(f_find)) {
      return true;
   } else {
      if (rel('cadForm:dtDados2_rc_var') == '888') {
	     return true;
	  } else {
	     alert(rel('cadForm:sys_load_table_c'));
	     return false;
	  }
   }
}

function unlock(strobj) {
    //alert('strobj'+strobj);
    obj = el(strobj);
    //color = obj.style.border;
    color = obj.style.backgroundColor;
    //alert('color'+color);
    if (color.indexOf("lightgrey") >=0 ) {
      alert(rel('cadForm:msg_unlock'));
      //alert('unlock');
      //fcf('cadForm:'+field);
      return false;
    } else {
      return true;
    }
}

function grids_sch_a(sch_val, sch_fld, sch_lgt) {
  path= 'cadForm:dtDados:';
  path_fld = ':'+sch_fld;
  path_lgt = ':'+sch_lgt;
  grids_sch(path, path_fld, path_lgt, sch_val, 'ONE');
}

function grids_sch(path, path_fld, path_lgt, sch_val, sch_typ) {
  pathcad= 'cadForm:';
  f_high =  pathcad+"train_px_var_desc";
  el(f_high).style.background=""; //
  el(f_high).style.background="#00FFFF"; //
  //el("cadForm:loadfields_flg_var").value="true"; //
  el('cadForm:rwloc_px_var').style.background="#00FFFF";

  flag = true;
  i = 0;
  while (flag) {
    f_find =  path+i+path_fld;
    f_light = path+i+path_lgt;
    if (el(f_find)) {
      el(f_find).style.background="";
      el(f_light).style.background="";

      find_a = rel(f_find);
      //alert('find_a'+find_a);
      //alert('sch_val'+sch_val);
      if (find_a == sch_val) {
        if (el(f_light)) {
          //el(f_light).style.background="#FFFFAA"; // Light Yellow
          el(f_light).style.background="#00FFFF"; // Cyan Blue
          fcf(f_light);
        } else {
          el(f_find).style.background="#00FFFF"; //
          fcf(f_find);
        }
        //if (sch_typ == 'ONE') {
        if (sch_typ == 'ONqqE') {
          flag = false;
        }
      } else {
        if (el(f_light)) {
          el(f_light).style.background="";
        } else {
          el(f_find).style.background="";
        }
      }
      i++;
    } else {
      flag = false;
    }
  }
}

function grid_sch_a(sch_valprm, sch_valsec, sch_fld, sch_lgt, sch_typ, sch_lod) {
  //alert('sch_valprm-'+sch_valprm);
  //alert('sch_valone'+sch_valone);
  //alert('sch_fld'+sch_fld);
  //alert('sch_lgt'+sch_lgt);
  //alert('sch_typ'+sch_typ);
  //alert('sch_lod'+sch_lod);
  //alert('aaa'+rel('cadForm:oper_tp_var'));
  if (rel('cadForm:oper_tp_var') == 'CP') {
     el('cadForm:xbutn_id').value = '1';
     return;
  }
  //alert('xxx');

  sch_valss = sch_valprm;
  //alert('grid_sch_typ_var'+rel('cadForm:grid_sch_typ_var'));

  path= 'cadForm:dtDados:';
  path_fld = ':'+sch_fld;
  path_lgt = ':'+sch_lgt;
  path_typ = ':'+sch_typ;
  path_lod = ':'+sch_lod;

  grid_sch(path, path_fld, path_lgt, path_typ, path_lod, sch_valprm, sch_valsec, rel('cadForm:grid_sch_typ_var'));

  //if (rel('cadForm:grid_sch_typ_var') == 'ONE') {
     //path_fld = path_lgt; sch_valss = sch_valone;
     //alert('one sch_valall'+sch_valall);
     //alert('one sch_valone'+sch_valone);
     //alert('one sch_valss'+sch_valss);
     //alert('one path_fld'+path_fld);
     //alert('one path_lgt'+path_lgt);
  //}
  //if (rel('cadForm:grid_sch_typ_var') == 'ONE') {
  //  grid_sch(path, path_fld, path_lgt, sch_valprm, sch_valsec, 'ONE');
  //} else if (rel('cadForm:grid_sch_typ_var') == 'ALL') {
  //  grid_sch(path, path_fld, path_lgt, sch_valprm, sch_valsec, 'ALL');
  //}
}

function grid_sch_b(sch_val, sch_fld, sch_lgt) {
  path= 'cadForm:dtDados1:';
  path_fld = ':'+sch_fld;
  path_lgt = ':'+sch_lgt;

  if (rel('cadForm:grid_sch_typ_var') == 'ONE') {
    grid_sch(path, path_fld, path_lgt, sch_val, 'ONE');
  } else if (rel('cadForm:grid_sch_typ_var') == 'ALL') {
    grid_sch(path, path_fld, path_lgt, sch_val, 'ALL');
  }
}

function vhcle_csgn_nb() {
    alert('mesg_var'+el('cadForm:mesg_var').value);
  if (rel('cadForm:mesg_var').indexOf('multiple') >= 0) {
    alert('after');
    //hlfields(1);
  }
}

function grid_sch(path, path_prm, path_sec, path_typ, path_lod, sch_valprm, sch_valsec, sch_typ) {
  flag = true; flagPrmFound = false; flagSecFound = false; flagSelFound = false;
  find_prm_next = ""; find_sec_next = ""; foundDup = false; find_typ = ""; find_lod = "";

  //alert("grid_sch");
  //alert('sch_valprm'+sch_valprm);

  if (sch_typ == 'NCT'  ) { return; }  // No Consignment (Carta Porte)
  el('cadForm:porte_nb_var').style.background="E7ECF2";

  i = 0;  kk = 0;
  while (flag) {
    flagPrmFound = false;
    flagSecFound = false;
    flagSelFound = false;

    f_prm = path+i+path_prm;
    f_sec = path+i+path_sec;
    f_typ = path+i+path_typ;
    f_lod = path+i+path_lod;

    if (el(path+i+path_prm)) {
      find_prm = arFind_prm[i];
      find_sec = arFind_sec[i];
      find_typ = arFind_typ[i];
      find_lod = arFind_lod[i];
      find_sta = arFind_sta[i];
    //}

    //obj = el(f_prm);
    //cla = obj.style.backgroundColor;
    //obj = el(f_sec);
    //clb = obj.style.backgroundColor;
    //alert('aaa sch_typ:'+sch_typ+' find_typ:'+find_typ+' find_sta:'+find_sta+cla+clb);

    //alert('find_prm'+find_prm);
    //alert('find_sec'+find_sec);
    //alert('find_typ'+find_typ);
    //alert('find_lod'+find_lod);
    //alert('find_sta'+find_sta);

    if (el(f_prm)) {
      el(f_prm).style.background="";
    }

    //if ( find_sta == 'CD') {} else {
    //     i++;
    //     continue;
    //}

    // 091101
    //if ( sch_typ == 'SEL' && find_prm == find_prm_next   ) {
    //     foundDup = true;
    //}
    //if (sch_typ == 'SEL' && find_sec == sch_valsec   ) {
    //    flagSecFound = true;
    //}

    //if ( !foundDup && sch_typ == 'SEL' && find_prm != find_prm_next   ) {
    //alert('find_sec'+find_sec);
    //alert('find_ext'+find_ext);
    // 091101 if ( !foundDup && sch_typ == 'SEL' && find_typ == 'SL' && find_lod == 'E' && find_sta == 'CD' ) {

    //if ( i == 64) {
    //    alert('find_typ'+find_typ);
    //    alert('find_lod'+find_lod);
    //    alert('find_sta'+find_sta);
    //}

    // 091101
    //if ( sch_typ == 'SEL' && find_prm != find_prm_next   ) {
    //     foundDup = false;
    //}

    //alert('sch_typ-'+sch_typ);
    //alert('find_typ-'+find_typ);  #FF4040

    if (sch_typ == 'DST'  ) {  // Distribution
        el(f_prm).style.background="#B0E0E6"; if (kk == 0 ){kk = 1;}  // blue
    }

    // Highlight the eligible consignments
    if ( sch_typ == 'SEL' && find_typ == 'SL' && find_lod == 'E' && find_sta == 'CD' ) {
        el(f_prm).style.background="#B0E0E6"; if (kk == 0 ){kk = 1;}  // blue
    }
    if ( sch_typ == 'ALL' && find_typ == "ML" && find_sta == 'CD') {  // Cg Entero
        el(f_prm).style.background="#B0E0E6"; if (kk == 0 ){kk = 1;}  // blue
    }
    if ( sch_typ == 'ALL' && find_typ == "SL" && find_sta == 'CD') {  // Cg Entero
        el(f_prm).style.background="#B0E0E6"; if (kk == 0 ){kk = 1;} // blue
    }


    //alert(' sch_typ:'+sch_typ+' find_typ:'+find_typ+' find_sta:'+find_sta);
    //if ( sch_typ == 'ALL' && find_typ == "SL" && find_sta == 'TR') {  // Cg Entero
    //    el(f_prm).style.background="#B0E0E6"; if (kk == 0 ){kk = 1;} // blue
    //}

    //alert("find_prm:"+find_prm+" sch_valprm:"+sch_valprm);
    //alert("find_sec:"+find_sec+" sch_valsec:"+sch_valsec);

    if ( sch_typ == 'ONE' && find_typ == "ML" && find_sta == 'CD') {  // Dg & Cg Suelta
        el(f_prm).style.background="#B0E0E6"; if (kk == 0 ){kk = 1;}  // blue
    }
    flagPrmFound = false; flagSecFound = false;
    // Find the selected Line ( via loadfield button)
    if (sch_typ == 'SEL' && find_prm == sch_valprm && find_typ == "SL"  && find_sta == 'CD' ) {
        flagPrmFound = true;
    }
    if (sch_typ == 'SEL' && find_sec == sch_valsec && find_typ == "SL" && find_sta == 'CD' ) {
        flagSecFound = true;
    }
    if (sch_typ == 'ALL' && find_prm == sch_valprm && find_sta == 'CD'  ) {
        flagPrmFound = true; flagSecFound = true;
    }
    // xxxx
    if (sch_typ == 'ONE' && find_prm == sch_valprm && find_typ == "ML"  && find_sta == 'CD' ) {
        flagPrmFound = true;
    }
    // xxxx
    if (sch_typ == 'ONE' && find_sec == sch_valsec && find_typ == "ML" && find_sta == 'CD' ) {
        flagSecFound = true;
    }


    //alert('sch_typ'+sch_typ);
    //alert('find_prm'+find_prm);
    //alert('find_prm_next'+find_prm_next);


    // highlight the selected line and load consignment
    if ( sch_typ == 'SEL' && find_typ == 'SL' && find_lod == 'E' && find_sta == 'CD' ) {
        //found = true;
        //flagPrmFound = true; flagSecFound = true;
        //alert('sel 1 find_prm'+find_prm);
        el(f_sec).style.background="";
        if (el(f_prm)) {
            el(f_prm).style.background="#B0E0E6";  // blue
            if (flagSecFound) {
              el(f_prm).style.background="#FFFFAA";  // yellow
              el(f_sec).style.background="#00FFFF"; // blue
              fcf(f_sec); kk = 2;
            }
            //el(f_sec).style.background="#00FFFF";
            fcf(f_sec);
            //alert('sel 2 find_prm'+find_prm);
            //i++;
            //continue;
        } else {
            //alert('exitb ')
            flag = false;
        }
    }

    //alert('f_prm1'+f_prm);
    if (el(f_prm)) {
      // alert('f_prm2'+f_prm);
      //el(f_prm).style.background="";
      el(f_sec).style.background="";
      if (flagPrmFound) {
        //alert('flagPrmFound');
        if (el(f_sec)) {
          el(f_prm).style.background="#FFFFAA";
          //alert('zzzf_prm'+f_prm);
          //alert('flagSecFound-before'+flagSecFound);
          if (flagSecFound) {
          //alert('flagSecFound-in'+flagSecFound);
            el(f_sec).style.background="#00FFFF";
            fcf(f_sec); kk = 2; //alert(kk);
            el('cadForm:porte_nb_var').style.background="#00FFFF";
          }
        } else {
          el(f_prm).style.background="#00FFFF";
          fcf(f_prm); kk = 2; //alert(kk);
        }
      } else {
        if (el(f_sec)) {
          el(f_sec).style.background="";
          //el(f_prm).style.background="";
        } else {
          el(f_prm).style.background="";
        }
      }

      i++;

    }
    } // end if (el(path+i+path_prm))

    //obj = el(f_prm);
    //cla = obj.style.backgroundColor;
    //obj = el(f_sec);
    //clb = obj.style.backgroundColor;
    //alert('bbb sch_typ:'+sch_typ+' find_typ:'+find_typ+' find_sta:'+find_sta+cla+clb);

    f_prm_next = path+i+path_prm;
    if (el(f_prm_next)) {
 //     alert('1111'+i);
      flag = true;
    } else {
 //     alert('2222'+i);
      flag = false;
    }
  }
  //alert('kk'+kk);
  //@@@ 100219 - Removido por solicitacao do Usuario
  //if ( kk == 1 && i > 15) { alert('Otras Cartas Portes elegibles fueram encontradas ...'); kk = 0;}
  //alert('exit');
}

function grid_schaaa(path, path_prm, path_sec, path_typ, path_lod, sch_valprm, sch_valsec, sch_typ) {
  flag = true; flagPrmFound = false; flagSecFound = false; flagSelFound = false;
  find_prm_next = ""; find_sec_next = ""; foundDup = false; find_typ = ""; find_lod = "";

  if (sch_typ == 'NCT'  ) { return; }  // No Consignment (Carta Porte)

  i = 0;  kk = 0;
  while (flag) {
    flagPrmFound = false;
    flagSecFound = false;
    flagSelFound = false;

    f_prm = path+i+path_prm;
    f_sec = path+i+path_sec;
    f_typ = path+i+path_typ;
    f_lod = path+i+path_lod;


    find_prm = arFind_prm[i];
    find_sec = arFind_sec[i];
    find_typ = arFind_typ[i];
    find_lod = arFind_lod[i];
    find_sta = arFind_sta[i];

    //alert('find_prm'+find_prm);
    //alert('find_sec'+find_sec);
    //alert('find_typ'+find_typ);
    //alert('find_lod'+find_lod);
    //alert('find_sta'+find_sta);

    el(f_prm).style.background="";

    if ( find_sta == 'CD') {} else {
         i++;
         continue;
    }

    if ( sch_typ == 'SEL' && find_prm == find_prm_next   ) {
         foundDup = true;
    }
    if (sch_typ == 'SEL' && find_sec == sch_valsec   ) {
        flagSecFound = true;
    }

    //if ( !foundDup && sch_typ == 'SEL' && find_prm != find_prm_next   ) {
    //alert('find_sec'+find_sec);
    //alert('find_ext'+find_ext);
    if ( !foundDup && sch_typ == 'SEL' && find_typ == 'SL' && find_lod == 'E'  ) {
        //found = true;
        //flagPrmFound = true; flagSecFound = true;
        //alert('sel 1 find_prm'+find_prm);
        el(f_sec).style.background="";
        if (el(f_prm)) {
            el(f_prm).style.background="#B0E0E6";  // blue
            if (flagSecFound) {
              el(f_prm).style.background="#FFFFAA";  // yellow
              el(f_sec).style.background="#00FFFF"; // blue
              fcf(f_sec);
            }
            //el(f_sec).style.background="#00FFFF";
            fcf(f_sec);
            //alert('sel 2 find_prm'+find_prm);
            i++;
            continue;
        } else {
            //alert('exitb ')
            flag = false;
        }
    }

    if ( sch_typ == 'SEL' && find_prm != find_prm_next   ) {
         foundDup = false;
    }

    //alert('sch_typ-'+sch_typ);
    //alert('find_typ-'+find_typ);

    // xxx Offload All Only
    if ( sch_typ == 'ALL' && find_typ == "ML") {  // Cg Entero
        el(f_prm).style.background="#B0E0E6";  // blue
    }
    // xxx
    if ( sch_typ == 'ALL' && find_typ == "SL") {  // Cg Entero
        el(f_prm).style.background="#B0E0E6";  // blue
    }

    // Load SL
    if ( sch_typ == 'ONE' && find_typ == "ML") {  // Dg & Cg Suelta
        el(f_prm).style.background="#B0E0E6";  // blue
    }

    if (sch_typ == 'ALL' && find_prm == sch_valprm   ) {
        flagPrmFound = true; flagSecFound = true;
    }
    // xxxx
    if (sch_typ == 'ONE' && find_prm == sch_valprm && find_typ == "ML"  ) {
        flagPrmFound = true;
    }
    // xxxx
    if (sch_typ == 'ONE' && find_sec == sch_valsec && find_typ == "ML" ) {
        flagSecFound = true;
    }


    //alert('sch_typ'+sch_typ);
    //alert('find_prm'+find_prm);
    //alert('find_prm_next'+find_prm_next);

    //alert('f_prm1'+f_prm);
    if (el(f_prm)) {
       //alert('f_prm2'+f_prm);
      //el(f_prm).style.background="";
      el(f_sec).style.background="";
      if (flagPrmFound) {
        //alert('flagPrmFound');
        if (el(f_sec)) {
          el(f_prm).style.background="#FFFFAA";
          //alert('f_prm'+f_prm);
          if (flagSecFound) {
            el(f_sec).style.background="#00FFFF";
            fcf(f_sec);
          }
        } else {
          el(f_prm).style.background="#00FFFF";
          fcf(f_prm);
        }
      } else {
        if (el(f_sec)) {
          el(f_sec).style.background="";
          //el(f_prm).style.background="";
        } else {
          el(f_prm).style.background="";
        }
      }

      i++; kk++;

      //if ( kk == 15) { alert('processando...'+i); kk = 0;}
    }
    alert('1111aaaa');

    f_prm_next = path+i+path_prm;
    if (el(f_prm_next)) {
       alert('bbbb');
      flag = true;
    } else {
      alert('cccc');
      flag = false;
    }
     //if ( kk == 15) { alert('fim - processados:'+i); kk = 0;}
    alert('exitaaa');
  }
  alert('exit');

}

function gridLoadFld(fld, aa) {
  if (rel('cadForm:oper_tp_var') == 'CP') {
     el('cadForm:xbutn_id').value = '1';
     return;
  }
  //alert('zzzzexit');

  ini = fld.indexOf("__") + 2;
  fim = ini + 1;
  dtdados = fld.substring(ini,fim);
  if (dtdados == 'a') {
    path= 'cadForm:dtDados:';
  } else {
    path= 'cadForm:dtDados1:';
  }

  path_fld = ':'+fld;
  flag = true;
  i = 0;

  if (!el(path+i+':'+fld)) {
    arFind_prm = null;
    arFind_sec = null;
    arFind_typ = null;
    arFind_lod = null;
    arFind_sta = null;
  }

  while (flag) {
    fnd = path+i+':'+fld;
    if (el(fnd)) {
      //alert(fnd);
      val = rel(fnd);
      //alert(val);

      fin_f_prm = val.indexOf("-");
      f_prm = val.substring(0,fin_f_prm);
      val = val.substring(fin_f_prm+1,val.length);
      //alert(f_prm);alert(val);
      fin_f_sec = val.indexOf("-");
      f_sec = val.substring(0,fin_f_sec);
      val = val.substring(fin_f_sec+1,val.length);
      //alert(f_sec);alert(val);
      fin_f_typ = val.indexOf("-");
      f_typ = val.substring(0,fin_f_typ);
      val = val.substring(fin_f_typ+1,val.length);
      //alert(f_typ);alert(val);
      fin_f_lod = val.indexOf("-");
      f_lod = val.substring(0,fin_f_lod);
      val = val.substring(fin_f_lod+1,val.length);
      //alert(f_lod);alert(val);
      fin_f_sta = val.length;
      f_sta = val.substring(0,fin_f_sta);
      val = val.substring(fin_f_sta+1,val.length);
      //alert(f_sta);alert(val);

      arFind_prm[i] = f_prm;
      arFind_sec[i] = f_sec;
      arFind_typ[i] = f_typ;
      arFind_lod[i] = f_lod;
      arFind_sta[i] = f_sta;

      //alert('i '+i);
      //alert('arFind_prm '+arFind_prm[i]);
      //alert('arFind_sec '+arFind_sec[i]);
      //alert('arFind_typ '+arFind_typ[i]);
      //alert('arFind_lod '+arFind_lod[i]);
      //alert('arFind_sta '+arFind_sta[i]);

      i++;
    } else {
      flag = false;
    }
  }
}

/* ###################################################### */


function hloptp() {

  //hlFields(1); //hlFields(1);
  //alert('hloptp');
  el('cadForm:WagLoadIni_a').style.color="";
  el('cadForm:WagLoadSup_a').style.color="";
  el('cadForm:WagOffloadComplete_a').style.color="";
  el('cadForm:WagOffloadFractioned_a').style.color="";
  el('cadForm:WagLoadWNoCngt_a').style.color="";
  el('cadForm:WagLoadDist_a').style.color="";
  el('cadForm:oper_tp_details_var').disabled = true;
  el('cadForm:oper_tp_details_var').style.background="#E7ECF2";
  //selSrcImg('cadForm:flow_nb_var_xsel', 'btTagBlue.gif');

  //el('cadForm:mesg_var').style.background = bck;
  aa = rel('cadForm:mesg_var');
  if (aa.indexOf('888') >= 0) {
     el('cadForm:mesg_var').style.background = '#00FFFF';
     if (rel('cadForm:oper_tp_var') == 'PD') {
        hlFields(1);
        hlFields(57);
     } else {
        hlFields(1);
     }
     return;
  }

  el('cadForm:WagLoadQueryList_a').style.color="#FF0000";

  if (rel('cadForm:oper_tp_var') == 'CP') {
     //el('cadForm:WagLoadIni_a').style.color="#FF0000";
     //el('cadForm:WagLoadSup_a').style.color="#FF0000";
     //hlFields(1);
     el('cadForm:xbutn_id').value = '1';
     //alert('xbutn_idaaa'+el('cadForm:xbutn_id').value);
  }
  if (rel('cadForm:oper_tp_var') == 'SO') {
     el('cadForm:WagLoadIni_a').style.color="#FF0000";
     el('cadForm:WagLoadSup_a').style.color="#FF0000";
     //hlFields(1);
     //hlFields(52);
     el('cadForm:xbutn_id').value = '2';
     //alert('xbutn_idaaa'+el('cadForm:xbutn_id').value);
  }
  if (rel('cadForm:oper_tp_var') == 'IR') {
     el('cadForm:WagLoadIni_a').style.color="#FF0000";
     el('cadForm:WagLoadSup_a').style.color="#FF0000";
     el('cadForm:area_ab_var').style.background="#FFE4D0";
     el('cadForm:track_ab_var').style.background="#FFE4D0";

     //hlFields(1);
     el('cadForm:xbutn_id').value = '2';
  }
  if (rel('cadForm:oper_tp_var') == 'TL') {
     el('cadForm:WagLoadIni_a').style.color="#FF0000";
     el('cadForm:WagLoadSup_a').style.color="#FF0000";
     el('cadForm:oper_tp_details_var').disabled = false;
     el('cadForm:oper_tp_details_var').style.background="#FFE4D0";
     //hlFields(1);
     el('cadForm:xbutn_id').value = '2';
  }
  if (rel('cadForm:oper_tp_var') == 'NP') {
     el('cadForm:WagLoadWNoCngt_a').style.color="#FF0000";
     el('cadForm:WagLoadQueryList_a').style.color="#FF0000";
     hlFields(1);
     hlFields(56);
     //selSrcImg('cadForm:flow_nb_var_xsel', 'btTagRed.gif');
  }
  if (rel('cadForm:oper_tp_var') == 'PD') {
     el('cadForm:WagLoadDist_a').style.color="#FF0000";
     el('cadForm:WagLoadQueryList_a').style.color="#FF0000";
     //WagLoadQueryList_a_hl();
     hlFields(1);
     hlFields(57);
     el('cadForm:xbutn_id').value = '57';
     //selSrcImg('cadForm:flow_nb_var_xsel', 'btTagRed.gif');
  }
  if (rel('cadForm:oper_tp_var') == 'UL') {
     el('cadForm:WagOffloadComplete_a').style.color="#FF0000";
     el('cadForm:WagOffloadFractioned_a').style.color="#FF0000";
     //hlFields(1);
     el('cadForm:xbutn_id').value = '4';
  }
  if (rel('cadForm:oper_tp_var') == 'TU') {
     el('cadForm:WagOffloadComplete_a').style.color="#FF0000";
     el('cadForm:WagOffloadFractioned_a').style.color="#FF0000";
     el('cadForm:oper_tp_details_var').disabled = false;
     el('cadForm:oper_tp_details_var').style.background="#FFE4D0";
     //hlFields(1);
     el('cadForm:xbutn_id').value = '4';
  }
}

function hlporte() {
  //  alert('hloptp');
  if (rel('cadForm:oper_tp_var') == 'SO') {
     el('cadForm:xbutn_id').value = '2';
    //alert('xbutn_id'+rel('cadForm:xbutn_id'));
     hlFields(2);
  }
  if (rel('cadForm:oper_tp_var') == 'IR') {
     hlFields(2);
  }
  if (rel('cadForm:oper_tp_var') == 'TL') {
     hlFields(2);
  }
  if (rel('cadForm:oper_tp_var') == 'NP') {
     el('cadForm:WagLoadWNoCngt_a').style.color="#FF0000";
     hlFields(56);
  }
  if (rel('cadForm:oper_tp_var') == 'PD') {
     el('cadForm:WagLoadDist_a').style.color="#FF0000";
     hlFields(57);
  }
  if (rel('cadForm:oper_tp_var') == 'UL') {
     hlFields(4);
  }
  if (rel('cadForm:oper_tp_var') == 'TU') {
     hlFields(4);
  }
}

/*
var cmdBtnId = 'cmdbtn';
var formId = 'frm1';
var checkBoxArrayId = 'chk';
var sq_val_b = null;

path=checkbox.id.slice(0,checkbox.id.search('chk'));
number=checkbox.id.slice(0,checkbox.id.search(':chk'));
number=number.slice(number.lastIndexOf(":")+1,number.length);
sq_val=rel(path+'sel_vhlst_sq_vhcle__b');
*/

var ini_a = null;
var fin_a = null;
var ins_a = null;

var ini__a = null;
var fin__a = null;
var ins__a = null;

function ckbValSel__a() {
  path= 'cadForm:dtDados:';
  path_ot = ':chk__a';

  i = 0;
  f_find = path+i+path_ot;
  if (el(f_find)) {
    return true;
  } else {
    if (rel('cadForm:dtDados_rc_var') == '888') {
      return true;
    } else {
      alert(rel('cadForm:sys_load_table_a'));
      return false;
    }
  }
}

function convBlockToDataTable(bl) {
  alphabet = 'abcdefghijklmnoprstuvxz';
  dt = alphabet.indexOf(bl);
  dt = dt + '';
  if (dt == '0') { dt = '';}
  return dt;
}

function ckbValGrd(field) {
  // validates prop filling uf grid is not empty
  //alert('field'+field);
  end = field.indexOf('_var');
  if (end < 0) { end = field.length;}
  endM2 = end-1;
  endM1 = end;
  bl = field.substring(endM2, endM1);

  path_ot = ':chk__'+bl;
  dtn = convBlockToDataTable(bl);
  path= 'cadForm:dtDados'+dtn+':';

  i = 0;
  f_find = path+i+path_ot;
  if (el(f_find)) {
    if (rel('cadForm:'+field) == '') {
      alert(rel('cadForm:label_fill') + ' ' + rel('cadForm:lbl_'+field));
      fcf('cadForm:'+field);
      return false;
    } else {
      return true;
    }
  } else {
    if (rel('cadForm:dtDados'+dtn+'_rc_var') == '888') {
      return true;
    } else {
      alert(rel('cadForm:sys_load_table_'+bl));
      return false;
    }
  }
}

function selFromTab__a() {
  //alert('hello sel');
  path= 'cadForm:dtDados:';
  path_ot = ':sel_auto_id__a';
  value = '1';
  flag = true;
  i = 0;
  while (flag) {
    f_find = path+i+path_ot;
    if (el(f_find)) {
      find_a = rel(f_find);
      if (find_a == value) {
        el(f_find).style.background="#00FFFF";
        fcf(f_find);
        flag = false;
      } else {
        el(f_find).style.background="";
      }
      i++;
    } else {
      flag = false;
    }
  }
}

function getFromTab__a() {
  //alert('hello get');
  path= 'cadForm:dtDados:';
  path_ot = ':sel_auto_id__a';

  emply_sug_tab = 'cadForm:sel_emply_id__a';
  crwop_tm_rest_sug_tab = 'cadForm:sel_crwop_tm_rest_fmt__a';
  
  value = '1';
  flag = true;
  i = 0;
  while (flag) {
    f_find = path+i+path_ot;
    if (el(f_find)) {
      find_a = rel(f_find);
      if (find_a == value) {
        el(f_find).style.background="#00FFFF";

        f_find_emply_sug_tab = path+i+emply_sug_tab;
        if_bel('cadForm:emply_id_sug_a_var', rel(f_find_emply_sug_tab));
        f_find_crwop_tm_rest_sug_tab = path+i+emply_sug_tab;
        if_bel('cadForm:crwop_tm_rest_fmt__a', rel(f_find_crwop_tm_rest_sug_tab));
	
        fcf(f_find);
        flag = false;
      } else {
        el(f_find).style.background="";
      }
      i++;
    } else {
      flag = false;
    }
  }
}

function ckbSelSch__a(value) {
  path= 'cadForm:dtDados:';
  path_ot = ':sel_vhcle_nb__a';

  flag = true;
  i = 0;
  while (flag) {
    f_find = path+i+path_ot;
    if (el(f_find)) {
      find_a = rel(f_find);
      if (find_a == value) {
        el(f_find).style.background="#00FFFF";
        fcf(f_find);
        flag = false;
      } else {
        el(f_find).style.background="";
      }
      i++;
    } else {
      flag = false;
    }
  }
}
function cbxSelLoaded__b(checkbox) {
  id = checkbox;
  val = rel(id);
  //alert('IDL: '+id+'-'+val);
  if (val == 'false') {
    if_bel('cadForm:pos_empty_ckb_b_var', 'S');
    if_bel('cadForm:pos_empty_ckb_b_var_bol', 'true');
   cbxSelEmpty__b('cadForm:pos_empty_ckb_b_var');
  } else {
    if_bel('cadForm:pos_empty_ckb_b_var', 'N');
    if_bel('cadForm:pos_empty_ckb_b_var_bol', 'false');
  }
}
function cbxSelLoad__a(checkbox) {
  id = checkbox;
  val = rel(id);
  //alert('IDL: '+id+'-'+val);
  if (val == 'false') {
    if_bel('cadForm:pos_offload_ckb_a_var', 'S');
    if_bel('cadForm:pos_offload_ckb_a_var_bol', 'true');
   cbxSelOffload__a('cadForm:pos_offload_ckb_a_var');
  } else {
    if_bel('cadForm:pos_offload_ckb_a_var', 'N');
    if_bel('cadForm:pos_offload_ckb_a_var_bol', 'false');
  }
}
function ckbSelLoad__a(checkbox) {
  id = checkbox;
  val = rel(id);
  //alert('IDL: '+id);
  if (val == 'false') {
    if_bel('cadForm:pos_offload_ckb_a_var', 'true');
    ckbSelOffload__a('cadForm:pos_offload_ckb_a_var');
  } else {
    if_bel('cadForm:pos_offload_ckb_a_var', 'false');
  }
}

function cbxSelEmpty__b(checkbox) {
  id = checkbox;
  val = rel(id);
  //alert('IDO: '+id+'-'+val);
  if (val == 'false') {
    if_bel('cadForm:pos_loaded_ckb_b_var', 'S');
    if_bel('cadForm:pos_loaded_ckb_b_var_bol', 'true');
    ckbSelLoaded__b('cadForm:pos_loaded_ckb_b_var');
  } else {
    if_bel('cadForm:pos_loaded_ckb_b_var', 'N');
    if_bel('cadForm:pos_loaded_ckb_b_var_bol', 'false');
  }
}
function cbxSelOffload__a(checkbox) {
  id = checkbox;
  val = rel(id);
  //alert('IDO: '+id+'-'+val);
  if (val == 'false') {
    if_bel('cadForm:pos_load_ckb_a_var', 'S');
    if_bel('cadForm:pos_load_ckb_a_var_bol', 'true');
    ckbSelLoad__a('cadForm:pos_load_ckb_a_var');
  } else {
    if_bel('cadForm:pos_load_ckb_a_var', 'N');
    if_bel('cadForm:pos_load_ckb_a_var_bol', 'false');
  }
}
function ckbSelOffload__a(checkbox) {
  id = checkbox;
  val = rel(id);
  //alert('IDO: '+id);
  if (val == 'false') {
    if_bel('cadForm:pos_load_ckb_a_var', 'true');
    ckbSelLoad__a('cadForm:pos_load_ckb_a_var');
  } else {
    if_bel('cadForm:pos_load_ckb_a_var', 'false');
  }
}

function ckbSelIni__a(checkbox) {
  id = checkbox;
  val = rel(id);
  path= 'cadForm:dtDados:';
  path_ot = ':chk__a';

  i = 0;
  chk_w = path+i+path_ot;
  if (el(chk_w)) {
    i = 0;
  } else {
    i = '';
  }
  ins_a = i;
  if (el(path + i + ':sel_vhlst_sq_vhcle__a')) {
    ins__a = rel(path + i + ':sel_vhlst_sq_vhcle__a');
  } else {
    ins__a = '1';
  }
  //alert('INI: '+ins_a);

  if (val == 'false') {
    if_bel('cadForm:pos_ins_end_ckb_a_var', 'true');
    if_el('cadForm:pos_ins_a_var', '');
    ckbSelFin__a('cadForm:pos_ins_end_ckb_a_var');
  } else {
    if_bel('cadForm:pos_ins_end_ckb_a_var', 'false');
    if_bel('cadForm:pos_ins_pos_ckb_a_var', 'false');
    if_el('cadForm:pos_ins_a_var', ins__a);
  }
  ckbSelIns__a('cadForm:pos_ins_pos_ckb_a_var');
}

function ckbSelFin__a(checkbox) {
  id = checkbox;
  val = rel(id);
  path= 'cadForm:dtDados:';
  path_ot = ':chk__a';

  flag = true;
  i = 0;
  ins__a = '1';
  while (flag) {
    chk_w = path+i+path_ot;
    if (el(chk_w)) {
      if (el(path + i + ':sel_vhlst_sq_vhcle__a')) {
        ins__a = rel(path + i + ':sel_vhlst_sq_vhcle__a');
        ins__a = parseInt(ins__a) + 1;
      }
      i++;
    } else {
      flag = false;
    }
  }
  ins_a = i;
  //alert('FIN: '+ins_a);

  if (val == 'false') {
    if_bel('cadForm:pos_ins_ini_ckb_a_var', 'true');
    if_el('cadForm:pos_ins_a_var', '');
    ckbSelIni__a('cadForm:pos_ins_ini_ckb_a_var');
  } else {
    if_bel('cadForm:pos_ins_ini_ckb_a_var', 'false');
    if_bel('cadForm:pos_ins_pos_ckb_a_var', 'false');
    if_el('cadForm:pos_ins_a_var', ins__a);
  }
  ckbSelIns__a('cadForm:pos_ins_pos_ckb_a_var');
}

function ckbSelIns__a(checkbox) {
  id = checkbox;
  val = rel(id);
  path= 'cadForm:dtDados:';
  path_ot = ':chk__a';

  // hoverDatatableRow
  var previousClass = null;
  var trs = document.getElementById('cadForm:dtDados').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  for (var i = 0; i < trs.length; i++) {
    trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
    trs[i].onmouseout = function() { this.className=previousClass };
  }

  flag = true;
  i = 0;
  while (flag) {
    chk_w = path+i+path_ot;
    flag = if_bel(chk_w, 'false');

    if (flag) {
      // hoverDatatableRow
      trs[i].className = originalClass[i];
    }

    i++;
  }

  if (val == 'false') {
    el('cadForm:dtDados_tt:chk_sel__a_tt').style.background="";
    fin_for = parseInt(fin_a) + 1;
    for (j = ini_a; j < fin_for; j++) {
      chk_w = path+j+path_ot;
      if_bel(chk_w, 'true');

      // hoverDatatableRow
      trs[j].className = 'trs9';
      trs[j].onmouseover = function() { this.className='trh9' };
      trs[j].onmouseout = function() { this.className='trs9' };

    }
  } else {
    el('cadForm:dtDados_tt:chk_sel__a_tt').style.background="#FFE4D0";
    chk_w = path+ins_a+path_ot;
    chk_w_flag = if_bel(chk_w, 'true');

    // hoverDatatableRow
    if (chk_w_flag) {
       trs[ins_a].className = 'trs9';
       trs[ins_a].onmouseover = function() { this.className='trh9' };
       trs[ins_a].onmouseout = function() { this.className='trs9' };
     }

    if_bel('cadForm:pos_ins_ini_ckb_a_var', 'false');
    if_bel('cadForm:pos_ins_end_ckb_a_var', 'false');
  }
}

function ckbSelList__a() {
    flag = true;
    i = 0;
    sellist = 'cadForm:selection_list_var';
    pathx = 'cadForm:dtDados:';
    path_otx = ':chk__a';
    seqx = ':sel_trnrt_sq_loca_in_route__a';
    listx = ''; seqw = '';
    //seqn = rel(seqw);
    //alert ('seqn:'+seqn);
    while (flag) {
      chk_w = rel(pathx + i + ':chk__a');
      //alert('chk_w: '+chk_w);
      seqw = pathx+i+seqx; 
      if (chk_w == 'true') {
          listx = listx + rel(seqw)+';';
          //alert('listx: '+listx);
      } 	  
      i++;
      if (el(pathx+i+path_otx)) {
        flag = true;
      } else {
        flag = false;
      }
    }
    if_el('cadForm:selection_list_var', listx);
    //alert('finallist: '+rel('cadForm:selection_list_var'));
}

function ckbCleAll__a() {
}
function ckbSelAll__a(checkbox) {
  id = checkbox;
  val = rel(id);
  chk_path = id.slice(0, id.lastIndexOf("_tt:"));
  //alert(chk_path);
  chk_name = id.slice(id.lastIndexOf(":")+1, id.length);
  //alert('chk_name: '+chk_name);
  path= id.slice(0,id.search('_tt:chk'))+':';
  //alert('path: '+path);
  path_ot = ':'+chk_name.replace('_sel', '');
  path_ot = path_ot.replace('_tt', '');
  //alert('path_ot: '+path_ot);
  el('cadForm:dtDados_tt:chk_sel__a_tt').style.background="";

  // hoverDatatableRow
  var previousClass = null;
  //var trs = document.getElementById('cadForm:dtDados').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  var trs = null;
  var dtTable = el('cadForm:dtDados');
  if (dtTable) {
    trs =  dtTable.getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    for (var i = 0; i < trs.length; i++) {
      trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
      trs[i].onmouseout = function() { this.className=previousClass };
    }
  }

  flag = true;
  i = 0;
  if (if_bel(path+i+path_ot, val)) {
    while (flag) {

      chk_w = path+i+path_ot;
      //alert('chk_w: '+chk_w);
      flag = if_bel(chk_w, val);

      if (val == 'true') {
        //alert('val true');
        ini_a = 0;
        fin_a = i;
        ini__a = rel(path + 0 + ':sel_vhlst_sq_vhcle__a');
        if (el(path + i + ':sel_vhlst_sq_vhcle__a')) {
          fin__a = rel(path + i + ':sel_vhlst_sq_vhcle__a');
        }

        // hoverDatatableRow
        if (flag) {
          trs[i].className = 'trs9';
          trs[i].onmouseover = function() { this.className='trh9' };
          trs[i].onmouseout = function() { this.className='trs9' };
        }

      } else {
        //alert('val false');
        ini_a = '';
        fin_a = '';
        ins_a = '';
        ini__a = '';
        fin__a = '';
        ins__a = '';

        if (flag) {
          // hoverDatatableRow
          trs[i].className = originalClass[i];
        }

      }

      i++;
    }
    //if (fin__a.length == 0 ) { fin__a = ini__a; } 
    if_el('cadForm:pos_ini_a_var', ini__a);
    if_el('cadForm:pos_fin_a_var', fin__a);
    if_bel('cadForm:pos_ins_ini_ckb_b_var', 'false');
    if_bel('cadForm:pos_ins_end_ckb_b_var', 'false');
    if_el('cadForm:ord_cfson_a_var', '');
    if_el('cadForm:pos_ins_b_var', '');
    if_bel('cadForm:pos_ins_pos_ckb_b_var', 'false');
    
    //alert('ini_a: '+ini_a);alert('fin_a: '+fin_a);

    maplist_a_var_js = rel('cadForm:maplist_a_var');
    //alert('maplist_a_var_js: '+maplist_a_var_js);
    maplist_a_var_js_full = '';
    for (c = 0; c < maplist_a_var_js.length; c++) {
      if (c >= ini_a && c < fin__a) {
        //alert('intervalo');
        maplist_a_var_js_full = maplist_a_var_js_full + '1';
      } else {
        //alert('pontas');
        maplist_a_var_js_full = maplist_a_var_js_full + '0';
      }
    }
    //alert('maplist_a_var_js_full: '+maplist_a_var_js_full);
    if_el('cadForm:maplist_a_var', maplist_a_var_js_full);

    if (strbtn == 'VhblkStatusUpdate_a' ||
        strbtn == 'VhblkSidingCustomerDelivery_a' ||
        strbtn == 'VhblkSidingMaintenanceDeliver_a') {

      ini_a_tp = '';
      ini_a_tp_desc = '';
      dif_ini_a_tp = false;
      if(el(path + ini_a + ':sel_vhcle_tp__a')) {
        ini_a_tp = rel(path + ini_a + ':sel_vhcle_tp__a');
        ini_a_tp_desc = el(path + ini_a + ':sel_vhcle_tp__a').title;
      }

      fin_for = parseInt(fin_a);
      for (j = ini_a; j < fin_for; j++) {
        if(rel(path + j + ':sel_vhcle_tp__a') != ini_a_tp && dif_ini_a_tp == false) {
          //alert('DIF');
          dif_ini_a_tp = true;
        }
      }
      if (ini_a == '') {
        //alert('INI_A');
        if_el('cadForm:vhcle_tp_a_var', '');
        if_el('cadForm:vhcle_tp_a_var_desc', '');
      }
      if (dif_ini_a_tp == true) {
        //alert('DIFFE');
        if_el('cadForm:vhcle_tp_a_var', '');
        if_el('cadForm:vhcle_tp_a_var_desc', '');
        alert(rel('cadForm:sys_dif_chkbox'));
      } else {
        //alert('EQUAL');
        if_el('cadForm:vhcle_tp_a_var', ini_a_tp);
        if_el('cadForm:vhcle_tp_a_var_desc', ini_a_tp_desc);
      }
    }

  }
}

function ckbSel__a(checkbox) {
    //alert('strbtn: '+strbtn);
    if (strbtn.indexOf('_b') >= 0 ) {
        //alert('En este Bloque no hay botones activos en el momento.');
        alert(rel('cadForm:msg_noActiveButtonsInThisBlock'));

        if_el(checkbox.id, 'false');
    } else
	if (strbtn.indexOf('VhcleQueryListparm_a') >= 0 ) {
        //alert('Selecione un boton de Operación para hacer una seleción');
        alert(rel('cadForm:msg_selectAnOperationButton'));
        if_el(checkbox.id, 'false');
    } else
	if (strbtn == 'VhblkStatusUpdate_a') {
		//var r = confirm("Press a button!");
		//if (r == true) {
		//    txt = "You pressed OK!";
		//} else {
		//    txt = "You pressed Cancel!";
		//}

		if (rrr == true) {
            //alert('cont');
			ckbSelContSt__a(checkbox);
		} else {
            //alert('disc');
			ckbSelDisc__a(checkbox);
		}

		//alert('ckbSelDisc__a');
        //ckbSelDisc__a(checkbox);
		//ckbSelContSt__a(checkbox);
	} else {
      //alert('ckbSelCont__a');
      ckbSelCont__a(checkbox);
  }
}

function ckbSelDisc__a(checkbox) {
  id = checkbox.id;
  val = rel(checkbox.id);
  chk_path = id.slice(0, id.lastIndexOf(":"));
  //alert(chk_path);
  chk_name = id.slice(id.lastIndexOf(":")+1, id.length);
  //alert('chk_name: '+chk_name);
  path= checkbox.id.slice(0,checkbox.id.search('chk'));
  number= checkbox.id.slice(0,checkbox.id.search(':chk'));
  //alert(number);
  path_in = number.slice(0,number.lastIndexOf(":")+1);
  path_ot = ':chk__a';
  number= number.slice(number.lastIndexOf(":")+1,number.length);
  numbsq= rel(path_in + number + ':sel_vhlst_sq_vhcle__a');
  //alert(number);
  //alert(numbsq);

  // hoverDatatableRow
  var previousClass = null;
  var trs = document.getElementById('cadForm:dtDados').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  for (var i = 0; i < trs.length; i++) {
    trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
    trs[i].onmouseout = function() { this.className=previousClass };
  }

  if (rel('cadForm:pos_ins_pos_ckb_a_var') == 'true') {
    //alert('true');
    flagx = true;
    ix = 0;
    while (flagx) {
      chk_w = path_in+ix+path_ot;
      //alert('chk_w: '+chk_w);
      flagx = if_bel(chk_w, 'false');
      ix++;
    }
    if (val == 'false') {
      chk_w = path+numbsq+path_ot;
      if_bel(chk_w, 'false');
      ins_a = '';
      if_el('cadForm:pos_ins_a_var', ins_a);
    } else {
      ins_a = number;
      ins__a = numbsq;
      if_el('cadForm:pos_ins_a_var', parseInt(ins__a));
      chk_w = path_in+ins_a+path_ot;
      if_bel(chk_w, 'true');
    }
  } else {
    //alert('false');

    //alert('id: '+id);
    //alert('val: '+val);
    //alert('number: '+number);
    //alert('path: '+path);
    //alert('path_in: '+path_in);
    //alert('path_ot: '+path_ot);
    if (val == 'true') {
      //alert('val true');

      // hoverDatatableRow
      trs[number].className = 'trs9';
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className='trs9' };

      if (parseInt(number) > parseInt(ini_a)) {
        fin_a = number;
        fin__a = numbsq;
      } else if (parseInt(number) < parseInt(ini_a)) {
        ini_a = number;
        ini__a = numbsq;
      } else {
        ini_a = number;
        fin_a = number;
        ini__a = numbsq;
        fin__a = numbsq;
      }
      if_el('cadForm:pos_ini_a_var', parseInt(ini__a));
      if_el('cadForm:pos_fin_a_var', parseInt(fin__a));
    } else {
      //alert('val false');

      // hoverDatatableRow
      trs[number].className = originalClass[number];
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className=originalClass[number] };

      if (parseInt(number) > parseInt(ini_a)) {
        fin_a = number -1;
        fin__a = rel(path_in + fin_a + ':sel_vhlst_sq_vhcle__a');
        if_el('cadForm:pos_fin_a_var', parseInt(fin__a));
      } else if (parseInt(number) == parseInt(ini_a)) {
        ini_a = '';
        fin_a = '';
        ini__a = '';
        fin__a = '';
        if_el('cadForm:pos_ini_a_var', ini_a);
        if_el('cadForm:pos_fin_a_var', fin_a);
        if_el('cadForm:dtDados_tt:chk_sel__a_tt', 'false');
      }
    }
    //alert('ini_a: '+ini_a);alert('fin_a: '+fin_a);

    flag = true;
    frtf = true;
    i = 0;
    while (flag) {
      i++;
      if (el(path_in+i+path_ot)) {
        flag = true;
      } else {
        flag = false;
      }
      if (rel(path_in+i+path_ot) == 'true') {
        if (frtf == true) {
          if_el('cadForm:pos_ini_a_var', rel(path_in + i + ':sel_vhlst_sq_vhcle__a'));
          frtf = false;
        } else {
          if_el('cadForm:pos_fin_a_var', rel(path_in + i + ':sel_vhlst_sq_vhcle__a'));
        }
      }
    }

    ckbSelmaplist__a(numbsq, val);
    //alert('maplist_a_var: '+rel('cadForm:maplist_a_var'));
    chbSelType__a();

  }
}

function ckbSelCont__a(checkbox) {
  id = checkbox.id;
  val = rel(checkbox.id);
  chk_path = id.slice(0, id.lastIndexOf(":"));
  //alert(chk_path);
  chk_name = id.slice(id.lastIndexOf(":")+1, id.length);
  //alert('chk_name: '+chk_name);
  path= checkbox.id.slice(0,checkbox.id.search('chk'));
  number= checkbox.id.slice(0,checkbox.id.search(':chk'));
  //alert(number);
  path_in = number.slice(0,number.lastIndexOf(":")+1);
  path_ot = ':chk__a';
  number= number.slice(number.lastIndexOf(":")+1,number.length);
  numbsq= rel(path_in + number + ':sel_vhlst_sq_vhcle__a');
  //alert(number);
  //alert(numbsq);

  // hoverDatatableRow
  var previousClass = null;
  var trs = document.getElementById('cadForm:dtDados').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  for (var i = 0; i < trs.length; i++) {
    trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
    trs[i].onmouseout = function() { this.className=previousClass };
  }

  if (rel('cadForm:pos_ins_pos_ckb_a_var') == 'true') {
    //alert('true');
    flagx = true;
    ix = 0;
    while (flagx) {
      chk_w = path_in+ix+path_ot;
      //alert('chk_w: '+chk_w);
      flagx = if_bel(chk_w, 'false');

      if (flagx) {
        // hoverDatatableRow
        trs[ix].className = originalClass[ix];
      }

      ix++;
    }
    if (val == 'false') {
      chk_w = path+numbsq+path_ot;
      if_bel(chk_w, 'false');
      ins_a = '';
      if_el('cadForm:pos_ins_a_var', ins_a);

      // hoverDatatableRow
      trs[number].className = originalClass[number];
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className=originalClass[number] };

    } else {
      ins_a = number;
      ins__a = numbsq;
      if_el('cadForm:pos_ins_a_var', parseInt(ins__a));
      chk_w = path_in+ins_a+path_ot;
      if_bel(chk_w, 'true');

      // hoverDatatableRow
      trs[number].className = 'trs9';
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className='trs9' };

    }
  } else {
    //alert('false');

    //alert('id: '+id);
    //alert('val: '+val);
    //alert('number: '+number);
    //alert('path: '+path);
    //alert('path_in: '+path_in);
    //alert('path_ot: '+path_ot);
    if (val == 'true') {
      //alert('val true');

      // hoverDatatableRow
      trs[number].className = 'trs9';
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className='trs9' };

      if (parseInt(number) > parseInt(ini_a)) {
        fin_a = number;
        fin__a = numbsq;
      } else if (parseInt(number) < parseInt(ini_a)) {
        ini_a = number;
        ini__a = numbsq;
      } else {
        ini_a = number;
        fin_a = number;
        ini__a = numbsq;
        fin__a = numbsq;
      }
      if_el('cadForm:pos_ini_a_var', parseInt(ini__a));
      if_el('cadForm:pos_fin_a_var', parseInt(fin__a));
    } else {
      //alert('val false');

      // hoverDatatableRow
      trs[number].className = originalClass[number];
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className=originalClass[number] };

      if (parseInt(number) > parseInt(ini_a)) {
        fin_a = number -1;
        fin__a = rel(path_in + fin_a + ':sel_vhlst_sq_vhcle__a');
        if_el('cadForm:pos_fin_a_var', parseInt(fin__a));
      } else if (parseInt(number) == parseInt(ini_a)) {
        ini_a = '';
        fin_a = '';
        ini__a = '';
        fin__a = '';
        if_el('cadForm:pos_ini_a_var', ini_a);
        if_el('cadForm:pos_fin_a_var', fin_a);
        if_el('cadForm:dtDados_tt:chk_sel__a_tt', 'false');
      }
    }
    //alert('ini_a: '+ini_a);alert('fin_a: '+fin_a);

    flag = true;
    i = 0;
    while (flag) {
      chk_w = path_in+i+path_ot;
      //alert('chk_w: '+chk_w);
      flag = if_bel(chk_w, 'false');

      if (flag) {
        // hoverDatatableRow
        trs[i].className = originalClass[i];
      }

      i++;
    }

    fin_for = parseInt(fin_a) + 1;
    //alert('fin_for: '+fin_for);
    for (j = ini_a; j < fin_for; j++) {
      //alert('SUCESS: '+j);
      chk_w = path_in+j+path_ot;
      //alert('chk_w: '+chk_w);
      if_bel(chk_w, 'true');

      // hoverDatatableRow
      trs[j].className = 'trs9';
      trs[j].onmouseover = function() { this.className='trh9' };
      trs[j].onmouseout = function() { this.className='trs9' };

    }

    flag = true;
    i = 0;
    while (flag) {
      ckbSelmaplist__a(rel(path_in + i + ':sel_vhlst_sq_vhcle__a'), rel(path_in + i + path_ot));
      chk_w = path_in+i+path_ot;
      i++;
      if (el(path_in+i+path_ot)) {
        flag = true;
      } else {
        flag = false;
      }
    }
    //alert('maplist_a_var: '+rel('cadForm:maplist_a_var'));
    chbSelType__a();

  }
}

function ckbSelmaplist__a(nsq, vlc) {
  //alert('nsq: '+nsq);alert('vlc: '+vlc);
  if_el('cadForm:dtDados_tt:chk_sel__a_tt', 'false');
  el('cadForm:dtDados_tt:chk_sel__a_tt').style.background="#FFE4D0";

  maplist_a_var_js = rel('cadForm:maplist_a_var');
  //alert('maplist_a_var_js: '+maplist_a_var_js);
  maplist_a_var_js_ini = maplist_a_var_js.substring(0,nsq-1);
  //alert('maplist_a_var_js_ini: '+maplist_a_var_js_ini);
  maplist_a_var_js_sel = maplist_a_var_js.substring(nsq-1,nsq);
  //alert('maplist_a_var_js_sel: '+maplist_a_var_js_sel);
  maplist_a_var_js_fin = maplist_a_var_js.substring(nsq,maplist_a_var_js.length);
  //alert('maplist_a_var_js_ini: '+maplist_a_var_js_fin);

  if (vlc == 'true') {
    maplist_js_val = '1';
  } else {
    maplist_js_val = '0';
  }
  maplist_a_var_js_full = maplist_a_var_js_ini + maplist_js_val + maplist_a_var_js_fin;
  //alert('maplist_a_var_js_full: '+maplist_a_var_js_full);
  if_el('cadForm:maplist_a_var', maplist_a_var_js_full);
}

function chbSelType__a() {
    fin_for = parseInt(fin_a) + 1;
    if (strbtn == 'VhblkStatusUpdate_a' ||
        strbtn == 'VhblkSidingCustomerDelivery_a' ||
        strbtn == 'VhblkSidingMaintenanceDeliver_a') {

      ini_a_tp = '';
      ini_a_tp_desc = '';
      dif_ini_a_tp = false;
      if(el(path_in + ini_a + ':sel_vhcle_tp__a')) {
        ini_a_tp = rel(path_in + ini_a + ':sel_vhcle_tp__a');
        ini_a_tp_desc = el(path_in + ini_a + ':sel_vhcle_tp__a').title;
      }

      for (j = ini_a; j < fin_for; j++) {
        if(rel(path_in + j + ':sel_vhcle_tp__a') != ini_a_tp && dif_ini_a_tp == false) {
          //alert('DIF');
          dif_ini_a_tp = true;
        }
      }
      if (ini_a == '') {
        //alert('INI_A');
        if_el('cadForm:vhcle_tp_a_var', '');
        if_el('cadForm:vhcle_tp_a_var_desc', '');
      } else if (dif_ini_a_tp == true) {
        //alert('DIFFE');
        if_el('cadForm:vhcle_tp_a_var', '');
        if_el('cadForm:vhcle_tp_a_var_desc', '');
        alert(rel('cadForm:sys_dif_chkbox'));
      } else {
        //alert('EQUAL');
        if_el('cadForm:vhcle_tp_a_var', ini_a_tp);
        if_el('cadForm:vhcle_tp_a_var_desc', ini_a_tp_desc);
      }
    }
}

/* ###################################################### */

var ini_b = null;
var ini_b_bak = null;
var fin_b = null;
var ins_b = null;

var ini__b = null;
var fin__b = null;
var ins__b = null;

function ckbValSel__b() {
  path= 'cadForm:dtDados1:';
  path_ot = ':chk__b';

  i = 0;
  f_find = path+i+path_ot;
  if (el(f_find)) {
    return true;
  } else {
    if (rel('cadForm:dtDados1_rc_var') == '888') {
      return true;
    } else {
      alert(rel('cadForm:sys_load_table_b'));
      return false;
    }
  }
}

function ckbSelSch__b(value) {
  path= 'cadForm:dtDados1:';
  path_ot = ':sel_vhcle_nb__b';

  flag = true;
  i = 0;
  while (flag) {
    f_find = path+i+path_ot;
    if (el(f_find)) {
      find_a = rel(f_find);
      if (find_a == value) {
        el(f_find).style.background="#00FFFF";
        fcf(f_find);
        flag = false;
      } else {
        el(f_find).style.background="";
      }
      i++;
    } else {
      flag = false;
    }
  }
}

function ckbSelIni__b(checkbox) {
  id = checkbox;
  val = rel(id);
  path= 'cadForm:dtDados1:';
  path_ot = ':chk__b';

  i = 0;
  chk_w = path+i+path_ot;
  if (el(chk_w)) {
    i = 0;
  } else {
    i = '';
  }
  ins_b = i;
  if (el(path + i + ':sel_vhlst_sq_vhcle__b')) {
    ins__b = rel(path + i + ':sel_vhlst_sq_vhcle__b');
  } else {
    ins__b = '1';
  }
  //alert('INI: '+ins_b);

  if (val == 'false') {
    if_bel('cadForm:pos_ins_end_ckb_b_var', 'true');
    if_el('cadForm:pos_ins_b_var', '');
    ckbSelFin__b('cadForm:pos_ins_end_ckb_b_var');
  } else {
    if_bel('cadForm:pos_ins_end_ckb_b_var', 'false');
    if_bel('cadForm:pos_ins_pos_ckb_b_var', 'false');
    if_el('cadForm:pos_ins_b_var', ins__b);
  }
  ckbSelIns__b('cadForm:pos_ins_pos_ckb_b_var');
}

function ckbSelFin__b(checkbox) {
  id = checkbox;
  val = rel(id);
  path= 'cadForm:dtDados1:';
  path_ot = ':chk__b';

  flag = true;
  i = 0;
  ins__b = '1';
  while (flag) {
    chk_w = path+i+path_ot;
    if (el(chk_w)) {
      if (el(path + i + ':sel_vhlst_sq_vhcle__b')) {
        ins__b = rel(path + i + ':sel_vhlst_sq_vhcle__b');
        ins__b = parseInt(ins__b) + 1;
      }
      i++;
    } else {
      flag = false;
    }
  }
  ins_b = i;
  //alert('FIN: '+ins_b);

  if (val == 'false') {
    if_bel('cadForm:pos_ins_ini_ckb_b_var', 'true');
    if_el('cadForm:pos_ins_b_var', '');
    ckbSelIni__b('cadForm:pos_ins_ini_ckb_b_var');
  } else {
    if_bel('cadForm:pos_ins_ini_ckb_b_var', 'false');
    if_bel('cadForm:pos_ins_pos_ckb_b_var', 'false');
    if_el('cadForm:pos_ins_b_var', ins__b);
  }
  ckbSelIns__b('cadForm:pos_ins_pos_ckb_b_var');
}

function ckbSelIns__b(checkbox) {
  id = checkbox;
  val = rel(id);
  path= 'cadForm:dtDados1:';
  path_ot = ':chk__b';

  // hoverDatatableRow
  var previousClass = null;
  var trs = document.getElementById('cadForm:dtDados1').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  for (var i = 0; i < trs.length; i++) {
    trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
    trs[i].onmouseout = function() { this.className=previousClass };
  }

  flag = true;
  i = 0;
  while (flag) {
    chk_w = path+i+path_ot;
    flag = if_bel(chk_w, 'false');

    if (flag) {
      // hoverDatatableRow
      trs[i].className = originalClass[i];
    }

    i++;
  }

  if (val == 'false') {
    el('cadForm:dtDados_tt1:chk_sel__b_tt').style.background="";
    fin_for = parseInt(fin_b) + 1;
    for (j = ini_b; j < fin_for; j++) {
      chk_w = path+j+path_ot;
      if_bel(chk_w, 'true');

      // hoverDatatableRow
      trs[j].className = 'trs9';
      trs[j].onmouseover = function() { this.className='trh9' };
      trs[j].onmouseout = function() { this.className='trs9' };

    }
  } else {
    el('cadForm:dtDados_tt1:chk_sel__b_tt').style.background="#FFE4D0";
    chk_w = path+ins_b+path_ot;
    chk_w_flag = if_bel(chk_w, 'true');

    // hoverDatatableRow
    if (chk_w_flag) {
       trs[ins_b].className = 'trs9';
       trs[ins_b].onmouseover = function() { this.className='trh9' };
       trs[ins_b].onmouseout = function() { this.className='trs9' };
     }

    if_bel('cadForm:pos_ins_ini_ckb_b_var', 'false');
    if_bel('cadForm:pos_ins_end_ckb_b_var', 'false');
  }
}

function ckbSelAll__b(checkbox) {
  id = checkbox;
  val = rel(id);
  chk_path = id.slice(0, id.lastIndexOf("_tt1:"));
  //alert(chk_path);
  chk_name = id.slice(id.lastIndexOf(":")+1, id.length);
  //alert('chk_name: '+chk_name);
  path= id.slice(0,id.search('_tt1:chk'))+'1:';
  //alert('path: '+path);
  path_ot = ':'+chk_name.replace('_sel', '');
  path_ot = path_ot.replace('_tt', '');
  //alert('path_ot: '+path_ot);
  el('cadForm:dtDados_tt1:chk_sel__b_tt').style.background="";

  // hoverDatatableRow
  var previousClass = null;
  //var trs = document.getElementById('cadForm:dtDados1').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  var trs = null;
  var dtTable = el('cadForm:dtDados1');
  if (dtTable) {
    trs =  dtTable.getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    for (var i = 0; i < trs.length; i++) {
      trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
      trs[i].onmouseout = function() { this.className=previousClass };
    }
  }

  flag = true;
  i = 0;
  if (if_bel(path+i+path_ot, val)) {
    while (flag) {

      chk_w = path+i+path_ot;
      //alert('chk_w: '+chk_w);
      flag = if_bel(chk_w, val);

      if (val == 'true') {
        //alert('val true');
        ini_b = 0;
        fin_b = i;
        ini__b = rel(path + 0 + ':sel_vhlst_sq_vhcle__b');
        if (el(path + i + ':sel_vhlst_sq_vhcle__b')) {
          fin__b = rel(path + i + ':sel_vhlst_sq_vhcle__b');
        }

        // hoverDatatableRow
        if (flag) {
          trs[i].className = 'trs9';
          trs[i].onmouseover = function() { this.className='trh9' };
          trs[i].onmouseout = function() { this.className='trs9' };
        }

      } else {
        //alert('val false');
        ini_b = '';
        fin_b = '';
        ins_b = '';
        ini__b = '';
        fin__b = '';
        ins__b = '';

        if (flag) {
          // hoverDatatableRow
          trs[i].className = originalClass[i];
        }

      }

      i++;
    }
    if_el('cadForm:pos_ini_b_var', ini__b);
    if_el('cadForm:pos_fin_b_var', fin__b);
    if_bel('cadForm:pos_ins_ini_ckb_a_var', 'false');
    if_bel('cadForm:pos_ins_end_ckb_a_var', 'false');
    if_el('cadForm:ord_cfson_b_var', '');
    if_el('cadForm:pos_ins_a_var', '');
    if_bel('cadForm:pos_ins_pos_ckb_a_var', 'false');
    //alert('ini_b: '+ini_b);alert('fin_b: '+fin_b);

    maplist_b_var_js = rel('cadForm:maplist_b_var');
    //alert('maplist_b_var_js: '+maplist_b_var_js);
    maplist_b_var_js_full = '';
    for (c = 0; c < maplist_b_var_js.length; c++) {
      if (c >= ini_b && c < fin__b) {
        //alert('intervalo');
        maplist_b_var_js_full = maplist_b_var_js_full + '1';
      } else {
        //alert('pontas');
        maplist_b_var_js_full = maplist_b_var_js_full + '0';
      }
    }
    //alert('maplist_b_var_js_full: '+maplist_b_var_js_full);
    if_el('cadForm:maplist_b_var', maplist_b_var_js_full);

    if (strbtn == 'VhblkStatusUpdate_b' ||
        strbtn == 'VhblkSidingCustomerReceive_b' ||
        strbtn == 'VhblkSidingMaintenanceReceive_b') {

      ini_b_tp = '';
      ini_b_tp_desc = '';
      dif_ini_b_tp = false;
      if(el(path + ini_b + ':sel_vhcle_tp__b')) {
        ini_b_tp = rel(path + ini_b + ':sel_vhcle_tp__b');
        ini_b_tp_desc = el(path + ini_b + ':sel_vhcle_tp__b').title;
      }

      fin_for = parseInt(fin_b);
      for (j = ini_b; j < fin_for; j++) {
        if(rel(path + j + ':sel_vhcle_tp__b') != ini_b_tp && dif_ini_b_tp == false) {
          //alert('DIF');
          dif_ini_b_tp = true;
        }
      }
      if (ini_b == '') {
        //alert('INI_B');
        if_el('cadForm:vhcle_tp_b_var', '');
        if_el('cadForm:vhcle_tp_b_var_desc', '');
      }
      if (dif_ini_b_tp == true) {
        //alert('DIFFE');
        if_el('cadForm:vhcle_tp_b_var', '');
        if_el('cadForm:vhcle_tp_b_var_desc', '');
        alert(rel('cadForm:sys_dif_chkbox'));
      } else {
        //alert('EQUAL');
        if_el('cadForm:vhcle_tp_b_var', ini_b_tp);
        if_el('cadForm:vhcle_tp_b_var_desc', ini_b_tp_desc);
      }
    }

  }
}

function ckbSel__b(checkbox) {
  //alert('checkbox: '+checkbox.id);
  //alert('strbtn: '+strbtn);
  //if (strbtn.indexOf('VhcleQueryListparm_b') >= 0) {
  if (strbtn.indexOf('_a') >= 0 ) {
      //alert('En este Bloque no hay botones activos en el momento.');
      alert(rel('cadForm:msg_noActiveButtonsInThisBlock'));
      if_el(checkbox.id, 'false');
  } else
  if (strbtn.indexOf('VhcleQueryListparm_b') >= 0 || strbtn.indexOf('_a') >= 0 ) {
	  //alert('Selecione un boton de Operación para hacer una seleción');
      alert(rel('cadForm:msg_selectAnOperationButton'));
	  if_el(checkbox.id, 'false');
  } else
	  if (strbtn == 'VhblkStatusUpdate_b' ) {
			if (rrr == true) {
	            //alert('cont');
				ckbSelContSt__b(checkbox);
			} else {
	            //alert('disc');
				ckbSelDisc__b(checkbox);
			}
		  //ckbSelContSt__b(checkbox);
  } else
  if ( strbtn == 'WgblkOffloading_b' ||
      strbtn == 'VhblkSidingCustomerReturn_b' ||
      strbtn == 'VhblkSidingCustomerDisposal_b' ||
      strbtn == 'VhblkTrainDetach_b') {
      //alert('ckbSelDisc__b');
      ckbSelDisc__b(checkbox);
  } else {
      //alert('ckbSelCont__b');
      ckbSelCont__b(checkbox);
  }
}

function ckbSelDisc__a(checkbox) {
    id = checkbox.id;
	val = rel(checkbox.id);
	chk_path = id.slice(0, id.lastIndexOf(":"));
	//alert(chk_path);
	chk_name = id.slice(id.lastIndexOf(":")+1, id.length);
	//alert('chk_name: '+chk_name);
    path= checkbox.id.slice(0,checkbox.id.search('chk'));
    number= checkbox.id.slice(0,checkbox.id.search(':chk'));
    //alert(number);
    path_in = number.slice(0,number.lastIndexOf(":")+1);
    path_ot = ':chk__a';
    number= number.slice(number.lastIndexOf(":")+1,number.length);
    numbsq= rel(path_in + number + ':sel_vhlst_sq_vhcle__a');

    // hoverDatatableRow
    var previousClass = null;
    var trs = document.getElementById('cadForm:dtDados').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    for (var i = 0; i < trs.length; i++) {
        trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
	    trs[i].onmouseout = function() { this.className=previousClass };
    }
    if (rel('cadForm:pos_ins_pos_ckb_a_var') == 'true') {
        //alert('true');
	    flagx = true;
	    ix = 0;
	    while (flagx) {
	      chk_w = path_in+ix+path_ot;
	      //alert('chk_w: '+chk_w);
	      flagx = if_bel(chk_w, 'false');
	      ix++;
	    }
	    if (val == 'false') {
	      chk_w = path+numbsq+path_ot;
	      if_bel(chk_w, 'false');
	      ins_a = '';
	      if_el('cadForm:pos_ins_a_var', ins_a);
	    } else {
	      ins_a = number;
	      ins__a = numbsq;
	      if_el('cadForm:pos_ins_a_var', parseInt(ins__a));
	      chk_w = path_in+ins_a+path_ot;
	      if_bel(chk_w, 'true');
	    }
    } else {
	    //alert('false');

	    //alert('id: '+id);
	    //alert('val: '+val);
	    //alert('number: '+number);
	    //alert('path: '+path);
	    //alert('path_in: '+path_in);
	    //alert('path_ot: '+path_ot);
	    if (val == 'true') {
	        //alert('val true');

	    	// Handle Vehicle Type Selection ------------------------
	        if(el('cadForm:vhcle_tp_a_var')) { // Get Selected Type
	            ini_a_tp = rel('cadForm:vhcle_tp_a_var');
	            ini_a_tp_desc = el('cadForm:vhcle_tp_a_var_desc').title;
	        }
	        // Get table a Selected Type
	        //alert('checkbox.id: '+checkbox.id);
		    start = checkbox.id.indexOf('ados:')+5; end = checkbox.id.indexOf(':chk');
			pos = checkbox.id.substring(start,end);
			//alert('pos: '+pos);
		    ini_a_tp_tab = rel(path_in + pos + ':sel_vhcle_tp__a');
		    ini_a_tp_tab_desc = el(path_in + pos + ':sel_vhcle_tp__a').title;
		    if (ini_a_tp_tab.indexOf('/') >= 0) {
		        ini_a_tp_tab = ini_a_tp_tab.substring(0,ini_a_tp_tab.indexOf('/')); 
			}
		    //alert('bb ini_b_tp_tab: '+ini_b_tp_tab+' ini_b_tp: '+ini_b_tp );
	        // If selected vehicle type is dif from selected type abort 
		    if(ini_a_tp_tab != ini_a_tp && ini_a_tp.length > 0  ) {
		        dif_ini_a_tp = true;
		        if_el(checkbox.id, 'false');
		        //if_el('cadForm:pos_ini_b_var', ini_b);
			    alert(rel('cadForm:sys_dif_chkbox'));
		        return;
		    }	  
	        if_el('cadForm:vhcle_tp_a_var', ini_a_tp_tab);
	        if_el('cadForm:vhcle_tp_a_var_desc', ini_a_tp_tab_desc);
	        if_el('cadForm:codf_id_vhcst_a_var', '');
	        if_el('cadForm:codf_id_vhcst_a_var_desc', '');
		    // ------------------------------------
	    	
            // hoverDatatableRow
	        trs[number].className = 'trs9';
	        trs[number].onmouseover = function() { this.className='trh9' };
	        trs[number].onmouseout = function() { this.className='trs9' };

	        if (parseInt(number) > parseInt(ini_a)) {
	          fin_a = number;
	          fin__a = numbsq;
	        } else if (parseInt(number) < parseInt(ini_a)) {
	          ini_a = number;
	          ini__a = numbsq;
	        } else {
	          ini_a = number;
	          fin_a = number;
	          ini__a = numbsq;
	          fin__a = numbsq;
	        }
	        if_el('cadForm:pos_ini_a_var', parseInt(ini__a));
	        if_el('cadForm:pos_fin_a_var', parseInt(fin__a));
	    } else {
	      //alert('val false');

	      // hoverDatatableRow
	      trs[number].className = originalClass[number];
	      trs[number].onmouseover = function() { this.className='trh9' };
	      trs[number].onmouseout = function() { this.className=originalClass[number] };

	      //alert('number: '+number+' ini_a: '+ini_a+' fin_a: '+fin_a);
	      if (parseInt(number) > parseInt(ini_a)) {
	        fin_a = number -1;
	        fin__a = rel(path_in + fin_a + ':sel_vhlst_sq_vhcle__a');
	        if_el('cadForm:pos_fin_a_var', parseInt(ini__a));
	      }	        

	      // Handle Start / End Positions & Vhc Type Cleaning -------------------------- 
	      fin_ax = rel('cadForm:pos_fin_a_var');
	      fin_for = parseInt(fin_ax); flagsel = 0;
	      for (j = 0 ; j <= fin_for; j++) { // Check if checkbox is marked
	          //alert('path_in+j+path_ot: '+path_in+j+path_ot+' vl: '+rel(path_in+j+path_ot)+' j: '+j+'fin_for: '+fin_for+'flagsel: '+flagsel);
	          if (rel(path_in+j+path_ot) == 'true') {
	              flagsel = 1;
	          }
	      }
	      if (flagsel == 0) {  //  if no check box is marked clean Start / End Pos
	         ini_a = ''; fin_a = ''; ini__a = ''; fin__a = '';
	         if_el('cadForm:pos_ini_a_var', ini_a);
	         if_el('cadForm:pos_fin_a_var', fin_a);
	         if_el('cadForm:dtDados_tt1:chk_sel__a_tt', 'false');
	         if_el('cadForm:vhcle_tp_a_var', '');
	         if_el('cadForm:vhcle_tp_a_var_desc', '');
	         if_el('cadForm:codf_id_vhcst_a_var', '');
	         if_el('cadForm:codf_id_vhcst_a_var_desc', '');
	      }
	      // -----------------------------------------------------
	    }

	    flag = true;
	    frtf = true;
	    i = -1;
	    while (flag) {
	      i++;
	      if (el(path_in+i+path_ot)) {
	        flag = true;
	      } else {
	        flag = false;
	      }
	      if (rel(path_in+i+path_ot) == 'true') {
	        if (frtf == true) {
	          if_el('cadForm:pos_ini_a_var', rel(path_in + i + ':sel_vhlst_sq_vhcle__a'));
	          if_el('cadForm:pos_fin_a_var', rel(path_in + i + ':sel_vhlst_sq_vhcle__a'));
	          frtf = false;
	        } else {
	          if_el('cadForm:pos_fin_a_var', rel(path_in + i + ':sel_vhlst_sq_vhcle__a'));
	        }
	      }
	    }
	    ckbSelmaplist__a(numbsq, val);
	    //alert('maplist_a_var: '+rel('cadForm:maplist_a_var'));
	    //if (strbtn.indexOf('tatusUpdate_a') < 0 ) {
	    	//chbSelType__a();
	    //}
    }
}

function ckbSelDisc__b(checkbox) {
  id = checkbox.id;
  val = rel(checkbox.id);
  chk_path = id.slice(0, id.lastIndexOf(":"));
  //alert(chk_path);
  chk_name = id.slice(id.lastIndexOf(":")+1, id.length);
  //alert('chk_name: '+chk_name);
  path= checkbox.id.slice(0,checkbox.id.search('chk'));
  number= checkbox.id.slice(0,checkbox.id.search(':chk'));
  //alert(number);
  path_in = number.slice(0,number.lastIndexOf(":")+1);
  path_ot = ':chk__b';
  number= number.slice(number.lastIndexOf(":")+1,number.length);
  numbsq= rel(path_in + number + ':sel_vhlst_sq_vhcle__b');
  //alert(number);
  //alert(numbsq);

  // hoverDatatableRow
  var previousClass = null;
  var trs = document.getElementById('cadForm:dtDados1').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  for (var i = 0; i < trs.length; i++) {
    trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
    trs[i].onmouseout = function() { this.className=previousClass };
  }

  if (rel('cadForm:pos_ins_pos_ckb_b_var') == 'true') {
    //alert('true');
    flagx = true;
    ix = 0;
    while (flagx) {
      chk_w = path_in+ix+path_ot;
      //alert('chk_w: '+chk_w);
      flagx = if_bel(chk_w, 'false');
      ix++;
    }
    if (val == 'false') {
      chk_w = path+numbsq+path_ot;
      if_bel(chk_w, 'false');
      ins_b = '';
      if_el('cadForm:pos_ins_b_var', ins_b);
    } else {
      ins_b = number;
      ins__b = numbsq;
      if_el('cadForm:pos_ins_b_var', parseInt(ins__b));
      chk_w = path_in+ins_b+path_ot;
      if_bel(chk_w, 'true');
    }
  } else {
    //alert('false');

    //alert('id: '+id);
    //alert('val: '+val);
    //alert('number: '+number);
    //alert('path: '+path);
    //alert('path_in: '+path_in);
    //alert('path_ot: '+path_ot);
    if (val == 'true') {
      //alert('val true');

      // hoverDatatableRow
      trs[number].className = 'trs9';
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className='trs9' };

      if (parseInt(number) > parseInt(ini_b)) {
        fin_b = number;
        fin__b = numbsq;
      } else if (parseInt(number) < parseInt(ini_b)) {
        ini_b = number;
        ini__b = numbsq;
      } else {
        ini_b = number;
        fin_b = number;
        ini__b = numbsq;
        fin__b = numbsq;
      }
      if_el('cadForm:pos_ini_b_var', parseInt(ini__b));
      if_el('cadForm:pos_fin_b_var', parseInt(fin__b));
    } else {
      //alert('val false');

      // hoverDatatableRow
      trs[number].className = originalClass[number];
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className=originalClass[number] };

      if (parseInt(number) > parseInt(ini_b)) {
        fin_b = number -1;
        fin__b = rel(path_in + fin_b + ':sel_vhlst_sq_vhcle__b');
        if_el('cadForm:pos_fin_b_var', parseInt(fin__b));
      } else if (parseInt(number) == parseInt(ini_b)) {
        ini_b = '';
        fin_b = '';
        ini__b = '';
        fin__b = '';
        if_el('cadForm:pos_ini_b_var', ini_b);
        if_el('cadForm:pos_fin_b_var', fin_b);
        if_el('cadForm:dtDados_tt1:chk_sel__b_tt', 'false');
      }
    }
  //alert('ini_b: '+ini_b);alert('fin_b: '+fin_b);

    flag = true;
    frtf = true;
    i = 0;
    while (flag) {
      i++;
      if (el(path_in+i+path_ot)) {
        flag = true;
      } else {
        flag = false;
      }
      if (rel(path_in+i+path_ot) == 'true') {
        if (frtf == true) {
          if_el('cadForm:pos_ini_b_var', rel(path_in + i + ':sel_vhlst_sq_vhcle__b'));
          frtf = false;
        } else {
          if_el('cadForm:pos_fin_b_var', rel(path_in + i + ':sel_vhlst_sq_vhcle__b'));
        }
      }
    }

    ckbSelmaplist__b(numbsq, val);
    //alert('maplist_b_var: '+rel('cadForm:maplist_b_var'));
    chbSelType__b();

  }
}

function ckbSelCont__b(checkbox) {
  id = checkbox.id;
  val = rel(checkbox.id);
  chk_path = id.slice(0, id.lastIndexOf(":"));
  //alert(chk_path);
  chk_name = id.slice(id.lastIndexOf(":")+1, id.length);
  //alert('chk_name: '+chk_name);
  path= checkbox.id.slice(0,checkbox.id.search('chk'));
  number= checkbox.id.slice(0,checkbox.id.search(':chk'));
  //alert(number);
  path_in = number.slice(0,number.lastIndexOf(":")+1);
  path_ot = ':chk__b';
  number= number.slice(number.lastIndexOf(":")+1,number.length);
  numbsq= rel(path_in + number + ':sel_vhlst_sq_vhcle__b');
  //alert(number);
  //alert(numbsq);

  // hoverDatatableRow
  var previousClass = null;
  var trs = document.getElementById('cadForm:dtDados1').getElementsByTagName('tbody')[0].getElementsByTagName('tr');
  for (var i = 0; i < trs.length; i++) {
    trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
    trs[i].onmouseout = function() { this.className=previousClass };
  }

  if (rel('cadForm:pos_ins_pos_ckb_b_var') == 'true') {
    //alert('true');
    flagx = true;
    ix = 0;
    while (flagx) {
      chk_w = path_in+ix+path_ot;
      //alert('chk_w: '+chk_w);
      flagx = if_bel(chk_w, 'false');

      if (flagx) {
        // hoverDatatableRow
        trs[ix].className = originalClass[ix];
      }

      ix++;
    }
    if (val == 'false') {
      chk_w = path+numbsq+path_ot;
      if_bel(chk_w, 'false');
      ins_b = '';
      if_el('cadForm:pos_ins_b_var', ins_b);

      // hoverDatatableRow
      trs[number].className = originalClass[number];
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className=originalClass[number] };

    } else {
      ins_b = number;
      ins__b = numbsq;
      if_el('cadForm:pos_ins_b_var', parseInt(ins__b));
      chk_w = path_in+ins_b+path_ot;
      if_bel(chk_w, 'true');

      // hoverDatatableRow
      trs[number].className = 'trs9';
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className='trs9' };

    }
  } else {
    //alert('false');

    //alert('id: '+id);
    //alert('val: '+val);
    //alert('number: '+number);
    //alert('path: '+path);
    //alert('path_in: '+path_in);
    //alert('path_ot: '+path_ot);
    if (val == 'true') {
      //alert('val true');

      // hoverDatatableRow
      trs[number].className = 'trs9';
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className='trs9' };

      if (parseInt(number) > parseInt(ini_b)) {
        fin_b = number;
        fin__b = numbsq;
      } else if (parseInt(number) < parseInt(ini_b)) {
        ini_b = number;
        ini__b = numbsq;
      } else {
        ini_b = number;
        fin_b = number;
        ini__b = numbsq;
        fin__b = numbsq;
      }
      if_el('cadForm:pos_ini_b_var', parseInt(ini__b));
      if_el('cadForm:pos_fin_b_var', parseInt(fin__b));
    } else {
      //alert('val false');

      // hoverDatatableRow
      trs[number].className = originalClass[number];
      trs[number].onmouseover = function() { this.className='trh9' };
      trs[number].onmouseout = function() { this.className=originalClass[number] };

      if (parseInt(number) > parseInt(ini_b)) {
        fin_b = number -1;
        fin__b = rel(path_in + fin_b + ':sel_vhlst_sq_vhcle__b');
        if_el('cadForm:pos_fin_b_var', parseInt(fin__b));
      } else if (parseInt(number) == parseInt(ini_b)) {
        ini_b = '';
        fin_b = '';
        ini__b = '';
        fin__b = '';
        if_el('cadForm:pos_ini_b_var', ini_b);
        if_el('cadForm:pos_fin_b_var', fin_b);
        if_el('cadForm:dtDados_tt1:chk_sel__b_tt', 'false');
      }
    }
    //alert('ini_b: '+ini_b);alert('fin_b: '+fin_b);

    flag = true;
    i = 0;
    while (flag) {
      chk_w = path_in+i+path_ot;
      //alert('chk_w: '+chk_w);
      flag = if_bel(chk_w, 'false');

      if (flag) {
        // hoverDatatableRow
        trs[i].className = originalClass[i];
      }

      i++;
    }

    fin_for = parseInt(fin_b) + 1;
    //alert('fin_for: '+fin_for);
    for (j = ini_b; j < fin_for; j++) {
      //alert('SUCESS: '+j);
      chk_w = path_in+j+path_ot;
      //alert('chk_w: '+chk_w);
      if_bel(chk_w, 'true');

      // hoverDatatableRow
      trs[j].className = 'trs9';
      trs[j].onmouseover = function() { this.className='trh9' };
      trs[j].onmouseout = function() { this.className='trs9' };

    }

    flag = true;
    i = 0;
    while (flag) {
      ckbSelmaplist__b(rel(path_in + i + ':sel_vhlst_sq_vhcle__b'), rel(path_in + i + path_ot));
      chk_w = path_in+i+path_ot;
      i++;
      if (el(path_in+i+path_ot)) {
        flag = true;
      } else {
        flag = false;
      }
    }
    //alert('maplist_b_var: '+rel('cadForm:maplist_b_var'));
    chbSelType__b();

  }
}

function ckbSelmaplist__b(nsq, vlc) {
  //alert('nsq: '+nsq);alert('vlc: '+vlc);
  if_el('cadForm:dtDados_tt1:chk_sel__b_tt', 'false');
  el('cadForm:dtDados_tt1:chk_sel__b_tt').style.background="#FFE4D0";

  maplist_b_var_js = rel('cadForm:maplist_b_var');
  //alert('maplist_b_var_js: '+maplist_b_var_js);
  maplist_b_var_js_ini = maplist_b_var_js.substring(0,nsq-1);
  //alert('maplist_b_var_js_ini: '+maplist_b_var_js_ini);
  maplist_b_var_js_sel = maplist_b_var_js.substring(nsq-1,nsq);
  //alert('maplist_b_var_js_sel: '+maplist_b_var_js_sel);
  maplist_b_var_js_fin = maplist_b_var_js.substring(nsq,maplist_b_var_js.length);
  //alert('maplist_b_var_js_ini: '+maplist_b_var_js_fin);

  if (vlc == 'true') {
    maplist_js_val = '1';
  } else {
    maplist_js_val = '0';
  }
  maplist_b_var_js_full = maplist_b_var_js_ini + maplist_js_val + maplist_b_var_js_fin;
  //alert('maplist_b_var_js_full: '+maplist_b_var_js_full);
  if_el('cadForm:maplist_b_var', maplist_b_var_js_full);
}

function chbSelType__b() {
    fin_for = parseInt(fin_b) + 1;
    if (strbtn == 'VhblkStatusUpdate_b' ||
        strbtn == 'VhblkSidingCustomerDelivery_b' ||
        strbtn == 'VhblkSidingMaintenanceDeliver_b') {

      ini_b_tp = '';
      ini_b_tp_desc = '';
      dif_ini_b_tp = false;
      if(el(path_in + ini_b + ':sel_vhcle_tp__b')) {
        ini_b_tp = rel(path_in + ini_b + ':sel_vhcle_tp__b');
        ini_b_tp_desc = el(path_in + ini_b + ':sel_vhcle_tp__b').title;
      }

      for (j = ini_b; j < fin_for; j++) {
        if(rel(path_in + j + ':sel_vhcle_tp__b') != ini_b_tp && dif_ini_b_tp == false) {
          //alert('DIF');
          dif_ini_b_tp = true;
        }
      }
      if (ini_b == '') {
        //alert('INI_B');
        if_el('cadForm:vhcle_tp_b_var', '');
        if_el('cadForm:vhcle_tp_b_var_desc', '');
      } else if (dif_ini_b_tp == true) {
        //alert('DIFFE');
        if_el('cadForm:vhcle_tp_b_var', '');
        if_el('cadForm:vhcle_tp_b_var_desc', '');
        alert(rel('cadForm:sys_dif_chkbox'));
      } else {
        //alert('EQUAL');
        if_el('cadForm:vhcle_tp_b_var', ini_b_tp);
        if_el('cadForm:vhcle_tp_b_var_desc', ini_b_tp_desc);
      }
    }
}

/* ###################################################### */

/*
 * Browser-safe get object. Tries all three approaches to get an object
 * by its element Id.
 *
 * Param:               objId - String - id of element to retrieve.
 * Param:               formId - String - id of form (optional).
 * Returns:             element or null if not found.
 */
function getObj(objId, formId) {
        var fullId = objId;
        if (formId != null && formId.length > 0) {
            fullId = formId + ':' + objId;
        }
        //alert('getting object: ' + fullId);
        var elem = null;
        if (document.getElementById) {
            elem = document.getElementById(fullId);
        } else if (document.all) {
            elem = document.all[fullId];
        } else if (document.layers) {
            elem = document.layers[fullId];
        }
        return elem;
}

/* ###################################################### */

function chkBoolean(chk, fld) {
  val = rel(chk.id);
  if (val == 'true') {
    //alert('val true');
    if_el(fld, 'S');
  } else {
    //alert('val false');
    if_el(fld, 'N');
  }
}

function chkBooleanx(chk, fld) {
	val = rel(chk.id);
    //alert('val='+val);
	if (val == 'true') {
         //alert('val true');
         if_el(fld, 'X');
	}  else	 {
         //alert('val false');
         // 110625 if_el(fld, 'N');
	   if_el(fld, ' ');
	}
}

/* ###################################################### */

function cfb(id, sta, stb) {
  if (rel(id) == '') {
    el(id).className = sta;
  } else {
    el(id).className = stb;
  }
}

function clf(obj) {
  if (rel(obj.id) != '') {
      if_el(obj.id, '');
      if (obj.onchange) {
          obj.onchange();
      }
  }
}

function fcfx(objid) {
	  var obj = da(objid);
	  if (obj) {
          alert('obj.type:>'+obj.type+' obj.style.visibility:>'+obj.style.visibility+' obj.style.display:>'+obj.style.display+' disabled:>'+obj.disabled)
		  if(obj.type != "hidden" && obj.style.visibility != "hidden" && obj.style.display != "none"  && !obj.disabled) {
			  if (obj.focus) {
                  alert('objid> '+objid);
				  obj.focus();
			  }
			  return;
		  }
	  }
	}

function fcf(objid) {
  var objz = da(objid);
  if (objz) {
    //alert(obj.type);alert(obj.style.visibility);alert(obj.style.display);alert(obj.disabled);
    //if(obj.type != "hidden" && obj.style.display != "none"  && !obj.disabled) {
	if(objz.type != "hidden" && objz.style.visibility != "hidden" && objz.style.display != "none"  && !objz.disabled) {
      if (objz.focus) {
        objz.focus();
        return true;
      } else {
        return false;
      }
    }
  }
}

/* ###################################################### */

function mesgStyle(rc) {
  //alert('rc'+rc);  
  //alert('stub'+stub);  
  rc = rc.substring(0,3);
  //alert('mesgStyle() rc1: '+rc);  

  if (rc == '0') {
    bck = '#E7ECF2';
    img = 'btMessage_off.gif';
  } else
  if (rc == '777') {
	  bck = '#99FFFF';
	  img = 'btMessage_off.gif';
  } else {
    bck = '#00FFFF';
    img = 'btMessage.gif';
  }
  if (el('cadForm:mesg_var')) {
    el('cadForm:mesg_var').style.background = bck;
  }
  //alert('img'+img); FFFF99  
  //if (el('cadForm:iMessage')) {
  //	  alert('imgxxx'+img);  
  selSrcImg('cadForm:iMessage', img);
  //}
}

function mesgStyleYellow(rc) {
	  if (rc == '0') {
	    bck = '#FFFF99';
	    img = 'btMessage_off.gif';
	  } else
	  if (rc == '777') {
		  bck = '#FFFF66';
		  img = 'btMessage_off.gif';
	  } else {
	    bck = '#FFEA00';
	    img = 'btMessage.gif';
	  }
	  if (el('cadForm:mesg_var')) {
	    el('cadForm:mesg_var').style.background = bck;
	  }
	  selSrcImg('cadForm:iMessage', img);
}

function cle_mesg() {
  //alert(' mesgStyle(0) - cadForm:mesg_var:'+rel('cadForm:mesg_var'));  
  if_el('cadForm:mesg_var','');
  mesgStyle('0');
}

function mesgStyleStub(rc,stub) {
  //alert('rc'+rc);  
  //alert('stub'+stub);  

  if (rc == '0') {
    bck = '#E7ECF2';
    img = 'btMessage_off.gif';
  } else {
    bck = '#00FFFF';
    img = 'btMessage.gif';
  }
  if (el('cadForm:mesg_var'+stub)) {
	  el('cadForm:mesg_var'+stub).style.background = bck;
  }
  //alert('img'+img);  
  //if (el('cadForm:iMessage')) {
  //	  alert('imgxxx'+img);  
  selSrcImg('cadForm:iMessage'+stub, img);
  //}
}

function cle_mesgSub(stub) {
  // Not in use 
  if_el('cadForm:mesg_var'+stub,'');
  mesgStyleStub('0',stub);
}

/* ###################################################### */

// loadPage Functions Caller Function Gen
function lpCaller() {
}

/* ###################################################### */

// Hover DataTable - Deprecated
function hoverDatatable(dtTable) {
    hovDtTable(dtTable);
}

// Hover DataTable
function hovDtTable(dtTable) {
    var previousClass = null;
    var trs = document.getElementById('cadForm:'+dtTable).getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    for (var i = 0; i < trs.length; i++) {
        trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
        trs[i].onmouseout = function() { this.className=previousClass };
        originalClass[i] = trs[i].className;
    }
}

// Reset DataTable
function resDtTable(dtTable) {
    var previousClass = null;
    var trs = document.getElementById('cadForm:'+dtTable).getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    for (var i = 0; i < trs.length; i++) {
        trs[i].className = originalClass[i];
        trs[i].onmouseover = function() { previousClass=this.className; this.className='trh9' };
        trs[i].onmouseout = function() { this.className=previousClass };
        originalClass[i] = trs[i].className;
    }
}

// Select DataTable Row
function selDtTableRow(row) {
    selDtTableRowSrc(getDtTableName(row), getDtTableRow(row));
}

// Select DataTable One Row
function selDtTableOneRow(row) {
    resDtTable(getDtTableName(row));
    selDtTableRowSrc(getDtTableName(row), getDtTableRow(row));
}

// Clear DataTable Row
function cleDtTableRow(row) {
    cleDtTableRowSrc(getDtTableName(row), getDtTableRow(row));
}

// Select DataTable Row - Source
function selDtTableRowSrc(dtTable, num) {
    var previousClass = null;
    var trs = document.getElementById('cadForm:'+dtTable).getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    trs[num].className = 'trs9';
    trs[num].onmouseover = function() { this.className='trh9' };
    trs[num].onmouseout = function() { this.className='trs9' };
}

// Clear DataTable Row - Source
function cleDtTableRowSrc(dtTable, num) {
    var previousClass = null;
    var trs = document.getElementById('cadForm:'+dtTable).getElementsByTagName('tbody')[0].getElementsByTagName('tr');
    trs[num].className = originalClass[num];
    trs[num].onmouseover = function() { this.className='trh9' };
    trs[num].onmouseout = function() { this.className=originalClass[num] };
}

// Return DataTable Name
function getDtTableName(row) {
    var path = row.slice(row.indexOf(":")+1, row.length);
    var res = path.slice(0, path.indexOf(":"));
    return res;
}

// Return DataTable Title Name
function getDtTableName_tt(row) {
    var path = getDtTableName(row);
    var res = path.replace("_tt", "");
    return res;
}

// Return DataTable Column Name
function getDtTableColumnName(row) {
    var path = row.slice(row.lastIndexOf(":")+1, row.length);
    var res = path;
    return res;
}

// Return DataTable Title Checkbox Name
function getDtTableCheckboxName_tt(row) {
    var path = getDtTableColumnName(row);
    var res = path.replace("_tt", "").replace("_sel", "");
    return res;
}

// Return Path Initial DataTable Row
function getDtTableRowPathIni(row) {
    var path = row.slice(0, row.lastIndexOf(":"));
    var res = path.slice(0, path.lastIndexOf(":")+1);
    return res;
}

// Return Path Initial DataTable Title Row
function getDtTableRowPathIni_tt(row) {
    var path = row.slice(0, row.lastIndexOf(":")+1);
    var res = path.replace("_tt", "");
    return res;
}

// Return Number DataTable Row
function getDtTableRow(row) {
    var path = row.slice(0, row.lastIndexOf(":"));
    var res = path.slice(path.lastIndexOf(":")+1, path.length);
    return res;
}

// Build DataTable List
function bldDtTableList(checkbox, fld, list) {
    bldDtTableListSrc(checkbox.id, rel(checkbox.id), getDtTableName(checkbox.id), getDtTableRowPathIni(checkbox.id), getDtTableRow(checkbox.id), fld, list);
}

// Build DataTable List - Source
function bldDtTableListSrc(checkbox, checkbox_val, dtTable, pathIni, num, fld, list) {
//alert(checkbox);alert(checkbox_val);alert(dtTable);alert(pathIni);alert(num);alert(fld);alert(list);
    var chk_id = checkbox;
    var chk_val = checkbox_val;
    var fld_val = rel(pathIni + num +':'+ fld);
    var list_val = rel('cadForm:'+list);
    if (chk_val == 'true') {
        selDtTableRow(chk_id);
        list_val = list_val.concat(fld_val, ';');
    } else {
        cleDtTableRow(chk_id);
        list_val = list_val.replace(fld_val + ';', '');
    }
    if_el(chk_id, chk_val);
    if_el('cadForm:'+list, list_val);
}

// Build DataTable List All
function bldDtTableListAll(checkbox, fld, list) {
    bldDtTableListAllSrc(checkbox.id, getDtTableName_tt(checkbox.id), getDtTableRowPathIni_tt(checkbox.id), fld, list);
}

// Build DataTable List All - Source
function bldDtTableListAllSrc(checkbox, dtTable, pathIni, fld, list) {
//alert(checkbox);alert(dtTable);alert(pathIni);alert(fld);alert(list);
    var flag = true;
    var i = 0;
    while (flag) {
        var chk_id = pathIni+i+':'+getDtTableCheckboxName_tt(checkbox);
        if (el(chk_id)) {
            bldDtTableListSrc(chk_id, rel(checkbox), dtTable, pathIni, i, fld, list);
        } else {
            flag = false;
        }
        i++;
    }
}

/* ###################################################### */
