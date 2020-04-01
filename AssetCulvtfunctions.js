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
// asset_tp_bueiro_outro 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('asset_tp_bueiro_outro', '');
arCleFields[1][1] = new stCleFields('asset_tp_bueiro_outro_nap', '');
arCleFields[1][2] = new stCleFields('asset_tp_bueiro_outro_nap_desc', '');
// asset_tp_bueiro_outro_nap 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('asset_tp_bueiro_outro_nap', '');
arCleFields[2][1] = new stCleFields('asset_tp_bueiro_outro', '');
// assegt_ds_identificador 
arCleFields[3] = new Array();
arCleFields[3][0] = new stCleFields('assegt_ds_identificador', '');
arCleFields[3][1] = new stCleFields('assegt_ds_identificador_nap', '');
arCleFields[3][2] = new stCleFields('assegt_ds_identificador_nap_desc', '');
// assegt_ds_identificador_nap 
arCleFields[4] = new Array();
arCleFields[4][0] = new stCleFields('assegt_ds_identificador_nap', '');
arCleFields[4][1] = new stCleFields('assegt_ds_identificador', '');
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
// asset_ds_doc_receb_prop 
arCleFields[9] = new Array();
arCleFields[9][0] = new stCleFields('asset_ds_doc_receb_prop', '');
arCleFields[9][1] = new stCleFields('asset_ds_doc_receb_prop_nap', '');
arCleFields[9][2] = new stCleFields('asset_ds_doc_receb_prop_nap_desc', '');
// asset_ds_doc_receb_prop_nap 
arCleFields[10] = new Array();
arCleFields[10][0] = new stCleFields('asset_ds_doc_receb_prop_nap', '');
arCleFields[10][1] = new stCleFields('asset_ds_doc_receb_prop', '');
// asset_cd_doc_sol_vinc 
arCleFields[11] = new Array();
arCleFields[11][0] = new stCleFields('asset_cd_doc_sol_vinc', '');
arCleFields[11][1] = new stCleFields('asset_cd_doc_sol_vinc_nap', '');
arCleFields[11][2] = new stCleFields('asset_cd_doc_sol_vinc_nap_desc', '');
// asset_cd_doc_sol_vinc_nap 
arCleFields[12] = new Array();
arCleFields[12][0] = new stCleFields('asset_cd_doc_sol_vinc_nap', '');
arCleFields[12][1] = new stCleFields('asset_cd_doc_sol_vinc', '');
// asset_dt_doc_sol_vinc 
arCleFields[13] = new Array();
arCleFields[13][0] = new stCleFields('asset_dt_doc_sol_vinc', '');
arCleFields[13][1] = new stCleFields('asset_dt_doc_sol_vinc_nap', '');
arCleFields[13][2] = new stCleFields('asset_dt_doc_sol_vinc_nap_desc', '');
// asset_dt_doc_sol_vinc_nap 
arCleFields[14] = new Array();
arCleFields[14][0] = new stCleFields('asset_dt_doc_sol_vinc_nap', '');
arCleFields[14][1] = new stCleFields('asset_dt_doc_sol_vinc', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
