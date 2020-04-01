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
// dh_ini_prox_proc_var 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('dh_ini_prox_proc_var', '');
arCleFields[1][1] = new stCleFields('id_atdm_var', '');
arCleFields[1][2] = new stCleFields('vl_intervalo_proc_var', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
function assyncexe(thisid) {
  loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'importatcad'+'&ufmv='+stx; 
}
function execute(thisid) {
  loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'importatcad'+'&ufmv='+stx; 
}
