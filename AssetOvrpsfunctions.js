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
// asset_nm_patio_ferrv 
arCleFields[1] = new Array();
arCleFields[1][0] = new stCleFields('asset_nm_patio_ferrv', '');
// asset_vl_gabarito_horz 
arCleFields[2] = new Array();
arCleFields[2][0] = new stCleFields('asset_vl_gabarito_horz', '');
arCleFields[2][1] = new stCleFields('asset_vl_gabarito_horz_nap', '');
arCleFields[2][2] = new stCleFields('asset_vl_gabarito_horz_nap_desc', '');
// asset_vl_gabarito_horz_nap 
arCleFields[3] = new Array();
arCleFields[3][0] = new stCleFields('asset_vl_gabarito_horz_nap', '');
arCleFields[3][1] = new stCleFields('asset_vl_gabarito_horz', '');
// asset_vl_gabarito_vert 
arCleFields[4] = new Array();
arCleFields[4][0] = new stCleFields('asset_vl_gabarito_vert', '');
arCleFields[4][1] = new stCleFields('asset_vl_gabarito_vert_nap', '');
arCleFields[4][2] = new stCleFields('asset_vl_gabarito_vert_nap_desc', '');
// asset_vl_gabarito_vert_nap 
arCleFields[5] = new Array();
arCleFields[5][0] = new stCleFields('asset_vl_gabarito_vert_nap', '');
arCleFields[5][1] = new stCleFields('asset_vl_gabarito_vert', '');
// asset_aa_construcao 
arCleFields[6] = new Array();
arCleFields[6][0] = new stCleFields('asset_aa_construcao', '');
arCleFields[6][1] = new stCleFields('asset_aa_construcao_nap', '');
arCleFields[6][2] = new stCleFields('asset_aa_construcao_nap_desc', '');
// asset_aa_construcao_nap 
arCleFields[7] = new Array();
arCleFields[7][0] = new stCleFields('asset_aa_construcao_nap', '');
arCleFields[7][1] = new stCleFields('asset_aa_construcao', '');
// asset_cd_termo_devolucao 
arCleFields[8] = new Array();
arCleFields[8][0] = new stCleFields('asset_cd_termo_devolucao', '');
// asset_cd_termo_devolucao_nap 
arCleFields[9] = new Array();
arCleFields[9][0] = new stCleFields('asset_cd_termo_devolucao_nap', '');
// asset_dt_termo_devolucao 
arCleFields[10] = new Array();
arCleFields[10][0] = new stCleFields('asset_dt_termo_devolucao', '');
// asset_dt_termo_devolucao_nap 
arCleFields[11] = new Array();
arCleFields[11][0] = new stCleFields('asset_dt_termo_devolucao_nap', '');
// asset_cd_termo_entrega 
arCleFields[12] = new Array();
arCleFields[12][0] = new stCleFields('asset_cd_termo_entrega', '');
// asset_cd_termo_entrega_nap 
arCleFields[13] = new Array();
arCleFields[13][0] = new stCleFields('asset_cd_termo_entrega_nap', '');
// asset_dt_termo_entrega 
arCleFields[14] = new Array();
arCleFields[14][0] = new stCleFields('asset_dt_termo_entrega', '');
arCleFields[14][1] = new stCleFields('asset_dt_termo_entrega_nap', '');
arCleFields[14][2] = new stCleFields('asset_dt_termo_entrega_nap_desc', '');
// asset_dt_termo_entrega_nap 
arCleFields[15] = new Array();
arCleFields[15][0] = new stCleFields('asset_dt_termo_entrega_nap', '');
// asset_ds_doc_receb_prop 
arCleFields[16] = new Array();
arCleFields[16][0] = new stCleFields('asset_ds_doc_receb_prop', '');
arCleFields[16][1] = new stCleFields('asset_ds_doc_receb_prop_nap', '');
arCleFields[16][2] = new stCleFields('asset_ds_doc_receb_prop_nap_desc', '');
// asset_ds_doc_receb_prop_nap 
arCleFields[17] = new Array();
arCleFields[17][0] = new stCleFields('asset_ds_doc_receb_prop_nap', '');
arCleFields[17][1] = new stCleFields('asset_ds_doc_receb_prop', '');
// asset_cd_doc_sol_vinc 
arCleFields[18] = new Array();
arCleFields[18][0] = new stCleFields('asset_cd_doc_sol_vinc', '');
arCleFields[18][1] = new stCleFields('asset_cd_doc_sol_vinc_nap', '');
arCleFields[18][2] = new stCleFields('asset_cd_doc_sol_vinc_nap_desc', '');
// asset_cd_doc_sol_vinc_nap 
arCleFields[19] = new Array();
arCleFields[19][0] = new stCleFields('asset_cd_doc_sol_vinc_nap', '');
arCleFields[19][1] = new stCleFields('asset_cd_doc_sol_vinc', '');
// asset_dt_doc_sol_vinc 
arCleFields[20] = new Array();
arCleFields[20][0] = new stCleFields('asset_dt_doc_sol_vinc', '');
arCleFields[20][1] = new stCleFields('asset_dt_doc_sol_vinc_nap', '');
arCleFields[20][2] = new stCleFields('asset_dt_doc_sol_vinc_nap_desc', '');
// asset_dt_doc_sol_vinc_nap 
arCleFields[21] = new Array();
arCleFields[21][0] = new stCleFields('asset_dt_doc_sol_vinc_nap', '');
arCleFields[21][1] = new stCleFields('asset_dt_doc_sol_vinc', '');
// asset_cd_tombamento 
arCleFields[22] = new Array();
arCleFields[22][0] = new stCleFields('asset_cd_tombamento', '');
arCleFields[22][1] = new stCleFields('asset_cd_tombamento_nap', '');
arCleFields[22][2] = new stCleFields('asset_cd_tombamento_nap_desc', '');
// asset_cd_tombamento_nap 
arCleFields[23] = new Array();
arCleFields[23][0] = new stCleFields('asset_cd_tombamento_nap', '');
arCleFields[23][1] = new stCleFields('asset_cd_tombamento', '');
// asset_dt_tombamento 
arCleFields[24] = new Array();
arCleFields[24][0] = new stCleFields('asset_dt_tombamento', '');
arCleFields[24][1] = new stCleFields('asset_dt_tombamento_nap', '');
arCleFields[24][2] = new stCleFields('asset_dt_tombamento_nap_desc', '');
// asset_dt_tombamento_nap 
arCleFields[25] = new Array();
arCleFields[25][0] = new stCleFields('asset_dt_tombamento_nap', '');
arCleFields[25][1] = new stCleFields('asset_dt_tombamento', '');
 
    for (var j=1; j < arCleFields[fld].length; j++) {
        obj = el('cadForm:'+arCleFields[fld][j].fld);
        objid = 'cadForm:'+arCleFields[fld][j].fld
        val = arCleFields[fld][j].val;
        if_el(objid, val);
    }
    fcf('cadForm:'+arCleFields[fld][0].fld);
}
