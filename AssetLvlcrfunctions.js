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
// asset_nm_patio_ferroviario 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('asset_nm_patio_ferroviario', '');
arCleFields[1][1] = new stCleFields('asset_nm_patio_ferroviario_nap', '');
arCleFields[1][2] = new stCleFields('asset_nm_patio_ferroviario_nap_desc', '');
// asset_nm_patio_ferroviario_nap 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('asset_nm_patio_ferroviario_nap', '');
arCleFields[2][1] = new stCleFields('asset_nm_patio_ferroviario', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
