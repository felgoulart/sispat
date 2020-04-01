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
// pjaus_tp_objt 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('pjaus_tp_objt', '');
arCleFields[1][1] = new stCleFields('pjaus_tp_espec_1', '');
arCleFields[1][2] = new stCleFields('pjaus_tp_espec_1_desc', '');
// pjaus_tp_espec_1 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('pjaus_tp_espec_1', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
