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
// asset_cd_termo_devolucao 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('asset_cd_termo_devolucao', '');
// asset_cd_termo_devolucao_nap 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('asset_cd_termo_devolucao_nap', '');
// asset_dt_termo_devolucao 
arCleFields[3] = new Array();
arCleFields[3][0] = new stCleFields('asset_dt_termo_devolucao', '');
// asset_dt_termo_devolucao_nap 
arCleFields[4] = new Array();
arCleFields[4][0] = new stCleFields('asset_dt_termo_devolucao_nap', '');
// asset_cd_termo_receb 
arCleFields[5] = new Array();
arCleFields[5][0] = new stCleFields('asset_cd_termo_receb', '');
arCleFields[5][1] = new stCleFields('asset_cd_termo_receb_nap', '');
arCleFields[5][2] = new stCleFields('asset_cd_termo_receb_nap_desc', '');
// asset_cd_termo_receb_nap 
arCleFields[6] = new Array();
arCleFields[6][0] = new stCleFields('asset_cd_termo_receb_nap', '');
arCleFields[6][1] = new stCleFields('asset_cd_termo_receb', '');
// asset_dt_termo_receb 
arCleFields[7] = new Array();
arCleFields[7][0] = new stCleFields('asset_dt_termo_receb', '');
arCleFields[7][1] = new stCleFields('asset_dt_termo_receb_nap', '');
arCleFields[7][2] = new stCleFields('asset_dt_termo_receb_nap_desc', '');
// asset_dt_termo_receb_nap 
arCleFields[8] = new Array();
arCleFields[8][0] = new stCleFields('asset_dt_termo_receb_nap', '');
arCleFields[8][1] = new stCleFields('asset_dt_termo_receb', '');
// asset_cd_tombamento 
arCleFields[9] = new Array();
arCleFields[9][0] = new stCleFields('asset_cd_tombamento', '');
// asset_cd_tombamento_nap 
arCleFields[10] = new Array();
arCleFields[10][0] = new stCleFields('asset_cd_tombamento_nap', '');
// asset_dt_tombamento 
arCleFields[11] = new Array();
arCleFields[11][0] = new stCleFields('asset_dt_tombamento', '');
// asset_dt_tombamento_nap 
arCleFields[12] = new Array();
arCleFields[12][0] = new stCleFields('asset_dt_tombamento_nap', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
