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
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
function pjhso_reply(thisid) {
  loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsogpcad'+'&ufmv='+stx  
}
function pjhso_forward(thisid) {
  loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsogpcad'+'&ufmv='+stx  
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
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
function pjhso_reply(thisid) {
  loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsogpcad'+'&ufmv='+stx  
}
function pjhso_forward(thisid) {
  loading('true');msgwr();el('iiSaveUfmv').src = 'iiSaveUfmv.jsp?tipo='+'pjhsogpcad'+'&ufmv='+stx  
}
