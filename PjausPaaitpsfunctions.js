// High Light FIELDS Function
function hlFields_tivf(fld) {
    // alert('hlFields_tivf' + '  fld: ' + fld); // qqq  
    buttx = fld;
    if (fld == 0) { return;}
var arSubFields = new Array();
// pjaus_tp_infc_viaferrea_hl_in 
arSubFields[1] = new Array();
arSubFields[1][1] = new stSubFields('pjaus_vl_ang_interf_via', '0');
arSubFields[1][2] = new stSubFields('pjaus_vl_alt_interf', '0');
arSubFields[1][3] = new stSubFields('pjaus_vl_prf_sub', '0');
arSubFields[1][4] = new stSubFields('pjaus_ar_intf', '0');
arSubFields[1][5] = new stSubFields('pjaus_tp_pos_pn_via_ss', '0');
// pjaus_tp_infc_viaferrea_hl_5 
arSubFields[2] = new Array();
arSubFields[2][1] = new stSubFields('pjaus_vl_alt_interf', '0');
arSubFields[2][2] = new stSubFields('pjaus_vl_prf_sub', '0');
arSubFields[2][3] = new stSubFields('pjaus_tp_pos_pn_via_ss', '2');
arSubFields[2][4] = new stSubFields('pjaus_vl_ang_interf_via', '0');
arSubFields[2][5] = new stSubFields('pjaus_ar_intf', '0');
// pjaus_tp_infc_viaferrea_hl_4 
arSubFields[3] = new Array();
arSubFields[3][1] = new stSubFields('pjaus_vl_alt_interf', '0');
arSubFields[3][2] = new stSubFields('pjaus_vl_prf_sub', '2');
arSubFields[3][3] = new stSubFields('pjaus_tp_pos_pn_via_ss', '2');
arSubFields[3][4] = new stSubFields('pjaus_vl_ang_interf_via', '0');
arSubFields[3][5] = new stSubFields('pjaus_ar_intf', '0');
// pjaus_tp_infc_viaferrea_hl_3 
arSubFields[4] = new Array();
arSubFields[4][1] = new stSubFields('pjaus_vl_alt_interf', '2');
arSubFields[4][2] = new stSubFields('pjaus_vl_prf_sub', '0');
arSubFields[4][3] = new stSubFields('pjaus_tp_pos_pn_via_ss', '0');
arSubFields[4][4] = new stSubFields('pjaus_vl_ang_interf_via', '0');
arSubFields[4][5] = new stSubFields('pjaus_ar_intf', '0');
// FIELDS
var arFields = new Array();
arFields[1] = new stField('pjaus_vl_ang_interf_via');
arFields[2] = new stField('pjaus_vl_alt_interf');
arFields[3] = new stField('pjaus_vl_prf_sub');
arFields[4] = new stField('pjaus_ar_intf');
arFields[5] = new stField('pjaus_tp_pos_pn_via_ss');
 
    // Desativa as Sub FIELDS
    // alert('fld'+fld);
    unlockQuery = 0;
    if ( fld > 50 && fld < 80 ) {
        fld = fld - 50;
        unlockQuery = 1;
    }
    // alert('fld'+fld);
    org = 1; // from lock 
    if ( fld > 80 ) {
        fld = fld - 80; // not from lock
        org = 0;
    }
    for (var i=1; i < arFields.length; i++) {
        str = arFields[i].fld; objsel = '';
        strobj = str.replace("_ss","");
        if (str.indexOf("_ss") >= 0 ) {
            objsel = el('cadForm:'+strobj+"_xsel");
            if (objsel == null ) {} else {
                objsel.disabled = true;
                objsel_src = objsel.src;
                if (objsel_src.indexOf('btPesquisar') >= 0 ) {
                  objsel.src = '../imagens/btPesquisar_off.gif';
                }
            }
        }
        objx = el('cadForm:'+strobj);
        if (objx == null || ( unlockQuery == 1 && strobj.indexOf('Query') >= 0 )   ) {} else {
            typ = objx.type;
            objx.readOnly = true;
            objx.disabled = true;
            if (typ != null)  {
                if (typ.indexOf("submit") >=0) {
                    objx.disabled = false;
                    objx.style.backgroundColor="lightgrey";
                    objx.style.border="outset 2px";
                }
                if (typ.indexOf("checkbox") >=0) {
                    objx.disabled = true;
                    objx.style.backgroundColor="lightgrey";
                }
            }
            nn = -1;
            objx.tabIndex = nn;
            str = arFields[i].fld;
            if (objx.src) {
                objx.src = '../imagens/btLock_off.gif';
            } else /*if (typ == 'text') */ {
                if (typ == "text" || typ == "textarea" ) { objx.style.background="#E7ECF2";}
                else if (typ == "checkxbox") {
                  if_bel(objx.id, 'false');
                  objx.style.background="#E7ECF2";
                }
            }
        }
    }
    // Ativa as Sub FIELDS
    kk = 0; ba=""; bb=""; 
    for (var j=1; j < arSubFields[fld].length; j++) {
        str = arSubFields[fld][j].fld;
        //alert(str+" - ");
        strobj = str.replace("_ss","");
        if (str.indexOf("_ss") >= 0  ) {
            objsel = el('cadForm:'+strobj+"_xsel");
            if (objsel == null ) {} else {
                objsel.disabled = false;
                objsel_src = objsel.src;
                if (objsel_src.indexOf('btPesquisar') >= 0 ) {
                  objsel.src = '../imagens/btPesquisar.gif';
                }
            }
        }
        objx = el('cadForm:'+strobj);
        bck = arSubFields[fld][j].bck;
        if (objx) {
            if (objx.src) {
                objx.src = '../imagens/btLockop.gif';
                if (str.indexOf("_hl") >= 0  ) {
                    strbtn = str.replace("_hl","")
                    //alert(objbtn+" objbtn- ");
                    objbtn = el('cadForm:'+strbtn);
                    if (objbtn) {
                        objbtn.style.backgroundColor="#BBCBD9";
                        nn = -1;
                        objbtn.tabIndex = nn;
                        tit = ' - ';
                        tit = tit+objbtn.title;
                        if (objbtn == null ) {} else {
                            if (strbtn.indexOf("_a") >= 0  ) {
                            }
                        }
                        if_el('cadForm:xbutx_id', fld);
                        objtit = 'cadForm:button';
                        if_el(objtit, tit);
                    }
                    start = strbtn.lastIndexOf("_");
                    bl = strbtn.substring(start,strbtn.lenght);
                }
            } else {
                kk = kk + 1;
                if(kk == 1) {strfocus = str.replace("_ss","");}
                objx.tabIndex = kk;
                objx.disabled = false;
                objx.readOnly = false;
                objsel.disabled = false;
                valpos = bck.indexOf("&"); // get valpos
                if (valpos >= 0) { // valpos
                    val = bck.substring(valpos+1,bck.length);
                    bck = bck.substring(0,valpos);
                    objx.value=val;
                    objdesc = objx.id+'_desc';
                    if_el(objx.id+'_desc',rel('cadForm:sys_value_'+val));
                }
                vlf = arSubFields[fld][j].vlf;
                if (vlf != null && vlf.indexOf("#") >= 0) {
                    vlf = vlf.substring(1,vlf.length);
                    compval = bck.substring(2,bck.length);
                    if (vlf == compval ) {
                       bck = bck.substring(0,1);
                    }
                } else
                if (vlf != null) {
                    if (org == 1 ) { // Reset vlf if open via lock
                        if (vlf != null && vlf.length > 0 ) {
                            objx.value = vlf;
                            if (fcf(objx.id)) {
                                if (objx.type.indexOf('checkbox') >= 0) {} else {
                                    document.getElementById(objx.id).onchange();
                                }
                                if (objx.type.indexOf('checkbox') >= 0) {
                                   if_bel(objx.id, 'true');
                                }
                            }
                        }
                        if (vlf != null && vlf.length == 0 ) {
                            objx.value = '';
                        }
                    } else
                    if (org == 0 ) {// Reset vlf if not open via lock & vlf not ''
                        if (vlf != null && vlf.length > 0 ) {
                            objx.value = vlf;
                            if (fcf(objx.id)) {
                                if (objx.type.indexOf('checkbox') >= 0) {} else {
                                    document.getElementById(objx.id).onchange();
                                }
                            }
                        }
                    }
                }
            if (objx.id.indexOf('pos_') >=0 || objx.id.indexOf('ord_') >=0 ) { // orange
                if (bck == '1') { // orange
                    objx.style.background="#FFE4D0";
                } else if (bck == '4') { // lightcoral
                    objx.style.background="#E0FFFF";
                } else if (bck == '3') { // lightcoral
                    objx.style.background="#F0A3A6";
                } else if (bck == '2') { // yellow
                    objx.style.background="#FFFFAA";
                } else {
                    objx.style.background="#E7ECF2";
                }
            } else {
                // alert(str + ' - bck: ' + bck); // qqq
                if (bck == '1') { // orange
                    objx.style.background="#FFE4D0";
                    objx.onclick = onclickClf;
                } else if (bck == '5') { // gray - blur
                    objx.style.background="#F0A3A6";
                } else if (bck == '4') { // lightcoral
                    objx.style.background="#E0FFFF";
                    objx.onclick = onclickClf;
                } else if (bck == '3') { // lightcoral
                    objx.style.background="#F0A3A6";
                    objx.onclick = onclickClf;
                } else if (bck == '2') { // yellow
                    objx.style.background="#FFFFAA";
                    objx.onclick = onclickClf;
                } else if (bck == '6') { // blue
                    objx.style.background="#00FFFF";
                    objx.onclick = onclickBlur;
                } else {
                    objx.style.background="#E7ECF2";
                    objx.onclick = onclickBlur;
                }
            }
                if (bck == '0') {} else {
                    if (str.indexOf("_a_") >= 0) { ba = "_a";}
                    if (str.indexOf("_b_") >= 0) { bb = "_b";}
                }
            }
        }
    }
    
}
// High Light FIELDS Function
function hlFields_psvi(fld) {
    // alert('hlFields_psvi' + '  fld: ' + fld); // qqq  
    buttx = fld;
    if (fld == 0) { return;}
var arSubFields = new Array();
// pjaus_tp_pos_pn_via_hl_in 
arSubFields[1] = new Array();
arSubFields[1][1] = new stSubFields('pjaus_vl_ang_interf_via', '0');
arSubFields[1][2] = new stSubFields('pjaus_vl_dist', '0');
arSubFields[1][3] = new stSubFields('pjaus_ar_intf', '0');
// pjaus_tp_pos_pn_via_hl_1 
arSubFields[2] = new Array();
arSubFields[2][1] = new stSubFields('pjaus_vl_ang_interf_via', '2');
arSubFields[2][2] = new stSubFields('pjaus_vl_dist', '0');
arSubFields[2][3] = new stSubFields('pjaus_ar_intf', '0');
// pjaus_tp_pos_pn_via_hl_3 
arSubFields[3] = new Array();
arSubFields[3][1] = new stSubFields('pjaus_vl_ang_interf_via', '2');
arSubFields[3][2] = new stSubFields('pjaus_vl_dist', '0');
arSubFields[3][3] = new stSubFields('pjaus_ar_intf', '2');
// pjaus_tp_pos_pn_via_hl_2 
arSubFields[4] = new Array();
arSubFields[4][1] = new stSubFields('pjaus_vl_ang_interf_via', '0');
arSubFields[4][2] = new stSubFields('pjaus_vl_dist', '2');
arSubFields[4][3] = new stSubFields('pjaus_ar_intf', '0');
// FIELDS
var arFields = new Array();
arFields[1] = new stField('pjaus_vl_ang_interf_via');
arFields[2] = new stField('pjaus_vl_dist');
arFields[3] = new stField('pjaus_ar_intf');
 
    // Desativa as Sub FIELDS
    // alert('fld'+fld);
    unlockQuery = 0;
    if ( fld > 50 && fld < 80 ) {
        fld = fld - 50;
        unlockQuery = 1;
    }
    // alert('fld'+fld);
    org = 1; // from lock 
    if ( fld > 80 ) {
        fld = fld - 80; // not from lock
        org = 0;
    }
    for (var i=1; i < arFields.length; i++) {
        str = arFields[i].fld; objsel = '';
        strobj = str.replace("_ss","");
        if (str.indexOf("_ss") >= 0 ) {
            objsel = el('cadForm:'+strobj+"_xsel");
            if (objsel == null ) {} else {
                objsel.disabled = true;
                objsel_src = objsel.src;
                if (objsel_src.indexOf('btPesquisar') >= 0 ) {
                  objsel.src = '../imagens/btPesquisar_off.gif';
                }
            }
        }
        objx = el('cadForm:'+strobj);
        if (objx == null || ( unlockQuery == 1 && strobj.indexOf('Query') >= 0 )   ) {} else {
            typ = objx.type;
            objx.readOnly = true;
            objx.disabled = true;
            if (typ != null)  {
                if (typ.indexOf("submit") >=0) {
                    objx.disabled = false;
                    objx.style.backgroundColor="lightgrey";
                    objx.style.border="outset 2px";
                }
                if (typ.indexOf("checkbox") >=0) {
                    objx.disabled = true;
                    objx.style.backgroundColor="lightgrey";
                }
            }
            nn = -1;
            objx.tabIndex = nn;
            str = arFields[i].fld;
            if (objx.src) {
                objx.src = '../imagens/btLock_off.gif';
            } else /*if (typ == 'text') */ {
                if (typ == "text" || typ == "textarea" ) { objx.style.background="#E7ECF2";}
                else if (typ == "checkxbox") {
                  if_bel(objx.id, 'false');
                  objx.style.background="#E7ECF2";
                }
            }
        }
    }
    // Ativa as Sub FIELDS
    kk = 0; ba=""; bb=""; 
    for (var j=1; j < arSubFields[fld].length; j++) {
        str = arSubFields[fld][j].fld;
        //alert(str+" - ");
        strobj = str.replace("_ss","");
        if (str.indexOf("_ss") >= 0  ) {
            objsel = el('cadForm:'+strobj+"_xsel");
            if (objsel == null ) {} else {
                objsel.disabled = false;
                objsel_src = objsel.src;
                if (objsel_src.indexOf('btPesquisar') >= 0 ) {
                  objsel.src = '../imagens/btPesquisar.gif';
                }
            }
        }
        objx = el('cadForm:'+strobj);
        bck = arSubFields[fld][j].bck;
        if (objx) {
            if (objx.src) {
                objx.src = '../imagens/btLockop.gif';
                if (str.indexOf("_hl") >= 0  ) {
                    strbtn = str.replace("_hl","")
                    //alert(objbtn+" objbtn- ");
                    objbtn = el('cadForm:'+strbtn);
                    if (objbtn) {
                        objbtn.style.backgroundColor="#BBCBD9";
                        nn = -1;
                        objbtn.tabIndex = nn;
                        tit = ' - ';
                        tit = tit+objbtn.title;
                        if (objbtn == null ) {} else {
                            if (strbtn.indexOf("_a") >= 0  ) {
                            }
                        }
                        if_el('cadForm:xbutx_id', fld);
                        objtit = 'cadForm:button';
                        if_el(objtit, tit);
                    }
                    start = strbtn.lastIndexOf("_");
                    bl = strbtn.substring(start,strbtn.lenght);
                }
            } else {
                kk = kk + 1;
                if(kk == 1) {strfocus = str.replace("_ss","");}
                objx.tabIndex = kk;
                objx.disabled = false;
                objx.readOnly = false;
                objsel.disabled = false;
                valpos = bck.indexOf("&"); // get valpos
                if (valpos >= 0) { // valpos
                    val = bck.substring(valpos+1,bck.length);
                    bck = bck.substring(0,valpos);
                    objx.value=val;
                    objdesc = objx.id+'_desc';
                    if_el(objx.id+'_desc',rel('cadForm:sys_value_'+val));
                }
                vlf = arSubFields[fld][j].vlf;
                if (vlf != null && vlf.indexOf("#") >= 0) {
                    vlf = vlf.substring(1,vlf.length);
                    compval = bck.substring(2,bck.length);
                    if (vlf == compval ) {
                       bck = bck.substring(0,1);
                    }
                } else
                if (vlf != null) {
                    if (org == 1 ) { // Reset vlf if open via lock
                        if (vlf != null && vlf.length > 0 ) {
                            objx.value = vlf;
                            if (fcf(objx.id)) {
                                if (objx.type.indexOf('checkbox') >= 0) {} else {
                                    document.getElementById(objx.id).onchange();
                                }
                                if (objx.type.indexOf('checkbox') >= 0) {
                                   if_bel(objx.id, 'true');
                                }
                            }
                        }
                        if (vlf != null && vlf.length == 0 ) {
                            objx.value = '';
                        }
                    } else
                    if (org == 0 ) {// Reset vlf if not open via lock & vlf not ''
                        if (vlf != null && vlf.length > 0 ) {
                            objx.value = vlf;
                            if (fcf(objx.id)) {
                                if (objx.type.indexOf('checkbox') >= 0) {} else {
                                    document.getElementById(objx.id).onchange();
                                }
                            }
                        }
                    }
                }
            if (objx.id.indexOf('pos_') >=0 || objx.id.indexOf('ord_') >=0 ) { // orange
                if (bck == '1') { // orange
                    objx.style.background="#FFE4D0";
                } else if (bck == '4') { // lightcoral
                    objx.style.background="#E0FFFF";
                } else if (bck == '3') { // lightcoral
                    objx.style.background="#F0A3A6";
                } else if (bck == '2') { // yellow
                    objx.style.background="#FFFFAA";
                } else {
                    objx.style.background="#E7ECF2";
                }
            } else {
                // alert(str + ' - bck: ' + bck); // qqq
                if (bck == '1') { // orange
                    objx.style.background="#FFE4D0";
                    objx.onclick = onclickClf;
                } else if (bck == '5') { // gray - blur
                    objx.style.background="#F0A3A6";
                } else if (bck == '4') { // lightcoral
                    objx.style.background="#E0FFFF";
                    objx.onclick = onclickClf;
                } else if (bck == '3') { // lightcoral
                    objx.style.background="#F0A3A6";
                    objx.onclick = onclickClf;
                } else if (bck == '2') { // yellow
                    objx.style.background="#FFFFAA";
                    objx.onclick = onclickClf;
                } else if (bck == '6') { // blue
                    objx.style.background="#00FFFF";
                    objx.onclick = onclickBlur;
                } else {
                    objx.style.background="#E7ECF2";
                    objx.onclick = onclickBlur;
                }
            }
                if (bck == '0') {} else {
                    if (str.indexOf("_a_") >= 0) { ba = "_a";}
                    if (str.indexOf("_b_") >= 0) { bb = "_b";}
                }
            }
        }
    }
    
}
// High Light FIELDS Function
function hlFields_tpiv(fld) {
    // alert('hlFields_tpiv' + '  fld: ' + fld); // qqq  
    buttx = fld;
    if (fld == 0) { return;}
var arSubFields = new Array();
// pjaus_tp_investimento_hl_in 
arSubFields[1] = new Array();
arSubFields[1][1] = new stSubFields('pjaus_vl_investimento', '0');
arSubFields[1][2] = new stSubFields('pjaus_pc_investimento', '0');
arSubFields[1][3] = new stSubFields('pjaus_qt_part_lucros', '0');
// pjaus_tp_investimento_hl_1 
arSubFields[2] = new Array();
arSubFields[2][1] = new stSubFields('pjaus_vl_investimento', '2');
arSubFields[2][2] = new stSubFields('pjaus_pc_investimento', '2');
arSubFields[2][3] = new stSubFields('pjaus_qt_part_lucros', '2');
// pjaus_tp_investimento_hl_2 
arSubFields[3] = new Array();
arSubFields[3][1] = new stSubFields('pjaus_vl_investimento', '2');
arSubFields[3][2] = new stSubFields('pjaus_pc_investimento', '2');
arSubFields[3][3] = new stSubFields('pjaus_qt_part_lucros', '2');
// FIELDS
var arFields = new Array();
arFields[1] = new stField('pjaus_vl_investimento');
arFields[2] = new stField('pjaus_pc_investimento');
arFields[3] = new stField('pjaus_qt_part_lucros');
 
    // Desativa as Sub FIELDS
    // alert('fld'+fld);
    unlockQuery = 0;
    if ( fld > 50 && fld < 80 ) {
        fld = fld - 50;
        unlockQuery = 1;
    }
    // alert('fld'+fld);
    org = 1; // from lock 
    if ( fld > 80 ) {
        fld = fld - 80; // not from lock
        org = 0;
    }
    for (var i=1; i < arFields.length; i++) {
        str = arFields[i].fld; objsel = '';
        strobj = str.replace("_ss","");
        if (str.indexOf("_ss") >= 0 ) {
            objsel = el('cadForm:'+strobj+"_xsel");
            if (objsel == null ) {} else {
                objsel.disabled = true;
                objsel_src = objsel.src;
                if (objsel_src.indexOf('btPesquisar') >= 0 ) {
                  objsel.src = '../imagens/btPesquisar_off.gif';
                }
            }
        }
        objx = el('cadForm:'+strobj);
        if (objx == null || ( unlockQuery == 1 && strobj.indexOf('Query') >= 0 )   ) {} else {
            typ = objx.type;
            objx.readOnly = true;
            objx.disabled = true;
            if (typ != null)  {
                if (typ.indexOf("submit") >=0) {
                    objx.disabled = false;
                    objx.style.backgroundColor="lightgrey";
                    objx.style.border="outset 2px";
                }
                if (typ.indexOf("checkbox") >=0) {
                    objx.disabled = true;
                    objx.style.backgroundColor="lightgrey";
                }
            }
            nn = -1;
            objx.tabIndex = nn;
            str = arFields[i].fld;
            if (objx.src) {
                objx.src = '../imagens/btLock_off.gif';
            } else /*if (typ == 'text') */ {
                if (typ == "text" || typ == "textarea" ) { objx.style.background="#E7ECF2";}
                else if (typ == "checkxbox") {
                  if_bel(objx.id, 'false');
                  objx.style.background="#E7ECF2";
                }
            }
        }
    }
    // Ativa as Sub FIELDS
    kk = 0; ba=""; bb=""; 
    for (var j=1; j < arSubFields[fld].length; j++) {
        str = arSubFields[fld][j].fld;
        //alert(str+" - ");
        strobj = str.replace("_ss","");
        if (str.indexOf("_ss") >= 0  ) {
            objsel = el('cadForm:'+strobj+"_xsel");
            if (objsel == null ) {} else {
                objsel.disabled = false;
                objsel_src = objsel.src;
                if (objsel_src.indexOf('btPesquisar') >= 0 ) {
                  objsel.src = '../imagens/btPesquisar.gif';
                }
            }
        }
        objx = el('cadForm:'+strobj);
        bck = arSubFields[fld][j].bck;
        if (objx) {
            if (objx.src) {
                objx.src = '../imagens/btLockop.gif';
                if (str.indexOf("_hl") >= 0  ) {
                    strbtn = str.replace("_hl","")
                    //alert(objbtn+" objbtn- ");
                    objbtn = el('cadForm:'+strbtn);
                    if (objbtn) {
                        objbtn.style.backgroundColor="#BBCBD9";
                        nn = -1;
                        objbtn.tabIndex = nn;
                        tit = ' - ';
                        tit = tit+objbtn.title;
                        if (objbtn == null ) {} else {
                            if (strbtn.indexOf("_a") >= 0  ) {
                            }
                        }
                        if_el('cadForm:xbutx_id', fld);
                        objtit = 'cadForm:button';
                        if_el(objtit, tit);
                    }
                    start = strbtn.lastIndexOf("_");
                    bl = strbtn.substring(start,strbtn.lenght);
                }
            } else {
                kk = kk + 1;
                if(kk == 1) {strfocus = str.replace("_ss","");}
                objx.tabIndex = kk;
                objx.disabled = false;
                objx.readOnly = false;
                objsel.disabled = false;
                valpos = bck.indexOf("&"); // get valpos
                if (valpos >= 0) { // valpos
                    val = bck.substring(valpos+1,bck.length);
                    bck = bck.substring(0,valpos);
                    objx.value=val;
                    objdesc = objx.id+'_desc';
                    if_el(objx.id+'_desc',rel('cadForm:sys_value_'+val));
                }
                vlf = arSubFields[fld][j].vlf;
                if (vlf != null && vlf.indexOf("#") >= 0) {
                    vlf = vlf.substring(1,vlf.length);
                    compval = bck.substring(2,bck.length);
                    if (vlf == compval ) {
                       bck = bck.substring(0,1);
                    }
                } else
                if (vlf != null) {
                    if (org == 1 ) { // Reset vlf if open via lock
                        if (vlf != null && vlf.length > 0 ) {
                            objx.value = vlf;
                            if (fcf(objx.id)) {
                                if (objx.type.indexOf('checkbox') >= 0) {} else {
                                    document.getElementById(objx.id).onchange();
                                }
                                if (objx.type.indexOf('checkbox') >= 0) {
                                   if_bel(objx.id, 'true');
                                }
                            }
                        }
                        if (vlf != null && vlf.length == 0 ) {
                            objx.value = '';
                        }
                    } else
                    if (org == 0 ) {// Reset vlf if not open via lock & vlf not ''
                        if (vlf != null && vlf.length > 0 ) {
                            objx.value = vlf;
                            if (fcf(objx.id)) {
                                if (objx.type.indexOf('checkbox') >= 0) {} else {
                                    document.getElementById(objx.id).onchange();
                                }
                            }
                        }
                    }
                }
            if (objx.id.indexOf('pos_') >=0 || objx.id.indexOf('ord_') >=0 ) { // orange
                if (bck == '1') { // orange
                    objx.style.background="#FFE4D0";
                } else if (bck == '4') { // lightcoral
                    objx.style.background="#E0FFFF";
                } else if (bck == '3') { // lightcoral
                    objx.style.background="#F0A3A6";
                } else if (bck == '2') { // yellow
                    objx.style.background="#FFFFAA";
                } else {
                    objx.style.background="#E7ECF2";
                }
            } else {
                // alert(str + ' - bck: ' + bck); // qqq
                if (bck == '1') { // orange
                    objx.style.background="#FFE4D0";
                    objx.onclick = onclickClf;
                } else if (bck == '5') { // gray - blur
                    objx.style.background="#F0A3A6";
                } else if (bck == '4') { // lightcoral
                    objx.style.background="#E0FFFF";
                    objx.onclick = onclickClf;
                } else if (bck == '3') { // lightcoral
                    objx.style.background="#F0A3A6";
                    objx.onclick = onclickClf;
                } else if (bck == '2') { // yellow
                    objx.style.background="#FFFFAA";
                    objx.onclick = onclickClf;
                } else if (bck == '6') { // blue
                    objx.style.background="#00FFFF";
                    objx.onclick = onclickBlur;
                } else {
                    objx.style.background="#E7ECF2";
                    objx.onclick = onclickBlur;
                }
            }
                if (bck == '0') {} else {
                    if (str.indexOf("_a_") >= 0) { ba = "_a";}
                    if (str.indexOf("_b_") >= 0) { bb = "_b";}
                }
            }
        }
    }
    
}
// High Light FIELDS Function
function hlFields_tpar(fld) {
    // alert('hlFields_tpar' + '  fld: ' + fld); // qqq  
    buttx = fld;
    if (fld == 0) { return;}
var arSubFields = new Array();
// pjaus_tp_arrecadacao_hl_in 
arSubFields[1] = new Array();
arSubFields[1][1] = new stSubFields('pjaus_vl_contrato', '0');
arSubFields[1][2] = new stSubFields('pjaus_vl_aval_tecnica', '0');
arSubFields[1][3] = new stSubFields('pjaus_vl_fiscalizacao', '0');
arSubFields[1][4] = new stSubFields('pjaus_vl_uso_faixa_dominio', '0');
arSubFields[1][5] = new stSubFields('pjaus_vl_parc_arrc', '0');
arSubFields[1][6] = new stSubFields('pjaus_qt_parc_arrc', '0');
arSubFields[1][7] = new stSubFields('pjaus_vl_prim_parc', '0');
// pjaus_tp_arrecadacao_hl_1 
arSubFields[2] = new Array();
arSubFields[2][1] = new stSubFields('pjaus_vl_contrato', '2');
arSubFields[2][2] = new stSubFields('pjaus_vl_aval_tecnica', '2');
arSubFields[2][3] = new stSubFields('pjaus_vl_fiscalizacao', '2');
arSubFields[2][4] = new stSubFields('pjaus_vl_uso_faixa_dominio', '2');
arSubFields[2][5] = new stSubFields('pjaus_vl_parc_arrc', '2');
arSubFields[2][6] = new stSubFields('pjaus_qt_parc_arrc', '2');
arSubFields[2][7] = new stSubFields('pjaus_vl_prim_parc', '2');
// pjaus_tp_arrecadacao_hl_2 
arSubFields[3] = new Array();
arSubFields[3][1] = new stSubFields('pjaus_vl_contrato', '0');
arSubFields[3][2] = new stSubFields('pjaus_vl_aval_tecnica', '0');
arSubFields[3][3] = new stSubFields('pjaus_vl_fiscalizacao', '0');
arSubFields[3][4] = new stSubFields('pjaus_vl_uso_faixa_dominio', '0');
arSubFields[3][5] = new stSubFields('pjaus_vl_parc_arrc', '0');
arSubFields[3][6] = new stSubFields('pjaus_qt_parc_arrc', '0');
arSubFields[3][7] = new stSubFields('pjaus_vl_prim_parc', '0');
// pjaus_tp_arrecadacao_hl_3 
arSubFields[4] = new Array();
arSubFields[4][1] = new stSubFields('pjaus_vl_contrato', '0');
arSubFields[4][2] = new stSubFields('pjaus_vl_aval_tecnica', '0');
arSubFields[4][3] = new stSubFields('pjaus_vl_fiscalizacao', '0');
arSubFields[4][4] = new stSubFields('pjaus_vl_uso_faixa_dominio', '0');
arSubFields[4][5] = new stSubFields('pjaus_vl_parc_arrc', '0');
arSubFields[4][6] = new stSubFields('pjaus_qt_parc_arrc', '0');
arSubFields[4][7] = new stSubFields('pjaus_vl_prim_parc', '0');
// FIELDS
var arFields = new Array();
arFields[1] = new stField('pjaus_vl_contrato');
arFields[2] = new stField('pjaus_vl_aval_tecnica');
arFields[3] = new stField('pjaus_vl_fiscalizacao');
arFields[4] = new stField('pjaus_vl_uso_faixa_dominio');
arFields[5] = new stField('pjaus_vl_parc_arrc');
arFields[6] = new stField('pjaus_qt_parc_arrc');
arFields[7] = new stField('pjaus_vl_prim_parc');
 
    // Desativa as Sub FIELDS
    // alert('fld'+fld);
    unlockQuery = 0;
    if ( fld > 50 && fld < 80 ) {
        fld = fld - 50;
        unlockQuery = 1;
    }
    // alert('fld'+fld);
    org = 1; // from lock 
    if ( fld > 80 ) {
        fld = fld - 80; // not from lock
        org = 0;
    }
    for (var i=1; i < arFields.length; i++) {
        str = arFields[i].fld; objsel = '';
        strobj = str.replace("_ss","");
        if (str.indexOf("_ss") >= 0 ) {
            objsel = el('cadForm:'+strobj+"_xsel");
            if (objsel == null ) {} else {
                objsel.disabled = true;
                objsel_src = objsel.src;
                if (objsel_src.indexOf('btPesquisar') >= 0 ) {
                  objsel.src = '../imagens/btPesquisar_off.gif';
                }
            }
        }
        objx = el('cadForm:'+strobj);
        if (objx == null || ( unlockQuery == 1 && strobj.indexOf('Query') >= 0 )   ) {} else {
            typ = objx.type;
            objx.readOnly = true;
            objx.disabled = true;
            if (typ != null)  {
                if (typ.indexOf("submit") >=0) {
                    objx.disabled = false;
                    objx.style.backgroundColor="lightgrey";
                    objx.style.border="outset 2px";
                }
                if (typ.indexOf("checkbox") >=0) {
                    objx.disabled = true;
                    objx.style.backgroundColor="lightgrey";
                }
            }
            nn = -1;
            objx.tabIndex = nn;
            str = arFields[i].fld;
            if (objx.src) {
                objx.src = '../imagens/btLock_off.gif';
            } else /*if (typ == 'text') */ {
                if (typ == "text" || typ == "textarea" ) { objx.style.background="#E7ECF2";}
                else if (typ == "checkxbox") {
                  if_bel(objx.id, 'false');
                  objx.style.background="#E7ECF2";
                }
            }
        }
    }
    // Ativa as Sub FIELDS
    kk = 0; ba=""; bb=""; 
    for (var j=1; j < arSubFields[fld].length; j++) {
        str = arSubFields[fld][j].fld;
        //alert(str+" - ");
        strobj = str.replace("_ss","");
        if (str.indexOf("_ss") >= 0  ) {
            objsel = el('cadForm:'+strobj+"_xsel");
            if (objsel == null ) {} else {
                objsel.disabled = false;
                objsel_src = objsel.src;
                if (objsel_src.indexOf('btPesquisar') >= 0 ) {
                  objsel.src = '../imagens/btPesquisar.gif';
                }
            }
        }
        objx = el('cadForm:'+strobj);
        bck = arSubFields[fld][j].bck;
        if (objx) {
            if (objx.src) {
                objx.src = '../imagens/btLockop.gif';
                if (str.indexOf("_hl") >= 0  ) {
                    strbtn = str.replace("_hl","")
                    //alert(objbtn+" objbtn- ");
                    objbtn = el('cadForm:'+strbtn);
                    if (objbtn) {
                        objbtn.style.backgroundColor="#BBCBD9";
                        nn = -1;
                        objbtn.tabIndex = nn;
                        tit = ' - ';
                        tit = tit+objbtn.title;
                        if (objbtn == null ) {} else {
                            if (strbtn.indexOf("_a") >= 0  ) {
                            }
                        }
                        if_el('cadForm:xbutx_id', fld);
                        objtit = 'cadForm:button';
                        if_el(objtit, tit);
                    }
                    start = strbtn.lastIndexOf("_");
                    bl = strbtn.substring(start,strbtn.lenght);
                }
            } else {
                kk = kk + 1;
                if(kk == 1) {strfocus = str.replace("_ss","");}
                objx.tabIndex = kk;
                objx.disabled = false;
                objx.readOnly = false;
                objsel.disabled = false;
                valpos = bck.indexOf("&"); // get valpos
                if (valpos >= 0) { // valpos
                    val = bck.substring(valpos+1,bck.length);
                    bck = bck.substring(0,valpos);
                    objx.value=val;
                    objdesc = objx.id+'_desc';
                    if_el(objx.id+'_desc',rel('cadForm:sys_value_'+val));
                }
                vlf = arSubFields[fld][j].vlf;
                if (vlf != null && vlf.indexOf("#") >= 0) {
                    vlf = vlf.substring(1,vlf.length);
                    compval = bck.substring(2,bck.length);
                    if (vlf == compval ) {
                       bck = bck.substring(0,1);
                    }
                } else
                if (vlf != null) {
                    if (org == 1 ) { // Reset vlf if open via lock
                        if (vlf != null && vlf.length > 0 ) {
                            objx.value = vlf;
                            if (fcf(objx.id)) {
                                if (objx.type.indexOf('checkbox') >= 0) {} else {
                                    document.getElementById(objx.id).onchange();
                                }
                                if (objx.type.indexOf('checkbox') >= 0) {
                                   if_bel(objx.id, 'true');
                                }
                            }
                        }
                        if (vlf != null && vlf.length == 0 ) {
                            objx.value = '';
                        }
                    } else
                    if (org == 0 ) {// Reset vlf if not open via lock & vlf not ''
                        if (vlf != null && vlf.length > 0 ) {
                            objx.value = vlf;
                            if (fcf(objx.id)) {
                                if (objx.type.indexOf('checkbox') >= 0) {} else {
                                    document.getElementById(objx.id).onchange();
                                }
                            }
                        }
                    }
                }
            if (objx.id.indexOf('pos_') >=0 || objx.id.indexOf('ord_') >=0 ) { // orange
                if (bck == '1') { // orange
                    objx.style.background="#FFE4D0";
                } else if (bck == '4') { // lightcoral
                    objx.style.background="#E0FFFF";
                } else if (bck == '3') { // lightcoral
                    objx.style.background="#F0A3A6";
                } else if (bck == '2') { // yellow
                    objx.style.background="#FFFFAA";
                } else {
                    objx.style.background="#E7ECF2";
                }
            } else {
                // alert(str + ' - bck: ' + bck); // qqq
                if (bck == '1') { // orange
                    objx.style.background="#FFE4D0";
                    objx.onclick = onclickClf;
                } else if (bck == '5') { // gray - blur
                    objx.style.background="#F0A3A6";
                } else if (bck == '4') { // lightcoral
                    objx.style.background="#E0FFFF";
                    objx.onclick = onclickClf;
                } else if (bck == '3') { // lightcoral
                    objx.style.background="#F0A3A6";
                    objx.onclick = onclickClf;
                } else if (bck == '2') { // yellow
                    objx.style.background="#FFFFAA";
                    objx.onclick = onclickClf;
                } else if (bck == '6') { // blue
                    objx.style.background="#00FFFF";
                    objx.onclick = onclickBlur;
                } else {
                    objx.style.background="#E7ECF2";
                    objx.onclick = onclickBlur;
                }
            }
                if (bck == '0') {} else {
                    if (str.indexOf("_a_") >= 0) { ba = "_a";}
                    if (str.indexOf("_b_") >= 0) { bb = "_b";}
                }
            }
        }
    }
    
}
// onclickBlur FIELDS Function
function onclickBlur() {
    obj = this;
    obj.blur();
}
// onclickClf Clear FIELDS Function
function onclickClf() {
    obj = this;
    //clf(obj);;
}
// CLEAR FIELDS Function
function stCleFields(fld, val) {
    this.fld = fld;
    this.val = val;
}
 
function clFields(fld) {
var arCleFields = new Array();
// pjaus_tp_solicitante 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('pjaus_tp_solicitante', '');
arCleFields[1][1] = new stCleFields('pjaus_id_solicitante', '');
arCleFields[1][2] = new stCleFields('pjaus_id_solicitante_desc', '');
// pjaus_dt_conclusao_eff 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('pjaus_dt_conclusao_eff', '');
arCleFields[2][1] = new stCleFields('pjaus_dt_conclusao_eff_nap', '');
arCleFields[2][2] = new stCleFields('pjaus_dt_conclusao_eff_nap_desc', '');
// pjaus_dt_conclusao_eff_nap 
arCleFields[3] = new Array();
arCleFields[3][0] = new stCleFields('pjaus_dt_conclusao_eff_nap', '');
arCleFields[3][1] = new stCleFields('pjaus_dt_conclusao_eff', '');
// pjaus_vl_autorizado 
arCleFields[4] = new Array();
arCleFields[4][0] = new stCleFields('pjaus_vl_autorizado', '');
arCleFields[4][1] = new stCleFields('pjaus_vl_autorizado_nap', '');
arCleFields[4][2] = new stCleFields('pjaus_vl_autorizado_nap_desc', '');
// pjaus_vl_autorizado_nap 
arCleFields[5] = new Array();
arCleFields[5][0] = new stCleFields('pjaus_vl_autorizado_nap', '');
arCleFields[5][1] = new stCleFields('pjaus_vl_aval_tecnica', '');
// pjaus_vl_realizado 
arCleFields[6] = new Array();
arCleFields[6][0] = new stCleFields('pjaus_vl_realizado', '');
arCleFields[6][1] = new stCleFields('pjaus_vl_realizado_nap', '');
arCleFields[6][2] = new stCleFields('pjaus_vl_realizado_nap_desc', '');
// pjaus_vl_realizado_nap 
arCleFields[7] = new Array();
arCleFields[7][0] = new stCleFields('pjaus_vl_realizado_nap', '');
arCleFields[7][1] = new stCleFields('pjaus_vl_realizado', '');
// pjaus_tp_objt 
arCleFields[8] = new Array();
arCleFields[8][0] = new stCleFields('pjaus_tp_objt', '');
arCleFields[8][1] = new stCleFields('pjaus_tp_espec_1', '');
arCleFields[8][2] = new stCleFields('pjaus_tp_espec_1_desc', '');
// pjaus_tp_espec_1 
arCleFields[9] = new Array();
arCleFields[9][0] = new stCleFields('pjaus_tp_espec_1', '');
// pjaus_tp_infc_viaferrea 
arCleFields[10] = new Array();
arCleFields[10][0] = new stCleFields('pjaus_tp_infc_viaferrea', '');
arCleFields[10][1] = new stCleFields('pjaus_vl_alt_interf', '');
arCleFields[10][2] = new stCleFields('pjaus_vl_prf_sub', '');
arCleFields[10][3] = new stCleFields('pjaus_ar_intf', '');
arCleFields[10][4] = new stCleFields('pjaus_tp_est_interf', '');
arCleFields[10][5] = new stCleFields('pjaus_tp_est_interf_desc', '');
arCleFields[10][6] = new stCleFields('pjaus_tp_pos_pn_via', '');
arCleFields[10][7] = new stCleFields('pjaus_tp_pos_pn_via_desc', '');
// pjaus_tp_est_interf 
arCleFields[11] = new Array();
arCleFields[11][0] = new stCleFields('pjaus_tp_est_interf', '');
// pjaus_tp_pos_pn_via 
arCleFields[12] = new Array();
arCleFields[12][0] = new stCleFields('pjaus_tp_pos_pn_via', '');
arCleFields[12][1] = new stCleFields('pjaus_vl_ang_interf_via', '');
// pjaus_tp_doc_linc_amb 
arCleFields[13] = new Array();
arCleFields[13][0] = new stCleFields('pjaus_tp_doc_linc_amb', '');
// pjaus_id_org_linc_amb 
arCleFields[14] = new Array();
arCleFields[14][0] = new stCleFields('pjaus_id_org_linc_amb', '');
arCleFields[14][1] = new stCleFields('pjaus_id_org_linc_amb_nap', '');
arCleFields[14][2] = new stCleFields('pjaus_id_org_linc_amb_nap_desc', '');
// pjaus_id_org_linc_amb_nap 
arCleFields[15] = new Array();
arCleFields[15][0] = new stCleFields('pjaus_id_org_linc_amb_nap', '');
arCleFields[15][1] = new stCleFields('pjaus_id_org_linc_amb', '');
// pjaus_nu_doc_linc_amb 
arCleFields[16] = new Array();
arCleFields[16][0] = new stCleFields('pjaus_nu_doc_linc_amb', '');
arCleFields[16][1] = new stCleFields('pjaus_nu_doc_linc_amb_nap', '');
arCleFields[16][2] = new stCleFields('pjaus_nu_doc_linc_amb_nap_desc', '');
// pjaus_nu_doc_linc_amb_nap 
arCleFields[17] = new Array();
arCleFields[17][0] = new stCleFields('pjaus_nu_doc_linc_amb_nap', '');
arCleFields[17][1] = new stCleFields('pjaus_nu_doc_linc_amb', '');
// pjaus_dt_exp_linc_amb 
arCleFields[18] = new Array();
arCleFields[18][0] = new stCleFields('pjaus_dt_exp_linc_amb', '');
arCleFields[18][1] = new stCleFields('pjaus_dt_exp_linc_amb_nap', '');
arCleFields[18][2] = new stCleFields('pjaus_dt_exp_linc_amb_nap_desc', '');
// pjaus_dt_exp_linc_amb_nap 
arCleFields[19] = new Array();
arCleFields[19][0] = new stCleFields('pjaus_dt_exp_linc_amb_nap', '');
arCleFields[19][1] = new stCleFields('pjaus_dt_exp_linc_amb', '');
// pjaus_pz_val_linc_amb 
arCleFields[20] = new Array();
arCleFields[20][0] = new stCleFields('pjaus_pz_val_linc_amb', '');
arCleFields[20][1] = new stCleFields('pjaus_pz_val_linc_amb_nap', '');
arCleFields[20][2] = new stCleFields('pjaus_pz_val_linc_amb_nap_desc', '');
// pjaus_pz_val_linc_amb_nap 
arCleFields[21] = new Array();
arCleFields[21][0] = new stCleFields('pjaus_pz_val_linc_amb_nap', '');
arCleFields[21][1] = new stCleFields('pjaus_pz_val_linc_amb', '');
// pjaus_nu_art_proj 
arCleFields[22] = new Array();
arCleFields[22][0] = new stCleFields('pjaus_nu_art_proj', '');
arCleFields[22][1] = new stCleFields('pjaus_nu_art_proj_nap', '');
arCleFields[22][2] = new stCleFields('pjaus_nu_art_proj_nap_desc', '');
// pjaus_nu_art_proj_nap 
arCleFields[23] = new Array();
arCleFields[23][0] = new stCleFields('pjaus_nu_art_proj_nap', '');
arCleFields[23][1] = new stCleFields('pjaus_nu_art_proj', '');
// pjaus_dt_art_proj 
arCleFields[24] = new Array();
arCleFields[24][0] = new stCleFields('pjaus_dt_art_proj', '');
arCleFields[24][1] = new stCleFields('pjaus_dt_art_proj_nap', '');
arCleFields[24][2] = new stCleFields('pjaus_dt_art_proj_nap_desc', '');
// pjaus_dt_art_proj_nap 
arCleFields[25] = new Array();
arCleFields[25][0] = new stCleFields('pjaus_dt_art_proj_nap', '');
arCleFields[25][1] = new stCleFields('pjaus_dt_art_proj', '');
// pjaus_nu_art_exe 
arCleFields[26] = new Array();
arCleFields[26][0] = new stCleFields('pjaus_nu_art_exe', '');
arCleFields[26][1] = new stCleFields('pjaus_nu_art_exe_nap', '');
arCleFields[26][2] = new stCleFields('pjaus_nu_art_exe_nap_desc', '');
// pjaus_nu_art_exe_nap 
arCleFields[27] = new Array();
arCleFields[27][0] = new stCleFields('pjaus_nu_art_exe_nap', '');
arCleFields[27][1] = new stCleFields('pjaus_nu_art_exe', '');
// pjaus_dt_art_exe 
arCleFields[28] = new Array();
arCleFields[28][0] = new stCleFields('pjaus_dt_art_exe', '');
arCleFields[28][1] = new stCleFields('pjaus_dt_art_exe_nap', '');
arCleFields[28][2] = new stCleFields('pjaus_dt_art_exe_nap_desc', '');
// pjaus_dt_art_exe_nap 
arCleFields[29] = new Array();
arCleFields[29][0] = new stCleFields('pjaus_dt_art_exe_nap', '');
arCleFields[29][1] = new stCleFields('pjaus_dt_art_exe', '');
// pjaus_nu_art_fisc 
arCleFields[30] = new Array();
arCleFields[30][0] = new stCleFields('pjaus_nu_art_fisc', '');
arCleFields[30][1] = new stCleFields('pjaus_nu_art_fisc_nap', '');
arCleFields[30][2] = new stCleFields('pjaus_nu_art_fisc_nap_desc', '');
// pjaus_nu_art_fisc_nap 
arCleFields[31] = new Array();
arCleFields[31][0] = new stCleFields('pjaus_nu_art_fisc_nap', '');
arCleFields[31][1] = new stCleFields('pjaus_nu_art_fisc', '');
// pjaus_dt_art_fisc 
arCleFields[32] = new Array();
arCleFields[32][0] = new stCleFields('pjaus_dt_art_fisc', '');
arCleFields[32][1] = new stCleFields('pjaus_dt_art_fisc_nap', '');
arCleFields[32][2] = new stCleFields('pjaus_dt_art_fisc_nap_desc', '');
// pjaus_dt_art_fisc_nap 
arCleFields[33] = new Array();
arCleFields[33][0] = new stCleFields('pjaus_dt_art_fisc_nap', '');
arCleFields[33][1] = new stCleFields('pjaus_dt_art_fisc', '');
// pjaus_tp_investimento 
arCleFields[34] = new Array();
arCleFields[34][0] = new stCleFields('pjaus_tp_investimento', '');
arCleFields[34][1] = new stCleFields('pjaus_vl_investimento', '');
arCleFields[34][2] = new stCleFields('pjaus_pc_investimento', '');
arCleFields[34][3] = new stCleFields('pjaus_qt_part_lucros', '');
// pjaus_vl_investimento 
arCleFields[35] = new Array();
arCleFields[35][0] = new stCleFields('pjaus_vl_investimento', '');
arCleFields[35][1] = new stCleFields('pjaus_vl_investimento_nap', '');
arCleFields[35][2] = new stCleFields('pjaus_vl_investimento_nap_desc', '');
// pjaus_vl_investimento_nap 
arCleFields[36] = new Array();
arCleFields[36][0] = new stCleFields('pjaus_vl_investimento_nap', '');
arCleFields[36][1] = new stCleFields('pjaus_vl_investimento', '');
// pjaus_pc_investimento 
arCleFields[37] = new Array();
arCleFields[37][0] = new stCleFields('pjaus_pc_investimento', '');
arCleFields[37][1] = new stCleFields('pjaus_pc_investimento_nap', '');
arCleFields[37][2] = new stCleFields('pjaus_pc_investimento_nap_desc', '');
// pjaus_pc_investimento_nap 
arCleFields[38] = new Array();
arCleFields[38][0] = new stCleFields('pjaus_pc_investimento_nap', '');
arCleFields[38][1] = new stCleFields('pjaus_pc_investimento', '');
// pjaus_qt_part_lucros 
arCleFields[39] = new Array();
arCleFields[39][0] = new stCleFields('pjaus_qt_part_lucros', '');
arCleFields[39][1] = new stCleFields('pjaus_qt_part_lucros_nap', '');
arCleFields[39][2] = new stCleFields('pjaus_qt_part_lucros_nap_desc', '');
// pjaus_qt_part_lucros_nap 
arCleFields[40] = new Array();
arCleFields[40][0] = new stCleFields('pjaus_qt_part_lucros_nap', '');
arCleFields[40][1] = new stCleFields('pjaus_qt_part_lucros', '');
// pjaus_dt_assinatura_ctr 
arCleFields[41] = new Array();
arCleFields[41][0] = new stCleFields('pjaus_dt_assinatura_ctr', '');
arCleFields[41][1] = new stCleFields('pjaus_dt_assinatura_ctr_nap', '');
arCleFields[41][2] = new stCleFields('pjaus_dt_assinatura_ctr_nap_desc', '');
// pjaus_dt_assinatura_ctr_nap 
arCleFields[42] = new Array();
arCleFields[42][0] = new stCleFields('pjaus_dt_assinatura_ctr_nap', '');
arCleFields[42][1] = new stCleFields('pjaus_dt_assinatura_ctr', '');
// pjaus_dt_ini_vigencia 
arCleFields[43] = new Array();
arCleFields[43][0] = new stCleFields('pjaus_dt_ini_vigencia', '');
arCleFields[43][1] = new stCleFields('pjaus_dt_ini_vigencia_nap', '');
arCleFields[43][2] = new stCleFields('pjaus_dt_ini_vigencia_nap_desc', '');
// pjaus_dt_ini_vigencia_nap 
arCleFields[44] = new Array();
arCleFields[44][0] = new stCleFields('pjaus_dt_ini_vigencia_nap', '');
arCleFields[44][1] = new stCleFields('pjaus_dt_ini_vigencia', '');
// pjaus_dt_trm_contrato 
arCleFields[45] = new Array();
arCleFields[45][0] = new stCleFields('pjaus_dt_trm_contrato', '');
arCleFields[45][1] = new stCleFields('pjaus_dt_trm_contrato_nap', '');
arCleFields[45][2] = new stCleFields('pjaus_dt_trm_contrato_nap_desc', '');
// pjaus_dt_trm_contrato_nap 
arCleFields[46] = new Array();
arCleFields[46][0] = new stCleFields('pjaus_dt_trm_contrato_nap', '');
arCleFields[46][1] = new stCleFields('pjaus_dt_trm_contrato', '');
// pjaus_tp_arrecadacao 
arCleFields[47] = new Array();
arCleFields[47][0] = new stCleFields('pjaus_tp_arrecadacao', '');
arCleFields[47][1] = new stCleFields('pjaus_vl_contrato', '');
arCleFields[47][2] = new stCleFields('pjaus_vl_aval_tecnica', '');
arCleFields[47][3] = new stCleFields('pjaus_vl_fiscalizacao', '');
arCleFields[47][4] = new stCleFields('pjaus_vl_uso_faixa_dominio', '');
arCleFields[47][5] = new stCleFields('pjaus_vl_parc_arrc', '');
arCleFields[47][6] = new stCleFields('pjaus_qt_parc_arrc', '');
arCleFields[47][7] = new stCleFields('pjaus_vl_prim_parc', '');
// pjaus_qt_part_lucros_arr 
arCleFields[48] = new Array();
arCleFields[48][0] = new stCleFields('pjaus_qt_part_lucros_arr', '');
arCleFields[48][1] = new stCleFields('pjaus_qt_part_lucros_arr_nap', '');
arCleFields[48][2] = new stCleFields('pjaus_qt_part_lucros_arr_nap_desc', '');
// pjaus_qt_part_lucros_arr_nap 
arCleFields[49] = new Array();
arCleFields[49][0] = new stCleFields('pjaus_qt_part_lucros_arr_nap', '');
arCleFields[49][1] = new stCleFields('pjaus_qt_part_lucros_arr', '');
// pjaus_dt_ini_arr 
arCleFields[50] = new Array();
arCleFields[50][0] = new stCleFields('pjaus_dt_ini_arr', '');
arCleFields[50][1] = new stCleFields('pjaus_dt_ini_arr_nap', '');
arCleFields[50][2] = new stCleFields('pjaus_dt_ini_arr_nap_desc', '');
// pjaus_dt_ini_arr_nap 
arCleFields[51] = new Array();
arCleFields[51][0] = new stCleFields('pjaus_dt_ini_arr_nap', '');
arCleFields[51][1] = new stCleFields('pjaus_dt_ini_arr', '');
// pjaus_dt_trm_arr 
arCleFields[52] = new Array();
arCleFields[52][0] = new stCleFields('pjaus_dt_trm_arr', '');
arCleFields[52][1] = new stCleFields('pjaus_dt_trm_arr_nap', '');
arCleFields[52][2] = new stCleFields('pjaus_dt_trm_arr_nap_desc', '');
// pjaus_dt_trm_arr_nap 
arCleFields[53] = new Array();
arCleFields[53][0] = new stCleFields('pjaus_dt_trm_arr_nap', '');
arCleFields[53][1] = new stCleFields('pjaus_dt_trm_arr', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
function pjaus_tp_infc_viaferrea_hl(val) {
      val = rel('cadForm:pjaus_tp_infc_viaferrea');
      // alert('pjaus_tp_infc_viaferrea' + ' val: ' + val); // qqq
  if (val == '') {cle_mesg();hlFields_tivf(1);};
  if (val == '5') {cle_mesg();hlFields_tivf(2);};
  if (val == '4') {cle_mesg();hlFields_tivf(3);};
  if (val == '3') {cle_mesg();hlFields_tivf(4);};
}
function pjaus_tp_pos_pn_via_hl(val) {
      val = rel('cadForm:pjaus_tp_pos_pn_via');
      // alert('pjaus_tp_pos_pn_via' + ' val: ' + val); // qqq
  if (val == '') {cle_mesg();hlFields_psvi(1);};
  if (val == '1') {cle_mesg();hlFields_psvi(2);};
  if (val == '3') {cle_mesg();hlFields_psvi(3);};
  if (val == '2') {cle_mesg();hlFields_psvi(4);};
}
function pjaus_tp_investimento_hl(val) {
      val = rel('cadForm:pjaus_tp_investimento');
      // alert('pjaus_tp_investimento' + ' val: ' + val); // qqq
  if (val == '') {cle_mesg();hlFields_tpiv(1);};
  if (val == '1') {cle_mesg();hlFields_tpiv(2);};
  if (val == '2') {cle_mesg();hlFields_tpiv(3);};
}
function pjaus_tp_arrecadacao_hl(val) {
      val = rel('cadForm:pjaus_tp_arrecadacao');
      // alert('pjaus_tp_arrecadacao' + ' val: ' + val); // qqq
  if (val == '') {cle_mesg();hlFields_tpar(1);};
  if (val == '1') {cle_mesg();hlFields_tpar(2);};
  if (val == '2') {cle_mesg();hlFields_tpar(3);};
  if (val == '3') {cle_mesg();hlFields_tpar(4);};
}
function PjausPaaitps_pjint_hl() {
    // alert('PjausPaaitps_pjint_hl()'); // qqq 
    pjaus_tp_infc_viaferrea_hl('');
    pjaus_tp_pos_pn_via_hl('');
}
function PjausPaaitps_pjtct_hl() {
    // alert('PjausPaaitps_pjtct_hl()'); // qqq 
    pjaus_tp_investimento_hl('');
    pjaus_tp_arrecadacao_hl('');
}
function PjausPaaitps_hl() {
    pjaus_tp_infc_viaferrea_hl('');
    pjaus_tp_pos_pn_via_hl('');
    pjaus_tp_investimento_hl('');
    pjaus_tp_arrecadacao_hl('');
}
