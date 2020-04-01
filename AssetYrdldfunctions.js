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
// asset_ds_compl 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('asset_ds_compl', '');
arCleFields[1][1] = new stCleFields('asset_ds_compl_nap', '');
arCleFields[1][2] = new stCleFields('asset_ds_compl_nap_desc', '');
// asset_ds_compl_nap 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('asset_ds_compl_nap', '');
// asset_nm_patio_ferrv 
arCleFields[3] = new Array();
arCleFields[3][0] = new stCleFields('asset_nm_patio_ferrv', '');
arCleFields[3][1] = new stCleFields('asset_nm_patio_ferrv_nap', '');
arCleFields[3][2] = new stCleFields('asset_nm_patio_ferrv_nap_desc', '');
// asset_nm_patio_ferrv_nap 
arCleFields[4] = new Array();
arCleFields[4][0] = new stCleFields('asset_nm_patio_ferrv_nap', '');
arCleFields[4][1] = new stCleFields('asset_nm_patio_ferrv', '');
// asset_cd_doc_sol_dsvc 
arCleFields[5] = new Array();
arCleFields[5][0] = new stCleFields('asset_cd_doc_sol_dsvc', '');
arCleFields[5][1] = new stCleFields('asset_cd_doc_sol_dsvc_nap', '');
arCleFields[5][2] = new stCleFields('asset_cd_doc_sol_dsvc_nap_desc', '');
// asset_cd_doc_sol_dsvc_nap 
arCleFields[6] = new Array();
arCleFields[6][0] = new stCleFields('asset_cd_doc_sol_dsvc_nap', '');
arCleFields[6][1] = new stCleFields('asset_cd_doc_sol_dsvc', '');
// asset_dt_doc_sol_dsvc 
arCleFields[7] = new Array();
arCleFields[7][0] = new stCleFields('asset_dt_doc_sol_dsvc', '');
arCleFields[7][1] = new stCleFields('asset_dt_doc_sol_dsvc_nap', '');
arCleFields[7][2] = new stCleFields('asset_dt_doc_sol_dsvc_nap_desc', '');
// asset_dt_doc_sol_dsvc_nap 
arCleFields[8] = new Array();
arCleFields[8][0] = new stCleFields('asset_dt_doc_sol_dsvc_nap', '');
arCleFields[8][1] = new stCleFields('asset_dt_doc_sol_dsvc', '');
// asset_cd_doc_sol_vinc 
arCleFields[9] = new Array();
arCleFields[9][0] = new stCleFields('asset_cd_doc_sol_vinc', '');
arCleFields[9][1] = new stCleFields('asset_cd_doc_sol_vinc_nap', '');
arCleFields[9][2] = new stCleFields('asset_cd_doc_sol_vinc_nap_desc', '');
// asset_cd_doc_sol_vinc_nap 
arCleFields[10] = new Array();
arCleFields[10][0] = new stCleFields('asset_cd_doc_sol_vinc_nap', '');
arCleFields[10][1] = new stCleFields('asset_cd_doc_sol_vinc', '');
// asset_dt_doc_sol_vinc 
arCleFields[11] = new Array();
arCleFields[11][0] = new stCleFields('asset_dt_doc_sol_vinc', '');
arCleFields[11][1] = new stCleFields('asset_dt_doc_sol_vinc_nap', '');
arCleFields[11][2] = new stCleFields('asset_dt_doc_sol_vinc_nap_desc', '');
// asset_dt_doc_sol_vinc_nap 
arCleFields[12] = new Array();
arCleFields[12][0] = new stCleFields('asset_dt_doc_sol_vinc_nap', '');
arCleFields[12][1] = new stCleFields('asset_dt_doc_sol_vinc', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
