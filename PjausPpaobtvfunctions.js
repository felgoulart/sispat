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
// pjaus_tp_objt 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('pjaus_tp_objt', '');
arCleFields[2][1] = new stCleFields('pjaus_tp_espec_1', '');
arCleFields[2][2] = new stCleFields('pjaus_tp_espec_1_desc', '');
// pjaus_tp_espec_1 
arCleFields[3] = new Array();
arCleFields[3][0] = new stCleFields('pjaus_tp_espec_1', '');
// pjaus_nu_art_proj 
arCleFields[4] = new Array();
arCleFields[4][0] = new stCleFields('pjaus_nu_art_proj', '');
// pjaus_dt_art_proj 
arCleFields[5] = new Array();
arCleFields[5][0] = new stCleFields('pjaus_dt_art_proj', '');
// pjaus_nu_art_exe 
arCleFields[6] = new Array();
arCleFields[6][0] = new stCleFields('pjaus_nu_art_exe', '');
// pjaus_dt_art_exe 
arCleFields[7] = new Array();
arCleFields[7][0] = new stCleFields('pjaus_dt_art_exe', '');
// pjaus_nu_art_fisc 
arCleFields[8] = new Array();
arCleFields[8][0] = new stCleFields('pjaus_nu_art_fisc', '');
// pjaus_dt_art_fisc 
arCleFields[9] = new Array();
arCleFields[9][0] = new stCleFields('pjaus_dt_art_fisc', '');
// pjaus_dt_conclusao_eff 
arCleFields[10] = new Array();
arCleFields[10][0] = new stCleFields('pjaus_dt_conclusao_eff', '');
// pjaus_vl_autorizado 
arCleFields[11] = new Array();
arCleFields[11][0] = new stCleFields('pjaus_vl_autorizado', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
