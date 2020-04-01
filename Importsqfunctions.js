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
// dh_evento_ini_var 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('dh_evento_ini_var', '');
arCleFields[1][1] = new stCleFields('id_atdm_var', '');
arCleFields[1][2] = new stCleFields('dh_evento_fim_var', '');
arCleFields[1][3] = new stCleFields('dh_ini_prox_proc_var', '');
arCleFields[1][4] = new stCleFields('vl_intervalo_proc_var', '');
// dh_ini_prox_proc_var 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('dh_ini_prox_proc_var', '');
arCleFields[2][1] = new stCleFields('id_atdm_var', '');
arCleFields[2][2] = new stCleFields('dh_evento_ini_var', '');
arCleFields[2][3] = new stCleFields('dh_evento_fim_var', '');
arCleFields[2][4] = new stCleFields('vl_intervalo_proc_var', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
function execute(thisid) {
  loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'importsqcad'+'&ufmv='+stx } 
}
function update(thisid) {
  loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'importsqcad'+'&ufmv='+stx } 
}
